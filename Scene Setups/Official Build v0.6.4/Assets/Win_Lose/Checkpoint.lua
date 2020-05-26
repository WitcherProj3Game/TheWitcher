function GetTableCheckpoint()
local lua_table = {}
lua_table.System = Scripting.System()
lua_table.GO = Scripting.GameObject()
lua_table.Transform = Scripting.Transform()

local winlose = 0
local winlose_script = 0

lua_table.checkpoint

function lua_table:OnTriggerEnter()
    if lua_table.GO:GetLayerByID(1) and last_checkpoint < lua_table.checkpoint
    then
        last_checkpoint = lua_table.checkpoint
        winlose_script:Checkpoint()
    end
end

function lua_table:Awake()
    winlose = lua_table.GO:FindGameObject("WinLose")

    if winlose > 0
    then
        winlose_script = lua_table.GO:GetScript(winlose)
    end
end

function lua_table:Start()
end

function lua_table:Update()
end

return lua_table
end