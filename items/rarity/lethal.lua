-- Lethal Rarity Gradient
SMODS.Gradient {
    key = 'lethal_gradient',
    colours = {
        HEX('F46464'),
        HEX('C01F1F')
    },
    cycle = 6
}

-- Lethal Rarity
SMODS.Rarity {
    key = 'lethal',
    badge_colour = SMODS.Gradients["dandy_lethal_gradient"],
    default_weight = 0
}