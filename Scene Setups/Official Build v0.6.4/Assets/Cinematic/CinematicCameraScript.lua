function GetTableCinematicCameraScript()
local lua_table = {}
lua_table.System = Scripting.System()
lua_table.Transform = Scripting.Transform()
lua_table.GameObjectFunctions = Scripting.GameObject()
lua_table.Audio = Scripting.Audio()
lua_table.Scene = Scripting.Scenes()
lua_table.Input = Scripting.Inputs()
lua_table.UI = Scripting.Interface()

-- Camera target GO names
lua_table.cube = "Cube"
lua_table.value_ = 0
lua_table.scene_uid = 0
lua_table.skip_threshold = 0
local Fade = 0

-- Camera position
local offset = {}
local position_z = {}

-- Jaskier UID
local Cube_ID = 0
local BarID = 0 -- Ciruclar bar for skip

-- Time management
local time = 0
local started_time = 0
local start_motion_time = 0

-- Camera Positions
local CurrentCameraPos = {}
local Pos_Minions = {508.406, 57.469, -204.635}

-- Cinematic conditions 
local follow_jaskier = false
local camera_panning = true
local conversation_finished = false
local start_motion = false

-- Dummy bools
local music_played = false
local cube_moved = false
local next_scene = true

local function Lerp(start, end_, value)

    if value > 1.0
    then
        value = 1.0
    end

    return (1 - value) * start + value * end_
end

local function GoTo(position, speed)

    speed = 1000 / speed
    value = time / speed

    local pos = lua_table.Transform:GetPosition(lua_table.GameObjectFunctions:GetMyUID())

    local x = Lerp(pos[1], position[1], value)
    local y = Lerp(pos[2], position[2], value)
    local z = Lerp(pos[3], position[3], value)

    lua_table.Transform:SetPosition(x, y, z, lua_table.GameObjectFunctions:GetMyUID())

end

local function SkipButton()

    -- Skip Scene code
    if lua_table.skip_threshold <= 0.00 then
       lua_table.skip_threshold = 0.00
   end

   if lua_table.Input:IsGamepadButton(1, "BUTTON_A", "REPEAT") and next_scene == true then
       lua_table.skip_threshold = lua_table.skip_threshold + 0.4
   else 
       lua_table.skip_threshold = lua_table.skip_threshold - 0.6
   end

   if lua_table.skip_threshold >= 100 and next_scene == true then
       lua_table.Scene:LoadScene(lua_table.scene_uid)
       next_scene = false
   end

   lua_table.UI:SetUICircularBarPercentage(lua_table.skip_threshold, BarID)

end

function lua_table:Awake()
    lua_table.System:LOG ("This Log was called from CinematicCameraScript on AWAKE")
end

function lua_table:Start()
    -- Camera initial position (Players unseen)
    lua_table.Transform:SetPosition(424.949, 57.469, -266.669, lua_table.GameObjectFunctions:GetMyUID())
    lua_table.Transform:SetObjectRotation(132.264, 38.413, -147.605, lua_table.GameObjectFunctions:GetMyUID())

    Cube_ID = lua_table.GameObjectFunctions:FindGameObject(lua_table.cube)
    BarID = lua_table.GameObjectFunctions:FindGameObject("SkipBarForest")
    Fade = lua_table.GameObjectFunctions:FindGameObject("Fade")

    started_time = lua_table.System:GameTime()
end


function lua_table:Update()
    time = lua_table.System:GameTime() - started_time
    CurrentCameraPos = lua_table.Transform:GetPosition(lua_table.GameObjectFunctions:GetMyUID())

    SkipButton()

    if camera_panning -- Camera pans sideways
    then
        GoTo(Pos_Minions, 1)

        local value = time / 4
        local alpha = Lerp(1, 0, value)
        lua_table.UI:ChangeUIComponentColor("Image",0,0,0, alpha, Fade)



        if CurrentCameraPos[1] == Pos_Minions[1]
        then
            -- local pos = lua_table.Transform:GetPosition(lua_table.GameObjectFunctions:GetMyUID()) 
            -- local cube_pos = lua_table.Transform:GetPosition(Cube_ID)

            -- offset[1] = pos[1] - cube_pos[1]
            -- offset[2] = pos[2] - cube_pos[2]
            -- offset[3] = pos[3] - cube_pos[3]

            camera_panning = false
        end
    end
    
    -- if not camera_panning -- Follow Cube
    -- then 
    --     local new_pos = {}
    --     local cube_pos = lua_table.Transform:GetPosition(Cube_ID)

    --     new_pos[1] = cube_pos[1] + offset[1]
    --     new_pos[2] = cube_pos[2] + offset[2]
    --     new_pos[3] = cube_pos[3] + offset[3]
      
    --     lua_table.Transform:SetPosition(new_pos[1], new_pos[2], new_pos[3], lua_table.GameObjectFunctions:GetMyUID())
    -- end

    -- if time > 1.76 and not music_played -- Accurate time when sound starts playing
    -- then

    --     lua_table.Audio:PlayAudioEvent("Play_lvl1_Intro_conversation_Cutscene")
    --     music_played = true
    -- end

    -- if time > 31 and not start_motion
    -- then
    --     start_motion_time = time
    --     position_z = lua_table.Transform:GetPosition(lua_table.GameObjectFunctions:GetMyUID())
    --     start_motion = true 
    -- end

    -- if start_motion -- Zoom
    -- then
    --     local motion_time = time - start_motion_time
    --     local value_ = motion_time / 5
        
    --     local z = Lerp(position_z[3], -4000, value_)

    --     lua_table.Transform:SetPosition(position_z[1], position_z[2], z, lua_table.GameObjectFunctions:GetMyUID())
    -- end

	--  if time > 38 and next_scene == true
    -- then
    --     lua_table.Scene:LoadScene(lua_table.scene_uid)
	-- 	next_scene = false
    -- end
   
end

return lua_table
end