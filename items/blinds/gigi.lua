SMODS.Blind {
    key = 'gigi',
    atlas = 'dwBlind',
    pos = {x = 0, y = 20},
    dollars = 5,
    mult = 2,
    boss = {min = 5},
    boss_colour = HEX("abf3fb"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.hand_drawn and (not context.first_hand_drawn) and G.consumeables.cards[1] then
                local _card = pseudorandom_element(G.consumeables.cards, 'dw_twisted_gigi')
                if _card then
                    SMODS.destroy_cards(_card)
                    shakeBlind()
                end
            end
        end
    end
}