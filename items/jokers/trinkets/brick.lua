SMODS.Joker {
    key = "brick",
    cost = 10,
    rarity = "dw_trinketjoker",
    atlas = "dwJoker",
    pos = {x=0,y=2},
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                xmult = 0.8,
                xchips = 0.8
            }
        end
    end
}