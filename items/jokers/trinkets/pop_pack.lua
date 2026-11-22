SMODS.Joker{
    key = 'pop_pack',
    atlas = 'dwJoker',
    pos = { x = 1, y = 1},
    soul_pos=nil,
    rarity = 1,
    cost = 2,
    config = { extra = {h_plays = -1, d_size = 3} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    grasslanders_edward_compat = false,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.h_plays
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.h_plays
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.d_size, card.ability.extra.h_plays}, key = self.key }
    end
}