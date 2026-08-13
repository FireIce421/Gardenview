SMODS.Joker {
    key = 'finn',
    cost = 7,
    rarity = 2,
    config = {
        extra = {
            dollars = 10
        }
    },
    atlas = 'dwJoker',
    pos = {x=0,y=5},

    blueprint_compat = true,

    calculate = function(self, card, context)
        if context.after and SMODS.calculate_round_score() >= G.GAME.blind.chips then -- Checks if hand is on fire
            return {
                dollars = card.ability.extra.dollars
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = {set = "Other", key = "dw_onfire" } -- Adds the popup
        return { vars = { card.ability.extra.dollars } }
    end,
}

SMODS.Joker {
    key = "barnaby",
    cost = 14,
    rarity = 3,
    atlas = 'dw',
    pos = {x=8,y=0},
    blueprint_compat = true,
    in_pool = function(self,args)
        return G.GAME.pool_flags.dw_barnaby_spawnable
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                emult = 1.05
            }
        end
    end
}
