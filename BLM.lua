local layers = gFunc.LoadFile('layers\\layers.lua')

AshitaCore:GetChatManager():QueueCommand(-1,'/macro book 1')

local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local mb = layers.CreateModeGroup('MB', {'Off','MB'}, 'b')
local enmity = layers.CreateModeGroup('Enmity', {'Off','Enmity'})
local macc = layers.CreateModeGroup('Magic Accuracy', {'Off','LowAcc','MidAcc','HighAcc','FullAcc'})
local potency_enfeeble = layers.CreateModeGroup('Potency Enfeebling', {'Off','Potency'})
local sorc = layers.CreateModeGroup('Sorc. Ring', {'SorcRing','Off'})
local weapons = layers.CreateModeGroup('Weapon', {'Staff','Mistilteinn'})

-- Idle Sets

layers.Sets.Idle = {
    Ammo = "Happy Egg",
    Head = "Dream Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Sorcerer's Earring",
    Ear2 = "Ethereal Earring",
    Body = "Dalmatica",
    Hands = "Merman's Bangles",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = {{ Name = "Umbra Cape", When = "Nighttime && ~MDT"},
            { Name = "Shadow Mantle" }},
    Waist = "Steppe Sash",
    Legs = "Src. Tonban +1",
    Feet = "Src. Sabots +1",
}

layers.Sets.Staff.Idle = { Main = "Terra's Staff" }
layers.Sets.Mistilteinn.Idle = { Main = "Mistilteinn", Sub = "Genbu's Shield" }

local MDT = {
    Ammo = "Phtm. Tathlum",
    Head = "Dream Ribbon",
    Neck = "Jeweled Collar +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Merman's Earring",
    Hands = "Merman's Bangles",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Hexerei Cape",
}

local PDT = {
    Main = "Terra's Staff",
    Ammo = "Happy Egg",
    Head = "Dream Ribbon",
    Ear1 = "Sorcerer's Earring",
    Ear2 = "Ethereal Earring",
    Ring1 = "Sattva Ring",
    Ring2 = "Jelly Ring",
    Back = {{ Name = "Umbra Cape", When = "Nighttime" },
            { Name = "Shadow Mantle" }}
}

layers.Sets.PDT.Idle = PDT
layers.Sets.MDT.Idle = MDT

layers.Sets.Resting = {
    Main = "Pluto's Staff",
    Ammo = "Dream Sand",
    Head = "Hydra Beret",
    Neck = "Uggalepih Pendant",
    Ear1 = "Relaxing Earring",
    Ear2 = "Loquac. Earring",
    Body = "Mahatma Hpl.",
    Hands = "Zenith Mitts",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Umbra Cape",
    Waist = "Hierarch Belt",
    Legs = "Baron's Slops",
    Feet = "Hydra Gaiters",
}

layers.Sets.MDT.Resting = MDT
layers.Sets.PDT.Resting = PDT

-- Interim sets

layers.Sets.Interimcast = layers.Sets.Idle
layers.Sets.PDT.Interimcast = PDT
layers.Sets.MDT.Interimcast = MDT

-- Precast sets

layers.Sets.Precast = {
    Ear2 = "Loquac. Earring",
    Feet = "Rostrum Pumps",
    Back = { Name = "Warlock's Mantle", When = "Player Subjob == Red Mage" }
}

-- Midcast sets

layers.Sets.Midcast = {
    Ammo = "Dream Sand",
    Head = "Nashira Turban",
    Ear1 = "Novia Earring",
    Ear2 = "Loquac. Earring",
    Body = "Nashira Manteel",
    Hands = "Nashira Gages",
    Back = "Errant Cape",
    Waist = "Swift Belt",
    Feet = "Rostrum Pumps",
}

-- Healing

layers.Sets.Midcast.Cure = {
    Main = "Apollo's Staff",
    Ammo = "Dream Sand",
    Head = "Hydra Beret",
    Ear1 = "Novia Earring",
    Ear2 = "Loquac. Earring",
    Body = "Hydra Doublet",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Back = "Errant Cape",
    Waist = "Penitent's Rope",
    Legs = "Mahatma Slops",
    Feet = "Hydra Gaiters",
}

