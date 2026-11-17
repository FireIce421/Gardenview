SMODS.Joker {
    key = 'dyle',
    rarity = 'dw_lethal',
    atlas = 'dwJoker',
    pos = { x = 9, y = 7 },
    cost = 40,
    config = {
        extra = {
            xmult = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.xmult = card.ability.extra.xmult + 0.5
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}
