SMODS.Joker {
    key = 'eggson', -- aka I'M OLD!!!
    rarity = 4,
    cost = 30,
    atlas = 'dw',
    pos = { x = 8, y = 0 },
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = G.GAME.blind.chips / 10
            }
        end
    end
}
