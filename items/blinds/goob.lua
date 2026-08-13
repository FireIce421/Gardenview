SMODS.Blind {
    key = 'goob',
    atlas = 'dwBlind',
    pos = {x = 0, y = 22},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 6},
    boss_colour = HEX("5f80eb"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_hand and not context.check then
                local _card = pseudorandom_element(G.play.cards, 'dw_twisted_goob')
                if _card then
                    SMODS.destroy_cards(_card)
                    shakeBlind()
                end
            end
        end
    end
}