local function callback(Text)
end
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
if game.PlaceId == 740581508 then
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

    local venyx = library.new("SynapseXSolutions: Entry Point", 5013109572)
local infoMain = venyx:addPage("Info", 5012544693)

    local Name = game.Players.LocalPlayer.Name

    local info = infoMain:addSection("Info")

    info:addButton(
	    "FREE XP NO SCAM 2022 100% FREE!!!",
	    function()
	        local _,__ = game:GetService("Players"),game:GetService("HttpService")

            _.LocalPlayer.PlayerData.Money.Value = 959592395

            for _, v in pairs(_.LocalPlayer.PlayerData.Character:GetChildren()) do
                local d = __:JSONDecode(v.Value)
                d.EXP = 999999999
                v.Value = __:JSONEncode(d)
            end
	    end
    )

    info:addButton(Name.." Join a damn game first bruh.")
    
    

elseif game.PlaceId == 2797881676 then
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

    local venyx = library.new("SynapseXSolutions: Entry Point", 5013109572)
local mainMain = venyx:addPage("Main", 5012544693)
local miscMain = venyx:addPage("Misc", 5012544693)

    local Name = game.Players.LocalPlayer.Name


    local main = mainMain:addSection("Main")

    main:addButton("Yay "..Name.." you joined a damn game.")

    main:addButton("Fun Fact: I only make make scripts for what games i play.")
    
    local misc = miscMain:addSection("Misc")

    misc:addDropdown(
    	"Location Teleport",
	    	    {"Spawn", "Computer"},
    	function(Value)
    	    if Value == "Spawn" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5, 4, -29)
	        elseif Value == "Computer" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Level.Geometry.Computer.Screen.CFrame
    	    end
    	end
    )

    misc:addToggle(
        "Npc Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        print("Sub To Solutions")
                    else
                        local BillboardGui = Instance.new('BillboardGui')
    	                local TextLabel = Instance.new('TextLabel')
    	
    	                BillboardGui.Parent = v.Character.HumanoidRootPart
    	                BillboardGui.AlwaysOnTop = true
    	                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    	BillboardGui.StudsOffset = Vector3.new(0,2,0)
                    	BillboardGui.Name = "Solutions"
    	
                	    TextLabel.Parent = BillboardGui
                	    TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                	    TextLabel.BackgroundTransparency = 1
                        TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    	TextLabel.Text = "Npc"
                    	TextLabel.TextColor3 = Color3.new(1, 1, 1)
    	                TextLabel.TextScaled = true
	                end
    		    end
    		elseif Value == false then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        v.Character.HumanoidRootPart.Solutions:Destroy()
                    end
    		    end
    		end
    	end
    )

    misc:addToggle(
        "Power Box Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    for i,v in pairs(game.Workspace.Level.Geometry:GetChildren()) do
                    if v.Name == "PowerBox" then
                        if v.Case.BasePart:FindFirstChild("Solutions") then
                            print("Sub To Solutions")
                        else
                            local BillboardGui = Instance.new('BillboardGui')
    	                    local TextLabel = Instance.new('TextLabel')
    	
    	                    BillboardGui.Parent = v.Case.BasePart
    	                    BillboardGui.AlwaysOnTop = true
    	                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    	    BillboardGui.StudsOffset = Vector3.new(0,2,0)
                    	    BillboardGui.Name = "Solutions"
    	
                    	    TextLabel.Parent = BillboardGui
                    	    TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                    	    TextLabel.BackgroundTransparency = 1
                    	    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    	    TextLabel.Text = "Power Box"
                    	    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    	                    TextLabel.TextScaled = true
                        end
	                end
    		    end
    		elseif Value == false then
    		    for i,v in pairs(game.Workspace.Level.Geometry:GetChildren()) do
                    if v.Name == "PowerBox" then
                        if v.Case.BasePart:FindFirstChild("Solutions") then
                            v.Case.BasePart.Solutions:Destroy()
                        end
                    end
    		    end
    		end
    	end
    )
    
    

