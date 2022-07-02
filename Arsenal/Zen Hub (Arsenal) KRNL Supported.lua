if game.PlaceId == 286090429 then
    local function callback(Text)
    end
    
    local NotificationBindable = Instance.new("BindableFunction")
    NotificationBindable.OnInvoke = callback
    print("                   -----------------------------------------------------------")
    print("")
    print("                   -------------------Universal Exploit Hub-------------------")
    print("                                 Developers: Superscripted#0201               ")
    print("                                                                              ")
    print("                                                                              ")
    print("")
    wait(1)
        Client = {
            Modules = {
                ClientEnvoirment,
                ClientMain,
                CreateProj,
                CretTrail,
                ModsShit
            },
            Toggles = {
                Walkspeed = false,
                JumpPower = false,
                BHop = false,
                InstantRespawn = false,
                AntiAim = false,
                AutoAmmo = false,
                AutoHealth = false,
                Godmode = false,
                CrazyArrows = false,
                FFA = false,
                Baseball = false,
                Snow = false,
                Trac = false,
                Sight = false,
                FOV = false,
                GreenSmoke = false,
                Visiblecheck = false,
                SilentAim = false,
                FireRate = false,
                Bombs = false,
                AutoKill = false
            },
            Values = {
                JumpPower = 50,
                LookMeth = 'Look Up',
                FOV = 150,
                ChatMsg = 'Rickrolled',
                AimPart = 'Head',
                Gravity = 55.52,
                Time = 1
            }
        }
