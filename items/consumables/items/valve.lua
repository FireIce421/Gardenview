SMODS.Consumable {
    key = 'valve',
    set = 'item',
    can_use = function(self, card)
        return true
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            blocking = false,
            func = function()
                if G.STATE == G.STATES.SELECTING_HAND then
                    G.GAME.chips = G.GAME.blind.chips
                    G.STATE = G.STATES.HAND_PLAYED
                    G.STATE_COMPLETE = true
                    end_round()
                    return true
                end
            end
        }))
    end
}
