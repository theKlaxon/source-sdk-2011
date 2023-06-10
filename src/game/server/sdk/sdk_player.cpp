#include "cbase.h"
#include "sdk_player.h"
#include "player_pickup.h"
#include "in_buttons.h"
#include "sdk_pickupcontroller.h"
#include "ai_basenpc.h"
#include "..\server\ilagcompensationmanager.h"

#define PLAYER_MDL "models/player.mdl"
#define PLAYER_MAX_LIFT_MASS 85
#define PLAYER_MAX_LIFT_SIZE 128

#define SOUND_HINT		"Hint.Display"
#define SOUND_USE_DENY	"Player.UseDeny"
#define SOUND_USE		"Player.Use"
#define SOUND_WHOOSH	"Player.FallWoosh2"

extern ConVar sv_maxspeed;
extern ConVar sv_debug_player_use;
ConVar pl_normspeed("pl_normspeed", "200", FCVAR_REPLICATED | FCVAR_NOTIFY | FCVAR_CHEAT);
ConVar pl_runspeed("pl_runspeed", "350", FCVAR_REPLICATED | FCVAR_NOTIFY | FCVAR_CHEAT);
ConVar pl_stickspeed("pl_stickspeed", "175", FCVAR_REPLICATED | FCVAR_NOTIFY | FCVAR_CHEAT);

extern float IntervalDistance(float x, float x0, float x1);

static int hasNoclip = 0;
static edict_t* playerEdict;
static bool enableNoclipToggle = false;

void ToggleNoclip() {
	if (hasNoclip == 0) {
		engine->ClientCommand(playerEdict, "noclip 1");
		hasNoclip = 1;
		return;
	}

	engine->ClientCommand(playerEdict, "noclip 0");
	hasNoclip = 0;
}
static ConCommand togNoclip("tog_noclip", ToggleNoclip);


LINK_ENTITY_TO_CLASS( player, CSDKPlayer);

IMPLEMENT_SERVERCLASS_ST(CSDKPlayer, DT_SDKPlayer)
SendPropVector(SENDINFO(m_vecVelocity), -1, SPROP_NOSCALE, 0.0f, HIGH_DEFAULT)
END_SEND_TABLE()

void CSDKPlayer::Precache() {
	PrecacheModel(PLAYER_MDL);
}

void CSDKPlayer::Spawn() {
	BaseClass::Spawn();

	// Dying without a player model crashes the client
	SetModel(PLAYER_MDL);
	SetViewOffset(VEC_VIEW);

	// set the move speed
	SetMaxSpeed(pl_normspeed.GetFloat());

	// Temp development stuff
	// TODO: remove after player move fixed
	playerEdict = edict();
	enableNoclipToggle = true;

	engine->ClientCommand(edict(), "bind l create_flashlight");
	engine->ClientCommand(edict(), "bind n tog_noclip");
	engine->ClientCommand(edict(), "give weapon_paintgun");
	engine->ClientCommand(edict(), "bind 0 exit2");
	engine->ClientCommand(edict(), "bind 8 disconnect");
	engine->ClientCommand(edict(), "bind mwheeldown paintgun_next");
	engine->ClientCommand(edict(), "bind mwheelup paintgun_prev");

	if (!engine->HasPaintmap())
		Msg("No Paintmap :(\n");
	else
		Msg("Yes Paintmap :)\n");
}

void CSDKPlayer::Activate() {
	BaseClass::Activate();
}

void CSDKPlayer::CreateViewModel( int index ) {
	Assert( index >= 0 && index < MAX_VIEWMODELS );

	if ( GetViewModel(index) )
		return;

	CPredictedViewModel* vm = (CPredictedViewModel*)CreateEntityByName( "predicted_viewmodel" );
	if ( vm )
	{
		vm->SetAbsOrigin( GetAbsOrigin() );
		vm->SetOwner( this );
		vm->SetIndex( index );
		DispatchSpawn( vm );
		vm->FollowEntity( this, false );
		m_hViewModel.Set( index, vm );
	}
}

void CSDKPlayer::PostThink() {
	BaseClass::PostThink();

	// Keep the model upright; pose params will handle pitch aiming.
	QAngle angles = GetLocalAngles();
	angles[PITCH] = 0;
	SetLocalAngles(angles);

	NetworkStateChanged();
}

