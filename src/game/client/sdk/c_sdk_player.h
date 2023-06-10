#include "cbase.h"

class C_SDKPlayer : public C_BasePlayer
{
public:
	DECLARE_CLASS(C_SDKPlayer, C_BasePlayer );
	DECLARE_NETWORKCLASS();

	virtual bool ShouldRegenerateOriginFromCellBits() const
	{
		// C_BasePlayer assumes that we are networking a high-res origin value instead of using a cell
		// (and so returns false here), but this is not by default the case.
		//return true; // TODO: send high-precision origin instead?

		// NOTE: ignore the above. some smart people said this should be false for singleplayer games
		return false;
	}
};