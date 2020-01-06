local _, private = ...

-- Lua Globals --
-- luacheck: globals tinsert ipairs

-- RealUI --
local Inventory = private.Inventory

private.filters = {}
private.filterList = {}
local function CreateFilter(tag, info)
    private.filters[tag] = info
    tinsert(private.filterList, tag)
end

CreateFilter("junk", {
    name = _G.BAG_FILTER_JUNK,
    rank = -1,
    filter = function(slot)
        local _, _, _, quality, _, _, _, _, noValue = _G.GetContainerItemInfo(slot:GetBagAndSlot())
        return quality == _G.LE_ITEM_QUALITY_POOR and not noValue
    end,
})

CreateFilter("consumables", {
    name = _G.AUCTION_CATEGORY_CONSUMABLES,
    rank = 1,
    filter = function(slot)
        local _, _, _, _, _, typeID = _G.GetItemInfoInstant(slot.item:GetItemID())
        return typeID == _G.LE_ITEM_CLASS_CONSUMABLE
    end,
})

CreateFilter("questitems", {
    name = _G.AUCTION_CATEGORY_QUEST_ITEMS,
    rank = 0,
    filter = function(slot)
        local _, _, _, _, _, typeID = _G.GetItemInfoInstant(slot.item:GetItemID())
        return typeID == _G.LE_ITEM_CLASS_QUESTITEM
    end,
})

local prefix = _G.BAG_FILTER_TRADE_GOODS .. ": %s"
local tradegoods
if Inventory.isPatch then
    tradegoods = _G.C_AuctionHouse.GetAuctionItemSubClasses(_G.LE_ITEM_CLASS_TRADEGOODS)
else
    tradegoods = {_G.GetAuctionItemSubClasses(_G.LE_ITEM_CLASS_TRADEGOODS)}
end

for i = 1, #tradegoods do
    local subClassID = tradegoods[i]
    local name = _G.GetItemSubClassInfo(_G.LE_ITEM_CLASS_TRADEGOODS, subClassID)
    CreateFilter("tradegoods_"..subClassID, {
        name = prefix:format(name),
        rank = 2,
        filter = function(slot)
            local _, _, _, _, _, typeID, subTypeID = _G.GetItemInfoInstant(slot.item:GetItemID())
            return typeID == _G.LE_ITEM_CLASS_TRADEGOODS and subTypeID == subClassID
        end,
    })
end

CreateFilter("equipment", {
    name = _G.BAG_FILTER_EQUIPMENT,
    rank = 1,
    filter = function(slot)
        local _, _, _, _, _, typeID = _G.GetItemInfoInstant(slot.item:GetItemID())
        return typeID == _G.LE_ITEM_CLASS_ARMOR or typeID == _G.LE_ITEM_CLASS_WEAPON
    end,
})


