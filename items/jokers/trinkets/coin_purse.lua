SMODS.Joker{
    key = 'coin_purse',
    atlas = 'dwJoker',
    pos = { x = 1, y = 0},
    soul_pos=nil,
    rarity = 1,
    cost = 2,
    config = { extra = {chips = 30} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)              --define calculate functions here
        if context.joker_main and context.cardarea == G.jokers then
            return {
                chips = card.ability.extra.chips,
            }
        end
    end,

    loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
        return { vars = {card.ability.extra.chips}, key = self.key }
    end
}