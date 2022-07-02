if game.PlaceId ~= 2317712696 then
    game:Shutdown()
end

if getgenv().TSLoaded then
	local ReplicatedStorage = game:GetService("ReplicatedStorage");
	local ModLoad = require(ReplicatedStorage.Modules.Load);
	local UIHandler = ModLoad("UIHandler")
	UIHandler:GiveNotification({
		text = "Exploit is already loaded!",
		textcolor = "Red",
		center = true
	});
	return;
end

local Exploit = (krnlss and not is_sirhurt_closure and not pebc_execute and "krnl")

if Exploit ~= "krnl" then
    for i, v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
        v:Disable()
        game:GetService("ScriptContext").Error:Connect(function(...)
            local Arguments = {...}
            local Data, Data2 = pcall(function()
                return Arguments[3].Name
            end)
            if Data == false then
                return;
            end
            v:Fire(...)
        end)
    end
end

--//

local Core = {
    ["Weapons"] = {},
    ["Ambient"] = game:GetService("Lighting").Ambient,
    ["FireworkLaunch"] = {
        Vector3.new(1040, 171, -876),
        Vector3.new(948, 171, -966),
        Vector3.new(963, 171, -1071),
        Vector3.new(1835.715, 239.552, -1638.619),
        Vector3.new(641.765, 69.379, -809.071),
        Vector3.new(589.765, 45.379, -505.071),
        Vector3.new(366.765, 45.379, -717.071),
        Vector3.new(-308.91, 160.717, -632.784),
        Vector3.new(893, 105.541, -2316),
        Vector3.new(-781, 90.852, 502),
        Vector3.new(-235, 100.516, 565),
        Vector3.new(242.834, 176.5, 174.759),
        Vector3.new(480, 126.5, 449),
        Vector3.new(-1354, 206.338, -1529),
        Vector3.new(1695.129, 404.78, 1440.797),
        Vector3.new(519.44, 136.704, 1747.772),
        Vector3.new(-80, 122.5, 1517),
        workspace["WORKSPACE_Interactables"]["LaGrande Riverboat"].Engine.Smokestacks.smokestacktop.Position,
        Vector3.new(-1369.706, 157.491, 1957.17),
        Vector3.new(-366.106, 76.092, -1833.756),
        Vector3.new(-1896, 122.8, -430)
    }
}
local Client = {
    Other = {},
    BreakableGlass = {}
}
local Settings = {
    ESP = {},
    IESP = {},
    Aimbot = {}
}
local Utils = {}

local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local Mouse = LocalPlayer:GetMouse()

local ModLoad = require(ReplicatedStorage.Modules.Load);
local SharedLoad = require(ReplicatedStorage.SharedModules.Load);
local WorldDisplayHandler = ModLoad("WorldDisplayHandler");
local ClientSoundHandler = ModLoad("ClientSoundHandler");
local AnimationHandler = ModLoad("AnimationHandler");
local PlayerCharacter = ModLoad("PlayerCharacter");
local ReplicatedState = ModLoad("ReplicatedState");
local QuestsSelection = ModLoad("QuestsSelection");
local FishController = ModLoad("FishController");
local BreakableGlass = ModLoad("BreakableGlass");
local RepCharHandler = ModLoad("RepCharHandler");
local ClientPlaceableFood = ModLoad("ClientPlaceableFood");
local PianoHandler = ModLoad("PianoHandler");
local InputHandler = ModLoad("InputHandler");
local ConfirmPrompt = ModLoad("ConfirmPrompt", true);
local RobuxShop = ModLoad("RobuxShop");
local GunChambers = ModLoad("GunChambers");
local Tumbleweeds = ModLoad("Tumbleweeds");
local PlaceablesHandler = ModLoad("PlaceablesHandler");
local PlayerData = ModLoad("PlayerData");
local PlaceItem = ModLoad("PlaceItem");
local UIHandler = ModLoad("UIHandler");
local FaceMouse = ModLoad("FaceMouse");
local UIObjects = ModLoad("UIObjects");
local WildLife = ModLoad("WildLife");
local Lighting = ModLoad("Lighting");
local Ragdolls = ModLoad("Ragdolls");
local BodyTilt = ModLoad("BodyTilt");
local Camera = ModLoad("Camera");
local Mining = ModLoad("Mining");
local Trains = ModLoad("Trains");
local ClientDoors = ModLoad("ClientDoors");
local BaseItem = ModLoad("BaseItem");
local GunItem = ModLoad("GunItem");
local UtilsModule = ModLoad("Utils");
local Chat = ModLoad("Chat");
local Map = ModLoad("Map");
local FX = ModLoad("FX");
local Rain = ModLoad("Rain");
local Weather = ModLoad("Weather");
local AnimalRiding = ModLoad("AnimalRiding");
local Animal = ModLoad("Animal");
local SyncedTime = SharedLoad("SyncedTime");
local ProjectileHandler = SharedLoad("ProjectileHandler");
local SharedUtils = SharedLoad("SharedUtils");
local SharedData = SharedLoad("SharedData");
local Network = SharedLoad("Network");
local Mathf = SharedLoad("Mathf");
local LocalRepChar = RepCharHandler:GetRepChar(game:GetService("Players").LocalPlayer);
local CurrentCamera = workspace.CurrentCamera

