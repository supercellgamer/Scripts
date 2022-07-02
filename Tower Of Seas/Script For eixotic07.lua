

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/supercellgamer/Main/main/Veynx%20UI%20Library.lua"))()
local venyx = library.new("Zen_Hub_Unofficial_Edition_Made_by_Superscripted", 5013109572)
 
-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
 
-- first page
local A = venyx:addPage("Autofarming", 5012544693)
local a1 = A:addSection("Autobuy")
local a2 = A:addSection("Autofarm Cash")
local settings = A:addSection("Settings")

local hatCount = "1"
local wingCount = "1"
local autobuyHat = false
local autobuyWing = false
local autofarmGold = false
a1:addTextbox("Buy Hat Count", "1", function(value)
hatCount = value
end)
a1:addTextbox("Buy Wing Count", "1", function(value)
wingCount = value
end)


a1:addToggle("Autobuy Hats", nil, function(value)
    autobuyHat = value
    while autobuyHat == true do
        local args = {
            [1] = workspace.HatShop.NormalCrate,
            [2] = hatCount
        }
        game:GetService("ReplicatedStorage").BuyEgg:InvokeServer(unpack(args))
        wait(0.3)
    end
end)
a1:addToggle("Autobuy Wings", nil, function(value)
    autobuyWing = value
    while autobuyWing == true do
        local args = {
            [1] = workspace.HatShop.NormalCrate,
            [2] = wingCount
        }
        game:GetService("ReplicatedStorage").BuyEgg2:InvokeServer(unpack(args))
        wait(0.3)
    end
end)

a2:addToggle("Autofarm Gold", nil, function(value)
    autofarmGold = value
    while autofarmGold == true do 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-552.064148, 571.074341, 735.672058)
    wait(0.3)
    end
end)



settings:addKeybind("Toggle Keybind", Enum.KeyCode.RightShift, function()
    venyx:toggle()
end)
settings:addButton("Destroy GUI", function()
    game.CoreGui.Zen_Hub_Unofficial_Edition_Made_by_Superscripted:destroy()
end)


local B = venyx:addPage("Special Items")
local b1 = B:addSection("Teleports")

b1:addButton("Get Purple Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.104073, 78.6145706, -625.952026)
end)
b1:addButton("Get Blue Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1041.9845, 93.2694397, -96.3294601)
end)
b1:addButton("Get Green Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(536.798462, 154.7939, 1394.60193)
end)
b1:addButton("Get Black Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1270.22083, 31.3106575, -495.097626)
end)
b1:addButton("Get White Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-828.075989, 52.2069092, 1035.99646)
end)
b1:addButton("Get Rainbow Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-158.74614, -251.12825, 185.046494)
end)
b1:addButton("Get White Squid Gear", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-828.075989, 52.2069092, 1035.99646)
end)

-- second page
local theme = venyx:addPage("GUI Settings", 5012544693)
local colors = theme:addSection("Colors")

 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom