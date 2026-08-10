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

SMODS.Joker {
    key = 'tw_shelly',
    cost = 32,
    rarity = 'dw_twisted_legendary',
    config = {},
    atlas = 'dw',
    pos = {x=8,y=0},
    calculate = function(self, card, context)
        if context.joker_main then
            G.GAME.chips = G.GAME.chips ^ 0.8
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips ^ 1.1)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
        if context.other_joker and context.other_joker.ability.set == "Joker" then --hmmm... this seems familiar.
            G.E_MANAGER:add_event(Event({
                func = function()
                    context.other_joker:juice_up(0.5, 0.5)
                    return true
                end,
            }))
            return {
                xmult = 2,
                xchips = 2
            }
        end
    end
}
