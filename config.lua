Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1800 -- AFK Kick Time Limit (in seconds)
}

Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = false, -- Police Helicopters
    [3] = false, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = false, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    ["IsEnabled"] = true, -- If set to true, then discord rich presence will be enabled
    ["ApplicationId"] = '1007603934929629204', -- The discord application id
    ["IconLarge"] = 'logo1', -- The name of the large icon
    ["IconLargeHoverText"] = 'cfx.re/join/d8yrjj', -- The hover text of the large icon
    ["IconSmall"] = 'tick', -- The name of the small icon
    ["IconSmallHoverText"] = 'https://discord.com/invite/srialawwarp', -- The hover text of the small icon
    ["UpdateRate"] = 60000, -- How often the player count should be updated
    ["ShowPlayerCount"] = true, -- If set to true the player count will be displayed in the rich presence
    ["MaxPlayers"] = 100, -- Maximum amount of players
    ["Buttons"] = {
        {
            text = 'Connect to Server!',
            url = 'cfx.re/join/d8yrjj'
        },
        {
            text = 'Discord!',
            url = 'https://discord.com/srialawwarp'
        }
    }
}

Config.Density = {
    ['parked'] = 0.4,
    ['vehicle'] = 0.4,
    ['multiplier'] = 0.6,
    ['peds'] = 0.6,
    ['scenario'] = 0.6,
}

