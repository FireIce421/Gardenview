SMODS.Sound ({
    key = 'target',
    path = 'dw_target.ogg',
    pitch = 1,
})

SMODS.Blind {
    key = 'squirm',
    atlas = 'dwBlind',
    pos = {x = 0, y = 41},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 6},
    boss_colour = HEX("575757"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.dw_target_card then
                if context.dw_target_card.dw_squirm_target then
                    return {
                        target = true
                    }
                end
            end
            if context.setting_blind then  
                local jokers = {}
                for _,v in ipairs(G.jokers.cards) do
                    if not SMODS.is_eternal(v, blind) and not v.getting_sliced then
                        jokers[#jokers+1] = v
                    end
                end
                local joker_target = pseudorandom_element(jokers, 'dw_twisted_squirm')
                if joker_target then
                    joker_target.dw_squirm_target = true
                    G.E_MANAGER:add_event(Event({
                        trigger = 'immediate',
                        func = function()
                            play_sound('dandy_target', 1, 0.4)
                            return true
                        end
                    }))
                    joker_target:juice_up()
                    
                    recalc_dw_target(card)
                else
                    G.E_MANAGER:add_event(Event({
                        trigger = 'immediate',
                        func = function()
                            blind:disable()
                            return true
                        end
                    }))
                end
            end
            if context.after and SMODS.calculate_round_score() >= get_blind_amount(G.GAME.round_resets.ante) then
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        blind:disable()
                        return true
                    end
                }))
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                for _,v in ipairs(G.jokers.cards) do
                    if v.dw_squirm_target then
                        SMODS.destroy_cards(v)
                    end
                end
            end
        end
    end,
    disable = function(self)
        for _,v in ipairs(G.jokers.cards) do
            v.dw_squirm_target = nil
            recalc_dw_target(card)
        end
    end,
    
    defeat = function(self)
        for _,v in ipairs(G.jokers.cards) do
            if v.dw_squirm_target then
                v.dw_squirm_target = nil
                recalc_dw_target(card)
            end
        end
    end,
    loc_vars = function(self)
        return { vars = {get_blind_amount(G.GAME.round_resets.ante)} }
    end,
    collection_loc_vars = function(self)
        return { vars = {localize('dw_twisted_squirm_collection')} }
    end,
}