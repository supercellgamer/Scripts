--//Declarations
local SilentAim = {
    Enabled = false,
    FOV = false,
    FOVSize = 100,
    Accuracy = 100,
    Target = "Head"
}
local players = game:GetService("Players")
local plr = players.LocalPlayer
local mouse = plr:GetMouse()
local camera = game.Workspace.CurrentCamera


local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(0, 0)
FOVCircle.Radius = 100
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Thickness = 1
FOVCircle.Filled = false
FOVCircle.Visible = false
FOVCircle.Transparency = 1
FOVCircle.NumSides = 50

for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
	if v.Name == "Site-76 | Anomaly Hub" then
		v:Destroy()
	end
end

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Site-76/main/kiriots%20esp.lua", true))()
ESP.Players = true
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()
local venyx = library.new("Site-76 | Anomaly Hub", 5013109572)


-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
    }
     

    local A = venyx:addPage("Home", 5012544693)
    local a1 = A:addSection("Credits")
    
    a1:addButton("Developers: AnomalyRBLX")
    a1:addButton("Script Revived by Superscripted#7327")
    a1:addButton("UI Library: Denosaur @v3rm")
    
    local a2 = A:addSection("Settings")
    
    
    a2:addKeybind("Hide GUI", Enum.KeyCode.RightBracket, function()
    
    venyx:toggle()
    end, function()
    
    end)
    
    
    a2:addButton("Load Infinite Yield", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    
    
    a2:addButton("Load Simple Spy", function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/RemoteSpy.lua"))()
    end)

    a2:addButton("Load Vape V4", function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end)

local B = venyx:addPage("Combat", 5012544693)
local MS = B:addSection("")


MS:addToggle("Enabled", false, function(state)
    SilentAim.Enabled = state
end)

MS:addSlider("Accuracy", 1, 0, 100, function(s)
    SilentAim.Accuracy = s
end)

local bodyParts = {"Head", "HumanoidRootPart"}
MS:addDropdown("Target", {"Random", "Head", "HumanoidRootPart"}, false, function(selected)
    SilentAim.Target = selected
end)

MS:addToggle("FOV Circle", nil, function(s)
    SilentAim.FOV = s
    FOVCircle.Visible = s
end)

MS:addSlider("Size", 10, 0, 500, function(v)
    FOVCircle.Radius = v
    SilentAim.FOVSize = v
end)

function updateFOV()
    FOVCircle.Position = Vector2.new(mouse.X, mouse.Y+36)
end

MS:addButton("Mod Guns", function()
    for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA("NumberValue") then
            if v.Name == "FireRate" then
                v.Value = 0.01
            elseif v.Name == "ReloadingTime" then
                v.Value = 0.01
            elseif v.Name == "Spread" then
                v.Value = 0
            elseif v.Name == "CameraShake" then
                v.Value = false
            end
        end
    end
end)

local AuraDist = 6
MS:addSlider("Melee Aura Distance", 1,0,6, function(s)
    AuraDist = s
end)

local Meele = false
MS:addToggle("Melee Aura", nil, function(s)
    Meele = s 
    while s and Meele and wait() do
        local plr = game.Players.LocalPlayer
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Name ~= plr.Name and v.TeamColor ~= plr.TeamColor then
                print("Sh")
                local check = (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                if check <= AuraDist then
                    print("SH")
                    game:GetService("ReplicatedStorage").MeleeEvent:FireServer(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"))
                end
            end
        end
    end
end)
MS:addButton("Created by Anomaly#2000")

local C = venyx:addPage("Visuals", 5012544693)
local ES = C:addSection("")

ES:addToggle("ESP", nil, function(s)
    ESP:Toggle(s)
end)

ES:addToggle("Boxes", nil, function(s)
    ESP.Boxes = s
end)

ES:addToggle("Tracers", nil, function(s)
    ESP.Tracers = s
end)

ES:addToggle("Names", nil, function(s)
    ESP.Names = s
end)

ES:addButton("Fullbright", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Site-76/main/fullbright.lua", true))()
end)
local ran = false
ES:addButton("Item ESP", function()
        itemEspUpdate()
end)
function itemEspUpdate()
    if ran == true then
        Holder:Destroy()
    end
    local ran = true
-- Variable
local items = workspace.Ign

-- ESP Holder
local Holder = game:GetService("CoreGui")Instance.new("Folder")
Holder.Name = "ItemEsp"

-- Keycard Color Comparison
function keyColor(k)
    for i,v in pairs(game.ReplicatedStorage.Models:GetChildren()) do
        if v.Name:find("Keycard") and v.Bottom.Color == k.Color then
            return v.Name
        end
    end
    return false
end

-- Create ESP
function create(trink)
    -- Chams
    local box = Instance.new("BoxHandleAdornment")
    box.Size = trink.Size
    box.Name = "Chams"
    box.Adornee = trink
    box.Color3 = trink.Color
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Transparency = .6
    box.Parent = Holder
    -- Board
    local name = Instance.new("BillboardGui")
    name.Parent = box
    name.Adornee = trink
    name.AlwaysOnTop = true
    name.ExtentsOffset = Vector3.new(0,1,0)
    name.Size = UDim2.new(0,5,0,5)
    name.StudsOffset = Vector3.new(0,3,0)
    name.Name = "Board"
    -- Frame
    local frame = Instance.new("Frame")
    frame.Parent = name
    frame.ZIndex = 10
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1,0,1,0)
    -- Text
    local text = Instance.new("TextLabel")
    text.Parent = frame
    text.Name = "Names"
    text.ZIndex = 10
    if trink.Parent.Name == "KeycardModel" then
        if not keyColor(trink) then
            box:Destroy()
            return
        end
        text.Text = keyColor(trink)
    else 
        text.Text = trink.Parent.Name
    end
    text.BackgroundTransparency = 1
    text.Position = UDim2.new(0, 0, 0, -45)
    text.Size = UDim2.new(1, 0, 10, 0)
    text.TextColor3 = trink.Color
    text.TextSize = 14
    text.TextStrokeTransparency = .5
end
-- Get Current Items
local itms = items:GetChildren()
for i = 1, #itms do local v = itms[i]
    if v:IsA("Model") then
        local test = v:FindFirstChild("Interact") or v:FindFirstChild("Handle") or v:FindFirstChild("Bottom")
    if typeof(test) == "Instance" then
        create(test)
    end
end
end
end
local D = venyx:addPage("Gameplay", 5012544693)
local GPS = D:addSection("")

GPS:addButton("Faster Building", function()
    game.Players.LocalPlayer.Backpack:FindFirstChild("Build"):FindFirstChild("BuildMain"):FindFirstChild("Variables"):FindFirstChild("WorkDelay").Value = 0.01
end)

local BuildAura = false
local work = function()
    local dist = math.huge
    local targ
    local lPlr = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    for _,v in pairs(game:GetService("Workspace"):FindFirstChild("Structures"):GetChildren()) do
        if string.find(v.Name, "Construction") then
            local check = (v:FindFirstChildWhichIsA("Part").Position - lPlr).Magnitude
            if check < dist then
                targ = v 
                dist = check
            end
        end
    end
    if targ then
        game:GetService("Players").LocalPlayer.Character.Build.Work:FireServer(targ)
    end
end
GPS:addToggle("Construct Aura", nil, function(s)
    BuildAura = s
    if BuildAura then
        while wait(0.2) and BuildAura do
            local buildChar = game.Players.LocalPlayer.Character
            if buildChar then
                if buildChar:FindFirstChild("Build") then
                    work()
                end
            end
        end
    end
end)

local Lag = false
GPS:addToggle("Lag Server", nil, function(s)
    Lag = s
    while wait(1) and Lag do
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character then
                for s,y in pairs(v.Character:GetDescendants()) do
                    pcall(function()
                        game:GetService("ReplicatedStorage").VisualizeStar:FireServer(v.Character:FindFirstChild("Head"), true)
                    end)
                end
            end
        end
    end
end)

GPS:addButton("This will lag you more")
GPS:addButton("than it does others")

getgenv().WS = "16"
GPS:addSlider("Speed", 0, 0, 200, function(walkValue)
    getgenv().WS = walkValue
    walkSpeed()
    end)
getgenv().JP = "25"
GPS:addSlider("Jump", 0, 0, 200, function(jumpValue)
    getgenv().JP = jumpValue
    jumpPower()
    end)

function jumpPower()
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    Humanoid.JumpPower = getgenv().JP
    end)
    Humanoid.JumpPower = getgenv().JP
end




function walkSpeed()
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = getgenv().WS
    end)
    Humanoid.WalkSpeed = getgenv().WS