local Library = loadstring(game:HttpGet("https://cdn.thisstuff.xyz/Api/Library/Main2", true))()
local ESP_Library = loadstring(game:HttpGet("https://cdn.thisstuff.xyz/Api/ESP", true))()
local Window = Library:AddWindow("The Wild West - RBXsploiter#6305", {
    min_size = Vector2.new(500, 400),
    toggle_key = Enum.KeyCode.RightControl,
    can_resize = true,
    main_color = Color3.fromRGB(41, 74, 122)
})
local GunCheats = Window:AddTab("Gun Cheats")
local CharacterCheats = Window:AddTab("Character Cheats")
local AnimalCheats = Window:AddTab("Animal Cheats")
local ESP = Window:AddTab("Esp")
local Aimbot = Window:AddTab("Aimbot")
local Miscellaneous = Window:AddTab("Misc")
local SettingsT = Window:AddTab("Settings")

--//

do

    local Success, Response = pcall(function()
        return game:GetService("HttpService"):JSONDecode(readfile("ThisStuff_2317712696.json"))
    end)

    if Success and type(Response) == "table" then
        for i, v in pairs(Response) do
            Settings[i] = v
        end
    end

end

do

    for i,v in pairs(getconnections(game:GetService("Lighting").Changed)) do 
        v:Disable()
        game:GetService("Lighting").Changed:Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(255, 255, 255) and game:GetService("Lighting").Ambient ~= Core.Ambient then
                Core.Ambient = game:GetService("Lighting").Ambient
            end
        end)
    end

    for i,v in next, PlayerCharacter do
        if type(v) == "function" and getinfo(v).name ~= "" then
            Core[getinfo(v).name] = v
        end
    end

    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "BaseRecoil") then
            Core["Weapons"][i] = v
        end
    end

    for i,v in next, getupvalues(BreakableGlass.GetBreakableGlass, 1)[1] do
        if type(v) == "table" and rawget(v, "Id") then
            Client.BreakableGlass[i] = v
        end
    end

    Core["FireServer"] = Network.FireServer
    Core["CanRoll"] = PlayerCharacter.CanRoll
    Core["StopRoll"] = PlayerCharacter.StopRoll
    Core["AnimalRiding"] = AnimalRiding.GetRidingAnimal()
    Core["Animal-Ragdoll"] = Animal.Ragdoll

end

ESP_Library.Overrides.GetColor = function(Character)
    local Player = Players:GetPlayerFromCharacter(Character)
    if Player and Player.TeamColor then
        return Settings.ESP.Team and Color3.fromRGB(Player.TeamColor.Color.R*255, Player.TeamColor.Color.G*255, Player.TeamColor.Color.B*255) or (Settings.ESP.Color or Color3.fromRGB(255, 255, 255))
    end
    return Settings.ESP.Color or Color3.fromRGB(255, 255, 255)
end

--//

if Exploit == "krnl" then
    local Circle = Drawing.new("Circle")
    Circle.Visible = Settings.Aimbot.Visible or false
    Circle.Color = Settings.Aimbot.Color or Color3.fromRGB(255, 255, 255)
    Circle.Thickness = Settings.Aimbot.Thickness or 2
    Circle.Filled = Settings.Aimbot.Filled or false
    Circle.Radius = Settings.Aimbot.Radius or 100
    Circle.NumSides = Settings.Aimbot.NumSides or 100
    Circle.Transparency = Settings.Aimbot.Transparency or 1
    Circle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiService:GetGuiInset().Y)

    function Client.Other.Aimbot()
        Circle.Visible = Settings.Aimbot.Visible or false
        Circle.Color = Settings.Aimbot.Color or Color3.fromRGB(255, 255, 255)
        Circle.Thickness = Settings.Aimbot.Thickness or 2
        Circle.Filled = Settings.Aimbot.Filled or false
        Circle.NumSides = Settings.Aimbot.NumSides or 100
        Circle.Radius = Settings.Aimbot.Radius or 100
    end

    UserInputService.InputChanged:Connect(function(Input, GPE)
        if Input.UserInputType == Enum.UserInputType.MouseMovement then
            Circle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiService:GetGuiInset().Y)
        end
    end)
end

