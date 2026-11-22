SMODS.Joker{
    key = 'squirm',
    atlas = 'dwJoker',
    pos = { x = 9, y = 8},
    soul_pos=nil,
    rarity = 3,
    cost = 8,
    config = { extra = {x_mult = 3} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,

    calculate = function(self,card,context)
        if context.joker_main then
            local consumables = {}
            for _,v in ipairs(G.consumeables.cards) do
                if not v.getting_sliced then
                    consumables[#consumables+1] = V
                end
            end
            local consumable_to_destroy = pseudorandom_element(consumables, 'dw_squirm')
            if consumable_to_destroy then
                consumable_to_destroy.getting_sliced = true
                SMODS.destroy_cards(consumable_to_destroy)
                return {
                    x_mult = card.ability.extra.x_mult
                }
            end
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.x_mult}}
    end,
    check_for_unlock = function(self, args) -- equivalent to `unlock_condition = { type = 'discover_amount', spectral_count = 18 }`
        return true
    end,
}