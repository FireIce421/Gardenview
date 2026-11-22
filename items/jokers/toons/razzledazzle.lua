SMODS.Joker{
    key = "razzledazzle", 
    atlas = 'dwJoker',
    config = { extra = {mult = 7} },
    pos = { x = 7, y = 5 },
    soul_pos=nil,
    rarity = 2,
    cost = 7,
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,

    calculate = function(self,card,context)
        if context.setting_blind and not context.blueprint then
            local evenRound = (G.GAME.round % 2) == 0
            if evenRound then
                return {
                    message = localize('k_dandy_misery_ex'),
                    colour = G.C.CHIPS
                }
            else
                return {
                    message = localize('k_dandy_joy_ex'),
                    colour = G.C.MULT
                }
            end
        end
        if context.individual and context.cardarea == G.play then
            local score = false
            if (G.GAME.round % 2) == 0 then
                if (context.other_card:is_suit('Spades') or context.other_card:is_suit('Clubs')) then
                    score = true
                end
            else
                if (context.other_card:is_suit('Hearts') or context.other_card:is_suit('Diamonds')) then
                    score = true
                end
            end

            if score then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
        local evenRound = (G.GAME.round % 2) == 0
        
        local suit_t1
        local suit_t2
        local con_t

        local suit_f1
        local suit_f2
        local con_f

        if evenRound then
            suit_t1 = 'Spades'
            suit_t2 = 'Clubs'
            suit_f1 = 'Hearts'
            suit_f2 = 'Diamonds'
            con_t = 'dw_rnd_even'
            con_f = 'dw_rnd_odd'
        else
            suit_f1 = 'Spades'
            suit_f2 = 'Clubs'
            suit_t1 = 'Hearts'
            suit_t2 = 'Diamonds'
            con_t = 'dw_rnd_odd'
            con_f = 'dw_rnd_even'
        end

        return { vars = {
                localize(suit_t1, 'suits_singular'), 
                localize(suit_t2, 'suits_singular'),
                localize(suit_f1, 'suits_singular'),
                localize(suit_f2, 'suits_singular'),
                localize(con_t),
                localize(con_f),
                card.ability.extra.mult,  
                colours = {
                    G.C.SUITS[suit_t1], 
                    G.C.SUITS[suit_t2],
                    G.C.SUITS[suit_f1], 
                    G.C.SUITS[suit_f2],
                }
            }
        }
    end,

    check_for_unlock = function(self, args)
        if args.type == 'hand_contents' and #args.cards == 5 then
            local oddvalid = true
            local evenvalid = true
            for j = 1, #args.cards do
                local rank = args.cards[j]:get_id()
                local oddresult = false
                local evenresult = false
                if rank <= 10 and rank >= 0 then
                    if rank % 2 == 1 then
                        oddresult = true
                    else
                        evenresult = true
                    end
                elseif rank == 14 then
                    oddresult = true
                end

                if oddvalid then
                    oddvalid = oddresult
                end
                if evenvalid then
                    evenvalid = evenresult
                end
            end

            return oddvalid or evenvalid
        end
        return false
    end,
}