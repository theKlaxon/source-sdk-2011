#include "cbase.h"
#include "basecombatweapon.h"
#include "player.h"
#include "in_buttons.h"
#include "weapon_paintgun.h"
#include "..\public\game\shared\portal2\paint_enum.h"

// -- paint colours 
ConVar bounce_paint_color("bounce_paint_color", "15 252 11 255", FCVAR_REPLICATED);
ConVar speed_paint_color("speed_paint_color", "255 110 7 255", FCVAR_REPLICATED);
ConVar portal_paint_color("portal_paint_color", "140 0 255 255", FCVAR_REPLICATED); // using this for stick paint

ConVar erase_color("erase_color", "0 0 0 255", FCVAR_REPLICATED);
ConVar erase_visual_color("erase_visual_color", "0 0 0 255", FCVAR_REPLICATED);
ConVar paint_color_max_diff("paint_color_max_diff", "32", FCVAR_REPLICATED, "The maximum difference between two colors for matching.");
// ---

// Paintgun power commands
void Paintgun_NextPower();
void Paintgun_PrevPower();

PaintPowerType g_CurPaintgunPower = BOUNCE_POWER;

ConCommand paintgun_next("paintgun_next", Paintgun_NextPower);
ConCommand paintgun_prev("paintgun_prev", Paintgun_PrevPower);

ConVar paintgun_rad("paintgun_rad", "35", FCVAR_REPLICATED);
ConVar paintgun_strength("paintgun_strength", "5", FCVAR_REPLICATED);
ConVar paintgun_timing("paintgun_timing", "0.045f", FCVAR_REPLICATED);


LINK_ENTITY_TO_CLASS(weapon_paintgun, CWeaponPaintgun);

CWeaponPaintgun::CWeaponPaintgun() {
	m_flCurPaintDelay = 0.0f;
}

void CWeaponPaintgun::FirePaint(bool erase) {

	if (gpGlobals->curtime < m_flCurPaintDelay)
		return;

	CBasePlayer* player = UTIL_GetLocalPlayer();
	Vector halfHeightOrigin = player->GetAbsOrigin() + Vector(0, 0, player->BoundingRadius() / 2);

	trace_t tr;
	UTIL_TraceLine(halfHeightOrigin, player->Forward() * MAX_TRACE_LENGTH, MASK_ALL, player, COLLISION_GROUP_PLAYER_MOVEMENT, &tr);

	if (tr.DidHit()) {

		if (tr.DidHitWorld())
			if (!erase)
				engine->SpherePaintSurface(tr.m_pEnt->GetModel(), tr.endpos, g_CurPaintgunPower, paintgun_rad.GetInt(), paintgun_strength.GetInt());
			else
				engine->SpherePaintSurface(tr.m_pEnt->GetModel(), tr.endpos, NO_POWER, paintgun_rad.GetInt(), paintgun_strength.GetInt()); // erase 

		m_flCurPaintDelay = gpGlobals->curtime + paintgun_timing.GetFloat();
	}
}

// TODO: maybe make this stuff into it's own class, make an interface 
// in case a multiplayer version needs to be used at any point
static const float paintSwitchDelay = 0.15f;
float curPaintSwitchTime = 0.0f;

void Paintgun_NextPower() {

	if (gpGlobals->curtime < curPaintSwitchTime)
		return;

	switch (g_CurPaintgunPower) {
		case BOUNCE_POWER:
			g_CurPaintgunPower = SPEED_POWER;
			break;
		case SPEED_POWER:
			g_CurPaintgunPower = PORTAL_POWER;
			break;
		case PORTAL_POWER:
			g_CurPaintgunPower = BOUNCE_POWER;
			break;
		default:
			g_CurPaintgunPower = BOUNCE_POWER;
			break;
	}

	curPaintSwitchTime = gpGlobals->curtime + paintSwitchDelay;
}

void Paintgun_PrevPower() {

	if (gpGlobals->curtime < curPaintSwitchTime)
		return;

	switch (g_CurPaintgunPower) {
		case BOUNCE_POWER:
			g_CurPaintgunPower = PORTAL_POWER;
			break;
		case SPEED_POWER:
			g_CurPaintgunPower = BOUNCE_POWER;
			break;
		case PORTAL_POWER:
			g_CurPaintgunPower = SPEED_POWER;
			break;
		default:
			g_CurPaintgunPower = BOUNCE_POWER;
			break;
	}

	curPaintSwitchTime = gpGlobals->curtime + paintSwitchDelay;
}