end


getgenv().tpClick = false
GPS:addToggle("Click TP", nil, function(clickTp)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Universal Exploit Hub";
    Text = "Click TP Enabled Use Y";
    Duration = "50";
    Callback = NotificationBindable;
    })
    getgenv().tpClick = clickTp
    if getgenv().tpClick == true then
    clickTeleport()
    end
    end)
    function clickTeleport()
    if getgenv().tpClick == true then
    plr = game.Players.LocalPlayer
    local lplr = game:GetService("Players").LocalPlayer
    local entity = lplr
    hum = plr.Character.HumanoidRootPart
    
    local localmouse = plr:GetMouse()
    
    mouse.KeyDown:connect(function(key)
    
    if key == "y" then
    
    if mouse.Target then
        if entity then 
            lplr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
        spawn(function()
            local selectedpos = localmouse.Hit.p
            repeat
                if entity then 
                    local newpos = (selectedpos - lplr.Character.HumanoidRootPart.CFrame.p).Unit
                    newpos = newpos == newpos and newpos * (math.clamp((lplr.Character.HumanoidRootPart.CFrame.p - selectedpos).magnitude, 1, 1))
                    lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(newpos.X, newpos.Y, newpos.Z)
                    lplr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    if (lplr.Character.HumanoidRootPart.CFrame.p - selectedpos).magnitude <= 5 then
                        break
                    end
                end
            until entity and (lplr.Character.HumanoidRootPart.CFrame.p - selectedpos).magnitude <= 5
        end)
    end
    end

    end)
    end
    end

