local ShowTaskbar   = 1
local ShowPBTaskbar = 1
local ShowCursor    = 1
local ShowMessages  = 1

-- Message helpers
function HideMessages()
    if ShowMessages == 1 then
        message_hide()
        ShowMessages = 0
    end
end

function ShowMessagesFunc()
    if ShowMessages == 0 then
        message_show()
        ShowMessages = 1
    end
end

-- Toggle standard taskbar
function ToggleTaskbar()
    ShowTaskbar = 1 - ShowTaskbar

    if ShowTaskbar == 1 then
        taskbar_show()
        ShowMessagesFunc()
    else
        taskbar_hide()
        HideMessages()
    end
end

-- Flash tactical map to force frontend refresh
function FlashTacticalMap()
    local TacMapShown = UI_IsTacticalMapShown()
    if not TacMapShown then
        UI_ShowTacticalMap()
        UI_HideTacticalMap()
    end
end

-- Toggle playback taskbar
function TogglePlaybackTaskbar()
    ShowPBTaskbar = 1 - ShowPBTaskbar

    if ShowPBTaskbar == 1 then
        game_showui()
        Scar_DoString([[UI_BindingSetEnabled("playback", true)]])
        ShowMessagesFunc()
        FlashTacticalMap()
    else
        game_hideui()
        Scar_DoString([[UI_BindingSetEnabled("playback", false)]])
        HideMessages()
    end
end

-- Toggle cursor
function ToggleCursor()
    ShowCursor = 1 - ShowCursor

    if ShowCursor == 1 then
        cursor_show()
    else
        cursor_hide()
    end
end

-- Bind keys
bind("Shift+F2", "ToggleTaskbar()")
bind("F9", "TogglePlaybackTaskbar()")
bind("F11", "ToggleCursor()")