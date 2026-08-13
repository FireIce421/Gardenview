function shakeBlind(self)
    G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = (function()
            SMODS.juice_up_blind()
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.06 * G.SETTINGS.GAMESPEED,
                blockable = false,
                blocking = false,
                func = function()
                    play_sound('tarot2', 0.76, 0.4)
                    return true
                end
            }))
            play_sound('tarot2', 1, 0.4)
            return true
        end)
    }))
end