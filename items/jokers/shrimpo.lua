SMODS.Joker{
    key = "shrimpo",
    atlas = 'dwJoker',
    pos = { x = 0, y = 6},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {odds = 2, xblindsize_win=0.5,xblindsize_lose=2} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,
    calculate = function(self,card,context)
        if context.first_hand_drawn then
            if SMODS.pseudorandom_probability(card, 'dw_shrimpo', 1, card.ability.extra.odds) then
                return {
                    xblindsize = card.ability.extra.xblindsize_win
                }
            else
                return {
                    xblindsize = card.ability.extra.xblindsize_lose
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'dw_shrimpo')
        return { vars = {numerator, denominator, card.ability.extra.xblindsize_win,card.ability.extra.xblindsize_lose}, key = self.key }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'dw_shrimpo'
    end,
}