SMODS.Joker{
    key = 'thinking_cap',
    atlas = 'dwJoker',
    pos = { x = 7, y = 0},
    soul_pos=nil,
    rarity = 2,
    cost = 6,
    config = { extra = {h_size = 3, discards = -2} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    grasslanders_edward_compat = false,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
        G.hand:change_size(card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
        G.hand:change_size(-card.ability.extra.h_size)
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.h_size, card.ability.extra.discards}, key = self.key }
    end
}