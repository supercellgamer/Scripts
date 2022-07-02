wait(2)

game.ReplicatedStorage.Events.LoadCharacter:FireServer()
local Burn = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Burn")

local Damage = 1000/36
local WepName = "Musket"
print("Set values")
repeat wait() until not game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
print("Start the autofarm")

repeat
    pcall(function()
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character and v.NRPBS.Health.Value > 0 and v.Character:FindFirstChild("Head") and v ~= game:GetService("Players").LocalPlayer then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame + Vector3.new(0, 2, 2)
            if not Hacking then Hacking = true end
            wait(.1)
                local arguments = {
                    [1] = v.Character:FindFirstChild("Head"),
                    [2] = game:GetService("ReplicatedStorage"):FindFirstChild("Weapons"):FindFirstChild(WepName),
                    [3] = Damage,
                    [4] = Vector3.new(v.Character:FindFirstChild("Head").Position.X, v.Character:FindFirstChild("Head").Position.Y, v.Character:FindFirstChild("Head").Position.Z)
                }
                Burn:FireServer(
                    unpack(arguments)
                )
                Burn:FireServer(
                    unpack(arguments)
                )
                Burn:FireServer(
                    unpack(arguments)
                )
                Burn:FireServer(
                    unpack(arguments)
                )
                Burn:FireServer(
                    unpack(arguments)
                )
                Burn:FireServer(
                    unpack(arguments)
                )
            end
        end
        wait(0.8)
    end)
until
    game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true