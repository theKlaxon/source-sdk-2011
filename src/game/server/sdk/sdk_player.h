#include "cbase.h"
#include "predicted_viewmodel.h"
#include "player_pickup.h"
#include "sdk_pickupcontroller.h"

class CSDKPlayer : public CBasePlayer {
public:
	DECLARE_CLASS(CSDKPlayer, CBasePlayer );
	DECLARE_NETWORKCLASS();

	virtual void Precache();
	virtual void Spawn();
	virtual void Activate();

	void CreateViewModel( int index );
	void PostThink();
	void FireBullets ( const FireBulletsInfo_t &info );

	virtual void	PlayerUse();
	virtual void	PickupObject(CBaseEntity* pObject, bool bLimitMassAndSize);
	virtual	bool	IsHoldingEntity(CBaseEntity* pEnt);
	virtual float	GetHeldObjectMass(IPhysicsObject* pHeldObject);

protected:

	bool m_bPlayUseDenySound;

	CNetworkVar(bool, m_bPlayerPickedUpObject);
};

inline CSDKPlayer* ToSDKPlayer(CBaseEntity* pEntity) {
	if (!pEntity || !pEntity->IsPlayer())
		return NULL;

#ifdef _DEBUG
	Assert(dynamic_cast<CSDKPlayer*>(pEntity) != 0);
#endif
	return static_cast<CSDKPlayer*>(pEntity);
}