local travel = {
    -- General
    [140493] = true,     -- Adept's Guide to Dimensional Rifting
    [128353] = true,     -- Admiral's Compass
    [129276] = true,     -- Beginner's Guide to Dimensional Rifting
    [118662] = true,     -- Bladespire Relic
    [140192] = true,     -- Dalaran Hearthstone
    [35230] = true,      -- Darnarian's Scroll of Teleportation
    [37863] = true,      -- Direbrew's Remote
    [117389] = true,     -- Draenor Archaeologist's Lodstone
    [138448] = true,     -- Emblem of Margoss
    [141605] = true,     -- Flight Master's Whistle
    [110560] = true,     -- Garrison Hearthstone
    [156927] = true,     -- Great Hall Recall
    [6948] = true,       -- Hearthstone
    [128502] = true,     -- Hunter's Seeking Crystal
    [132517] = true,     -- Intra-Dalaran Wormhole Generator
    [52251] = true,      -- Jaina's Locket
    [64457] = true,      -- The Last Relic of Argus
    [87548] = true,      -- Lorewalker's Lodestone
    [21711] = true,      -- Lunar Festival Invitation
    [128503] = true,     -- Master Hunter's Seeking Crystal
    [58487] = true,      -- Potion of Deepholm
    [92057] = true,      -- Portal Fuel: Orgrimmar
    [92058] = true,      -- Portal Fuel: Shrine of Two Moons
    [92056] = true,      -- Portal Fuel: Sparkrocket Outpost
    [92430] = true,      -- Portal Reagents: Shrine of Seven Stars
    [92432] = true,      -- Portal Reagents: Skyfire
    [92431] = true,      -- Portal Reagents: Stormwind
    [118663] = true,     -- Relic of Karabor
    [18149] = true,      -- Rune of Recall | H
    [18150] = true,      -- Rune of Recall | A
    [37118] = true,      -- Scroll of Recall
    [44314] = true,      -- Scroll of Recall II
    [44315] = true,      -- Scroll of Recall III
    [139590] = true,     -- Scroll of Teleport: Ravenholdt
    [142543] = true,     -- Scroll of Town Portal
    [141016] = true,     -- Scroll of Town Portal: Faronaar
    [141015] = true,     -- Scroll of Town Portal: Kal'delar
    [141017] = true,     -- Scroll of Town Portal: Lian'tril
    [141014] = true,     -- Scroll of Town Portal: Sashj'tar
    [141013] = true,     -- Scroll of Town Portal: Shala'nir
    [29796] = true,      -- Socrethar's Teleportation Stone
    [147870] = true,     -- Strange Dimensional Shard
    [167075] = true,     -- Ultrasafe Transporter: Mechagon

    -- Weapons/Armor
    [46874] = true,      -- Argent Crusader's Tabard
    [22589] = true,      -- Atiesh, Greatstaff of the Guardian | Mage
    [22630] = true,      -- Atiesh, Greatstaff of the Guardian | Warlock
    [22631] = true,      -- Atiesh, Greatstaff of the Guardian | Priest
    [22632] = true,      -- Atiesh, Greatstaff of the Guardian | Druid
    [63379] = true,      -- Baradin's Wardens Tabard
    [50287] = true,      -- Boots of the Bay
    [64360] = true,      -- Cloak of Coordination | A
    [65274] = true,      -- Cloak of Coordination | H
    [71086] = true,      -- Dragonwrath, Tarecgosa's Rest
    [63378] = true,      -- Hellscream's Reach Tabard
    [28585] = true,      -- Ruby Slippers
    [63352] = true,      -- Shroud of Cooperation | A
    [63353] = true,      -- Shroud of Cooperation | H
    [63206] = true,      -- Wrap of Unity | A
    [63207] = true,      -- Wrap of Unity | H

    -- Jewelry
    [40586] = true,      -- Band of the Kirin Tor
    [32757] = true,      -- Blessed Medallion of Karabor
    [95050] = true,      -- The Brassiest Knuckle | H
    [95051] = true,      -- The Brassiest Knuckle | A
    [166560] = true,     -- Captain's Signet of Command
    [166559] = true,     -- Commander's Signet of Battle
    [139599] = true,     -- Empowered Ring of the Kirin Tor
    [48954] = true,      -- Etched Band of the Kirin Tor
    [48955] = true,      -- Etched Loop of the Kirin Tor
    [48956] = true,      -- Etched Ring of the Kirin Tor
    [48957] = true,      -- Etched Signet of the Kirin Tor
    [17690] = true,      -- Frostwolf Insignia Rank 1
    [17905] = true,      -- Frostwolf Insignia Rank 2
    [17906] = true,      -- Frostwolf Insignia Rank 3
    [17907] = true,      -- Frostwolf Insignia Rank 4
    [17908] = true,      -- Frostwolf Insignia Rank 5
    [17909] = true,      -- Frostwolf Insignia Rank 6
    [45688] = true,      -- Inscribed Band of the Kirin Tor
    [45689] = true,      -- Inscribed Loop of the Kirin Tor
    [45690] = true,      -- Inscribed Ring of the Kirin Tor
    [45691] = true,      -- Inscribed Signet of the Kirin Tor
    [44934] = true,      -- Loop of the Kirin Tor
    [118907] = true,     -- Pit Fighter's Punching Ring | A
    [118908] = true,     -- Pit Fighter's Punching Ring | H
    [144391] = true,     -- Pugilist's Powerful Punching Ring | A
    [144392] = true,     -- Pugilist's Powerful Punching Ring | H
    [44935] = true,      -- Ring of the Kirin Tor
    [51560] = true,      -- Runed Band of the Kirin Tor
    [51558] = true,      -- Runed Loop of the Kirin Tor
    [51559] = true,      -- Runed Ring of the Kirin Tor
    [51557] = true,      -- Runed Signet of the Kirin Tor
    [40585] = true,      -- Signet of the Kirin Tor
    [17691] = true,      -- Stormpike Insignia Rank 1
    [17900] = true,      -- Stormpike Insignia Rank 2
    [17901] = true,      -- Stormpike Insignia Rank 3
    [17902] = true,      -- Stormpike Insignia Rank 4
    [17903] = true,      -- Stormpike Insignia Rank 5
    [17904] = true,      -- Stormpike Insignia Rank 6
    [103678] = true,     -- Time-Lost Artifact
    [142469] = true,     -- Violet Seal of the Grand Magus

    -- Mounts
    [44221] = true,      -- Loaned Gryphon Reins
    [44229] = true,      -- Loaned Wind Rider Reins
    [37011] = true,      -- Magic Broom

    -- Toys
    [166747] = true,     -- Brewfest Reveler's Hearthstone
    [93672] = true,      -- Dark Portal
    [30542] = true,      -- Dimensional Ripper - Area 52
    [18984] = true,      -- Dimensional Ripper - Everlook
    [172179] = true,     -- Eternal Traveler's Hearthstone
    [54452] = true,      -- Ethereal Portal
    [129929] = true,     -- Ever-Shifting Mirror
    [166746] = true,     -- Fire Eater's Hearthstone
    [151016] = true,     -- Fractured Necrolyte Skull
    [169298] = true,     -- Frostwolf Insignia
    [162973] = true,     -- Greatfather Winter's Hearthstone
    [163045] = true,     -- Headless Horseman's Hearthstone
    [168907] = true,     -- Holographic Digitalization Hearthstone
    [64488] = true,      -- The Innkeeper's Daughter
    [95567] = true,      -- Kirin Tor Beacon
    [165669] = true,     -- Lunar Elder's Hearthstone
    [140324] = true,     -- Mobile Telemancy Beacon
    [136849] = true,     -- Nature's Beacon
    [165802] = true,     -- Noble Gardener's Hearthstone
    [165670] = true,     -- Peddlefeet's Lovely Hearthstone
    [43824] = true,      -- The Schools of Arcane Magic - Mastery
    [169297] = true,     -- Stormpike Insignia
    [95568] = true,      -- Sunreaver Beacon
    [142542] = true,     -- Tome of Town Portal
    [18986] = true,      -- Ultrasafe Transporter: Gadgetzan
    [30544] = true,      -- Ultrasafe Transporter: Toshley's Station
    [112059] = true,     -- Wormhole Centrifuge
    [151652] = true,     -- Wormhole Generator: Argus
    [48933] = true,      -- Wormhole Generator: Northrend
    [87215] = true,      -- Wormhole Generator: Pandaria
}
CreateFilter("travel", {
    name = _G.TUTORIAL_TITLE35,
    rank = 0,
    filter = function(slot)
        return travel[slot.item:GetItemID()]
    end,
})

