SMODS.Joker{
    key = "ribecca",
    atlas = 'dwJoker',
    pos = { x = 4, y = 9},
    soul_pos=nil,
    rarity = 1,
    cost = 5,
    config = { extra = {} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round then
            if context.other_card.debuff then
                return {
                    mult = context.other_card.base.nominal * 2
                }
            end
        end
    end,
    loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
        return { vars = {}, key = self.key }
    end
}