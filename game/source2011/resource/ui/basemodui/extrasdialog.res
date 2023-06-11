"Resource/UI/ExtrasDialog.res"
{
	"ExtrasDialog"
	{
		"ControlName"			"Frame"
		"fieldName"				"ExtrasDialog"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"9"
		"tall"					"4"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"dialogstyle"			"1"
	}

	"DrpAchievement"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"DrpAchievement"
		"xpos"				"26"
		"ypos"				"296"
		"wide"				"500"
		"wide"				"0"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"BtnBack"
		"navDown"			"DrpSaves"
		"labelText"			"Achievement"
		"style"				"DialogListButton"
		"list"
		{
			"#L4D360UI_Disabled"	"AchDisabled"
			"#L4D360UI_Enabled"		"AchEnabled"
		}
	}
		
	"DrpSaves"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"DrpSaves"
		"xpos"				"26"
		"ypos"				"336"
		"wide"				"500"
		"wide"				"0"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"DrpAchievement"
		"navDown"			"BtnBack"
		"labelText"			"Saves"
		"style"				"DialogListButton"
		"list"
		{
			"#L4D360UI_Disabled"	"SavesDisabled"
			"#L4D360UI_Enabled"		"SavesEnabled"
		}
	}

	"BtnBack"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnBack"
		"xpos"						"26"
		"ypos"				"382"
		"wide"						"200"
		"tall"						"20"
		"autoResize"				"0"
		"navUp"		"DrpSaves"
		"navDown"	"DrpAchievement"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#L4D360UI_Back"
		"style"						"MainMenuButtonSmall"
		"command"					"Back"
		"ActivationType"			"1"
	}	"tabPosition"					"0"			
}