local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Smiley",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Smiley/main/Old%20RUSH.rbxm",

    Speed = 125,
    DelayTime = 4,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {4, 30, 0.2, 1.2},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11281697196",
            Image2 = "rbxassetid://11281697196",

            Shake = true,

            Sound1 = {
                10483790459,
                { Volume = 0.5 },
            },

            Sound2 = {
                10483837590,
                { Volume = 0.5 },
            },

            Flashing = {
                true,
                Color3.fromRGB(0, 26, 255),
            },

            Tease = {
                true,
                Min = 1,
                Max = 6,
            },
        },
    },

    CustomDialog = {
        "You died to Smiley..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Smiley has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Smiley has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Smiley has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Smiley has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Smiley has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at Smiley:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Smiley.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
