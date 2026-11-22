SMODS.Joker{
    key = 'thermos',
    atlas = 'dwJoker',
    pos = { x = 9, y = 0},
    soul_pos=nil,
    rarity = 3,
    cost = 8,
    config = { extra = {count = 2} },
    blueprint_compat=false,
    eternal_compat=false,
    perishable_compat=true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = 'tag_uncommon', set = 'Tag' }
        return{vars = {card.ability.extra.count}}
    end,
    calculate = function(self,card,context)
        if context.selling_self then
            for i = 1, card.ability.extra.count do
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        add_tag(Tag('tag_uncommon'))
                        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                        return true
                    end)
                }))
            end
            return nil, true -- This is for Joker retrigger purposes
        end
    end,
}