void CSDKPlayer::FireBullets ( const FireBulletsInfo_t &info ) {
	lagcompensation->StartLagCompensation( this, LAG_COMPENSATE_HITBOXES);

	BaseClass::FireBullets(info);

	lagcompensation->FinishLagCompensation( this );
}

// hl2 player pickup code

CBaseEntity* GetPlayerHeldEntity(CBasePlayer* pPlayer)
{
	CBaseEntity* pObject = NULL;
	CPlayerPickupController* pPlayerPickupController = (CPlayerPickupController*)(pPlayer->GetUseEntity());

	if (pPlayerPickupController)
	{
		pObject = pPlayerPickupController->GetGrabController().GetAttached();
	}

	return pObject;
}

void CSDKPlayer::PlayerUse() {
	// Was use pressed or released?
	if (!((m_nButtons | m_afButtonPressed | m_afButtonReleased) & IN_USE))
		return;

	if (m_afButtonPressed & IN_USE)
	{
		// Currently using a latched entity?
		if (ClearUseEntity())
		{
			if (m_bPlayerPickedUpObject)
			{
				m_bPlayerPickedUpObject = false;
			}
			return;
		}
		else
		{
			if (m_afPhysicsFlags & PFLAG_DIROVERRIDE)
			{
				m_afPhysicsFlags &= ~PFLAG_DIROVERRIDE;
				m_iTrain = TRAIN_NEW | TRAIN_OFF;
				return;
			}
		}

		// Tracker 3926:  We can't +USE something if we're climbing a ladder
		if (GetMoveType() == MOVETYPE_LADDER)
		{
			return;
		}
	}

	CBaseEntity* pUseEntity = FindUseEntity();

	bool usedSomething = false;

	// Found an object
	if (pUseEntity)
	{
		//!!!UNDONE: traceline here to prevent +USEing buttons through walls			
		int caps = pUseEntity->ObjectCaps();
		variant_t emptyVariant;

		if (m_afButtonPressed & IN_USE)
		{
			// Robin: Don't play sounds for NPCs, because NPCs will allow respond with speech.
			if (!pUseEntity->MyNPCPointer())
			{
				EmitSound(SOUND_USE);
			}
		}

		if (((m_nButtons & IN_USE) && (caps & FCAP_CONTINUOUS_USE)) ||
			((m_afButtonPressed & IN_USE) && (caps & (FCAP_IMPULSE_USE | FCAP_ONOFF_USE))))
		{
			if (caps & FCAP_CONTINUOUS_USE)
				m_afPhysicsFlags |= PFLAG_USING;

			pUseEntity->AcceptInput("Use", this, this, emptyVariant, USE_TOGGLE);

			usedSomething = true;
		}
		// UNDONE: Send different USE codes for ON/OFF.  Cache last ONOFF_USE object to send 'off' if you turn away
		else if ((m_afButtonReleased & IN_USE) && (pUseEntity->ObjectCaps() & FCAP_ONOFF_USE))	// BUGBUG This is an "off" use
		{
			pUseEntity->AcceptInput("Use", this, this, emptyVariant, USE_TOGGLE);

			usedSomething = true;
		}
	}

	else if (m_afButtonPressed & IN_USE)
	{
		// Signal that we want to play the deny sound, unless the user is +USEing on a ladder!
		// The sound is emitted in ItemPostFrame, since that occurs after GameMovement::ProcessMove which
		// lets the ladder code unset this flag.
		m_bPlayUseDenySound = true;
	}

	// Debounce the use key
	if (usedSomething && pUseEntity)
	{
		m_Local.m_nOldButtons |= IN_USE;
		m_afButtonPressed &= ~IN_USE;
	}
}

void CSDKPlayer::PickupObject(CBaseEntity* pObject, bool bLimitMassAndSize)
{
	// can't pick up what you're standing on
	if (GetGroundEntity() == pObject)
		return;

	if (bLimitMassAndSize == true)
	{
		if (CBasePlayer::CanPickupObject(pObject, 35, 128) == false)
			return;
	}

	// Can't be picked up if NPCs are on me
	if (pObject->HasNPCsOnIt())
		return;

	PlayerPickupObject(this, pObject);
}

bool CSDKPlayer::IsHoldingEntity(CBaseEntity* pEnt)
{
	return PlayerPickupControllerIsHoldingEntity(m_hUseEntity, pEnt);
}

float CSDKPlayer::GetHeldObjectMass(IPhysicsObject* pHeldObject)
{
	return  PlayerPickupGetHeldObjectMass(m_hUseEntity, pHeldObject);
}
