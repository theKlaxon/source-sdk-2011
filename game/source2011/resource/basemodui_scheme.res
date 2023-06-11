///////////////////////////////////////////////////////////
// Object Control Panel scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
// hit ctrl-alt-shift-R in the app to reload this file
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"221 221 221 255"
		"DullWhite"			"211 211 211 255"
		"Gray"				"64 64 64 255"
		"MediumGray"        "145 145 145 255"
		"DarkGrey"			"128 128 128 255"
		"AshGray"			"16 16 16 255"
		"AshGrayHighAlpha"	"16 16 16 192"
		"DarkGrayLowAlpha"	"32 32 32 64"
		"DarkRed"			"65 0 0 255"
		"DeepRed"			"168 26 26 255"
		"Orange"			"255 155 0 255"
		"Red"				"255 0 0 255"
		//"LightBlue"			"68 140 203 255"
		"LightBlue"			"66 142 192 255"
		"GreyBlue"			"65 74 96 255"
		"DarkBlueTrans"			"65 74 96 64"
		
		"TransparentBlack"	"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
		"Green"				"0 128 0 255"
		"LightBrown"		"120 69 24 255"
		"DarkBrown"			"57 49 38 255"
		
		"ScrollBarGrey"		"51 51 51 255"
		"ScrollBarHilight"	"110 110 110 255"
		"ScrollBarDark"		"38 38 38 255"
		
		"BrightYellow"		"242 237 0 255"
		"DarkYellow"		    "136 133 0 255"
		"TextYellow"        "110 110 84 255"

		"CNeurotoxinCountdownScreen_Default"		"0 0 0 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"200 200 200 196"	// the lit side of a control
		Border.Dark						"40 40 40 196"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 196"			// the additional border color for displaying the default/selected button
		Border.DarkRed					"DarkRed"
		Border.DeepRed					"DeepRed"
		Border.LightBrown				"LightBrown"
		Border.DarkBrown				"DarkBrown"
		Border.White					"White"

		Button.TextColor				"black"
		Button.BgColor					"blank"
		Button.ArmedTextColor			"black"
		Button.ArmedBgColor				"blank"
		Button.DepressedTextColor		"black"
		Button.DepressedBgColor			"blank"
		Button.FocusBorderColor			"blank"
		
		CheckButton.TextColor			"LightBlue"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself

		ComboBoxButton.ArrowColor		"DullWhite"
		ComboBoxButton.ArmedArrowColor	"White"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			12
		Frame.ClientInsetX				6
		Frame.ClientInsetY				4
		//Frame.BgColor					"160 160 160 128"
		Frame.BgColor					"0 0 0 255"
		Frame.OutOfFocusBgColor			"0 0 0 255"
		//Frame.OutOfFocusBgColor			"160 160 160 32"
		Frame.FocusTransitionEffectTime	"0.3"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"Black"
		Label.TextColor					"DarkGrey"
		Label.TextBrightColor			"LightBlue"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"117 117 117 255"
		Label.DisabledFgColor2			"30 30 30 255"

		ListPanel.TextColor					"OffWhite"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"LightBlue"
		ListPanel.SelectedOutOfFocusBgColor	"LightBlue"
		ListPanel.EmptyListInfoTextColor	"LightBlue"
		
		ImagePanel.fillcolor			"Blank"

		Menu.TextColor					"White"
		Menu.BgColor					"160 160 160 64"
		Menu.ArmedTextColor				"Black"
		Menu.ArmedBgColor				"LightBlue"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"LightBlue"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0.6"	// time to change from one tab to another
		PropertySheet.TabFont	"DefaultLarge"

		RadioButton.TextColor			"DullWhite"
		RadioButton.SelectedTextColor	"White"

		RichText.TextColor				"255 255 255 255"
		RichText.BgColor				"255 255 255 180"
		RichText.SelectedTextColor		"Black"
		RichText.SelectedBgColor		"LightBlue"

		// gameconsole has no scrollbar (and shipped without one working), nor symbols to do arrows,
		// so now adjusting for gameuibuttons to supply arrows as a hack for DLC sectionedlistpanel
		// which cannot put the arrows at the bottom
		ScrollBar.Wide						"12"		[!$GAMECONSOLE]
		ScrollBar.Wide						"16"		[$GAMECONSOLE && $GAMECONSOLELODEF]
		ScrollBar.Wide						"18"		[$GAMECONSOLE && $GAMECONSOLEHIDEF]

		ScrollBarButton.FgColor				"Black"		[!$GAMECONSOLE]
		ScrollBarButton.BgColor				"Blank"		[!$GAMECONSOLE]
		ScrollBarButton.ArmedFgColor		"White"		[!$GAMECONSOLE]
		ScrollBarButton.ArmedBgColor		"Blank"		[!$GAMECONSOLE]
		ScrollBarButton.DepressedFgColor	"White"		[!$GAMECONSOLE]
		ScrollBarButton.DepressedBgColor	"Blank"		[!$GAMECONSOLE]

		ScrollBarButton.FgColor				"Blank"		[$GAMECONSOLE]
		ScrollBarButton.BgColor				"Blank"		[$GAMECONSOLE]
		ScrollBarButton.ArmedFgColor		"Blank"		[$GAMECONSOLE]
		ScrollBarButton.ArmedBgColor		"Blank"		[$GAMECONSOLE]
		ScrollBarButton.DepressedFgColor	"Blank"		[$GAMECONSOLE]
		ScrollBarButton.DepressedBgColor	"Blank"		[$GAMECONSOLE]

		ScrollBarSlider.FgColor				"0 0 0 255"	[!$GAMECONSOLE]		// nob color
		ScrollBarSlider.BgColor				"0 0 0 40"	[!$GAMECONSOLE]		// slider background color
		ScrollBarSlider.NobFocusColor		"White"		[!$GAMECONSOLE]	
		ScrollBarSlider.NobDragColor		"White"		[!$GAMECONSOLE]

		ScrollBarSlider.FgColor				"Blank"		[$GAMECONSOLE]		// nob color
		ScrollBarSlider.BgColor				"Blank"		[$GAMECONSOLE]		// slider background color
		ScrollBarSlider.NobFocusColor		"Blank"		[$GAMECONSOLE]	
		ScrollBarSlider.NobDragColor		"Blank"		[$GAMECONSOLE]
		ScrollBarSlider.Inset				"3"

		SectionedListPanel.HeaderTextColor				"100 100 100 255"	[$GAMECONSOLE]
		SectionedListPanel.HeaderTextColor				"128 128 128 255"	[!$GAMECONSOLE]
		SectionedListPanel.HeaderBgColor				"Blank"
		SectionedListPanel.DividerColor					"Black"
		SectionedListPanel.TextColor					"LightBlue"
		SectionedListPanel.BrightTextColor				"Black"
		SectionedListPanel.BgColor						"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"240 240 240 255"
		SectionedListPanel.SelectedBgColor				"0 0 0 240"
		SectionedListPanel.OutOfFocusSelectedTextColor	"240 240 240 255"
		SectionedListPanel.OutOfFocusSelectedBgColor	"0 0 0 240"
		SectionedListPanel.MouseOverBgColor				"0 0 0 40"

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"127 140 127 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"OffWhite"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	"LightBlue"
		TextEntry.OutOfFocusSelectedBgColor	"LightBlue"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"LightBlue"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"
		
		//
		// portal2
		//
		Logo.X								"75"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		Logo.X								"50"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]						
		Logo.X								"75"	[!$GAMECONSOLE && $WIN32WIDE]
		Logo.X								"50"	[!$GAMECONSOLE && !$WIN32WIDE]						
		Logo.Y								"35"
		Logo.Width							"240"
		Logo.Height							"60"
		
		SteamCloud.X						"350"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		SteamCloud.X						"325"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]						
		SteamCloud.X						"350"	[!$GAMECONSOLE && $WIN32WIDE]
		SteamCloud.X						"325"	[!$GAMECONSOLE && !$WIN32WIDE]					
		SteamCloud.Y						"50"
		SteamCloud.Width					"40"
		SteamCloud.Height					"40"
		
		SteamCloudProgress.X				"396"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		SteamCloudProgress.X				"370"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]			
		SteamCloudProgress.X				"396"	[!$GAMECONSOLE && $WIN32WIDE]
		SteamCloudProgress.X				"370"	[!$GAMECONSOLE && !$WIN32WIDE]			
		SteamCloudProgress.Y				"73"
		SteamCloudProgress.Width			"86"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		SteamCloudProgress.Width			"85"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]
		SteamCloudProgress.Width			"86"	[!$GAMECONSOLE && $WIN32WIDE]
		SteamCloudProgress.Width			"85"	[!$GAMECONSOLE && !$WIN32WIDE]	
		SteamCloudProgress.Height			"5"
		SteamCloudProgress.ColorRemaining	"30 67 74 150"
		SteamCloudProgress.ColorDone		"80 179 199 255"
		SteamCloudProgress.ColorDoneFade	"80 179 199 100"

		SteamCloudText.Font					"ButtonText"
		SteamCloudText.X					"350"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		SteamCloudText.X					"324"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]		
		SteamCloudText.X					"350"	[!$GAMECONSOLE && $WIN32WIDE]
		SteamCloudText.X					"324"	[!$GAMECONSOLE && !$WIN32WIDE]		
		SteamCloudText.Y					"49"
		SteamCloudText.Color				"140 140 140 255"

		FooterPanel.ButtonFont				"GameUIButtonsMini"
		FooterPanel.TextFont				"ButtonText"			[$GAMECONSOLE]
		FooterPanel.TextFont				"ButtonText_NC"			[!$GAMECONSOLE]
		FooterPanel.TextOffsetX				"4"						[$GAMECONSOLE]
		FooterPanel.TextOffsetX				"0"						[!$GAMECONSOLE]
		FooterPanel.TextOffsetY				"-1"					[$PS3]
		FooterPanel.TextOffsetY				"1"						[$X360]
		FooterPanel.TextOffsetY				"0"						[!$GAMECONSOLE && !$OSX]
		FooterPanel.TextOffsetY				"-1"					[$OSX]
		FooterPanel.TextColor				"0 0 0 255"
		FooterPanel.InGameTextColor			"200 200 200 255"
		FooterPanel.ButtonGapX				"12"					[!$GAMECONSOLE]
		FooterPanel.ButtonGapX				"20"					[$GAMECONSOLE && ($ENGLISH || $GAMECONSOLEWIDE)]
		FooterPanel.ButtonGapX				"16"					[$GAMECONSOLE && (!$ENGLISH && !$GAMECONSOLEWIDE)]
		FooterPanel.ButtonGapY				"25"
		FooterPanel.ButtonPaddingX			"20"					[!$GAMECONSOLE]
		FooterPanel.OffsetY					"16"					[$GAMECONSOLE]
		FooterPanel.OffsetY					"8"						[!$GAMECONSOLE]
		FooterPanel.BorderColor				"130 130 130 255"		[!$GAMECONSOLE]	
		FooterPanel.BorderArmedColor		"180 180 180 255"		[!$GAMECONSOLE]
		FooterPanel.BorderDepressedColor	"blank"					[!$GAMECONSOLE]
		FooterPanel.BorderColorAlt				"64 64 64 255"		[!$GAMECONSOLE]	
		FooterPanel.BorderArmedColorAlt		"128 128 128 255"		[!$GAMECONSOLE]
		FooterPanel.BorderDepressedColorAlt	"blank"					[!$GAMECONSOLE]
		FooterPanel.TextColorAlt			"201 211 207 255"
		FooterPanel.InGameTextColor			"201 211 207 255"

		FooterPanel.AvatarSize				"32"
		FooterPanel.AvatarBorderSize		"40"
		FooterPanel.AvatarOffsetY			"47"
		FooterPanel.AvatarNameY				"49"
		FooterPanel.AvatarFriendsY			"66"
		FooterPanel.AvatarTextFont			"ButtonText"

		Dialog.TitleFont					"MainMenuHeader1"
		Dialog.TitleColor					"255 255 255 255"
		Dialog.MessageBoxTitleColor			"0 0 0 255"
		Dialog.MessageBoxTitleColorAlt			"154 167 164 255"
		Dialog.TitleOffsetX					"26"
		Dialog.TitleOffsetY					"50"
		Dialog.TileWidth					"50"
		Dialog.TileHeight					"50"
		Dialog.PinFromBottom				"f0"
		Dialog.PinFromLeft					"100"	[$GAMECONSOLE && ($GAMECONSOLEWIDE && !$ANAMORPHIC)]
		Dialog.PinFromLeft					"75"	[$GAMECONSOLE && (!$GAMECONSOLEWIDE || $ANAMORPHIC)]	
		Dialog.PinFromLeft					"100"	[!$GAMECONSOLE && $WIN32WIDE]
		Dialog.PinFromLeft					"75"	[!$GAMECONSOLE && !$WIN32WIDE]	
		Dialog.ButtonFont					"GameUIButtonsMini"		[!$PS3]
		Dialog.ButtonFont					"GameUIButtonsPs3ctrlr" [$PS3]
		
		SliderControl.InsetX				"-10"
		SliderControl.MarkColor				"17 187 227 255"	[$GAMECONSOLE]
		SliderControl.MarkFocusColor		"17 187 227 255"	[$GAMECONSOLE]
		SliderControl.MarkColor				"150 150 150 255"	[!$GAMECONSOLE]
		SliderControl.MarkFocusColor		"150 150 150 255"	[!$GAMECONSOLE]
		SliderControl.ForegroundColor		"255 255 255 255"
		SliderControl.BackgroundColor		"150 150 150 255"
		SliderControl.ForegroundFocusColor	"125 125 125 255"
		SliderControl.BackgroundFocusColor	"150 150 150 255"
		
		SliderControl.MarkColorAlt			"150 150 150 255"
		SliderControl.MarkFocusColorAlt	"0 0 0 255"
		SliderControl.ForegroundColorAlt	"201 211 207 255"
		SliderControl.BackgroundColorAlt	"150 150 150 255"
		SliderControl.ForegroundFocusColorAlt	"0 0 0 255"
		SliderControl.BackgroundFocusColorAlt	"150 150 150 255"

		LoadingProgress.NumDots				"15"
		LoadingProgress.DotGap				"3"
		LoadingProgress.DotWidth			"16"
		LoadingProgress.DotHeight			"18"

		ConfirmationDialog.TextFont			"MainMenuItemSmall"
		ConfirmationDialog.TextOffsetX		"0"
			
		NewGameDialog.TextOffsetY			"-2"	[$GAMECONSOLE]
		NewGameDialog.TextOffsetY			"-1"		[$OSX]
		SaveLoadGameDialog.TextOffsetY		"-2"	[$GAMECONSOLE]
		SaveLoadGameDialog.TextOffsetY		"-1"		[$OSX]

		KeyBindings.ActionColumnWidth		"200"
		KeyBindings.KeyColumnWidth			"150"
		KeyBindings.HeaderFont				"KeyBindingsHeader"
		KeyBindings.KeyFont					"DialogButton"
		
		CustomButtonBindings.ActionColumnWidth		"200"
		CustomButtonBindings.ButtonColumnWidth		"150"
		CustomButtonBindings.HeaderFont				"KeyBindingsHeader"
		CustomButtonBindings.ButtonFont				"DialogButton"
		CustomButtonBindings.ArrowInset				"2"	[$GAMECONSOLEHIDEF]
		CustomButtonBindings.ArrowInset				"3"	[$GAMECONSOLELODEF]
		CustomButtonBindings.ButtonOffset			"50"

		InlineEditPanel.FillColor			"9 190 255 100"
		InlineEditPanel.DashColor			"Black"
		InlineEditPanel.LineSize			"1"		[!$GAMECONSOLE]
		InlineEditPanel.LineSize			"2"		[$GAMECONSOLE]
		InlineEditPanel.DashLength			"6"
		InlineEditPanel.GapLength			"3"
				
	//////////////////////// HYBRID BUTTON STYLES /////////////////////////////
	//
	// Custom styles for use with HybridButtons

		// sets the defaults for any hybrid buttons
		// each "styled" hybrid button overrides as necessary
		HybridButton.TextColor						"0 0 0 255"
		HybridButton.FocusColor						"220 220 220 255"
		HybridButton.CursorColor					"0 0 0 240"			[!$GAMECONSOLE || $X360]
		HybridButton.CursorColor					"0 0 0 200"			[$PS3]
		HybridButton.DisabledColor					"255 255 255 255"	[!$GAMECONSOLE]
		HybridButton.FocusDisabledColor				"255 255 255 255"	[!$GAMECONSOLE]
		HybridButton.LockedColor					"255 255 255 255"	[!$GAMECONSOLE]
		HybridButton.DisabledColor					"255 255 255 255"	[$GAMECONSOLE]
		HybridButton.FocusDisabledColor				"255 255 255 255"	[$GAMECONSOLE]
		HybridButton.LockedColor					"128 128 128 255"	[$GAMECONSOLE]
		HybridButton.Font							"DialogMenuItem"
		HybridButton.SymbolFont						"MarlettLarge"			[!$GAMECONSOLE]
		HybridButton.TextInsetX						"10"
		HybridButton.TextInsetY						"3"				[!$OSX]
		HybridButton.TextInsetY						"0"				[$OSX]
		HybridButton.AllCaps						"0"
		HybridButton.CursorHeight					"25"
		HybridButton.MultiLine						"25"
		HybridButton.ListButtonActiveColor			"255 255 255 255"
		HybridButton.ListButtonInactiveColor		"255 255 255 60"
		HybridButton.MouseOverCursorColor			"0 0 0 40"

		// Alternate hybrid button colors
		HybridButton.TextColorAlt						"201 211 207 255"
		HybridButton.FocusColorAlt					"0 0 0 255"
		HybridButton.CursorColorAlt					"219 214 133 128"		
		HybridButton.MouseOverCursorColorAlt			"219 214 133 255"
		HybridButton.ListButtonActiveColorAlt			"0 0 0 255"
		HybridButton.ListButtonInactiveColorAlt			"0 0 0 180"

		// any primary menu (not the main menu)
		DefaultButton.Style							"0"
		DefaultButton.AllCaps						"0"
			
		// main menu only
		MainMenuButton.Style						"1"
		MainMenuButton.TextColor					"255 255 255 255"
		MainMenuButton.FocusColor					"125 125 125 255"
		MainMenuButton.CursorColor					"255 255 255 0"
		MainMenuButton.Font							"MainMenuItem"
		MainMenuButton.TextInsetX					"10"
		MainMenuButton.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuButton.TextInsetY					"-2"	[$OSX]
		MainMenuButton.TextInsetY					"1"		[$PS3]
		MainMenuButton.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuButton.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuButton.AllCaps						"0"

		MainMenuReallySmall.Style						"1"
		MainMenuReallySmall.TextColor					"255 255 255 255"
		MainMenuReallySmall.Font							"MainMenuReallySmall"
		MainMenuReallySmall.TextInsetX					"10"
		MainMenuReallySmall.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuReallySmall.TextInsetY					"-2"	[$OSX]
		MainMenuReallySmall.TextInsetY					"1"		[$PS3]
		MainMenuReallySmall.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuReallySmall.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuReallySmall.AllCaps						"0"
		MainMenuReallySmall.CursorColor					"255 255 255 0"
		
		MainMenuHeader1.Style						"1"
		MainMenuHeader1.TextColor					"255 255 255 255"
		MainMenuHeader1.Font							"MainMenuHeader1"
		MainMenuHeader1.TextInsetX					"10"
		MainMenuHeader1.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuHeader1.TextInsetY					"-2"	[$OSX]
		MainMenuHeader1.TextInsetY					"1"		[$PS3]
		MainMenuHeader1.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuHeader1.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuHeader1.AllCaps						"0"
		MainMenuHeader1.CursorColor					"255 255 255 0"
			
		MainMenuHeader2.Style						"1"
		MainMenuHeader2.TextColor					"255 255 255 255"
		MainMenuHeader2.Font							"MainMenuHeader2"
		MainMenuHeader2.TextInsetX					"10"
		MainMenuHeader2.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuHeader2.TextInsetY					"-2"	[$OSX]
		MainMenuHeader2.TextInsetY					"1"		[$PS3]
		MainMenuHeader2.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuHeader2.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuHeader2.AllCaps						"0"
		MainMenuHeader2.CursorColor					"255 255 255 0"

		SaveFile.Style						"1"
		SaveFile.TextColor					"255 255 255 255"
		SaveFile.Font							"SaveFileFont"
		SaveFile.TextInsetX					"10"
		SaveFile.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		SaveFile.TextInsetY					"-2"	[$OSX]
		SaveFile.TextInsetY					"1"		[$PS3]
		SaveFile.TextInsetY					"2"		[$X360 && !$JAPANESE]
		SaveFile.TextInsetY					"1"		[$X360 && $JAPANESE]
		SaveFile.AllCaps						"0"
		SaveFile.CursorColor					"255 255 255 0"
		
		GenericConfirmationTitle.Style						"1"
		GenericConfirmationTitle.TextColor					"255 255 255 255"
		GenericConfirmationTitle.Font							"GenericConfirmationTitle"
		GenericConfirmationTitle.TextInsetX					"10"
		GenericConfirmationTitle.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		GenericConfirmationTitle.TextInsetY					"-2"	[$OSX]
		GenericConfirmationTitle.TextInsetY					"1"		[$PS3]
		GenericConfirmationTitle.TextInsetY					"2"		[$X360 && !$JAPANESE]
		GenericConfirmationTitle.TextInsetY					"1"		[$X360 && $JAPANESE]
		GenericConfirmationTitle.AllCaps						"0"
		GenericConfirmationTitle.CursorColor					"255 255 255 0"
		
		MainMenuButtonSmall.Style						"1"
		MainMenuButtonSmall.TextColor					"255 255 255 255"
		MainMenuButtonSmall.FocusColor					"125 125 125 255"
		MainMenuButtonSmall.CursorColor					"255 255 255 0"
		MainMenuButtonSmall.Font							"MainMenuItemSmall"
		MainMenuButtonSmall.TextInsetX					"10"
		MainMenuButtonSmall.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuButtonSmall.TextInsetY					"-2"	[$OSX]
		MainMenuButtonSmall.TextInsetY					"1"		[$PS3]
		MainMenuButtonSmall.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuButtonSmall.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuButtonSmall.AllCaps						"0"

		MainMenuButtonSmaller.Style						"1"
		MainMenuButtonSmaller.TextColor					"255 255 255 255"
		MainMenuButtonSmaller.FocusColor					"125 125 125 255"
		MainMenuButtonSmaller.CursorColor					"255 255 255 0"
		MainMenuButtonSmaller.Font							"MainMenuItemSmaller"
		MainMenuButtonSmaller.TextInsetX					"10"
		MainMenuButtonSmaller.TextInsetY					"2"		[!$GAMECONSOLE && !$OSX]
		MainMenuButtonSmaller.TextInsetY					"-2"	[$OSX]
		MainMenuButtonSmaller.TextInsetY					"1"		[$PS3]
		MainMenuButtonSmaller.TextInsetY					"2"		[$X360 && !$JAPANESE]
		MainMenuButtonSmaller.TextInsetY					"1"		[$X360 && $JAPANESE]
		MainMenuButtonSmaller.AllCaps						"0"

		// inside a dialog, left aligned, optional RHS component anchored to right edge
		LeftDialogButton.Style						"2"
		LeftDialogButton.TextColor					"255 255 255 255"
        LeftDialogButton.FocusColor					"125 125 125 255"
		LeftDialogButton.CursorColor					"255 255 255 0"
		LeftDialogButton.Font						"MainMenuItem"

		// inside a dialog, left aligned, RHS list anchored to right edge
		DialogListButton.Style						"3"
		DialogListButton.TextColor					"255 255 255 255"
        DialogListButton.FocusColor					"125 125 125 255"
		DialogListButton.CursorColor					"255 255 255 0"
		DialogListButton.Font						"MainMenuItem"
		
		// inside of a flyout menu only
		FlyoutMenuButton.Style						"4"

		// inside a dialog, contains a RHS value, usually causes a flyout
		DropDownButton.Style						"5"
						
		// specialized button, only appears in game mode carousel
		GameModeButton.Style						"6"
				
		VirtualNavigationButton.Style				"7"

		// menus where mixed case is used for button text (Steam link dialog)
		MixedCaseButton.Style						"8"
		MixedCaseButton.CursorHeight				"50"
		MixedCaseButton.AllCaps						"0"

		MixedCaseDefaultButton.Style				"9"
		MixedCaseDefaultButton.AllCaps				"0"

		BitmapButton.Style							"10"
		BitmapButton.TextColor						"120 120 120 255"
		BitmapButton.FocusColor						"255 255 255 255"
		BitmapButton.CursorColor					"255 255 255 15"
		BitmapButton.Font							"NewGameChapter"
		BitmapButton.TextInsetX						"4"
		BitmapButton.TextInsetY						"0"		[!$OSX]
		BitmapButton.TextInsetY						"-2"	[$OSX]
	}

	//////////////////////// CRITICAL FONTS ////////////////////////////////
	//
	// Very specifc console optimization that precaches critical glyphs to prevent hitching.
	// Adding descriptors here causes super costly memory font pages to be instantly built.
	// CAUTION: Each descriptor could be up to N fonts, due to resolution, proportionality state, etc,
	// so the font page explosion could be quite drastic.
	CriticalFonts
	{
		"CoopLevelSelectFont"
		{
			"uppercase"		"1"
			"lowercase"		"1"
			"punctuation"	"1"
		}

		"CoopLevelSelectFont_Bold"
		{
			"uppercase"		"1"
			"punctuation"	"1"
		}

		"CoopLevelSelectFont_Small"
		{
			"commonchars"	"1"
		}

		"CoopHubTrackScreenFont"
		{
			"uppercase"		"1"
			"punctuation"	"1"
		}

		"CoopHubScreenMediumFont"
		{
			"uppercase"		"1"
			"punctuation"	"1"
		}

		"CoopHubScreenVerySmallFont"
		{
			"uppercase"		"1"
			"punctuation"	"1"
		}

		"CoopHubTrackScreenFont_Bold"
		{
			"numbers"		"1"
		}

		"CoopHubScreenNumberFont"
		{
			"numbers"		"1"
			"explicit"		"#P2COOP_Scoreboard_Stat4"
		}

		"CoopLevelProgressFont_Small"
		{
			"uppercase"		"1"
			"numbers"		"1"
			"punctuation"	"1"
		}

		"NeurotoxinCountdownFont"
		{
			"numbers"		"1"
			"punctuation"	"1"
		}

		"InstructorTitle"
		{
			"commonchars"	"1"
		}

		"InstructorTitle_ss"
		{
			"commonchars"	"1"
		}

		"InstructorKeyBindings"
		{
			"commonchars"	"1"
		}

		"InstructorKeyBindingsSmall"
		{
			"commonchars"	"1"
		}

		"CloseCaption_Console"
		{
			"commonchars"	"1"
			"asianchars"	"1"
			"skipifasian"	"0"
			"russianchars"	"1"
			"uppercase"	"1"
			"lowercase"	"1"
		}

		"CommentaryDefault"
		{
			"commonchars"	"1"
			"asianchars"	"1"
			"skipifasian"	"0"
			"russianchars"	"1"
			"uppercase"	"1"
			"lowercase"	"1"
		}

		"CreditsOutroText"
		{
			"commonchars"	"1"
			"skipifasian"	"0"
		}

		"ConfirmationText"
		{
			"commonchars"	"1"
		}

		"InGameChapterTitle"
		{
			"uppercase"		"1"
			"numbers"		"1"
			"russianchars"		"1"
		}

		"InGameChapterSubtitle"
		{
			"uppercase"		"1"
			"russianchars"		"1"
		}

		"ButtonText"
		{
			"commonchars"	"1"
		}

		"MainMenuItem"
		{
			"commonchars"	"1"
			"russianchars"	"1"
		}
		
		"MainMenuItemSmall"
		{
			"commonchars"	"1"
		}

		"MainMenuItemSmaller"
		{
			"commonchars"	"1"
		}

		"DialogMenuItem"
		{
			"commonchars"	"1"
		}

		"DialogTitle"
		{
			"commonchars"	"1"
		}

		"DialogButton"
		{
			"commonchars"	"1"
		}

		"ControllerLayout"
		{
			"commonchars"	"1"
		}

		"NewGameChapter"
		{
			"commonchars"	"1"
		}

		"NewGameChapterName"
		{
			"commonchars"	"1"
		}

		"FriendsList"
		{
			"uppercase"	"1"
			"lowercase"	"1"
			"numbers"	"1"
			"explicit"	" _-"
		}

		"FriendsListSmall"
		{
			"uppercase"	"1"
			"lowercase"	"1"
			"explicit"	"2() "
		}

		"FriendsListStatusLine" [!$GAMECONSOLE]
		{
			"uppercase"	"1"
			"lowercase"	"1"
			"explicit"	"2() "
		}
	}

	//////////////////////// BITMAP FONT FILES /////////////////////////////
	//
	// Bitmap Fonts are ****VERY*** expensive static memory resources so they are purposely sparse
	BitmapFontFiles
	{
		// UI buttons, custom font, (256x64)
		"Buttons"		"materials/vgui/fonts/buttons_32.vbf"      [!$PS3]
		"Buttons"		"materials/vgui/fonts/buttons_ps3_32.vbf"  [$PS3 && !$INPUTSWAPAB]
		"Buttons"		"materials/vgui/fonts/buttons_ps3_j_32.vbf"  [$PS3 && $INPUTSWAPAB]
	}

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	// font options: italic, underline, strikeout, antialias, dropshadow, outline, tall, blur, scanlines
	//   ?: custom, bitmap, rotary, additive
	//
	// by default, the game will make a proportional AND a nonproportional version of each
	// font. If you know ahead of time that the font will only ever be used proportionally
	// or nonproportionally, you can conserve resources by telling the engine so with the
	// "isproportional" key. can be one of: "no", "only", or "both".
	// "both" is the default behavior.
	// "only" means ONLY a proportional version will be made.
	// "no" means NO proportional version will be made.
	// this key should come after the named font glyph sets -- eg, it should be inside "Default" and
	// after "1", "2", "3", etc -- *not* inside the "1","2",.. size specs. That is, it should be 
	// at the same indent level as "1", not the same indent level as "yres".
	
	Fonts
	{		
		// Used for Debugging UI, overlays, etc - Not intended for customers
		"DefaultSystemUI"
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		"NeurotoxinCountdownFont"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"80" [!$OSX]
				"tall"		"94" [$OSX]
				"weight"	"100" [!$X360]
				"weight"	"400" [$X360]
				"antialias" "1"
			}
		}

