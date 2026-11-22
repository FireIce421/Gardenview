SMODS.Joker {
    key = 'eggson', -- I'M OLD!!!
    rarity = 1,
    cost = 2,
    config = { extra = { blind_amount = 0.1 } },
    atlas = 'dwJoker',
    pos = { x = 4, y = 7 },
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = G.GAME.blind.chips * card.ability.extra.blind_amount
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.blind_amount}}
    end,
}
