SMODS.Scoring_Parameter({
    key = 'points',
    default_value = 1,
    colour = darken(HEX("b4f2b6"), 0.2),
    calculation_keys = { 'points', 'xpoints' },
    calc_effect = function(self, effect, scored_card, key, amount, from_edition)
        if not SMODS.Calculation_Controls.chips then return end
        if key == 'points' and amount then
            if effect.card and effect.card ~= scored_card then points_card(effect.card) end
            self:modify(amount)
            card_eval_status_text(scored_card, 'extra', nil, percent, nil,
                {
                    message = localize { type = 'variable', key = amount > 0 and 'a_chips' or 'a_chips_minus', vars = { amount } },
                    colour =
                        self.colour
                })
            return true
        end
        if key == 'xpoints' and amount then
            if effect.card and effect.card ~= scored_card then points_card(effect.card) end
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
    key = "points",
    func = function(self, chips, mult, flames)
        return chips * mult * SMODS.get_scoring_parameter('dw_points', flames)
    end,
    parameters = { 'chips', 'mult', SMODS.current_mod.prefix .. '_points' },
    replace_ui = function(self)
        local scale = 0.3
        return
        {
            n = G.UIT.R,
            config = { align = "cm", minh = 1, padding = 0.1 },
            nodes = {
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
                        { n = G.UIT.T, config = { text = "X", colour = G.C.RED, scale = 0.5 }, }
                    }
                },
                {
                    n = G.UIT.C,
                    config = { align = 'cm', id = 'hand_dw_points' },
                    nodes = {
                        SMODS.GUI.score_container({
                            type = 'dw_points',
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

-- TODO: Rework this into a deck (Done! -FI)
-- Additionally, rework how the scoring is decided.

SMODS.Back {
    key = "gameshow",
    pos = { x = 0, y = 0 },
    apply = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.set_scoring_calculation("dw_points") -- how the fu is this functional
                return true
            end
        }))
    end,
}