#pragma once
#include "ImpParticle.h"
#include "Userfunctions.h"
#include "..\Point3D.h"

class ImpTile;

//class Slice_t {
//public:
//
//	Slice_t();
//	~Slice_t();
//
//};

class Slice_t;

class SweepRenderer {
public:

	SweepRenderer();

	void beginFrame(bool p1, void* p2);
	void beginTile(ImpTile* p1);
	void endFrame();
	void endTile();

	void addParticle(ImpParticle* p1, bool p2);

	void allocSliceCorners(Slice_t* p1);
	void allocSlideTodoList(Slice_t* p1);
	void deallocSliceCorners(Slice_t* p1);
	void deallocSliceTodoList(Slice_t* p1);

	static void changeCubeWidth(float p1);
	static void changeRadii(float p1, float p2);

	static float	getCubeWidth();
	float	getCutoffR();
	static Point3D& getInnerDimensions();
	static int		getMarginNCubes();
	float	getMarginWidth();
	float	getRenderR();

	bool isParticleWithinBounds(ImpParticle* p1);

	void recalculateBB();
	static void recalculateDimensions();

	void renderSlice(unsigned char* p1, Slice_t* p2, Slice_t* p3, Slice_t* p4);
	void renderSlices();

	// this is used by the ep3 blobulator, relace it
	int getLastSliceDrawn() { return 0; }

	void seed_surface(Point3D& p1);

	//static void setCalcCornerFunc(int p1, void(*p2)(unsigned char, unsigned char, unsigned char, float, float, float, CornerInfo* const, ProjectingParticleCache*));
	static void setCalcCornerFunc(int p1, void(*p2)(unsigned char, unsigned char, unsigned char, float, float, float, CornerInfo* const, ProjectingParticleCache*));
	static void setCalcSignFunc(bool(*p1)(unsigned char, unsigned char, unsigned char, float, float, float, ProjectingParticleCache*));
	static void setCalcSign2Func(void(*p1)(unsigned char, unsigned char, unsigned char, float, float, float, CornerInfo* const, ProjectingParticleCache*));
	static void setCalcVertexFunc(void(*p1)(float, float, float, int, const CornerInfo*, const CornerInfo*, IndexTriVertexBuffer*));
	static void setCubeWidth(float p1);
	static void setCutoffR(float p1);
	static void setRenderR(float p1);
	void		setOffset(Point3D& p1);
	void		setMaxNoSlicesToDraw(int p1) {}

protected:

	int marginNCubes;
	
	float addAmt = 0.25f;
	float cubeWidth = 0.8f;
	float cutoffR = 3.3f;
	float cutoffRSq;
	float marginWidth;
	float oneOverCubeWidth = 1.25f;
	float oneOverThreshold;
	float renderR = 1.3f;
	float renderRSq;
	float scaler;
	float scalerSq;
	float threshold;

	bool tile_mode;

	Point3D		innerDimensions;
	Point3D		outerDimensions;
};