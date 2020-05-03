function GetTableMainMenuUI_v01()

local lua_table = {}

lua_table.SystemFunctions = Scripting.System()
lua_table.InterfaceFunctions = Scripting.Interface()
lua_table.SceneFunctions = Scripting.Scenes()
lua_table.CameraFunctions = Scripting.Camera()
lua_table.ObjectFunctions = Scripting.GameObject()
lua_table.TransformFuctions = Scripting.Transform()
lua_table.AudioFunctions = Scripting.Audio()

-----------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------

-- Lua table variabes
lua_table.scene_1 = 0
lua_table.scene_2 = 0
lua_table.cameraSpeed = 25

-- Local variables
local startButton = 0
local quitButton = 0
local playButton = 0
local firstLevelButton = 0
local secondLevelButton = 0
local firstLevelImage = 0
local secondLevelImage = 0
local camera_UUID = 0
local dt = 0

local startingGame = false
local playingGame = false
local loadLevel1 = false
local loadLevel2 = false

function lua_table:Awake()
	camera_UUID = lua_table.ObjectFunctions:FindGameObject("Camera")
	startButton = lua_table.ObjectFunctions:FindGameObject("StartButton")
	playButton = lua_table.ObjectFunctions:FindGameObject("PlayButton")
	quitButton = lua_table.ObjectFunctions:FindGameObject("QuitButton")
	showFirstLevel = lua_table.ObjectFunctions:FindGameObject("ShowFirstLevelButton")
	showSecondLevel = lua_table.ObjectFunctions:FindGameObject("ShowSecondLevelButton")
	firstLevelPlay = lua_table.ObjectFunctions:FindGameObject("PlayFirstLevelButton")
	secondLevelPlay = lua_table.ObjectFunctions:FindGameObject("PlaySecondLevelButton")
	firstLevelImage = lua_table.ObjectFunctions:FindGameObject("FirstLevelImage")
	secondLevelImage = lua_table.ObjectFunctions:FindGameObject("SecondLevelImage")
end

function lua_table:Start()
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", quitButton)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", startButton)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", playButton)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", showFirstLevel)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", showSecondLevel)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", firstLevelPlay)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", secondLevelPlay)
end

function lua_table:Update()
	dt = lua_table.SystemFunctions:DT()
	lua_table.currentCameraPos = lua_table.TransformFuctions:GetPosition(camera_UUID)

	-- Camera movement management
	if startingGame == true
	then
		if lua_table.currentCameraPos[1] < lua_table.lastCameraPos[1] + 30
		then
			lua_table.TransformFuctions:Translate(lua_table.cameraSpeed * dt, -lua_table.cameraSpeed/3 * dt, 0, camera_UUID)
		else		
			startingGame = false
			lua_table.InterfaceFunctions:MakeElementVisible("Button", playButton)
			lua_table.InterfaceFunctions:MakeElementVisible("Button", quitButton)
		end
	end

	if loadLevel1 == true
	then	
		lua_table.SceneFunctions:LoadScene(lua_table.scene_1)
	end

	if loadLevel2 == true
	then	
		lua_table.SceneFunctions:LoadScene(lua_table.scene_2)
	end
end

function lua_table:StartGame()
	startingGame = true
	lua_table.lastCameraPos = lua_table.TransformFuctions:GetPosition(camera_UUID)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", startButton)
end

function lua_table:PlayGame()
	--playingGame = true
	--lua_table.lastCameraPos = lua_table.TransformFuctions:GetPosition(camera_UUID)
    lua_table.AudioFunctions:PlayAudioEvent("Play_Click_1")
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", quitButton)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", playButton)

	lua_table.InterfaceFunctions:MakeElementVisible("Button", showFirstLevel)
	lua_table.InterfaceFunctions:MakeElementVisible("Button", showSecondLevel)

	lua_table.TransformFuctions:SetPosition(107.941, -48.392, -81.444, camera_UUID)
	lua_table.TransformFuctions:SetObjectRotation(-180.000, 3.250, 180.000, camera_UUID)
end

function lua_table:QuitGame()
    lua_table.AudioFunctions:PlayAudioEvent("Play_Select_1")
	lua_table.SceneFunctions:QuitGame()
end

function lua_table:ShowFirstLevel()
    lua_table.AudioFunctions:PlayAudioEvent("Play_Select_3")
	lua_table.InterfaceFunctions:MakeElementVisible("Button", firstLevelPlay)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", secondLevelPlay)

	lua_table.InterfaceFunctions:MakeElementVisible("Image", firstLevelImage)
	lua_table.InterfaceFunctions:MakeElementInvisible("Image", secondLevelImage)
end

function lua_table:ShowSecondLevel()
    lua_table.AudioFunctions:PlayAudioEvent("Play_Select_3")
	lua_table.InterfaceFunctions:MakeElementVisible("Button", secondLevelPlay)
	lua_table.InterfaceFunctions:MakeElementInvisible("Button", firstLevelPlay)
	
	lua_table.InterfaceFunctions:MakeElementVisible("Image", secondLevelImage)
	lua_table.InterfaceFunctions:MakeElementInvisible("Image", firstLevelImage)
end

function lua_table:PlayFirstLevel()
    lua_table.AudioFunctions:PlayAudioEvent("Play_Click_1")
	loadLevel1 = true
end

function lua_table:PlaySecondLevel()
    lua_table.AudioFunctions:PlayAudioEvent("Play_Click_1")
	loadLevel2 = true
end

return lua_table
end