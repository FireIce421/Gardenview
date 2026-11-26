SMODS.Joker{
    key = "bone_needle_and_thread",
    atlas = 'dwJoker',
    pos = { x = 0, y = 8},
    soul_pos=nil,
    rarity = 1,
    cost = 5,
    config = { extra = {jokers = {"j_dw_ribecca", "j_dw_soulvester", "j_dw_eclipse", "j_dw_gourdy"}} },
    blueprint_compat=false,
    eternal_compat=false,
    perishable_compat=false,
    unlocked = true,
    discovered = true,
    
    calculate = function(self,card,context)
        --if context.type == 'store_joker_create' then

        --end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            local chosen_joker = pseudorandom_element(card.ability.extra.jokers, "dw_BNAT")
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