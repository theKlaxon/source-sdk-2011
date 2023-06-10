#include "cbase.h"
#include "swarm/gameui/swarm/vmainmenu.h"

using namespace vgui;
using namespace BaseModUI;

//=============================================================================
MainMenu::MainMenu(Panel* parent, const char* panelName) :
	BaseClass(parent, panelName, true, true, false, false)
{
	SetProportional(true);
	SetTitle("", false);
	SetMoveable(false);
	SetSizeable(false);

	SetLowerGarnishEnabled(true);

	AddFrameListener(this);

	m_iQuickJoinHelpText = MMQJHT_NONE;

	SetDeleteSelfOnClose(true);
}

//=============================================================================
MainMenu::~MainMenu()
{
	RemoveFrameListener(this);
}