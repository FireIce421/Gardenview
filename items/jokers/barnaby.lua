SMODS.Joker {
    key = "barnaby",
    cost = 7,
    rarity = 2,
    atlas = 'dwJoker',
    pos = { x = 8, y = 10 },
    blueprint_compat = true,
    config = {
        extra = {
            threshold = 14,
            give_coupon = false
        }
    },
    calculate = function(self, card, context)
        if context.modify_final_cashout then
            card.ability.extra.give_coupon = (context.amount >= 14)
        end
        if context.start_shop and card.ability.extra.give_coupon then
            add_tag(Tag("tag_coupon"))
            return {
                message = localize('dw_barnaby')    
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = 'tag_coupon', set = 'Tag' }
        return { vars = { card.ability.extra.threshold } }
    end,
}
