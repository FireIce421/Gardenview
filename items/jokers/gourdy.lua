--[[
    Disable in weird mods like hotpot (nursery) and birthlatro
]]

SMODS.Sound ({
    key = 'gourdy_ability',
    path = 'dw_gourdy_ability.ogg',
    pitch = 1,
})

SMODS.Sound ({
    key = 'gourdy',
    path = 'dw_gourdy.ogg',
    pitch = 1,
})

SMODS.Joker {
    key = "gourdy",
    cost = 20,
    rarity = "dw_main",
    atlas = 'dw',
    pos = {x=0,y=1},
    soul_pos = {x=1,y=1},

    config = { extra = {chips = 25, mult = 5, x_mult = 1.25} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,

    calculate = function(self,card,context)
        if context.joker_main then
            local effects = {
                {
                    message = localize("dw_gourdy_ability"),
                    sound = "dandy_gourdy_ability",
                    colour = G.C.FILTER
                }
            }

            for _,v in ipairs(G.jokers.cards) do
                if v ~= card then
                    local vEffectType = pseudorandom('dw_gourdy', 1, 3)
                    local vEffect = {}

                    if vEffectType == 1 then
                        vEffect = {
                            x_mult = card.ability.extra.x_mult,
                            remove_default_message = true,
                            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.x_mult}},
                            sound = "dandy_gourdy",
                            colour = G.C.FILTER,
                            message_card = v
                        }
                    elseif vEffectType == 2 then
                        vEffect = {
                            mult = card.ability.extra.mult,
                            remove_default_message = true,
                            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.x_mult}},
                            sound = "dandy_gourdy",
                            colour = G.C.FILTER,
                            message_card = v
                        }
                    elseif vEffectType == 3 then
                        vEffect = {
                            chips = card.ability.extra.chips,
                            remove_default_message = true,
                            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.x_mult}},
                            sound = "dandy_gourdy",
                            colour = G.C.FILTER,
                            message_card = v
                        }
                    end
                    
                    effects[#effects+1] = vEffect
                end
            end

            return SMODS.merge_effects(effects)
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.x_mult}, key = self.key }
    end

    --[[
    calculate = function(self, card, context)
    G.C.gourd = HEX("aaff00")
    if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
        return {
            func = function()
                
                for i = 1, math.min(2, G.consumeables.config.card_limit - #G.consumeables.cards) do
                    G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        play_sound('timpani')
                        local sets = {'Tarot', 'Planet', 'Spectral', 'item', 'trinket', 'candy'}
                        local random_set = pseudorandom_element(sets, 'random_consumable_set')
                        SMODS.add_card({ set = random_set, })                            
                        card:juice_up(0.3, 0.5)
                        return true
                        end
                    }))
                end
                delay(0.6)
                
                if created_consumable then
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_gourdyspeak' .. pseudorandom("trickortreat", 1, 2)), colour = G.C.gourd})
                end
                return true
                end
            }
        end
    if context.end_of_round and context.game_over == false and context.main_eval  then
        return {
            func = function()
                
                for i = 1, math.min(1, G.consumeables.config.card_limit - #G.consumeables.cards) do
                    G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        play_sound('timpani')
                        local sets = {'Tarot', 'Planet', 'Spectral', 'item', 'trinket', 'candy'}
                        local random_set = pseudorandom_element(sets, 'random_consumable_set')
                        SMODS.add_card({ set = random_set, })                            
                        card:juice_up(0.3, 0.5)
                        return true
                        end
                    }))
                end
                delay(0.6)
                
                if created_consumable then
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_gourdyspeak' .. pseudorandom("trickortreat", 1, 2)), colour = G.C.gourd})
                end
                return true
                end
            }
        end
    end
    ]]
}
