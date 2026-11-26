SMODS.Joker{
    key = 'bone',
    atlas = 'dwJoker',
    pos = { x = 6, y = 3},
    soul_pos=nil,
    rarity = 3,
    cost = 2,
    config = { extra = {mult = 7} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.other_joker and (context.other_joker.config.center.rarity == 1 or context.other_joker.config.center.rarity == "Common") then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult}}
    end
}