-- Enfeebling

layers.Sets.Midcast.Enfeebling = {
    Ammo = "Phtm. Tathlum",
    Head = "Genie Tiara",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Ear2 = "Abyssal Earring",
    Body = "Wzd. Coat +1",
    Hands = {{ Name = "Mst.Cst. Bracelets", When = "Outside Nation Control" },
             { Name = "Wzd. Gloves +1" }},
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Altruistic Cape",
    Waist = "Sorcerer's Belt",
    Legs = "Nashira Seraweels",
    Feet = "Rostrum Pumps",
}

local MndPotency = {
    Neck = "Faith Torque",
    Ear1 = "Cmn. Earring",
    Ear2 = "Cmn. Earring",
    Body = "Mahatma Hpl.",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Back = "Prism Cape",
    Waist = "Penitent's Rope",
}

layers.Sets.Midcast['White Magic Enfeebling'] = {
    Ammo = "Dream Sand",
    Ear2 = "Cmn. Earring",
    Hands = "Dvt. Mitts +1",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Waist = "Penitent's Rope",
}

layers.Sets.Potency.Midcast.Slow = MndPotency
layers.Sets.Potency.Midcast.Paralyze = MndPotency

layers.Sets.Potency.Midcast.Blind = {
    Neck = "Prudence Torque",
    Ear1 = "Omn. Earring +1",
    Ear2 = "Abyssal Earring",
    Body = "Mahatma Hpl.",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Prism Cape",
    Legs = "Mahatma Slops",
}

-- Dark Magic

layers.Sets.Midcast.Dark = {
    Ammo = "Dream Sand",
    Head = "Nashira Turban",
    Neck = "Dark Torque",
    Ear1 = "Abyssal Earring",
    Ear2 = "Loquac. Earring",
    Body = "Nashira Manteel",
    Hands = "Src. Gloves +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Merciful Cape",
    Waist = "Swift Belt",
    Legs = "Wizard's Tonban",
    Feet = "Rostrum Pumps",
}

layers.Sets.Midcast['Absorption Dark'] = { Ring2 = "Overlord's Ring" }

layers.Sets.Midcast.Stun = {
    Ear1 = "Novia Earring",
    Back = "Errant Cape",
}

layers.Sets.Enmity.Midcast.Stun = {
    Waist = "Penitent's Rope",
    Body = "Hydra Doublet",
    Feet = "Hydra Gaiters",
}

layers.Sets['Weather Element == Dark && ~HighAcc'].Drain = { Main = "Diabolos's Pole" }
layers.Sets['Weather Element == Dark && ~HighAcc'].Aspir = { Main = "Diabolos's Pole" }

-- Enchancing

local EnchancingSkill = {
    Neck = "Enhancing Torque",
    Back = "Merciful Cape",
}

layers.Sets.Midcast.Phalanx = EnchancingSkill
layers.Sets.Midcast.Barspell = EnchancingSkill

layers.Sets.Midcast.Sneak = {
    Back = "Skulker's Cape",
    Feet = "Dream Boots +1",
}

layers.Sets.Midcast.Invisible = {
    Hands = "Dream Mittens +1",
    Back = "Skulker's Cape",
}

-- Elemental magic

local MaxPotency = {
    Ammo = "Phtm. Tathlum",
    Neck = {{ Name = "Uggalepih Pendant", When = "Player MPP After Cast < 50" },
            { Name = "Prudence Torque" }},
    Head = "Wzd. Petasos +1",
    Ear1 = "Moldavite Earring",
    Ear2 = "Novio Earring",
    Body = "Igqira Weskit",
    Hands = "Zenith Mitts",
    Ring1 = "Omniscient Ring",
    Ring2 = {{ Name = "Sorcerer's Ring", When = "SorcRing" },
             { Name = "Omniscient Ring" }},
    Back = "Prism Cape",
    Waist = "Sorcerer's Belt",
    Legs = "Mahatma Slops",
    Feet = "Src. Sabots +1",
}

