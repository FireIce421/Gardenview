SMODS.Joker{
    key = "research_map",
    atlas = 'dwJoker',
    pos = { x = 2, y = 0},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {dollars = 3} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.skip_blind then
            return {
                dollars = card.ability.extra.dollars
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.dollars}, key = self.key }
    end
}