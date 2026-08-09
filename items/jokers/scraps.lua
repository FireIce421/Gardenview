SMODS.Joker {
    key = 'scraps',
    atlas = 'dwJoker',
    pos = { x = 9, y = 5 },
    soul_pos = nil,
    rarity = 3,
    cost = 7,
    config = { extra = { dollars = 15 } },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = false,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger then
            return {
                dollars = card.ability.extra.dollars
            }
        end
    end,
    in_pool = function(self, args) --equivalent to `enhancement_gate = 'm_gold'`
        for _, playing_card in ipairs(G.playing_cards or {}) do
            if SMODS.has_enhancement(playing_card, 'm_lucky') then
                return true
            end
        end
        return false
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky
        return { vars = { card.ability.extra.dollars }, key = self.key }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if SMODS.has_enhancement(args.cards[j], 'm_lucky') then
                    tally = tally + 1
                    if tally == 5 then
                        return true
                    end
                end
            end
        end
        return false
    end,
    locked_loc_vars = function(self, info_queue, card)
        return { vars = { 5 } }
    end
}
