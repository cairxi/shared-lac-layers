local layers = gFunc.LoadFile('layers\\layers.lua')

local bqr = layers.CreateModeGroup('BQR',{'BQR','Off'})
local weapon = layers.CreateModeGroup('Weapon',{'Staff','Katana'},'m')
local club = layers.CreateModeGroup('Club',{'Off','Club'})
local resists = layers.CreateModeGroup('Resist', {'Off','Lightning','Fire','Ice','Earth','Light'},'+2')
local refresh = layers.CreateModeGroup('Refresh', {'Off', 'Refresh'},'+1')
local regen = layers.CreateModeGroup('Regen', {'Off', 'Regen'})
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

local BuffaloRegenPredicate = ('Buffalo && Player HP < %d'):format(ShinobiEarringHP)
local MuscleRegenPredicate = ('Regen && Player HP < %d'):format(MuscleBeltHP)
local ShinobiRingPredicate = ('Player HP < %d && Melee'):format(ShinboRingHP)
local ShinobiEarringPredicate = ('Player HP < %d'):format(ShinobiEarringHP)
local RefreshPredicate = 'Player MP < 42 && (Refresh || Buffalo) && ~(Player Status Effect == Plague)'

layers.Sets.Idle = {
    Ammo = "Happy Egg",
    Head = "Arh. Jinpachi +1",
    Neck = "Jeweled Collar +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Ethereal Earring",
    Body = "Arhat's Gi +1",
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Shadow Mantle",
    Waist = "Steppe Sash",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

layers.Sets.Staff.Engaged = layers.Sets.Idle

layers.Sets['Dusk to Dawn && Kite'].Idle = { Feet = "Nin. Kyahan +1" }
layers.Sets[BuffaloRegenPredicate].Idle = { Head = "Dream Ribbon", Waist = "Muscle Belt +1" }
layers.Sets[RefreshPredicate].Idle = { Body = "Blue Cotehardie" }
layers.Sets.Regen.Idle = { Head = "Dream Ribbon" }
layers.Sets[MuscleRegenPredicate].Idle = { Waist = "Muscle Belt +1" }
layers.Sets.Staff.Idle = { Main = "Terra's Staff" }
layers.Sets.Katana.Idle = { Main = "Fudo", Sub = "Fudo" }
layers.Sets.Club.Idle = { Sub = "Octave Club" }

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
    Ring2 = "Bomb Queen Ring",
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

layers.Sets.HP.Idle = HP
layers.Sets['HP && ~BQR'].Idle = { Ring2 = "Bloodbead Ring" }
layers.Sets.MDT.Idle = MDT
layers.Sets.PDT.Idle = PDT
layers.Sets.Evasion.Idle = Evasion

layers.Sets.Lightning.Idle = {
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

layers.Sets.Earth.Idle = {
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

layers.Sets.Fire.Idle = {
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

layers.Sets.Ice.Idle = {
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

layers.Sets.Melee.Engaged = {
    Ammo = "Bomb Core",
    Head = "Panther Mask +1",
    Neck = "Dream Collar",
    Ear1 = "Brutal Earring",
    Ear2 = "Stealth Earring",
    Body = "Nin. Chainmail +1",
    Hands = "Dusk Gloves",
    Ring1 = "Toreador's Ring",
    Ring2 = "Toreador's Ring",
    Back = "Forager's Mantle",
    Waist = "Koga Sarashi",
    Legs = "Byakko's Haidate",
    Feet = "Fuma Sune-ate",
}

layers.Sets[ShinobiRingPredicate].Melee.Engaged = { Ring2 = "Shinobi Ring" }
layers.Sets[ShinobiEarringPredicate].Melee.Engaged = {
    Head = "Arh. Jinpachi +1",
    Ear2 = "Shinobi Earring",
    Hands = "Seiryu's Kote",
    Waist = "Warwolf Belt",
    Feet = "Nin. Kyahan +1"
}

layers.Sets['Dusk to Dawn && Melee'].Engaged = { Hands = "Kog. Tekko +1" }
layers.Sets.Engaged.Katana = layers.Sets.Idle.Katana
layers.Sets.Engaged.Staff = layers.Sets.Idle.Staff
layers.Sets.Engaged.Club = layers.Sets.Idle.Club

-- WS

layers.Sets.Weaponskill = {
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
    Head = "Genbu's Kabuto",
    Hands = "Seiryu's Kote",
    Ring1 = { Name = "Bloodbead Ring", Priority = 100 },
    Ring2 = { Name = "Bomb Queen Ring", Priority = 101 },
    Back = "Gigant Mantle",
    Waist = "Steppe Sash",
}

layers.Sets.Interimcast = layers.Sets.Idle
layers.Sets.PDT.Interimcast = PDT
layers.Sets.MDT.Interimcast = MDT
layers.Sets.HP.Interimcast = HPMaintenance
layers.Sets[RefreshPredicate].Interimcast = { Body = "Blue Cotehardie" }

-- Precast

layers.Sets.Precast = { Ear2 = "Loquac. Earring" }
layers.Sets.HP.Precast = HPMaintenance

layers.Sets['Player Subjob == Red Mage'].Precast = { Back = "Warlock's Mantle" }

-- Midcast

layers.Sets[ShinobiEarringPredicate].Midcast = { Ear2 = "Shinobi Earring" }
layers.Sets[ShinobiEarringPredicate].Midcast['Elemental Ninjutsu'] = { 
    Waist = "Ryl.Kgt. Belt",
    Legs = "Yasha Hakama +1",
}

layers.Sets.HP.Midcast = {
    Hands = "Seiryu's Kote",
    Ring1 = "Sattva Ring",
    Back = "Gigant Mantle",
    Legs = "Yasha Hakama +1",
    Waist = "Steppe Sash",
}

layers.Sets.Midcast['Elemental Ninjutsu'] = {
    Ammo = "Ensorcelled Shard",
    Head = "Yasha Jinpachi +1",
    Neck = "Prudence Torque",
    Ear1 = "Novio Earring",
    Ear2 = "Moldavite Earring",
    Body = "Kirin's Osode",
    Hands = "Kog. Tekko +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Astute Cape",
    Waist = "Koga Sarashi",
    Legs = "Byakko's Haidate",
    Feet = "Nin. Kyahan +1",
}

layers.Sets.Potency.Midcast['Elemental Ninjutsu'] = {
    Waist = "Ryl.Kgt. Belt",
    Legs = "Yasha Hakama +1",
}

layers.Sets.LowAcc.Midcast['Elemental Ninjutsu'] = {
    Feet = "Kog. Kyahan +1",
}

layers.Sets.MidAcc.Midcast['Elemental Ninjutsu'] = {
    Ear2 = "Stealth Earring",
    Feet = "Kog. Kyahan +1",
}

layers.Sets.FullAcc.Midcast['Elemental Ninjutsu'] = {
    Neck = "Ninjutsu Torque",
    Ear2 = "Stealth Earring",
    Back = "Astute Cape",
    Legs = "Yasha Hakama +1",
    Feet = "Kog. Kyahan +1",
}

layers.Sets['Player MPP After Cast < 50 && ~FullAcc'].Midcast['Elemental Ninjutsu'] = {
    Neck = "Uggalepih Pendant"
}

layers.Sets.Midcast['Enfeebling Ninjutsu'] = {
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

layers.Sets.Midcast.Utsusemi = {
    Head = "Panther Mask +1",
    Ear1 = "Loquac. Earring",
    Ear2 = "Ethereal Earring",
    Body = "Arhat's Gi +1",
    Hands = "Dusk Gloves",
    Ring1 = "Sattva Ring",
    Waist = "Koga Sarashi",
    Legs = "Byakko's Haidate",
    Feet = "Fuma Sune-ate",
}


layers.Sets['Dusk to Dawn'].Midcast.Utsusemi = { Hands = "Kog. Tekko +1" }

-- Enfeebling memes

layers.Sets.Midcast.Enfeebling = {
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

layers.Sets.Midcast['White Magic Enfeebling'] = {
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

layers.Sets.Midcast.Phalanx = Enhancing
layers.Sets.Midcast.Barspell = Enhancing

-- Specific Spells

layers.Sets.Midcast.Sneak = { Feet = "Dream Boots +1" }
layers.Sets.Midcast.Invisible = { Hands = "Dream Mittens +1" }
layers.Sets.Midcast.Tonko = { Hands = "Dream Mittens +1" }

layers.Sets.Midcast.Stun = {
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

layers.Sets.Midcast.Stoneskin = {
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

local TankCure = {
    Main = "Apollo's Staff",
    Ammo = "Nokizaru Shuriken",
    Head = "Yasha Jinpachi +1",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Arhat's Gi +1",
    Hands = "Dusk Gloves",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid's Ring",
    Back = "Resentment Cape",
    Waist = "Steppe Sash",
    Legs = "Yasha Hakama +1",
    Feet = "Ysh. Sune-ate +1",
}

layers.Sets.Tank.Midcast.Stun = TankRecast
layers.Sets.Tank.Midcast.Sleep = TankRecast
layers.Sets.Tank.Midcast.Poison = TankRecast
layers.Sets.Tank.Midcast.Blind = TankRecast
layers.Sets.Tank.Midcast.Bind = TankRecast
layers.Sets.Tank.Midcast.Aspir = TankRecast
layers.Sets.Tank.Midcast.Barspell = TankEnmity
layers.Sets.Tank.Midcast.Cure = TankCure
local SelfCurePredicate = ('Tank && Action Target Name == %s'):format(gData.GetPlayer().Name)
layers.Sets[SelfCurePredicate].Midcast.Cure = {
    Hands = "Seiryu's Kote",
    Ring2 = "Bomb Queen Ring",
    Back = "Gigant Mantle",
}

layers.Sets.Tank.Ability = TankEnmity

-- Obis 

layers.Sets['Environment Score > 0 && ~HP'].Midcast['Lightning Magic Damage'] = { Waist = "Rairin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Water Magic Damage'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Water Enfeeblement'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Fire Magic Damage'] = { Waist = "Kairin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Ice Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Ice Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Wind Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Wind Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0 && ~HP'].Midcast['Dark Affinity'] = { Waist = "Anrin Obi" }

-- Staves

layers.Sets.Midcast['Earth Magic Damage'] = { Main = "Terra's Staff" }
layers.Sets.Midcast['Earth Enfeeblement'] = { Main = "Terra's Staff" }
layers.Sets.Midcast['Lightning Magic Damage'] = { Main = "Jupiter's Staff" }
layers.Sets.Midcast['Water Magic Damage'] = { Main = "Neptune's Staff" }
layers.Sets.Midcast['Water Enfeeblement'] = { Main = "Neptune's Staff" }
layers.Sets.Midcast['Fire Magic Damage'] = { Main = "Vulcan's Staff" }
layers.Sets.Midcast['Ice Magic Damage'] = { Main = "Aquilo's Staff" }
layers.Sets.Midcast['Ice Enfeeblement'] = { Main = "Aquilo's Staff" }
layers.Sets.Midcast['Wind Magic Damage'] = { Main = "Auster's Staff" }
layers.Sets.Midcast['Wind Enfeeblement'] = { Main = "Auster's Staff" }
layers.Sets.Midcast['Dark Affinity'] = { Main = "Pluto's Staff" }


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