SMODS.Joker{
    key = 'star_pillow',
    atlas = 'dwJoker',
    pos = { x = 7, y = 3},
    soul_pos=nil,
    rarity = 3,
    cost = 2,
    config = { extra = {} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    in_pool = function()
        return false
    end,
    calculate = function(self,card,context)
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {}, key = self.key }
    end
}