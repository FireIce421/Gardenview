SMODS.Joker {
    key = 'luckycoin',
    cost = 6,
    rarity = "dw_trinketjoker",
    atlas = 'dwJoker',
    pos = {x=2,y=3},
    calculate = function(self, card, context)
        if context.skip_blind then
            if SMODS.pseudorandom_probability(card, "dw_gigi", 1, 2) then
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    SMODS.add_card { set = 'Joker' }
                end
            else
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    SMODS.add_card { set = 'Consumeables', area = G.consumeables }
                end
            end
        end
    end
}