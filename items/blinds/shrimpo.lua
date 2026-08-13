SMODS.Blind {
    key = 'shrimpo',
    atlas = 'dwBlind',
    pos = {x = 0, y = 8},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 2},
    boss_colour = HEX("e48986"),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_card and context.debuff_card.dw_shrimpo_debuff then
                return {
                    debuff = true
                }
            end
            if context.debuff_hand and not context.check then
                local target_card = pseudorandom_element(context.scoring_hand, 'dw_twisted_shrimpo')
                if target_card then
                    target_card.dw_shrimpo_debuff = true
                    SMODS.recalc_debuff(target_card)
                    shakeBlind()
                end
            end

            if context.hand_drawn or (context.end_of_round and context.game_over == false and context.main_eval) then
                for _, other_card in ipairs(G.playing_cards) do
                    other_card.dw_shrimpo_debuff = nil
                    SMODS.recalc_debuff(other_card)
                end
            end
        end
    end,
}