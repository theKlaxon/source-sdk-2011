# source-sdk-2011
A version of Source SDK built for the Portal 2 engine.

This SDK is, at the moment, very unstable. I am still working to correct some of the major issues.
Any contributions to this SDK are welcome, and encouraged. The issues in the TODO list below are 
my top priority at the moment.

@TODO<br>
	- The particles library does not function properly, particles do not show in game.<br>
	- ~vgui_controls is curreently broken. Theres is an older (working) version included in lib/public for<br>
	  use while other issues are being fixed. (since the issue with vgui breaks all menus + the console)~<br>
	- the console does not work while in-game (should be fixed by fixing vgui)<br>
	- ~Release builds will crash. (build only in debug for now)~<br>
	- env_projectedtexture does not produce shadows, even with the setting turned on in hammer.<br>
	- model shadow render textures appear to not be working correctly.<br>
	- the "disconnect" command will crash the game if used a second time.<br>

@Notice

	- This SDK is not a portal 2 leak. I simply adapted Alien Swarm's SDK to work with the portal 2 engine.
	  Most of Alien Swarm's original game code has been removed from this SDK in order to create a suitable
	  template for modders. VPC will be updated soon, as the one included in this version is out of date 
	  for the project files i have now.
	- This SDK is still in early development, and I will be working as fast as i can to fix these issues. 
	  If there are any more bugs discovered, please create an issue post and i will add it to my TODO list.
