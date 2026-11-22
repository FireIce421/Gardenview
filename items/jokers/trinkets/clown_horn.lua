SMODS.Joker{
    key = "clown_horn", 
    atlas = 'dwJoker',
    config = { extra = {mult = 20} },
    pos = { x = 8, y = 1 },
    rarity = 1,
    cost = 5,
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    calculate = function(self,card,context)
        if context.setting_blind and not context.blueprint then
            if (G.GAME.round % 2) ~= 0 then
                return {
                    message = localize('k_active_ex'),
                    colour = G.C.FILTER
                }
            end
        end
        if context.joker_main and context.cardarea == G.jokers then
            if (G.GAME.round % 2) ~= 0 then
                return {
                    mult = card.ability.extra.mult, 
                    colour = G.C.MULT
                }
            end
        end
    end,

    loc_vars = function(self, info_queue, card)
        local active = ((G.GAME.round % 2) ~= 0 and "k_dandy_active") or "k_dandy_inactive"
        return { vars = {card.ability.extra.mult, localize(active)}, key = self.key }
    end
}