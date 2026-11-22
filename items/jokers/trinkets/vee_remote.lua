SMODS.Joker{
    key = 'vee_remote',
    atlas = 'dwJoker',
    pos = { x = 0, y = 4},
    soul_pos=nil,
    rarity = 3,
    cost = 7,
    config = { extra = {x_mult = 4} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)              --define calculate functions here
        if context.joker_main and context.cardarea == G.jokers then
            if not G.GAME.blind.boss then
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