SMODS.Sound ({
    key = 'astro',
    path = 'dw_astro.ogg',
    pitch = 1,
})

SMODS.Joker { --why is there a robot cat trying to claw at me
    key = 'astro',
    rarity = 'dw_main',
    cost = 20,
    atlas = 'dw',
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = {
        extra = {
            hands = 0, hand_mod = 1, planets_used = 0, planet_requirement = 5
        }
    },
    blueprint_compat = false,
    perishable_compat = false,

    update = function(self, card, dt)
        if starspace_mod == false then
            card.children.floating_sprite:set_sprite_pos { x = 3, y = 1 }
        elseif starspace_mod == true then
            card.children.floating_sprite:set_sprite_pos { x = 6, y = 1 }
        end
    end,

    calculate = function(self, card, context)
        if not context.blueprint then
            if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
                card.ability.extra.planets_used = card.ability.extra.planets_used + 1

                if card.ability.extra.planets_used >= card.ability.extra.planet_requirement then
                    card.ability.extra.planets_used = 0
                    card.ability.extra.hands = card.ability.extra.hands + card.ability.extra.hand_mod
                    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hand_mod
                    ease_hands_played(card.ability.extra.hand_mod)
                    return {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.CHIPS,
                        sound = "dw_astro"
                    }
                else
                    return {
                        message = (card.ability.extra.planets_used .. '/' .. card.ability.extra.planet_requirement),
                        colour = G.C.CHIPS
                    }
                end
            end
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    end,

    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.hand_mod, 
                card.ability.extra.planet_requirement, 
                card.ability.extra.planets_used, 
                card.ability.extra.hands 
            }, 
            key = starspace_mod == false and "j_dw_astro" or starspace_mod == true and "j_dw_astro_stpc" 
        }
    end,

    check_for_unlock = function(self, args)
        return args.type == 'dw_astro'
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = {3}}
    end
}

SMODS.Joker {
    key = 'twistedastro',
    rarity = 'dw_twisted_lethal',
    cost = 30,
    atlas = 'dw',
    pos = { x = 2, y = 1 },
    soul_pos = { x = 3, y = 1 },
    config = {
        extra = {
            multi = 1
        }
    },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        local planets_used = 0
        for k, v in pairs(G.GAME.consumeable_usage) do if v.set == 'Planet' then planets_used = planets_used + 1 end end
        return {
            vars = { card.ability.extra.multi, (planets_used + 1) },
            key = starspace_mod == false and "j_dw_twistedastro" or starspace_mod == true and "j_dw_twistedastro_stpc"
        }
    end,
    calculate = function(self, card, context)
        if starspace_mod == false then
            if context.setting_blind then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local planets_used = 0
                        for k, v in pairs(G.GAME.consumeable_usage) do
                            if v.set == 'Planet' then planets_used = planets_used + 1 end
                        end
                        ease_discard(G.GAME.current_round.discards_left * (planets_used + 1))
                        ease_hands_played(G.GAME.current_round.hands_left * (planets_used + 1))
                        SMODS.calculate_effect(
                            { message = '+X' .. tostring(planets_used + 1) .. ' Hands & Discards' },
                            context.blueprint_card or card)
                        return true
                    end
                }))
            end
        end
        if starspace_mod == true then
            if context.joker_main then
                local planets_used = 0
                for k, v in pairs(G.GAME.consumeable_usage) do
                    if v.set == 'Planet' then planets_used = planets_used + 1 end
                end
                return {
                    eechips = planets_used + 1
                }
            end
        end
    end
}
