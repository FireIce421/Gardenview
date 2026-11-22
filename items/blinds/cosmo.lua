SMODS.Blind {
    key = 'cosmo',
    dollars = 5,
    mult = 2,
    boss = {min = 1},
    atlas = 'dwBlind_proto',
    pos = {x = 0, y = 5},
    boss_colour = HEX("000000"),
    in_pool = function(self, args)
        return false
    end,
}