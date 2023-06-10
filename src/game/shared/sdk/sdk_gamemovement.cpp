#include "cbase.h"
#include "gamemovement.h"

ConVar sv_jumpFactor("sv_jumpfactor", "1.1f", FCVAR_REPLICATED | FCVAR_CHEAT);

class CSDKGameMovement : public CGameMovement {
public:
	DECLARE_CLASS(CSDKGameMovement, CGameMovement);

	void ProcessMovement(CBasePlayer* pPlayer, CMoveData* pMove);

	void FullWalkMove();
	void WalkMove();

};

static CSDKGameMovement g_GameMovement;
IGameMovement* g_pGameMovement = (IGameMovement*)&g_GameMovement;

EXPOSE_SINGLE_INTERFACE_GLOBALVAR(CSDKGameMovement, IGameMovement, INTERFACENAME_GAMEMOVEMENT, g_GameMovement );

void CSDKGameMovement::ProcessMovement(CBasePlayer* pPlayer, CMoveData* pMove) {
	BaseClass::ProcessMovement(pPlayer, pMove);
}

void CSDKGameMovement::FullWalkMove() {
	BaseClass::FullWalkMove();
}

void CSDKGameMovement::WalkMove() {
	BaseClass::WalkMove();
}