function Utils.PickRandom(Table)
    math.randomseed(os.time())
    return Table[math.random(#Table)]
end

function Utils.GetClosest()
    local ClosestDistance = 9e150
    local AimbotTable;
    
    for i,v in next, workspace["WORKSPACE_Entities"].Players:GetChildren() do
        local Player = Players:FindFirstChild(v.Name)
        local Target = "Head"

        if not Player or Settings.Aimbot.TeamCheck and Player.Team == LocalPlayer.Team then
            continue;
        end

        if not Settings.Aimbot.DominateOnly then
            Target = Utils.PickRandom({"Head"})
        end

        if Player and Player ~= LocalPlayer and v:FindFirstChild(Target) then
            local TargetPart = v[Target]
            local WorldPosition = CurrentCamera:WorldToViewportPoint(TargetPart.Position)
            local Distance = (Vector2.new(WorldPosition.X, WorldPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

            local function Finish()
                if Distance < Settings.Aimbot.Radius and Distance < ClosestDistance then
                    ClosestDistance = Distance
                    AimbotTable = {
                        ["Distance"] = Distance,
                        ["Player"] = Player,
                        ["Character"] = v,
                        ["Target"] = TargetPart
                    }
                end
            end

            if Settings.Aimbot.NoWallbang and #CurrentCamera:GetPartsObscuringTarget({TargetPart.Position}, {CurrentCamera, LocalPlayer.Character, v}) == 0 then
                Finish()
            elseif not Settings.Aimbot.NoWallbang then
                Finish()
            end
        end
    end
    
    return AimbotTable
end

function Firework(Position, Velocity, Delay)
    coroutine.resume(coroutine.create(function()
        local FireworkProjectile = game:GetService("ReplicatedStorage").Resources.Projectiles.FireworkProjectile:Clone()
        local FireworkExplosion = game:GetService("ReplicatedStorage").Resources.VFX.Attachments.FireworkExplosionAt:Clone()
        local RandomColor = math.random(1, 6)
        local RandomColor1 = math.random(1, 6)
        
        FireworkProjectile.Parent = workspace.Ignore
        FireworkProjectile.LaunchSound.TimePosition = 0.8
        FireworkProjectile.LaunchSound.Playing = true
        FireworkProjectile.Position = Position
        FireworkProjectile.Velocity = Velocity or Vector3.new(0, 300, 0)
        FireworkExplosion.Parent = FireworkProjectile
        FireworkExplosion.Orientation = Vector3.new(-90, 0, 0)
        
        wait(Delay or 0.8)
        
        FireworkProjectile.BlackPowderProjectile.BarrelExhaustFrontal.Enabled = false
        FireworkExplosion.Sound.TimePosition = 3.5
        FireworkExplosion.Sound.Playing = true
        FireworkProjectile.Anchored = true
        
        for i,v in next, FireworkExplosion:GetChildren() do
            if (v.Name == "FireworkEmit" and i == RandomColor or i == RandomColor1) or v.Name == "Flash" then
                v:Emit(v.EmitValue.Value)
            end
        end
        
        wait(10)
        FireworkProjectile:Destroy()
        FireworkExplosion:Destroy()
    end))
end

function LaunchStartFireworks()
    for i,v in next, Core["FireworkLaunch"] do
        coroutine.resume(coroutine.create(function()
            wait(math.random()*4)
            Firework(v)
        end))
    end
end

function BreakAllGlass()
    for i,v in next, Client.BreakableGlass do
        Network:FireServer("BreakGlass", v.Id, Vector3.new(0, 0, 0))
    end
end

function CharAdded(Player)
    ESP_Library:Add(Player.Character, {
        Name = Player.Name,
        Player = Player,
        PrimaryPart = Player.Character.PrimaryPart or Player.Character:WaitForChild("HumanoidRootPart", 20)
    })
end

function SpinMeRightRound()
    decode = syn.crypt.base64.decode or crypt.base64decode
    getcustomasset = getsynasset or getcustomasset

    local Sound64 = decode(game:GetObjects("rbxassetid://6385037822")[1].NotHere.Source)
    writefile("YouKnowYouLikeIt.mp3", Sound64)

    local Sound = Instance.new("Sound")
    Sound.Parent = game:GetService("CoreGui")
    Sound.SoundId = getcustomasset("YouKnowYouLikeIt.mp3")
    Sound.Volume = 1
    Sound:Play()
end

function ESP_ThunderstruckTree(Tree)
    if Tree and not Tree:FindFirstChild("ThunderFX") and Settings.IESP.LTEnabled then
        local BillboardGui = Instance.new("BillboardGui")
        local TextLabel = Instance.new("TextLabel")
        BillboardGui.Parent = Tree.Trunk
        BillboardGui.Name = "ThunderFX"
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 15, 0, 15)
        BillboardGui.ExtentsOffset = Vector3.new(0, 0, 0)
        BillboardGui.Adornee = Tree.Trunk
        TextLabel.Parent = BillboardGui
        TextLabel.Text = "Thunderstruck Tree"
        TextLabel.TextSize = 12
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.TextColor3 = Color3.fromRGB(66, 211, 255)

        coroutine.resume(coroutine.create(function()
            while wait(1) do
                if not Tree.Trunk:FindFirstChild("Attachment") or Tree.Parent == nil or not Settings.IESP.LTEnabled then
                    BillboardGui:Destroy()
                end
            end
        end))
    end
end

function UpdateLTEsp()
    if Settings.IESP.LTEnabled then
		for i, v in next, workspace["WORKSPACE_Geometry"]:GetDescendants() do
			if v.Name == "Trunk" and v:FindFirstChild("Attachment") and not v.Parent:FindFirstChild("ThunderFX") then
				ESP_ThunderstruckTree(v.Parent)
			end
		end
	else
		for i, v in next, workspace["WORKSPACE_Geometry"]:GetDescendants() do
			if v.Name == "Trunk" and v:FindFirstChild("Attachment") and v.Parent:FindFirstChild("ThunderFX") then
				v.Parent.ThunderFX:Destroy()
			end
		end
	end
end

function UpdateEsp()
    ESP_Library:Toggle(Settings.ESP.Enabled or false)
    ESP_Library.Boxes = Settings.ESP.Boxes or false
    ESP_Library.Tracers = Settings.ESP.Tracers or false
    if not Settings.ESP.Team then
        ESP_Library.Color = Settings.ESP.Color or Color3.fromRGB(255, 255, 255)
    end
    ESP_Library.Names = Settings.ESP.ND or false
    ESP_Library.Team = Settings.ESP.Team or false
    ESP_Library.TeamMates = Settings.ESP.TeamMates or false
end

function GetName()
    local Success, Response = pcall(function()
        return Players:GetNameFromUserIdAsync(math.random(1, 1000000))
    end)
    if not Success then
        return GetName()
    end
    return Response
end

function SaveSettings()
    writefile("ThisStuff_2317712696.json", game:GetService("HttpService"):JSONEncode(Settings))
end

function CopyDiscordInvite()
    setclipboard(game:HttpGet("https://discord.gg/rWT9w8zmms"))
	UIHandler:GiveNotification({
		text = "Discord invite link has been copied to your clipboard",
		textcolor = "Green",
		center = false
	});
end

function RejoinServer()
    UIHandler:GiveNotification({
		text = "Rejoining server...",
		textcolor = "Green",
		center = false
	});
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end

function NoJumpCooldown()
    for i,v in next, getprotos(PlayerCharacter.OnCharacterAdded) do
        if table.find(getconstants(v), "Jumping")  then
            if Settings.NoJumpCooldown ~= true then
                v = Core["OnCharacterAdded-JumpCooldown"]
            else
                function JumpFunction()
                    PlayerCharacter:LowerStamina(20)
                    return 0
                end
                setconstant(v, 4, JumpFunction)
            end
        end
    end
end

function NoRecoil()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "BaseRecoil") then
            v.BaseRecoil = Settings.NoRecoil == false and Core["Weapons"][i].BaseRecoil or 0
        end
    end
end

function NoSpread()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "BaseRecoil") then
            v.FanAccuracy = Settings.NoSpread == false and Core["Weapons"][i].FanAccuracy or 1
            v.ProjectileAccuracy = Settings.NoSpread == false and Core["Weapons"][i].ProjectileAccuracy or 1
        end
    end
end

function Wallbang()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "BaseRecoil") then
            v.ProjectilePenetration = Settings.Wallbang == false and Core["Weapons"][i].ProjectilePenetration or 20
        end
    end
