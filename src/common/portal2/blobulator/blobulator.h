#pragma once
#include "..\public\materialsystem\imesh.h"
#include "..\public\tier1\utlenvelope.h"
#include "..\public\vstdlib\jobthread.h"
#include "..\public\materialsystem\imaterial.h"
#include "..\..\blobulator\implicit\ImpTiler.h"
#include "..\public\ihandleentity.h"
#include "igamesystem.h"
#include "utlvector.h"

class C_PaintBlob;

// loose classes
class C_Blobulator_AutoGameSystemPerFrame : public CAutoGameSystemPerFrame {

};

class BlobsInAirUpdate_SIMD {
public:
	BlobsInAirUpdate_SIMD(CUtlVector<C_PaintBlob*, CUtlMemory<C_PaintBlob*, int>> const& p1);
	~BlobsInAirUpdate_SIMD();

	void UpdateBlobsInAir_SIMD();
};

// TODO: maybe ignore this one since we dont have beam thingy
//class BlobsInBeamUpdate_SIMD {
//public:
//	BlobsInBeamUpdate_SIMD(/*C_Trigger_TractorBeam* p1*/);
//	~BlobsInBeamUpdate_SIMD();
//};

class BlobsInStreakUpdate_SIMD {
public:
	BlobsInStreakUpdate_SIMD(CUtlVector<C_PaintBlob*, CUtlMemory<C_PaintBlob*, int>> const& p1);
	~BlobsInStreakUpdate_SIMD();
};

class BlobTraceEnum {
public:

	void* EnumElement(IHandleEntity* p1);
	void* GetCount();

};

// stuff found in ghidra under 'Blobulator' namespace, maybe it's own class??? idfk
namespace Blobulator {

	// namespaces / potential classes
	namespace Constants {

		void InitializeConstants();

	}

	namespace LightBucketImplementation {

		class CBlobJob : public CJob {
			JobStatus_t DoExecute();
		};

	}

	// classes / structs
	class CDrawInfo {

	};

	struct BlobRenderInfo_t {

	};

	// funcs
	void FrameUpdate(int p1);

	IMaterial GetDrawMaterial();
	ImpTiler** Paintblob_BeginDraw(IMaterial* p1, BlobRenderInfo_t const& p2, ImpParticle* p3, int p4, matrix3x4_t const* p5, int p6, bool p7);

	void Paintblob_DrawFastSphere(CMeshBuilder& p1, Vector const& p2, float p3);
	void Paintblob_DrawIsoSurface_Synchronous(IMaterial* p1, BlobRenderInfo_t const& p2, CUtlEnvelope<ImpParticle>& p3, int p4, CUtlEnvelope<matrix3x4_t>& p5, int p6, bool p7);
	void Paintblob_DrawSpheres(Point3D const& p1, IMaterial* p2, BlobRenderInfo_t const& p3, ImpParticle* p4, int p5, matrix3x4_t const* p6, int p7);
	void Paintblob_WaitEndOfDraw(IMaterial* p1, CDrawInfo* p2, bool p3);
	void RenderBlob(bool p1, IMatRenderContext* p2, IMaterial* p3, BlobRenderInfo_t const& p4, matrix3x4_t const* p5, int p6, ImpParticle* p7, int p8);

	void SetupRenderContext(IMaterial* p1, CDrawInfo& p2);
}