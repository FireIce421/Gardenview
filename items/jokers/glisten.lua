-- IDEA:
-- X1 Mult if there is a joker to the right.
-- Otherwise, gains X0.25 Mult
SMODS.Joker {
    key = 'glisten',
    atlas = 'dwJoker',
    pos = { x = 3, y = 5 },
    soul_pos = nil,
    rarity = 1,
    cost = 2,
    config = { extra = {} },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    in_pool = function()
        return false
    end,
    calculate = function(self, card, context)
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {}, key = self.key }
    end
}
