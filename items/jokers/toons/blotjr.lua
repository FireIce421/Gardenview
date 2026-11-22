SMODS.Joker {
    key = "blotjr",
    cost = 0,
    rarity = 2,
    config = { extra = { lifetime = 4, x_mult = 1.25, start_dissolve = 0, y = 0 } }, -- +1 lifetime since on creation blotjr loses durability somehow
    atlas = 'dw',
    pos = {x=2,y=0},
    soul_pos = {x=6,y=2},
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,card)
        return { vars = {card.ability.extra.lifetime, card.ability.extra.x_mult}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                x_mult = card.ability.extra.x_mult
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if (card.ability.extra.lifetime or 0) <= 1 then
                return {
                    func = function()
                        card:start_dissolve()
                        return true
                    end,
                    message = "Destroyed!"
                }
            elseif (card.ability.extra.lifetime or 0) > 1 then
                return {
                    func = function()
                        card.ability.extra.lifetime = math.max(0, (card.ability.extra.lifetime) - 1)
                        return true
                    end
                }
            end
        end
    end
}
