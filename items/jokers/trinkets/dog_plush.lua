SMODS.Joker{
    key = 'dog_plush',
    atlas = 'dwJoker',
    pos = { x = 9, y = 2},
    soul_pos=nil,
    rarity = 1,
    cost = 5,
    config = { extra = {chips = 50, mult = 6} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.joker_main then
            return SMODS.merge_effects({
                {
                    chips = card.ability.extra.chips
                },
                {
                    mult = card.ability.extra.mult
                }
            })
        end
    end,

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips, card.ability.extra.mult}}
    end
}