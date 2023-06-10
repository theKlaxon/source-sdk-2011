#include "ImpTiler.h"

class vbId_t;

class IndexTriVertexBuffer {
public:

	IndexTriVertexBuffer();
	~IndexTriVertexBuffer();

	void beginFrame(void* p1);
	void beginCube(unsigned char* p1);
	void beginMesh();
	void beginTile(ImpTile* p1);
	void beginVertex(vbId_t* p1);
	
	void endFrame();
	void endCube();
	void endMesh();
	void endTile();
	void endVertex(vbId_t* p1);

	void drawVertex(vbId_t* p1);
	void init();

	bool isIdValid(vbId_t* p1);
};