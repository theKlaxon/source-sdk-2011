#pragma once
#include "swarm/basemodpanel.h"
#include "swarm/basemodframe.h"

namespace BaseModUI {

	static void MakeVisisble(WINDOW_TYPE w) {
		if (CBaseModPanel::GetSingleton().m_Frames[w].Get())
			CBaseModPanel::GetSingleton().m_Frames[w].Get()->SetVisible(true);
	}

	static void MakeClosed(WINDOW_TYPE w) {
		if (CBaseModPanel::GetSingleton().m_Frames[w].Get())
			CBaseModPanel::GetSingleton().m_Frames[w].Get()->Close();
	}

}