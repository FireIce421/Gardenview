SMODS.Sound ({
    key = 'bassie',
    path = 'dw_bassie.ogg',
    pitch = 1,
})

SMODS.Joker{
    key = 'bassie',
    atlas = 'dwJoker',
    pos = { x = 7, y = 7},
    rarity = 'dw_main',
    cost = 20,
    config = { extra = {slots = 2} },
    blueprint_compat=false,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    add_to_deck = function(self, card, from_debuff) 
        G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.slots
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.slots
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.slots}, key = self.key }
    end
}