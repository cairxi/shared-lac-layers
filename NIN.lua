local layers = gFunc.LoadFile('layers/layers.lua')
local sets = layers.Sets

local bqr = layers.CreateModeGroup('BQR',{'BQR','Off'})
local weapon = layers.CreateModeGroup('Weapon',{'Staff','Katana'},'m')
local club = layers.CreateModeGroup('Club',{'Off','Club'},'+c')
local resists = layers.CreateModeGroup('Resist', {'Off','Lightning','Fire','Ice','Earth','Light'},'+r')
local refresh = layers.CreateModeGroup('Refresh', {'Off', 'Refresh'},'+1')
local regen = layers.CreateModeGroup('Regen', {'Off', 'Regen'},'+2')
local kite = layers.CreateModeGroup('Kite', {'Kite', 'Off'},'k')
local buffalo = layers.CreateModeGroup('Buffalo', {'Off', 'Buffalo'},'+3')
local evasion = layers.CreateModeGroup('Evasion', {'Off', 'Evasion'})
local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local bdt = layers.CreateModeGroup('BDT', {'Off', 'BDT'}, '3')
local hp = layers.CreateModeGroup('HP', {'Off', 'HP'},'4')
local melee = layers.CreateModeGroup('Melee', {'Off', 'Melee'},'+m')
local tank = layers.CreateModeGroup('Tank', {'Off', 'Tank'},'+t')
local cast_style = layers.CreateModeGroup('Cast Style',{'Off','Potency','LowAcc','MidAcc','FullAcc'})

AshitaCore:GetChatManager():QueueCommand(-1,'/macro book 4')

-- HP/MP Based Predicates, can make this more advanced based on SJ etc

local ShinobiEarringHP = 251
local ShinboRingHP = 890
local MuscleBeltHP = 510

local ShinobiRingPredicate = ('Player HP < %d'):format(ShinboRingHP)
local ShinobiEarringPredicate = ('Player HP < %d'):format(ShinobiEarringHP)
local DreamRibbonPredicate = ("Regen || (Buffalo && Player HP < %d)"):format(ShinobiEarringHP)
local MuscleBeltPredicate = ("Regen && Player HP < %d || (Buffalo && Player HP < %d)"):format(MuscleBeltHP, ShinobiEarringHP)
local RefreshPredicate = 'Player MP < 42 && ~(Player Status Effect == plague)'

