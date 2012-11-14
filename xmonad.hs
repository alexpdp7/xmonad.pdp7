import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders

-- apt-get install xmonad libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
 
main = xmonad defaultConfig
	{
		manageHook = manageDocks <+> manageHook defaultConfig,
		layoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig,
		modMask = mod4Mask,
		borderWidth = 2,
		focusFollowsMouse = False
	}