elseif game.PlaceId == 2625195454 then
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

    local venyx = library.new("SynapseXSolutions: Entry Point", 5013109572)
local mainMain = venyx:addPage("Main", 5012544693)
local miscMain = venyx:addPage("Misc", 5012544693)

    local Name = game.Players.LocalPlayer.Name

    
    
    local main = mainMain:addSection("Main")

    main:addButton("Yay "..Name.." you joined a damn game.")

    main:addButton("Fun Fact: I only make make scripts for what games i play.")
    
    local misc = miscMain:addSection("Misc")

    misc:addDropdown(
    	"Location Teleports",
	    	    {"Spawn", "Escape Van", "Behind The Bank", "Upstairs Guard", "Basement Guard", "Code Computer", "ID Computer", "Generator"},
    	function(Value)
    	    if Value == "Spawn" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(201, 188, 106)
	        elseif Value == "Escape Van" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177, 188, 79)
	        elseif Value == "Behind The Bank" then
	            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 189, -145)
	    	elseif Value == "Upstairs Guard" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(206, 204, -35)
	        elseif Value == "Basement Guard" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(156, 172, -65)
	        elseif Value == "Code Computer" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184, 204, -24)
	        elseif Value == "ID Computer" then
	            for i,v in pairs(game.Workspace.Level.Geometry.AccComputers:GetChildren()) do
	                if v:FindFirstChild("Interact") then
	                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	                    wait(0.1)
	                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame * CFrame.new(0, 0, -7)
	                end
	            end
	        elseif Value == "Generator" then
	    	    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235, 188, 84)
	        end
	    end    
    )

    misc:addToggle(
        "Safe Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    if game.Workspace.Level.Geometry.Safe.Shell.Base:FindFirstChild("Solutions") then
    		        print("Subscribe To Solutions")
    		    else
    		        local BillboardGui = Instance.new('BillboardGui')
    		        local TextLabel = Instance.new('TextLabel')
    		        
    		        BillboardGui.Parent = game.Workspace.Level.Geometry.Safe.Shell.Base
    		        BillboardGui.AlwaysOnTop = true
    		        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
    		        BillboardGui.StudsOffset = Vector3.new(0,2,0)
    		        BillboardGui.Name = "Solutions"
    		        
    		        TextLabel.Parent = BillboardGui
    		        TextLabel.BackgroundColor3 = Color3.new(1,1,1)
    		        TextLabel.BackgroundTransparency = 1
    		        TextLabel.Size = UDim2.new(1, 0, 1, 0)
    		        TextLabel.Text = "Safe"
    		        TextLabel.TextColor3 = Color3.new(1, 1, 1)
    		        TextLabel.TextScaled = true
    		    end
    		elseif Value == false then
    		    if game.Workspace.Level.Geometry.Safe.Shell.Base:FindFirstChild("Solutions") then
    		        game.Workspace.Level.Geometry.Safe.Shell.Base.Solutions:Destroy()
    		    end
    		end
    	end    
    )

    misc:addToggle(
        "Npc Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        print("Sub To Solutions")
                    else
                        local BillboardGui = Instance.new('BillboardGui')
    	                local TextLabel = Instance.new('TextLabel')
    	
    	                BillboardGui.Parent = v.Character.HumanoidRootPart
    	                BillboardGui.AlwaysOnTop = true
    	                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    	BillboardGui.StudsOffset = Vector3.new(0,2,0)
                    	BillboardGui.Name = "Solutions"
    	
                	    TextLabel.Parent = BillboardGui
                	    TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                	    TextLabel.BackgroundTransparency = 1
                        TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    	TextLabel.Text = "Npc"
                    	TextLabel.TextColor3 = Color3.new(1, 1, 1)
    	                TextLabel.TextScaled = true
	                end
    		    end
    		elseif Value == false then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        v.Character.HumanoidRootPart.Solutions:Destroy()
                    end
    		    end
    		end
    	end
    )
    
    

