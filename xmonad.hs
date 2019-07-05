import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName
import XMonad.Config.Desktop

-- apt-get install xmonad libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
 
main = xmonad desktopConfig
	{
		manageHook = manageDocks <+> manageHook defaultConfig,
		layoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig,
		modMask = mod4Mask,
		borderWidth = 2,
		clickJustFocuses = False,
		startupHook = setWMName "LG3D",
		focusFollowsMouse = False
	}
