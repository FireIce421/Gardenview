SMODS.Joker{
    key = 'ginger',
    atlas = 'dwJoker',
    pos = { x = 5, y = 8},
    soul_pos=nil,
    rarity = 2,
    cost = 7,
    config = { extra = {hand_mod = 3, dollars = 30} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.setting_blind then
            if ((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) >= card.ability.extra.dollars then
                ease_hands_played(card.ability.extra.hand_mod)
                return {
                    message = localize{type = 'variable', key = 'a_hands', vars = {hands} } ,
                    colour = G.C.CHIPS
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand_mod, card.ability.extra.dollars}, key = self.key }
    end
}