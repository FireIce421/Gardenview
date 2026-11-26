SMODS.Joker {
    key = "blot",
    cost = 6,
    rarity = 3,
    config = { extra = { e_mult = 1.15 } },
    atlas = 'dwJoker',
    pos = { x = 4, y = 4},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.e_mult } }
    end,
    blueprint_compat = false,
    in_pool = function(self, args)
        return false
    end,
    calculate = function(self, card, context)
        --[[
        if context.joker_main then
            return {
                e_mult = card.ability.extra.e_mult
            }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss and not context.blueprint then
            SMODS.add_card{ key = 'j_dw_blotjr' }
            return {
                message = localize("k_dw_blotyap"..pseudorandom("blotjr",1,2))
            }
        end
        ]]
    end
}

SMODS.Blind {
    key = 'blotjr',
    dollars = 5,
    mult = 2,
    boss = {min = 1},
    atlas = 'dwBlind_proto',
    pos = {x = 0, y = 2},
    boss_colour = HEX("2b2b2b"),
    in_pool = function(self, args)
        return false
    end,
}