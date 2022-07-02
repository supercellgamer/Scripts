if not game:IsLoaded() then
	game.Loaded:Wait()
end 

if not game.PlaceId == 286090429 then
	game:GetService("Players").LocalPlayer:Kick("\n[XRAF]: Game not supported. Only usable on Arsenal.")
end

---------------------------------------------
--         Variables and shit lol          --
---------------------------------------------

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/XR97onYT/Notification-Library/main/lib.lua"))()

local Hacking = false
local ToxicMessages = true
local TimeLeft = 25
local VirtualUser = game:GetService("VirtualUser")

local ToxicMessages = {
	"You guys are so bad I won EZ",
	"Get better kids you're so bad",
	"Bro yall play like level 10 srsly get better",
	"Im not hacking You're just garbage, get better",
	"I think you need to spend some coins on skill mate",
	"gg ez"
}

local NormalMessages = {
	"Wow I'm like fusionboys v2!",
	"OMG IS THAT TAMAR!!!!!",
	"OMG TANQR IS IN MY GAME",
	"gg",
	"nice! im improving",
	"wow ive really gotten good at the game"
}

warn("[XRAF] Variables are set")

---------------------------------------------
--               Functions                 --
---------------------------------------------

function getUserRole(user, group)
	return user:GetRoleInGroup(group)
end

function hopServer()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.playing <= 15 and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	end
end

function sayMessage(option)
	if option == "Normal" then
		local Message = NormalMessages[math.random(#NormalMessages)]
		game.ReplicatedStorage.Events.PlayerChatted:FireServer(Message, false, true, false)
	elseif option == "Toxic" then
		local Message = ToxicMessages[math.random(#ToxicMessages)]
		game.ReplicatedStorage.Events.PlayerChatted:FireServer(Message, false, true, false)
	else
		local Message = NormalMessages[math.random(#NormalMessages)]
		game.ReplicatedStorage.Events.PlayerChatted:FireServer(Message, false, true, false)
	end
end

function Main()
	coroutine.wrap(function()
		while true do
			if not Hacking then print("[XRAF] Fail Prevention: "..tostring(TimeLeft)) TimeLeft = TimeLeft - 1 else TimeLeft = 20 end
			if TimeLeft <= 1 then
				if not Hacking then hopServer() end
			end
			wait(1)
		end
	end)()

	wait(1.5)
	game.ReplicatedStorage.Events.CoolNewRemote:FireServer("MouseButton1")
	game.Players.LocalPlayer.PlayerGui.Menew.Enabled = false
	game.Players.LocalPlayer.PlayerGui.GUI.Enabled = true
	game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
	game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
	game.Players.LocalPlayer.PlayerGui.GUI.Interface.Visible = true

    repeat wait() until not game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
    
	wait(1.5)
	
	coroutine.wrap(function()
	    repeat wait() until not game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true
	    game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
	    game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
	    wait(1)
	    game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
	    wait(.5)
	    if game.Players.LocalPlayer.Status.Team.Value == "Spectator" then
	        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
	        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
	        wait(1)
	        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
	    end
	    wait(.5)
	    if game.Players.LocalPlayer.Status.Team.Value == "Spectator" then
	        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TYC")
	        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
	        wait(1)
	        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
	    end
	    wait(.5)
	    if game.Players.LocalPlayer.Status.Team.Value == "Spectator" then
	        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TGC")
	        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
	        wait(1)
	        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
	    end
	    wait(.5)
	    if game.Players.LocalPlayer.Status.Team.Value == "Spectator" then
	        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("Random")
	        game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
	        wait(1)
	        game:GetService("ReplicatedStorage").Events.KillMe:FireServer()
	    end
	end)()
	
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
		
		if ToxicMessages then
			sayMessage("Toxic")
		else
			sayMessage("Normal")
		end
		
		wait(6.5)
		
		hopServer()
	end)()
end

warn("[XRAF] Functions Set")

---------------------------------------------
--          After Loaded Things            --
---------------------------------------------

coroutine.wrap(function()
	while wait(1) do
		VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(.5)
		VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end
end)()

Main()

Library:NewNotif(game:GetService("Players").LocalPlayer, "Script Loaded", "The script has loaded. Do you want toxic or normal messages? (Default is Toxic)", {
	{
		["Text"] = "Toxic",
		["func"] = function()
			ToxicMessages = true
		end
	},
	{
		["Text"] = "Normal",
		["func"] = function()
			ToxicMessages = false
		end
	}
}, true)

warn("[XRAF] Script Loaded")