local BurstGear = {
    Back = "Maledictor's Shawl",
    Hands = "Src. Gloves +1",
    Ammo = "Dream Sand",
}

local EnmityDownNuke = {
    Head = "Wzd. Petasos +1",
    Ear1 = "Novia Earring",
    Body = "Mahatma Hpl.",
    Back = "Errant Cape",
    Waist = "Penitent's Rope",
}

layers.Sets.Midcast.Elemental = MaxPotency
layers.Sets.MB.Midcast.Elemental = BurstGear
layers.Sets.Enmity.Midcast.Elemental = EnmityDownNuke

layers.Sets.LowAcc.Midcast.Elemental = {
    Hands = "Wzd. Gloves +1",
}

layers.Sets.MidAcc.Midcast.Elemental = {
    Head = "Src. Petasos +1",
    Hands = "Wzd. Gloves +1",
}

layers.Sets.HighAcc.Midcast.Elemental = {
    Head = "Src. Petasos +1",
    Hands = "Wzd. Gloves +1",
    Neck = "Elemental Torque",
}

layers.Sets.FullAcc.Midcast.Elemental = {
    Head = "Src. Petasos +1",
    Neck = "Elemental Torque",
    Hands = "Wzd. Gloves +1",
    Back = "Merciful Cape",
    Feet = "Nashira Crackows",
}

-- Ele Dots

layers.Sets.Midcast['Enfeebling Elemental'] = {
    Ammo = "Phtm. Tathlum",
    Neck = "Prudence Torque",
    Head = "Wzd. Petasos +1",
    Ear1 = "Abyssal Earring",
    Ear2 = "Omn. Earring +1",
    Body = "Mahatma Hpl.",
    Hands = "Wzd. Gloves +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Prism Cape",
    Waist = "Sorcerer's Belt",
    Legs = "Mahatma Slops",
    Feet = "Src. Sabots +1",
}

layers.Sets.Enmity.Midcast['Enfeebling Elemental'] = layers.Sets.Midcast['Enfeebling Elemental']

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

-- Sorc Ring Helper

local HPReductionSets = {
    ['Off'] = {
        Head = "Zenith Crown",
        Neck = "Checkered Scarf",
        Hands = "Zenith Mitts",
        Ring1 = "Ether Ring",
        Waist = "Hierarch Belt",
        Feet = "Rostrum Pumps",
    },
    ['Enmity'] = {
        Head = "Zenith Crown",
        Hands = "Zenith Mitts",
        Ring1 = "Ether Ring",
        Waist = "Penitent's Rope",
        Feet = "Rostrum Pumps",
    },
}

local HPReductionValues = {
    ['Off'] = 612,
    ['Enmity'] = 592,
}

layers.RegisterCallback("PreHandlePrecast", function(spell)
    
    if sorc.current == "Off" then return end

    local classifiers = layers.GetClassifiers('Spell', spell.Name)
    if not classifiers['Elemental'] or classifiers['Enfeebling Elemental'] then return end

    local player = gData.GetPlayer()
    local selector = enmity.current
    local set = HPReductionSets[selector]
    local threshold = HPReductionValues[selector]

    if player.HP > threshold then
        gFunc.ForceEquipSet(set)
    end
end, "Sorc. Ring HP Helper")

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

-- Mog helper

local lockstyle = {
    Main = "Levin",
    Head = "Hydra Beret",
    Body = "Dalmatica",
    Hands = "Src. Gloves +1",
    Legs = "Nashira Seraweels",
    Feet = "Src. Sabots +1",
}

layers.UserOnLoad = function()
    gSettings.AllowAddSet = false
    gFunc.LockStyle(lockstyle)
end

-- Sticky items

local charged = {
    "Reraise Hairpin","Reraise Earring",
    "Warp Cudgel","Treat Staff II",
    "Chariot Band",
    "Dem Ring","Altep Ring","Tavnazian Ring",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

return layers