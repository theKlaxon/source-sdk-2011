"Resource/UI/SaveLoadGameDialog.res"
{
	"SaveLoadGameDialog"
	{
		"ControlName"			"Frame"
		"fieldName"				"SaveLoadGameDialog"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"9"
		"tall"					"4"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"dialogstyle"			"1"
	}
		
	"SaveGameList"
	{
		"ControlName"					"GenericPanelList"
		"fieldName"						"SaveGameList"
		"xpos"							"26"
		"ypos"							"120"
		"zpos"							"1"
		"wide"							"210"
		"tall"							"250"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"NoWrap"						"1"
		"panelBorder"					"0"
	}
		
	"SaveGameImage"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"SaveGameImage"
		"xpos"							"250"
		"ypos"							"150"
		"zpos"							"999"
		"wide"							"300" // 256 | 225
		"tall"							"200" // 256 | 152
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							""
	}

	"WorkingAnim"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"WorkingAnim"
		"xpos"							"274"
		"ypos"							"35"
		"zpos"							"1500"
		"wide"							"100"
		"tall"							"100"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							"spinner"
	}
	
	"AutoSaveLabel"
	{
		"ControlName"					"Label"
		"fieldName"						"AutoSaveLabel"
		"font"							"NewGameChapterName"
		"xpos"							"210"	
		"ypos"							"9"
		"zpos"							"2"
		"wide"							"223"
		"tall"							"30"
		"autoResize"					"0"
		"visible"						"0"
		"enabled"						"1"
		"textAlignment"					"east"
		"labelText"						"#PORTAL2_AutoSave"
		"fgcolor_override"				"255 255 255 0"
	}

	"CloudSaveLabel"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"CloudSaveLabel"
		"xpos"							"217"	
		"ypos"							"18"
		"zpos"							"2"
		"wide"							"40"
		"tall"							"40"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							"resource/icon_cloud_small"
	}

	"SaveGameInfo"
	{
		"ControlName"					"SaveGameInfoLabel"
		"fieldName"						"SaveGameInfo"
		"xpos"							"212"
		"ypos"							"170"
		"zpos"							"2"
		"wide"							"225"
		"tall"							"20"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"fgcolor_override"				"255 255 255 0"
	}			

	"BtnBack"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnBack"
		"xpos"						"26"
		"ypos"						"382"
		"navRight"				"BtnDelete"
		"navLeft"				"BtnDelete"
		"wide"						"200"
		"tall"						"20"
		"autoResize"				"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#L4D360UI_Back"
		"style"						"MainMenuButtonSmall"
		"command"					"Back"
		"ActivationType"			"1"
	}

	"BtnDelete"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnDelete"
		"xpos"						"26"
		"ypos"						"382"
		"navRight"				"BtnBack"
		"navLeft"				"BtnBack"
		"wide"						"200"
		"tall"						"20"
		"autoResize"				"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#PORTAL2_ButtonAction_Delete"
		"style"						"MainMenuButtonSmall"
		"command"					"Delete"
		"ActivationType"			"1"
	}
}