Config.Cruise = 'kmp/h'
Config.IdleCamera = true
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = true -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "Sri Alawwa RP" -- This is the name / text shown above the map

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.ConsumablesEat = {

    ["tosti"] = math.random(35, 54),
        ["twerks_candy"] = math.random(35, 54),
        ["snikkel_candy"] = math.random(35, 54),
        ["sandwich"] = math.random(35, 54),
        ["piripiri"] = math.random(35, 54),
        ["jollof"] = math.random(35, 54),
        ["cachupa"] = math.random(35, 54),
        ["nyama"] = math.random(35, 54),
        ["tanjine"] = math.random(35, 54),
        ["malva"] = math.random(35, 54),
        ["umm"] = math.random(35, 54),
        ["crunchies"] = math.random(35, 54),
        ["cheeseburger"] = math.random(35, 54),
        ["fries"] = math.random(35, 54),
        ["poutine"] = math.random(35, 54),
        ["buffalowings"] = math.random(35, 54),
        ["clamchowder"] = math.random(35, 54),
        ["carrotcake"] = math.random(35, 54),
        ["chococupcake"] = math.random(35, 54),
        ["chocochipcookie"] = math.random(35, 54),
        ["toadhole"] = math.random(35, 54),
        ["hagneep"] = math.random(35, 54),
        ["sconejam"] = math.random(35, 54),
        ["fishchip"] = math.random(35, 54),
        ["bangersmash"] = math.random(35, 54),
        ["applepiecus"] = math.random(35, 54),
        ["bfgateau"] = math.random(35, 54),
        ["cheesecake"] = math.random(35, 54),
        ["pekingduck"] = math.random(35, 54),
        ["congee"] = math.random(35, 54),
        ["baozi"] = math.random(35, 54),
        ["mapotofu"] = math.random(35, 54),
        ["lomaigai"] = math.random(35, 54),
        ["dragonbeard"] = math.random(35, 54),
        ["tanghulu"] = math.random(35, 54),
        ["eggtart"] = math.random(35, 54),
        ["boeufbourg"] = math.random(35, 54),
        ["quichelor"] = math.random(35, 54),
        ["escargot"] = math.random(35, 54),
        ["gratindauph"] = math.random(35, 54),
        ["coqauvin"] = math.random(35, 54),
        ["macarons"] = math.random(35, 54),
        ["cremebrulee"] = math.random(35, 54),
        ["canneles"] = math.random(35, 54),
        ["spatzle"] = math.random(35, 54),
        ["sauerbraten"] = math.random(35, 54),
        ["currywurst"] = math.random(35, 54),
        ["bratwurst"] = math.random(35, 54),
        ["schnitzel"] = math.random(35, 54),
        ["berliner"] = math.random(35, 54),
        ["applestrudel"] = math.random(35, 54),
        ["spagicecream"] = math.random(35, 54),
        ["dolmades"] = math.random(35, 54),
        ["moussaka"] = math.random(35, 54),
        ["spanakopita"] = math.random(35, 54),
        ["wineocto"] = math.random(35, 54),
        ["courgette"] = math.random(35, 54),
        ["baklava"] = math.random(35, 54),
        ["halva"] = math.random(35, 54),
        ["galakto"] = math.random(35, 54),
        ["butterchicken"] = math.random(35, 54),
        ["palakpaneer"] = math.random(35, 54),
        ["naanbread"] = math.random(35, 54),
        ["coconutrice"] = math.random(35, 54),
        ["vegpakora"] = math.random(35, 54),
        ["gulabjamun"] = math.random(35, 54),
        ["kheer"] = math.random(35, 54),
        ["rasmalai"] = math.random(35, 54),
        ["carbonara"] = math.random(35, 54),
        ["pineapplepizza"] = math.random(35, 54),
        ["risotto"] = math.random(35, 54),
        ["ossobuco"] = math.random(35, 54),
        ["capresesalad"] = math.random(35, 54),
        ["cannoli"] = math.random(35, 54),
        ["panettone"] = math.random(35, 54),
        ["strawberrygelato"] = math.random(35, 54),
        ["californiaroll"] = math.random(35, 54),
        ["teriyakichicken"] = math.random(35, 54),
        ["udonnoodles"] = math.random(35, 54),
        ["ramen"] = math.random(35, 54),
        ["salmonsashimi"] = math.random(35, 54),
        ["wagashi"] = math.random(35, 54),
        ["coffeejjelly"] = math.random(35, 54),
        ["taiyaki"] = math.random(35, 54),
        ["jjajangmyeon"] = math.random(35, 54),
        ["budaejjigae"] = math.random(35, 54),
        ["kimchi"] = math.random(35, 54),
        ["tteokbokki"] = math.random(35, 54),
        ["bibimbap"] = math.random(35, 54),
        ["bingsu"] = math.random(35, 54),
        ["dasik"] = math.random(35, 54),
        ["hotteok"] = math.random(35, 54),

        --new food items
        ["marshy-aero"] = math.random(35, 54), 
        ["marshy-beanz"] = math.random(35, 54),     
        ["marshy-bourbon"] = math.random(35, 54),
        ["marshy-bubbaloo"] = math.random(35, 54),
        ["marshy-bueno"] = math.random(35, 54),
        ["marshy-chrunchie"] = math.random(35, 54),
        ["marshy-creame-egg"] = math.random(35, 54),
        ["marshy-crumpets"] = math.random(35, 54),    
        ["marshy-custard-cream"] = math.random(35, 54),
        ["marshy-dairymilk"] = math.random(35, 54),
        ["marshy-dibdabs"] = math.random(35, 54),
        ["marshy-digestive"] = math.random(35, 54),
        ["marshy-dunkers"] = math.random(35, 54),    
        ["marshy-flake"] = math.random(35, 54),
        ["marshy-wispa"] = math.random(35, 54),
        ["marshy-frazzles"] = math.random(35, 54),
        ["marshy-freddo"] = math.random(35, 54),
        ["marshy-fruit-tella"] = math.random(35, 54),
        ["marshy-hobnobs"] = math.random(35, 54),
        ["marshy-hula-hoops"] = math.random(35, 54),    
        ["marshy-jammy-dodger"] = math.random(35, 54),
        ["marshy-kipling"] = math.random(35, 54),
        ["marshy-kitkat"] = math.random(35, 54),
        ["marshy-kp-peanuts"] = math.random(35, 54),
        ["marshy-malteasers"] = math.random(35, 54),
        ["marshy-maoam-stripes"] = math.random(35, 54),
        ["marshy-marylands"] = math.random(35, 54),
        ["marshy-milkeybar"] = math.random(35, 54),
        ["marshy-milkeyway"] = math.random(35, 54),
        ["marshy-millions"] = math.random(35, 54),
        ["marshy-mini-rolls"] = math.random(35, 54),
        ["marshy-monstor-munch"] = math.random(35, 54),
        ["marshy-niknaks"] = math.random(35, 54),
        ["marshy-penguin"] = math.random(35, 54),    
        ["marshy-pom-bear"] = math.random(35, 54),
        ["marshy-pork-pie"] = math.random(35, 54),
        ["marshy-pot-noodle"] = math.random(35, 54),
        ["marshy-pudding"] = math.random(35, 54),
        ["marshy-quavers"] = math.random(35, 54),
        ["marshy-sensations"] = math.random(35, 54),
        ["marshy-skips"] = math.random(35, 54),
        ["marshy-skittles"] = math.random(35, 54),
        ["marshy-space-raiders"] = math.random(35, 54),    
        ["marshy-squashies"] = math.random(35, 54),
        ["marshy-starbursts"] = math.random(35, 54),
        ["marshy-tangfastics"] = math.random(35, 54),
        ["marshy-teacake"] = math.random(35, 54),
        ["marshy-timeout"] = math.random(35, 54),
        ["marshy-twirl"] = math.random(35, 54),
        ["marshy-wagonwheel"] = math.random(35, 54),
        ["marshy-walkers.cao"] = math.random(35, 54),
        ["marshy-walkers.rc"] = math.random(35, 54),    
        ["marshy-walkers.rs"] = math.random(35, 54),
        ["marshy-walkers.sav"] = math.random(35, 54),
        ["marshy-corner.bcf"] = math.random(35, 54),
        ["marshy-corner.s"] = math.random(35, 54),
        ["marshy-corner.vcb"] = math.random(35, 54),
        ["marshy-mccoys.fgs"] = math.random(35, 54),
        ["marshy-mccoys.salted"] = math.random(35, 54),    
        ["marshy-mccoys.sav"] = math.random(35, 54),
        ["marshy-mccoys.tsc"] = math.random(35, 54),
        ["marshy-dorito.classic"] = math.random(35, 54),
        ["marshy-dorito.coolranch"] = math.random(35, 54),
        ["marshy-dorito.flaming"] = math.random(35, 54),
        ["marshy-dorito.heatwave"] = math.random(35, 54),
        ["marshy-greggs.d"] = math.random(35, 54),
        ["marshy-greggs.sb"] = math.random(35, 54),
        ["marshy-greggs.sr"] = math.random(35, 54),
        ["marshy-marshmallow"] = math.random(35, 54),
        ["marshy-maxibon"] = math.random(35, 54),
        ["marshy-pringles.o"] = math.random(35, 54),
        ["marshy-pringles.sc"] = math.random(35, 54),
        ["marshy-starmix"] = math.random(35, 54),
}

