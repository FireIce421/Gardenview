SMODS.Joker{
    key = "soulvester",
    atlas = 'dwJoker',
    pos = { x = 5, y = 9},
    soul_pos=nil,
    rarity = 2,
    cost = 6,
    config = { extra = {hands = 1} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    end,
    loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
        return { vars = {card.ability.extra.hands}, key = self.key }
    end
}