//////////////////////// COOP /////////////////////////////


		"CreditsFont"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"42"
				"weight"	"100"
				//"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias" "1"
			}
		}

		"CreditsFontAbsurdlyBig"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"120"
				"weight"	"100"
				"antialias" "1"
			}
		}
		
//////////////////////// MENU UI /////////////////////////////

		// this is the symbol font
		"MarlettLarge" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"16"
				"weight"	"0"
				"symbol"	"1"
				"range"		"0x0000 0x007F"	//	Basic Latin
				"antialias"	"1"
			}
		}

		// this is the symbol font
		"Marlett" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"12"
				"weight"	"0"
				"symbol"	"1"
				"range"		"0x0000 0x007F"	//	Basic Latin
				"antialias"	"1"
			}
		}
		
		"MarlettHalf" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"9"
				"weight"	"0"
				"symbol"	"1"
				"range"		"0x0000 0x007F"	//	Basic Latin
				"antialias"	"1"
			}
		}

		GameUIButtons
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.8"
				"scaley"	"0.8"
			}
		}

		GameUIButtonsMini
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.65"
				"scaley"	"0.65"
			}
		}

		GameUIButtonsPs3ctrlr
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"1"
				"scaley"	"1"
			}
		}
		
		GameUIButtonsTiny
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.5"
				"scaley"	"0.5"
			}
		}
							
		// attract screen
		"AttractTitle"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"34"
				"weight"		"400"
				"antialias"		"1"
			}
		}
		
		// an item appearing on the main menu
		"MainMenuItem"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"42"
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		"MainMenuItemSmall"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"32"
				"weight"	"400"
				"antialias"	"1"
			}
		}

		"MainMenuItemSmaller"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"26"
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		"MainMenuHeader1"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"65"
				"weight"	"400"
				"antialias"	"1"
			}
		}

		"TSPLoading"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"50"
				"weight"		"400"
				"antialias"		"1"
			}
		}
		
		"GenericConfirmationTitle"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"40"
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		"MainMenuHeader2"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"32"
				"weight"	"400"
				"antialias"	"1"
			}
		}

		"MainMenuReallySmall"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"16"
				"weight"	"300"
				"antialias"	"1"
			}
		}

		"NewGameChapterName"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"30"
				"weight"	"400"
				"antialias"	"1"
			}
		}
	
		// an item appearing on a dialog menu
		"DialogMenuItem"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"	[!$OSX]
				"tall"		"21"	[$OSX]
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		// the title heading for a primary menu
		"DialogTitle"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"33"	[!$OSX]
				"tall"		"37"	[$OSX]
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		// an LHS/RHS item appearing on a dialog menu
		"DialogButton"
		{
			"isproportional"	"only"		
			"1" [$GAMECONSOLE]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"weight"	"400"
				"tall"		"18"
				"antialias"	"1"
			}
			"1" [!$GAMECONSOLE]
			{
				// HD or PC can support the lighter/thinner font
				"tall"		"20"					[!$OSX]
				"tall"		"21"					[$OSX]
				"weight"	"400"
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"antialias"	"1"
			}
		}
		
		// text for the footer buttons (A/B/X/Y)
		"ButtonText" [$GAMECONSOLE]
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
			}
		}
	
		"ButtonText_NC" [!$GAMECONSOLE]
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"		[$WIN32LODEF]
				"tall"		"15"		[$WIN32HIDEF]
				"weight"	"400"
				"antialias"	"1"
			}
		}

		"KeyBindingsHeader" [!$GAMECONSOLE]
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"	[!$OSX]
				"tall"		"22"	[$OSX]
				"weight"	"400"
				"antialias"	"1"
			}
		}

		// text for the controller callouts
		"ControllerLayout"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"15"	[$GAMECONSOLE]
				"tall"		"18"	[!$GAMECONSOLE && $WIN32LODEF && !$OSX]
				"tall"		"15"	[!$GAMECONSOLE && $WIN32HIDEF && !$OSX]
				"tall"		"18"	[$OSX]
				"weight"	"400"
				"antialias"	"1"
			}
		}
		
		// text for the confirmation
		"ConfirmationText"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"	[!$OSX]
				"tall"		"24"	[$OSX]
				"weight"	"700"	[$GAMECONSOLE]
				"weight"	"400"	[!$GAMECONSOLE]
				"antialias"	"1"
			}
		}
		
		"FriendsList"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"24" [$GAMECONSOLE]
				"tall"		"20" [!$GAMECONSOLE && !$OSX]
				"tall"		"24" [!$GAMECONSOLE && $OSX]
				"weight"	"700"
				"antialias"	"1"
			}
		}	
	
		"FriendsListSmall"
		{
			"isproportional"	"only"		
			"1" [$OSX]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"1 500"
			}
			"2"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"501 6000" [$OSX]
			}
		}	
		
		"FriendsListStatusLine" [!$GAMECONSOLE]
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"14"
				"weight"	"400"
				"antialias"	"1"
			}
		}	
		
		"NewGameChapter"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"	[!$OSX]
				"tall"		"20"	[$OSX]
				"weight"	"400"
				"antialias"	"1"
			}
		}									
		
		"GamerTag"
		{
			"isproportional"	"only"		
			"1" [$OSX]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"1 500"
			}
			"2" 
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"501 6000" [$OSX]
			}
		}				

		"GamerTagStatus"
		{
			"isproportional"	"only"		
			"1" [$OSX]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"16"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"1 500"
			}
			"2" 
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"16"
				"weight"	"400"
				"antialias"	"1"
				"yres"	"501 6000" [$OSX]
			}
		}				

