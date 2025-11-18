local layers = gFunc.LoadFile('layers\\layers.lua')

AshitaCore:GetChatManager():QueueCommand(-1,'/macro book 2')

local idle = layers.CreateModeGroup('IdleStyle', {'Off','IdlePDT','IdleMDT','IdleHP','IdleMP'},'+1')
local resists = layers.CreateModeGroup('Resist', {'Off','Lightning'},'+2')
local refresh = layers.CreateModeGroup('Refresh',{'Refresh','Off'},'+3')
local weapon = layers.CreateModeGroup('Weapon',{'Staff','Mistilteinn','Sword','Dagger','Club'},'m')
local kite = layers.CreateModeGroup('Kite',{'Kite','Off'}, 'k')
local pdt = layers.CreateModeGroup('PDT', {'Off', 'PDT'}, '2')
local mdt = layers.CreateModeGroup('MDT', {'Off', 'MDT'}, '1')
local bdt = layers.CreateModeGroup('BDT', {'Off', 'BDT'}, '3')
local mp = layers.CreateModeGroup('MP', {'Off', 'MP'}, '5')
local hp = layers.CreateModeGroup('HP', {'Off', 'HP'}, '4')
local melee = layers.CreateModeGroup('Melee', {'Off', 'Melee'},'+m')
local tank = layers.CreateModeGroup('Tank', {'Off', 'Tank'},'+t')
local cast_style = layers.CreateModeGroup('Cast Style',{'Off','Potency','Accuracy'})
local dart = layers.CreateModeGroup('Dart', {'Off','Dart'})

-- Idle / Engaged / Resting

layers.Sets.Idle = {
    Ammo = "Happy Egg",
    Head = "Dls. Chapeau +1",
    Neck = "Jeweled Collar +1",
    Ear1 = "Merman's Earring",
    Ear2 = "Ethereal Earring",
    Body = "Dalmatica",
    Hands = "Dls. Gloves +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Shadow Ring",
    Back = "Shadow Mantle",
    Waist = "Hierarch Belt",
    Legs = "Dst. Subligar +1",
    Feet = "Dst. Leggings +1",
}

layers.Sets.Staff.Idle = { Main = "Terra's Staff" }
layers.Sets.Mistilteinn.Idle = {
    Main = "Mistilteinn",
    Sub = "Genbu's Shield"
}

layers.Sets['Nighttime && ~MDT'].Idle = { Back = "Umbra Cape" }

layers.Sets.Refresh.Idle = {
    Head = "Dls. Chapeau +1",
    Body = "Dalmatica",
}

layers.Sets.Dart.Idle = { Ammo = "Dart" }

local PDT = {
    Ammo = "Happy Egg",
    Head = "Darksteel Cap +1",
    Body = "Dst. Harness +1",
    Hands = "Dst. Mittens +1",
    Ring1 = "Sattva Ring",
    Ring2 = "Jelly Ring",
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

layers.Sets.IdleHP.Idle = {
    ring2 = "Bloodbead Ring",
    --ring2 = "Bomb Queen Ring",
    waist = "Steppe Sash",
}

layers.Sets.IdleMP.Idle = {
    Hands = "Blood Fng. Gnt.",
    Neck = "Uggalepih Pendant",
    Waist = "Hierarch Belt",
}

layers.Sets.PDT.Idle = PDT
layers.Sets.IdlePDT.Idle = PDT
layers.Sets.MDT.Idle = MDT
layers.Sets.IdleMDT.Idle = MDT

layers.Sets.Kite.Idle = { Legs = "Blood Cuisses" }

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
    Body = "Mahatma Hpl.",
    Hands = "Hydra Gloves",
    Back = "Errant Cape",
    Waist = "Duelist's Belt",
    Legs = "Baron's Slops",
    Feet = "Hydra Gaiters",
}

layers.Sets['Player MP > 800'].Resting = {
    Body = "Dalmatica",
    Waist = "Hierarch Belt",
    Hands = "Blood Fng. Gnt.",
    Legs = "Blood Cuisses",
}

-- Melee memes

local club_mh = { Main = "Octave Club", Sub = "Genbu's Shield" }
local club_oh = { Sub = "Octave Club" }
local knife = { Main = "Martial Knife", Sub = "Genbu's Shield" }
local joyeuse = { Main = "Joyeuse", Sub = "Genbu's Shield" }

