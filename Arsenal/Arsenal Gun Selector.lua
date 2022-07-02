-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local RBXsploiter = Instance.new("TextLabel")
local Loading = Instance.new("TextLabel")
local Xen = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame.Position = UDim2.new(0.290701389, 0, 0.36855036, 0)
Frame.Size = UDim2.new(0, 573, 0, 214)
Frame.Active = true
Frame.Visible = true

RBXsploiter.Name = "RBXsploiter"
RBXsploiter.Parent = Frame
RBXsploiter.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
RBXsploiter.Position = UDim2.new(0.02443281, 0, 0.0607476644, 0)
RBXsploiter.Size = UDim2.new(0, 547, 0, 58)
RBXsploiter.Font = Enum.Font.SourceSans
RBXsploiter.Text = "Created by: RBXsploiter#6305"
RBXsploiter.TextColor3 = Color3.fromRGB(131, 131, 131)
RBXsploiter.TextScaled = true
RBXsploiter.TextSize = 14.000
RBXsploiter.TextWrapped = true

Loading.Name = "Loading"
Loading.Parent = Frame
Loading.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Loading.Position = UDim2.new(0.02443281, 0, 0.383177578, 0)
Loading.Size = UDim2.new(0, 547, 0, 50)
Loading.Font = Enum.Font.SourceSans
Loading.Text = "LOADING ..."
Loading.TextColor3 = Color3.fromRGB(222, 227, 225)
Loading.TextScaled = true
Loading.TextSize = 14.000
Loading.TextStrokeColor3 = Color3.fromRGB(167, 167, 167)
Loading.TextWrapped = true

Xen.Name = "Xen"
Xen.Parent = Frame
Xen.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Xen.Position = UDim2.new(0.02443281, 0, 0.667761683, 0)
Xen.Size = UDim2.new(0, 547, 0, 53)
Xen.Font = Enum.Font.SourceSans
Xen.Text = "Features by: Xen#5621"
Xen.TextColor3 = Color3.fromRGB(131, 131, 131)
Xen.TextScaled = true
Xen.TextSize = 14.000
Xen.TextWrapped = true

wait(5)
Frame.Active = false
Frame.Visible = false