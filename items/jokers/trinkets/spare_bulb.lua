SMODS.Joker{
    key = 'spare_bulb',
    atlas = 'dwJoker',
    pos = { x = 3, y = 2},
    soul_pos=nil,
    rarity = 1,
    cost = 6,
    config = { extra = {chips = 75} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.other_joker and (context.other_joker.config.center.rarity == 3 or context.other_joker.config.center.rarity == "Rare") then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips}}
    end
}