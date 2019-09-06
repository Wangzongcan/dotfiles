-- Init Window
hs.window.animationDuration = 0

-- Init Grid
hs.grid.setMargins({ 0, 0 })

local hyper = { 'ctrl', 'cmd' }

-- Window Sizing
hs.hotkey.bind({ 'alt', 'cmd' }, 'f', function() hs.grid.maximizeWindow() end)

hs.hotkey.bind({ 'alt', 'cmd' }, 'c', function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = (max.w - f.w) / 2
  f.y = (max.h - f.h) / 2
  win:setFrame(f)
end)

hs.hotkey.bind({ 'alt', 'cmd' }, 'Left', function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({ 'alt', 'cmd' }, 'Right', function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Input Method
local function Chinese()
   hs.keycodes.currentSourceID('com.apple.inputmethod.SCIM.ITABC')
end

local function English()
   hs.keycodes.currentSourceID('com.apple.keylayout.ABC')
end

local function updateFocusAppInputMethod(appName, setInputMethodFunction)
   wf = hs.window.filter
   wf.new(appName):subscribe(wf.windowFocused, setInputMethodFunction)
end

updateFocusAppInputMethod('Emacs', English)
updateFocusAppInputMethod('iTerm2', English)

-- Reloading
hs.hotkey.bind(hyper, 'R', function() hs.reload() end)
hs.alert.show('Config loaded')
