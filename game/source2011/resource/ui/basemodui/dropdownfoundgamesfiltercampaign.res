"Resource/UI/DropDownFoundGamesFilterCampaign.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"			"PnlBackground"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"-1"
		"wide"				"156"	[$ENGLISH]
		"wide"				"200"	[!$ENGLISH]
		"tall"				"110"
		"visible"			"1"
		"enabled"			"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnAny"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnAny"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnNotInstalledAddOn"
		"navDown"			"BtnOfficial"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_Campaign_Any"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_Campaign_Any_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_campaign_"
	}	
	
	"BtnOfficial"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnOfficial"
		"xpos"				"0"
		"ypos"				"20"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnAny"
		"navDown"			"BtnAddOn"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_Campaign_Official"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_Campaign_Official_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_campaign_official"
	}	
	
	"BtnAddOn"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnAddOn"
		"xpos"				"0"
		"ypos"				"40"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnOfficial"
		"navDown"			"BtnInstalledAddOn"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_Campaign_AddOn"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_Campaign_AddOn_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_campaign_addon"
	}	

	"BtnInstalledAddOn"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnInstalledAddOn"
		"xpos"				"0"
		"ypos"				"60"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnAddOn"
		"navDown"			"BtnNotInstalledAddOn"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_Campaign_InstalledAddOn"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_Campaign_InstalledAddOn_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_campaign_installedaddon"
	}	

	"BtnNotInstalledAddOn"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnNotInstalledAddOn"
		"xpos"				"0"
		"ypos"				"80"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnInstalledAddOn"
		"navDown"			"BtnAny"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_Campaign_NotInstalledAddOn"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_Campaign_NotInstalledAddOn_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_campaign_notinstalledaddon"
	}	
}	
