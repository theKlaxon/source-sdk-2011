#pragma once
#include "ImpRenderer.h"
#include "SweepRenderer.h"
#include "..\Point3D.h"

class ImpTile {
public:

	ImpTile(int p1, int p2, int p3);
	~ImpTile();

};

class ImpTiler {
public:

	ImpTiler(SweepRenderer* p1);
	~ImpTiler();

	void beginFrame(Point3D& p1, void* p2, bool p3);
	void endFrame();

	Point3D calcTileCorner(int p1, int p2, int p3);
	Point3D calcTileOffset(int p1, int p2, int p3);

	ImpTile* createTile(int p1, int p2, int p3);
	ImpTile* findTile(int p1, int p2, int p3);

	void drawTile(ImpTile p1);
	void drawTile(int p1, int p2, int p3);
	void drawSurface();
	void drawSurfaceSorted(Point3D& p1);

	ImpTile*	getTile(int p1);
	Point3D		getTileOffset(int p1);
	int			getNoTiles();

	void addParticleToTile(ImpParticle* p1, int p2, int p3, int p4);
	void insertParticle(ImpParticle* p1);

	// TODO: used in ep3 blobulator, remove
	void setMaxNoTilesToDraw(int p1) {}

	//Point3D getLastTilesOffset();
	//Point3D getRenderDim();

private:

	ImpTiler(ImpTiler& tiler);
};