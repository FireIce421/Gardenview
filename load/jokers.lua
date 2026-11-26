--[[
    TODO:
    Add a check that changes allow_children to false when weird mods are detected
    like hotpot (nursery) and birthlatro
]]
allow_children = true

-- TRINKETS
-- This also includes Night Cap, Water Cooler and the CONE
--assert(SMODS.load_file("items/trinkets/brick.lua"))()
--assert(SMODS.load_file("items/trinkets/luckycoin.lua"))()

-- TRINKETS: PAGE 1
assert(SMODS.load_file("items/jokers/trinkets/coin_purse.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/research_map.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/wrench.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/machine_manual.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/speedy_shoes.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/speedometer.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/thinking_cap.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/alarm.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/thermos.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/pull_toy.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/pop_pack.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/megaphone.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/cooler.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/cardboard_armor.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/party_favor.lua"))()

-- TRINKETS: PAGE 2
assert(SMODS.load_file("items/jokers/trinkets/pink_bow.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/blue_bandana.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/brick.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/sweet_charm.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/fishing_rod.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/feather_duster.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/paint_bucket.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/fancy_purse.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/dog_plush.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/magnifying_glass.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/clown_horn.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/party_popper.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/mime_makeup.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/lucky_coin.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/diary.lua"))()

-- TRINKETS: PAGE 3
assert(SMODS.load_file("items/jokers/trinkets/spare_bulb.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/ghost_snakes_in_a_can.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/egg_radar.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/bone_needle_and_thread.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/festive_lights.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/ribbon_spool.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/stress_ball.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/scrapbook.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/soul_sword.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/peppermint_icing.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/vanity_mirror.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/cherished_blanket.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/glazed_fondant_bag.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/moon_pack_heirloom.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/coal.lua"))()

-- TRINKETS: PAGE 4
assert(SMODS.load_file("items/jokers/trinkets/friendship_bracelet.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/crayon_set.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/whispering_flower.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/bone.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/star_pillow.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/savory_charm.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/participation_award.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/vee_remote.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/memory_locket.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/toy_kit.lua"))()

assert(SMODS.load_file("items/jokers/trinkets/dandy_plush.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/train_whistle.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/personnel_badge.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/missing_piece.lua"))()
assert(SMODS.load_file("items/jokers/trinkets/blushy_bat.lua"))()

-- TOONS: PAGE 1
assert(SMODS.load_file("items/jokers/toons/poppy.lua"))()
assert(SMODS.load_file("items/jokers/toons/boxten.lua"))()
assert(SMODS.load_file("items/jokers/toons/shrimpo.lua"))()
assert(SMODS.load_file("items/jokers/toons/cosmo.lua"))()
assert(SMODS.load_file("items/jokers/toons/finn.lua"))()

assert(SMODS.load_file("items/jokers/toons/tisha.lua"))()
assert(SMODS.load_file("items/jokers/toons/brusha.lua"))()
assert(SMODS.load_file("items/jokers/toons/teagan.lua"))()
if allow_children then assert(SMODS.load_file("items/jokers/toons/toodles.lua"))() end
assert(SMODS.load_file("items/jokers/toons/rodger.lua"))()

assert(SMODS.load_file("items/jokers/toons/looey.lua"))()
assert(SMODS.load_file("items/jokers/toons/yatta.lua"))()
assert(SMODS.load_file("items/jokers/toons/blot.lua"))()
assert(SMODS.load_file("items/jokers/toons/gigi.lua"))()
assert(SMODS.load_file("items/jokers/toons/flutter.lua"))()

-- TOONS: PAGE 2
assert(SMODS.load_file("items/jokers/toons/brightney.lua"))()
assert(SMODS.load_file("items/jokers/toons/connie.lua"))()
assert(SMODS.load_file("items/jokers/toons/eggson.lua"))()
assert(SMODS.load_file("items/jokers/toons/ribecca.lua"))()
assert(SMODS.load_file("items/jokers/toons/rudie.lua"))()

assert(SMODS.load_file("items/jokers/toons/razzledazzle.lua"))()
assert(SMODS.load_file("items/jokers/toons/squirm.lua"))()
assert(SMODS.load_file("items/jokers/toons/flyte.lua"))()
assert(SMODS.load_file("items/jokers/toons/soulvester.lua"))()
assert(SMODS.load_file("items/jokers/toons/ginger.lua"))()

assert(SMODS.load_file("items/jokers/toons/glisten.lua"))()
assert(SMODS.load_file("items/jokers/toons/waxwell.lua"))()
assert(SMODS.load_file("items/jokers/toons/cocoa.lua"))()
assert(SMODS.load_file("items/jokers/toons/eclipse.lua"))()
assert(SMODS.load_file("items/jokers/toons/coal.lua"))()

-- TOONS: PAGE 3
assert(SMODS.load_file("items/jokers/toons/goob.lua"))()
assert(SMODS.load_file("items/jokers/toons/scraps.lua"))()
assert(SMODS.load_file("items/jokers/toons/bassie.lua"))()
if allow_children then assert(SMODS.load_file("items/jokers/toons/gourdy.lua"))() end
assert(SMODS.load_file("items/jokers/toons/bobette.lua"))()

assert(SMODS.load_file("items/jokers/toons/pebble.lua"))()
assert(SMODS.load_file("items/jokers/toons/astro.lua"))()
assert(SMODS.load_file("items/jokers/toons/sprout.lua"))()
assert(SMODS.load_file("items/jokers/toons/shelly.lua"))()
assert(SMODS.load_file("items/jokers/toons/vee.lua"))()

assert(SMODS.load_file("items/jokers/toons/dandy.lua"))()
assert(SMODS.load_file("items/jokers/toons/dyle.lua"))()
assert(SMODS.load_file("items/jokers/toons/dioda.lua"))()
assert(SMODS.load_file("items/jokers/toons/dessa.lua"))()

if SMODS.current_mod.config.dw_fun_jokers ==2 then
    assert(SMODS.load_file("items/jokers/extras/cone.lua"))()
    assert(SMODS.load_file("items/jokers/extras/barnaby.lua"))()
    assert(SMODS.load_file("items/jokers/extras/blotjr.lua"))()
end