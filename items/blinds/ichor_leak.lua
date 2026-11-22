SMODS.Blind {
    key = 'ichor_leak',
    big = {min = 5, allow_duplicates = true},
    mult = 1.25,
    dollars = 4,
    atlas = 'dwBlind_proto',
    pos = {x = 0, y = 46},
    boss_colour = HEX("000000"),
    in_pool = function(self, args)
        return false
    end,
}