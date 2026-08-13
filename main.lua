SMODS.Atlas {
    key = 'modicon',
    px = 34,
    py = 34,
    path = 'dwicon.png'
}

SMODS.Atlas {
    key = 'dw',
    px = 71,
    py = 95,
    path = 'dandysworld.png'
}

SMODS.Atlas {
    key = 'dwJoker',
    px = 71,
    py = 95,
    path = 'jokers.png'
}

SMODS.Atlas {
    key = 'dwTag',
    px = 34,
    py = 34,
    path = 'dwTags.png'
}

SMODS.Atlas{
    key = 'dwBlind',
    path = "dwBlinds.png",
    atlas_table = 'ANIMATION_ATLAS',
    frames = 1,
    px = 34,
    py = 34
}

SMODS.Atlas {
    key = 'isojoker',
    px = 71,
    py = 95,
    path = 'isojunk_crossmod_jokers.png'
}
SMODS.Atlas {
    key = 'blinds',
    px = 34,
    py = 34,
    path = 'blinds.png',
    atlas_table = 'ANIMATION_ATLAS',
    frames = 21
}

SMODS.Atlas {
    key = 'dashjoker',
    px = 71,
    py = 95,
    path = 'balaladash_crossmod_jokers.png'
}

SMODS.Font({
    key = 'balling',
    path = 'dwfont.ttf ',
    render_scale = 200,             -- Base size in pixels (default: 200)
    TEXT_HEIGHT_SCALE = 0.83,       -- Line spacing (default: 0.83)
    TEXT_OFFSET = { x = 0, y = 0 }, -- Alignment tweak (default: {0,0})
    FONTSCALE = 0.1,                -- Scale multiplier (default: 0.1)
    squish = 1,                     -- Horizontal stretch (default: 1)
    DESCSCALE = 1                   -- Description scale (default: 1)
})

local function load_from_folder(path, all_items)
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. path .. "/"

    local files
    if all_items then
        files = NFS.getDirectoryItems(blinds)
    else   
        files = NFS.getDirectoryItemsInfo(blinds)
    end

    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. "/" .. file_name))()
        end
    end
end

function SMODS.current_mod.calculate(self, context)
end
function SMODS.current_mod.reset_game_globals(run_start)
end

assert(SMODS.load_file("ui.lua"))()
load_from_folder("items/rarity") -- Rarities
load_from_folder("items/jokers") -- Jokers
load_from_folder("items/blinds") -- Blinds
load_from_folder("items/consumables") -- Consumables
load_from_folder("items/tags") -- Tags
load_from_folder("items/trinkets") -- Trinkets
load_from_folder("items/misc") -- Misc