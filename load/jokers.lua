--[[
    TODO:
    Add a check that changes allow_children to false when weird mods are detected
    like hotpot (nursery) and birthlatro
]]
allow_children = true

--[[
Connie
Flutter
Teagan
]]

-- TRINKETS
-- This also includes Night Cap, Water Cooler and the CONE
--assert(SMODS.load_file("items/trinkets/brick.lua"))()
--assert(SMODS.load_file("items/trinkets/luckycoin.lua"))()

-- TOONS: PAGE 1
assert(SMODS.load_file("items/jokers/poppy.lua"))()
assert(SMODS.load_file("items/jokers/boxten.lua"))()
assert(SMODS.load_file("items/jokers/shrimpo.lua"))()
if allow_children then assert(SMODS.load_file("items/jokers/toodles.lua"))() end
assert(SMODS.load_file("items/jokers/rodger.lua"))()

assert(SMODS.load_file("items/jokers/tisha.lua"))()
assert(SMODS.load_file("items/jokers/brusha.lua"))()
assert(SMODS.load_file("items/jokers/finn.lua"))()
-- Barnaby Wilkers
assert(SMODS.load_file("items/jokers/teagan.lua"))()

assert(SMODS.load_file("items/jokers/looey.lua"))()
assert(SMODS.load_file("items/jokers/yatta.lua"))()
assert(SMODS.load_file("items/jokers/blot.lua"))()
-- Blot Jr.
assert(SMODS.load_file("items/jokers/gigi.lua"))()

-- TOONS: PAGE 2
assert(SMODS.load_file("items/jokers/brightney.lua"))()
assert(SMODS.load_file("items/jokers/flutter.lua"))()
assert(SMODS.load_file("items/jokers/eggson.lua"))()
assert(SMODS.load_file("items/jokers/flyte.lua"))()
assert(SMODS.load_file("items/jokers/cocoa.lua"))()

assert(SMODS.load_file("items/jokers/razzledazzle.lua"))()
assert(SMODS.load_file("items/jokers/connie.lua"))()
assert(SMODS.load_file("items/jokers/ribecca.lua"))()
assert(SMODS.load_file("items/jokers/soulvester.lua"))()
assert(SMODS.load_file("items/jokers/eclipse.lua"))()

assert(SMODS.load_file("items/jokers/cosmo.lua"))()
assert(SMODS.load_file("items/jokers/squirm.lua"))()
assert(SMODS.load_file("items/jokers/rudie.lua"))()
assert(SMODS.load_file("items/jokers/ginger.lua"))()
assert(SMODS.load_file("items/jokers/coal.lua"))()

-- TOONS: PAGE 3
assert(SMODS.load_file("items/jokers/goob.lua"))()
assert(SMODS.load_file("items/jokers/scraps.lua"))()
assert(SMODS.load_file("items/jokers/waxwell.lua"))()
assert(SMODS.load_file("items/jokers/glisten.lua"))()

assert(SMODS.load_file("items/jokers/pebble.lua"))()
assert(SMODS.load_file("items/jokers/astro.lua"))()
assert(SMODS.load_file("items/jokers/sprout.lua"))()
assert(SMODS.load_file("items/jokers/shelly.lua"))()
assert(SMODS.load_file("items/jokers/vee.lua"))()

assert(SMODS.load_file("items/jokers/bassie.lua"))()
if allow_children then assert(SMODS.load_file("items/jokers/gourdy.lua"))() end
assert(SMODS.load_file("items/jokers/bobette.lua"))()
assert(SMODS.load_file("items/jokers/dandy.lua"))()
assert(SMODS.load_file("items/jokers/dyle.lua"))()
