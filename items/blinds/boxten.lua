SMODS.Blind {
    key = 'boxten',
    atlas = 'dwBlind',
    pos = {x = 0, y = 3},
    dollars = 5,
    mult = 2,
    boss = {min = 1},
    boss_colour = HEX("a84dbe"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.dw_worthless_card then
                if context.dw_worthless_card:is_suit('Hearts') or context.dw_worthless_card:is_suit('Diamonds') then
                    return {
                        worthless = true
                    }
                end
            end
        end
    end,
}