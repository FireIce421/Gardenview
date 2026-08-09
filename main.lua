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

local src = NFS.getDirectoryItems(SMODS.current_mod.path .. "items/jokers/")
for _, file in ipairs(src) do
    assert(SMODS.load_file("items/jokers/" .. file))()
end


local function blindbs()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/blinds"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/blinds/" .. file_name))()
        end
    end
end

local function misc()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/misc"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/misc/" .. file_name))()
        end
    end
end

local function consume()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/consumables"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/consumables/" .. file_name))()
        end
    end
end

local function tag()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/tags"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/tags/" .. file_name))()
        end
    end
end

local function trinketjoker()
    local mod_path = SMODS.current_mod.path
    local blinds = mod_path .. "items/trinkets"
    local files = NFS.getDirectoryItemsInfo(blinds)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("items/trinkets/" .. file_name))()
        end
    end
end

tag()
blindbs()
consume()
misc()
trinketjoker()
