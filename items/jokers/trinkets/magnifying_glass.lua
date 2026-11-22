SMODS.Joker{
    key = 'magnifying_glass',
    atlas = 'dwJoker',
    pos = { x = 7, y = 2},
    soul_pos=nil,
    rarity = 1,
    cost = 7,
    config = { extra = {odds = 2} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    in_pool = function()
        return false
    end,
    calculate = function(self,card,context)
        if context.end_of_round and context.game_over == false and context.main_eval and SMODS.pseudorandom_probability(card, 'dw_mag', 1, card.ability.extra.odds) then
            return {
                level_up = G.GAME.last_hand_played,
                message = localize('k_level_up_ex')
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'dw_shrimpo')
        return { vars = {numerator, denominator}, key = self.key }
    end
}