SMODS.Joker{
    key = 'coal',
    atlas = 'dwJoker',
    pos = { x = 6, y = 8},
    soul_pos=nil,
    rarity = 3,
    cost = 8,
    config = { extra = {odds = 2} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round then
            if SMODS.has_enhancement(context.other_card, 'm_stone') and SMODS.pseudorandom_probability(card, 'dw_coal', 1, card.ability.extra.odds) then
                return {
                    extra = {
                        message = localize('k_plus_tarot'),
                        message_card = card,
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card {
                                        set = 'Tarot',
                                        key_append = 'dw_coal'
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'dw_coal')
        return { vars = {numerator, denominator}, key = self.key }
    end
}