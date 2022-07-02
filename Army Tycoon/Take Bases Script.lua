for i,v in pairs(game.Workspace.Game.Base.Interactives:GetChildren()) do
game:GetService("ReplicatedStorage").RE.StartCapturing:FireServer(v, true)
end