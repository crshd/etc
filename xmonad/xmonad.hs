import XMonad
import qualified XMonad.StackSet as W

-- Hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops

-- Layouts
-- import XMonad.Layout.Fullscreen
import XMonad.Layout.Gaps
import XMonad.Layout.Named
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace
import XMonad.Layout.Spacing

-- Utils
import XMonad.Util.SpawnOnce

-- Non-Xmonad stuff
import qualified Data.Map        as M
import System.IO


main = do
  xmonad $ defaultConfig
           { terminal           = myTerminal
           , modMask            = mod4Mask
           , borderWidth        = myBorderWidth
           , keys               = myKeys
           , normalBorderColor  = myNormalBorderColor
           , focusedBorderColor = myFocusedBorderColor
           , manageHook         = myManageHook
           , handleEventHook    = ewmhDesktopsEventHook <+> fullscreenEventHook
           , layoutHook         = myLayout
           , startupHook        = myStartupHook
           , workspaces         = myWorkspaces
           }

-- Startup
myStartupHook = do
  spawnOnce "xsetroot -solid '#080808'"
  spawnOnce "bar.sh"


-- Applications
myTerminal           = "urxvt"
myMenu               = "bashrun2"
myEditor             = "emacs"
myBrowser            = "firefox-bin"

-- Stuff
myFocusFollowsMouse  = False
myWorkspaces         = ["WON", "TOO", "TREE", "FOR"]
myBorderWidth        = 1
myNormalBorderColor  = "#202020"
myFocusedBorderColor = "#404040"
-- myFocusedBorderColor = "#e84f4f"

-- Layout
myLayout = gaps [(U,17)] $ onWorkspace "II" myFull $ smartBorders (myLayouts)
           where
             myLayouts = myTall ||| myFull

             myTall = named "+" (spacing 1 $ Tall 1 (1/100) (1/2))
             myFull = named "*" Full

myKeys conf@(XConfig {XMonad.modMask = mod}) = M.fromList $
       [ ((mod,               xK_q),      kill)

       -- ========== --
       -- WM Control --
       -- ========== --

       , ((mod .|. shiftMask, xK_q),      spawn "xmonad --recompile; xmonad --restart")
       , ((mod,               xK_q),      kill)

       -- layouts
       , ((mod,               xK_space),  sendMessage NextLayout)
       , ((mod .|. shiftMask, xK_t),      sendMessage ToggleStruts)

       -- anti-layouts
       , ((mod,               xK_t),      withFocused $ windows . W.sink)

       -- focus
       , ((mod,               xK_Tab),    windows W.focusDown)
       , ((mod,               xK_j),      windows W.focusDown)
       , ((mod,               xK_k),      windows W.focusUp)
       , ((mod,               xK_m),      windows W.focusMaster)
         
       -- swapping
       , ((mod .|. shiftMask, xK_m),      windows W.swapMaster)
       , ((mod .|. shiftMask, xK_j),      windows W.swapDown)
       , ((mod .|. shiftMask, xK_k),      windows W.swapUp)

       -- master area
       , ((mod,               xK_comma),  sendMessage (IncMasterN (-1)))
       , ((mod,               xK_period), sendMessage (IncMasterN 1))

       -- resizing
       , ((mod,               xK_h),      sendMessage Shrink)
       , ((mod,               xK_l),      sendMessage Expand)

       -- ============ --
       -- Applications --
       -- ============ --

       -- launch stuff
       , ((mod,               xK_Return), spawn myTerminal)
       , ((mod,               xK_w),      spawn myMenu)
       , ((mod,               xK_b),      spawn myBrowser)
       , ((mod,               xK_e),      spawn myEditor)

       -- ========== --
       -- Media Keys --
       -- ========== --

       , ((0,                0x1008FF11), spawn "amixer set Master 2-")
       , ((0,                0x1008FF13), spawn "amixer set Master 2+")
       , ((0,                0x1008FF12), spawn "amixer set Master toggle")
       , ((0,                0x1008FF14), spawn "mpc toggle")
       , ((0,                0x1008FF15), spawn "mpc stop")
       , ((0,                0x1008FF16), spawn "mpc prev")
       , ((0,                0x1008FF17), spawn "mpc next")
       ]
       ++
       -- switch workspaces
       [((m .|. mod, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) ([xK_1 .. xK_9] ++ [xK_0])
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]

myManageHook = composeAll
               [ resource  =? "bashrun2-run-dialog" --> doFloat
               , className =? "Xmessage"            --> doFloat
               , resource  =? "VCLSalFrame"         --> doFloat
               ]
               <+>
               composeOne [ isFullscreen -?> doFullFloat ]
