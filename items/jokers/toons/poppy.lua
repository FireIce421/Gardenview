SMODS.Joker{
    key = 'poppy',
    atlas = 'dwJoker',
    pos = { x = 6, y = 5},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {chips = 0, chip_mod = 25} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,
    calculate = function(self,card,context)
        if not context.blueprint then
            if context.before then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
                return {
                    extra = {focus = card, message = localize('k_upgrade_ex')},
                    colour = G.C.CHIPS
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.chips = 0
                return {
                    extra = {focus = card, message = localize('k_reset')},
                    colour = G.C.CHIPS
                }
            end
        end
        if context.joker_main and context.cardarea == G.jokers then
            return {
                chips = card.ability.extra.chips,
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips, card.ability.extra.chip_mod}, key = self.key }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'round_win' and G.GAME.current_round.hands_left == 0
    end,
}