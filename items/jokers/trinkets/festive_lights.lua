SMODS.Joker{
    key = 'festive_lights',
    atlas = 'dwJoker',
    pos = { x = 0, y = 9},
    soul_pos=nil,
    rarity = 2,
    cost = 5,
    config = { extra = {jokers = {"j_dw_rudie", "j_dw_ginger", "j_dw_coal", "j_dw_bobette"}} },
    blueprint_compat=false,
    eternal_compat=false,
    perishable_compat=false,
    unlocked = true,
    discovered = true,
    
    calculate = function(self,card,context)
        --if context.type == 'store_joker_create' then

        --end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            local chosen_joker = pseudorandom_element(card.ability.extra.jokers, "dw_festivelights")
            SMODS.add_card{key = chosen_joker}
            SMODS.destroy_cards(card, nil, nil, true)
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {
            --card.ability.extra.jokers[1],
        }, key = self.key }
    end
}
