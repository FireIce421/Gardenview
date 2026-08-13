
SMODS.Blind {
    key = 'scraps',
    atlas = 'dwBlind',
    pos = {x = 0, y = 23},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 6},
    boss_colour = HEX("cfb595"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_hand and not context.check then
                local _card = pseudorandom_element(G.hand.cards, 'dw_twisted_goob')
                if _card then
                    SMODS.destroy_cards(_card)
                    shakeBlind()
                end
            end
        end
    end
}