Gardenview = SMODS.current_mod
GRDNVW_UTIL = {}

SMODS.Font({
    key = 'fredokaone',
    path = 'dwfont.ttf',
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
assert(SMODS.load_file("items/atlas.lua"))() -- Atlases

load_from_folder("items/backs") -- Decks
load_from_folder("items/rarity") -- Rarities
load_from_folder("items/tags") -- Tags
load_from_folder("items/misc") -- Misc
load_from_folder("items/editions") -- Editions
assert(SMODS.load_file("load/blinds.lua"))() -- Blinds
assert(SMODS.load_file("load/jokers.lua"))() -- Jokers
assert(SMODS.load_file("load/consumables.lua"))() -- Blinds

Gardenview.Colours = {
    points = darken(HEX("b4f2b6"), 0.2),
}
for key, value in pairs(Gardenview.Colours) do G.ARGS.LOC_COLOURS['dw_' .. key:lower()] = value end
