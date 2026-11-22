SMODS.Joker{
    key = 'cardboard_armor',
    atlas = 'dwJoker',
    pos = { x = 4, y = 1},
    soul_pos=nil,
    rarity = 2,
    cost = 5,
    config = { extra = {} },
    blueprint_compat=false,
    eternal_compat=false,
    perishable_compat=true,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval then
            if G.GAME.blind.boss then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
                        card:start_dissolve()
                        return true
                    end
                }))
                return {
                    message = localize('k_saved_ex'),
                    saved = 'dw_cardboard_armor',
                    colour = G.C.RED
                }
            end
        end
    end,
}