end

function InstantReload()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "BaseRecoil") then
            v.ReloadSpeed = Settings.InstantReload == false and Core["Weapons"][i].ReloadSpeed or 1000
            v.LoadSpeed = Settings.InstantReload == false and Core["Weapons"][i].LoadSpeed or 1000
            v.LoadEndSpeed = Settings.InstantReload == false and Core["Weapons"][i].LoadEndSpeed or 1000
        end
    end
end

Core["IsFirstPerson"] = hookfunction(Camera.IsFirstPerson, function(...)
    if Settings.SilentAim and getfenv(2) == getfenv(GunItem.new) then
        return true
    end
    
    return Core["IsFirstPerson"](...)
end)

Core["GetMouseHit"] = hookfunction(UtilsModule.GetMouseHit, function(...)
    if Settings.SilentAim and getfenv(2) == getfenv(GunItem.new) then
        local Closest = Utils.GetClosest()

        if Closest then
            return Closest.Target.Position;
        end
    end

    return Core["GetMouseHit"](...)
end)

Core["Animal-Mount"] = hookfunction(Animal.Mount, function(...)
    if Settings.InfiniteBoosts then
        Core["Animal-Mount"](...)
        wait()

        local RidingAnimal = AnimalRiding.GetRidingAnimal()
        RidingAnimal.MaxBoosts = math.huge
        RidingAnimal.Boosts = math.huge

        return;
    end
    return Core["Animal-Mount"](...)
end)

