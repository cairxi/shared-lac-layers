local layers = gFunc.LoadFile('layers/layers.lua')
local sets = layers.Sets

--  __          __        _      _____         _____                                   
--  \ \        / /       | |    |_   _|       |  __ \                                  
--   \ \  /\  / /__  _ __| | __   | |  _ __   | |__) | __ ___   __ _ _ __ ___  ___ ___ 
--    \ \/  \/ / _ \| '__| |/ /   | | | '_ \  |  ___/ '__/ _ \ / _` | '__/ _ \/ __/ __|
--     \  /\  / (_) | |  |   <   _| |_| | | | | |   | | | (_) | (_| | | |  __/\__ \__ \
--      \/  \/ \___/|_|  |_|\_\ |_____|_| |_| |_|   |_|  \___/ \__, |_|  \___||___/___/
--                                                              __/ |                  
--                                                             |___/      

local melee = layers.CreateModeGroup('Melee', {'Off', 'Melee'}, '+m')
local resists = layers.CreateModeGroup('Resist', {'Off','Lightning'},'+r')
local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local weapon = layers.CreateModeGroup('Weapon', {'Vulcan','Terra','Club', 'Dagger'},'m')
local acc = layers.CreateModeGroup('Accuracy', {'Accuracy','Off'},'+1')
local enmity = layers.CreateModeGroup('Enmity', {'Off','Enmity'},'i')
local bolts = layers.CreateModeGroup('Bolts', {'Off','Acid','Sleep','Bloody'},'+b')
local bullets = layers.CreateModeGroup('Bullets', {'Off','Bronze'},'b')
local ranged = layers.CreateModeGroup('Ranged', {'Gun','Crossbow'},'t')

local Default = {
    Head = "Dream Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = {{ Name = "Tracker's Earring", When = "Player HPP < 25"},
            { Name = "Merman's Earring" }},
    Ear2 = "Merman's Earring",
    Body = "Cor. Scale Mail +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Hands = "Merman's Bangles",
    Back = "Shadow Mantle",
    Waist = "Steppe Sash",
    Legs = "Blood Cuisses",
    Feet = "Coral Greaves +1",
}

local PDT = {
    Head = "Dream Ribbon",
    Ear1 = {{ Name = "Tracker's Earring", When = "Player HPP < 25"},
            { Name = "Cassie Earring" }},
    Ring2 = "Jelly Ring",
    Back = "Shadow Mantle",
    Waist = "Steppe Sash",
}

local MDT = {
    Head = "Dream Ribbon",
    Ear1 = {{ Name = "Tracker's Earring", When = "Player HPP < 25 && PDT"},
            { Name = "Merman's Earring" }},
    Ear2 = "Merman's Earring",
    Body = "Cor. Scale Mail +1",
    Hands = "Merman's Bangles",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = {{ Name = "Resentment Cape", When = "Outside Nation Control" },
            { Name = "Shadow Mantle" }},
    Legs = "Coral Cuisses +1",
    Feet = "Coral Greaves +1",
}

local Lightning = {
    Head = "Dream Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Robust Earring +1",
    Ear2 = "Robust Earring +1",
    Body = "Kirin's Osode",
    Hands = "Merman's Bangles",
    Ring1 = "Adroit Ring",
    Ring2 = "Adroit Ring",
    Back = {{ Name = "Resentment Cape", When = "Outside Nation Control" },
            { Name = "Shadow Mantle" }},
    Waist = "Earth Belt",
    Legs = "Byakko's Haidate",
    Feet = "Trotter Boots",
}

sets.Club.Idle = { Main = "Octave Club" }
sets.Vulcan.Idle = { Main = "Vulcan's Staff" }
sets.Terra.Idle = { Main = "Terra's Staff" }
sets.Dagger.Idle = { Main = "Hawker's Knife +1", Sub = { Name = "Hawker's Knife +1", When = "Player Subjob == Ninja" }} 
sets.Crossbow.Idle = { Range = "Othinus' Bow", Ammo = "Remove" }
sets.Gun.Idle = { Range = "Annihilator", Ammo = "Remove" }

sets.Idle = Default
sets.PDT.Idle = PDT
sets.MDT.Idle = MDT
sets.Lightning.Idle = Lightning

sets.Engaged = Default
sets.PDT.Engaged = PDT
sets.MDT.Engaged = MDT
sets.Lightning.Engaged = Lightning
sets.Vulcan.Engaged = sets.Vulcan.Idle
sets.Terra.Engaged = sets.Terra.Idle
sets.Club.Engaged = sets.Club.Idle
sets.Dagger.Engaged = sets.Dagger.Idle
sets.Crossbow.Engaged = sets.Crossbow.Idle
sets.Gun.Engaged = sets.Gun.Idle

