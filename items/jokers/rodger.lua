SMODS.Joker{
    key = 'rodger',
    atlas = 'dwJoker',
    pos = { x = 8, y = 5},
    soul_pos=nil,
    rarity = 2,
    cost = 5,
    config = { extra = {poker_hand = 'High Card'} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,
    calculate = function(self,card,context)
        if context.before and context.scoring_name == card.ability.extra.poker_hand then
            return {
                level_up = true,
                message = localize('k_level_up_ex')
            }
        end

        if not context.blueprint then
            if context.end_of_round and context.game_over == false and context.main_eval then
                local _poker_hands = {}
                for handname, _ in pairs(G.GAME.hands) do
                    if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand then
                        _poker_hands[#_poker_hands + 1] = handname
                    end
                end
                card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'dw_rodger')
                return {
                    message = localize('k_reset')
                }
            end
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        local _poker_hands = {}
        for handname, _ in pairs(G.GAME.hands) do
            if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand then
                _poker_hands[#_poker_hands + 1] = handname
            end
        end
        card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'dw_rodger')
    end,

    loc_vars = function(self, info_queue, card)
        return {vars = {localize(card.ability.extra.poker_hand, 'poker_hands')}, key = self.key }
    end,
    locked_loc_vars = function(self, info_queue, card)
        local threshold = 0
        for k, v in pairs(G.P_BLINDS) do
            threshold = threshold + 1
        end
        if threshold > 50 then
            threshold = 50
        end
        return { vars = {threshold} }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'blind_discoveries' then
            local discovered_blinds = 0
            local threshold = 0
            for k, v in pairs(G.P_BLINDS) do
                threshold = threshold + 1
                if v.discovered then
                    discovered_blinds = discovered_blinds + 1
                end
            end
            if threshold > 50 then
                threshold = 50
            end
            return discovered_blinds >= threshold
        end
        return false
    end
}