Core["Rain-Enable"] = hookfunction(Rain.Enable, function()
    if Settings.NoRain then
        return;
    end
    return Core["Rain-Enable"]()
end)

Core["LowerStamina"] = hookfunction(PlayerCharacter.LowerStamina, function(...)
    if Settings.InfiniteStamina then
        return;
    end
    return Core["LowerStamina"](...)
end)

Core["Ragdoll"] = hookfunction(PlayerCharacter.Ragdoll, function(...)
    if Settings.AntiRagdoll then
        return;
    end
    return Core["Ragdoll"](...)
end)

Core["EnterRagdoll"] = hookfunction(Ragdolls.EnterRagdoll, function(...)
    if Settings.AutoGetUp then
        coroutine.resume(coroutine.create(function()
            local Start = tick()
            repeat
                wait(0)
            until PlayerCharacter:CanGetUp() or Start - tick() > 2
            if PlayerCharacter.IsRagdolledSelf then
                PlayerCharacter:GetUp()
            end
        end))
    end
    if Settings.InstantBreakFree then
        coroutine.resume(coroutine.create(function()
            local Start = tick()
            repeat
                wait(0)
            until PlayerCharacter:CanBreakFree() or Start - tick() > 4
            PlayerCharacter.BreakFreePerc = 5
        end))
    end
    return Core["EnterRagdoll"](...)
end)

Animal.Ragdoll = function(...)
    if Settings.AntiAnimalRagdoll then
        return;
    end
    return Core["Animal-Ragdoll"](...)
end

PlayerCharacter.StopRoll = function(Table, ...)
    if Settings.NoRollCooldown then
        Table.RollDirection = nil
        Table.RollDebounce = false
    end
    return Core["StopRoll"](Table, ...)
end

PlayerCharacter.CanRoll = function(...)
    if Settings.NoRollCooldown then
        return true;
    end
    return Core["CanRoll"](...)
end

Network.FireServer = function(Network, Name, ...)
    local Arguments = {...}
    if Name == "DamageSelf" and Settings.NoFallDamage then
        return;
    end
    return Core["FireServer"](Network, Name, unpack(Arguments))
end

--//

Client["NoRecoil"] = GunCheats:AddSwitch("No Recoil", function(Value)
    Settings.NoRecoil = Value
    NoRecoil()
end)

Client["NoSpread"] = GunCheats:AddSwitch("No Spread", function(Value)
    Settings.NoSpread = Value
    NoSpread()
end)

Client["Wallbang"] = GunCheats:AddSwitch("Wallbang", function(Value)
    Settings.Wallbang = Value
    Wallbang()
end)

Client["InstantReload"] = GunCheats:AddSwitch("Instant Reload", function(Value)
    Settings.InstantReload = Value
    InstantReload()
end)

-->>

Client["InfiniteStamina"] = CharacterCheats:AddSwitch("Infinite Stamina", function(Value)
    Settings.InfiniteStamina = Value
end)

Client["NoFallDamage"] = CharacterCheats:AddSwitch("No Fall Damage", function(Value)
    Settings.NoFallDamage = Value
end)

Client["NoRollCooldown"] = CharacterCheats:AddSwitch("No Roll Cooldown", function(Value)
    Settings.NoRollCooldown = Value
end)

Client["NoJumpCooldown"] = CharacterCheats:AddSwitch("No Jump Cooldown", function(Value)
    Settings.NoJumpCooldown = Value
    NoJumpCooldown()
end)

Client["AntiRagdoll"] = CharacterCheats:AddSwitch("Anti Ragdoll", function(Value)
    Settings.AntiRagdoll = Value
end)

Client["AutoGetUp"] = CharacterCheats:AddSwitch("Auto Get Up", function(Value)
    Settings.AutoGetUp = Value
end)

Client["InstantBreakFree"] = CharacterCheats:AddSwitch("Instant Break Free", function(Value)
    Settings.InstantBreakFree = Value
    wait()
    if Settings.InstantBreakFree then
        PlayerCharacter.BreakFreePerc = 5
    end
end)

Client["RainbowHair"] = CharacterCheats:AddSwitch("Rainbow Hair", function(Value)
    Settings.RainbowHair = Value

    if Settings.RainbowHair ~= true then
        return;
    end

    repeat
        wait()
        if not Core["CurrentHair"] then
            for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
                if v:IsA("Accessory") and string.find(v.Name, "Hair") then
                    Core["CurrentHair"] = v
                end
            end
        end
        local hue = tick() % 12 / 12
        Network:FireServer("SetAppearanceItemColor", "Hair", Core["CurrentHair"].Name, Color3.fromHSV(hue, 1, 1))
    until Settings.RainbowHair ~= true
end)