layers.Sets.Sword.Idle = joyeuse
layers.Sets['Player Subjob == Ninja && ~Staff && ~Club'].Idle = club_oh
layers.Sets.Dagger.Idle = knife
layers.Sets.Club.Idle = club_mh

layers.Sets.Sword.Engaged = joyeuse
layers.Sets['Player Subjob == Ninja && ~Staff && ~Club'].Engaged = club_oh
layers.Sets.Dagger.Engaged = knife
layers.Sets.Club.Engaged = club_mh

layers.Sets.Sword.Resting = joyeuse
layers.Sets['Player Subjob == Ninja && ~Staff && ~Club'].Resting = club_oh
layers.Sets.Dagger.Resting = knife
layers.Sets.Club.Resting = club_mh

layers.Sets.Melee.Engaged = {
    Head = "Nashira Turban",
    Neck = "Dream Collar",
    Ear1 = "Brutal Earring",
    Ear2 = "Ethereal Earring",
    Body = "Nashira Manteel",
    Hands = "Dusk Gloves",
    Ring1 = "Triumph Ring",
    Ring2 = "Triumph Ring",
    Back = "Forager's Mantle",
    Waist = "Swift Belt",
    Legs = "Nashira Seraweels",
    Feet = "Nashira Crackows",
}

layers.Sets['Player Subjob == Ninja && ~Staff && ~Club'].Melee.Engaged = {
    Ear2 = "Stealth Earring"
}

layers.Sets['Refresh && Melee'].Engaged = {
    Head = "Dls. Chapeau +1",
    Body = "Dalmatica",
}

-- Interim Sets

layers.Sets.Interimcast = PDT
layers.Sets.PDT.Interimcast = PDT
layers.Sets.HP.Interimcast = {
    Ammo = "Happy Egg",
    Ring1 = "Sattva Ring",
    Ring2 = "Bloodbead Ring",
    Back = "Gigant Mantle",
    Waist = "Steppe Sash",
}

layers.Sets.MDT.Interimcast = MDT

layers.Sets.Refresh.Interimcast = layers.Sets.Refresh.Idle

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

layers.Sets.HP.Midcast = layers.Sets.HP.Interimcast

layers.Sets['Tank && HP'].Midcast = {
    Ear1 = "Cassie Earring",
}

layers.Sets.MP.Midcast = {
    Ammo = "Dream Sand",
    Ear1 = "Loquac. Earring",
    Waist = "Hierarch Belt"
}

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

layers.Sets.Midcast.Enfeebling = {
    Ammo = "Phtm. Tathlum",
    Head = "Dls. Chapeau +1",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Ear2 = "Abyssal Earring",
    Body = "Wlk. Tabard +1",
    Hands = "Dls. Gloves +1",
    Ring1 = "Omniscient Ring",
    Ring2 = "Omniscient Ring",
    Back = "Altruistic Cape",
    Waist = "Penitent's Rope",
    Legs = "Nashira Seraweels",
    Feet = "Nashira Crackows",
}

layers.Sets['Accuracy && Outside Nation Control'].Midcast.Enfeebling = {
    Hands = "Mst.Cst. Bracelets"
}

local mnd_potency = {
    Neck = "Faith Torque",
    Ear1 = "Cmn. Earring",
    Ear2 = "Cmn. Earring",
    Body = "Mahatma Hpl.",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
    Back = "Prism Cape",
}

layers.Sets.Midcast['White Magic Enfeebling'] = {
    Ammo = "Dream Sand",
    Ear2 = "Cmn. Earring",
    Hands = "Dvt. Mitts +1",
    Ring1 = "Aqua Ring",
    Ring2 = "Aqua Ring",
}

layers.Sets.Midcast.Slow = mnd_potency
layers.Sets.Midcast.Paralyze = mnd_potency