wait(1)

        print(" ")
        print("                   ----------------------Loaded Client Values-----------------")
        print(" ")

        
        local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Exploit-GUI/main/UniversalExploitHub.lua"))()
    
        main = lib:Window()
        CombatW = main:Tab('Main')
        GunModsW = main:Tab('Gun Mods')
        PlayerW = main:Tab('Local Player')
        ServerW = main:Tab('Trolling')
        VisualsW = main:Tab('Visuals')
        FarmingW = main:Tab('Farming')
        FunW = main:Tab('Fun / Extra')
        Misc2W = main:Tab('Misc')
        MiscW = main:Tab('Credits')
        
        wait(1)
        print(" ")
        print("                   ------------------------Loaded Library---------------------")
        print(" ")
    
    
        FarmingW:Button('Auto Kill',function()
            -- getgenv().adminKill = true
            -- autoKill()
        end)
        FarmingW:Toggle('Auto Kill',function()
            -- getgenv().adminKill = true
            -- autoKill()
        end)
        FarmingW:Button('Stop Auto Kill',function()
            -- getgenv().adminKill = false
            -- autoKill()
        end)


    
    
    
        wait(1)
        --GC
        for i,v in pairs(getgc(true)) do
            if type(v) == 'table' and rawget(v,'updateInventory') and rawget(v,'firebullet') then
                Client.Modules.ClientEnvoirment = getfenv(v.firebullet)
                Client.Modules.ClientMain = v.firebullet
                Client.Modules.ModsShit = v.updateInventory
            end
            if type(v) == 'table' and rawget(v,'CreateProjectile') then
                Client.Modules.CreateProj = v.CreateProjectile
            end
            if type(v) == 'table' and rawget(v,'createtrail') then
                Client.Modules.CretTrail = v.createtrail
            end
        end
        function autoKill()
        while wait() do
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end

            

            local config = {
            
                SpamRespawn = false,
            
                ServerHopOnLowPlrCount = true,
                ServerHopPlrCount = 6,
                ServerHopAfterTime = true,
                ServerHopTime = 45
            }
            
            local plrs = game:service("Players")
            local rs = game:service("ReplicatedStorage")
            
            
            
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
            
            

            
            
            local GunToFire = "Admin Launcher"
            local Burn = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Burn")
            
            local Damage = 1000/36
            local gun = rs.Weapons:FindFirstChild(GunToFire)
            local fired = 0
            while getgenv().adminKill == true do
                wait()
                local is_spectator = plr.Status.Team.Value == "Spectator"
                local roundover = rs.wkspc.Status.RoundOver.Value
                local ffa = rs.wkspc.FFA.Value
                local can_respawn = rs.wkspc.Status.CanRespawn.Value
                local camera = workspace.CurrentCamera
                if getgenv().adminKill == true then
                if is_spectator == false and roundover == false then
                    for _,v in next, plrs:GetPlayers() do
                        pcall(function()
                            if v.Name ~= plr.Name and v.Character:FindFirstChild("Spawned") and teamcheck(v, ffa) then                                   
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
                                    fired = fired + 1
                                    if fired > 10 then
                                    if ffa == false then
                                        if math.random(1,5) == 1 then
                                            if game:GetService("Players").LocalPlayer.Status.Team.Value == "TBC" then
                                                wait()
                                                game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
                                            elseif game:GetService("Players").LocalPlayer.Status.Team.Value == "TRC" then
                                                wait()
                                                game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
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
                if roundover == true then
                    getgenv().adminKill = false
                end
            end
        end
    end
end
        --Framework
        function KillAll()
            local Gun = game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value);
            local Crit = math.random() > .6 and true or false;
            for i,v in pairs(game.Players:GetPlayers()) do
                if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
                    for i =1,10 do
                        local Distance = (game.Players.LocalPlayer.Character.Head.Position - v.Character.Head.Position).magnitude 
                        game.ReplicatedStorage.Events.HitPart:FireServer(v.Character.Head, -- Hit Part
                        v.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()), -- Hit Position
                        Gun.Name, 
                        Crit and 2 or 1, 
                        Distance,
                        Backstab, 
                        Crit, 
                        false, 
                        1, 
                        false, 
                        Gun.FireRate.Value,
                        Gun.ReloadTime.Value,
                        Gun.Ammo.Value,
                        Gun.StoredAmmo.Value,
                        Gun.Bullets.Value,
                        Gun.EquipTime.Value,
                        Gun.RecoilControl.Value,
                        Gun.Auto.Value,
                        Gun['Speed%'].Value,
                        game.ReplicatedStorage.wkspc.DistributedTime.Value);
                    end
                end
            end
        end
        local CurrentCamera = workspace.CurrentCamera
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        function ClosestPlayer()
            local MaxDist, Closest = math.huge
            for i,v in pairs(Players.GetPlayers(Players)) do
                if v ~= LocalPlayer and v.Team ~= LocalPlayer.Team and v.Character then
                    local Head = v.Character.FindFirstChild(v.Character, "Head")
                    if Head then 
                        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
                        if Vis then
                            local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
                            local Dist = (TheirPos - MousePos).Magnitude
                            if Dist < MaxDist and Dist <= Client.Values.FOV then
                                MaxDist = Dist
                                Closest = v
                            end
                        end
                    end
                end
            end
            return Closest
        end
        
        function GetAimPart()
            if Client.Values.AimPart == 'Head' then
                return 'Head'
            end
            if Client.Values.AimPart == 'LowerTorso' then
                return 'LowerTorso'
            end
            if Client.Values.AimPart == 'Random' then
                if math.random(1,3) == 1 then
                    return 'LowerTorso'
                else
                    return 'Head'
                end
            end
        end
        
        local mt = getrawmetatable(game)
        local namecallold = mt.__namecall
        local index = mt.__index
        setreadonly(mt, false)
        mt.__namecall = newcclosure(function(self, ...)
            local Args = {...}
            NamecallMethod = getnamecallmethod()
            if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" and Client.Toggles.WallBang then
                table.insert(Args[2], workspace.Map)
            end
            if NamecallMethod == "FindPartOnRayWithIgnoreList" and not checkcaller() and Client.Toggles.SilentAim then
                local CP = ClosestPlayer()
                if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, GetAimPart()) then
                    Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character[GetAimPart()].Position - CurrentCamera.CFrame.Position).Unit * 1000)
                    return namecallold(self, unpack(Args))
                end
            end
            if tostring(NamecallMethod) == "FireServer" and tostring(self) == "ControlTurn" then
                if Client.Toggles.AntiAim == true then
                    if Client.Values.LookMeth == "Look Up" then
                        Args[1] = 1.3962564026167
                    end
                    if Client.Values.LookMeth == "Look Down" then
                        Args[1] = -1.5962564026167
                    end
                    if Client.Values.LookMeth == "Torso In Legs" then
                        Args[1] = -6.1;
                    end
                    return namecallold(self, unpack(Args))
                end
            end
            return namecallold(self, ...)
        end)
        setreadonly(mt, true)
        local FOVCircle = Drawing.new("Circle")
        FOVCircle.Thickness = 3.5
        FOVCircle.NumSides = 460
        FOVCircle.Filled = false
        FOVCircle.Transparency = 999
        FOVCircle.Radius = Client.Values.FOV
        FOVCircle.Color = Color3.new(255,255,255)
        game:GetService("RunService").Stepped:Connect(function()
            if Client.Toggles.FireRate == true then
                Client.Modules.ClientEnvoirment.DISABLED = false
                Client.Modules.ClientEnvoirment.DISABLED2 = false
            end
            if Client.Toggles.NoRecoil == true then
                Client.Modules.ClientEnvoirment.recoil = 0
            end
            if Client.Toggles.NoSpread == true then
                Client.Modules.ClientEnvoirment.currentspread = 0
                Client.Modules.ClientEnvoirment.spreadmodifier = 0
            end
            if Client.Toggles.AlwaysAuto == true then
                Client.Modules.ClientEnvoirment.mode = 'automatic'
            end
            if Client.Toggles.InfAmmo == true then
                debug.setupvalue(Client.Modules.ModsShit, 3, 70)
            end
            FOVCircle.Radius = Client.Values.FOV
            if Client.Toggles.FOV == true then
                FOVCircle.Visible = true
            else
                FOVCircle.Visible = false
            end
            FOVCircle.Position = game:GetService('UserInputService'):GetMouseLocation()
        end)
        spawn(function()
            while true do wait()
                if Client.Toggles.KillAura then
                    for i,v in pairs(game.Players:GetPlayers()) do
                        if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then    
                            local Distance = (game.Players.LocalPlayer.Character.PrimaryPart.Position - v.Character.PrimaryPart.Position).magnitude 
                            if Distance <= 12 then
                                game:GetService("ReplicatedStorage").Events.FallDamage:FireServer(1000, v.Character:FindFirstChild("Hitbox"))
                            end
                        end
                    end
                end
            end
        end)
        game:GetService("RunService").Stepped:Connect(function()
            if Client.Toggles.CrazyArrows == true then
                if Client.Toggles.FFA == false then
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if v.Team ~= game.Players.LocalPlayer.Team and v ~= game.Players.LocalPlayer then
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Arrow",
                                [2] = 800,
                                [3] = v.Character.Head.Position,
                                [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Crossbow",
                                [10] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(game.Players.LocalPlayer.Name, unpack(v1))
                        end
                    end
                else
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if v ~= game.Players.LocalPlayer then
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Arrow",
                                [2] = 800,
                                [3] = v.Character.Head.Position,
                                [4] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Crossbow",
                                [10] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(game.Players.LocalPlayer.Name, unpack(v1))
                        end
                    end
                end
            end
        end)
        
        spawn(function()
            while true do
                wait(0.1)
                pcall(function()
                    if Client.Toggles.Baseball then
                        for i, v in pairs(game.Players:GetPlayers()) do
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Baseball",
                                [2] = 173,
                                [3] = v.Character.Head.Position,
                                [4] = v.Character.HumanoidRootPart.CFrame + Vector3.new(-10, math.random(0, 15), 0),
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Baseball Launcher",
                                [10] = v.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                        
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(v.Name, unpack(v1))
                        end       
                        for i, v in pairs(game.Players:GetPlayers()) do
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Baseball",
                                [2] = 173,
                                [3] = v.Character.Head.Position,
                                [4] = v.Character.HumanoidRootPart.CFrame + Vector3.new(-10, math.random(0, 15), 0),
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Baseball Launcher",
                                [10] = v.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                        
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(v.Name, unpack(v1))
                        end       
                    end 
                end)
            end
        end)
        spawn(function()
            while true do
                wait(0)
                pcall(function()
                    if Client.Toggles.Snow then
                        for i, v in pairs(game.Players:GetPlayers()) do
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Baseball",
                                [2] = 173,
                                [3] = v.Character.Head.Position,
                                [4] = v.Character.HumanoidRootPart.CFrame + Vector3.new(-10, math.random(0, 15), 0),
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Snowball",
                                [10] = v.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                        
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(v.Name, unpack(v1))
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Baseball",
                                [2] = 173,
                                [3] = v.Character.Head.Position,
                                [4] = v.Character.HumanoidRootPart.CFrame + Vector3.new(-10, math.random(0, 15), 0),
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Snowball",
                                [10] = v.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                        
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(v.Name, unpack(v1))
                        end       
                    end
                    if Client.Toggles.Bombs then
                        for i, v in pairs(game.Players:GetPlayers()) do
                            YesTable = {
                                [1] = game:GetService("Workspace").Map.Clips,
                                [2] = game:GetService("Workspace").Debris,
                                [3] = game.Players.LocalPlayer.Character,
                                [4] = game:GetService("Workspace")["Ray_Ignore"],
                                [5] = game:GetService("Workspace").Map.Spawns,
                                [6] = game:GetService("Workspace").Map.Ignore
                            }
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Character then
                                    YesTable[6 + i] = v
                                end
                            end
                            local v1 = {
                                [1] = "Baseball",
                                [2] = 173,
                                [3] = v.Character.Head.Position,
                                [4] = v.Character.HumanoidRootPart.CFrame + Vector3.new(-10, math.random(0, 15), 0),
                                [5] = 100,
                                [6] = 0,
                                [7] = 0,
                                [8] = 0,
                                [9] = "Flaming Pumpkin",
                                [10] = v.Character.HumanoidRootPart.Position,
                                [11] = false,
                                [13] = YesTable,
                                [15] = false,
                                [16] = 142.0182788372
                            }
                            local rem = game:GetService("ReplicatedStorage").Events.ReplicateProjectile
                        
                            rem:FireServer(v1)
                            Client.Modules.CreateProj(v.Name, unpack(v1))
                        end       
                    end 
                end)
            end
        end)
        spawn(function()
            while true do
                wait(0)
                pcall(function()
                    if Client.Toggles.Trac then
                        for i, v in pairs(game.Players:GetPlayers()) do
                                if v ~= game.Players.LocalPlayer then
                                local userdata_1 = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.Angles(0,0,0);
                                local userdata_2 = game.workspace.CurrentCamera.CFrame.lookVector
                                Camera = game.workspace.CurrentCamera
                                Camera  = {
                                    CFrame = CFrame.new(Camera.CFrame.p,v.Character.Head.Position)
                                }
                                x = (Camera.CFrame).LookVector
                                YesTable = {
                                    [1] = game:GetService("Workspace").Map.Clips, 
                                    [2] = game:GetService("Workspace").Debris, 
                                    [3] = game.Players.LocalPlayer.Character, 
                                    [4] = game:GetService("Workspace")["Ray_Ignore"], 
                                    [5] = game:GetService("Workspace").Map.Spawns, 
                                    [6] = game:GetService("Workspace").Map.Ignore
                                }
                                for i,v in pairs(game.Players:GetPlayers()) do
                                    if v.Character then
                                        YesTable[6+i] = v
                                    end
                                end
                                local userdata_2 = x
                                local table_1 = YesTable
                                local userdata_3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255));
                                local string_1 = "Railgun";
                                local userdata_4 = game.Players.LocalPlayer.Character.PrimaryPart;
                                local Target = game:GetService("ReplicatedStorage").Events.Trail;
                                Target:FireServer(userdata_1, userdata_2, table_1, userdata_3, string_1, userdata_4);
                                Client.Modules.CretTrail(userdata_1, userdata_2, table_1, userdata_3, string_1, userdata_4,game.Players.LocalPlayer.Name)
                            end
                        end       
                    end 
                end)
            end
        end)
        spawn(function()
            while true do
                wait(0)
                pcall(function()
                    if Client.Toggles.Sight then
                        local userdata_1 = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.Angles(0,0,0);
                        local userdata_2 = (game.workspace.CurrentCamera.CFrame.lookVector * 999)
                        local table_1 = {
                        workspace.Map.Clips,
                        game.Workspace.Debris,
                        game.Players.LocalPlayer.Character,
                        game.Workspace.Ray_Ignore,
                        workspace.CurrentCamera,
                        game.Workspace:WaitForChild("Map"):WaitForChild("Spawns"),
                        game.Workspace:WaitForChild("Map"):WaitForChild("Ignore")
                        }
                        local userdata_3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255));
                        local string_1 = "Railgun";
                        local userdata_4 = game.Players.LocalPlayer.Character.PrimaryPart;
                        local Target = game:GetService("ReplicatedStorage").Events.Trail;
                        Target:FireServer(userdata_1, userdata_2, table_1, userdata_3, string_1, userdata_4);
                        Client.Modules.CretTrail(userdata_1, userdata_2, table_1, userdata_3, string_1, userdata_4,game.Players.LocalPlayer.Name)
                    end 
                end)
            end
        end)
        
        spawn(function()
            while true do
                wait()
                if Client.Toggles.BHop == true then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
                if Client.Toggles.JumpPower == true then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Client.Values.JumpPower
                end
                if Client.Toggles.InstantRespawn == true then
                    if not game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cam") then
                        if game.Players.LocalPlayer.PlayerGui.Menew.Enabled == false then
                            game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
                            wait(0.5)
                        end
                    end
                end
            end
        end)
        
        function RandomPlr()
            tempPlrs = {}
            for i,v in pairs(game.Players:GetPlayers()) do
                if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Spawned") then
                    table.insert(tempPlrs,v)
                end
            end
            return tempPlrs[math.random(1,#tempPlrs)]    
        end
        function SwitchToKnife()
            local N = game:GetService("VirtualInputManager")
            N:SendKeyEvent(true, 51, false, game)
            N:SendKeyEvent(false, 51, false, game)	
        end
        
        function KnifeKill()
            OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local Crit = math.random() > .6 and true or false;
            Target = RandomPlr()
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.Character.Head.CFrame * CFrame.new(0,2,3))
            SwitchToKnife()
            wait(.2)
            for i =1,20 do
                SwitchToKnife()
                wait()
                local Gun = game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value)
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.Character.Head.CFrame * CFrame.new(0,2,3))
                local Distance = (game.Players.LocalPlayer.Character.Head.Position - Target.Character.Head.Position).magnitude 
                game.ReplicatedStorage.Events.HitPart:FireServer(Target.Character.Head, -- Hit Part
                Target.Character.Head.Position + Vector3.new(math.random(), math.random(), math.random()), -- Hit Position
                Gun.Name, 
                Crit and 2 or 1, 
                Distance,
                true, 
                Crit, 
                false, 
                1, 
                false, 
                Gun.FireRate.Value,
                Gun.ReloadTime.Value,
                Gun.Ammo.Value,
                Gun.StoredAmmo.Value,
                Gun.Bullets.Value,
                Gun.EquipTime.Value,
                Gun.RecoilControl.Value,
                Gun.Auto.Value,
                Gun['Speed%'].Value,
                game.ReplicatedStorage.wkspc.DistributedTime.Value);
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
        end
        function thirdSlot()
            game.Players.LocalPlayer.Name = "Castlers"
            game.Players.LocalPlayer.DisplayName = "Castlers"
            game.Players.LocalPlayer.QueuePoints.Name = "IsAdmin"
            game.ReplicatedStorage.Events.LoadCharacter:FireServer()
            game.ReplicatedStorage.Randomizer.Value= true
            
            game.ReplicatedStorage.Randomizer.Value= true
            
            for _,v in pairs(game.ReplicatedStorage.Levels:GetChildren())do
                    v.Value="Musket"
                end
                game.ReplicatedStorage.Events.LoadCharacter:FireServer()
                
                local mt = getrawmetatable(game)
            pcall(function()
                make_writeable(mt)
            end)
            pcall(function()
                setreadonly(mt, false)
            end)
            local namecall=mt.__namecall
            
            mt.__namecall=newcclosure(function(self,...)
                local args={...}
                local func=args[#args]
                if tostring(self) == "HitPart" then
                    local guntoget = game.Players.LocalPlayer.Status.Level
                    local gun = game.ReplicatedStorage.Levels[guntoget.Value].Value
                    local wep = game.ReplicatedStorage.Weapons[gun]
                    local DMG
                    if wep.Name == "Laser Rifle" or wep.Name == "Pulse Laser" then
                        DMG = (wep.DMG.Value/36)*10
                    else
                        DMG = (wep.DMG.Value/36)*2
                    end
            
                if game.Players.LocalPlayer.Status.Level.Value ~= 32 then
                    local argm = {
                            [1] = args[1],
                            [2] = wep,
                            [3] = DMG,
                        [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
                        }
                    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
                else
                    local argm = {
                            [1] = args[1],
                            [2] = game.ReplicatedStorage.Weapons["Golden Knife"],
                            [3] = 99/36,
                        [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
                        }
                    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
                    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
                    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
                end
                end
                return namecall(self,...)
            end)
        end
function Darkheart()
            game.ReplicatedStorage.Randomizer.Value= true

for _,v in pairs(game.ReplicatedStorage.Levels:GetChildren())do
		v.Value="Darkheart"
	end
	game.ReplicatedStorage.Events.LoadCharacter:FireServer()
	
	local mt = getrawmetatable(game)
pcall(function()
    make_writeable(mt)
end)
pcall(function()
    setreadonly(mt, false)
end)
local namecall=mt.__namecall

mt.__namecall=newcclosure(function(self,...)
    local args={...}
    local func=args[#args]
    if tostring(self) == "HitPart" then
        local guntoget = game.Players.LocalPlayer.Status.Level
        local gun = game.ReplicatedStorage.Levels[guntoget.Value].Value
        local wep = game.ReplicatedStorage.Weapons[gun]
        local DMG
        if wep.Name == "Laser Rifle" or wep.Name == "Pulse Laser" then
            DMG = (wep.DMG.Value/36)*10
        else
            DMG = (wep.DMG.Value/36)*2
        end

	if game.Players.LocalPlayer.Status.Level.Value ~= 32 then
	    local argm = {
                [1] = args[1],
                [2] = wep,
                [3] = DMG,
	        [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
            }
	    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
	else
	    local argm = {
                [1] = args[1],
                [2] = game.ReplicatedStorage.Weapons["Golden Knife"],
                [3] = 99/36,
	        [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
            }
	    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
	    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
	    game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
	end
    end
    return namecall(self,...)
end)
end

function Venomshank()
    game.ReplicatedStorage.Randomizer.Value= true

for _,v in pairs(game.ReplicatedStorage.Levels:GetChildren())do
v.Value="Venomshank"
end
game.ReplicatedStorage.Events.LoadCharacter:FireServer()

local mt = getrawmetatable(game)
pcall(function()
make_writeable(mt)
end)
pcall(function()
setreadonly(mt, false)
end)
local namecall=mt.__namecall

mt.__namecall=newcclosure(function(self,...)
local args={...}
local func=args[#args]
if tostring(self) == "HitPart" then
local guntoget = game.Players.LocalPlayer.Status.Level
local gun = game.ReplicatedStorage.Levels[guntoget.Value].Value
local wep = game.ReplicatedStorage.Weapons[gun]
local DMG
if wep.Name == "Laser Rifle" or wep.Name == "Pulse Laser" then
    DMG = (wep.DMG.Value/36)*10
else
    DMG = (wep.DMG.Value/36)*2
end

if game.Players.LocalPlayer.Status.Level.Value ~= 32 then
local argm = {
        [1] = args[1],
        [2] = wep,
        [3] = DMG,
    [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
    }
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
else
local argm = {
        [1] = args[1],
        [2] = game.ReplicatedStorage.Weapons["Golden Knife"],
        [3] = 99/36,
    [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
    }
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
end
end
return namecall(self,...)
end)
end

function Firebrand()
    game.ReplicatedStorage.Randomizer.Value= true

for _,v in pairs(game.ReplicatedStorage.Levels:GetChildren())do
v.Value="Firebrand"
end
game.ReplicatedStorage.Events.LoadCharacter:FireServer()

local mt = getrawmetatable(game)
pcall(function()
make_writeable(mt)
end)
pcall(function()
setreadonly(mt, false)
end)
local namecall=mt.__namecall

mt.__namecall=newcclosure(function(self,...)
local args={...}
local func=args[#args]
if tostring(self) == "HitPart" then
local guntoget = game.Players.LocalPlayer.Status.Level
local gun = game.ReplicatedStorage.Levels[guntoget.Value].Value
local wep = game.ReplicatedStorage.Weapons[gun]
local DMG
if wep.Name == "Laser Rifle" or wep.Name == "Pulse Laser" then
    DMG = (wep.DMG.Value/36)*10
else
    DMG = (wep.DMG.Value/36)*2
end

if game.Players.LocalPlayer.Status.Level.Value ~= 32 then
local argm = {
        [1] = args[1],
        [2] = wep,
        [3] = DMG,
    [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
    }
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
else
local argm = {
        [1] = args[1],
        [2] = game.ReplicatedStorage.Weapons["Golden Knife"],
        [3] = 99/36,
    [4] = Vector3.new(args[1].Position.X, args[1].Position.Y, args[1].Position.Z)
    }
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(argm))
end
end
return namecall(self,...)
end)
end
function Time()
    game.ReplicatedStorage.wkspc.TimeScale.Value = Client.Values.Time
end
function Gravity()
    game.ReplicatedStorage.CurrentGrav.Value = Client.Values.Gravity
end
wait(1)
print(" ")
print("                   ----------------------Loaded Main Functions----------------")
print(" ")
wait(1)
        --UI
        CombatW:Keybind(
            "Kill All",
            Enum.KeyCode.E,
            function()
                KillAll()
            end
        )
        CombatW:Keybind(
            "Knife Kill",
            Enum.KeyCode.T,
            function()
                KnifeKill()
            end
        )
        
    
        CombatW:Toggle('Aimbot',function(state)
            Client.Toggles.SilentAim = state
        end)
    
        CombatW:Toggle('Silent Aim',function(state)
            Client.Toggles.SilentAim = state
        end)
        CombatW:Dropdown('Aim Part',{'Head','LowerTorso','Random'},function(Selected)
            Client.Values.AimPart = Selected
        end)
        CombatW:Toggle('WallBang',function(state)
            Client.Toggles.WallBang = state
        end)
        CombatW:Toggle('Draw FOV',function(state)
            Client.Toggles.FOV = state
        end)
        CombatW:Slider('FOV',10,750,function(num)
            Client.Values.FOV = num
        end)
    
        GunModsW:Toggle('FireRate',function(state)
            Client.Toggles.FireRate = state
        end)
        GunModsW:Toggle('No Recoil',function(state)
            Client.Toggles.NoRecoil = state
        end)
        GunModsW:Toggle('No Spread',function(state)
            Client.Toggles.NoSpread = state
        end)
        GunModsW:Toggle('Always Auto',function(state)
            Client.Toggles.AlwaysAuto = state
        end)
        GunModsW:Toggle('Inf Ammo',function(state)
            Client.Toggles.InfAmmo = state
        end)
        
        oldWalk = Client.Modules.ClientEnvoirment.speedupdate
        Client.Modules.ClientEnvoirment.speedupdate = function(...)
            if Client.Toggles.Walkspeed == true then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Client.Values.WalkSpeed
                return nil
            end
            if Client.Toggles.JumpPower == true then
                return nil
            end
            return oldWalk(...)
        end
        Client.Values.WalkSpeed = 16
        
        PlayerW:Toggle('Chat Spam',function(state)
            Client.Toggles.SpamChat = state
        end)
        
        PlayerW:Dropdown('Select Spam',{'Universal Hub Winning','gg/9PSgMszAem'},function(Selected)
            Client.Values.ChatMsg = Selected
        end)
    
        PlayerW:Toggle('Instant Respawn',function(state)
            Client.Toggles.InstantRespawn = state
        end)
    
        PlayerW:Toggle('Infinite Jump', function(state)
            Client.Toggles.InfJump = state
        end)
        
        PlayerW:Toggle('Bunny Hop',function(state)
            Client.Toggles.BHop = state
        end)
    
        PlayerW:Button('Join Blue Team',function()
            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TBC")
        end)

        PlayerW:Button('Join Red Team',function()
            game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer("TRC")
        end)

        PlayerW:Toggle('Toggle Walk Speed',function(state)
            if state == true then
                Client.Toggles.Walkspeed = true
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
                Client.Toggles.Walkspeed = false
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
            end
        end)
        PlayerW:Slider('Walk Speed',10,300,function(num)
            if Client.Toggles.Walkspeed == true then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num
                Client.Values.WalkSpeed = num
            end
        end)
        
        PlayerW:Toggle('Toggle Jump Power',function(state)
            if state == true then
                Client.Toggles.JumpPower = true
            else
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
                Client.Toggles.JumpPower = false
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
                wait()
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
        PlayerW:Slider('Jump Power',40,500,function(num)
            if Client.Toggles.JumpPower == true then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = num
                Client.Values.JumpPower = num
            end
        end)

        game:GetService("UserInputService").JumpRequest:connect(function()
            if Client.Toggles.InfJump == true then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)



        spawn(function()
            while true do
                wait(.01)
                if Client.Toggles.SpamChat == true then
                    local v1 = Client.Values.ChatMsg
                    local v2 = false
                    local v4 = true
                    local v5 = true
                    local rem = game:GetService("ReplicatedStorage").Events.PlayerChatted
                    rem:FireServer(v1, v2, v4, v5)
                    wait(.1)
                end
            end
        end)

        

        ServerW:Toggle('Fe Tracers',function(state)
            Client.Toggles.Trac = state
        end)
        ServerW:Toggle('Fe Laser Sight',function(state)
            Client.Toggles.Sight = state
        end)
        ServerW:Button('Add a third slot',function ()
            thirdSlot()
        end)
        ServerW:Button('Get Darkheart',function ()
            Darkheart()
        end)
        ServerW:Button('Get Firebrand',function ()
            Firebrand()
        end)
        ServerW:Button('Get Venomshank',function ()
            Venomshank()
        end)




        FunW:Textbox('Set Gravity',true,function(Text)
            Client.Values.Gravity = Text
            Gravity()
        end)
        FunW:Textbox('Set Time',true,function(Text)
            Client.Values.Time = Text
            Time()
        end)


        wait(1)
        print(" ")
        print("                   ----------------------------Loaded UI----------------------")
        print(" ")
    wait(1)
        local getname = function(str)
            for i,v in next, game:GetService("Players"):GetChildren() do
                if string.find(string.lower(v.Name), string.lower(str)) then
                    return v.Name
                end
            end
        end
        function FFB(part)
            for i,v in pairs(part:GetDescendants()) do 
                game:GetService("ReplicatedStorage").Events.Whizz:FireServer(v)
            end
        end
        
        
        local Config = {
            Visuals = {
                BoxEsp = false,
                TracerEsp = false,
                TracersOrigin = "Top", 
                NameEsp = false,
                DistanceEsp = false,
                SkeletonEsp = false,
                EnemyColor = Color3.fromRGB(255, 0, 0),
                TeamColor = Color3.fromRGB(0, 255, 0),
                MurdererColor = Color3.fromRGB(255, 0, 0)
            }
        }
        
        local Funcs = {}
        function Funcs:IsAlive(player)
            if player and player.Character and player.Character:FindFirstChild("Head") and
                    workspace:FindFirstChild(player.Character.Name)
             then
                return true
            end
        end
        
        function Funcs:Round(number)
            return math.floor(tonumber(number) + 0.5)
        end
        
        function Funcs:DrawSquare()
            local Box = Drawing.new("Square")
            Box.Color = Color3.fromRGB(190, 190, 0)
            Box.Thickness = 0.5
            Box.Filled = false
            Box.Transparency = 1
            return Box
        end
        
        function Funcs:DrawLine()
            local line = Drawing.new("Line")
            line.Color = Color3.new(190, 190, 0)
            line.Thickness = 0.5
            return line
        end
        
        function Funcs:DrawText()
            local text = Drawing.new("Text")
            text.Color = Color3.fromRGB(190, 190, 0)
            text.Size = 20
            text.Outline = true
            text.Center = true
            return text
        end
        
        local Services =
            setmetatable(
            {
                LocalPlayer = game:GetService("Players").LocalPlayer,
                Camera = workspace.CurrentCamera
            },
            {
                __index = function(self, idx)
                    return rawget(self, idx) or game:GetService(idx)
                end
            }
        )
        
        function Funcs:AddEsp(player)
            local Box = Funcs:DrawSquare()
            local Tracer = Funcs:DrawLine()
            local Name = Funcs:DrawText()
            local Distance = Funcs:DrawText()
            local SnapLines = Funcs:DrawLine()
            local HeadLowerTorso = Funcs:DrawLine()
            local NeckLeftUpper = Funcs:DrawLine()
            local LeftUpperLeftLower = Funcs:DrawLine()
            local NeckRightUpper = Funcs:DrawLine()
            local RightUpperLeftLower = Funcs:DrawLine()
            local LowerTorsoLeftUpper = Funcs:DrawLine()
            local LeftLowerLeftUpper = Funcs:DrawLine()
            local LowerTorsoRightUpper = Funcs:DrawLine()
            local RightLowerRightUpper = Funcs:DrawLine()
            Services.RunService.Stepped:Connect(
                function()
                    if Funcs:IsAlive(player) and player.Character:FindFirstChild("HumanoidRootPart") then
                        local RootPosition, OnScreen =
                            Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
                        local HeadPosition =
                            Services.Camera:WorldToViewportPoint(player.Character.Head.Position + Vector3.new(0, 0.5, 0))
                        local LegPosition =
                            Services.Camera:WorldToViewportPoint(
                            player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
                        )
                        if Config.Visuals.BoxEsp then
                            Box.Visible = OnScreen
                            Box.Size = Vector2.new((2350 / RootPosition.Z) + 2.5, HeadPosition.Y - LegPosition.Y)
                            Box.Position = Vector2.new((RootPosition.X - Box.Size.X / 2) - 1, RootPosition.Y - Box.Size.Y / 2)
                        else
                            Box.Visible = false
                        end
                        if Config.Visuals.TracerEsp then
                            Tracer.Visible = OnScreen
                            if Config.Visuals.TracersOrigin == "Top" then
                                Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 0)
                                Tracer.From =
                                    Vector2.new(
                                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                                    RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2
                                )
                            elseif Config.Visuals.TracersOrigin == "Middle" then
                                Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, Services.Camera.ViewportSize.Y / 2)
                                Tracer.From =
                                    Vector2.new(
                                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                                    (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                        ((HeadPosition.Y - LegPosition.Y) / 2)
                                )
                            elseif Config.Visuals.TracersOrigin == "Bottom" then
                                Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 1000)
                                Tracer.From =
                                    Vector2.new(
                                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                                    RootPosition.Y - (HeadPosition.Y - LegPosition.Y) / 2
                                )
                            elseif Config.Visuals.TracersOrigin == "Mouse" then
                                Tracer.To = game:GetService("UserInputService"):GetMouseLocation()
                                Tracer.From =
                                    Vector2.new(
                                    Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
                                    (RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
                                        ((HeadPosition.Y - LegPosition.Y) / 2)
                                )
                            end
                        else
                            Tracer.Visible = false
                        end
                        if Config.Visuals.NameEsp then
                            Name.Visible = OnScreen
                            Name.Position =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 40
                            )
                            Name.Text = "[ " .. player.Name .. " ]"
                        else
                            Name.Visible = false
                        end
                        if Config.Visuals.DistanceEsp and player.Character:FindFirstChild("Head") then
                            Distance.Visible = OnScreen
                            Distance.Position =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 25
                            )
                            Distance.Text =
                                "[ " ..
                                Funcs:Round(
                                    (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                        player.Character.Head.Position).Magnitude
                                ) ..
                                    " Studs ]"
                        else
                            Distance.Visible = false
                        end
                        if Config.Visuals.SkeletonEsp then
                            HeadLowerTorso.Visible = OnScreen
                            HeadLowerTorso.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y
                            )
                            HeadLowerTorso.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                            )
                            NeckLeftUpper.Visible = OnScreen
                            NeckLeftUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                                    ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                        3)
                            )
                            NeckLeftUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                            )
                            LeftUpperLeftLower.Visible = OnScreen
                            LeftUpperLeftLower.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).Y
                            )
                            LeftUpperLeftLower.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
                            )
                            NeckRightUpper.Visible = OnScreen
                            NeckRightUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
                                    ((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
                                        Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
                                        3)
                            )
                            NeckRightUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                            )
                            RightUpperLeftLower.Visible = OnScreen
                            RightUpperLeftLower.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).Y
                            )
                            RightUpperLeftLower.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
                            )
                            LowerTorsoLeftUpper.Visible = OnScreen
                            LowerTorsoLeftUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                            )
                            LowerTorsoLeftUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                            )
                            LeftLowerLeftUpper.Visible = OnScreen
                            LeftLowerLeftUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).Y
                            )
                            LeftLowerLeftUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
                            )
                            LowerTorsoRightUpper.Visible = OnScreen
                            LowerTorsoRightUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).Y
                            )
                            LowerTorsoRightUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                            )
                            RightLowerRightUpper.Visible = OnScreen
                            RightLowerRightUpper.From =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
                            )
                            RightLowerRightUpper.To =
                                Vector2.new(
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
                                Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
                            )
                        else
                            HeadLowerTorso.Visible = false
                            NeckLeftUpper.Visible = false
                            LeftUpperLeftLower.Visible = false
                            NeckRightUpper.Visible = false
                            RightUpperLeftLower.Visible = false
                            LowerTorsoLeftUpper.Visible = false
                            LeftLowerLeftUpper.Visible = false
                            LowerTorsoRightUpper.Visible = false
                            RightLowerRightUpper.Visible = false
                        end
                        if game.Players.LocalPlayer.TeamColor ~= player.TeamColor then
                            Box.Color = Config.Visuals.EnemyColor
                            Tracer.Color = Config.Visuals.EnemyColor
                            Name.Color = Config.Visuals.EnemyColor
                            Distance.Color = Config.Visuals.EnemyColor
                            HeadLowerTorso.Color = Config.Visuals.EnemyColor
                            NeckLeftUpper.Color = Config.Visuals.EnemyColor
                            LeftUpperLeftLower.Color = Config.Visuals.EnemyColor
                            NeckRightUpper.Color = Config.Visuals.EnemyColor
                            RightUpperLeftLower.Color = Config.Visuals.EnemyColor
                            LowerTorsoLeftUpper.Color = Config.Visuals.EnemyColor
                            LeftLowerLeftUpper.Color = Config.Visuals.EnemyColor
                            LowerTorsoRightUpper.Color = Config.Visuals.EnemyColor
                            RightLowerRightUpper.Color = Config.Visuals.EnemyColor
                        else
                            Box.Color = Config.Visuals.TeamColor
                            Tracer.Color = Config.Visuals.TeamColor
                            Name.Color = Config.Visuals.TeamColor
                            Distance.Color = Config.Visuals.TeamColor
                            HeadLowerTorso.Color = Config.Visuals.TeamColor
                            NeckLeftUpper.Color = Config.Visuals.TeamColor
                            LeftUpperLeftLower.Color = Config.Visuals.TeamColor
                            NeckRightUpper.Color = Config.Visuals.TeamColor
                            RightUpperLeftLower.Color = Config.Visuals.TeamColor
                            LowerTorsoLeftUpper.Color = Config.Visuals.TeamColor
                            LeftLowerLeftUpper.Color = Config.Visuals.TeamColor
                            LowerTorsoRightUpper.Color = Config.Visuals.TeamColor
                            RightLowerRightUpper.Color = Config.Visuals.TeamColor
                        end
                    else
                        Box.Visible = false
                        Tracer.Visible = false
                        Name.Visible = false
                        Distance.Visible = false
                        HeadLowerTorso.Visible = false
                        NeckLeftUpper.Visible = false
                        LeftUpperLeftLower.Visible = false
                        NeckRightUpper.Visible = false
                        RightUpperLeftLower.Visible = false
                        LowerTorsoLeftUpper.Visible = false
                        LeftLowerLeftUpper.Visible = false
                        LowerTorsoRightUpper.Visible = false
                        RightLowerRightUpper.Visible = false
                    end
                end
            )
        end
        
        for i, v in pairs(Services.Players:GetPlayers()) do
            if v ~= Services.LocalPlayer then
                Funcs:AddEsp(v)
            end
        end
        
        Services.Players.PlayerAdded:Connect(
            function(player)
                if v ~= Services.LocalPlayer then
                    Funcs:AddEsp(player)
                end
            end
        )
        wait(1)
    print(" ")
    print("                   ---------------------------Loaded ESP----------------------")
    print(" ")
    wait(1)


        VisualsW:Toggle('Boxs',function(state)
            Config.Visuals.BoxEsp = state
        end)
        VisualsW:Toggle('Tracers',function(state)
            Config.Visuals.TracerEsp = state
        end)
        VisualsW:Dropdown(
          "Tracers Origin", {'Top','Middle','Bottom','Mouse'}, function(selected)
            Config.Visuals.TracersOrigin = selected
        end)
        VisualsW:Toggle('Names',function(state)
            Config.Visuals.NameEsp = state
        end)
        VisualsW:Toggle('Distance',function(state)
            Config.Visuals.DistanceEsp = state
        end)
        VisualsW:Toggle('Skeletons',function(state)
            Config.Visuals.SkeletonEsp = state
        end)
        VisualsW:Colorpicker(
            "Team Color",
            Color3.fromRGB(0, 255, 0),
            function(Color)
                Config.Visuals.TeamColor = Color
            end
        )
        VisualsW:Colorpicker(
            "Enemy Color",
            Color3.fromRGB(255, 0, 0),
            function(Color)
                Config.Visuals.EnemyColor = Color
            end
        )
        
        --Credits
    
        MiscW:Label("UI Design By Dark Hub ❤️")
      
        MiscW:Label("Ui Lib Leaked By Insanev")
    
        MiscW:Label("Check Out Dark Hub If You Haven't Already")
    
        MiscW:Label("It's One Of The Greatest Script Hubs Currently Available")
    
        MiscW:Label("Universal Exploit Hub Devs: Superscripted#0201")
        
        MiscW:Label("Credits to Ozara#0111 for the auto kill")

    
    
        Misc2W:Button("Copy Discord Invite",function()
            setclipboard("https://discord.gg/bJ9y4trTfm")
        end)
    
        local toggleGui = true
        Misc2W:Keybind(
            "Toggle UI",
            Enum.KeyCode.X,
            function()
                if toggleGui == true then 
                    toggleGui = false
                    wait(0.5)
                    game.CoreGui.DarkHubLib.MainFrame.Visible = toggleGui
                else
                    toggleGui = true
                    wait(0.5)
                    game.CoreGui.DarkHubLib.MainFrame.Visible = toggleGui
                end
                
            end
        )
    
        --Farming Framework + UI
        
        function fireButton1(button)
            for i,signal in next, getconnections(button.MouseButton1Click) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.MouseButton1Down) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.Activated) do
                signal:Fire()
            end
        end
         
        function fireButton2(button)
            for i,signal in next, getconnections(button.MouseButton2Click) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.MouseButton2Down) do
                signal:Fire()
            end
            for i,signal in next, getconnections(button.Activated) do
                signal:Fire()
            end
        end
        
        function CheckStateUI()
            if game.Players.LocalPlayer.PlayerGui.Menew.Enabled == true then
                fireButton1(game.Players.LocalPlayer.PlayerGui.Menew.Main.Play)
                wait(0.5)
                game.Players.LocalPlayer.PlayerGui.Menew.Main.Visible = false
                for i, v in pairs(game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons:GetChildren()) do
                    if not v:FindFirstChild("lock").Visible == true then
                        fireButton1(v)
                        wait(2)
                        break
                    end
                end
            end
        end
        Allowed = {
            'RobloxGui',
            'CoreScript',
            'TopBar',
            'CoreScriptLocalization',
            'RobloxPromptGui',
            'RobloxLoadingGui',
            'PurchasePromptApp',
            'RobloxNetworkPauseNotification',
            'DarkHub',
            'DarkHubLib'
        }
        wait(2)
        print("                                        FINISHED LOADING GUI                  ")
        print(" ")
        print("                   -----------------------------------------------------------")
        print(" ")
end