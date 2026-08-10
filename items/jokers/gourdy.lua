--[[
    Disable in weird mods like hotpot (nursery) and birthlatro
]]

SMODS.Joker {
    key = "gourdy",
    cost = 2,
    rarity = 1,
    atlas = 'dw',
    pos = {x=0,y=1},
    soul_pos = {x=1,y=1},
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
}
