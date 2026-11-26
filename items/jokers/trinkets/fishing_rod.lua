SMODS.Joker{
    key = 'fishing_rod',
    atlas = 'dwJoker',
    pos = { x = 5, y = 2},
    soul_pos=nil,
    rarity = 1,
    cost = 6,
    config = { extra = {} },
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    blueprint_compat = true,
    config = {
        extra = {
            threshold = 15,
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
                message = localize('dw_fishing_rod')    
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = 'tag_coupon', set = 'Tag' }
        return { vars = { card.ability.extra.threshold } }
    end,
}