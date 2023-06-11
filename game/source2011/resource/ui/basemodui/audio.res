"Resource/UI/Audio.res"
{
	"Audio"
	{
		"ControlName"		"Frame"
		"fieldName"			"Audio"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"800"
		"tall"				"600"
		"autoResize"		"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"dialogstyle"		"1"
	}
	
	"SldGameVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldGameVolume"
		"xpos"					"26"
		"ypos"					"190"
		"wide"					"450"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.05"
		"navUp"					"BtnOK"
		"navDown"				"SldMusicVolume"
		"conCommand"			"volume"
		"inverseFill"			"0"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"450"
			"tall"					"0"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"labelText"				"#L4D360UI_AudioOptions_Volume"
			"style"					"LeftDialogButton"
			"command"				""
			"ActivationType"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"SldMusicVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldMusicVolume"
		"xpos"					"26"
		"ypos"					"230"
		"wide"					"450"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.05"
		"navUp"					"SldGameVolume"
		"navDown"				"DrpSpeakerConfiguration"
		"conCommand"			"snd_musicvolume"
		"inverseFill"			"0"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"450"
			"tall"					"0"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"labelText"				"#L4D360UI_AudioOptions_MusicVolume"
			"style"					"LeftDialogButton"
			"command"				""
			"ActivationType"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"DrpSpeakerConfiguration"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"DrpSpeakerConfiguration"
		"xpos"				"26"
		"ypos"				"256"
		"wide"				"450"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"SldMusicVolume"
		"navDown"			"DrpSoundQuality"
		"labelText"			"#GameUI_SpeakerConfiguration"
		"style"				"DialogListButton"
		"list"
		{
			"#GameUI_Headphones"	"#GameUI_Headphones"
			"#GameUI_2Speakers"		"#GameUI_2Speakers"
			"#GameUI_4Speakers"		"#GameUI_4Speakers"
			"#GameUI_5Speakers"		"#GameUI_5Speakers"
		}
	}
	
	"DrpSoundQuality"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"DrpSoundQuality"
		"xpos"				"26"
		"ypos"				"296"
		"wide"				"450"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"DrpSpeakerConfiguration"
		"navDown"			"DrpCaptioning"
		"labelText"			"#GameUI_SoundQuality"
		"style"				"DialogListButton"
		"list"
		{
			"#GameUI_Low"		"#GameUI_Low"
			"#GameUI_Medium"	"#GameUI_Medium"
			"#GameUI_High"		"#GameUI_High"
		}
	}
	
	"DrpCaptioning"
	{
		"ControlName"		"BaseModHybridButton"
		"fieldName"			"DrpCaptioning"
		"xpos"				"26"
		"ypos"				"336"
		"wide"				"450"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"DrpSoundQuality"
		"navDown"			"DrpLanguage"
		"labelText"			"#L4D360UI_AudioOptions_Caption"
		"style"				"DialogListButton"
		"list"
		{
			"#L4D360UI_AudioOptions_CaptionOff"			"#L4D360UI_AudioOptions_CaptionOff"
			"#L4D360UI_AudioOptions_CaptionSubtitles"	"#L4D360UI_AudioOptions_CaptionSubtitles"
			"#L4D360UI_AudioOptions_CaptionOn"			"#L4D360UI_AudioOptions_CaptionOn"
		}
		"tooltiptext"			"You can change the caption languages in Steam - right click the game entry, click properties and look under Language."
	}
	
	"DrpLanguage"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"DrpLanguage"
		"xpos"					"26"
		"ypos"					"336"
		"wide"					"0"
		"tall"					"20"
		"visible"				"0"
		"enabled"				"0"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"navUp"					"DrpCaptioning"
		"navDown"				"BtnOK"
		"labelText"				"#L4D360UI_AudioOptions_Language"
		"style"					"DialogListButton"
		"list"
		{
			"_language0"		"_language0"
			"_language1"		"_language1"
			"_language2"		"_language2"
			"_language3"		"_language3"
			"_language4"		"_language4"
			"_language5"		"_language5"
			"_language6"		"_language6"
			"_language7"		"_language7"
			"_language8"		"_language8"
			"_language9"		"_language9"
			"_language:"		"_language:"
			"_language;"		"_language;"
			"_language<"		"_language<"
			"_language="		"_language="
			"_language>"		"_language>"
		}
	}
	
	"BtnOK"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnOK"
		"xpos"						"26"
		"ypos"				"382"
		"wide"						"200"
		"tall"						"20"
		"autoResize"				"0"
		"navUp"		"DrpLanguage"
		"navDown"	"SldGameVolume"
		"navLeft"	"BtnBack"
		"navRight"	"BtnBack"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#L4D360UI_OK"
		"style"						"MainMenuButtonSmall"
		"command"					"Back"
		"ActivationType"			"1"
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
		"navUp"		"DrpLanguage"
		"navDown"	"SldGameVolume"
		"navLeft"	"BtnOK"
		"navRight"	"BtnOK"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#L4D360UI_Back"
		"style"						"MainMenuButtonSmall"
		"command"					"Back"
		"ActivationType"			"1"
	}
}
