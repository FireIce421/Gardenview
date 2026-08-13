SMODS.Blind {
    key = 'razzledazzle',
    atlas = 'dwBlind',
    pos = {x = 0, y = 14},
    
         
    dollars = 5,
    mult = 2,
    boss = {min = 3},
    boss_colour = HEX("c6e0eb"),
    calculate = function(self, blind, context)
        if context.debuff_card then
            if 
                (blind.mode == 'dazzle' and (context.debuff_card:is_suit('Spades') or context.debuff_card:is_suit('Clubs'))) or
                (blind.mode == 'razzle' and (context.debuff_card:is_suit('Hearts') or context.debuff_card:is_suit('Diamonds')))
            then
                return {
                    debuff = true
                }
            end
        end
        if context.setting_blind then
            blind.mode = 'dazzle'
        end
        if context.after then
            blind.prepped = true
        end
        if context.hand_drawn and blind.prepped then
            if blind.mode == 'dazzle' then
                blind.mode = 'razzle'
            else
                blind.mode = 'dazzle'
            end
            blind.prepped = nil

            G.E_MANAGER:add_event(Event({
                trigger = 'immediate',
                func = function()
                    for _,v in ipairs(G.playing_cards) do
                        SMODS.recalc_debuff(v)
                    end
                    return true
                end,
            }))
            shakeBlind()
        end
    end,
}