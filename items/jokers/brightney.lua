SMODS.Joker{
    key = 'brightney',
    atlas = 'dwJoker',
    pos = { x = 6, y = 4},
    soul_pos=nil,
    rarity = 2,
    cost = 5,
    config = { extra = {mult = 0, mult_mod = 3, target_cards = {}} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=false,
    unlocked = false,
    calculate = function(self,card,context)
        if not context.blueprint then
            if context.press_play then
                card.ability.extra.target_cards = {}
                for _,v in ipairs(G.hand.cards) do
                    if v.facing == 'back' then
                        card.ability.extra.target_cards[#card.ability.extra.target_cards+1] = v
                    end
                end
            end
            if context.individual and context.cardarea == G.play and not context.end_of_round then -- Not sure if this would work
                local valid = false
                for _,v in ipairs(card.ability.extra.target_cards) do
                    if context.other_card == v then
                        valid = true
                        break
                    end
                end
                
                if valid then
                    card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                    return {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.MULT,
                    }
                end
            end
            if context.after then
                card.ability.extra.target_cards = {}
            end
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.mult_mod, card.ability.extra.mult}, key = self.key }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'dw_brightney'
    end,
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {5}}
    end,
}