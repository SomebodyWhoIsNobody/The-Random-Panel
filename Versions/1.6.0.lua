local UI = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
local button = Instance.new("TextButton", UI)
local frame = Instance.new("Frame", UI)
button.Size = UDim2.new(0.031, 0, 0.055, 0)
button.Position = UDim2.new(0.969, 0, 0.472, 0)
local ButtonCorner = Instance.new("UICorner", button)
button.BackgroundColor3 = Color3.fromRGB(181, 255, 220)
button.Text = "Open/Close"
frame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
frame.Visible = false
frame.Size = UDim2.new(0, 387, 0, 335)
frame.Position = UDim2.new(0.358, 0, 0.281, 0)
frame.BorderSizePixel = 0
button.BorderSizePixel = 0
local FrameCorner = Instance.new("UICorner", frame)
local frame2 = Instance.new("Frame", frame)
frame2.Size = UDim2.new(1.075, 0, 0.122, 0)
frame2.Position = UDim2.new(-0.039, 0, 0, 0)
frame2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
frame2.BorderSizePixel = 0
local Frame2Corner = Instance.new("UICorner", frame2)
local Scroll = Instance.new("ScrollingFrame", frame)
Scroll.BackgroundTransparency = 1
Scroll.Position = UDim2.new(0.054, 0, 0.154, 0)
Scroll.Size = UDim2.new(0.946, 0, 0.845, 0)
hmm = true
local XRAYbutton = Instance.new("TextButton", Scroll)
XRAYbutton.Size = UDim2.new(0.47, 0, 0.036, 0)
local listLay = Instance.new("UIListLayout", Scroll)
XRAYbutton.Text = "X-Ray"
local XrayCorner = Instance.new("UICorner", XRAYbutton)
XRAYbutton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UIDragDetector", frame)
local title = Instance.new("TextLabel", frame2)
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(234, 234, 234)
title.Font = Enum.Font.Roboto
title.Text = "The Random Panel"

button.MouseButton1Click:Connect(function()
if hmm == true then
frame.Visible = true
hmm = false
else
frame.Visible = false
hmm = true
end
end)