Client["RainbowBeard"] = CharacterCheats:AddSwitch("Rainbow Beard", function(Value)
    Settings.RainbowBeard = Value

    if Settings.RainbowBeard ~= true then
        return;
    end

    repeat
        wait()
		if not Core["CurrentBeard"] then
            for i, v in next, game.Players.LocalPlayer.Character:GetChildren() do
				if v:IsA("Accessory") and string.find(v.Name, "Beard") then
					Core["CurrentBeard"] = v
				end
			end
        end
        local hue = tick() % 12 / 12
		Network:FireServer("SetAppearanceItemColor", "Beards", Core["CurrentBeard"].Name, Color3.fromHSV(hue, 1, 1))
    until Settings.RainbowHair ~= true 
end)

-->> 

Client["InfiniteBoosts"] = AnimalCheats:AddSwitch("Infinite Boosts", function(Value)
    Settings.InfiniteBoosts = Value
    if Settings.InfiniteBoosts then
        local RidingAnimal = AnimalRiding.GetRidingAnimal()
        RidingAnimal.MaxBoosts = math.huge
        RidingAnimal.Boosts = math.huge
    else
        local RidingAnimal = AnimalRiding.GetRidingAnimal()
        RidingAnimal.MaxBoosts = Core["AnimalRiding"].MaxBoosts
        RidingAnimal.Boosts = Core["AnimalRiding"].MaxBoosts
    end
end)

Client["AntiAnimalRagdoll"] = AnimalCheats:AddSwitch("Anti Ragdoll", function(Value)
    Settings.AntiAnimalRagdoll = Value
end)

-->>

Client["LightningTree_ESP"] = ESP:AddSwitch("Thunderstruck Tree ESP", function(Value)
    Settings.IESP.LTEnabled = Value
    UpdateLTEsp()
end)

Client["ESP_Enabled"] = ESP:AddSwitch("Player Enabled", function(Value)
    Settings.ESP.Enabled = Value
    UpdateEsp()
end)

Client["ESP_Boxes"] = ESP:AddSwitch("Boxes", function(Value)
    Settings.ESP.Boxes = Value
    UpdateEsp()
end)

Client["ESP_Tracers"] = ESP:AddSwitch("Tracers", function(Value)
    Settings.ESP.Tracers = Value
    UpdateEsp()
end)

Client["ESP_TeamMates"] = ESP:AddSwitch("Show Team Mates", function(Value)
    Settings.ESP.TeamMates = Value
    UpdateEsp()
end)

Client["ESP_Team"] = ESP:AddSwitch("Use Team Color", function(Value)
    Settings.ESP.Team = Value
    UpdateEsp()
end)

Client["ESP_Name"] = ESP:AddSwitch("Show Name/Distance", function(Value)
    Settings.ESP.ND = Value
    UpdateEsp()
end)

-->>

Client["SilentAim"] = Aimbot:AddSwitch("Silent Aim", function(Value)
    Settings.SilentAim = Value
end)

Client["TeamCheck"] = Aimbot:AddSwitch("Team Check", function(Value)
    Settings.Aimbot.TeamCheck = Value
end)

Client["DominateOnly"] = Aimbot:AddSwitch("Headshot Only", function(Value)
    Settings.Aimbot.DominateOnly = Value
end)

Client["VisibilityCheck"] = Aimbot:AddSwitch("Visibility Check", function(Value)
    Settings.Aimbot.VisibilityCheck = Value
end)

if Exploit == "krnl" then
    Client["ShowCircle"] = Aimbot:AddSwitch("Show Circle", function(Value)
        Settings.Aimbot.Visible = Value
        Client.Other.Aimbot()
    end)

    Client["CircleFilled"] = Aimbot:AddSwitch("Circle Filled", function(Value)
        Settings.Aimbot.Filled = Value
        Client.Other.Aimbot()
    end)

    Client["CircleTransparency"] = Aimbot:AddSlider("Circle Transparency", function(Value)
        Settings.Aimbot.Transparency = Value
        Client.Other.Aimbot()
    end, {
        ["min"] = 0,
        ["max"] = 1,
    })

    Client["NumberOfSides"] = Aimbot:AddSlider("Number of Sides", function(Value)
        Settings.Aimbot.NumSides = Value
        Client.Other.Aimbot()
   end, {
        ["min"] = 2,
        ["max"] = 300,
    })

    Client["FOVRadius"] = Aimbot:AddSlider("FOV Radius", function(Value)
        Settings.Aimbot.Radius = Value
        Client.Other.Aimbot()
    end, {
        ["min"] = 10,
        ["max"] = 900,
    })

    Aimbot:AddLabel("Circle Color")

    Client["CircleColor"] = Aimbot:AddColorPicker(function(Value)
        Settings.Aimbot.Color = Value
        Client.Other.Aimbot()
    end)
else
    Settings.Aimbot.Radius = 1000