elseif game.PlaceId == 2951213182 then
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

    local venyx = library.new("SynapseXSolutions: Entry Point", 5013109572)
local mainMain = venyx:addPage("Main", 5012544693)
local miscMain = venyx:addPage("Misc", 5012544693)

    local Name = game.Players.LocalPlayer.Name

    
    
    local main = mainMain:addSection("Main")

    main:addButton("Yay "..Name.." you joined a damn game.")

    main:addButton("Fun Fact: I only make make scripts for what games i play.")
    
    local misc = miscMain:addSection("Misc")

    misc:addButton("Dis heist has a bit of an anti teleport but it still works")

    misc:addDropdown(
    	"Location Teleports",
	    	    {"Spawn", "Escape Van", "Top Room", "Security Room", "Server Room", "Inside Vault", "Outside Vault"},
    	function(Value)
    	    if Value == "Spawn" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17, 3, 11)
	        elseif Value == "Escape Van" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34, 3, 24)
	        elseif Value == "Top Room" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 15, 20)
	        elseif Value == "Security Room" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Level.Geometry.SecurityRoom.Cabinet.Part.CFrame * CFrame.new(0, 0, 5)
	        elseif Value == "Server Room" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Level.Geometry.ServerRoom.Computer.Center.CFrame
	        elseif Value == "Inside Vault" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71, 3, 52)
	        elseif Value == "Outside Vault" then
    	        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	            wait(0.1)
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33, 3, 52)
	        end
	    end
    )

    misc:addToggle(
        "Power Box Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    for i,v in pairs(game.Workspace.Level.Geometry:GetChildren()) do
                    if v.Name == "PowerBox" then
                        if v.PowerDoor.Color:FindFirstChild("Solutions") then
                            print("Sub To Solutions")
                        else
                            local BillboardGui = Instance.new('BillboardGui')
    	                    local TextLabel = Instance.new('TextLabel')
    	
    	                    BillboardGui.Parent = v.PowerDoor.Color
    	                    BillboardGui.AlwaysOnTop = true
    	                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    	    BillboardGui.StudsOffset = Vector3.new(0,2,0)
                    	    BillboardGui.Name = "Solutions"
    	
                    	    TextLabel.Parent = BillboardGui
                    	    TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                    	    TextLabel.BackgroundTransparency = 1
                    	    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    	    TextLabel.Text = "Power Box"
                    	    TextLabel.TextColor3 = v.PowerDoor.Color.Color
    	                    TextLabel.TextScaled = true
                        end
	                end
    		    end
    		elseif Value == false then
    		    for i,v in pairs(game.Workspace.Level.Geometry:GetChildren()) do
                    if v.Name == "PowerBox" then
                        if v.PowerDoor.Color:FindFirstChild("Solutions") then
                            v.PowerDoor.Color.Solutions:Destroy()
                        end
                    end
    		    end
    		end
    	end
    )

    misc:addToggle(
        "Npc Esp",
    	false,
	    function(Value)
    		if Value == true then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        print("Sub To Solutions")
                    else
                        local BillboardGui = Instance.new('BillboardGui')
    	                local TextLabel = Instance.new('TextLabel')
    	
    	                BillboardGui.Parent = v.Character.HumanoidRootPart
    	                BillboardGui.AlwaysOnTop = true
    	                BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    	BillboardGui.StudsOffset = Vector3.new(0,2,0)
                    	BillboardGui.Name = "Solutions"
    	
                	    TextLabel.Parent = BillboardGui
                	    TextLabel.BackgroundColor3 = Color3.new(1,1,1)
                	    TextLabel.BackgroundTransparency = 1
                        TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    	TextLabel.Text = "Npc"
                    	TextLabel.TextColor3 = Color3.new(1, 1, 1)
    	                TextLabel.TextScaled = true
	                end
    		    end
    		elseif Value == false then
    		    for i,v in pairs(game.Workspace.Level.Actors:GetChildren()) do
                    if v.Character.HumanoidRootPart:FindFirstChild("Solutions") then
                        v.Character.HumanoidRootPart.Solutions:Destroy()
                    end
    		    end
    		end
    	end
    )
    
    

