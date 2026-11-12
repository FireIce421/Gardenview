--[[
    Disable in weird mods like hotpot (nursery) and birthlatro
]]

SMODS.Joker {
    key = "ipadkid",
    config = { extra = { odds = 8, repetitions = 8 } },
    atlas = 'dw',
    pos = { x = 0, y = 2 },
    soul_pos = { x = 1, y = 2 },
    rarity = 2,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_dw_toodles')
        return { vars = { card.ability.extra.repetitions, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if context.other_card:get_id() == 8 then
                if SMODS.pseudorandom_probability(card, 'group_0_4413d5fd', 1, card.ability.extra.odds, 'j_dw_toodles') then
                    return {
                        repetitions = card.ability.extra.repetitions,
                        message = localize('k_toodles_speak' .. pseudorandom("thehyperactivechild", 1, 6))
                    }
                end
            end
        end
    end
}