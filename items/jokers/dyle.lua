SMODS.Joker {
    key = 'dyle',
    rarity = 'dw_lethal',
    cost = 40,
    rarity = 4,
    config = {
        extra = {
            xmult = 1
        }
    },
    atlas = 'dw',
    pos = {x=8,y=0},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.xmult = card.ability.extra.xmult + 0.5
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'tw_dyle',
    cost = 30,
    rarity = 'dw_twisted_lethal',
    config = {
        extra = {
            xmult = 1
        }
    },
    atlas = 'dw',
    pos = {x=8,y=0},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.xmult = card.ability.extra.xmult + 2
        end
        -- if context.end_of_round and context.game_over == false then
        --     card.ability.extra.xmult = card.ability.extra.xmult + 1
        -- end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.after and SMODS.last_hand_oneshot then
            card.ability.extra.xmult = card.ability.extra.xmult ^ 1.1
            return true
        end
    end
}

SMODS.Joker {
    key = 'tw_dyle_bl',
    cost = -1,
    rarity = 'dw_detrimental',
}
