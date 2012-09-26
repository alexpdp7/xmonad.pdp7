import XMonad
import XMonad.Hooks.ManageDocks

-- apt-get install xmonad libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
 
main = xmonad defaultConfig
	{
		manageHook = manageDocks <+> manageHook defaultConfig,
		layoutHook = avoidStruts  $  layoutHook defaultConfig,
		modMask = mod4Mask,
		borderWidth = 2,
		focusFollowsMouse = False
	}
