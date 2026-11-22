SMODS.Joker{
    key = 'peppermint_icing',
    atlas = 'dwJoker',
    pos = { x = 1, y = 9},
    soul_pos=nil,
    rarity = 1,
    cost = 2,
    config = { extra = {mult = 5} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    in_pool = function()
        return false
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card) then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult}, key = self.key }
    end
}