Config.ConsumablesDrink = {
    ["water_bottle"] = math.random(15, 25),
    ["coffee"] = math.random(15, 25),
    ["kurkakola"] = math.random(15, 25),
    ["zobo"] = math.random(15, 25),
    ["amasi"] = math.random(15, 25),
    ["mazagran"] = math.random(15, 25),
    ["raspitaliansoda"] = math.random(15, 25),
    ["rootbeer"] = math.random(15, 25),
    ["cafeaulait"] = math.random(15, 25),
    ["lucozadeo"] = math.random(15, 25),
    ["irnbru"] = math.random(15, 25),
    ["oasissf"] = math.random(15, 25),
    ["pearlmilktea"] = math.random(15, 25),
    ["tietea"] = math.random(15, 25),
    ["saltsoda"] = math.random(15, 25),
    ["gini"] = math.random(15, 25),
    ["diabolo"] = math.random(15, 25),
    ["clubmate"] = math.random(15, 25),
    ["spezi"] = math.random(15, 25),
    ["apfelschorle"] = math.random(15, 25),
    ["ellikafe"] = math.random(15, 25),
    ["visinada"] = math.random(15, 25),
    ["lassimango"] = math.random(15, 25),
    ["maschai"] = math.random(15, 25),
    ["falooda"] = math.random(15, 25),
    ["crodino"] = math.random(15, 25),
    ["spuma"] = math.random(15, 25),
    ["calpis"] = math.random(15, 25),
    ["greentea"] = math.random(15, 25),
    ["melonsoda"] = math.random(15, 25),
    ["dalgona"] = math.random(15, 25),
    ["milkis"] = math.random(15, 25),
    ["subakhwa"] = math.random(15, 25),
}

Config.ConsumablesAlcohol = {
     ["diablo"] = math.random(15, 25),
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    ["redwine"] = math.random(20, 40),
    ["whitewine"] = math.random(20, 40),
    ["ouzo"] = math.random(20, 40),
}

Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40), 
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.HolsterVariant = {130,122,3,6,8}
Config.HolsterableWeapons = {
    --'WEAPON_STUNGUN',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL'
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(-793.86, -1246.05, 7.34, 241.9),
            ['AllowVehicle'] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(-773.97, -1207.42, 51.15, 141.64),
            ['AllowVehicle'] = false,
            drawText = '[E] Take Elevator Down'
        },
    },
}

Config.DefaultPrice = 50 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(174.81, -1736.77, 28.87),
            length = 7.0,
            width = 8.8,
            heading = 359
        }
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(25.2, -1391.98, 28.91),
            length = 6.6,
            width = 8.2,
            heading = 0
        }
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-74.27, 6427.72, 31.02),
            length = 9.4,
            width = 8,
            heading = 315
        }
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(1362.69, 3591.81, 34.5),
            length = 6.4,
            width = 8,
            heading = 21
        }
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-699.84, -932.68, 18.59),
            length = 11.8,
            width = 5.2,
            heading = 0
        }
    }
}
