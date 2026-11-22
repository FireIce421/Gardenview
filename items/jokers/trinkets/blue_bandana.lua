SMODS.Joker{
    key = 'blue_bandana',
    atlas = 'dwJoker',
    pos = { x = 5, y = 1},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {chips = 20}},
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips * #context.full_hand
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips}}
    end,
}