SMODS.Joker{
    key = 'alarm',
    atlas = 'dwJoker',
    pos = { x = 8, y = 0},
    soul_pos=nil,
    rarity = 1,
    cost = 2,
    config = { extra = {x_mult = 2} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.joker_main and context.cardarea == G.jokers then
            if G.GAME.blind.boss then
                return {
                    x_mult = card.ability.extra.x_mult, 
                    colour = G.C.MULT
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.x_mult}, key = self.key }
    end
}