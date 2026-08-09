-- TODO - Test what happens if multiple Goobs are present
SMODS.Joker {
    key = 'goob',
    atlas = 'dwJoker',
    pos = { x = 4, y = 5 },
    soul_pos = nil,
    rarity = 3,
    cost = 8,
    config = { extra = {} },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = false,
    calculate = function(self, card, context)
        if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.E_MANAGER:add_event(Event({
                func = function()
                    if G.pack_cards and G.pack_cards.cards[1] then
                        local consumeables = {}
                        for k, v in pairs(G.pack_cards.cards) do
                            if v.ability.consumeable then table.insert(consumeables, v) end
                        end
                        if next(consumeables) then
                            local consumeable = pseudorandom_element(consumeables, 'dw_goob')
                            SMODS.add_card({ key = consumeable.config.center.key })
                            SMODS.destroy_cards(consumeable)
                        end
                    end
                    return true
                end
            }))
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if SMODS.has_enhancement(args.cards[j], 'm_mult') then
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
