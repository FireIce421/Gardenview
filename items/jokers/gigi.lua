SMODS.Joker{
    key = 'gigi',
    atlas = 'dwJoker',
    pos = { x = 2, y = 5},
    soul_pos=nil,
    rarity = 3,
    cost = 8,
    config = { extra = {
        tags = {
            'tag_charm',
            'tag_buffoon',
            'tag_meteor',
            'tag_ethereal',
            'tag_standard'
        }
    } },
    blueprint_compat=true,
    eternal_compat=true,
    perishable_compat=true,
    unlocked = false,

    calculate = function(self,card,context)
        if context.ending_shop then
            G.E_MANAGER:add_event(Event({
                func = (function()
                    local tag = pseudorandom_element(card.ability.extra.tags, 'dw_gigi')
                    if tag then
                        add_tag(Tag(tag))
                        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                        return true
                    end
                end)
            }))
            return {
                message = localize('dw_gigi')    
            }
        end
    end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = 'tag_standard', set = 'Tag' }
        info_queue[#info_queue + 1] = { key = 'tag_charm', set = 'Tag' }
        info_queue[#info_queue + 1] = { key = 'tag_meteor', set = 'Tag' }
        info_queue[#info_queue + 1] = { key = 'tag_buffoon', set = 'Tag' }
        info_queue[#info_queue + 1] = { key = 'tag_ethereal', set = 'Tag' }
    end,
    check_for_unlock = function(self, args)
        if args.type == 'discover_amount' then
            local threshold = 0
            local count = 0
            for _,v in pairs(G.P_TAGS) do
                threshold = threshold + 1
                if v.discovered then
                    count = count + 1
                end
            end
            return count >= threshold
        end
        return false
    end,
}
