SMODS.Blind {
    key = 'toodles',
    atlas = 'dwBlind',
    pos = {x = 0, y = 17},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 4},
    boss_colour = HEX("c6e0eb"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.setting_blind then
                blind.hands_sub = math.max(math.floor(G.GAME.round_resets.hands * 0.5), 1)
                ease_hands_played(-blind.hands_sub)
            end
        end
    end,
    disable = function(self)
        ease_hands_played(G.GAME.blind.hands_sub)
    end,
}