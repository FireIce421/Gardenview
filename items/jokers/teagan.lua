SMODS.Joker{
    key = 'teagan',
    atlas = 'dwJoker',
    pos = { x = 1, y = 6},
    soul_pos=nil,
    rarity = 3,
    cost = 8,
    config = { extra = {discard_mod = 1, dollars = 20} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.setting_blind then
            local discards_gained = card.ability.extra.discard_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / card.ability.extra.dollars)
            
            if to_big(discards_gained) > to_big(0) then
                ease_discard(discards_gained)
                return {
                    message = localize{type = 'variable', key = 'a_hands', vars = {discards_gained} } ,
                    sound = "dandy_sprout",
                    colour = G.C.MULT
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        local discards_gained = card.ability.extra.discard_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / card.ability.extra.dollars)
        return { vars = {discards_gained, card.ability.extra.discard_mod, card.ability.extra.dollars}, key = self.key }
    end
}