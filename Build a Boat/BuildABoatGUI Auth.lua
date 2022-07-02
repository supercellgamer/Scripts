print('-------Verification Start-------')
print('-------Checking Whitelist--------')
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
getgenv().startCode = false

if getgenv().minecrafter_680 == true then
    print('Welcome owner start your scripting')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

 if getgenv().gezvEStUmZKqEIZOnxvg == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

 if getgenv().zMXzxJEZcTpThijsaWdl == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().pvqAmWCJqdlTASgcbDva == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().nZFUkbrvOWCjROSqvDgp == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().IJHMFeYUxfGLYLaGCXQy == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().WoVnyVRbqYCLTssiRCEF == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().wMYVfqWPQcUWCGeyIZrx == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().BJtLVPTNFjEvcOBDDmPS == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().GqOJhmsCNbrkwoecdedf == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

if getgenv().bWWCswROcgVJxZgfjKPX == true then
    print('Whitelist complete thanks for using my script :)')
    print('-------Authorization Complete--------')

    local c = library:CreateWindow("Home")
    local q = c:CreateFolder("Script Start")
    q:Toggle("startCode",function(bool)
       getgenv().startCode = bool
      print('Script is', bool)
      if bool then
        scriptBegin()
      end
     end)
    end

    if getgenv().minecrafter_680 == true then
        print('Authorized')
    elseif getgenv().gezvEStUmZKqEIZOnxvg == true then
        print('Authorized')
    elseif getgenv().zMXzxJEZcTpThijsaWdl == true then
        print('Authorized')
    elseif getgenv().pvqAmWCJqdlTASgcbDva == true then
        print('Authorized')
    elseif getgenv().nZFUkbrvOWCjROSqvDgp == true then
        print('Authorized')
    elseif getgenv().IJHMFeYUxfGLYLaGCXQy == true then
        print('Authorized')
    elseif getgenv().WoVnyVRbqYCLTssiRCEF == true then
        print('Authorized')
    elseif getgenv().wMYVfqWPQcUWCGeyIZrx == true then
        print('Authorized')
    elseif getgenv().BJtLVPTNFjEvcOBDDmPS == true then
        print('Authorized')
    elseif getgenv().GqOJhmsCNbrkwoecdedf == true then
        print('Authorized')
    elseif getgenv().bWWCswROcgVJxZgfjKPX == true then
        print('Authorized')
else
    print('Error, You are not whitelisted')
    print('-------Error Authorization Failed-------')
end
print('-------Verification End-------')

 function scriptBegin()
    if getgenv().startCode == true then
    local w = library:CreateWindow("Home")
    local b = w:CreateFolder("Farm")
    b:DestroyGui()
    b:Toggle("autoGold",function(bool)
        getgenv().goldFarm = bool
        print('Gold autofarm is ', bool)
           if bool then
              autoGold()
           end
        end)
    end
 end
    getgenv().goldFarm = false

function autoGold()
        while getgenv().goldFarm == true do
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.364159, 120, 1361.16821)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.364159, 120, 1361.16821)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.364159, 120, 1361.16821)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.364159, 120, 1361.16821)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.364159, 120, 1361.16821)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7355671, 120, 2129.96313)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7355671, 120, 2129.96313)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7355671, 120, 2129.96313)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7355671, 120, 2129.96313)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7355671, 120, 2129.96313)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 2911.14404)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 2911.14404)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 2911.14404)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 2911.14404)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 2911.14404)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 3672.7981)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 3672.7981)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 3672.7981)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 3672.7981)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 3672.7981)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 4453.40332)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 4453.40332)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 4453.40332)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 4453.40332)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 4453.40332)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5212.01807)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5212.01807)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5212.01807)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5212.01807)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5212.01807)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5986.85205)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5986.85205)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5986.85205)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5986.85205)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 5986.85205)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 6754.0835)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 6754.0835)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 6754.0835)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 6754.0835)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 6754.0835)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 7524.37207)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 7524.37207)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 7524.37207)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 7524.37207)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50, 120, 7524.37207)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5426254, 120, 8293.13574)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5426254, 120, 8293.13574)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5426254, 120, 8293.13574)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5426254, 120, 8293.13574)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5426254, 120, 8293.13574)
        wait(0.5)
    
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.848011, -356.102051, 9497.2793)
        wait(19)
        game.workspace.ClaimRiverResultsGold:FireServer()
        wait(1)
        end
    end
