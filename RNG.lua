local layers = gFunc.LoadFile('layers/layers.lua')

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

layers.Sets.Club.Idle = { Main = "Octave Club" }
layers.Sets.Staff.Idle = { Main = "Vulcan's Staff" }
layers.Sets.Dagger.Idle = { Main = "Archer's Knife", Sub = { Name = "Archer's Knife", When = "Player Subjob == Ninja" }} 
layers.Sets.Crossbow.Idle = { Ranged = "Hunter's Zamburak", Ammo = "Remove" }

layers.Sets.Idle = Default
layers.Sets.PDT.Idle = PDT
layers.Sets.MDT.Idle = MDT

layers.Sets.Engaged = Default
layers.Sets.Club.Engaged = layers.Sets.Club.Idle
layers.Sets.Dagger.Engaged = layers.Sets.Dagger.Idle
layers.Sets.Crossbow.Engaged = layers.Sets.Crossbow.Idle


layers.Sets.Preshot = {
    -- Head = "Hunter's Beret",
    -- Body = "Scout's Jerkin +1",
}

layers.Sets.Interimshot = Default
layers.Sets.PDT.Interimshot = MDT
layers.Sets.MDT.Interimshot = PDT

layers.Sets.Crossbow.Preshot = {
    Ammo = {{ Name = "Acid Bolt", When = "Acid" },
            { Name = "Sleep Bolt", When = "Sleep" },
            { Name = "Blind Bolt", When = "Blind" },
            { Name = "Bloody Bolt", When = "Bloody" },
            { Name = "Holy Bolt" }}
}

layers.Sets.Gun.Preshot = {
    Ammo = {{ Name = "Spartan Bullet", When = "Spartan" },
            { Name = "Silver Bullet" }}
}

layers.Sets.Midshot = {
    Ring1 = "Puissance Ring",
    Ring2 = "Puissance Ring",
    -- Hands = { Name = "Htr. Bracers +1", When = "Player Status Effect == Barrage" },
    Waist = { Name = "R.K. Belt +2", When = "Inside Nation Control" },
    Feet = "Wonder Clomps",
}

layers.Sets.LowAcc.Midshot = { Hands = "Seiryu's Kote" }
layers.Sets.MidAcc.Midshot = {}
layers.Sets.HighAcc.Midshot = {}

layers.Sets.Enmity.Midshot = {
    Head = "Sct. Beret +1",
	Ear1 = "Novia Earring",
	Body = "Sct. Jerkin +1",
}

layers.Sets.Weaponskill = {
    Waist = { Name = "R.K. Belt +2", When = "Inside Nation Control" },
}

layers.Sets.Gun.Weaponskill = {
    Ammo = {{ Name = "Silver Bullet", When = "Player Status Effect == Unlimited Shot" }, -- Carapace Placeholder
            { Name = "Silver Bullet" }}
}
layers.Sets.Crossbow.Weaponskill = { Ammo = "Holy Bolt" }

local EnmityDown = {
	Head = "Sct. Beret +1",
	Ear1 = "Novia Earring",
	Legs = "Sct. Braccae +1",
	Feet = "Sct. Socks +1",
	Body = "Sct. Jerkin +1",
}

layers.Sets.Ability = EnmityDown
layers.Sets.Ability.Shadowbind = { Hands = "Hunter's Bracers" }
layers.Sets.Ability.Sharpshot = { Legs = "Hunter's Braccae" }
layers.Sets.Ability.Scavenge = { Feet = "Hunter's Socks" }
layers.Sets.Ability.Camouflage = { Body = "Hunter's Jerkin" }

layers.Sets.Ability['Eagle Eye Shot'] = {}
layers.Sets.Enmity.Ability['Eagle Eye Shot'] = {}

layers.Sets.Precast = { Ear1 = "Loquac. Earring" }

layers.Sets.Midcast = {
    Ear1 = "Loquac. Earring",
    Hands = "Dusk Gloves",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate"
}

layers.Sets.Midcast.Sneak = { Back = "Skulker's Cape", Feet = "Dream Boots +1" }
layers.Sets.Midcast.Invisible = { Back = "Skulker's Cape", Hands = "Dream Gloves +1" }
layers.Sets.Midcast.Tonko = { Back = "Skulker's Cape", Hands = "Dream Gloves +1" }

local charged = {
    "Warp Cudgel","Treat Staff II",
    "Chariot Band","Dem Ring","Altep Ring","Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

return layers