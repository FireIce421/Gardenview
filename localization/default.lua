return {
    descriptions = {
        Back = {},
        Blind = {
            bl_dw_TIMES_UP = {
                name = "TIME'S UP",
                text = {
                    "Blind size increases by",
                    "X1.3 every second.",
                    "Disabling Blind will multiply",
                    "current requirement by X12"
                }
            },
            bl_dw_blackout = {
                name = "Blackout",
                text = {
                    "Flips all Jokers",
                    "Cards are drawn face down"
                }
            }
        },
        Edition = {},
        Enhanced = {},
        Joker = {
            j_dw_poppy = {
                name = "Poppy",
                text = {
                    "{C:chips}+#2#{} Chips for each",
                    "hand played this round",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)"
                },
                unlock = {
                    "Defeat a {C:attention}Blind{}",
                    "with {C:attention}0{} hands left"
                }
            },
            j_dw_boxten = {
                name = "Boxten",
                text = {
                    "{C:mult}+#1#{} Mult for each",
                    "card in played hand",
                },
                unlock = {
                    "Play a #1# card hand",
                    "that contains only",
                    "{C:attention}face{} cards",
                }
            },
            j_dw_shrimpo = {
                name = "Shrimpo",
                text = {
                    "{C:green}#1# in #2#{} chance for",
                    "{X:blind,C:white}X#3#{C:blind} Blind Size{}. Otherwise,",
                    "{X:blind,C:white}X#4#{C:blind} Blind Size",
                },
                unlock = {
                    "{C:attention}Destroy{} a",
                    "playing card"
                },
            },
            j_dw_brightney = {
                name = "Brightney",
                text = {
                    "Gains {C:mult}+#1#{} Mult for",
                    "each {C:attention}face down{}",
                    "card played",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                },
                unlock = {
                    "Play a #1# card hand",
                    "containing only cards",
                    "that are face down",
                },
            },
            j_dw_razzledazzle = {
                name = "Razzle & Dazzle",
                text = {
                    "On {C:attention}#5#{} numbered Rounds",
                    "Played {V:1}#1#{} and {V:2}#2#{} cards",
                    "grant {C:mult}+#7#{} Mult when scored",
                    "{C:inactive}On {C:attention}#6#{C:inactive} numbered Rounds",
                    "{C:inactive}Played {V:3}#3#{C:inactive} and {V:4}#4#{C:inactive} cards",
                    "{C:inactive}grant {C:mult}+#7#{C:inactive} Mult when scored",
                },
                unlock = {
                    "Play a 5 card hand",
                    "containing only",
                    "Odd numbered ranks",
                    "{C:inactive}(A, 3, 5, 7, 9)",
                    "or Even numbered ranks",
                    "{C:inactive}(2, 4, 6, 8, 10)",
                },

            },
            j_dw_squirm = {
                name = "Squirm",
                text = {
                    "Destroys a random",
                    "{C:attention}consumable{} in your",
                    "possession and",
                    "grants {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_dw_dandy_pre_encounter = {
                name = '{C:dw_dandy}Dandicus Dancifer{}',
                text = {
                    {
                        "Gains {X:red,C:white}X0.5{} Mult for",
                        "every item bought",
                        "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult)",
                        "{C:inactive,s:0.8}Going 3 Shops without buying anything will do...{}",
                        "{C:inactive,s:0.7}#2#/3{}"
                    }
                }
            },
            j_dw_dandy_post_encounter = {
                name = '{C:dw_dandy}Dandicus Dancifer{}',
                text = {
                    {
                        "Gains {X:red,C:white}X0.5{} Mult for",
                        "every item bought",
                        "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult)",
                    },
                    {
                        "If {C:red}nothing{} has been bought for {C:attention}3 Shops{}",
                        "{C:red}Destroys{} {C:attention}ALL Jokers{} and then creates",
                        "{C:dw_dandy,s:1.1}Twisted Dandy{}"
                    }
                }
            },
            j_dw_tw_dandy = {
                name = '{C:dw_dandy}Twisted Dandy{}',
                text = {
                    "Gains {X:red,C:white}X1{} Mult for",
                    "every item bought",
                    "Gains an additional {X:dark_edition,C:white}^0.05{} Mult for",
                    "every {C:money}$1{} you have.",
                    "{C:inactive}(Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult){}",
                    "{C:inactive}(Currently{} {X:dark_edition,C:white}^#2#{} {C:inactive}EMult){}"
                }
            },
            j_dw_astro = {
                name = 'Astro Novalite',
                text = {
                    {
                        "Adds {C:blue}+#2#{}",
                        "{C:blue}Hands{} and {C:red}Discards{}",
                        "when {C:attention}Blind{} is selected"
                    },
                    {
                        "Each unique {C:planet}Planet{} used",
                        "gives +1 additional Hands and Discards"
                    }
                }
            },
            j_dw_astro_stpc = {
                name = 'Astro?',
                text = {
                    {
                        "Adds {C:blue}+#2#{}",
                        "{C:blue}Hands{} and {C:red}Discards{}",
                        "when {C:attention}Blind{} is selected",
                        "{C:inactive}Something's wrong here.{}"
                    },
                    {
                        "Each unique {C:planet}Planet{} used",
                        "gives +1 additional Hands and Discards"
                    },
                }
            },
            j_dw_twistedastro = {
                name = "{C:dw_dandy}Twisted Astro{}",
                text = {
                    {
                        "Adds {C:blue}X#2#{} of your current",
                        "{C:blue}Hands{} and {C:red}Discards{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Each unique {C:planet}Planet{} card used",
                        "this run increases the multiplier",
                        "by {C:attention}+1{}"
                    }
                }
            },
            j_dw_twistedastro_stpc = {
                name = "{C:dw_dandy}Twisted... Astro?{}",
                text = {
                    {
                        "{X:blue,C:white}^^#1#{} Chips",
                        "{C:inactive}This was NOT the wind, Astro!{}"
                    },
                    {
                        "Each unique {C:planet}Planet{} card used",
                        "this run increases the multiplier",
                        "by {C:attention}+1{}"
                    }
                }
            },
            j_dw_dyle = {
                name = "{C:dw_dandy}Dyle Timesly{}",
                text = {
                    "Gains {X:red,C:white}X1{} Mult when",
                    "a {C:attention}Blind{} is selected.",
                    "{C:inactive}Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult{}"
                }
            },
            j_dw_tw_dyle = {
                name = "{C:dw_dandy}Twisted Dyle{}",
                text = {
                    "Gains {X:red,C:white}X2{} Mult when",
                    "a {C:attention}Blind{} is selected",
                    "{X:dark_edition,C:white}^1.1{} {X:red,C:white}XMult{} if a blind",
                    "is defeated in {C:attention}one hand{}",
                    "{C:inactive}Currently{} {X:red,C:white}X#1#{} {C:inactive}Mult{}"
                }
            },
            j_dw_yatta = {
                name = "Yatta",
                text = {
                    "Gives 3 Candy Consumables",
                    "when a {C:attention}Boss Blind{} is defeated.",
                    "{C:blue,s:0.8}#1#{}"
                }
            },
            j_dw_finn = {
                name = "Finn",
                text = {
                    "{C:red}+50{} Mult",
                    "At the end of the round,",
                    "{X:red,C:white}X3{} Mult for {C:blue}1 hand{}",
                    "{C:inactive}#1#{}"
                }
            },
            --[[j_dw_vee = {
                name = "Vee Version One",
                text = {
                    {
                        "Adds a new scoring window",
                    },
                    {
                        "Adds {X:dark_edition,C:white}(log(chips*mult)^0.1)-1{} to",
                        "Vee's scoring window",
                        "{C:green,s:0.85,E:1}#1#{}"
                    }
                }
            },]]
            j_dw_vee = {
                name = "Vee",
                text = {
                    "{C:attention}Booster Packs{} have",
                    "{C:attention}#2#{} extra items and",
                    "allows {C:attention}#1#{} more item",
                    "to be chosen",
                },
                unlock = {
                    "Skip a {C:attention}Mega",
                    "{C:attention}Spectral Pack",
                }
            },
            j_dw_shelly = {
                name = "Shelly Fossilian",
                text = {
                    "{X:dark_edition,C:white}X0.65{} Blind requirement",
                    "for every {C:attention}Joker{} you have"
                }
            },
            j_dw_blot = {
                name = "Blot",
                text = {
                    "{X:mult,C:white}^1.15{} Mult.",
                    "Create Blot Jr. when a {C:attention}Boss Blind{} is defeated."
                }
            },
            j_dw_blotjr = {
                name = "Blot Jr.",
                text = {
                    "{X:mult,C:white}X1.25{} Mult.",
                    "Destroyed after {C:attention}#1#{} Rounds."
                }
            },
            j_dw_gigi = {
                name = "Gigi",
                text = {
                    "Creates a random {C:attention}Joker{}",
                    "or {C:tarot}Consumable{} when",
                    "a {C:attentin}Blind{} is {C:attention}skipped{}"
                }
            },
            j_dw_barnaby = {
                name = "Barnaby Wilkers",
                text = {
                    "{X:dark_edition,C:white}^1.05{} Mult",
                    "{C:red}Destoryed{} if Finn is removed",
                    "{C:inactive}Cannot spawn if Finn is not in Joker slots{}"
                }
            },
            j_dw_tw_shelly = {
                name = "Twisted Shelly",
                text = {
                    "{X:default,C:attention}^0.8{} Score and {X:default,C:attention}^1.1{} Blind Requirement",
                    "when a hand is played,",
                    "{X:legendary,C:white}X2{} Chips and Mult for every {C:attention}Joker{}"
                }
            },
            j_dw_connie = {
                name = "Connie",
                text = {
                    "POSESSION!!!",
                    "{C:red}Ability not implemented!{}"
                }
            },
            j_dw_connie_alt = {
                name = "Boolynski",
                text = {
                    "Gourdy, you can't deadname Connie like that!"
                }
            },
            j_dw_tw_connie = {
                name = "Twisted Connie",
                text = {
                    "Gains {X:blue,C:white}X#1#{} Chips",
                    "for every {C:attention}Joker{} you have",
                    "{C:inactive}( Currently{} {X:blue,C:white}X#2#{} {C:inactive}Chips ){}",
                    "{C:inactive}( Currently{} {X:blue,C:white}/#3#{} {C:inactive}Mult ){}",
                }
            },
            j_dw_ipadkid = {
                name = "Toodles",
                text = {
                    {
                        "{C:green}#2# in #3#{} Chance to {C:attention}retrigger 8s{} #1# times."
                    },
                    {
                        "Gee I WONDER what her ability is referencing.",
                        "- Isotypical"
                    }
                }
            },
            j_dw_rabid_kid = {
                name = "Twisted Toodles",
                text = {
                    {
                        "Retriggers {C:attention}all{} scored cards {C:attention}#1#{} times",
                        "{C:attention}8s{} instead get retriggered {C:attention}#2#{} times"
                    },
                    {
                        "Alright Isotypical, {C:red}pack it up{}",
                        "with the {C:red}Almanac jokes.{}",
                    }
                }
            },
            j_dw_eclipse = {
                name = "Eclipse",
                text = {
                    "{C:green}#1# in #2#{} chance to disable a {C:attention}Boss Blind{}",
                    "{C:green}#3# in #4#{} chance to disable a {C:attention}Showdown Blind{}",
                    "{C:green}Guaranteed{} chance to disable {C:attention}Blackout{}"
                }
            },
            j_dw_gourdy = {
                name = "Gourdy Holloway",
                text = {
                    "{C:attention}Create{} a random Consumable at the end of round.",
                    "{C:attention}Create{} another when {C:attention}Boss Blind{} is defeated"
                }
            },
            --[[
            YOU. ARE. A. MINOR!!!
            also gonna add a prevention to weird mods like hotpot (nursery) and birthlatro
            ]]
            j_dw_iso = {
                name = "Solinium (Toon-ified)",
                text = {
                    {
                        "{X:red,C:white}XMult{} uses the equation",
                        "{X:dark_edition,C:white,s:1.3}n*(1+SCORE)^0.1{}",
                        "n is increased by {C:attention}+1{} when",
                        "a {C:attention}Blind{} is selected",
                        "{C:attention}n is currently: #1#{}",
                        "{C:inactive}Currently{} {X:red,C:white}X#2#{} {C:inactive}Mult{}",
                        "{C:dark_edition,s:0.8,E:1}Mod Origin : Isotypical's Junkyard{}",
                        "{C:dark_edition,s:0.8,E:1}Character : Solinium{}",
                        "{C:dark_edition,s:0.8,E:1}Character Origin : Dog Man{}"
                    },
                }
            },
            j_dw_iso_bullshit = {
                name = "{f:dw_balling}Solinium (Toon-ified){}",
                text = {
                    {
                        "{f:dw_balling}Health{}",
                        "{f:dw_balling}<3{}"
                    },
                    {
                        "{f:dw_balling}Skill Check{}",
                        "{f:dw_balling}(*)(*)(*)(*)(*){}"
                    },
                    {
                        "{f:dw_balling}Movement Speed{}",
                        "{f:dw_balling}(*)(*)(*)(*){}"
                    },
                    {
                        "{f:dw_balling}Stamina{}",
                        "{f:dw_balling}(*)(*)(*){}"
                    },
                    {
                        "{f:dw_balling}Stealth{}",
                        "{f:dw-balling}What's that?{}",
                        "{f:dw_balling}(*){}"
                    },
                    {
                        "{f:dw_balling}Extraction Speed{}",
                        "{f:dw_balling}(*)(*)(*)(*)(*){}"
                    },
                }
            },
            j_dw_tw_iso = {
                name = "Twisted Solinium",
                text = {
                    "At the end of the round",
                    "your {C:attention}Score{} is converted to {C:money}Money{}",
                    "with the equation {X:dark_edition,C:white}log(n^0.1){}",
                    "{C:inactive}(Rounded up){}"
                }
            },
            j_dw_fireice = {
                name = "FireIce",
                text = {
                    "{X:dark_edition,C:white}^Chips{} scales with the equation of",
                    "{X:dark_edition,C:white}(((2n^2+4)/(2+n))/0.25)/8{}",
                    "{C:inactive}Currently{} {X:dark_edition,C:white}^#1#{} {C:inactive}Chips{}",
                    "{C:dark_edition,s:0.8,E:1}Mod Origin : Balatro Dash{}",
                }
            },
            j_dw_aberrantfireice = {
                name = "'Aberrant' FireIce",
                text = {
                    "{C:purple,E:1,s:3.5}?????{}"
                }
            },
            j_dw_cone = {
                name = "Traffic Cone",
                text = {
                    "Prevents {C:attention}Twisted Debuffs{} from applying"
                }
            },
            j_dw_pebble = {
                name = "Pebble",
                text = {
                    "Halves {C:attention}Blind{}",
                    "requirement",
                },
                unlock = {
                    "Discover through",
                    "the {C:attention}Ticket Tag"
                },
            },
            j_dw_brick = {
                name = "Brick",
                text = {
                    "{X:default,C:white}X0.8{} Chips and Mult"
                }
            },
            j_dw_rodger = {
                name = "Rodger",
                text = {
                    "Every Joker gives {X:red,C:white}X1.1{} Mult",
                    "{C:inactive}Some blinds give jokers now...{}"
                }
            },
            j_dw_eggson = {
                name = "Eggson",
                text = {
                    "im old!",
                    "Gives {C:attention}1/10th{} of {C:attention}Blind Requirement{}",
                    "as {C:chips}+Chips{}"
                }
            }
        },
        Other = {},
        item = {
            c_dw_valve = {
                name = "Valve",
                text = {
                    {
                        "While extracting a Machine, instantly completes it upon use.",
                        "{C:inactive,s:0.8}(Cannot be used when not extracting a Machine.)"
                    },
                    {
                        "On use, {C:attention}instantly win Blind"
                    }
                }
            },
            c_dw_baskets = {
                name = "Baskets",
                text = {
                    {
                        "{C:green}1 in 4{} chance to create an {C:attention}Easter{} toon",
                    },
                    {
                        "NOT IMPLEMENTED"
                    }
                }
            },
            c_dw_ornaments = {
                name = "Ornaments",
                text = {
                    {
                        "{C:green}1 in 4{} chance to create a {C:attention}Christmas{} toon",
                    },
                    {
                        "NOT IMPLEMENTED"
                    }
                }
            },
            c_dw_pumpkins = {
                name = "Pumpkins",
                text = {
                    {
                        "{C:green}1 in 4{} chance to create a {C:attention}Halloween{} toon",
                    },
                    {
                        "NOT IMPLEMENTED"
                    }
                }
            },
        },
        candy = {
            c_dw_speed = {
                name = "Speed Candy",
                text = {
                    {
                        "Upon use, increases {C:attention}Walk{} and {C:attention}Run Speed{} by 25% for 5 seconds."
                    },
                    {
                        "On use, {C:money}+4${}"
                    }
                }
            },
            c_dw_stamina = {
                name = "Stamina Candy",
                text = {
                    {
                        "Upon use, increases {C:green}Stamina Regeneration{} by 50% for 20 seconds."
                    },
                    {
                        "On use, gain {C:blue}+1{} Hand"
                    }
                }
            },
            c_dw_stealth = {
                name = "Stealth Candy",
                text = {
                    {
                        "Upon use, increases {C:blue}Stealth{} by 25% for 8 seconds."
                    },
                    {
                        "On use, {X:attention,C:white}X0.95{} Blind Requirement"
                    }
                }
            },
            c_dw_extract = {
                name = "Extraction Speed Candy",
                text = {
                    {
                        "While extracting a machine,",
                        "increases {C:purple}Extraction Speed{} by 50% for 5 seconds upon use."
                    },
                    {
                        "Create 2 {C:dark_edition}Negative {C:tarot}Tarots"
                    }
                }
            },
        },
        Planet = {},
        Spectral = {},
        Stake = {},
        Tag = {
            tag_dw_heart = {
                name = "Heart",
                text = {
                    "Saves user from 1 Gameover"
                }
            },
            tag_dw_broken_heart = {
                name = "Ichor Heart",
                text = {
                    "Upon obtaining, immediately",
                    "uses up 1 heart {C:inactive}(If Possible){}",
                    "If you have 3 Ichor Hearts, die."
                }
            }
        },
        Tarot = {},
        Voucher = {},
    },
    misc = {
        achievement_descriptions = {},
        achievement_names = {},
        blind_states = {},
        challenge_names = {},
        collabs = {},
        dictionary = {

            k_dw_yatta_quote1 = "PHEW! Good thing my tail hasn't been TANGLED!",
            k_dw_yatta_quote2 = "Did I drop candy ANYWHERE in the elevator?",
            k_dw_yatta_quote3 = "AHAHAHAaaa... Thought of something funny!",
            k_dw_yatta_quote4 = "Candy candy caNDY, CANDY FOR ALL!!!",

            k_dw_finn_complete1 = "Hook, line and sinker!",
            k_dw_finn_complete2 = "I was born to fish, not to play cards!", -- i claim credit for this quote (fireice)
            k_dw_finn_complete3 = "It's as shrimp-le as that!",
            k_dw_finn_complete4 = "That wasn't very clam-plicated!",


            k_dw_trinketjoker = "Trinket",
            k_dw_itemjoker = "Item",
            k_dw_twisted_common = "Twisted Common",
            k_dw_twisted_uncommon = "Twisted Uncommon",
            k_dw_twisted_rare = "Twisted Rare",
            k_dw_twisted_legendary = "Twisted Legendary",
            k_dw_twisted_lethal = "Lethal",
            k_dw_omega = "Absurd",
            k_dw_fatal = "Fatal",

            k_dw_blotyap1 = "Jr. Incoming!",
            k_dw_blotyap2 = "!em inim A",

            k_dw_veespeak1 = "This would be the perfect time for a commercial!",
            k_dw_veespeak2 = "Question 1: Is this a waste of my time? Probably.",
            k_dw_veespeak3 = "As simple as binary code!",
            k_dw_veespeak4 = "I bet Dandy couldn't do this!",

            k_dw_dandy_stage1_1 = "So no items? That's ok! I'll be back!",
            k_dw_dandy_stage1_2 = "I'll have a better stock next time!",
            k_dw_dandy_stage1_3 = "Short on money? Don't worry! I'm sure you'll have some more later!",
            k_dw_dandy_stage1_4 = "Saving your money I see, no need to worry! I'll be back with more items!",

            k_dw_dandy_stage2_1 = "Surely there's something wrong, right?",
            k_dw_dandy_stage2_2 = "We're friends here, right?",
            k_dw_dandy_stage2_3 = "Friend...?",
            k_dw_dandy_stage2_4 = "Was it something I said?",
            k_dw_dandy_stage2_5 = "Surely you must be saving your money for me...",
            k_dw_dandy_stage2_6 = "What is happening...?",

            k_dw_dandy_stage3_1 = "Be that way.",
            k_dw_dandy_stage3_2 = "You don't need my help? FINE.",
            k_dw_dandy_stage3_3 = "......",
            k_dw_dandy_stage3_4 = "You're REALLY upsetting me now.",
            k_dw_dandy_stage3_5 = "You're making a big mistake.",
            k_dw_dandy_stage3_6 = "That money was never yours.",
            k_dw_dandy_stage3_7 = "You're REALLY making me upset right now.",

            k_dw_dandy_buy_1 = "Oooh! Good choice!",
            k_dw_dandy_buy_2 = "Yippee!",
            k_dw_dandy_buy_3 = "Fantastic!",
            k_dw_dandy_buy_4 = "Thanks for the money!",
            k_dw_dandy_buy_5 = "Pleasure doin' business! Hehe!",
            k_dw_dandy_buy_6 = "I'm sure you'll make great use of that!",

            k_dw_dandy_stage3_buy_1 = "For a second I thought you were ignoring me!",
            k_dw_dandy_stage3_buy_2 = "Now that's more like it.",
            k_dw_dandy_stage3_buy_3 = "Finally.",
            k_dw_dandy_stage3_buy_4 = "Good choice on your part.",
            k_dw_dandy_stage3_buy_5 = "About time.",
            k_dw_dandy_stage3_buy_6 = "Heh, you had me worried there for a second.",

            k_candy = "Candy",
            b_candy_cards = "Candies",
            k_item = "Item",
            b_item_cards = "Items",
            k_trinket = "Trinket",
            b_trinket_cards = "Trinkets",

            k_toodles_speak1 = "Hehehe!",
            k_toodles_speak2 = "Here I go!",
            k_toodles_speak3 = "Lucky me!",
            k_toodles_speak4 = "I'm helping!",
            k_toodles_speak5 = "Again! Again!",
            k_toodles_speak6 = "Come on! Let's go!",

            k_gourdyspeak1 = "Yay!! Hehehe!",
            k_gourdyspeak2 = "Trick or Treat!",

            dw_rnd_odd = 'Odd',
            dw_rnd_even = 'Even',

        },
        high_scores = {},
        labels = {
            dw_trinketjoker = "Trinket",
            dw_itemjoker = "Item",
            dw_twisted_common = "Twisted Common",
            dw_twisted_uncommon = "Twisted Uncommon",
            dw_twisted_rare = "Twisted Rare",
            dw_twisted_legendary = "Twisted Legendary",
            dw_twisted_lethal = "Lethal",
            dw_omega = "Absurd",
            dw_fatal = "Fatal"
        },
        poker_hand_descriptions = {},
        poker_hands = {},
        quips = {},
        ranks = {},
        suits_plural = {},
        suits_singular = {},
        tutorial = {},
        v_dictionary = {},
        v_text = {},
    },
}
