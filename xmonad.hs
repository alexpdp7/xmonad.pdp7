import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName

-- apt-get install xmonad libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
 
main = xmonad defaultConfig
	{
		manageHook = manageDocks <+> manageHook defaultConfig,
		layoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig,
		modMask = mod4Mask,
		borderWidth = 2,
		clickJustFocuses = False,
		focusFollowsMouse = False,
		startupHook = setWMName "LG3D"
	}
