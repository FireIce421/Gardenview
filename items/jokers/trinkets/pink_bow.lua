SMODS.Joker{
    key = 'pink_bow',
    atlas = 'dwJoker',
    pos = { x = 9, y = 1},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {mult = 0, mult_mod = 5} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if not context.blueprint then
            if context.before then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                return {
                    extra = {focus = card, message = localize('k_upgrade_ex')},
                    colour = G.C.MULT
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.mult = 0
                return {
                    extra = {focus = card, message = localize('k_reset')},
                    colour = G.C.MULT
                }
            end
        end
        if context.joker_main and context.cardarea == G.jokers then
            return {
                mult = card.ability.extra.mult,
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult, card.ability.extra.mult_mod}, key = self.key }
    end,
}