SMODS.Joker{
    key = 'boxten',
    atlas = 'dwJoker',
    pos = { x = 5, y = 4},
    soul_pos=nil,
    rarity = 1,
    cost = 4,
    config = { extra = {mult = 3} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,
    
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult * #context.full_hand
            }
        end
    end,

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult}}
    end,

    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' then
            local tally = 0
            for j = 1, #args.cards do
                if args.cards[j]:is_face() then
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
        return {vars = {5}}
    end
}