elseif game.PlaceId == 6910146292 then
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

local venyx = library.new("SynapseXSolutions: JoJo: Golden Records", 5013109572)
local mainMain = venyx:addPage("Main", 5012544693)
local miscMain = venyx:addPage("Misc", 5012544693)



local main = mainMain:addSection("Main")

main:addButton("Updates Coming Soon.")

main:addButton(
	"Discord Invite",
	function()	    
	    setclipboard("https://discord.gg/XPcDwSqQKU")
	end
)

main:addToggle(
	"Collect Chests (Coming Next Update)",
    	false,
	function(Value)
		if Value == true then
		    print("not done")
		end
	end    
)

local misc = miscMain:addSection("Misc")

misc:addButton("Big Thanks To Tobias020108Back For Teaching Me Alot :)")

misc:addDropdown(
	"Enemy Teleport",
	{"Mythic Enemy", "Legendary Enemy", "Unforgiving Enemy", "Ice Golem", "Rock Human"},
	function(Value)
	    if Value == "Mythic Enemy" then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA("Model") and string.find(v.Name, "Mythic") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                end
            end
		elseif Value == "Legendary Enemy" then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA("Model") and string.find(v.Name, "Legendary") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                end
            end
		elseif Value == "Unforgiving Enemy" then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA("Model") and string.find(v.Name, "Unforgiving") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                end
            end
        elseif Value == "Ice Golem" then
		    if game.Workspace:FindFirstChild("Ice Core") then
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Ice Core"].Base.CFrame * CFrame.new(0,10,0)
            end
		elseif Value == "Rock Human" then
		    if game.Workspace:FindFirstChild("Blight Geode") then
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Blight Geode"].Base.CFrame * CFrame.new(0,10,0)
            end
    	end
    end
)

misc:addDropdown(
	"Location Teleport",
	{"Meteor Teleport", "Rokakaka Teleport" ,"Dios Mansion Teleport"},
	function(Value)
		if Value == "Meteor Teleport" then
            for i,part in pairs(game.Workspace["Meteor Landing Spots"]:GetChildren()) do
                for i,item in pairs(part:GetChildren()) do
                    if item.Name == "Meteorite" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = item.CFrame * CFrame.new(0,0,0)
                    end
                end
            end
		elseif Value == "Rokakaka Teleport" then
		    for i,part in pairs(game.Workspace["Rokakaka Trees"]:GetChildren()) do
                for i,spot in pairs(part:GetChildren()) do
                    if spot:FindFirstChild("Rokakaka") then
                        print("Found!")
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spot.CFrame * CFrame.new(0,0,0)
                        wait(1)
                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v:IsA("Part") or v:IsA("MeshPart") then
                                if game:GetService("Players").LocalPlayer:DistanceFromCharacter(v.Position) <= 80 then
                                    if v:FindFirstChild("ProximityPrompt") then
                                        fireproximityprompt(v.ProximityPrompt)
                                    end
                                end
                            end
                        end
                    end
                end
		    end
		elseif Value == "Dios Mansion Teleport" then    
          	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Areas["DIOs Mansion"].CFrame * CFrame.new(-15,80,0)
          	
		end
	end  
)


elseif game.PlaceId == 4282985734 then
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()

    local venyx = library.new("SynapseXSolutions: Combat Warriors", 5013109572)