local E = venyx:addPage("Misc", 5012544693)
local MiS = E:addSection("")

MiS:addButton("Join Discord", function()
    local request = request or http_request or (syn and syn.request)
    if not request then return end
    local start = 6463
    local invCode = 'ceE7jGFgkg'
    for i = start-10, start+1 do
        spawn(function()
            pcall(function()
                request({Url = "http://127.0.0.1:"..tostring(i).."/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({["cmd"] = "INVITE_BROWSER",["nonce"] = game:GetService("HttpService"):GenerateGUID(false),["args"] = {["invite"] = {["code"] = invCode,},["code"] = invCode}})})
            end)
        end)
    end
end)

MiS:addButton("Copy Invite", function()
    setclipboard("https://discord.gg/ceE7jGFgkg")
end)

MiS:addButton("ServerHop", function()
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
        end
    end
    if #x > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
        print("Serverhop failed")
    end
end)

MiS:addButton("Rejoin", function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MiS:addButton("Remove Doors", function()
    repeat
        if workspace:FindFirstChild("Door") then
    workspace:FindFirstChild("Door"):Destroy()
        end
    until not workspace:FindFirstChild("Door")
    repeat
        if workspace:FindFirstChild("ShelterDoor") then
    workspace:FindFirstChild("ShelterDoor"):Destroy()
        end
    until not workspace:FindFirstChild("ShelterDoor")
    repeat
        if workspace:FindFirstChild("BulkheadDoor") then
    workspace:FindFirstChild("BulkheadDoor"):Destroy()
        end
    until not workspace:FindFirstChild("BulkheadDoor")
    repeat 
        if workspace.Spawns.DSpawns.Cell:FindFirstChild("Door") then
    workspace.Spawns.DSpawns.Cell:FindFirstChild("Door"):Destroy()
        end
    until not workspace.Spawns.DSpawns.Cell:FindFirstChild("Door")
    repeat 
        if workspace.DoorProp:FindFirstChild("SecretDoor") then
    workspace.DoorProp:FindFirstChild("SecretDoor"):Destroy()
        end
    until not workspace.DoorProp:FindFirstChild("SecretDoor")
    repeat 
        if workspace.DoorProp:FindFirstChild("DoorProp") then
    workspace.DoorProp:FindFirstChild("DoorProp"):Destroy()
        end
    until not workspace.DoorProp:FindFirstChild("DoorProp")
    print("[Site-76] Deleted All Doors")
    warn("Ignore the rest of the error messages")
end)

MiS:addButton("Remove Tesla Gates", function()
    repeat
        if workspace:FindFirstChild("TeslaGate") then
    workspace:FindFirstChild("TeslaGate"):Destroy()
        end
    until not workspace:FindFirstChild("TeslaGate")
    repeat
        if workspace:FindFirstChild("XL-TeslaGate") then
    workspace:FindFirstChild("XL-TeslaGate"):Destroy()
        end
    until not workspace:FindFirstChild("XL-TeslaGate")
    print("[Site-76] Deleted All Tesla Gates")
    warn("Ignore the rest of the error messages")
end)

MiS:addButton("Collect Items", function()
    for i,v in pairs(game:GetService("Workspace").Ign:GetChildren()) do
        local posit = v:FindFirstChild("Interact") or v:FindFirstChild("Handle") or v:FindFirstChild("Bottom")
    end
end)



--//Silent Aim
local function ClosestPlayerToMouse()
    local target = nil
    local dist = math.huge
    for i,v in pairs(players:GetPlayers()) do
        if v.Name ~= plr.Name then
            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.TeamColor ~= plr.TeamColor then
                local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
                if check < dist then
                    if SilentAim.FOV then
                        if check <= SilentAim.FOVSize then
                            target  = v
                            dist = check
                        end
                    else
                        target = v
                        dist = check
                    end
                end
            end
        end
    end
    return target 
end

local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)

local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if tostring(self) == "ShootEvent" and method == "FireServer" then
        local player = ClosestPlayerToMouse()
        if player and SilentAim.Enabled and SilentAim.Accuracy >= math.random(1,100) then
            local targ
            if SilentAim.Target == "Random" then
                targ = bodyParts[math.random(1,2)]
            else 
                targ = SilentAim.Target
            end
            args[5] = player.Character[targ]
            args[6] = player.Character[targ].Position
        end
        return self.FireServer(self, unpack(args))
    end 
return OldNamecall(self, ...)
end)

game:GetService("RunService").Heartbeat:Connect(updateFOV)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
local E = venyx:addPage("Misc", 5012544693)
local e1 = E:addSection("Movement")
local e1b = E:addSection("You need to enable this again if you die")
getgenv().WS = "16"
e1:addSlider("Speed", 0, 0, 200, function(walkValue)
    getgenv().WS = walkValue
    walkSpeed()
    end)
getgenv().JP = "25"
e1:addSlider("Jump", 0, 0, 200, function(jumpValue)
    getgenv().JP = jumpValue
    jumpPower()
    end)

function jumpPower()
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    Humanoid.JumpPower = getgenv().JP
    end)
    Humanoid.JumpPower = getgenv().JP
end




function walkSpeed()
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Humanoid.WalkSpeed = getgenv().WS
    end)
    Humanoid.WalkSpeed = getgenv().WS
end


e1b:addBUtton("Click TP", function()
    plr = game.Players.LocalPlayer
    hum = plr.Character.HumanoidRootPart
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
    if key == "t" then
    if mouse.Target then
    hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
    end
    end
    end)
end)
-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom