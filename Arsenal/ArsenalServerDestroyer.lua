


-- Higher ban risk



if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId ~= 286090429 then
    repeat
        wait()
    until
    game.PlaceId == 286090429
end
_G.ChatSpam = false
_G.SpamMessage = "(TIP) don't waste your time talking to me, I am afk lol"
_G.ServerHop = true


wait(2)
local config = {

    SpamRespawn = false,

    ServerHopOnLowPlrCount = true,
    ServerHopPlrCount = 6,
    ServerHopAfterTime = true,
    ServerHopTime = 45
}
if getgenv().Loaded == false then
print("                   ===========================================================")
print("                                                                              ")
print("                                          Arsenal Kill Farm                   ")
print("                   -----------------------------------------------------------")
print("                                    Cracked by Superscripted#0001             ")
print("                                       Compiled by Ozara#0111                 ")
print("                                         Kill all: ic3w0lf                    ")
print("                                 Added features: Superscripted#0001           ")
print("                   -----------------------------------------------------------")
print("                                            -- Notes --                       ")
print("                      If you found this in some random discord server/pastebin")
print("                        you need to have _G.ChatSpam = true for chat spamming ")
print("                       put any text into the string to spam_G.SpamMessage = ''")
print("                    Don't minimize your roblox instance, shrink it and hide it")
print("                                         Have a good time!                    ")
print("                   -----------------------------------------------------------")
print("                                The rest is just setting up features          ")
print("                                                                              ")
print("                                              Loading                         ")
end
local plrs = game:service("Players")
local rs = game:service("ReplicatedStorage")

local function hop() 
    while wait(3) do
        local x = {}
        for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                x[#x + 1] = v.id
            end
        end
        if #x > 0 then
            wait()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
        end
    end
end

spawn(function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/UniversalExploitHub/Main/main/ServerHop.lua'),true))()
end)

while not plrs["LocalPlayer"] do
    wait()
end

local plr = plrs.LocalPlayer

while not rs:FindFirstChild("Events") or not plr:FindFirstChild("Status") or not rs:FindFirstChild("wkspc") or not rs:FindFirstChild("Weapons") do
    wait()
end

local events = rs.Events

game.ReplicatedStorage.Events.CoolNewRemote:FireServer("MouseButton1")
game.Players.LocalPlayer.PlayerGui.Menew.Enabled = false
game.Players.LocalPlayer.PlayerGui.GUI.Enabled = true
game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible = false
game.Players.LocalPlayer.PlayerGui.GUI.Interface.Visible = true

local function teamcheck(vic, isffa)
    if isffa == true then return true end
    if vic.Status.Team.Value == plr.Status.Team.Value then return false end
    return true
end

spawn(function()
    while wait(1) do
        if _G.ChatSpam == true then
            events.PlayerChatted:FireServer(_G.SpamMessage, false, false, false)
        end
    end
end)


spawn(function()
    while wait(.1) do
        if #plrs:GetPlayers() <= 8 then
            hop()
        	wait(2)
    	end
    end
end)

local GunToFire = "Admin Launcher"
local Burn = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Burn")

local Damage = 1000/36
local gun = rs.Weapons:FindFirstChild(GunToFire)
if getgenv().Loaded == false then
print("                                                                              ")
print("                                               Loaded                         ")
print("                                                                              ")
print("                   ===========================================================")
end
getgenv().Loaded = true

getgenv().checked = 0
getgenv().change = 0
getgenv().win = 0
getgenv().teamHop = true
getgenv().doneWin = false


while wait() do
    local is_spectator = plr.Status.Team.Value == "Spectator"
    local roundover = rs.wkspc.Status.RoundOver.Value
    local ffa = rs.wkspc.FFA.Value
    local can_respawn = rs.wkspc.Status.CanRespawn.Value
    local camera = workspace.CurrentCamera

    if is_spectator == false and roundover == false then
        for _,v in next, plrs:GetPlayers() do
            pcall(function()
                if v.Name ~= plr.Name and v.Character:FindFirstChild("Spawned") and teamcheck(v, ffa) then
                    repeat
                        plr.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                        plr.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame + Vector3.new(0,2,0)
                        camera.CFrame = CFrame.new(camera.CFrame.p, v.Character.Head.CFrame.p)
                        events.HitPart:FireServer(v.Character.Head, v.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()), gun.Name, 1, (plr.Character.Head.Position - v.Character.Head.Position).Magnitude, false, (math.random() > .6 and true or false), ismelee, 1, false, gun.FireRate.Value, gun.ReloadTime.Value, gun.Ammo.Value, gun.StoredAmmo.Value, gun.Bullets.Value, gun.EquipTime.Value, gun.RecoilControl.Value, gun.Auto.Value, gun["Speed%"].Value, rs.wkspc.DistributedTime.Value) --thanks ic3w0lf
                        local arguments = {
                            [1] = v.Character:FindFirstChild("Head"),
                            [2] = gun,
                            [3] = Damage,
                            [4] = Vector3.new(v.Character:FindFirstChild("Head").Position.X, v.Character:FindFirstChild("Head").Position.Y, v.Character:FindFirstChild("Head").Position.Z)
                        }
                        Burn:FireServer(
                            unpack(arguments)
                        )
                        if math.random(1,20) == 8 then
                            if math.random(1,20) == 11 then
                                getgenv().win = getgenv().win + 1
                                warn("Win:", getgenv().win)
                            end
                        end
                        getgenv().checked = getgenv().checked + 1 
                    until getgenv().checked > 10
                    getgenv().checked = 0
                        if getgenv().teamHop == true then
                            getgenv().change = 0
                        repeat
                            if math.random(1,5) == 1 then
                            wait()
                            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
                            elseif math.random(1,5) == 2 then
                            wait()
                            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("Spectator")
                            elseif math.random(1,5) == 3 then
                            wait()
                            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
                            elseif math.random(1,5) == 4 then
                            wait()
                            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("Spectator")
                            elseif math.random(1,5) == 5 then
                            wait()
                            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("Random")
                            end
                            getgenv().change = getgenv().change + 1
                            if math.random(1,20) == 12 then
                                if math.random(1,20) == 9 then
                                    getgenv().win = getgenv().win + 1
                                    warn("Win:", getgenv().win)
                                end
                            end
                        until getgenv().change > 3
                        getgenv().change = 0
                        if getgenv().teamHop == false then
                            if math.random(1,2) == 1 then
                                wait()
                                game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
                                else
                                wait()
                                game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
                                end
                            end
                        end
                        if math.random(1,20) == 7 then
                            if math.random(1,20) == 3 then
                                getgenv().win = getgenv().win + 1
                                warn("Win:", getgenv().win)
                            end
                        end
                        if getgenv().win > 10 then
                            if math.random(1,20) == 1 then
                                getgenv().teamHop = false
                                if getgenv().doneWin == false then
                                warn("Ending game")
                                getgenv().doneWin = true
                                end
                            end
                        end
                end
            end)
        end
    end
        if roundover == true then
            getgenv().checked = 0
            getgenv().change = 0
            getgenv().win = 0
            getgenv().teamHop = true
            getgenv().doneWin = false
        end
    if is_spectator == true and roundover == false and can_respawn == true then
        events.CoolNewRemote:FireServer("MouseButton1")
        wait(.2)
        if ffa == false then 
            events.JoinTeam:FireServer("TBC")
            wait(.3)
            if (plr.Status.Team.Value == "Spectator") and rs.wkspc.Status.RoundOver.Value == false and rs.wkspc.Status.CanRespawn.Value == true then
                events.JoinTeam:FireServer("TRC")
            end
            wait(.3)
        else
            events.JoinTeam:FireServer("Random")
        end

end
end