//////////////////////// CLOSE CAPTION /////////////////////////////

		"CloseCaption_Normal" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"
				"weight"	"500"
				"antialias"	"1"
			}
		}
		
		"CloseCaption_Italic"	[!$GAMECONSOLE]
		{	
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"
				"weight"	"500"
				"italic"	"1"
				"antialias"	"1"
			}
		}
		
		"CloseCaption_Bold" [!$GAMECONSOLE]
		{		
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"
				"weight"	"900"
				"antialias"	"1"
			}
		}
		
		"CloseCaption_BoldItalic" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"
				"weight"	"900"
				"italic"	"1"
				"antialias"	"1"
			}
		}

		"CloseCaption_Console" [$GAMECONSOLE]
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"20"
				"weight"	"400"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias"	"1"
			}
		}

//////////////////////// CHAPTER TITLES /////////////////////////////

		"YouWin"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"200" // source fonts can't go any bigger???????
				"weight"		"200"
				"antialias"		"1"
			}
		}

		"InGameChapterTitle"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"19"
				"weight"		"200"
				"antialias"		"1"
			}
		}

		"InGameChapterSubtitle"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"34"
				"weight"		"800"
				"antialias"		"1"
			}
		}

//////////////////////// INSTRUCTOR /////////////////////////////

		"InstructorTitle"
		{
			"isproportional"	"only"		
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"24"
				"weight"		"400"
				"antialias"		"1"
			}
		}

		"InstructorTitle_ss"
		{
			"isproportional"	"only"
			"1"
			{
				"name"			"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"			"20"
				"weight"		"400"
				"antialias"		"1"
			}
		}
		
		"InstructorButtons"
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.8"
				"scaley"	"0.8"
			}
		}
		
		"InstructorButtons_ss"
		{
			"1"
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.8" [$GAMECONSOLELODEF]
				"scaley"	"0.8" [$GAMECONSOLELODEF]
				"scalex"	"0.5" [$GAMECONSOLEHIDEF]
				"scaley"	"0.5" [$GAMECONSOLEHIDEF]
			}
		}
		
		"InstructorKeyBindings"
		{
			"isproportional"	"only"
			"1" [$OSX]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"14"
				"weight"	"400"
				"antialias" "0"
				"yres"	"1 500"
			}
			"2"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"12"
				"weight"	"400"
				"antialias" "1"
				"yres"	"501 6000" [$OSX]
			}
		}

		"InstructorKeyBindingsSmall"
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"9"		[!$GAMECONSOLE]
				"tall"		"12"	[$GAMECONSOLE]
				"weight"	"400"
				"antialias" "1"
			}
		}

