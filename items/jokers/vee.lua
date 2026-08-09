SMODS.Sound({
    key = 'vee',
    path = 'dw_vee.ogg',
    pitch = 1,
})

SMODS.Joker {
    key = 'vee',
    atlas = 'dwJoker',
    pos = { x = 9, y = 6 },
    soul_pos = nil,
    rarity = 'dw_main',
    cost = 20,
    config = { extra = { choice_mod = 1, size_mod = 2 } },
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = false,

    add_to_deck = function(self, card, from_debuff)
        if not G.GAME.modifiers.booster_choice_mod then
            G.GAME.modifiers.booster_choice_mod = 0
        end
        G.GAME.modifiers.booster_choice_mod = G.GAME.modifiers.booster_choice_mod + card.ability.extra.choice_mod

        if not G.GAME.modifiers.booster_size_mod then
            G.GAME.modifiers.booster_size_mod = 0
        end
        G.GAME.modifiers.booster_size_mod = G.GAME.modifiers.booster_size_mod + card.ability.extra.size_mod
    end,

    remove_from_deck = function(self, card, from_debuff)
        if not G.GAME.modifiers.booster_choice_mod then
            G.GAME.modifiers.booster_choice_mod = 0
        else
            G.GAME.modifiers.booster_choice_mod = G.GAME.modifiers.booster_choice_mod - card.ability.extra.choice_mod
        end

        if not G.GAME.modifiers.booster_size_mod then
            G.GAME.modifiers.booster_size_mod = 0
        else
            G.GAME.modifiers.booster_size_mod = G.GAME.modifiers.booster_size_mod - card.ability.extra.size_mod
        end
    end,
    calculate = function(self, card, context)
        if context.open_booster then
            return {
                message = localize('dw_vee_ability'),
                colour = G.C.GREEN,
                sound = 'dandy_vee'
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.choice_mod, card.ability.extra.size_mod }, key = self.key }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'dw_vee'
    end,
}
