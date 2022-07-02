for i,v in pairs(workspace:GetDescendants()) do
	if v.Name == "ClickDetector" and v.Parent.Parent.Name ~= "DungeonDoor" and v.Parent.Parent.Name ~= "LaserDoor" and v.Parent.Parent.Name ~= "ForcefieldDoor" then
	fireclickdetector(v)
	end
end
local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(workspace.Zombies.LootModels:GetChildren()) do
	if v.Name == "Soul" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame
	end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos

for i,zombie in pairs(workspace.Zombies.Spawned:GetChildren()) do
	game:GetService("ReplicatedStorage").Sword:FireServer(v.HumanoidRootPart)
end

for i,v in pairs(workspace.Enemies:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >= 1 then
        if Player:DistanceFromCharacter(v.HumanoidRootPart.Position) < 25 then
            table.insert(Hit,{v,v.HumanoidRootPart.Position})
        end
    end
end

-- Invoke
local lplr = game:GetService("Players").LocalPlayer
local touch = findTouchInterest(tool)
local tool = lplr.Character:FindFirstChildWhichIsA("Tool")
for i,v in pairs(workspace.Zombies.Spawned:GetChildren()) do
firetouchinterest(touch.Parent, v.HumanoidRootPart, 1)
firetouchinterest(touch.Parent, v.HumanoidRootPart, 0)
end