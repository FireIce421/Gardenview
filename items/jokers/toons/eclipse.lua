SMODS.Joker {
    key = "eclipse",
    rarity = 3,
    cost = 8,
    atlas = 'dwJoker',
    pos = { x = 6, y = 9 }, --nice
    config = {
        extra = {
            odds_boss = 8,
            odds_showdown = 4
        }
    },
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        local numerator_1, denominator_1 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_boss,
            'j_dw_eclipse')
        local numerator_2, denominator_2 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_showdown,
            'j_dw_eclipse')
        return { vars = { numerator_1, denominator_1, numerator_2, denominator_2 } }
    end,

    calculate = function(self, card, context)
        if context.setting_blind then
            if G.GAME.blind and G.GAME.blind.boss then
                if SMODS.pseudorandom_probability(card, 'eclipse_boss', 1, card.ability.extra.odds_boss, 'j_dw_eclipse') then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    G.GAME.blind:disable()
                                    play_sound('timpani')
                                    delay(0.4)
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "Disabled!" }, card)
                            return true
                        end
                    }))
                    return nil, true
                end
            end
            if G.GAME.blind and G.GAME.blind.boss and G.GAME.blind.config.blind.boss.showdown then
                if SMODS.pseudorandom_probability(card, 'eclipse_showdown', 1, card.ability.extra.odds_showdown, 'j_dw_eclipse') then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    G.GAME.blind:disable()
                                    play_sound('timpani')
                                    delay(0.4)
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = "Disabled!" }, card)
                            return true
                        end
                    }))
                    return nil, true
                end
            end
            if G.GAME.blind and G.GAME.blind.name == 'blackout' then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                G.GAME.blind:disable()
                                play_sound('timpani')
                                delay(0.4)
                                return true
                            end
                        }))
                        SMODS.calculate_effect({ message = "AWOOO!!" }, card)
                        return true
                    end
                }))
                return nil, true
            end
        end
    end
}