XRAYbutton.MouseButton1Click:Connect(function()
local plrs = game:GetService("Players"):GetPlayers()
for _, i in pairs(plrs) do
local highlight = Instance.new("Highlight")
local Clone = highlight:Clone()
Clone.FillTransparency = 1
Clone.OutlineColor = Color3.fromRGB(217, 255, 208)
Clone.Parent = i.Character
Clone.Enabled = true
end
local head = Instance.new("Part", game.workspace)
local mesh = Instance.new("SpecialMesh", head)
head.Transparency = 1
mesh.Scale = Vector3.new(111.518, 111.518, 111.518)
mesh.MeshId = "rbxassetid://4125549274"
mesh.TextureId = "http://www.roblox.com/asset/?id=4125544592"
head.Size = Vector3.new(184.674, 275.338, 244.001)
head.Orientation = Vector3.new(-90, 0, 0)
head.Position = Vector3.new(-17.279, 235.734, -18.141)
head.Anchored = true
head.CastShadow = false
game:GetService("TweenService"):Create(head, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
while task.wait(0.2) do
head.CFrame = CFrame.lookAt(head.Position, game.Players.LocalPlayer.Character:WaitForChild("Head").Position)
end
end)

local NoClip = Instance.new("TextButton", Scroll)
NoClip.Size = UDim2.new(0.47, 0, 0.036, 0)
NoClip.Text = "No-Clip"
local NoclipCorner = Instance.new("UICorner", NoClip)
NoClip.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
NoClip.MouseButton1Click:Connect(function()
local NewPart = Instance.new("Part", game.Workspace)
NewPart.Size = Vector3.new(2000, 1, 2000)
local newPos = Vector3.new(0, 0, 0)
NewPart.Position = newPos
for _, i in game.Workspace:GetChildren() do
if i:IsA("BasePart") and not i:IsA("Terrain") then
i.CanCollide = false
NewPart.CanCollide = true
NewPart.Transparency = 1
end
if i:IsA("Folder") then
local folderChil = i:GetChildren()
for _, z in folderChil do
if z:IsA("BasePart") then
z.CanCollide = false
end
end
end
if i:IsA("Model") then
local ModelChil = i:GetChildren()
for _, x in ModelChil do
if x:IsA("BasePart") then
x.CanCollide = false
end
end
end
end
end)

local spawnButton = Instance.new("TextButton", Scroll)
spawnButton.Size = UDim2.new(0.47, 0, 0.036, 0)
spawnButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
local SpawnCorner = Instance.new("UICorner", spawnButton)
spawnButton.Text = "Spawn Random Cubes"
spawnButton.MouseButton1Click:Connect(function()
for i = 1, 50 do
local part = Instance.new("Part", game.workspace)
part.BrickColor = BrickColor.random()
local ra = math.random(0.2, 3)
part.Size = Vector3.new(ra, ra, ra)
part.Material = Enum.Material.Neon
part.Anchored = true
part.Position = Vector3.new(math.random(-500, 500), math.random(0, 50), math.random(-500, 500))
part.Name = "JKLHrkO$5neQ"
end
end)

local DelCubesButton = Instance.new("TextButton", Scroll)
DelCubesButton.Size = UDim2.new(0.47, 0, 0.036, 0)
DelCubesButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", DelCubesButton)
DelCubesButton.Text = "Delete Cubes"

DelCubesButton.MouseButton1Click:Connect(function()
for _, i in game.Workspace:GetChildren() do
if i:IsA("BasePart") and i.Name == "JKLHrkO$5neQ" and not i:IsA("Terrain") then
i:Destroy()
end
end
end)

local FlingButton = Instance.new("TextButton", Scroll)
FlingButton.Size = UDim2.new(0.47, 0, 0.036, 0)
FlingButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
local FlingCorner = Instance.new("UICorner", FlingButton)
FlingButton.Text = "Crazy Button"

FlingButton.MouseButton1Click:Connect(function()
local root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
bodyAngularVelocity.AngularVelocity = Vector3.new(0, 999999, 0)
bodyAngularVelocity.MaxTorque = Vector3.new(1, 1, 1) * math.huge
bodyAngularVelocity.P = 1250
bodyAngularVelocity.Parent = root
end)

local LookButton = Instance.new("TextButton", Scroll)
LookButton.Size = UDim2.new(0.47, 0, 0.036, 0)
LookButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
local LookCorner = Instance.new("UICorner", LookButton)
LookButton.Text = "LOOK AT ME (spam this button)"

LookButton.MouseButton1Click:Connect(function()
local function yay()
local head = Instance.new("Part", game.Workspace)
local mesh = Instance.new("SpecialMesh", head)
head.Transparency = 1
head.Name = "HqlTPsvf@"
mesh.Scale = Vector3.new(1, 1, 1)
mesh.MeshId = "rbxassetid://4125549274"
mesh.TextureId = "http://www.roblox.com/asset/?id=4125544592"
head.Size = Vector3.new(1.656, 2.469, 2.188)
head.Orientation = Vector3.new(0, 0, 0)
local headpos = game.Players.LocalPlayer.Character:WaitForChild("Head").Position + Vector3.new(math.random(-20, 20), math.random(0, 10), math.random(-20, 20))
head.Position = headpos
head.Anchored = true
game:GetService("TweenService"):Create(head, TweenInfo.new(0.3), {Transparency = 0}):Play()
while task.wait(0.25) do
head.CFrame = CFrame.lookAt(head.Position, game.Players.LocalPlayer.Character:WaitForChild("Head").Position)
end
end
while task.wait(2) do
yay()
end
end)

local DelButton = Instance.new("TextButton", Scroll)
DelButton.Size = UDim2.new(0.47, 0, 0.036, 0)
DelButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", DelButton)
DelButton.Text = "Delete heads"

DelButton.MouseButton1Click:Connect(function()
for _, i in game.Workspace:GetChildren() do
if i:IsA("BasePart") and i.Name == "HqlTPsvf@" and not i:IsA("Terrain") then
i:Destroy()
end
end
end)

local PathInput1 = Instance.new("TextBox", Scroll)
PathInput1.Size = UDim2.new(0.47, 0, 0.036, 0)
PathInput1.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", PathInput1)
PathInput1.Text = "type a num (this for path)"

local PathInput2 = Instance.new("TextBox", Scroll)
PathInput2.Size = UDim2.new(0.47, 0, 0.036, 0)
PathInput2.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", PathInput2)
PathInput2.Text = "type a num (this for path)"

local PathInput3 = Instance.new("TextBox", Scroll)
PathInput3.Size = UDim2.new(0.47, 0, 0.036, 0)
PathInput3.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", PathInput3)
PathInput3.Text = "type a num (this for path)"

local PathButton = Instance.new("TextButton", Scroll)
PathButton.Size = UDim2.new(0.47, 0, 0.036, 0)
PathButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", PathButton)
PathButton.Text = "Path maker"

PathButton.MouseButton1Click:Connect(function()
local path = Instance.new("Part", game.Workspace)
path.Anchored = true
path.Size = Vector3.new(15, 1, 90)
path.Transparency = 1
local pathpos = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - Vector3.new(0, 3.5, 0)
path.Position = pathpos
path.Orientation = Vector3.new(PathInput1.Text, PathInput2.Text, PathInput3.Text)
game:GetService("TweenService"):Create(path, TweenInfo.new(0.3), {Transparency = 0}):Play()
path.Name = "YTkbfLg$b"
end)

local PathDelButton = Instance.new("TextButton", Scroll)
PathDelButton.Size = UDim2.new(0.47, 0, 0.036, 0)
PathDelButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", PathDelButton)
PathDelButton.Text = "Delete paths"

PathDelButton.MouseButton1Click:Connect(function()
for _, i in game.Workspace:GetChildren() do
if i:IsA("BasePart") and i.Name == "YTkbfLg$b" and not i:IsA("Terrain") then
i:Destroy()
end
end
end)

local SpecButton = Instance.new("TextButton", Scroll)
SpecButton.Size = UDim2.new(0.47, 0, 0.036, 0)
SpecButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", SpecButton)
SpecButton.Text = "Spectate Random Person"

SpecButton.MouseButton1Click:Connect(function()
local u = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
game.Workspace.CurrentCamera.CameraSubject = u.Character
end)

local UnSpecButton = Instance.new("TextButton", Scroll)
UnSpecButton.Size = UDim2.new(0.47, 0, 0.036, 0)
UnSpecButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", UnSpecButton)
UnSpecButton.Text = "UnSpectate Button"

UnSpecButton.MouseButton1Click:Connect(function()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)

local FreezeButton = Instance.new("TextButton", Scroll)
FreezeButton.Size = UDim2.new(0.47, 0, 0.036, 0)
FreezeButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", FreezeButton)
FreezeButton.Text = "Freeze/UnFreeze"
local FreezeButtonIdk = true

FreezeButton.MouseButton1Click:Connect(function()
if FreezeButtonIdk == true then
for _, i in game.Players.LocalPlayer.Character:GetChildren() do
if i:IsA("BasePart") then
i.Anchored = true
end
end
FreezeButtonIdk = false
else
for _, i in game.Players.LocalPlayer.Character:GetChildren() do
if i:IsA("BasePart") then
i.Anchored = false
end
end
FreezeButtonIdk = true
end
end)

local keepWalk = false

local WalkButton = Instance.new("TextButton", Scroll)
WalkButton.Size = UDim2.new(0.47, 0, 0.036, 0)
WalkButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", WalkButton)
WalkButton.Text = "Random Walking (reset to stop)"

local StopWalkButton = Instance.new("TextButton", Scroll)
StopWalkButton.Size = UDim2.new(0.47, 0, 0.036, 0)
StopWalkButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", StopWalkButton)
StopWalkButton.Text = "Stop Randomly Walking!"

StopWalkButton.MouseButton1Click:Connect(function()
keepWalk = true
end)

WalkButton.MouseButton1Click:Connect(function()
local function Ahh()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):MoveTo(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(math.random(-10, 10), 0, math.random(-10, 10)))
end
local succ, err = pcall(function()
repeat
task.wait(4)
print("hi")
Ahh()
until keepWalk
end)
end)

