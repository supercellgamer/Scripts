local Hacking = false
if game:GetService("Players").LocalPlayer.Status.Team.Value == "Spectator" then
game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
wait(0.5)
elseif game:GetService("Players").LocalPlayer.Status.Team.Value == "Spectator" then
game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
wait(0.5)
else
print(" ")
end
coroutine.wrap(function()
    repeat
        pcall(function()
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character and v.NRPBS.Health.Value > 0 and v.Character:FindFirstChild("Head") and v ~= game:GetService("Players").LocalPlayer then
                    if game:GetService("Players").LocalPlayer.Status.Team.Value ~= "Spectator" then
                        if not Hacking then
                            Hacking = true
                            TimeLeft = 25
                        end
                        wait(0.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame + Vector3.new(0, 2, 2)
                        local args = {
                            [1] = v.Character.Head,
                            [2] = v.Character.Head.Position,
                            [3] = "Bomb",
                            [4] = 99,
                            [5] = math.huge,
                            [8] = true,
                            [9] = 1,
                            [10] = false,
                            [11] = 1.6,
                            [12] = 3.2,
                            [13] = 20,
                            [14] = 0,
                            [15] = 10,
                            [16] = 0.5,
                            [17] = 5,
                            [18] = true,
                            [19] = 0,
                            [20] = 128112.80000297
                        }
                        game:GetService("ReplicatedStorage").Events.HitPart:FireServer(unpack(args))
                    end
                end
            end
            Hacking = false
            wait(.8)
        end)
    until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
    local done = true
    if done == true then
print(" ")
    else
print(" ")
    end

end)()