local layers = gFunc.LoadFile('layers\\layers.lua')

local idle = layers.CreateModeGroup('IdleStyle', {'Off','IdlePDT','IdleMDT','IdleHP','IdleMP'},'i')
local resists = layers.CreateModeGroup('Resist', {'Off','Lightning'},'+r')
local refresh = layers.CreateModeGroup('Refresh',{'Refresh','Off'},'+2')
local weapon = layers.CreateModeGroup('Weapon',{'Staff','Mistilteinn','Sword','Dagger','Club'},'m')
local kite = layers.CreateModeGroup('Kite',{'Kite','Off'}, 'k')
local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local bdt = layers.CreateModeGroup('BDT', {'Off', 'BDT'}, '3')
local mp = layers.CreateModeGroup('MP', {'Off', 'MP'}, '5')
local hp = layers.CreateModeGroup('HP', {'Off', 'HP'}, '4')
local melee = layers.CreateModeGroup('Melee', {'Off', 'Melee'},'+m')
local tank = layers.CreateModeGroup('Tank', {'Off', 'Tank'},'+t')
local cast_style = layers.CreateModeGroup('Cast Style',{'Off','Potency','Accuracy'},'+1')
local dart = layers.CreateModeGroup('Dart', {'Off','Dart'})

-- Idle / Engaged / Resting

local Default = {
    Ammo = "Happy Egg",
    Head = "Dls. Chapeau +1",
    Neck = "Jeweled Collar +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Ethereal Earring",
    Body = "Dalmatica",
    Hands = "Dls. Gloves +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = {{ Name = "Umbra Cape", When = "Nighttime && ~MDT" },
            { Name = "Shadow Mantle" }},
    Waist = "Hierarch Belt",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

