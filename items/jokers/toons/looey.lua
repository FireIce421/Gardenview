SMODS.Joker{
    key = 'looey',
    atlas = 'dwJoker',
    pos = { x = 5, y = 5},
    soul_pos=nil,
    rarity = 2,
    cost = 6,
    config = { extra = {x_mult = 1, hand_size = 8} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.joker_main then
            local x_mult_mod
            if card.ability.extra.hand_size - G.hand.config.card_limit + 1 > 1 then
                x_mult_mod = card.ability.extra.hand_size - G.hand.config.card_limit + 1
            else
                x_mult_mod = 1
            end
            
            return {
                x_mult = card.ability.extra.x_mult * x_mult_mod
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        local x_mult_mod
        if G.hand and (card.ability.extra.hand_size - G.hand.config.card_limit + 1 > 1) then
            x_mult_mod = card.ability.extra.hand_size - G.hand.config.card_limit + 1
        else
            x_mult_mod = 1
        end
        
        return { vars = {card.ability.extra.x_mult, x_mult_mod, card.ability.extra.hand_size}, key = self.key }
    end
}