SMODS.Consumable {
    key = 'speed_candy',
    set = 'item',
    config = { extra = { dollars = 4 } },
    loc_vars = function(self, info_queue, card)
        return {
            card.ability.extra.dollars
        }
    end,
    can_use = function(self, card)
        return true
    end,
    cost = 3,
    use = function(self, card, area, copier)
        local used_card = copier or card
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "+"..tostring(15).." $", colour = G.C.MONEY})
                    ease_dollars(card.ability.extra.dollars)
                    return true
                end
            }))
            delay(0.6)
        end,
}