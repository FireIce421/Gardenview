SMODS.Consumable {
    key = 'stealth_candy',
    set = 'item',
    config = { extra = { blind = 0.95 } },
    loc_vars = function(self, info_queue, card)
        return {
            card.ability.extra.blind
        }
    end,
    can_use = function(self, card)
        return (G.GAME.blind.in_blind)
    end,
    use = function(self, card, area, copier)
        local used_card = copier or card
        if G.GAME.blind.in_blind then
            G.E_MANAGER:add_event(Event({
      func = function()
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = "+Stealth", colour = G.C.GREEN})
                G.GAME.blind.chips = G.GAME.blind.chips * 0.95
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.HUD_blind:recalculate()
                return true
            end
                    }))
        delay(0.5)
        end
    end

}