sets.Melee.Engaged = {
    Neck = { Name = "Prudence Torque", When = "Club" },
    Ear1 = { Name = "Brutal Earring", When = "~Club" },
    Ear2 = { Name = "Wyvern Earring", When = "Player Subjob == Dragoon" },
    Hands = "Dusk Gloves",
    Ring1 = "Toreador's Ring",
    Ring2 = "Toreador's Ring",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate",
}

sets.Resting = Default
sets.PDT.Resting = PDT
sets.MDT.Resting = MDT
sets.Lightning.Resting = Lightning
sets.Vulcan.Resting = sets.Vulcan.Idle
sets.Terra.Resting = sets.Terra.Idle
sets.Club.Resting = sets.Club.Idle
sets.Dagger.Resting = sets.Dagger.Idle
sets.Crossbow.Resting = sets.Crossbow.Idle
sets.Gun.Resting = sets.Gun.Idle


sets.Preshot = {
    Head = "Hunter's Beret",
    Body = "Sct. Jerkin +1",
}

sets.Interimshot = Default
sets.PDT.Interimshot = MDT
sets.MDT.Interimshot = PDT
sets.Lightning.Interimshot = Lightning

sets.Crossbow.Preshot = {
    Ammo = {{ Name = "Acid Bolt", When = "Acid" },
            { Name = "Sleep Bolt", When = "Sleep" },
            { Name = "Bloody Bolt", When = "Bloody" },
            { Name = "Darksteel Bolt" }}
}

sets.Gun.Preshot = {
    Ammo = {{ Name = "Bronze Bullet", When = "Bronze" },
            { Name = "Silver Bullet" }}
}

sets.Midshot = {
    Head = "Scout's Beret",
    Neck = "Faith Torque",
    Ear1 = "Tmph. Earring +1",
    Ear2 = "Novia Earring",
    Body = "Kirin's Osode",
    Hands = {{ Name = "Htr. Bracers +1", When = "Player Status Effect == Barrage" },
             { Name = "Blood Fng. Gnt."}},
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Amemet Mantle +1",
    Waist = "Scout's Belt",
    Legs = "Sct. Braccae +1",
	Feet = "Sct. Socks +1",
}

sets.Gun.Midshot = {
    Ear1 = { Name = "Brutal Earring", When = "Player TP < 1000"}
}

local AccItems = {
    TP = {},
    WS = {},
}

sets.Accuracy.Midshot = { 
    Head = { Name = "War Beret +1", When = function() return AccItems.TP.Head end },       -- 9
    Body = { Name = "Htr. Jerkin +1", When = function() return AccItems.TP.Body end },     -- 7
    Hands = {{ Name = "Htr. Bracers +1", When = "Player Status Effect == Barrage" },
             { Name = "Seiryu's Kote", When = function() return AccItems.TP.Hands end }},  -- 6.5
    Ring1 = { Name = "Merman's Ring", When = function() return AccItems.TP.Ring1 end},     -- 10
    Ring2 = { Name = "Merman's Ring", When = function() return AccItems.TP.Ring2 end},     -- 10
    Back = { Name = "Jaeger Mantle", When = function() return AccItems.TP.Back end},       -- 20
}

local EnmityDown = {
	Head = "Scout's Beret",
	Ear2 = "Novia Earring",
	Body = "Sct. Jerkin +1",
	Legs = "Sct. Braccae +1",
	Feet = "Sct. Socks +1",
}

sets.Enmity.Midshot = EnmityDown

sets.Weaponskill = {
    Head = "Voyager Sallet",
    Neck = "Faith Torque",
    Ear1 = "Tmph. Earring +1",
    Ear2 = "Tmph. Earring +1",
    Body = "Kirin's Osode",
    Hands = "Blood Fng. Gnt.",
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Amemet Mantle +1",
    Waist = {{ Name = "R.K. Belt +2", When = "Inside Nation Control" },
             { Name = "Scout's Belt" }},
    Legs = "Sct. Braccae +1",
    Feet = "Sct. Socks +1"
}

sets.Weaponskill['Slug Shot'] = {
    Neck = "Breeze Gorget",
    Waist = "Scout's Belt",
}

sets.Weaponskill.Coronach = {
    Neck = "Breeze Gorget",
    Legs = "Byakko's Haidate",
}

