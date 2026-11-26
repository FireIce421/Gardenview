SMODS.Consumable {
    key = 'extraction_speed_candy',
    set = 'item',
    can_use = function(self, card)
        return true
    end,
    loc_vars = function(self, info_queue, card)
        -- Add tooltips by appending to info_queue
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    end,
    use = function(self, card, area, copier)
        local used_card = copier or card
            for i = 1, 2 do
            G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
            if G.consumeables.config.card_limit > #G.consumeables.cards + G.GAME.consumeable_buffer then
              G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            end

  
            play_sound('timpani')
            SMODS.add_card({ set = 'Tarot', edition = 'e_negative', })                            
            used_card:juice_up(0.3, 0.5)
            return true
        end
        }))
    end
    delay(0.6)
        if created_consumable then
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
        end
        return true
    end
}