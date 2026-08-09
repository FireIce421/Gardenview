SMODS.Sound({
    key = 'pebble',
    path = 'dw_pebble.ogg',
})

SMODS.Joker {
    key = "pebble",
    atlas = 'dwJoker',
    pos = { x = 5, y = 6 },
    soul_pos = nil,
    rarity = 'dw_main',
    cost = 20,
    config = { extra = { xblindsize = 0.5 } },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = false,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            return {
                xblindsize = card.ability.extra.xblindsize,
                remove_default_message = true,
                message = localize { type = 'variable', key = 'a_xblindsize', vars = { card.ability.extra.xblindsize } },
                sound = "dw_pebble",
                colour = G.C.TEXT_UI_DARK,
            }
        end
    end,
    check_for_unlock = function(self, args)
        return args.type == 'dw_pebble'
    end,
}
