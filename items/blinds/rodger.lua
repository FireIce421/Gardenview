SMODS.Blind {
    key = 'rodger',
    atlas = 'dwBlind',
    pos = {x = 0, y = 15},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 3},
    boss_colour = HEX("9792dd"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.setting_blind or context.after then
                local _poker_hands = {}
                for handname, _ in pairs(G.GAME.hands) do
                    if SMODS.is_poker_hand_visible(handname) and handname ~= blind.hand then
                        _poker_hands[#_poker_hands + 1] = handname
                    end
                end
                blind.hand = pseudorandom_element(_poker_hands, 'dandy_rodgerhand')
            end
            if context.debuff_hand then
                if blind.hand and blind.hand == context.scoring_name then
                    blind.triggered = true
                    return {
                        debuff = true
                    }
                end
            end
        end
    end,
}