sets.Idle = {
    Ammo = "Happy Egg",
    Head = {{ Name = "Dream Ribbon", When = DreamRibbonPredicate },
            { Name = "Arh. Jinpachi +1" }},
    Neck = "Jeweled Collar +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Ethereal Earring",
    Body = "Arhat's Gi +1",
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Shadow Mantle",
    Waist = {{ Name = "Muscle Belt +1", When = MuscleBeltPredicate},
             { Name = "Steppe Sash" }},
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

sets.Staff.Engaged = sets.Idle
sets.Kite.Idle = { Feet = { Name = "Nin. Kyahan +1", When = "Dusk to Dawn" }}
sets.Refresh.Idle = { Body = { Name = "Blue Cotehardie", When = RefreshPredicate }}
sets.Buffalo.Idle = { Body = { Name = "Blue Cotehardie", When = RefreshPredicate }}
sets.Staff.Idle = { Main = "Terra's Staff" }
sets.Katana.Idle = { Main = "Fudo", Sub = "Fudo" }
sets.Club.Idle = { Sub = "Octave Club" }

local Evasion = {
    -- Range = "Ungur Boomerang",
    Head = "Arh. Jinpachi +1",
    Neck = "Jeweled Collar +1",
    Ear1 = "Novia Earring",
    Ear2 = "Ethereal Earring",
    Body = "Arhat's Gi +1",
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Resentment Cape",
    Waist = "Koga Sarashi",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

local HP = {
    Ammo = "Happy Egg",
    Head = "Genbu's Kabuto",
    Ear1 = "Cassie Earring",
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Ring2 = {{ Name = "Bomb Queen Ring", When = "BQR"},
             { Name = "Bloodbead Ring" }},
    Back = "Gigant Mantle",
    Waist = "Steppe Sash",
}

local MDT = {
    Ear1 = "Merman's Earring",
    Ear2 = "Merman's Earring",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Resentment Cape",
}

local PDT = {
    Head = "Arh. Jinpachi +1",
    Body = "Arhat's Gi +1",
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Ring2 = "Jelly Ring",
    Back = "Shadow Mantle",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

sets.HP.Idle = HP
sets.MDT.Idle = MDT
sets.PDT.Idle = PDT
sets.Evasion.Idle = Evasion

sets.Lightning.Idle = {
    Main = "Terra's Staff",
    Ammo = "Phtm. Tathlum",
    Head = "Black Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Robust Earring +1",
    Ear2 = "Robust Earring +1",
    Ring1 = "Adroit Ring",
    Ring2 = "Adroit Ring",
    Body = "Kirin's Osode",
    Waist = "Earth Belt",
    Legs = "Byakko's Haidate",
    Feet = "Nin. Kyahan +1",
}

sets.Earth.Idle = {
    Main = "Auster's Staff",
    Ammo = "Phtm. Tathlum",
    Head = "Black Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Topaz Earring",
    Ear2 = "Topaz Earring",
    Body = "Kirin's Osode",
    Ring1 = "Sattva Ring",
    Feet = "Nin. Kyahan +1",
}

sets.Fire.Idle = {
    Main = "Neptune's Staff",
    Ammo = "Phtm. Tathlum",
    Head = "Black Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Tmph. Earring +1",
    Ear2 = "Tmph. Earring +1",
    Body = "Kirin's Osode",
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Gigant Mantle",
    Waist = "Water Belt",
    Legs = "Yasha Hakama +1",
    Feet = "Suzaku's Sune-ate",
}

sets.Ice.Idle = {
    Main = "Vulcan's Staff",
    Ammo = "Phtm. Tathlum",
    Head = "Black Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Omn. Earring +1",
    Ear2 = "Tmph. Earring +1",
    Body = "Kirin's Osode",
    Hands = "Feral Gloves",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Gigant Mantle",
    Waist = "Fire Belt",
    Legs = "Feral Trousers",
    Feet = "Nin. Kyahan +1",
}

sets.Melee.Engaged = {
    Ammo = "Bomb Core",
    Head = "Panther Mask +1",
    Neck = "Dream Collar",
    Ear1 = "Brutal Earring",
    Ear2 = "Stealth Earring",
    Body = "Nin. Chainmail +1",
    Hands = {{ Name = "Kog. Tekko +1", When = "Dusk to Dawn"},
             { Name = "Dusk Gloves" }},
    Ring1 = "Toreador's Ring",
    Ring2 = {{ Name = "Shinobi Ring", When = ShinobiRingPredicate },
             { Name = "Toreador's Ring" }},
    Back = "Forager's Mantle",
    Waist = "Koga Sarashi",
    Legs = "Byakko's Haidate",
    Feet = "Fuma Sune-ate",
}

layers.Sets[ShinobiEarringPredicate].Melee.Engaged = {
    Head = "Arh. Jinpachi +1",
    Ear2 = "Shinobi Earring",
    Hands = "Seiryu's Kote",
    Waist = "Warwolf Belt",
    Feet = "Nin. Kyahan +1"
}

sets.Engaged.Katana = sets.Idle.Katana
sets.Engaged.Staff = sets.Idle.Staff
sets.Engaged.Club = sets.Idle.Club

-- WS

sets.Weaponskill = {
    Ammo = "Bomb Core",
    Head = "Voyager Sallet",
    Neck = "Dream Collar",
    Ear1 = "Brutal Earring",
    Ear2 = "Tmph. Earring +1",
    Body = "Kirin's Osode",
    Hands = "Kog. Tekko +1",
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Forager's Mantle",
    Waist = "Warwolf Belt",
    Legs = "Byakko's Haidate",
    Feet = "Rutter Sabatons"
}

-- Interim Sets

local HPMaintenance = {
    Head =  { Name = "Genbu's Kabuto", Priority = 100 },
    Hands = { Name = "Seiryu's Kote", Priority = 100 },
    Ring1 = { Name = "Sattva Ring", Priority = 100 },
    Ring2 = { { Name = "Bomb Queen Ring", When = "BQR", Priority = 101},
              { Name = "Bloodbead Ring", Priority = 101 } },
    Back =  { Name = "Gigant Mantle", Priority = 100 },
    Waist = { Name = "Steppe Sash", Priority = 100 }
}

sets.Interimcast = sets.Idle
sets.Refresh.Interimcast = sets.Refresh.Idle
sets.PDT.Interimcast = PDT
sets.MDT.Interimcast = MDT
sets.HP.Interimcast = HPMaintenance
sets.Lightning.Interimcast = sets.Lightning.Idle
sets.Ice.Interimcast = sets.Ice.Idle
sets.Fire.Interimcast = sets.Fire.Idle
sets.Earth.Interimcast = sets.Earth.Idle

-- Precast

sets.Precast = { 
    Ear2 = "Loquac. Earring",
    Back = { Name = "Warlock's Mantle", When = "Player Subjob == Red Mage" }
}

sets.HP.Precast = HPMaintenance

-- Midcast

sets.HP.Midcast = {
    Hands = "Seiryu's Kote",
    Ring2 = { { Name = "Bomb Queen Ring", When = "BQR", Priority = 101},
              { Name = "Bloodbead Ring", Priority = 101 } },
    Legs = "Yasha Hakama +1",
    Waist = "Steppe Sash",
}

sets.Midcast['Elemental Ninjutsu'] = {
    Ammo = "Ensorcelled Shard",
    Head = "Yasha Jinpachi +1",
    Neck = {{ Name = "Uggalepih Pendant", When = "Player MPP After Cast < 50" },
            { Name = "Prudence Torque" }},
    Ear1 = "Novio Earring",
    Ear2 = {{ Name = "Shinobi Earring", When = ShinobiEarringPredicate},
            { Name = "Moldavite Earring" }},
    Body = "Kirin's Osode",
    Hands = "Kog. Tekko +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Astute Cape",
    Waist = {{ Name = "R.K. Belt +2", When = ShinobiEarringPredicate},
            { Name = "Koga Sarashi" }},
    Legs = {{ Name = "Yasha Hakama +1", When = ShinobiEarringPredicate},
            { Name = "Byakko's Haidate" }},
    Feet = "Nin. Kyahan +1",
}

sets.Potency.Midcast['Elemental Ninjutsu'] = {
    Waist = "R.K. Belt +2",
    Legs = "Yasha Hakama +1",
}

sets.LowAcc.Midcast['Elemental Ninjutsu'] = {
    Feet = "Kog. Kyahan +1",
}

sets.MidAcc.Midcast['Elemental Ninjutsu'] = {
    Ear2 = "Stealth Earring",
    Feet = "Kog. Kyahan +1",
}

sets.FullAcc.Midcast['Elemental Ninjutsu'] = {
    Neck = "Ninjutsu Torque",
    Ear2 = "Stealth Earring",
    Back = "Astute Cape",
    Legs = "Yasha Hakama +1",
    Feet = "Kog. Kyahan +1",
}

sets.Midcast['Enfeebling Ninjutsu'] = {
    Ammo = "Ensorcelled Shard",
    Head = "Yasha Jinpachi +1",
    Neck = "Ninjutsu Torque",
    Ear1 = "Omn. Earring +1",
    Ear2 = "Stealth Earring",
    Body = "Kirin's Osode",
    Hands = "Kog. Tekko +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Astute Cape",
    Waist = "Koga Sarashi",
    Legs = "Yasha Hakama +1",
    Feet = "Kog. Kyahan +1",
}

sets.Midcast.Utsusemi = {
    Head = "Panther Mask +1",
    Ear1 = "Loquac. Earring",
    Ear2 = "Ethereal Earring",
    Body = "Arhat's Gi +1",
    Hands = {{ Name = "Kog. Tekko +1", When = "Dusk to Dawn"},
             { Name = "Dusk Gloves"}},
    Ring1 = "Sattva Ring",
    Waist = "Koga Sarashi",
    Legs = "Byakko's Haidate",
    Feet = "Fuma Sune-ate",
}

-- Enfeebling memes

sets.Midcast.Enfeebling = {
    Ammo = "Ensorcelled Shard",
    Head = "Yasha Jinpachi +1",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Ear2 = "Abyssal Earring",
    Body = "Kirin's Osode",
    Hands = "Dusk Gloves",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Altruistic Cape",
    Waist = "Koga Sarashi",
    Legs = "Yasha Hakama +1",
    Feet = "Nin. Kyahan +1"
}

sets.Midcast['White Magic Enfeebling'] = {
    Head = "Arh. Jinpachi +1",
    Ear2 = "Cmn. Earring",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Legs = "Byakko's Haidate",
    Feet = "Fuma Sune-ate"
}

local Enhancing = {
    Neck = "Enhancing Torque",
    Back = "Merciful Cape",
}

sets.Midcast.Phalanx = Enhancing
sets.Midcast.Barspell = Enhancing

-- Specific Spells

sets.Midcast.Sneak = { Feet = "Dream Boots +1" }
sets.Midcast.Invisible = { Hands = "Dream Mittens +1" }
sets.Midcast.Tonko = { Hands = "Dream Mittens +1" }

sets.Midcast.Stun = {
    Main = "Jupiter's Staff",
    Ammo = "Nokizaru Shuriken",
    Head = "Yasha Jinpachi +1",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Arhat's Gi +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Back = "Resentment Cape",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate",
    Feet = "Ysh. Sune-ate +1",
}

sets.Midcast.Stoneskin = {
    Head = "Genbu's Kabuto",
    Neck = "Stone Gorget",
    Ear1 = "Cmn. Earring",
    Ear2 = "Cmn. Earring",
    Body = "Kirin's Osode",
    Hands = "Seiryu's Kote",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Back = "Gigant Mantle",
    Waist = "Steppe Sash",
    Legs = "Byakko's Haidate",
    Feet = "Suzaku's Sune-ate",
}

-- Tank Midcasts

local TankRecast = {
    Main = "Terra's Staff",
    Ammo = "Nokizaru Shuriken",
    Head = "Yasha Jinpachi +1",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Arhat's Gi +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Back = "Resentment Cape",
    Waist = "Swift Belt",
    Legs = "Byakko's Haidate",
    Feet = "Ysh. Sune-ate +1",
}

local TankEnmity = {
    Main = "Terra's Staff",
    Ammo = "Nokizaru Shuriken",
    Head = "Yasha Jinpachi +1",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Neck = "Harmonia's Torque",
    Body = "Arhat's Gi +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Back = "Gigant Mantle",
    Waist = "Warwolf Belt",
    Legs = "Yasha Hakama +1",
    Feet = "Ysh. Sune-ate +1",
}

local PlayerNamePredicate = ("Action Target Name == %s"):format(gData.GetPlayer().Name)

local TankCure = {
    Main = "Apollo's Staff",
    Ammo = "Nokizaru Shuriken",
    Head = "Yasha Jinpachi +1",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Arhat's Gi +1",
    Hands = {{ Name = "Seiryu's Kote", When = PlayerNamePredicate },
             { Name = "Dusk Gloves" }},
    Ring1 = "Sattva Ring",
    Ring2 = {{ Name = "Bomb Queen Ring", When = PlayerNamePredicate },
             { Name = "Mermaid Ring" }},
    Back = {{ Name = "Gigant Mantle", When = PlayerNamePredicate },
            { Name = "Resentment Cape" }},
    Waist = "Steppe Sash",
    Legs = "Yasha Hakama +1",
    Feet = "Ysh. Sune-ate +1",
}

sets.Tank.Midcast.Stun = TankRecast
sets.Tank.Midcast.Sleep = TankRecast
sets.Tank.Midcast.Poison = TankRecast
sets.Tank.Midcast.Blind = TankRecast
sets.Tank.Midcast.Bind = TankRecast
sets.Tank.Midcast.Aspir = TankRecast
sets.Tank.Midcast.Barspell = TankEnmity
sets.Tank.Midcast.Cure = TankCure
sets.Tank.Ability = TankEnmity

-- Obis 

layers.Sets['Environment Score > 0 && ~HP'].Midcast['Lightning Magic Damage'] = { Waist = "Rairin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Water Magic Damage'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Water Enfeeblement'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Fire Magic Damage'] = { Waist = "Karin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Ice Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Ice Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Wind Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Wind Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Dark Affinity'] = { Waist = "Anrin Obi" }

-- Staves

sets.Midcast['Earth Magic Damage'] = { Main = "Terra's Staff" }
sets.Midcast['Earth Enfeeblement'] = { Main = "Terra's Staff" }
sets.Midcast['Lightning Magic Damage'] = { Main = "Jupiter's Staff" }
sets.Midcast['Water Magic Damage'] = { Main = "Neptune's Staff" }
sets.Midcast['Water Enfeeblement'] = { Main = "Neptune's Staff" }
sets.Midcast['Fire Magic Damage'] = { Main = "Vulcan's Staff" }
sets.Midcast['Ice Magic Damage'] = { Main = "Aquilo's Staff" }
sets.Midcast['Ice Enfeeblement'] = { Main = "Aquilo's Staff" }
sets.Midcast['Wind Magic Damage'] = { Main = "Auster's Staff" }
sets.Midcast['Wind Enfeeblement'] = { Main = "Auster's Staff" }
sets.Midcast['Dark Affinity'] = { Main = "Pluto's Staff" }


-- Interim cast delay

layers.RegisterCallback("PreHandleMidcast", function(spell)

    local player = gData.GetPlayer()
    local fastCastValue = .99
    if player.SubJob == 'RDM' then
        fastCastValue = fastCastValue - .21
    end

    local buffer = 0.25
    local packetDelay = 0.25
    local castDelay = (spell.CastTime * fastCastValue) / 1000 - buffer
    if castDelay >= packetDelay then
        gFunc.SetMidDelay(castDelay)
    end
end, "Midcast Mid Delay")

-- Sticky items

local charged = {
    "Reraise Hairpin","Reraise Earring",
    "Warp Cudgel","Treat Staff II",
    "Chariot Band",
    "Dem Ring","Altep Ring","Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

return layers