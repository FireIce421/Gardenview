SMODS.Sound ({
    key = 'sprout',
    path = 'dw_sprout.ogg',
    pitch = 1,
})

SMODS.Joker{
    key = "sprout",
    atlas = 'dwJoker',
    pos = { x = 7, y = 6},
    soul_pos=nil,
    rarity = "dw_main",
    cost = 10,
    config = { extra = {hand_mod = 1, dollars = 15} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.setting_blind then
            local hands_gained = card.ability.extra.hand_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / card.ability.extra.dollars)
            
            if to_big(hands_gained) > to_big(0) then
                ease_hands_played(hands_gained)
                return {
                    message = localize{type = 'variable', key = 'a_hands', vars = {hands_gained} } ,
                    sound = "dandy_sprout",
                    colour = G.C.MULT
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        local hands_gained = card.ability.extra.hand_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / card.ability.extra.dollars)
        return { vars = {hands_gained, card.ability.extra.hand_mod, card.ability.extra.dollars}, key = self.key }
    end
}