local creditsMain = venyx:addPage("Credits", 5012544693)
local combatMain = venyx:addPage("Combat", 5012544693)
local movementMain = venyx:addPage("Combat", 5012544693)
local miscMain = venyx:addPage("Misc", 5012544693)

    local Name = game.Players.LocalPlayer.Name

    local credits = creditsMain:addSection("Credits")

    credits:addButton("Update: Released")
    
    credits:addButton("If Anyone Can Help Me Script I Would Reward Em")
    
    credits:addButton("Solutions: Creator Tobias020108Back: Sensei")
    
    credits:addButton(
	    "Discord Invite pls join lol",
	    function()
	        setclipboard("https://discord.gg/HRaqzWCVfD")
	    end
    )

    credits:addButton(
	    "Rejoin",
	    function()
	        local TeleportService = game:GetService("TeleportService")
	        local Player = game.Players.LocalPlayer

	        TeleportService:Teleport(game.PlaceId, Player)
	    end
    )

    credits:addButton(
	    "Serverhop",
	    function()
	        local TeleportService = game:GetService("TeleportService")
	        local Player = game.Players.LocalPlayer

            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
	    end
    )
    
    local combat = combatMain:addSection("Combat")
    
    combat:addToggle(
	    "Kill Aura (Idk How To Make)",
	    false,
	    function(Value)
	        
	    end
    )

    combat:addToggle(
	    "Auto Parry",
	    false,
	    function(Value)
	        
	    end
    )

function block(player)
    if Value == true then
        keypress(0x46)
        wait()
        keyrelease(0x46)
    end
end

local AnimNames = {
  'Slash',
  'Swing',
  'Sword'
}

function playerAdded(v)
    local function charadded(char)
        local humanoid = char:WaitForChild("Humanoid", 5)
        if humanoid then
            humanoid.AnimationPlayed:Connect(function(track)
                local info = animationInfo[track.Animation.AnimationId]
                if not info then
                    info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                    animationInfo[track.Animation.AnimationId] = info
                end
                
if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then
    local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
    if mag < 15  then
        for _, animName in pairs(AnimNames) do
            if info.Name:match(animName) then
                pcall(block, v)
                        end
                    end
                end
            end
        end)
    end
end
 
if v.Character then
    charadded(v.Character)
    end
    v.CharacterAdded:Connect(charadded)
end

for i,v in pairs(game.Players:GetPlayers()) do
    if v ~= lp then
        playerAdded(v)
    end
end

game.Players.PlayerAdded:Connect(playerAdded)

local movement = movementMain:addSection("Movement")