local MusicInput = Instance.new("TextBox", Scroll)
MusicInput.Size = UDim2.new(0.47, 0, 0.036, 0)
MusicInput.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", MusicInput)
MusicInput.Text = "type MuicID"

local MusicButton = Instance.new("TextButton", Scroll)
MusicButton.Size = UDim2.new(0.47, 0, 0.036, 0)
MusicButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", MusicButton)
MusicButton.Text = "Play Music"

MusicButton.MouseButton1Click:Connect(function()
local sound = Instance.new("Sound", workspace)
sound.Looped = true
sound.SoundId = "rbxassetid://"..MusicInput.Text
local succ, err = pcall(function()
sound:Play()
end)
if not succ then
print(err)
end
end)

local InvertButton = Instance.new("TextButton", Scroll)
InvertButton.Size = UDim2.new(0.47, 0, 0.036, 0)
InvertButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", InvertButton)
InvertButton.Text = "Invert/UnInvert Screen"
local invert = true
local colcor = Instance.new("ColorCorrectionEffect", game.Lighting)

InvertButton.MouseButton1Click:Connect(function()
if invert == true then
colcor.Contrast = -2
invert = false
else
colcor.Contrast = 0
invert = true
end
end)

local SpinButton = Instance.new("TextButton", Scroll)
SpinButton.Size = UDim2.new(0.47, 0, 0.036, 0)
SpinButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", SpinButton)
SpinButton.Text = "Spin"
local spinny = Instance.new("BodyAngularVelocity", game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
spinny.AngularVelocity = Vector3.new(0, 0, 0)
spinny.MaxTorque = Vector3.new(0, 0, 0)

SpinButton.MouseButton1Click:Connect(function()
spinny.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
spinny.AngularVelocity += Vector3.new(0, 1, 0)
end)

local KillButton = Instance.new("TextButton", Scroll)
KillButton.Size = UDim2.new(0.47, 0, 0.036, 0)
KillButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", KillButton)
KillButton.Text = "Force x_x"

KillButton.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
end)

local KickButton = Instance.new("TextButton", Scroll)
KickButton.Size = UDim2.new(0.47, 0, 0.036, 0)
KickButton.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
Instance.new("UICorner", KickButton)
KickButton.Text = "Force Kick"

KickButton.MouseButton1Click:Connect(function()
game.Players.LocalPlayer:Kick()
end)
