#include "cbase.h"
#include "props.h"
#include "lights.h"
#include "fire.h"
#include "sdk/sdk_player.h"
#include "particle_parse.h"

#define CUBE_MDL "models/props/metal_box.mdl"

class CPropDevCube : public CPhysicsProp {
	DECLARE_CLASS(CPropDevCube, CPhysicsProp);
public:

	void Precache();
	void Spawn();
	void Use(CBaseEntity* pActivator, CBaseEntity* pCaller, USE_TYPE useType, float value);

	int ObjectCaps();

};

LINK_ENTITY_TO_CLASS(prop_weighted_cube, CPropDevCube);

void CPropDevCube::Precache() {
	PrecacheModel(CUBE_MDL);
	BaseClass::Precache();
}

void CPropDevCube::Spawn() {

	Precache();
	SetModel(CUBE_MDL);
	SetUse(&CPropDevCube::Use);
	SetSolid(SOLID_VPHYSICS);

	VPhysicsInitNormal(SOLID_VPHYSICS, 0, false);
	BaseClass::Spawn();
}

int CPropDevCube::ObjectCaps()
{
	int caps = BaseClass::ObjectCaps();
	return caps |= FCAP_IMPULSE_USE;
}

void CPropDevCube::Use(CBaseEntity* pActivator, CBaseEntity* pCaller, USE_TYPE useType, float value) {

	CBasePlayer* pPlayer = ToBasePlayer(pActivator);

	if (!pPlayer)
		return;

	// TODO: enable and 'on use' output to be fired here

	pPlayer->PickupObject(this, false);
}