local PDT = {
    Ammo = "Happy Egg",
    Head = "Darksteel Cap +1",
    Body = "Dst. Harness +1",
    Hands = "Dst. Mittens +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Jelly Ring",
    Back = {{ Name = "Umbra Cape", When = "Nighttime" },
            { Name = "Shadow Mantle" }},
    Waist = "Steppe Sash",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

local MDT =  {
    Ammo = "Phtm. Tathlum",
    Head = "Dream Ribbon",
    Body = "Dalmatica",
    Hands = "Dls. Gloves +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Merman's Earring",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Hexerei Cape",
    Legs = "Coral Cuisses +1",
    Feet = "Coral Greaves +1",
}

local BDT = {
    Legs = "Bahamut's Hose",
}

layers.Sets.Idle = Default
layers.Sets.PDT.Idle = PDT
layers.Sets.IdlePDT.Idle = PDT
layers.Sets.MDT.Idle = MDT
layers.Sets.IdleMDT.Idle = MDT
layers.Sets.BDT.Idle = BDT

layers.Sets.Staff.Idle = { Main = "Terra's Staff" }
layers.Sets.Mistilteinn.Idle = { Main = "Mistilteinn", Sub = "Genbu's Shield" }
layers.Sets.Kite.Idle = { Legs = "Blood Cuisses" }
layers.Sets.Dart.Idle = { Ammo = "Dart" }

layers.Sets.Refresh.Idle = {
    Head = "Dls. Chapeau +1",
    Body = "Dalmatica",
}

layers.Sets.IdleHP.Idle = {
    ring2 = "Bloodbead Ring",
    waist = "Steppe Sash",
}

layers.Sets.IdleMP.Idle = {
    Ammo = "Dream Sand",
    Ear1 = "Loquac. Earring",
    Hands = "Blood Fng. Gnt.",
    Neck = "Uggalepih Pendant",
    Waist = "Hierarch Belt",
}

layers.Sets.Lightning.Idle = {
    Main = "Terra's Staff",
    Ammo = "Phtm. Tathlum",
    Head = "Black Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Robust Earring +1",
    Ear2 = "Robust Earring +1",
    Body = "Mahatma Hpl.",
    Ring1 = "Adroit Ring",
    Ring2 = "Adroit Ring",
    Waist = "Earth Belt",
    Legs = "Blood Cuisses",
}

layers.Sets.Resting = {
    Main = "Pluto's Staff",
    Head = "Dls. Chapeau +1",
    Neck = "Checkered Scarf",
    Ear1 = "Loquac. Earring",
    Ear2 = "Relaxing Earring",
    Body = {{ Name = "Dalmatica", When = "Player MP >= 900" },
            { Name = "Mahatma Hpl." }},
    Hands = {{ Name = "Blood Fng. Gnt.", When = "Player MP >= 850" },
             { Name = "Hydra Gloves" }},
    Back = "Errant Cape",
    Waist = {{ Name = "Hierarch Belt", When = "Player MP >= 800" },
             { Name = "Duelist's Belt" }},
    Legs = { { Name = "Blood Cuisses", When = "Player MP >=850" },
             { Name = "Baron's Slops" }},
    Feet = "Hydra Gaiters",
}

-- Melee memes

local ClubMain = { Main = "Octave Club", Sub = "Genbu's Shield" }

local MartialKnife = { 
    Main = "Martial Knife", 
    Sub = {{ Name = "Octave Club", When = "Player Subjob == Ninja" },
           { Name = "Genbu's Shield" }}
}

local Joyeuse = { 
    Main = "Joyeuse",
    Sub = {{ Name = "Octave Club", When = "Player Subjob == Ninja" },
           { Name = "Genbu's Shield" }}
}

layers.Sets.Sword.Idle = Joyeuse
layers.Sets.Dagger.Idle = MartialKnife
layers.Sets.Club.Idle = ClubMain

layers.Sets.Sword.Engaged = Joyeuse
layers.Sets.Dagger.Engaged = MartialKnife
layers.Sets.Club.Engaged = ClubMain

layers.Sets.Sword.Resting = Joyeuse
layers.Sets.Dagger.Resting = MartialKnife
layers.Sets.Club.Resting = ClubMain

layers.Sets.Melee.Engaged = {
    Head = "Nashira Turban",
    Neck = "Dream Collar",
    Ear1 = "Brutal Earring",
    Ear2 = {{ Name = "Stealth Earring", When = "Player Subjob == Ninja && (Dagger || Sword)" },
            { Name = "Ethereal Earring" }},
    Body = "Nashira Manteel",
    Hands = "Dusk Gloves",
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Forager's Mantle",
    Waist = "Swift Belt",
    Legs = "Nashira Seraweels",
    Feet = "Nashira Crackows",
}

layers.Sets['Refresh && Melee'].Engaged = {
    Head = "Dls. Chapeau +1",
    Body = "Dalmatica",
}

-- Interim Sets

layers.Sets.Interimcast = Default
layers.Sets.PDT.Interimcast = PDT
layers.Sets.MDT.Interimcast = MDT
layers.Sets.BDT.Interimcast = BDT
layers.Sets.IdleHP.Interimcast = layers.Sets.IdleHP.Idle
layers.Sets.IdleMDT.Interimcast = layers.Sets.IdleMDT.Idle
layers.Sets.IdlePDT.Interimcast = layers.Sets.IdlePDT.Idle
layers.Sets.Refresh.Interimcast = layers.Sets.Refresh.Idle

layers.Sets.HP.Interimcast = {
    Ammo = { Name = "Happy Egg", Priority = 100 },
    Ear1 = { Name = "Cassie Earring", When = "Tank", Priority = 100 },
    Ring1 = { Name = "Sattva Ring", Priority = 100 },
    Ring2 = { Name = "Bloodbead Ring", Priority = 100 },
    Back = { Name = "Gigant Mantle", Priority = 100 },
    Waist = { Name =  "Steppe Sash", Priority = 100 }
}

layers.Sets.MP.Interimcast = {
    Ammo = { Name = "Dream Sand", Priority = 100 },
    Ear1 = { Name = "Loquac. Earring", Priority = 100 },
    Waist = { Name = "Hierarch Belt", Priority = 100 },
}

-- Precast Sets

layers.Sets.Precast = {
    Head = "Wlk. Chapeau +1",
    Body = "Dls. Tabard +1",
    Ear1 = "Loquac. Earring",
}

layers.Sets.HP.Precast = {
    Head = "Wlk. Chapeau +1",
    Body = "Dls. Tabard +1",
    Ear1 = "Loquac. Earring",
    Ring1 = "Bloodbead Ring",
    Ring2 = "Bomb Queen Ring",
    Waist = "Steppe Sash",
    Back = "Gigant Mantle",
}

-- Midcast Sets

layers.Sets.Midcast = {
    Head = "Wlk. Chapeau +1",
    Ear1 = "Loquac. Earring",
    Body = "Dls. Tabard +1",
    Hands = "Dusk Gloves",
    Waist = "Swift Belt",
    Back = "Gigant Mantle",
    Legs = "Nashira Seraweels",
}

-- Hp/Mp maintenance

layers.Sets.HP.Midcast = layers.Sets.HP.Interimcast
layers.Sets.MP.Midcast = layers.Sets.MP.Interimcast

-- Healing

layers.Sets.Midcast.Cure = {
    Ammo = "Dream Sand",
    Head = "Hydra Beret",
    Ear1 = "Novia Earring",
    Body = "Dls. Tabard +1",
    Hands = "Hydra Gloves",
    Ring1 = "Bloodbead Ring",
    Ring2 = "Shadow Ring",
    Back = "Errant Cape",
    Waist = "Penitent's Rope",
    Legs = "Mahatma Slops",
    Feet = "Hydra Gaiters",
}

-- Enfeebling

layers.Sets.Midcast.Enfeebling = {
    Ammo = "Phtm. Tathlum",
    Head = "Dls. Chapeau +1",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Ear2 = "Abyssal Earring",
    Body = "Wlk. Tabard +1",
    Hands = {{ Name = "Mst.Cst. Bracelets", When = "Outside Nation Control" },
             { Name = "Dls. Gloves +1" }},
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Altruistic Cape",
    Waist = "Penitent's Rope",
    Legs = "Nashira Seraweels",
    Feet = "Nashira Crackows",
}

layers.Sets.Midcast['White Magic Enfeebling'] = {
    Ammo = "Dream Sand",
    Ear2 = "Cmn. Earring",
    Hands = "Dvt. Mitts +1",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
}

local MndPotency = {
    Neck = "Faith Torque",
    Ear1 = "Cmn. Earring",
    Ear2 = "Cmn. Earring",
    Body = "Mahatma Hpl.",
    Hands = "Dvt. Mitts +1",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Back = "Prism Cape",
    Legs = "Mahatma Slops",
    Waist = "Penitent's Rope",
    Feet = "Dls. Boots +1"
}

local IntPotency = {
    Neck = "Prudence Torque",
    Ear1 = "Omn. Earring +1",
    Ear2 = "Abyssal Earring",
    Body = "Mahatma Hpl.",
    Hands = "Dls. Gloves +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Prism Cape",
    Legs = "Mahatma Slops",
}

local MaxPotency = {
    Main = "Mistilteinn",
    Sub = "Nms. Shield +1",
}

local EnfeeblingSkillGear = {
    Head = "Dls. Chapeau +1",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Body = "Wlk. Tabard +1",
    Hands = { Name = "Mst.Cst. Bracelets", When = "Outside Nation Control" },
    Back = "Altruistic Cape",
    Legs = "Nashira Seraweels",
}

layers.Sets.Midcast.Slow = MndPotency
layers.Sets.Midcast.Paralyze = MndPotency
layers.Sets.Midcast.Blind = IntPotency
layers.Sets.Potency.Midcast.Slow = MaxPotency
layers.Sets.Potency.Midcast.Paralyze = MaxPotency
layers.Sets.Potency.Midcast.Blind = MaxPotency
layers.Sets.Accuracy.Midcast.Enfeebling = EnfeeblingSkillGear

-- Elemental

layers.Sets.Midcast.Elemental = {
    Ammo = "Phtm. Tathlum",
    Head = "Wlk. Chapeau +1",
    Neck = {{ Name = "Uggalepih Pendant", When = "Player MPP After Cast < 50" },
            { Name = "Prudence Torque" }},
    Ear1 = "Novio Earring",
    Ear2 = "Moldavite Earring",
    Body = "Mahatma Hpl.",
    Hands = "Zenith Mitts",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Prism Cape",
    Waist = "Penitent's Rope",
    Legs = "Mahatma Slops",
    Feet = "Dls. Boots +1",
}

layers.Sets.Accuracy.Midcast.Elemental = {
    Neck = "Elemental Torque",
    Hands = "Dls. Gloves +1",
    Feet = "Nashira Crackows",
}

layers.Sets.Midcast['Enfeebling Elemental'] = {
    Ammo = "Phtm. Tathlum",
    Head = "Wlk. Chapeau +1",
    Neck = "Elemental Torque",
    Ear1 = "Omn. Earring +1",
    Ear2 = "Abyssal Earring",
    Body = "Mahatma Hpl.",
    Hands = "Dls. Gloves +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Merciful Cape",
    Waist = "Penitent's Rope",
    Legs = "Mahatma Slops",
    Feet = "Nashira Crackows",
}

-- 150 Potency Set, need some dumb items
-- layers.Sets.Potency['Enfeebling Elemental'] = {}

-- Dark

layers.Sets.Midcast.Dark = {
    Ammo = "Phtm. Tathlum",
    Head = "Wlk. Chapeau +1",
    Neck = "Dark Torque",
    Ear1 = "Loquac. Earring",
    Ear2 = "Abyssal Earring",
    Body = "Nashira Manteel",
    Hands = "Blood Fng. Gnt.",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Merciful Cape",
    Waist = "Swift Belt",
    Legs = "Nashira Seraweels",
    Feet = "Nashira Crackows",
}

layers.Sets.Midcast['Absorption Dark'] = { Ring2 = "Overlord's Ring" }

layers.Sets.Midcast.Stun = {
    Body = "Dls. Tabard +1",
    Hands = "Dusk Gloves",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Waist = "Swift Belt",
    Back = "Errant Cape",
    Legs = "Nashira Seraweels",
    Feet = "Hydra Gaiters",
}

layers.Sets.Accuracy.Midcast.Stun = {
    Body = "Nashira Manteel",
    Hands = "Blood Fng. Gnt.",
    Feet = "Nashira Crackows",
}

-- Enchancing

local EnchancingSkill = {
    Neck = "Enhancing Torque",
    Hands = "Dls. Gloves +1",
    Back = "Merciful Cape",
    Legs = "Wlk. Tights +1",
}

layers.Sets.Midcast.Phalanx = EnchancingSkill
layers.Sets.Midcast.Barspell = EnchancingSkill
layers.Sets.Midcast.Enspell = EnchancingSkill

layers.Sets.Midcast.Stoneskin = {
    Neck = "Stone Gorget",
    Ear1 = "Cmn. Earring",
    Ear2 = "Cmn. Earring",
    Body = "Dls. Tabard +1",
    Hands = "Dvt. Mitts +1",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Legs = "Wlk. Tights +1",
    Feet = "Dls. Boots +1"
}

layers.Sets.Midcast.Refresh = { Ring2 = { Name = "Dilation Ring", When = "Player MP >= 62" }}
layers.Sets.Midcast.Haste = { Ring2 = { Name = "Dilation Ring", When = "Player MP >= 50" }}

layers.Sets.Midcast.Sneak = {
    Back = "Skulker's Cape",
    Feet = "Dream Boots +1",
}
layers.Sets.Midcast.Invisible = {
    Hands = "Dream Mittens +1",
    Back = "Skulker's Cape",
}

-- Tank Midcast

local LowRecast = {
    Main = "Terra's Staff",
    Ammo = "Happy Egg",
    Head = "Baron's Chapeau",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Dls. Tabard +1",
    Hands = "Dusk Gloves",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Waist = "Warwolf Belt",
    Feet = "Dst. Leggings +1"
}

local HighRecast = {
    Main = "Terra's Staff",
    Ammo = "Happy Egg",
    Head = "Wlk. Chapeau +1",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Dls. Tabard +1",
    Hands = "Dusk Gloves",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Waist = "Swift Belt",
    Feet = "Dst. Leggings +1"
}

local PlayerNamePredicate = ("Action Target Name == %s"):format(gData.GetPlayer().Name)

layers.Sets.Tank.Midcast.Cure = {
    Main = "Apollo's Staff",
    Ammo = "Happy Egg",
    Head = "Baron's Chapeau",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Dls. Tabard +1",
    Hands = {{ Name = "Blood Fng. Gnt.", When = PlayerNamePredicate },
             { Name = "Dusk Gloves" }},
    Ring1 = "Sattva Ring",
    Ring2 = {{ Name = "Bomb Queen Ring", When = PlayerNamePredicate },
             { Name = "Mermaid Ring" }},
    Back = {{ Name = "Gigant Mantle", When = PlayerNamePredicate },
            { Name = "Resentment Cape" }},
    Waist = "Swift Belt",
    Legs = { { Name = "Blood Cuisses", When = PlayerNamePredicate},
             { Name ="Nashira Seraweels" }},
    Feet = "Dst. Leggings +1"
}

layers.Sets.Tank.Midcast.Dispel = LowRecast
layers.Sets.Tank.Midcast.Sleep = HighRecast
layers.Sets.Tank.Midcast.Dia = LowRecast
layers.Sets.Tank.Midcast.Poisonga = LowRecast
layers.Sets.Tank.Midcast.Blind = LowRecast
layers.Sets.Tank.Midcast.Bind = HighRecast

-- Obis

layers.Sets['Environment Score > 0'].Midcast['Lightning Magic Damage'] = { Waist = "Rairin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Water Magic Damage'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Water Enfeeblement'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Fire Magic Damage'] = { Waist = "Karin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Ice Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Ice Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Wind Magic Damage'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Wind Enfeeblement'] = { Waist = "Hyorin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Dark Affinity'] = { Waist = "Anrin Obi" }

-- Staves

layers.Sets.Midcast['Earth Magic Damage'] = { Main ="Terra's Staff" }
layers.Sets.Midcast['Earth Enfeeblement'] = { Main ="Terra's Staff" }
layers.Sets.Midcast['Lightning Magic Damage'] = { Main ="Jupiter's Staff" }
layers.Sets.Midcast['Water Magic Damage'] = { Main ="Neptune's Staff" }
layers.Sets.Midcast['Water Enfeeblement'] = { Main ="Neptune's Staff" }
layers.Sets.Midcast['Fire Magic Damage'] = { Main ="Vulcan's Staff" }
layers.Sets.Midcast['Ice Magic Damage'] = { Main = "Aquilo's Staff" }
layers.Sets.Midcast['Ice Enfeeblement'] = { Main = "Aquilo's Staff" }
layers.Sets.Midcast['Wind Magic Damage'] = { Main ="Auster's Staff" }
layers.Sets.Midcast['Wind Enfeeblement'] = { Main ="Auster's Staff" }
layers.Sets.Midcast['Dark Affinity'] = { Main ="Pluto's Staff" }


-- Cure cheat logic

local CureThresholds = {
    ['Cure III'] = 950,
    ['Cure IV'] = 800,
}

local HPDownSets = {
    ['Cure III'] = {
        Ear1 = "Merman's Earring",
        Body = "Dalmatica",
        Waist = "Penitent's Rope",
        Ring1 = "Ether Ring",
        Back = "Shadow Mantle",
    },
    ['Cure IV'] = {
        Head = "Zenith Crown",
        Ear1 = "Merman's Earring",
        Body = "Dalmatica",
        Hands = "Zenith Mitts",
        Waist = "Penitent's Rope",
        Ring1 = "Ether Ring",
        Back = "Shadow Mantle",
    }
}

layers.RegisterCallback("PreHandlePrecast", function(spell)
    local hp = CureThresholds[spell.Name] 
    if hp then
        local at = gData.GetActionTarget()
        local player = gData.GetPlayer()
        if at.Name == player.Name then
            if player.HP >= hp then
                local set = HPDownSets[spell.Name]
                gFunc.ForceEquipSet(set)
            end
        end
    end
end, "Cure Cheat Helper")

-- Interim cast delay

layers.RegisterCallback("PreHandleMidcast", function(spell)
    local fastCastValue = 0.42
    local minimumBuffer = 0.25
    local packetDelay = 0.4
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer
    if (castDelay >= packetDelay) and (gData.GetBuffCount('Chainspell') == 0) then
        gFunc.SetMidDelay(castDelay)
    end
end, "Midcast Mid Delay")

-- Sticky items

local ChargedItems = {
    "Reraise Hairpin","Reraise Earring",
    "Warp Cudgel","Treat Staff II",
    "Chariot Band",
    "Dem Ring","Altep Ring","Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(ChargedItems) do layers.AddChargedItem(v) end

AshitaCore:GetChatManager():QueueCommand(-1,'/macro book 2')

return layers