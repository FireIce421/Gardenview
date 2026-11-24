SMODS.Joker{
    key = "soulvester",
    atlas = 'dwJoker',
    pos = { x = 5, y = 9},
    soul_pos=nil,
    rarity = 2,
    cost = 4,
    config = { extra = {hand_cost = 1} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval then
            if G.GAME.round_resets.hands - card.ability.extra.hand_cost >= 1 then
                G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hand_cost
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
                        SMODS.destroy_cards(card, nil, true)
                        return true
                    end
                }))
                return {
                    message = localize('k_saved_ex'),
                    saved = 'ph_dw_soulvester',
                    colour = G.C.RED
                }
            end
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand_cost}, key = self.key }
    end
}