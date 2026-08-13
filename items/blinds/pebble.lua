SMODS.Sound ({
    key = 'twisted_pebble_1',
    path = 'dw_twisted_pebble_1.ogg',
    pitch = 1,
})

SMODS.Sound ({
    key = 'twisted_pebble_2',
    path = 'dw_twisted_pebble_2.ogg',
    pitch = 1,
})

SMODS.Blind {
    key = 'pebble',
    atlas = 'dwBlind',
    pos = {x = 0, y = 25},
    dollars = 5,
    mult = 2,
    boss = {showdown = true},
    boss_colour = HEX("575757"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.modify_hand then
                blind.triggered = true -- This won't trigger Matador in this context due to a Vanilla bug (a workaround is setting it in context.debuff_hand)
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        SMODS.juice_up_blind()
                        play_sound('dandy_twisted_pebble_1', 1, 0.8)
                        return true
                    end
                }))
                hand_chips = 1
                update_hand_text({modded = true }, {chips = hand_chips})
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        SMODS.juice_up_blind()
                        play_sound('dandy_twisted_pebble_2', 1, 0.8)
                        return true
                    end
                }))
                mult = 1
                update_hand_text({modded = true }, {mult = mult })
            end
        end
    end
}