sets.Gun.Weaponskill = {
    Ammo = {{ Name = "Silver Bullet", When = "Player Status Effect == Unlimited Shot" }, -- Carapace Placeholder
            { Name = "Silver Bullet" }}
}

sets.Accuracy.Weaponskill = { 
    Head = { Name = "War Beret +1", When = function() return AccItems.WS.Head end },       -- 9
    Body = { Name = "Htr. Jerkin +1", When = function() return AccItems.WS.Body end },     -- 7
    Hands = {{ Name = "Htr. Bracers +1", When = "Player Status Effect == Barrage" },
             { Name = "Seiryu's Kote", When = function() return AccItems.WS.Hands end }},  -- 6.5
    Ring1 = { Name = "Merman's Ring", When = function() return AccItems.WS.Ring1 end},     -- 10
    Ring2 = { Name = "Merman's Ring", When = function() return AccItems.WS.Ring2 end},     -- 10
    Back = { Name = "Jaeger Mantle", When = function() return AccItems.WS.Back end},       -- 20
}

sets.Accuracy.Weaponskill['Slug Shot'] = sets.Accuracy.Midshot

sets.Crossbow.Weaponskill = { Ammo = "Darksteel Bolt" }

sets.Ability = EnmityDown
sets.Ability.Shadowbind = { Hands = "Hunter's Bracers" }
sets.Crossbow.Ability = { Ammo = "Acid Bolt" }
sets.Gun.Ability = { Ammo = "Silver Bullet" }
sets.Ability.Sharpshot = { Legs = "Hunter's Braccae" }
sets.Ability.Scavenge = { Feet = "Hunter's Socks" }
sets.Ability.Camouflage = { Body = "Htr. Jerkin +1" }

sets.Ability['Eagle Eye Shot'] = sets.Midshot
sets.Enmity.Ability['Eagle Eye Shot'] = EnmityDown

sets.Precast = { Ear1 = "Loquac. Earring" }

sets.Midcast = {
    Ear1 = "Loquac. Earring",
    Hands = "Dusk Gloves",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate"
}

sets.Midcast.Sneak = { Back = "Skulker's Cape", Feet = "Dream Boots +1" }
sets.Midcast.Invisible = { Back = "Skulker's Cape", Hands = "Dream Mittens +1" }
sets.Midcast.Tonko = { Back = "Skulker's Cape", Hands = "Dream Mittens +1" }

local thresholds = {
    { Acc = 0 },
    { Acc = 10, Ring1 = true },
    { Acc = 20, Ring1 = true, Ring2 = true },
    { Acc = 27, Ring1 = true, Ring2 = true, Hands = true },
    { Acc = 36, Ring1 = true, Ring2 = true, Hands = true, Head = true },
    { Acc = 43, Ring1 = true, Ring2 = true, Hands = true, Head = true, Body = true },
    -- { Acc = 46, Ring1 = true, Hands = true, Head = true, Back = true },
    -- { Acc = 56, Ring1 = true, Ring2 = true, Hands = true, Head = true, Back = true },
    -- { Acc = 63, Ring1 = true, Ring2 = true, Hands = true, Head = true, Body = true, Back = true },
}

local setAccuracyThreshold = function(acc, which)
    local set = {}
    for _,v in ipairs(thresholds) do
        set = v
        if v.Acc >= acc then
            break     
        end
    end
    AccItems[which] = set
    print(chat.header('RNG Helper') + chat.message(which .. ' gear accuracy set to ' .. acc))
end

ashita.events.register('command', 'rng_profile_commands', function (e)
    if e.blocked then return end
    local args = e.command:args()
    if #args < 1 then return end
    if args[1] == '/acc' then
        setAccuracyThreshold(tonumber(args[2]) or 0, 'TP')
    elseif args[1] == '/wsacc' then
        setAccuracyThreshold(tonumber(args[2]) or 0, 'WS')
    end
end)

local lockstyle = {
    Main = "Levin",
    Head = "Korrigan Beret",
    Body = "Sct. Jerkin +1",
    Hands = "Dvt. Mitts +1",
    Legs = "Sct. Braccae +1",
    Feet = "Suzaku's Sune-ate",
}

layers.UserOnLoad = function()
    gSettings.AllowAddSet = false
    gFunc.LockStyle(lockstyle)
    AshitaCore:GetChatManager():QueueCommand(-1,'/macro book 11')
end

local charged = {
    "Apkallu Scepter",
    "Warp Cudgel",
    "Treat Staff II",
    "Reraise Hairpin",
    "Chariot Band",
    "Dem Ring",
    "Altep Ring",
    "Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

layers.EnableAutomaticMidshotDelay()

return layers