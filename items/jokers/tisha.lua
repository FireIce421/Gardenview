SMODS.Joker{
    key = 'tisha',
    atlas = 'dwJoker',
    pos = { x = 2, y = 6},
    soul_pos=nil,
    rarity = 1,
    cost = 5,
    config = { extra = {chips = 40} },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = true,
    discovered = true,

    calculate = function(self,card,context)
        if context.other_joker then
            return {
                chips = card.ability.extra.chips
            }
        end
        --[[
         if context.joker_main then
            local effects = {
                {
                    message = localize("k_clean_ex"),
                    colour = G.C.CHIPS
                }
            }
            for _,v in ipairs(G.jokers.cards) do
                if v ~= card then
                    effects[#effects + 1] = {
                        chips = card.ability.extra.chips,
                        message_card = v
                    }
                end
            end
            return SMODS.merge_effects(effects)
        end]]
    end,

    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chips}, key = self.key }
    end
}