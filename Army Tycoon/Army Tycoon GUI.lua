local mouse = game:service'Players'.LocalPlayer:GetMouse()
_G.MissleSelect = "Light Artillery"


-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()
local venyx = library.new("Zen Hub | Army Tycoon", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local A = venyx:addPage("Army Tycoon", 5012544693)
local a1 = A:addSection("Missiles")
local a2 = A:addSection("Army")
local a3 = A:addSection("Server-Side")
local a4 = A:addSection("Buildings")
local a5 = A:addSection("Settings")

a1:addDropdown("Missle To Fire", {"Light Artillery", "Heavy Artillery", "Bomb Airstrike", "Napalm Airstike", "Artillery Barrage", "Cruise Missile", "Nuke"}, function(Selected)
    _G.MissileSelect = Selected
    end)

    mouse.KeyDown:Connect(function(k)
        if k == "f" then
        game:GetService("ReplicatedStorage").RE.FireMissile:FireServer(_G.MissileSelect ,Vector3.new(mouse.Hit.p.X,48.6649132,mouse.Hit.p.Z))
        end
    end)
    local SkinName = "Default"
    a2:addDropdown("Army Skin", {"Default", "Black", "Desert"}, function(Selected)
        SkinName = Selected
        end)

    a2:addButton("Set Skin To Selected", function()
        game:GetService("ReplicatedStorage").RE.changeSkins:FireServer(SkinName)
    end)


    a3:addButton("Take Bases",function()
        for i,v in pairs(game.Workspace.Game.Base.Interactives:GetChildren()) do
        game:GetService("ReplicatedStorage").RE.StartCapturing:FireServer(v, true)
        end
    end)
    a3:addButton("Kill All Troops",function()
    for i,v in pairs(game.Workspace.Game.Units:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then
        else
        for i,v2 in pairs(v:GetChildren()) do
        local Missile = "Cruise Missile"
        local Position = v2.Torso.Position
        game:GetService("ReplicatedStorage").RE.FireMissile:FireServer(Missile, Position)
        end
        end
        end
    end)

a4:addButton("Give All Players Buildings (free)",function()
    for i,n in pairs(game.Players:GetChildren()) do
        for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
            if v.Name == n.Name then
                for i,v2 in pairs(v:GetChildren()) do
                    for i,v3 in pairs(v2:GetChildren()) do
                        if v3:IsA("ObjectValue") then
                            v3.Name = v3.Value.Name
                        end
                    end
                end
            end
        end
        
        
        for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
            if v.Name == n.Name then
                for i,v2 in pairs(v:GetChildren()) do
                    for i,v3 in pairs(v2:GetChildren()) do
                        if v3:IsA("ObjectValue") then
                            if v3.Name == "Barracks" then
                                local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
                                local Button = v2;
                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                Target:FireServer(Class, Button);
                            else
                                if v3.Name == "Greenhouse" then
                                    local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
                                    local Button = v2;
                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                    Target:FireServer(Class, Button);
                                else
                                    if v3.Name == "Factory" then
                                            local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
                                            local Button = v2;
                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                            Target:FireServer(Class, Button);
                                    else
                                        if v3.Name == "Oil Field" then
                                                local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
                                                local Button = v2;
                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                Target:FireServer(Class, Button);
                                        else
                                            if v3.Name == "Guard Tower" then
                                                local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
                                                local Button = v2;
                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                Target:FireServer(Class, Button);
                                            else
                                                if v3.Name == "Wall" then
                                                    local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
                                                    local Button = v2;
                                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                    Target:FireServer(Class, Button);
                                                else
                                                    if v3.Name == "Generator Powerplant" then
                                                        local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
                                                        local Button = v2;
                                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                        Target:FireServer(Class, Button);
                                                    else
                                                            if v3.Name == "Command Center" then
                                                                local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
                                                                local Button = v2;
                                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                Target:FireServer(Class, Button);
                                                            else
                                                                    if v3.Name == "Military" then
                                                                        local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
                                                                        local Button = v2;
                                                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                        Target:FireServer(Class, Button);
                                                                    else
                                                                        if v3.Name == "Nuclear Powerplant" then
                                                                            local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
                                                                            local Button = v2;
                                                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                            Target:FireServer(Class, Button);
                                                                        else
                                                                            if v3.Name == "Airport" then
                                                                                local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
                                                                                local Button = v2;
                                                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                                Target:FireServer(Class, Button);
                                                                            else
                                                                                if v3.Name == "Helicopter Bay" then
                                                                                    local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
                                                                                    local Button = v2;
                                                                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                                    Target:FireServer(Class, Button);
                                                                                else
                                                                                    if v3.Name == "Main Base" then
                                                                                        local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
                                                                                        local Button = v2;
                                                                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                                        Target:FireServer(Class, Button);
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
end)

a4:addButton("Give you all buildings (free/paid)",function()
    for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then
            for i,v2 in pairs(v:GetChildren()) do
                game:GetService("ReplicatedStorage").RE.relinquish:FireServer(v2, true)
            end
        end
    end
    
    for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then
            for i,v2 in pairs(v:GetChildren()) do
                for i,v3 in pairs(v2:GetChildren()) do
                    if v3:IsA("ObjectValue") then
                        v3.Name = v3.Value.Name
                    end
                end
            end
        end
    end
    
    
    for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then
            for i,v2 in pairs(v:GetChildren()) do
                for i,v3 in pairs(v2:GetChildren()) do
                    if v3:IsA("ObjectValue") then
                        if v3.Name == "Barracks" then
                            local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
                            local Button = v2;
                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                            Target:FireServer(Class, Button);
                        else
                            if v3.Name == "Greenhouse" then
                                local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
                                local Button = v2;
                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                Target:FireServer(Class, Button);
                            else
                                if v3.Name == "Factory" then
                                        local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
                                        local Button = v2;
                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                        Target:FireServer(Class, Button);
                                else
                                    if v3.Name == "Oil Field" then
                                            local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
                                            local Button = v2;
                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                            Target:FireServer(Class, Button);
                                    else
                                        if v3.Name == "Guard Tower" then
                                            local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
                                            local Button = v2;
                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                            Target:FireServer(Class, Button);
                                        else
                                            if v3.Name == "Wall" then
                                                local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
                                                local Button = v2;
                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                Target:FireServer(Class, Button);
                                            else
                                                if v3.Name == "Generator Powerplant" then
                                                    local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
                                                    local Button = v2;
                                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                    Target:FireServer(Class, Button);
                                                else
                                                    if v3.Name == "Missile Factory" then
                                                        local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
                                                        local Button = v2;
                                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                        Target:FireServer(Class, Button);
                                                    else
                                                        if v3.Name == "Command Center" then
                                                            local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
                                                            local Button = v2;
                                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                            Target:FireServer(Class, Button);
                                                        else
                                                            if v3.Name == "Drone Factory" then
                                                                local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
                                                                local Button = v2;
                                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                Target:FireServer(Class, Button);
                                                            else
                                                                if v3.Name == "Military" then
                                                                    local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
                                                                    local Button = v2;
                                                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                    Target:FireServer(Class, Button);
                                                                else
                                                                    if v3.Name == "Nuclear Powerplant" then
                                                                        local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
                                                                        local Button = v2;
                                                                        local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                        Target:FireServer(Class, Button);
                                                                    else
                                                                        if v3.Name == "Airport" then
                                                                            local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
                                                                            local Button = v2;
                                                                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                            Target:FireServer(Class, Button);
                                                                        else
                                                                            if v3.Name == "Helicopter Bay" then
                                                                                local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
                                                                                local Button = v2;
                                                                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                                Target:FireServer(Class, Button);
                                                                            else
                                                                                if v3.Name == "Main Base" then
                                                                                    local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
                                                                                    local Button = v2;
                                                                                    local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                                                                    Target:FireServer(Class, Button);
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)
local chosenPlayer = "PlayerName"
a4:addTextbox("Select Player","Player Name Here", function(Selected)
chosenPlayer = Selected
end)

a4:addButton("Give selected player all buildings(free)",function()


for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == chosenPlayer then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					v3.Name = v3.Value.Name
				end
			end
		end
	end
end


for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
	if v.Name == chosenPlayer then
		for i,v2 in pairs(v:GetChildren()) do
			for i,v3 in pairs(v2:GetChildren()) do
				if v3:IsA("ObjectValue") then
					if v3.Name == "Barracks" then
						local Class = game.ReplicatedStorage.Game.Buildings["Barracks"]["2"];
						local Button = v2;
						local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
						Target:FireServer(Class, Button);
					else
						if v3.Name == "Greenhouse" then
							local Class = game.ReplicatedStorage.Game.Buildings["Greenhouse"]["2"];
							local Button = v2;
							local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
							Target:FireServer(Class, Button);
						else
							if v3.Name == "Factory" then
									local Class = game.ReplicatedStorage.Game.Buildings["Factory"]["3"];
									local Button = v2;
									local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
									Target:FireServer(Class, Button);
							else
								if v3.Name == "Oil Field" then
										local Class = game.ReplicatedStorage.Game.Buildings["Oil Field"]["2"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
								else
									if v3.Name == "Guard Tower" then
										local Class = game.ReplicatedStorage.Game.Buildings["Guard Tower"]["1"];
										local Button = v2;
										local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
										Target:FireServer(Class, Button);
									else
										if v3.Name == "Wall" then
											local Class = game.ReplicatedStorage.Game.Buildings["Wall"]["2"];
											local Button = v2;
											local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
											Target:FireServer(Class, Button);
										else
											if v3.Name == "Generator Powerplant" then
												local Class = game.ReplicatedStorage.Game.Buildings["Generator Powerplant"]["1"];
												local Button = v2;
												local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
												Target:FireServer(Class, Button);
											else
													if v3.Name == "Command Center" then
														local Class = game.ReplicatedStorage.Game.Buildings["Command Center"]["2"];
														local Button = v2;
														local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
														Target:FireServer(Class, Button);
													else
															if v3.Name == "Military" then
																local Class = game.ReplicatedStorage.Game.Buildings.Military["Tank Factory"]["2"];
																local Button = v2;
																local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																Target:FireServer(Class, Button);
															else
																if v3.Name == "Nuclear Powerplant" then
																	local Class = game.ReplicatedStorage.Game.Buildings["Nuclear Powerplant"]["1"];
																	local Button = v2;
																	local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																	Target:FireServer(Class, Button);
																else
																	if v3.Name == "Airport" then
																		local Class = game.ReplicatedStorage.Game.Buildings["Airport"]["1"];
																		local Button = v2;
																		local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																		Target:FireServer(Class, Button);
																	else
																		if v3.Name == "Helicopter Bay" then
																			local Class = game.ReplicatedStorage.Game.Buildings["Helicopter Bay"]["2"];
																			local Button = v2;
																			local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																			Target:FireServer(Class, Button);
																		else
																			if v3.Name == "Main Base" then
																				local Class = game.ReplicatedStorage.Game.Buildings["Main Base"]["2"];
																				local Button = v2;
																				local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
																				Target:FireServer(Class, Button);
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
end)

a4:addButton("Give selected player all buildings(paid)",function()


    for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
        if v.Name == chosenPlayer then
            for i,v2 in pairs(v:GetChildren()) do
                for i,v3 in pairs(v2:GetChildren()) do
                    if v3:IsA("ObjectValue") then
                        v3.Name = v3.Value.Name
                    end
                end
            end
        end
    end
    
    
    for i,v in pairs(game.Workspace.Game.Buttons:GetChildren()) do
        if v.Name == chosenPlayer then
            for i,v2 in pairs(v:GetChildren()) do
                for i,v3 in pairs(v2:GetChildren()) do
                    if v3:IsA("ObjectValue") then
                        if v3.Name == "Missile Factory" then
                            local Class = game.ReplicatedStorage.Game.Buildings["Missile Factory"]["1"];
                            local Button = v2;
                            local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                            Target:FireServer(Class, Button);
                        else
                            if v3.Name == "Drone Factory" then
                                local Class = game.ReplicatedStorage.Game.Buildings["Drone Factory"]["1"];
                                local Button = v2;
                                local Target = game:GetService("ReplicatedStorage").RE.insertBuilding;
                                Target:FireServer(Class, Button);
                            end
                        end
                    end
                end
            end
        end
    end
end)
local msg = ""
a4:addButton("Message 1",function()
    local msg = "Hey, do you want to get all of the buildings for Army Tycoon? If you want them type YES in the chat."
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)

a4:addButton("Message 2",function()
    local msg = "Hello {user} would you like Free buildings, Paid, buildings or all? To select please type FREE for free buildings, PAID for paid buildings, or BOTH for free and paid buildings."
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)

a4:addButton("Message 3",function()
    local msg = "Starting..."
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)

a4:addButton("Message 4",function()
    local msg = "Completing human verification…"
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)

a4:addButton("Message 5",function()
    local msg = "Completed human verification!"
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)

a4:addButton("Message 6",function()
    local msg = "Successfully delivered resources to {user}!"
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(msg,"All")
end)








a5:addKeybind("Toggle Keybind", Enum.KeyCode.RightShift, function()
    venyx:toggle()
    end)
 
-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")
 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

 
-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom