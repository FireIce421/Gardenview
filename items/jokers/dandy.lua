SMODS.Joker {
    key = 'dandy',
    rarity = 'dw_lethal',
    cost = 40,
    rarity = 4,
    config = {
        extra = {
            xmult = 1,
            noitem = true,
            anger = 0,
            lockedin = false
        }
    },
    atlas = 'dw',
    pos = {x=2,y=2},
    soul_pos = {x=3,y=2},
    blueprint_compat = true,
    update = function(self, card, dt)
        if card.ability.extra.anger >= 2 then
            card.children.floating_sprite:set_sprite_pos { x = 5, y = 2 }
            card.children.center:set_sprite_pos { x = 4, y = 2 }
        elseif card.ability.extra.anger >= 3 then
            card.children.floating_sprite:set_sprite_pos { x = 5, y = 1 }
            card.children.center:set_sprite_pos { x = 4, y = 1 }
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.xmult, card.ability.extra.anger },
            key = G.PROFILES[G.SETTINGS.profile].encountered_tw_dandy == true and "j_dw_dandy_post_encounter"
                or G.PROFILES[G.SETTINGS.profile].encountered_tw_dandy == false and "j_dw_dandy_pre_encounter" 
                or G.PROFILES[G.SETTINGS.profile].encountered_tw_dandy == nil and "j_dw_dandy_pre_encounter"
        }
    end,
    calculate = function(self, card, context)
        if context.buying_card and not context.blueprint then
            card.ability.extra.noitem = false
            card.ability.extra.xmult = card.ability.extra.xmult + 0.5
            return {
                message = localize("k_dw_dandy_buy_" .. pseudorandom("dandybuy", 1, 6))
                    or card.ability.extra.anger > 2 and
                    localize("k_dw_dandy_stage3_buy_" .. pseudorandom("stage3dandybuy", 1, 6))
            }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss and not context.blueprint then
            card.ability.extra.noitem = true
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss and card.ability.extra.lockedin == true and not context.blueprint then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 1,
                func = function()
                    SMODS.destroy_cards(G.jokers.cards)
                    return true
                end
            }))
            if next(SMODS.find_card("j_dw_astro")) then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 1,
                    func = function()
                        SMODS.add_card { key = 'j_dw_tw_dandy' }
                        SMODS.add_card { key = 'j_dw_twistedastro' }
                        return true
                    end
                }))
                G.PROFILES[G.SETTINGS.profile].encountered_tw_dandy = true
            else
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 1,
                    func = function()
                        SMODS.add_card { key = 'j_dw_tw_dandy' }
                        return true
                    end
                }))
                G.PROFILES[G.SETTINGS.profile].encountered_tw_dandy = true
            end
        end
        if context.ending_shop and card.ability.extra.noitem == true and not context.blueprint then
            card.ability.extra.anger = card.ability.extra.anger + 1
            if card.ability.extra.anger == 1 then
                return {
                    message = localize("k_dw_dandy_stage1_" .. pseudorandom("stage1", 1, 4))
                }
            elseif card.ability.extra.anger == 2 then
                return {
                    message = localize("k_dw_dandy_stage2_" .. pseudorandom("stage2", 1, 6))
                }
            elseif card.ability.extra.anger >= 3 then
                card.ability.extra.lockedin = true
                card.ability.extra.ante_noitem = true
                return {
                    message = localize("k_dw_dandy_stage3_" .. pseudorandom("stage3", 1, 6))
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'tw_dandy',
    cost = 10,
    rarity = 'dw_twisted_lethal',
    config = {
        extra = {
            xmult = 1,
            wake_up_its_talisman_check_time = 0.05
        },
    },
    atlas = 'dw',
    pos = { x = 8, y = 0 },
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.wake_up_its_talisman_check_time * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) + 1 } }
    end,
    calculate = function(self, card, context)
        if context.buying_card and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + 1
            return { message = "X" .. tostring(card.ability.extra.xmult) .. " Mult" }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult,
                emult = card.ability.extra.wake_up_its_talisman_check_time *
                    math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) + 1
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss and not context.blueprint then
            G.GAME.dollars = G.GAME.dollars / 2
        end
    end
}
