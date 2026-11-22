--[[
    TODO:
    Add a check that changes allow_children to false when weird mods are detected
    like hotpot (nursery) and birthlatro
]]
allow_children = true

assert(SMODS.load_file("items/blinds/a_blindfuncs.lua"))()

-- BLINDS: PAGE 1
assert(SMODS.load_file("items/blinds/blackout.lua"))()
assert(SMODS.load_file("items/blinds/ichor_leak.lua"))()
assert(SMODS.load_file("items/blinds/spring_fever.lua"))()
assert(SMODS.load_file("items/blinds/haunted_gala.lua"))()
assert(SMODS.load_file("items/blinds/iced_over.lua"))()

assert(SMODS.load_file("items/blinds/poppy.lua"))()
assert(SMODS.load_file("items/blinds/boxten.lua"))()
assert(SMODS.load_file("items/blinds/shrimpo.lua"))()
assert(SMODS.load_file("items/blinds/tisha.lua"))()
assert(SMODS.load_file("items/blinds/brusha.lua"))()

assert(SMODS.load_file("items/blinds/looey.lua"))()
assert(SMODS.load_file("items/blinds/yatta.lua"))()
assert(SMODS.load_file("items/blinds/cosmo.lua"))()
assert(SMODS.load_file("items/blinds/eggson.lua"))()
assert(SMODS.load_file("items/blinds/ribecca.lua"))()

assert(SMODS.load_file("items/blinds/rudie.lua"))()
assert(SMODS.load_file("items/blinds/brightney.lua"))()
assert(SMODS.load_file("items/blinds/connie.lua"))()
assert(SMODS.load_file("items/blinds/finn.lua"))()
assert(SMODS.load_file("items/blinds/teagan.lua"))()

assert(SMODS.load_file("items/blinds/razzledazzle.lua"))()
assert(SMODS.load_file("items/blinds/rodger.lua"))()
if allow_children then assert(SMODS.load_file("items/blinds/toodles.lua"))() end
assert(SMODS.load_file("items/blinds/flyte.lua"))()
assert(SMODS.load_file("items/blinds/soulvester.lua"))()

assert(SMODS.load_file("items/blinds/ginger.lua"))()
assert(SMODS.load_file("items/blinds/gigi.lua"))()
assert(SMODS.load_file("items/blinds/flutter.lua"))()
assert(SMODS.load_file("items/blinds/glisten.lua"))()
assert(SMODS.load_file("items/blinds/squirm.lua"))()

assert(SMODS.load_file("items/blinds/blot.lua"))()
assert(SMODS.load_file("items/blinds/goob.lua"))()
assert(SMODS.load_file("items/blinds/scraps.lua"))()
assert(SMODS.load_file("items/blinds/waxwell.lua"))()
assert(SMODS.load_file("items/blinds/cocoa.lua"))()

-- BLINDS: PAGE 2
assert(SMODS.load_file("items/blinds/eclipse.lua"))()
assert(SMODS.load_file("items/blinds/coal.lua"))()
assert(SMODS.load_file("items/blinds/bassie.lua"))()
if allow_children then assert(SMODS.load_file("items/blinds/gourdy.lua"))() end
assert(SMODS.load_file("items/blinds/bobette.lua"))()

assert(SMODS.load_file("items/blinds/pebble.lua"))()
assert(SMODS.load_file("items/blinds/astro.lua"))()
assert(SMODS.load_file("items/blinds/sprout.lua"))()
assert(SMODS.load_file("items/blinds/shelly.lua"))()
assert(SMODS.load_file("items/blinds/vee.lua"))()

--assert(SMODS.load_file("items/blinds/dandy.lua"))()
assert(SMODS.load_file("items/blinds/dyle.lua"))()
assert(SMODS.load_file("items/blinds/dessa.lua"))()
assert(SMODS.load_file("items/blinds/dioda.lua"))()