layers.Sets.Midcast.Blind = {
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

local max_potency = {
    Main = "Mistilteinn",
    Sub = "Nms. Shield +1",
}

layers.Sets.Potency.Midcast.Slow = max_potency
layers.Sets.Potency.Midcast.Paralyze = max_potency
layers.Sets.Potency.Midcast.Blind = max_potency

layers.Sets.Accuracy.Midcast.Enfeebling = {
    Head = "Dls. Chapeau +1",
    Neck = "Enfeebling Torque",
    Ear1 = "Enfeebling Earring",
    Body = "Wlk. Tabard +1",
    Back = "Altruistic Cape",
    Legs = "Nashira Seraweels",
}

layers.Sets.Midcast.Elemental = {
    Ammo = "Phtm. Tathlum",
    Head = "Wlk. Chapeau +1",
    Neck = "Prudence Torque",
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

layers.Sets['~Accuracy && Player MPP After Cast < 50'].Midcast.Elemental = {
    Neck = "Uggalepih Pendant"
}

layers.Sets.Accuracy.Midcast.Elemental = {
    Neck = "Elemental Torque",
    Hands = "Dls. Gloves +1",
    Feet = "Nashira Crackows",
}

layers.Sets.Midcast['Enfeebling Elemental'] = {
    Ammo = "Phtm. Tathlum",
    Head = "Wlk. Chapeau +1",
    -- Neck = "Prudence Torque",
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

layers.Sets.Midcast['Absorption Dark'] = {
    Ring2 = "Overlord's Ring",
}

-- Specific Spells

local enchancing_skill = {
    Neck = "Enhancing Torque",
    Hands = "Dls. Gloves +1",
    Back = "Merciful Cape",
    Legs = "Wlk. Tights +1",
}

layers.Sets.Midcast.Phalanx = enchancing_skill
layers.Sets.Midcast.Barspell = enchancing_skill
layers.Sets.Midcast.Enspell = enchancing_skill

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

layers.Sets['Player MP >= 62'].Midcast.Refresh = { Ring2 = "Dilation Ring" }
layers.Sets['Player MP >= 50'].Midcast.Haste = { Ring2 = "Dilation Ring" }

layers.Sets.Midcast.Sneak = {
    Back = "Skulker's Cape",
    Feet = "Dream Boots +1",
}
layers.Sets.Midcast.Invisible = {
    Hands = "Dream Mittens +1",
    Back = "Skulker's Cape",
}

-- Tank Midcast

local low_recast = {
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

local high_recast = {
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

layers.Sets.Tank.Midcast.Cure = {
    Main = "Apollo's Staff",
    Ammo = "Happy Egg",
    Head = "Baron's Chapeau",
    Neck = "Harmonia's Torque",
    Ear1 = "Hades Earring +1",
    Ear2 = "Eris' Earring +1",
    Body = "Dls. Tabard +1",
    Hands = "Dusk Gloves",
    Ring1 = "Sattva Ring",
    Ring2 = "Mermaid Ring",
    Back = "Resentment Cape",
    Waist = "Swift Belt",
    Feet = "Dst. Leggings +1"
}

local SelfCurePredicate = ('Tank && Action Target Name == %s'):format(gData.GetPlayer().Name)

layers.Sets[SelfCurePredicate].Midcast.Cure = {
    Hands = "Blood Fng. Gnt.",
    Ring2 = "Bomb Queen Ring",
    Back = "Gigant Mantle",
    Legs = "Blood Cuisses",
}

layers.Sets.Tank.Midcast.Dispel = low_recast
layers.Sets.Tank.Midcast.Sleep = high_recast
layers.Sets.Tank.Midcast.Dia = low_recast
layers.Sets.Tank.Midcast.Poisonga = low_recast
layers.Sets.Tank.Midcast.Blind = low_recast
layers.Sets.Tank.Midcast.Bind = high_recast

-- Obis

layers.Sets['Environment Score > 0'].Midcast['Lightning Magic Damage'] = { Waist = "Rairin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Water Magic Damage'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Water Enfeeblement'] = { Waist = "Suirin Obi" }
layers.Sets['Environment Score > 0'].Midcast['Fire Magic Damage'] = { Waist = "Kairin Obi" }
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

local cures = {
    ['Cure III'] = 950,
    ['Cure IV'] = 800,
}

local hp_down = {
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
    local hp = cures[spell.Name] 
    if hp then
        local at = gData.GetActionTarget()
        local player = gData.GetPlayer()
        if at.Name == player.Name then
            if player.HP >= hp then
                local set = hp_down[spell.Name]
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

local charged = {
    "Reraise Hairpin","Reraise Earring",
    "Warp Cudgel","Treat Staff II",
    "Chariot Band",
    "Dem Ring","Altep Ring","Tavnazian Ring",
    "Powder Boots",
}

for _,v in pairs(charged) do layers.AddChargedItem(v) end

return layers