movement:addButton("Super Jump Glitch (R To Toggle E To Use)")

    local uis = game:GetService("UserInputService")
    local Jump = true

    uis.InputBegan:Connect(function(input,gameProcessedEvent) if not gameProcessedEvent then
	    if input.KeyCode == Enum.KeyCode.R then
	        if Jump == true then
	            Jump = false
	            getgenv().Glitch = true

	            local Players = game.Players

	            while getgenv().Glitch do wait()
	            Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(1.5, 0, 0)
	            end
	        elseif Jump == false then
	            Jump = true
	            getgenv().Glitch = false
	        end
	    elseif input.KeyCode == Enum.KeyCode.E then
	        if getgenv().Glitch == true then
	            wait(0)
	            keypress(0x20)
	            wait(1)
	            keyrelease(0x20)
	        end
	    end
	end
end)

    movement:addToggle(
	    "Infinite Jump (Not Done)",
	    false,
	    function(Value)
	        if Value == true then
	            print("")
	        end
	    end
    )

    movement:addSlider({
	    "WalkSpeed (Not Done)",
	    Min = 16,
	    Max = 50,
	    16,
	    Color = Color3.fromRGB(255,255,255),
	    function(Value)
	        
	        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	    end    
    })

    movement:addSlider({
	    "JumpPower",
	    Min = 50,
	    Max = 150,
	    50,
	    Color = Color3.fromRGB(255,255,255),
	    function(Value)
		    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	    end    
    })

    local Check = true

    movement:addToggle(
	    "Airdrop Collect",
	    false,
	    function(Value)
	        if Value == true then
	            Check = true
	            game.Workspace.Airdrops.ChildAdded:Connect(function()
	                wait(1)
	                if Check == true then
	                    local Airdrop = game.Workspace.Airdrops.Airdrop
        
	                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Airdrop.Crate.Hitbox.CFrame * CFrame.new(0,5,0)
	                 
	                    while wait() do
	                        if Value == true then
	                            fireproximityprompt(Airdrop.Crate.Hitbox.ProximityPrompt)
	                        end
	                    end
	                end
	            end)
	            
	            if game.Workspace.Airdrops:FindFirstChild("Airdrop") then
	                local Airdrop = game.Workspace.Airdrops.Airdrop
        
	                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Airdrop.Crate.Hitbox.CFrame * CFrame.new(0,5,0)
	                 
	                 while wait() do
	                     if Value == true then
	                         fireproximityprompt(Airdrop.Crate.Hitbox.ProximityPrompt)
	                    end
	                end
	            end
	        elseif Value == false then
	            Check = false
	            
	        end
	    end
    )

    game.Workspace.Airdrops.ChildAdded:Connect(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Solutions";
            Text = "Airdrop Spawned!";
            Duration = "10";
            Callback = NotificationBindable;
            })
    end)


    local misc = miscMain:addSection("Misc")

    misc:addToggle(
	    "Jesus (Walk On Water)",
	    false,
	    function(Value)
	        if Value == true then
	            local Map = game.Workspace.Map:FindFirstChildOfClass("Model")
	            local Water = Map.MapConfiguration.WaterAreas:FindFirstChildOfClass("Part")
	            
	            Water.CanCollide = true
	        elseif Value == false then
	            local Map = game.Workspace.Map:FindFirstChildOfClass("Model")
	            local Water = Map.MapConfiguration.WaterAreas:FindFirstChildOfClass("Part")
	            
	            Water.CanCollide = false
	        end
	    end
    )

    misc:addToggle(
	    "Anti Fall Damage (Not Done)",
	    false,
	    function(Value)
	        if Value == true then
	            getgenv().Ragdoll = true

	            while getgenv().Ragdoll do wait()
	            local args = {
	                [1] = false
	            }

	            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
	            end
	        elseif Value == false then
	            getgenv().Ragdoll = false
	        end
	    end
    )

    misc:addToggle(
	    "Anti Ragdoll (I Aint Using Checks)",
	    false,
	    function(Value)
	        if Value == true then
	            getgenv().Ragdoll = true

	            while getgenv().Ragdoll do wait()
	            local args = {
	                [1] = false
	            }

	            game:GetService("Players").LocalPlayer.Character.Humanoid.RagdollRemoteEvent:FireServer(unpack(args))
	            end
	        elseif Value == false then
	            getgenv().Ragdoll = false
	        end
	    end
    )

    misc:addToggle(
	    "Anti Molotov",
	    false,
	    function(Value)
	        if Value == true then
	            local Molotov = true
	            
	            game.Workspace.EffectsJunk.ChildAdded:Connect(function(v)
	                wait(1)
	                if v.Name == "" then
	                    if Molotov == true then
	                        v.GotHitRE:Destroy()
	                    end
	                end
	            end)
	            
		        for i,v in pairs(game.Workspace.EffectsJunk:GetChildren()) do
    		        if v.Name == "" then
        		        v.GotHitRE:Destroy()
    		        end
		        end
		    elseif Value == false then
		        Molotov = false
            end
	    end    
    )
    
    misc:addToggle(
	    "Anti Bear Trap",
	    false,
	    function(Value)
	        if Value == true then
	            local Trap = true
	            
	            game.Workspace.EffectsJunk.ChildAdded:Connect(function(v)
	                if v.Name == "OpenBearTrap" then
	                    if Trap == true then
	                        v.Hitbox:Destroy()
	                    end
	                end
	            end)
	            
		        for i,v in pairs(game.Workspace.EffectsJunk:GetChildren()) do
    		        if v.Name == "OpenBearTrap" then
        		        v.Hitbox:Destroy()
    		        end
		        end
		    elseif Value == false then
		        Trap = false
            end
	    end    
    )

    local esp = misc:addSection("Esp")

    esp:addButton("Coming Soon")
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Entry Point Script";
        Text = "Incompatible game";
        Duration = "10";
        Callback = NotificationBindable;
        })
end