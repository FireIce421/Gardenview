SMODS.Blind {
    key = 'poppy',
    atlas = 'dwBlind',
    pos = {x = 0, y = 7},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 1},
    boss_colour = HEX("31b1cd"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.dw_worthless_card then
                if context.dw_worthless_card:is_suit('Spades') or context.dw_worthless_card:is_suit('Clubs') then
                    return {
                        worthless = true
                    }
                end
            end
        end
    end,
}