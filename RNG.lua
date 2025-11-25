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

local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local weapon = layers.CreateModeGroup('Weapon', {'Staff', 'Club', 'Dagger'},'m')
local acc = layers.CreateModeGroup('Ranged Acc.', {'Off','LowAcc','MidAcc','HighAcc'})
local enmity = layers.CreateModeGroup('Enmity', {'Off','Enmity'})
local bolts = layers.CreateModeGroup('Bolts', {'Off','Acid','Sleep','Blind','Bloody'})
local bullets = layers.CreateModeGroup('Bullets', {'Off','Spartan'})
local ranged = layers.CreateModeGroup('Ranged', {'Crossbow','Gun'})

local Default = {
    Ring1 = "Sattva Ring",
    Feet = "Trotter Boots",
}

local PDT = {
    Ring2 = "Jelly Ring"
}

local MDT = {
    Back = "Resentment Cape",
}

sets.Club.Idle = { Main = "Octave Club" }
sets.Staff.Idle = { Main = "Vulcan's Staff" }
sets.Dagger.Idle = { Main = "Archer's Knife", Sub = { Name = "Archer's Knife", When = "Player Subjob == Ninja" }} 
sets.Crossbow.Idle = { Ranged = "Hunter's Zamburak", Ammo = "Remove" }

sets.Idle = Default
sets.PDT.Idle = PDT
sets.MDT.Idle = MDT

sets.Engaged = Default
sets.Club.Engaged = sets.Club.Idle
sets.Dagger.Engaged = sets.Dagger.Idle
sets.Crossbow.Engaged = sets.Crossbow.Idle


sets.Preshot = {
    -- Head = "Hunter's Beret",
    -- Body = "Scout's Jerkin +1",
}

sets.Interimshot = Default
sets.PDT.Interimshot = MDT
sets.MDT.Interimshot = PDT

sets.Crossbow.Preshot = {
    Ammo = {{ Name = "Acid Bolt", When = "Acid" },
            { Name = "Sleep Bolt", When = "Sleep" },
            { Name = "Blind Bolt", When = "Blind" },
            { Name = "Bloody Bolt", When = "Bloody" },
            { Name = "Holy Bolt" }}
}

sets.Gun.Preshot = {
    Ammo = {{ Name = "Spartan Bullet", When = "Spartan" },
            { Name = "Silver Bullet" }}
}

sets.Midshot = {
    Ring1 = "Puissance Ring",
    Ring2 = "Puissance Ring",
    -- Hands = { Name = "Htr. Bracers +1", When = "Player Status Effect == Barrage" },
    Waist = { Name = "R.K. Belt +2", When = "Inside Nation Control" },
    Feet = "Wonder Clomps",
}

sets.LowAcc.Midshot = { Hands = "Seiryu's Kote" }
sets.MidAcc.Midshot = {}
sets.HighAcc.Midshot = {}

sets.Enmity.Midshot = {
    Head = "Sct. Beret +1",
	Ear1 = "Novia Earring",
	Body = "Sct. Jerkin +1",
}

sets.Weaponskill = {
    Waist = { Name = "R.K. Belt +2", When = "Inside Nation Control" },
}

sets.Gun.Weaponskill = {
    Ammo = {{ Name = "Silver Bullet", When = "Player Status Effect == Unlimited Shot" }, -- Carapace Placeholder
            { Name = "Silver Bullet" }}
}
sets.Crossbow.Weaponskill = { Ammo = "Holy Bolt" }

local EnmityDown = {
	Head = "Sct. Beret +1",
	Ear1 = "Novia Earring",
	Legs = "Sct. Braccae +1",
	Feet = "Sct. Socks +1",
	Body = "Sct. Jerkin +1",
}

sets.Ability = EnmityDown
sets.Ability.Shadowbind = { Hands = "Hunter's Bracers" }
sets.Ability.Sharpshot = { Legs = "Hunter's Braccae" }
sets.Ability.Scavenge = { Feet = "Hunter's Socks" }
sets.Ability.Camouflage = { Body = "Hunter's Jerkin" }

sets.Ability['Eagle Eye Shot'] = {}
sets.Enmity.Ability['Eagle Eye Shot'] = {}

sets.Precast = { Ear1 = "Loquac. Earring" }

sets.Midcast = {
    Ear1 = "Loquac. Earring",
    Hands = "Dusk Gloves",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate"
}

sets.Midcast.Sneak = { Back = "Skulker's Cape", Feet = "Dream Boots +1" }
sets.Midcast.Invisible = { Back = "Skulker's Cape", Hands = "Dream Gloves +1" }
sets.Midcast.Tonko = { Back = "Skulker's Cape", Hands = "Dream Gloves +1" }

local charged = {
    "Warp Cudgel","Treat Staff II",
    "Chariot Band","Dem Ring","Altep Ring","Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

return layers