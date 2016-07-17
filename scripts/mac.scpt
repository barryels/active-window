#!/usr/bin/env osascript
global frontApp, frontAppName, windowTitle
set frontAppName to ""
set windowTitle to ""

tell application "System Events"
  set frontApp to first application process whose frontmost is true
  set frontAppName to name of frontApp

  if exists process "ScreenSaverEngine"
    set frontAppName to "device.Screensaver"
  else
    tell process frontAppName
      tell (first window whose value of attribute "AXMain" is true)
        set windowTitle to value of attribute "AXTitle"
      end tell
    end tell
  end if
end tell

return {frontAppName,windowTitle}
