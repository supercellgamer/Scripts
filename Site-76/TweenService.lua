local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(29, 3, -45)})
tween:Play()