end

-->>

Client["Fullbright"] = Miscellaneous:AddSwitch("Fullbright", function(Value)
    Settings.Fullbright = Value
    if Settings.Fullbright ~= true then
        game:GetService("Lighting").Ambient = Core.Ambient
        wait(0.2)
        game:GetService("Lighting").Ambient = Core.Ambient
    end
end)

Client["NoRain"] = Miscellaneous:AddSwitch("No Rain", function(Value)
    Settings.NoRain = Value
    Rain:Disable()
end)

Client["NameProtect"] = Miscellaneous:AddSwitch("Name Protect", function(Value)
    Settings.NameProtect = Value
    if Settings.NameProtect then
        local Name = GetName()
        Network:FireServer("SetDisplayName", Name)
    else
        Network:FireServer("SetDisplayName", "")
    end
end)

Client["TumbleweedMayhem"] = Miscellaneous:AddSwitch("Tumbleweed Mayhem", function(Value)
    Settings.TumbleweedMayhem = Value
    if Settings.TumbleweedMayhem ~= true then
        return;
    end
    repeat
        wait(0.5)
        Tumbleweeds:Trigger()
    until not Settings.TumbleweedMayhem
end)

Miscellaneous:AddButton("Launch Starter Fireworks", LaunchStartFireworks)

Miscellaneous:AddButton("Break All Glass", function()
    BreakAllGlass()
end)

-->>

Client["AutoSave"] = SettingsT:AddSwitch("Auto Save", function(Value)
    Settings.AutoSave = Value
end)

SettingsT:AddButton("Save Settings", SaveSettings)

SettingsT:AddButton("Copy Discord Invite", CopyDiscordInvite)

SettingsT:AddButton("Rejoin Server", function()
    ConfirmPrompt:Open(RejoinServer, "Are you sure you want to rejoin?")
end)

--//


Client["NoRecoil"]:Set(Settings.NoRecoil or false)
Client["NoSpread"]:Set(Settings.NoSpread or false)
Client["Wallbang"]:Set(Settings.Wallbang or false)
Client["InstantReload"]:Set(Settings.InstantReload or false)
Client["InfiniteStamina"]:Set(Settings.InfiniteStamina or false)
Client["NoFallDamage"]:Set(Settings.NoFallDamage or false)
Client["NoRollCooldown"]:Set(Settings.NoRollCooldown or false)
Client["NoJumpCooldown"]:Set(Settings.NoJumpCooldown or false)
Client["AntiRagdoll"]:Set(Settings.AntiRagdoll or false)
Client["AutoGetUp"]:Set(Settings.AutoGetUp or false)
Client["InstantBreakFree"]:Set(Settings.InstantBreakFree or false)
Client["RainbowHair"]:Set(Settings.RainbowHair or false)
Client["RainbowBeard"]:Set(Settings.RainbowBeard or false)
Client["LightningTree_ESP"]:Set(Settings.IESP.LTEnabled or false)
Client["ESP_Enabled"]:Set(Settings.ESP.Enabled or false)
Client["ESP_Boxes"]:Set(Settings.ESP.Boxes or false)
Client["ESP_Tracers"]:Set(Settings.ESP.Tracers or false)
Client["ESP_TeamMates"]:Set(Settings.ESP.TeamMates or false)
Client["ESP_Team"]:Set(Settings.ESP.Team or false)
Client["ESP_Name"]:Set(Settings.ESP.ND or false)
Client["SilentAim"]:Set(Settings.SilentAim or false)
Client["TeamCheck"]:Set(Settings.Aimbot.TeamCheck or false)
Client["DominateOnly"]:Set(Settings.Aimbot.DominateOnly or false)
Client["VisibilityCheck"]:Set(Settings.Aimbot.VisibilityCheck or false)
Client["InfiniteBoosts"]:Set(Settings.InfiniteBoosts or false)
Client["AntiAnimalRagdoll"]:Set(Settings.AntiAnimalRagdoll or false)
Client["Fullbright"]:Set(Settings.Fullbright or false)
Client["NoRain"]:Set(Settings.NoRain or false)
Client["NameProtect"]:Set(Settings.NameProtect or false)
Client["AutoSave"]:Set(Settings.AutoSave or false)

if Exploit == "krnl" then
    Client["ShowCircle"]:Set(Settings.Aimbot.Visible or false)
    Client["CircleFilled"]:Set(Settings.Aimbot.Filled or false)
    Client["CircleTransparency"]:Set(Settings.Aimbot.Transparency or 0)
    Client["NumberOfSides"]:Set(Settings.Aimbot.NumSides or 100)
    Client["FOVRadius"]:Set(Settings.Aimbot.Radius or 200)
    Client["CircleColor"]:Set(Settings.Aimbot.Color or Color3.fromRGB(255, 255, 255))
end

--Client[""]:Set(Settings. or false)

--//

