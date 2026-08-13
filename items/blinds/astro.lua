SMODS.Sound ({
    key = 'twisted_astro',
    path = 'dw_twisted_astro.ogg',
    pitch = 1,
})

SMODS.Blind {
    key = 'astro',
    atlas = 'dwBlind',
    pos = {x = 0, y = 24},
    
         
    dollars = 5,
    mult = 2,
    boss = {showdown = true},
    boss_colour = HEX("575757"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.press_play and G.hand.cards[1] then
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        SMODS.juice_up_blind()
                        play_sound('dandy_twisted_astro', 1, 0.4)
                        return true
                    end
                }))
                G.E_MANAGER:add_event(Event({
                    func = function()     
                        local highlighted_limit_ref = G.hand.config.highlighted_limit
                        G.hand.config.highlighted_limit = 999
                        for _,v in ipairs(G.hand.cards) do
                            --v:highlight(true)
                            G.hand:add_to_highlighted(v, true)
                        end
                        G.hand.config.highlighted_limit = highlighted_limit_ref
                        G.FUNCS.discard_cards_from_highlighted(nil, true)
                        return true
                    end
                }))
                blind.triggered = true -- This won't trigger Matador in this context due to a Vanilla bug (a workaround is setting it in context.debuff_hand)
            end
        end
    end
}