SMODS.Sound ({
    key = 'twisted_vee',
    path = 'dw_twisted_vee.ogg',
    pitch = 1,
})

SMODS.Blind {
    key = 'vee',
    atlas = 'dwBlind',
    pos = {x = 0, y = 28},
    
         
    dollars = 5,
    mult = 2,
    boss = {showdown = true},
    boss_colour = HEX("575757"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.stay_flipped and context.to_area == G.hand then
                return {
                    stay_flipped = true
                }
            end
            if context.hand_drawn and not context.first_hand_drawn then
                for i=1, 3 do
                    local delay_time = 0.3
                    if i == 1 then
                        delay_time = 0
                    end
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = delay_time * G.SETTINGS.GAMESPEED,
                        func = function()
                            local _cards = {}
                            for _,v in ipairs(G.hand.cards) do
                                if v.facing == 'back' then
                                    _cards[#_cards+1] = v
                                end
                            end

                            local chosen_card = pseudorandom_element(_cards, 'dw_twisted_vee')
                            if chosen_card then
                                chosen_card:flip()
                                play_sound('dandy_twisted_vee', 1, 0.4)
                                SMODS.juice_up_blind()
                            end
                            return true
                        end,
                    }))
                end
            end
        end
    end
}