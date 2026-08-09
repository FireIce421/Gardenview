SMODS.Tag {
    key = "main",
    atlas = "dwTag",
    min_ante = 5,
    pos = { x = 0, y = 0 },
    apply = function(self, tag, context)
        if context.type == 'store_joker_create' then
            local mains_in_posession = { 0 }
            for _, joker in ipairs(G.jokers.cards) do
                if joker.config.center.rarity == 'dandy_epic' and not mains_in_posession[joker.config.center.key] then
                    mains_in_posession[1] = mains_in_posession[1] + 1
                    mains_in_posession[joker.config.center.key] = true
                end
            end

            local card
            if not G.P_CENTERS.j_dandy_pebble.unlocked then -- Checks if Pebble is locked, guarantees spawn if yes.
                check_for_unlock { type = 'dw_pebble' }
                card = SMODS.create_card {
                    key = 'j_dandy_pebble',
                    area = context.area,
                    key_append = "dw_epic"
                }
            else
                card = SMODS.create_card {
                    set = "Joker",
                    rarity = "dandy_epic",
                    area = context.area,
                    key_append = "dw_epic"
                }
            end

            create_shop_card_ui(card, 'Joker', context.area)
            card.states.visible = false
            tag:yep('+', G.C.GREEN, function()
                card:start_materialize()
                --card.cost_mod = 0.5
                card:set_cost()
                return true
            end)
            tag.triggered = true
            return card
        end
    end
}
