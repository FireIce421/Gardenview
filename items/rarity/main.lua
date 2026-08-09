-- Gradient
SMODS.Gradient {
	key = 'main_gradient',
	colours = {
		HEX('fd5f55'),
		HEX('fda200'),
		HEX('ffd61d'),
		HEX('91e461'),
		HEX('009cfd'),
		HEX('8a71e1'),
	},
	cycle = 15
}

-- Main Rarity
SMODS.Rarity {
	key = "main",
	loc_txt = {},
	badge_colour = SMODS.Gradients["dw_main_gradient"],
	default_weight = 0.003,
	pools = { ["Joker"] = true },
}
