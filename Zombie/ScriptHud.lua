local lplr = game:GetService("Players").LocalPlayer
spawn(function()
    while wait(5) do
for i,v in pairs(game:GetService("Workspace").BossArena.Humanoids:GetChildren()) do
if lplr.leaderstats.Hidden.Souls.Value == 50 and v.Name == "HeadlessHorseman" then
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "DungeonDoor" then
        fireclickdetector(v)
        end
    end
end
end
end
end)
-- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-504, 4, -77) -- Return


spawn(function()
    while wait(5) do
for i,v in pairs(game:GetService("Workspace").SupplyDrop.Spawned:GetChildren()) do
	fireclickdetector(v.Open.ClickPart.ClickDetector)
end
end
end)
function collect()
for i,v in pairs(workspace.Zombies.LootModels:GetDescendants()) do
    if v.Name == "PrimaryPart" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		wait(0.1)
    end
end
end