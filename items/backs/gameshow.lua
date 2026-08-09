SMODS.Scoring_Parameter({
    key = 'vee',
    default_value = 1,
    colour = HEX("b4f2b6"),
    calculation_keys = { 'vee', 'xvee' },
    calc_effect = function(self, effect, scored_card, key, amount, from_edition)
        if not SMODS.Calculation_Controls.chips then return end
        if key == 'vee' and amount then
            if effect.card and effect.card ~= scored_card then vee_card(effect.card) end
            self:modify(amount)
            card_eval_status_text(scored_card, 'extra', nil, percent, nil,
                {
                    message = localize { type = 'variable', key = amount > 0 and 'a_chips' or 'a_chips_minus', vars = { amount } },
                    colour =
                        self.colour
                })
            return true
        end
        if key == 'xvee' and amount then
            if effect.card and effect.card ~= scored_card then vee_card(effect.card) end
            self:modify(self.current * (amount - 1))
            card_eval_status_text(scored_card, 'extra', nil, percent, nil,
                {
                    message = localize { type = 'variable', key = amount > 0 and 'a_chips' or 'a_chips_minus', vars = { 'X' .. amount } },
                    colour =
                        self.colour
                })
            return true
        end
    end
})

SMODS.Scoring_Calculation({
    key = "vee",
    func = function(self, chips, mult, flames)
        return (chips * mult) ^ SMODS.get_scoring_parameter('dw_vee', flames)
    end,
    parameters = { 'chips', 'mult', SMODS.current_mod.prefix .. '_vee' },
    replace_ui = function(self)
        local scale = 0.3
        return
        {
            n = G.UIT.R,
            config = { align = "cm", minh = 1, padding = 0.1 },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { align = 'cm', colour = G.C.CLEAR },
                    nodes = {
                        { n = G.UIT.T, config = { text = "(", colour = G.C.UI.TEXT_INACTIVE, scale = 1 }, }
                    }
                },
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_chips' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'chips',
                            text = 'chip_text',
                            align = 'cr',
                            w = 1.2,
                            scale = scale
                        })
                    }
                },
                SMODS.GUI.operator(scale * 0.75),
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_mult' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'mult',
                            align = 'cm',
                            w = 1.2,
                            scale = scale
                        })
                    }
                },
                {
                    n = G.UIT.C,
                    config = { align = 'cm', colour = G.C.CLEAR },
                    nodes = {
                        { n = G.UIT.T, config = { text = ")", colour = G.C.UI.TEXT_INACTIVE, scale = 1 }, }
                    }
                },
                {
                    n = G.UIT.C,
                    config = { align = 'cm', colour = G.C.CLEAR },
                    nodes = {
                        { n = G.UIT.T, config = { text = "^", colour = G.C.DARK_EDITION, scale = 0.75 }, }
                    }
                },
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_dw_vee' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'dw_vee',
                            align = 'cl',
                            w = 1.2,
                            scale = scale
                        })
                    }
                },
            }
        }
    end
})

--HEX("b4f2b6")

-- TODO: Rework this into a deck
-- Additionally, rework how the scoring is decided.
SMODS.Joker {
    key = 'vee',
    rarity = 3,
    cost = 10,
    atlas = 'dw',
    pos = { x = 8, y = 0 },
    loc_vars = function(self, info_queue, card)
        return { vars = { localize('k_dw_veespeak' .. pseudorandom("tv", 1, 4)) } }
    end,
    add_to_deck = function(self, card)
        SMODS.set_scoring_calculation('dw_vee')
    end,
    remove_from_deck = function(self, card)
        if not next(SMODS.find_card("j_dw_vee")) then
            SMODS.set_scoring_calculation('multiply')
        end
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                vee = math.log(hand_chips * mult) ^ 0.1
            }
        end
    end
}
