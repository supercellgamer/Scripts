local c = 1
function zigzag(X)
 return math.acos(math.cos(X * math.pi)) / math.pi
end
game:GetService("RunService").RenderStepped:Connect(function()
 if game.Workspace.Camera:FindFirstChild('Arms') then
  for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do
   if v.ClassName == 'MeshPart' then 
    v.Color = Color3.fromHSV(zigzag(c),1,1)
    c = c + .0001
   end
  end
 end
end)
print("========== MADE BY Superscripted#0001 ==========")
while true do
    if game.Players.LocalPlayer.Status.Team.Value ~= "Spectator" then
wait(0.1)
game.Players.LocalPlayer.Status.Team.Value = "TRC"
wait(0.1)
game.Players.LocalPlayer.Status.Team.Value = "TYC"
wait(0.1)
game.Players.LocalPlayer.Status.Team.Value = "TGC"
wait(0.1)
game.Players.LocalPlayer.Status.Team.Value = "TBC"
wait(0.1)
game.Players.LocalPlayer.Status.Team.Value = "TPC"
    else
        game:GetService("replicatedStorage").Events.JoinTeam:FireServer("TBC")
        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
        wait(1)
        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
        if game.Players.LocalPlayer.Status.Team.Value == "Spectator" then
            game:GetService("replicatedStorage").Events.JoinTeam:FireServer("TRC")
            game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
        wait(1)
        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
        end
    end
end