coroutine.resume(coroutine.create(function()
	while wait(10) do
        if Settings.AutoSave then
		    SaveSettings()
        end
        if Settings.NameProtect then
            local Name = GetName()
            Network:FireServer("SetDisplayName", Name)
        end
	end
end))

Players.PlayerAdded:Connect(function(Player)
    Player.CharacterAdded:Connect(function()
        CharAdded(Player)
    end)
end)

for i, v in next, workspace["WORKSPACE_Geometry"]:GetDescendants() do
    if v.Parent.Name == "Trees" then
        v.Parent.ChildAdded:Connect(function(Obj)
            if Obj:FindFirstChild("Trunk") then
                Obj.Trunk.ChildAdded:Connect(function(Obj2)
                    if Obj2.Name == "Attachment" then
                        ESP_ThunderstruckTree(Obj)
                    end
                end)
            end
        end)
    end
end

for i,v in next, Players:GetPlayers() do
    coroutine.resume(coroutine.create(function()
        v.CharacterAdded:Connect(function()
            CharAdded(v)
        end)
        if v.Character then
            CharAdded(v)
        end
    end))
end


UpdateLTEsp()

game:GetService("RunService").RenderStepped:Connect(function()
    if Settings.Fullbright then
        game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
    end
end)

--//

if Settings.Bang then
    SpinMeRightRound()
end

--//

getgenv().TSLoaded = true

UIHandler:GiveNotification({
	text = "Created by RBXsploiter#6305",
	textcolor = "Gold",
	center = true
});
wait(0.5)
UIHandler:GiveNotification({
	text = "Report any bugs to me",
	textcolor = "Red",
	center = true
});

wait(0.1)

LaunchStartFireworks()

--[[

local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local Mouse = LocalPlayer:GetMouse()

local ModLoad = require(ReplicatedStorage.Modules.Load);
local SharedLoad = require(ReplicatedStorage.SharedModules.Load);
local WorldDisplayHandler = ModLoad("WorldDisplayHandler");
local ClientSoundHandler = ModLoad("ClientSoundHandler");
local AnimationHandler = ModLoad("AnimationHandler");
local PlayerCharacter = ModLoad("PlayerCharacter");
local ReplicatedState = ModLoad("ReplicatedState");
local QuestsSelection = ModLoad("QuestsSelection");
local FishController = ModLoad("FishController");
local BreakableGlass = ModLoad("BreakableGlass");
local RepCharHandler = ModLoad("RepCharHandler");
local ClientPlaceableFood = ModLoad("ClientPlaceableFood");
local PianoHandler = ModLoad("PianoHandler");
local InputHandler = ModLoad("InputHandler");
local ConfirmPrompt = ModLoad("ConfirmPrompt", true);
local RobuxShop = ModLoad("RobuxShop");
local GunChambers = ModLoad("GunChambers");
local Tumbleweeds = ModLoad("Tumbleweeds");
local PlaceablesHandler = ModLoad("PlaceablesHandler");
local PlayerData = ModLoad("PlayerData");
local PlaceItem = ModLoad("PlaceItem");
local UIHandler = ModLoad("UIHandler");
local FaceMouse = ModLoad("FaceMouse");
local UIObjects = ModLoad("UIObjects");
local WildLife = ModLoad("WildLife");
local Lighting = ModLoad("Lighting");
local Ragdolls = ModLoad("Ragdolls");
local BodyTilt = ModLoad("BodyTilt");
local Camera = ModLoad("Camera");
local Mining = ModLoad("Mining");
local Trains = ModLoad("Trains");
local ClientDoors = ModLoad("ClientDoors");
local BaseItem = ModLoad("BaseItem");
local GunItem = ModLoad("GunItem");
local UtilsModule = ModLoad("Utils");
local Chat = ModLoad("Chat");
local Map = ModLoad("Map");
local FX = ModLoad("FX");
local Rain = ModLoad("Rain");
local Weather = ModLoad("Weather");
local AnimalRiding = ModLoad("AnimalRiding");
local Animal = ModLoad("Animal");
local SyncedTime = SharedLoad("SyncedTime");
local ProjectileHandler = SharedLoad("ProjectileHandler");
local SharedUtils = SharedLoad("SharedUtils");
local SharedData = SharedLoad("SharedData");
local Network = SharedLoad("Network");
local Mathf = SharedLoad("Mathf");
local ObjectActionTypes = SharedLoad("ObjectActionTypes");
local LocalRepChar = RepCharHandler:GetRepChar(game:GetService("Players").LocalPlayer);
local Animal = AnimalRiding.GetRidingAnimal()
local Old = Animal.body.Parent

spawn(function()
    for i = 1, 10 do
        Animal.hrp.Position = Vector3.new(math.random(-100, 100), 100, math.random(-100, 100))
    end
end)

Network:InvokeServer("Mount", Old)

]] 