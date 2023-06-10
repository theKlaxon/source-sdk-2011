#pragma once
#include "SweepRenderer.h"

class ImpRendererFactory {
public:

	//__thiscall ImpRendererFactory();

	SweepRenderer*	getRenderer();
	void			returnRenderer(SweepRenderer* p1);
};