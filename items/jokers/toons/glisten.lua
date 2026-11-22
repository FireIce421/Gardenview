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
    config = { extra = {x_mult = 1, x_mult_mod = 0.25} },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,

    calculate = function(self, card, context)
        if context.joker_main then
            local my_pos = nil
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] == card then
                    my_pos = i
                    break
                end
            end
            if my_pos and G.jokers.cards[my_pos + 1] then
                return {
                    x_mult = card.ability.extra.x_mult
                }
            else
                x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_mod
                return {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.MULT
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.x_mult, card.ability.extra.x_mult_mod}, key = self.key }
    end
}
