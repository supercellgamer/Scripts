-- Variable
local players = workspace

-- ESP Holder
local Holder = game:GetService("CoreGui")Instance.new("Folder")
Holder.Name = "PlayerESP"


-- Create ESP
function create(trink)
    -- Chams
    local box = Instance.new("BoxHandleAdornment")
    box.Size = trink.Size
    box.Name = "Chams"
    box.Adornee = trink
    box.Color3 = trink.Color
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Transparency = .6
    box.Parent = Holder
    -- Board
    local name = Instance.new("BillboardGui")
    name.Parent = box
    name.Adornee = trink
    name.AlwaysOnTop = true
    name.ExtentsOffset = Vector3.new(0,1,0)
    name.Size = UDim2.new(0,5,0,5)
    name.StudsOffset = Vector3.new(0,3,0)
    name.Name = "Board"
    -- Frame
    local frame = Instance.new("Frame")
    frame.Parent = name
    frame.ZIndex = 10
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1,0,1,0)
    -- Text
    local text = Instance.new("TextLabel")
    text.Parent = frame
    text.Name = "Names"
    text.ZIndex = 10
    text.Text = trink.Parent.Name
    text.BackgroundTransparency = 1
    text.Position = UDim2.new(0, 0, 0, -45)
    text.Size = UDim2.new(1, 0, 10, 0)
    text.TextColor3 = trink.Color
    text.TextSize = 14
    text.TextStrokeTransparency = .5
end




-- Get Current Items
local plrs = players:GetChildren()
for i = 1, #plrs do local v = plrs[i]
    if v.Name == "R15Rig" then
        local test = v:FindFirstChild("Interact") or v:FindFirstChild("Handle") or v:FindFirstChild("Bottom")
    if typeof(test) == "Instance" then
        create(test)
    end
end
end