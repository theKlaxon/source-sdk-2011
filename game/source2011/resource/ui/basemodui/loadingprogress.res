"Resource/UI/Downloads.res"
{
	"LoadingProgress"
	{	
		"ControlName"			"Frame"
		"fieldName"				"LoadingProgress"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f0"
		"tall"					"f0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
	}
			
	// used as an anchor hint to resolve where the titlesafe boundary is
	"WorkingAnim"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"WorkingAnim"
		"xpos"					"r65"		[$GAMECONSOLE]
		"ypos"					"0"			[$GAMECONSOLE]
		"xpos"					"r75"		[!$GAMECONSOLE]
		"ypos"					"10"		[!$GAMECONSOLE]
		"wide"					"65"
		"tall"					"65"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		"image"					"spinner"
		"frame"					"0"
		"usetitlesafe"			"1"
	}

	// used as an anchor hint to resolve where the titlesafe boundary is
	"LoadingProgess"
	{
		"ControlName"			"Label"
		"fieldName"				"LoadingProgess"
		"xpos"					"r-135"
		"ypos"					"r10"
		"wide"					"0"
		"tall"					"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"usetitlesafe"			"1"
	}



	"LblGamerTag"
	{
		"ControlName"			"Label"
		"fieldName"				"LblGamerTag"
		"xpos"					"45"	[$GAMECONSOLE]
		"ypos"					"r43"	[$GAMECONSOLE]
		"xpos"					"55"	[!$GAMECONSOLE]
		"ypos"					"r53"	[!$GAMECONSOLE]
		"wide"					"300"
		"tall"					"25"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"GamerTag"
		"labelText"				""
		"textAlignment"			"west"
		"fgcolor_override"		"255 255 255 255"
		"usetitlesafe"			"1"
		"noshortcutsyntax"		"1"
	}
	
	"LblGamerTagStatus"
	{
		"ControlName"			"Label"
		"fieldName"				"LblGamerTagStatus"
		"xpos"					"45"	[$GAMECONSOLE]
		"ypos"					"r22"	[$GAMECONSOLE]
		"xpos"					"55"	[!$GAMECONSOLE]
		"ypos"					"r32"	[!$GAMECONSOLE]
		"wide"					"200"
		"tall"					"25"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"GamerTagStatus"
		"labelText"				"#PORTAL2_Coop_YourPartnerInScience"
		"textAlignment"			"west"
		"fgcolor_override"		"255 255 255 255"
		"usetitlesafe"			"1"
	}

	"LblMapTitle"
	{
		"ControlName"			"Label"
		"fieldName"				"LblMapTitle"
		"xpos"					"1"	[$GAMECONSOLE]
		"ypos"					"r73"	[$GAMECONSOLE]
		"xpos"					"90"	[!$GAMECONSOLE]
		"ypos"					"r67"	[!$GAMECONSOLE]
		"zpos"					"999"
		"wide"					"500"
		"tall"					"30"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"DialogTitle"
		"labelText"				""
		"textAlignment"			"west"
		"fgcolor_override"		"255 255 255 255"
		"usetitlesafe"			"1"
		"noshortcutsyntax"		"1"
	}
	
	"LblMapTitleDesc"
	{
		"ControlName"			"Label"
		"fieldName"				"LblMapTitleDesc"
		"xpos"					"45"	[$GAMECONSOLE]
		"ypos"					"r22"	[$GAMECONSOLE]
		"xpos"					"91"	[!$GAMECONSOLE]
		"ypos"					"r43"	[!$GAMECONSOLE]
		"zpos"					"999"
		"wide"					"200"
		"tall"					"25"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"GamerTagStatus"
		"labelText"				""
		"textAlignment"			"west"
		"fgcolor_override"		"255 255 255 255"
		"usetitlesafe"			"1"
	}
	
	
		"ImgEmployeeBadge"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgEmployeeBadge"
		"xpos"							"20"
		"ypos"							"r120"
		"zpos"							"900"
		"wide"							"136"
		"tall"							"136"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							"badgeBg"
	}

	"ImgBadgeOverlay"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgBadgeOverlay"
		"xpos"							"20"
		"ypos"							"r120"
		"zpos"							"999"
		"wide"							"136"
		"tall"							"136"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							"badgeOverlay"
	}

	"PnlGamerPic"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"PnlGamerPic"
		"xpos"					"11"		[$GAMECONSOLE]
		"ypos"					"r35"	[$GAMECONSOLE]
		"xpos"					"32"	[!$GAMECONSOLE]
		"ypos"					"r102"	[!$GAMECONSOLE]
		"zpos"							"910"
		"wide"					"48"
		"tall"					"48"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		"image"					"icon_lobby"
		"usetitlesafe"			"1"
	}
	
	"ImgBadgeLogo"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgBadgeLogo"
		"xpos"							"17"
		"ypos"							"r43"
		"zpos"							"910"
		"wide"							"64"
		"tall"							"16"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"scaleImage"					"1"
		"image"							"logo_aperture_badge"
	}
}