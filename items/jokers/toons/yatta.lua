--ripped STRAIGHT from isotypical's junkyard..................
SMODS.Joker {
    key = 'yatta',
    rarity = 1,
    cost = 8,
    atlas = 'dw',
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_vars = function(self, info_queue, card)
        --return { vars = { localize('k_dw_yatta_quote_' .. pseudorandom("seed", 1, 4)) } }
    end,
    blueprint_compat = true,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = (function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card {
                                set = 'dw_item',
                                edition = 'e_negative'
                            }
                            SMODS.add_card {
                                set = 'dw_item',
                                edition = 'e_negative'
                            }
                            SMODS.add_card {
                                set = 'dw_item',
                                edition = 'e_negative'
                            }
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                    SMODS.calculate_effect({ message = localize('k_plus_tarot'), colour = G.C.PURPLE },
                        context.blueprint_card or card)
                    return true
                end)
            }))
            return nil, true
        end
    end
}