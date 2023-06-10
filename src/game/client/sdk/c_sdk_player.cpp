#include "cbase.h"
#include "c_sdk_player.h"

LINK_ENTITY_TO_CLASS( player, C_SDKPlayer);

IMPLEMENT_CLIENTCLASS_DT(C_SDKPlayer,DT_SDKPlayer, CSDKPlayer)
	RecvPropVector(RECVINFO(m_vecVelocity))
END_RECV_TABLE()