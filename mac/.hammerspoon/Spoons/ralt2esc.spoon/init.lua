--- remap short ralt press to escape

local obj = {}
obj.__index = obj

function obj:init()
    self.sendEsc = false
    self.lastMods = {}

    self.holdTimer = hs.timer.delayed.new(0.15, function()
        -- key's held pressed for long enough. no need to send escape
        self.sendEsc = false
    end)

    self.raltTap = hs.eventtap.new({ hs.eventtap.event.types.flagsChanged }, function(ev)
        -- only react to "right option/alt" events
        if ev:getKeyCode() ~= 61 then
            return false
        end

        local newMods = ev:getFlags()
        -- alt state hasn't changed
        if self.lastMods["alt"] == newMods["alt"] then
            return false
        end

        if not self.lastMods["alt"] then
            self.lastMods = newMods

            -- alt is pressed. start hold timer
            self.sendEsc = true
            self.holdTimer:start()
        else
            self.lastMods = newMods

            -- alt is released. send escape if deemed necessary
            self.holdTimer:stop()
            if self.sendEsc then
                return true,
                    {
                        hs.eventtap.event.newKeyEvent({}, "escape", true),
                        hs.eventtap.event.newKeyEvent({}, "escape", false),
                    }
            end
        end

        return false
    end)

    self.otherKeyTap = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function()
        -- do not send escape if any other non-modifier key was pressed
        self.sendEsc = false
        return false
    end)
end

function obj:start()
    self.raltTap:start()
    self.otherKeyTap:start()
end

function obj:stop()
    self.raltTap:stop()
    self.otherKeyTap:stop()

    self.holdTimer:stop()
    self.sendEsc = false
    self.lastMods = {}
end

return obj