//////////////////////// COMMENTARY /////////////////////////////
	
		"CommentaryDefault"
		{
			"isproportional"	"only"
			"1" [$OSX]
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"16"
				"weight"	"400"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias" "1"
				"yres"	"1 500"
			}
			"2"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"16"
				"weight"	"400"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias" "1"
				"yres"	"501 6000" [$OSX]
			}
		}	
		
//////////////////////// CREDITS /////////////////////////////

		CreditsOutroText
		{
			"isproportional"	"only"
			"1"
			{
				"name"		"Consolas"
				"tall"		"20"
				"weight"	"400"
				"antialias" "1"
			}
		}

//////////////////////// CENTER PRINT /////////////////////////////

		CenterPrintText
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"24"
				"weight"	"400"
				"antialias" "1"
				"additive"	"1"
			}
		}

		"AchievementNotification"
		{
			"1"
			{
				"name"		"League Gothic" [!$OSX]
				"name"			"LeagueGothic-Regular" [$OSX]
				"tall"		"18"
				"weight"	"400"
				"antialias" "1"
			}
		}

//////////////////////// PUZZLEMAKER /////////////////////////////

		"PuzzleMakerUISmall"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"16"
				"weight"	"400"
				"antialias" "1"
			}
		}

		"PuzzleMakerUISmallItalic"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"16"
				"weight"	"400"
				"italic"	"1"
				"antialias" "1"
			}
		}

		"PuzzleMakerUIMedium"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"20"
				"weight"	"400"
				"antialias" "1"
			}
		}

		"PuzzleMakerUIMenuBold"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"24"
				"weight"	"800"
				"antialias" "1"
			}
		}
					
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"4"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDisabledBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BgColor"
					"offset" "1 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDepressedBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}
		}

		ScrollBarButtonBorder	[0]
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		ButtonBorder	[0]
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}
		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "6 2"
				}
			}
		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderSelection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "BorderSelection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "BorderBright"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "BorderSelection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "BorderSelection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
			Left
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}
		}

		ComboBoxBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}
		}

		MenuBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}
		ASWBriefingButtonBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "LightBlue"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "LightBlue"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "LightBlue"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "LightBlue"
					"offset" "0 0"
				}
			}
		}
		ASWBriefingButtonBorderDisabled
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "GreyBlue"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "GreyBlue"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "GreyBlue"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "GreyBlue"
					"offset" "0 0"
				}
			}
		}
		ASWMapLabelBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "White"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "White"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "White"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "White"
					"offset" "0 0"
				}
			}
		}
	}

    CustomFontFiles
    {
		"4"		"vgui/fonts/consola.vfont"
		"7"		"vgui/fonts/leaguegothic.vfont"
		"8"		"vgui/fonts/pts55f.vfont"
    }
}
