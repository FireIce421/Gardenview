SMODS.Joker{
    key = 'pull_toy',
    atlas = 'dwJoker',
    pos = { x = 0, y = 1},
    soul_pos=nil,
    rarity = 2,
    cost = 6,
    config = { extra = {x_mult = 3} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)              --define calculate functions here
        if context.joker_main and context.cardarea == G.jokers then
            if G.GAME.current_round.hands_played == 0 then
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