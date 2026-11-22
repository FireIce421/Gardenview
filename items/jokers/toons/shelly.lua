SMODS.Sound ({
    key = 'shelly',
    path = 'dw_shelly.ogg',
    pitch = 1,
})

SMODS.Joker {
    key = 'shelly',
    rarity = 'dw_main',
    cost = 20,
    config = {
        extra = {
            xblindsize = 0.9
        }
    },
    atlas = 'dwJoker',
    pos = { x = 8, y = 6 },
    -- TODO: Make the animation better.
    calculate = function(self, card, context)
        if context.setting_blind then
            local amount = card.ability.extra.xblindsize ^ #G.jokers.cards
            return {
                xblindsize = amount,
                remove_default_message = true,
                message = localize { type = 'variable', key = 'a_xblindsize', vars = {amount} },
                sound = "dw_shelly",
                colour = G.C.FILTER,
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.xblindsize}}
    end,
}
