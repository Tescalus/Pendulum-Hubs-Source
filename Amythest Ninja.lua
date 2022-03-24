--------------------------------------------------------------

-----------//THE NIGHTFALL\\-----------
--[[Movelist
Mouseclick = 3 combos
-Attack 1 = Downwards slash
-Attack 2 = Power slash
-Attack 3 = Whirlwind slash
Q = Impale
E = Forward dash
R = Ear destroyer
T = Taunt
Y = Cutting storm
U = Homing Cutting storm
---------]]

--Recreated from the game Before the dawn: Redux.--
--Those who used this right when it was released, yes it was broken, it's fixed now--
--Impale dem suckazz and reeeeeeeeee--

-----------//THE NIGHTFALL\\-----------
--[[Movelist
Mouseclick = 3 combos
-Attack 1 = Downwards slash
-Attack 2 = Power slash
-Attack 3 = Whirlwind slash
Q = Impale
E = Forward dash
R = Ear destroyer
T = Taunt
Y = Cutting storm
U = Homing Cutting storm
---------]]

--Recreated from the game Before the dawn: Redux.--
--For those who used this when it was just released, it was broken, it's fixed now as of 12-18-2018--
--Impale dem suckazz and reeeeeeee--
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20Align%20Method.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
Player=game.Players.LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "nightfall"
hum = Character.nightfall
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
walking = false
singularitybounce = false
jumping = false
targetfound = false
grabbed = false
attacking = false
firsttime = false
dash1 = true
dash2 = false
tauntdebounce = false
mouse = Mouse
position = nil
MseGuide = true
running = false
settime = 0
sine = 0
t = 0
ws = 19
jp = 100
secondform = false
change = 1
combo1 = true
dancing = false
equip = false
dgs = 75
dedlaff = false
combo2 = false
spin1 = true
spin2 = false
switch1 = true
switch2 = false
firsttime2 = false
isattacking = false
combo3 = false
gunallowance = false
cooldown = false
shooting = false
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").Stepped
removeuseless = game:GetService("Debris")
local slasher = {1543186629,1543187082,1543187280,1543186883}
local slasher2 = {220834019,220834000,220833976,220833967}
slash = #slasher
slash2 = #slasher2
screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

footsteps = Instance.new("Sound",Torso)
footsteps.SoundId = "rbxassetid://1244506786"
footsteps.Volume = 0
footsteps.Looped = true
footsteps.Pitch = 1.6
footsteps.Name = "fp"
footsteps:Play()

slash = slasher[math.random(1,#slasher)]
slashs = Instance.new("Sound",RightArm)
slashs.SoundId = "rbxassetid://"..slash
slashs.Volume = 10
slashs.Pitch = 1
slashs.Name = "slashs"

introsound = Instance.new("Sound",Torso)
introsound.SoundId = "rbxassetid://1842444810"
introsound.Volume = 4
introsound:Play()

coroutine.wrap(function()
doomtheme = Instance.new("Sound",Torso)
doomtheme.Volume = 0
doomtheme.SoundId = "rbxassetid://2114921530"
doomtheme.Looped = true
doomtheme:Play()
doomtheme.Name = "doomtheme"
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume + .1
wait()
end
end)()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
doomtheme = Instance.new("Sound",Torso)
doomtheme.SoundId = "rbxassetid://2114921530"
doomtheme.Looped = true
doomtheme.Volume = 2
doomtheme:Play()
doomtheme.Name = "doomtheme"
end
end)

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "slashs" then
slash = slasher[math.random(1,#slasher)]
slashs = Instance.new("Sound",RightArm)
slashs.SoundId = "rbxassetid://"..slash
slashs.Volume = 10
slashs.Pitch = 1
slashs.Name = "slashs"
end
end)

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "fp" then
footsteps = Instance.new("Sound",Torso)
footsteps.SoundId = "rbxassetid://1244506786"
footsteps.Volume = 0
footsteps.Looped = true
footsteps.Pitch = 1.6
footsteps.Name = "fp"
footsteps:Play()
end
end)

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocation.Name = "leftlocation"
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocation.Name = "rightlocation"
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

A = Instance.new("Attachment", rightlocation)
A.Position = Vector3.new(.1,.3,.1)
A.Name = "A"
B = Instance.new("Attachment", rightlocation)
B.Position = Vector3.new(-.1,-.3,-.1)
B.Name = "B"
tr1 = Instance.new("Trail", rightlocation)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = false
tr1.Lifetime = .6
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = ColorSequence.new(BrickColor.new("Eggplant").Color,BrickColor.new("Really black").Color)
tr1.Transparency = NumberSequence.new(0, 1)

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
Character.Shirt.ShirtTemplate = "rbxassetid://302262616"

particlecolor = ColorSequence.new(Color3.new(255, 255, 255))

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocation.Name = "leftlocation"
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocation.Name = "rightlocation"
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

particlemiter1 = Instance.new("ParticleEmitter", LeftArm)
particlemiter1.Enabled = false
particlemiter1.Color = particlecolor
particlemiter1.Texture = "rbxassetid://886346744"
particlemiter1.Lifetime = NumberRange.new(.05)
particlemiter1.Size = NumberSequence.new(1.75,1.75)
particlemiter1.Rate = 4
particlemiter1.Rotation = NumberRange.new(0,360)
particlemiter1.RotSpeed = NumberRange.new(0)
particlemiter1.Speed = NumberRange.new(0)
particlemiter2 = Instance.new("ParticleEmitter", RightArm)
particlemiter2.Enabled = false
particlemiter2.Color = particlecolor
particlemiter2.Texture = "rbxassetid://886346744"
particlemiter2.Rotation = NumberRange.new(0,360)
particlemiter2.Lifetime = NumberRange.new(.05)
particlemiter2.Size = NumberSequence.new(1.75,1.75)
particlemiter2.Rate = 4
particlemiter2.RotSpeed = NumberRange.new(0)
particlemiter2.Speed = NumberRange.new(0)
particlemiter4 = Instance.new("ParticleEmitter", LeftLeg)
particlemiter4.Enabled = false
particlemiter4.Color = particlecolor
particlemiter4.Texture = "rbxassetid://886346744"
particlemiter4.Lifetime = NumberRange.new(.05)
particlemiter4.Rotation = NumberRange.new(0,360)
particlemiter4.Size = NumberSequence.new(1.75,1.75)
particlemiter4.Rate = 4
particlemiter4.RotSpeed = NumberRange.new(0)
particlemiter4.Speed = NumberRange.new(0)
particlemiter5 = Instance.new("ParticleEmitter", RightLeg)
particlemiter5.Enabled = false
particlemiter5.Color = particlecolor
particlemiter5.Texture = "rbxassetid://886346744"
particlemiter5.Rotation = NumberRange.new(0,360)
particlemiter5.Lifetime = NumberRange.new(.05)
particlemiter5.Size = NumberSequence.new(1.75,1.75)
particlemiter5.Rate = 4
particlemiter5.RotSpeed = NumberRange.new(0)
particlemiter5.Speed = NumberRange.new(0)
particlemiter6 = Instance.new("ParticleEmitter", Torso)
particlemiter6.Enabled = false
particlemiter6.Color = particlecolor
particlemiter6.Texture = "rbxassetid://886346744"
particlemiter6.Rotation = NumberRange.new(0,360)
particlemiter6.Lifetime = NumberRange.new(.05)
particlemiter6.Size = NumberSequence.new(1.75,1.75)
particlemiter6.Rate = 4
particlemiter6.RotSpeed = NumberRange.new(0)
particlemiter6.Speed = NumberRange.new(0)
particlemiter7 = Instance.new("ParticleEmitter", Head)
particlemiter7.Enabled = false
particlemiter7.Color = particlecolor
particlemiter7.Texture = "rbxassetid://886346744"
particlemiter7.Rotation = NumberRange.new(0,360)
particlemiter7.Lifetime = NumberRange.new(.05)
particlemiter7.Size = NumberSequence.new(1.75,1.75)
particlemiter7.Rate = 4
particlemiter7.RotSpeed = NumberRange.new(0)
particlemiter7.Speed = NumberRange.new(0)

coroutine.wrap(function()
while true do
wait(7)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
swait(60)
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
wait(11)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
swait(60)
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
wait(4)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
swait(60)
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
swait()
end
end)()

Head.BrickColor = BrickColor.new("Really black")


mas = Instance.new("Model",Head) 
mas.Name = "Model2Script"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("Part")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("Part")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o14 = Instance.new("Part")
o15 = Instance.new("Part")
o16 = Instance.new("Part")
o17 = Instance.new("Part")
o18 = Instance.new("Part")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("Part")
o22 = Instance.new("Part")
o23 = Instance.new("Part")
o24 = Instance.new("Part")
o25 = Instance.new("Part")
o26 = Instance.new("Part")
o27 = Instance.new("Part")
o28 = Instance.new("Part")
o29 = Instance.new("Part")
o30 = Instance.new("Part")
o31 = Instance.new("Part")
o32 = Instance.new("Part")
o33 = Instance.new("Part")
o34 = Instance.new("Part")
o35 = Instance.new("Part")
o36 = Instance.new("Part")
o37 = Instance.new("Part")
o1.Parent = mas
o2.Name = "Head"
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Really black")
o2.Transparency = 1
o2.Rotation = Vector3.new(-0.00999999978, 3.26999998, 0.00999999978)
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1.99999988, 0.99999994, 0.99999994)
o2.CFrame = CFrame.new(12.5892553, 4.50960207, -3.75727963, 0.998376548, -0.000250246754, 0.0569584854, 0.000245001953, 1.00000846, 9.91025372e-05, -0.056957975, -8.49864373e-05, 0.998385131)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Parent = o2
o3.BrickColor = BrickColor.new("Fossil")
o3.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o3.CanCollide = false
o3.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o3.CFrame = CFrame.new(12.3422012, 4.47093582, -4.18185663, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o3.BottomSurface = Enum.SurfaceType.Smooth
o3.TopSurface = Enum.SurfaceType.Smooth
o3.Color = Color3.new(0.623529, 0.631373, 0.67451)
o3.Color = Color3.new(0.623529, 0.631373, 0.67451)
o4.Parent = o2
o4.Material = Enum.Material.Neon
o4.BrickColor = BrickColor.new("Eggplant")
o4.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o4.CanCollide = false
o4.Shape = Enum.PartType.Ball
o4.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o4.CFrame = CFrame.new(12.6813383, 4.85306978, -4.3403945, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.482353, 0, 0.482353)
o4.Color = Color3.new(0.482353, 0, 0.482353)
o5.Parent = o2
o5.BrickColor = BrickColor.new("Fossil")
o5.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o5.CanCollide = false
o5.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o5.CFrame = CFrame.new(12.25453, 4.47092152, -4.12017584, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.623529, 0.631373, 0.67451)
o5.Color = Color3.new(0.623529, 0.631373, 0.67451)
o6.Parent = o2
o6.BrickColor = BrickColor.new("Fossil")
o6.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o6.CanCollide = false
o6.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o6.CFrame = CFrame.new(12.3307505, 4.47093344, -4.19189453, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.623529, 0.631373, 0.67451)
o6.Color = Color3.new(0.623529, 0.631373, 0.67451)
o7.Parent = o2
o7.BrickColor = BrickColor.new("Fossil")
o7.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o7.CanCollide = false
o7.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o7.CFrame = CFrame.new(12.4249439, 4.47095871, -4.24005365, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.623529, 0.631373, 0.67451)
o7.Color = Color3.new(0.623529, 0.631373, 0.67451)
o8.Parent = o2
o8.BrickColor = BrickColor.new("Fossil")
o8.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o8.CanCollide = false
o8.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o8.CFrame = CFrame.new(12.8379145, 4.46701479, -4.16434002, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.623529, 0.631373, 0.67451)
o8.Color = Color3.new(0.623529, 0.631373, 0.67451)
o9.Parent = o2
o9.BrickColor = BrickColor.new("Fossil")
o9.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o9.CanCollide = false
o9.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o9.CFrame = CFrame.new(12.9631338, 4.46704054, -4.09174585, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.623529, 0.631373, 0.67451)
o9.Color = Color3.new(0.623529, 0.631373, 0.67451)
o10.Parent = o2
o10.BrickColor = BrickColor.new("Fossil")
o10.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o10.CanCollide = false
o10.Size = Vector3.new(0.0600024611, 0.250000179, 0.220000237)
o10.CFrame = CFrame.new(12.2429972, 4.4709177, -4.11946106, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.623529, 0.631373, 0.67451)
o10.Color = Color3.new(0.623529, 0.631373, 0.67451)
o11.Parent = o2
o11.Material = Enum.Material.Metal
o11.BrickColor = BrickColor.new("Pearl")
o11.Rotation = Vector3.new(-179.959991, 70.5100021, 179.970001)
o11.CanCollide = false
o11.Size = Vector3.new(0.250002503, 0.350000173, 0.2900002)
o11.CFrame = CFrame.new(13.0351248, 4.18798542, -4.05297899, -0.333613515, -0.000202421492, 0.942709923, -1.74622983e-10, 1.00000834, 0.000214724801, -0.942718267, 7.16352733e-05, -0.333615392)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Parent = o2
o12.Material = Enum.Material.Metal
o12.BrickColor = BrickColor.new("Pearl")
o12.Rotation = Vector3.new(-0.0199999996, 59.8599968, 0.0299999993)
o12.CanCollide = false
o12.Size = Vector3.new(0.250002503, 0.330000162, 0.2900002)
o12.CFrame = CFrame.new(12.1336823, 4.17776823, -4.01179171, 0.502042472, -0.000225768134, 0.864842951, 0.000113000759, 1.00000834, 0.000195456203, -0.864849985, -3.99100827e-07, 0.502047539)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o13.Parent = o2
o13.BrickColor = BrickColor.new("Fossil")
o13.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o13.CanCollide = false
o13.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o13.CFrame = CFrame.new(12.4135151, 4.13782883, -4.25640917, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.623529, 0.631373, 0.67451)
o13.Color = Color3.new(0.623529, 0.631373, 0.67451)
o14.Parent = o2
o14.Material = Enum.Material.SmoothPlastic
o14.BrickColor = BrickColor.new("Really black")
o14.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o14.CanCollide = false
o14.Size = Vector3.new(0.370002419, 0.380000234, 0.300000221)
o14.CFrame = CFrame.new(12.5940952, 4.50669909, -4.2362237, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Parent = o2
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Pearl")
o15.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o15.CanCollide = false
o15.Size = Vector3.new(0.0800024197, 0.250000238, 0.300000221)
o15.CFrame = CFrame.new(12.720789, 4.13790607, -4.30649519, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o16.Parent = o2
o16.BrickColor = BrickColor.new("Fossil")
o16.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o16.CanCollide = false
o16.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o16.CFrame = CFrame.new(12.8739166, 4.14795494, -4.19200373, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.623529, 0.631373, 0.67451)
o16.Color = Color3.new(0.623529, 0.631373, 0.67451)
o17.Parent = o2
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Pearl")
o17.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o17.CanCollide = false
o17.Size = Vector3.new(0.370002478, 0.120000228, 0.130000144)
o17.CFrame = CFrame.new(13.0013018, 5.05734348, -4.35467005, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o18.Parent = o2
o18.Material = Enum.Material.Neon
o18.BrickColor = BrickColor.new("Eggplant")
o18.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o18.CanCollide = false
o18.Shape = Enum.PartType.Cylinder
o18.Size = Vector3.new(0.48999992, 1.15999997, 1.30999982)
o18.CFrame = CFrame.new(12.586771, 4.26036596, -3.78879094, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.482353, 0, 0.482353)
o18.Color = Color3.new(0.482353, 0, 0.482353)
o19.Parent = o2
o19.Material = Enum.Material.Metal
o19.BrickColor = BrickColor.new("Pearl")
o19.Rotation = Vector3.new(0, 0.629999995, 12.8699999)
o19.CanCollide = false
o19.Size = Vector3.new(0.0800024197, 0.170000225, 0.2900002)
o19.CFrame = CFrame.new(12.6530409, 4.55379057, -4.27083921, 0.974806547, -0.22278282, 0.0109562129, 0.222797751, 0.974873364, 2.55261766e-05, -0.0106856115, 0.00241591129, 0.999948502)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Parent = o2
o20.Material = Enum.Material.Metal
o20.BrickColor = BrickColor.new("Pearl")
o20.Rotation = Vector3.new(-0.00999999978, 29.6299992, 0.0199999996)
o20.CanCollide = false
o20.Size = Vector3.new(0.420002431, 0.200000226, 0.2900002)
o20.CFrame = CFrame.new(12.2898045, 4.11280489, -4.19457197, 0.869223297, -0.000238353008, 0.494419813, 0.000207001765, 1.00000846, 0.000118167409, -0.494423091, -3.67785105e-07, 0.869231284)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Parent = o2
o21.Material = Enum.Material.Metal
o21.BrickColor = BrickColor.new("Pearl")
o21.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o21.CanCollide = false
o21.Size = Vector3.new(0.350002438, 0.120000228, 0.130000204)
o21.CFrame = CFrame.new(13.0757389, 4.90882826, -4.35546923, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Parent = o2
o22.Material = Enum.Material.Metal
o22.BrickColor = BrickColor.new("Pearl")
o22.Rotation = Vector3.new(0, 0.629999995, 30.0699997)
o22.CanCollide = false
o22.Size = Vector3.new(0.330002487, 0.110000268, 0.140000194)
o22.CFrame = CFrame.new(13.142314, 4.7739563, -4.35119486, 0.865364432, -0.501023412, 0.0109602921, 0.501057446, 0.865423858, 2.24432806e-05, -0.00949566439, 0.00547180884, 0.999948561)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Parent = o2
o23.Material = Enum.Material.Metal
o23.BrickColor = BrickColor.new("Pearl")
o23.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o23.CanCollide = false
o23.Size = Vector3.new(0.0800024197, 0.250000238, 0.2900002)
o23.CFrame = CFrame.new(12.4452009, 4.13783503, -4.29846525, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Parent = o2
o24.Material = Enum.Material.Metal
o24.BrickColor = BrickColor.new("Pearl")
o24.Rotation = Vector3.new(0, 0.629999995, -30.1299992)
o24.CanCollide = false
o24.Size = Vector3.new(0.330002487, 0.110000268, 0.130000249)
o24.CFrame = CFrame.new(13.0381289, 4.67515135, -4.35506392, 0.864809334, 0.501980901, 0.0109607317, -0.502015352, 0.864868522, 1.60243653e-05, -0.00947066396, -0.00551580451, 0.999948561)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o25.Parent = o2
o25.BrickColor = BrickColor.new("Fossil")
o25.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o25.CanCollide = false
o25.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o25.CFrame = CFrame.new(12.2344007, 4.13779402, -4.13043022, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.623529, 0.631373, 0.67451)
o25.Color = Color3.new(0.623529, 0.631373, 0.67451)
o26.Parent = o2
o26.BrickColor = BrickColor.new("Fossil")
o26.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o26.CanCollide = false
o26.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o26.CFrame = CFrame.new(12.7699385, 4.14792395, -4.25231028, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o26.Color = Color3.new(0.623529, 0.631373, 0.67451)
o27.Parent = o2
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Really black")
o27.Rotation = Vector3.new(180, -3.27999997, 179.98999)
o27.Shape = Enum.PartType.Cylinder
o27.Size = Vector3.new(0.0500000007, 0.250000238, 1.6000005)
o27.CFrame = CFrame.new(12.2895432, 4.72786093, -4.26638556, -0.998360634, -0.000245401112, -0.0572395623, -0.000245002186, 1.00000846, -1.40238844e-05, 0.0572390407, 2.32175807e-08, -0.998369098)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28.Parent = o2
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Really black")
o28.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o28.CanCollide = false
o28.Shape = Enum.PartType.Cylinder
o28.Size = Vector3.new(0.24999994, 1.25999975, 1.54999959)
o28.CFrame = CFrame.new(12.5879374, 4.09035969, -3.785882, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Parent = o2
o29.Material = Enum.Material.Neon
o29.BrickColor = BrickColor.new("Eggplant")
o29.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o29.CanCollide = false
o29.Shape = Enum.PartType.Ball
o29.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o29.CFrame = CFrame.new(12.8344183, 4.76740217, -4.34208727, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.482353, 0, 0.482353)
o29.Color = Color3.new(0.482353, 0, 0.482353)
o30.Parent = o2
o30.Material = Enum.Material.Neon
o30.BrickColor = BrickColor.new("Eggplant")
o30.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o30.CanCollide = false
o30.Shape = Enum.PartType.Ball
o30.Size = Vector3.new(0.190001294, 0.190001294, 0.190001294)
o30.CFrame = CFrame.new(12.6813812, 4.67232227, -4.34039068, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.482353, 0, 0.482353)
o30.Color = Color3.new(0.482353, 0, 0.482353)
o31.Parent = o2
o31.BrickColor = BrickColor.new("Fossil")
o31.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o31.CanCollide = false
o31.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o31.CFrame = CFrame.new(12.9933138, 4.14798307, -4.12279606, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o32.Name = "r"
o32.Parent = o2
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Really black")
o32.Rotation = Vector3.new(0, 0.629999995, -89.9899979)
o32.CanCollide = false
o32.Shape = Enum.PartType.Cylinder
o32.Size = Vector3.new(0.46999985, 1.25999975, 1.54999959)
o32.CFrame = CFrame.new(12.5878134, 4.61972094, -3.7858963, 0.000245000003, 0.999939919, 0.0109635293, -1.00000846, 0.000244855793, 1.46855382e-05, 1.19998876e-05, -0.0109626055, 0.999948502)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o33.Parent = o2
o33.BrickColor = BrickColor.new("Fossil")
o33.Rotation = Vector3.new(-0.00999999978, 35.1199989, 0.0199999996)
o33.CanCollide = false
o33.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o33.CFrame = CFrame.new(12.3250799, 4.13780499, -4.19420767, 0.817933738, -0.000248847413, 0.575312555, 0.000196001551, 1.00000846, 0.000153887318, -0.575316489, -1.31072084e-05, 0.817941368)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.623529, 0.631373, 0.67451)
o33.Color = Color3.new(0.623529, 0.631373, 0.67451)
o34.Parent = o2
o34.Material = Enum.Material.Neon
o34.BrickColor = BrickColor.new("Eggplant")
o34.Rotation = Vector3.new(0, 0.629999995, 0.00999999978)
o34.CanCollide = false
o34.Shape = Enum.PartType.Ball
o34.Size = Vector3.new(0.230001301, 0.230001301, 0.230001301)
o34.CFrame = CFrame.new(12.320076, 4.73971415, -4.26470613, 0.999939919, -0.00023901432, 0.0109635331, 0.00023900198, 1.00000846, 2.62037793e-06, -0.0109626129, 3.71073838e-10, 0.999948502)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.482353, 0, 0.482353)
o34.Color = Color3.new(0.482353, 0, 0.482353)
o35.Parent = o2
o35.Material = Enum.Material.Metal
o35.BrickColor = BrickColor.new("Pearl")
o35.Rotation = Vector3.new(0, 0.629999995, 12.8699999)
o35.CanCollide = false
o35.Size = Vector3.new(0.520002484, 0.440000206, 0.2900002)
o35.CFrame = CFrame.new(12.8338127, 4.79513836, -4.27282286, 0.974806547, -0.22278282, 0.0109562129, 0.222797751, 0.974873364, 2.55261766e-05, -0.0106856115, 0.00241591129, 0.999948502)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.905882, 0.905882, 0.92549)
o35.Color = Color3.new(0.905882, 0.905882, 0.92549)
o36.Parent = o2
o36.Material = Enum.Material.Metal
o36.BrickColor = BrickColor.new("Pearl")
o36.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o36.CanCollide = false
o36.Size = Vector3.new(0.420002431, 0.200000226, 0.2900002)
o36.CFrame = CFrame.new(12.8746452, 4.11295271, -4.2049346, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o36.BottomSurface = Enum.SurfaceType.Smooth
o36.TopSurface = Enum.SurfaceType.Smooth
o36.Color = Color3.new(0.905882, 0.905882, 0.92549)
o36.Color = Color3.new(0.905882, 0.905882, 0.92549)
o37.Parent = o2
o37.BrickColor = BrickColor.new("Fossil")
o37.Rotation = Vector3.new(0.00999999978, -30.1099987, 0.0199999996)
o37.CanCollide = false
o37.Size = Vector3.new(0.0600024611, 0.250000179, 0.260000259)
o37.CFrame = CFrame.new(12.7551317, 4.46699476, -4.21234465, 0.865085423, -0.000253115431, -0.501624584, 0.000219001973, 1.00000846, -0.000126912026, 0.50162971, -6.67569111e-08, 0.865092278)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.623529, 0.631373, 0.67451)
o37.Color = Color3.new(0.623529, 0.631373, 0.67451)
mas.Parent = workspace
mas:MakeJoints()

mas2 = Instance.new("Model",RightArm) 
mas2.Name = "Model2Script2"
ov = Instance.new("Model")
o2 = Instance.new("WedgePart")
o3 = Instance.new("WedgePart")
o4 = Instance.new("WedgePart")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("WedgePart")
o9m = Instance.new("Part")
ov.Parent = mas2
o2.Parent = ov
o2.Material = Enum.Material.Neon
o2.BrickColor = BrickColor.new("Alder")
o2.Transparency = 0.1
o2.Rotation = Vector3.new(-76.2299957, 74.5199966, -102.399994)
o2.Anchored = true
o2.Size = Vector3.new(0.104009911, 0.654072165, 0.0998701826)
o2.CFrame = CFrame.new(-6.25214577, 2.5895319, -11.5024309, -0.057314001, 0.260602951, 0.963743508, -0.0313595012, -0.965332747, 0.259167373, 0.997871935, -0.015368619, 0.0634972602)
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.705882, 0.501961, 1)
o2.Color = Color3.new(0.705882, 0.501961, 1)
o3.Parent = ov
o3.Material = Enum.Material.Neon
o3.BrickColor = BrickColor.new("Alder")
o3.Transparency = 0.1
o3.Rotation = Vector3.new(-88.5499954, -6.10999966, 86.6899948)
o3.Anchored = true
o3.Size = Vector3.new(0.10142266, 0.186803788, 0.632338703)
o3.CFrame = CFrame.new(-5.97627115, 1.30611134, -11.5261898, 0.0573620088, -0.992660284, -0.106466688, 0.0314275026, -0.104794614, 0.994006455, -0.997867048, -0.0603620112, 0.0251852907)
o3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o3.Color = Color3.new(0.705882, 0.501961, 1)
o3.Color = Color3.new(0.705882, 0.501961, 1)
o4.Parent = ov
o4.Material = Enum.Material.Neon
o4.BrickColor = BrickColor.new("Alder")
o4.Transparency = 0.1
o4.Rotation = Vector3.new(103.110001, -74.5599976, -78.2399979)
o4.Anchored = true
o4.Size = Vector3.new(0.104009911, 0.472443491, 0.0998701826)
o4.CFrame = CFrame.new(-5.85783195, 2.78958607, -11.4734116, 0.0542620048, 0.26058802, -0.96392411, 0.0306074936, -0.965335786, -0.25924623, -0.998065889, -0.0154361119, -0.0603548028)
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.705882, 0.501961, 1)
o4.Color = Color3.new(0.705882, 0.501961, 1)
o5.Parent = ov
o5.Material = Enum.Material.Neon
o5.BrickColor = BrickColor.new("Alder")
o5.Transparency = 0.1
o5.Rotation = Vector3.new(-178.199997, 3.28999996, -105.129997)
o5.Anchored = true
o5.Size = Vector3.new(0.701161206, 0.538160622, 0.103492416)
o5.CFrame = CFrame.new(-6.22018671, 3.29966021, -11.4774265, -0.260599941, 0.963741541, 0.0573597625, 0.965332747, 0.259159267, 0.0314289927, 0.0154241361, 0.0635594428, -0.997867107)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.705882, 0.501961, 1)
o5.Color = Color3.new(0.705882, 0.501961, 1)
o6.Parent = ov
o6.Material = Enum.Material.Neon
o6.BrickColor = BrickColor.new("Alder")
o6.Transparency = 0.1
o6.Rotation = Vector3.new(-178.199997, 3.28999996, -101.059998)
o6.Anchored = true
o6.Size = Vector3.new(0.701161206, 0.371020257, 0.103492416)
o6.CFrame = CFrame.new(-6.05381966, 2.6474514, -11.4884119, -0.191533148, 0.979808867, 0.0573569275, 0.981293619, 0.189983174, 0.0314286686, 0.0198971108, 0.062301416, -0.997867286)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.705882, 0.501961, 1)
o6.Color = Color3.new(0.705882, 0.501961, 1)
o7.Parent = ov
o7.Material = Enum.Material.Neon
o7.BrickColor = BrickColor.new("Alder")
o7.Transparency = 0.1
o7.Rotation = Vector3.new(-178.199997, 3.28999996, -96.1199951)
o7.Anchored = true
o7.Size = Vector3.new(0.701161206, 0.371020257, 0.103492416)
o7.CFrame = CFrame.new(-5.95285225, 1.97883701, -11.5036192, -0.106464036, 0.99266082, 0.057359308, 0.994006693, 0.104791857, 0.0314288139, 0.025187036, 0.0603593886, -0.997867167)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.705882, 0.501961, 1)
o7.Color = Color3.new(0.705882, 0.501961, 1)
o8.Parent = ov
o8.Material = Enum.Material.Neon
o8.BrickColor = BrickColor.new("Alder")
o8.Transparency = 0.1
o8.Rotation = Vector3.new(-88.5499954, -6.10999966, -93.3099976)
o8.Anchored = true
o8.Size = Vector3.new(0.10142266, 0.186803788, 0.632338703)
o8.CFrame = CFrame.new(-5.79092312, 1.32566071, -11.5148821, -0.0573620088, 0.992660284, -0.106466688, -0.0314275026, 0.104794614, 0.994006455, 0.997867048, 0.0603620112, 0.0251852907)
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.705882, 0.501961, 1)
o8.Color = Color3.new(0.705882, 0.501961, 1)
o9m.Parent = ov
o9m.Material = Enum.Material.Neon
o9m.BrickColor = BrickColor.new("Alder")
o9m.Transparency = 0.1
o9m.Rotation = Vector3.new(-178.199997, 3.28999996, -118.769997)
o9m.Anchored = true
o9m.Size = Vector3.new(1.56116068, 0.538160563, 0.102974951)
o9m.CFrame = CFrame.new(-6.66080666, 4.25504208, -11.4726496, -0.480506241, 0.875113606, 0.0573588945, 0.876999617, 0.479481548, 0.031427063, 2.6898428e-07, 0.065402478, -0.997867227)
o9m.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9m.Color = Color3.new(0.705882, 0.501961, 1)
o9m.Color = Color3.new(0.705882, 0.501961, 1)
mas2.Parent = workspace
mas2:MakeJoints()

nightfallknifelocater = Instance.new("Part",RightArm)
nightfallknifelocater.CanCollide = false
nightfallknifelocater.Transparency = 1
nightfallknifelocater.Size = Vector3.new(1,1,1)
ng2 = weldBetween(nightfallknifelocater,RightArm)
ng2.C0 = CFrame.new(-6.2,4.3,-11.35) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-18))


nightfallmasklocater = Instance.new("Part",Head)
nightfallmasklocater.CanCollide = false
nightfallmasklocater.Transparency = 1
nightfallmasklocater.Size = Vector3.new(1,1,1)
ng = weldBetween(nightfallmasklocater,Head)
ng.C0 = CFrame.new(12.6,4.5,-3.72)



function weld()
	local parts,last = {}
	local function scan(o1)
		for _,v in pairs(o1:GetChildren()) do
			if (v:IsA("BasePart")) then
				if (last) then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0,w.Part1 = last,nightfallmasklocater
					w.C0 = last.CFrame:inverse() 
					w.Parent = last
				end
				last = v
				table.insert(parts,v)
			end
			scan(v)
		end
	end
	scan(o1)
	for _,v in pairs(parts) do
v.CanCollide = false
		v.Anchored = false
v.Parent = Head
	end
end

weld()

function weld2()
	local parts,last = {}
	local function scan(ov)
		for _,v in pairs(ov:GetChildren()) do
			if (v:IsA("BasePart")) then
				if (last) then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0,w.Part1 = last,nightfallknifelocater
					w.C0 = last.CFrame:inverse() 
					w.Parent = last
				end
				last = v
				table.insert(parts,v)
			end
			scan(v)
		end
	end
	scan(ov)
	for _,v in pairs(parts) do
v.CanCollide = false
		v.Anchored = false
v.Parent = RightArm
	end
end

weld2()

for i,v in pairs(Character:GetChildren()) do
if v.ClassName == "Pants" or v.ClassName == "Hat" or v.ClassName == "CharacterMesh" or v.ClassName == "Shirt Graphic" then
v:Remove()
end
end

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
Character.Shirt.ShirtTemplate = "rbxassetid://863473913"

leg1 = Instance.new("SpecialMesh", LeftLeg)
leg1.MeshType = "FileMesh"
leg1.Scale = Vector3.new(1, 1, 1)
leg1.MeshId,leg1.TextureId = 'http://www.roblox.com/asset/?id=1243660338','http://www.roblox.com/asset/?id=1539341292'

leg2 = Instance.new("SpecialMesh", RightLeg)
leg2.MeshType = "FileMesh"
leg2.Scale = Vector3.new(1, 1, 1)
leg2.MeshId,leg2.TextureId = 'http://www.roblox.com/asset/?id=1243660660','http://www.roblox.com/asset/?id=1539341292'

torso1 = Instance.new("CharacterMesh",Character)
torso1.MeshId = 319346857
torso1.BodyPart = "Torso"

arm1 = Instance.new("CharacterMesh",Character)
arm1.MeshId = 303665934
arm1.OverlayTextureId = 1539341292
arm1.BodyPart = "LeftArm"

arm2 = Instance.new("CharacterMesh",Character)
arm2.MeshId = 98332573
arm2.OverlayTextureId = 6347925
arm2.BodyPart = "RightArm"

coroutine.wrap(function()
while wait() do
if secondform then
Head.face.Texture = "rbxassetid://1127768638"
else
Head.face.Texture = "rbxassetid://629947734"
end
hum.WalkSpeed = 50
hum.JumpPower = 125
LeftArm.BrickColor = BrickColor.new("Really black")
RightArm.BrickColor = BrickColor.new("Really black")
Head.BrickColor = BrickColor.new("Really black")
Torso.BrickColor = BrickColor.new("Really black")
LeftLeg.BrickColor = BrickColor.new("Really black")
RightLeg.BrickColor = BrickColor.new("Really black")
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
hum.MaxHealth = math.huge
wait(.00001)
hum.Health = math.huge
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end


function ray(pos, dir, rang, ignoredesc)
	return workspace:FindPartOnRay(Ray.new(pos, dir.unit * rang), ignoredesc)
end

function ray2(startpos, endpos, distance, ignore)
local dir = CFrame.new(startpos,endpos).lookVector
return ray(startpos, dir, distance, ignore)
end

coroutine.wrap(function()
while true do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "explodball" then
v.Size = v.Size + Vector3.new(2,2,2)
v.Transparency = v.Transparency + .08
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "explodmesh" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .06
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "explodmesh2" then
v.Scale = v.Scale + Vector3.new(1.5,0,1.5)
v.Parent.Transparency = v.Parent.Transparency + .06
end
end
swait()
end
end)()

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()
if debounce then return end
debounce = true
if combo1 then
combo1 = false
combo2 = true
combo3 = false
attacking = true
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 12 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(.4,-.2,-.2) * CFrame.Angles(math.rad(90),math.rad(130),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(-2), math.rad(40), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
tr1.Enabled = true
slash = slasher[math.random(1,#slasher)]
slashs.SoundId = "rbxassetid://"..slash
slashs:Play()
hitbox = Instance.new("Part",Torso)
hitbox.CFrame = Root.CFrame * CFrame.new(1,0,-3)
hitbox.Anchored = true
hitbox.Transparency = 1
hitbox.Size = Vector3.new(1,1,1)
hitbox.CanCollide = false
Hit = damagealll(3,hitbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slash2 = slasher2[math.random(1,#slasher2)]
local damagesound = Instance.new("Sound",slachtoffer.Parent:FindFirstChild("Torso") or slachtoffer.Parent:FindFirstChild("UpperTorso"))
damagesound.SoundId = "rbxassetid://"..slash2
damagesound.Volume = 8
damagesound:Play()
removeuseless:AddItem(damagesound,4)
slachtoffer:TakeDamage(-math.huge)
end
end
ws = 6
for i = 1, 12 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(.2,1.4,-.3) * CFrame.Angles(math.rad(90),math.rad(230),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(2), math.rad(-60), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
removeuseless:AddItem(g1,.001)
hitbox:Remove()
tr1.Enabled = false
attacking = false
debounce = false
ws = 19
elseif combo2 then
combo1 = false
combo2 = false
combo3 = true
attacking = true
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 12 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(2), math.rad(-40), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.3,1.8,-0) * CFrame.Angles(math.rad(-120),math.rad(99),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
tr1.Enabled = true
slash = slasher[math.random(1,#slasher)]
slashs.SoundId = "rbxassetid://"..slash
slashs:Play()
hitbox = Instance.new("Part",Torso)
hitbox.CFrame = Root.CFrame * CFrame.new(1,0,-3)
hitbox.Anchored = true
hitbox.Transparency = 1
hitbox.Size = Vector3.new(1,1,1)
hitbox.CanCollide = false
Hit = damagealll(3,hitbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(-math.huge)
slash2 = slasher2[math.random(1,#slasher2)]
local damagesound = Instance.new("Sound",slachtoffer.Parent:FindFirstChild("Torso") or slachtoffer.Parent:FindFirstChild("UpperTorso"))
damagesound.SoundId = "rbxassetid://"..slash2
damagesound.Volume = 8
damagesound:Play()
removeuseless:AddItem(damagesound,4)
end
end
for i = 1, 12 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(-2), math.rad(40), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.8,-.25,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
removeuseless:AddItem(g1,.001)
tr1.Enabled = false
debounce = false
hitbox:Remove()
attacking = false
ws = 19
elseif combo3 then
combo1 = true
combo2 = false
combo3 = false
attacking = true
spinny = 0
ws = 16
local spinnysound = Instance.new("Sound",Torso)
spinnysound.SoundId = "rbxassetid://1290491542"
spinnysound.Volume = 8
spinnysound.Pitch = .8
spinnysound:Play()
tr1.Enabled = true
hitbox = Instance.new("Part",Torso)
hitbox.CFrame = Root.CFrame * CFrame.new(1,0,-3)
hitbox.Anchored = true
hitbox.Transparency = 1
hitbox.Size = Vector3.new(1,1,1)
hitbox.CanCollide = false
if spin1 then
spin1 = false
spin2 = true
else
spin1 = true
spin2 = false
end
for i = 1, 45 do
hitbox.CFrame = Root.CFrame * CFrame.new(1,0,-3)
local Hit = damagealll(3,hitbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(-math.huge)
end
end
if spin1 then
spinny = spinny - 45
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.3,1.4,.5) * CFrame.Angles(math.rad(-90),math.rad(90),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.55,.55,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(spinny), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
elseif spin2 then
spinny = spinny - 45
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.3,1.4,.5) * CFrame.Angles(math.rad(-90),math.rad(90),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.55,.55,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(spinny), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
end
swait()
end
tr1.Enabled = false
spinnysound:Remove()
attacking = false
debounce = false
spinny = 0
ROOTLERP.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
ws = 19
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='8' then
if mouse.Target ~= nil then
if mouse.Target.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
if debounce then return end
debounce = true
attacking = true
enemy = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
SOUND(Torso,862693565,10,false,5)
Character.Shirt.ShirtTemplate = "rbxassetid://0"
arm1.OverlayTextureId = 0
arm2.OverlayTextureId = 653553298
RightArm.BrickColor = BrickColor.new("Really black")
for i = 1, 400 do
if targetfound then break end
local Hit = damagealll(5,Torso.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Parent.Name == enemy.Parent.Name then
targetfound = true
slachtoffer = v:FindFirstChildOfClass("Humanoid")
end
end
if enemy.RigType == Enum.HumanoidRigType.R15 then
hum:MoveTo(enemy.Parent:FindFirstChild("UpperTorso").Position)
else
hum:MoveTo(enemy.Parent:FindFirstChild("Torso").Position)
end
footsteps.Volume = 2
footsteps.Pitch = 2.2
ws = 30
change = 2
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.15,-.3) * CFrame.Angles(math.rad(50 + 5 * math.sin(sine/8)),math.rad(0),math.rad(-10)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-.15,.5) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(-20)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.07 + 0.2*math.sin(sine/3.5), 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/7))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9 - 0.35 * math.cos(sine/7)/2.8, -.3  + 0.2 - math.sin(sine/7)/3.4) * CFrame.Angles(math.rad(25 - 35) + -math.sin(sine/7)/2.3, math.rad(0)*math.cos(sine/7), math.rad(0), math.cos(-15 * 75 * math.cos(sine/7))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9 + 0.35 * math.cos(sine/7)/2.8, -.3 + 0.2 + math.sin(sine/7)/3.4) * CFrame.Angles(math.rad(25 - 35) - -math.sin(sine/7)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(-15 * 75 * math.cos(sine/7))), 0.3)
swait()
end
if targetfound then
ws = 0
enemy.WalkSpeed = 0
SOUND(rightlocation,862701802,9,false,5)
footsteps.Volume = 0
footsteps.Pitch = 1.6
for i = 1, 12 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.175, 0) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.79,.05) * CFrame.Angles(math.rad(190),math.rad(0),math.rad(-10)),.3)
swait()
end
locationpartz = Instance.new("Part",Torso)
locationpartz.Size = Vector3.new(1,1,1)
locationpartz.Anchored = false
locationpartz.Transparency = 1
locationpartz.CanCollide = false
locationpartz.CFrame = rightlocation.CFrame * CFrame.new(0,-1.5,0)
if enemy.RigType == Enum.HumanoidRigType.R15 then
enemy.Parent.UpperTorso.CFrame = locationpartz.CFrame * CFrame.new(1,0,0) * CFrame.Angles(math.rad(-90),0,0)
else
enemy.Parent.Torso.CFrame = locationpartz.CFrame * CFrame.new(1,0,0) * CFrame.Angles(math.rad(-90),0,0)
end
if enemy.RigType == Enum.HumanoidRigType.R15 then
weldofweld = weldBetween(locationpartz,enemy.Parent.UpperTorso)
else
weldofweld = weldBetween(locationpartz,enemy.Parent.Torso)
end
weldofweld.C0 = CFrame.Angles(math.rad(-90),0,0)
locationpartz.Anchored = true
SOUND(RightArm,877870515,7,false,6)
for i = 1, 250 do
locationpartz.CFrame = rightlocation.CFrame * CFrame.new(0,-1.5,0) 
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.44,-.125) * CFrame.Angles(math.rad(48),math.rad(0),math.rad(30)), 0.02)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.175, 0) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(0)), 0.03)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.03)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.03)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.79,.05) * CFrame.Angles(math.rad(190),math.rad(0),math.rad(-12)),.03)
swait()
end
if enemy.RigType == Enum.HumanoidRigType.R15 then
ded = Instance.new("Sound",enemy.Parent.UpperTorso)
else
ded = Instance.new("Sound",enemy.Parent.Torso)
end
ded.SoundId = "rbxassetid://429400881"
ded.Volume = 9
ded.Pitch = .9
ded:Play()
coroutine.wrap(function()
local energyplosion = Instance.new("Part",Torso)
if enemy.RigType == Enum.HumanoidRigType.R15 then
energyplosion.CFrame = enemy.Parent.UpperTorso.CFrame
else
energyplosion.CFrame = enemy.Parent.Torso.CFrame
end
energyplosion.Size = Vector3.new(.1,.1,.1)
energyplosion.BrickColor = BrickColor.new("Alder")
energyplosion.Anchored = true
energyplosion.CanCollide = false
energyplosion.Transparency = 0
energyplosion.Shape = "Ball"
energyplosion.Material = "Neon"
for i = 1, 20 do
enemy.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
energyplosion.Size = energyplosion.Size + Vector3.new(2,2,2)
energyplosion.Transparency = energyplosion.Transparency + .05
swait()
end
hum.CameraOffset = Vector3.new(0,0,0)
enemy.CameraOffset = Vector3.new(0,0,0)
energyplosion:Remove()
end)()
locationpartz:Remove()
targetfound = false
arm1.MeshId = 303665934
arm1.OverlayTextureId = 1539341292
arm2.MeshId = 98332573
arm2.OverlayTextureId = 6347925
footsteps.Volume = 0
Character.Shirt.ShirtTemplate = "rbxassetid://863473913"

coroutine.wrap(function()
tauntsoundz = Instance.new("Sound", Head)
tauntsoundz.Volume = 10
tauntsoundz.SoundId = "rbxassetid://246480487"
tauntsoundz.Looped = false
tauntsoundz:Play()
wait(3)
wait(tauntsoundz.TimeLength)
tauntsoundz:Remove()
end)()
change = .5
for i = 1, 90 do 
swait()
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165, 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.64 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.9 + .02 * math.sin(sine/12),.05) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
end
attacking = false
debounce = false
else
footsteps.Pitch = 1.6
targetfound = false
arm1.MeshId = 303665934
arm1.OverlayTextureId = 1539341292
arm2.MeshId = 98332573
arm2.OverlayTextureId = 6347925
footsteps.Volume = 0
Character.Shirt.ShirtTemplate = "rbxassetid://863473913"
debounce = false
attacking = false
end
end
end
elseif Press=='y' then
if debounce then return end
debounce = true
attacking = true
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
local chargo = Instance.new("Sound",rightlocation)
chargo.SoundId = "rbxassetid://306181935"
chargo.Volume = 7
chargo.Looped = false
chargo.Pitch = 1.1
chargo:Play()
removeuseless:AddItem(chargo,5)
for i = 1, 120 do
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Alder")
sk.Name = "sk"
sk.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.01,.001,.01)
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.01,0,.01)
sk.Transparency = sk.Transparency + .05
swait()
end
sk:Remove()
end)()
coroutine.wrap(function()
local wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new("Alder")
wshockwave.CFrame = CFrame.new(rightlocation.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
for i = 1, 20 do
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(1,0,1)
wshockwave.Transparency = wshockwave.Transparency + .05
swait()
end
wshockwave:Remove()
end)()
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(2), math.rad(-40), math.rad(0)), 0.03)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.3,1.8,-0) * CFrame.Angles(math.rad(-120),math.rad(99),math.rad(0)),.03)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.03)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.03)
swait()
end
coroutine.wrap(function()
local bullet = Instance.new("Part",Torso)
bullet.CanCollide = false
bullet.Anchored = false
bullet.Size = Vector3.new(2,2,2)
bullet.Transparency = .5
bullet.Shape = "Ball"
bullet.Material = "Neon"
bullet.BrickColor = BrickColor.new("Alder")
bullet.CFrame = rightlocation.CFrame
energloop = Instance.new("Sound",bullet)
energloop.Volume = 6
energloop.SoundId = "rbxassetid://2607597779"
energloop.Looped = true
MAKETRAIL(bullet,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),.5,ColorSequence.new(BrickColor.new("Alder").Color,BrickColor.new("Eggplant").Color))
local bov = Instance.new("BodyVelocity",bullet)
bov.maxForce = Vector3.new(99999,99999,99999)
bullet.CFrame = CFrame.new(bullet.Position,mouse.Hit.p)
bov.velocity = bullet.CFrame.lookVector*180
for i = 1, 225 do
local Hit = damagealll(15,bullet.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v.Name ~= Player.Name then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(-math.huge)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(bullet.Position,torso.Position).lookVector*120
removeuseless:AddItem(vel,.1)
end
end
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Alder")
sk.Name = "sk"
sk.CFrame = bullet.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.01,.001,.01)
coroutine.wrap(function()
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.03,0,.03)
sk.Transparency = sk.Transparency + .05
swait()
end
sk:Remove()
end)()
local wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new("Alder")
wshockwave.CFrame = CFrame.new(bullet.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
coroutine.wrap(function()
for i = 1, 20 do
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(3,0,3)
wshockwave.Transparency = wshockwave.Transparency + .05
swait()
end
wshockwave:Remove()
end)()
swait()
end
bullet:Remove()
end)()
energloop:Play()
local bems = Instance.new("Sound",rightlocation)
bems.SoundId = "rbxassetid://1351572613"
bems.Volume = 8
bems:Play()
removeuseless:AddItem(bems,5)
for i = 1, 12 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(.2,1.4,-.3) * CFrame.Angles(math.rad(90),math.rad(230),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(-8), math.rad(60), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
elseif Press=='u' then
if mouse.Target ~= nil then
if mouse.Target.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
if debounce then return end
debounce = true
attacking = true
enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
ETorso = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("LowerTorso")
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
local chargo = Instance.new("Sound",rightlocation)
chargo.SoundId = "rbxassetid://306181935"
chargo.Volume = 7
chargo.Looped = false
chargo.Pitch = 1.1
chargo:Play()
removeuseless:AddItem(chargo,5)
for i = 1, 120 do
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Alder")
sk.Name = "sk"
sk.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.01,.001,.01)
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.01,0,.01)
sk.Transparency = sk.Transparency + .05
swait()
end
sk:Remove()
end)()
coroutine.wrap(function()
local wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new("Alder")
wshockwave.CFrame = CFrame.new(rightlocation.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
for i = 1, 20 do
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(1,0,1)
wshockwave.Transparency = wshockwave.Transparency + .05
swait()
end
wshockwave:Remove()
end)()
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(2), math.rad(-40), math.rad(0)), 0.03)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-.3,1.8,-0) * CFrame.Angles(math.rad(-120),math.rad(99),math.rad(0)),.03)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.03)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.03)
swait()
end
coroutine.wrap(function()
local bullet = Instance.new("Part",Torso)
bullet.CanCollide = false
bullet.Anchored = false
bullet.Size = Vector3.new(2,2,2)
bullet.Transparency = .5
bullet.Shape = "Ball"
bullet.Material = "Neon"
bullet.BrickColor = BrickColor.new("Alder")
bullet.CFrame = rightlocation.CFrame
energloop = Instance.new("Sound",bullet)
energloop.Volume = 6
energloop.SoundId = "rbxassetid://2607597779"
energloop.Looped = true
MAKETRAIL(bullet,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),.5,ColorSequence.new(BrickColor.new("Alder").Color,BrickColor.new("Eggplant").Color))
maxsped = 45
local bov = Instance.new("RocketPropulsion",bullet)
bov.MaxThrust = 4000
bov.MaxSpeed = maxsped
bov.MaxTorque = Vector3.new(99999999,99999999,99999999)
bov.Target = ETorso
bov.TargetRadius = math.huge
bov:fire()
for i = 1, 1001 do
maxsped = maxsped + 1
bov.MaxSpeed = maxsped
local Hit = damagealll(15,bullet.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v.Name ~= Player.Name then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(-math.huge)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(bullet.Position,torso.Position).lookVector*150
removeuseless:AddItem(vel,.1)
end
end
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Alder")
sk.Name = "sk"
sk.CFrame = bullet.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.01,.001,.01)
coroutine.wrap(function()
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.03,0,.03)
sk.Transparency = sk.Transparency + .05
swait()
end
sk:Remove()
end)()
local wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new("Alder")
wshockwave.CFrame = CFrame.new(bullet.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
coroutine.wrap(function()
for i = 1, 20 do
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(3,0,3)
wshockwave.Transparency = wshockwave.Transparency + .05
swait()
end
wshockwave:Remove()
end)()
swait()
end
bullet:Remove()
end)()
energloop:Play()
local bems = Instance.new("Sound",rightlocation)
bems.SoundId = "rbxassetid://1351572613"
bems.Volume = 8
bems:Play()
removeuseless:AddItem(bems,5)
for i = 1, 12 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(.2,1.4,-.3) * CFrame.Angles(math.rad(90),math.rad(230),math.rad(0)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(38 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(-8), math.rad(60), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
end
end
elseif Press=='t' then
if oofing then return end
if dedlaff then return end
if tauntdebounce == true then return end
if debounce then return end
debounce = true
attacking = true
ws = 4
coroutine.wrap(function()
for i = 1, 60 do 
swait()
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165, 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.64 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.9 + .02 * math.sin(sine/12),.05) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
end
debounce = false
attacking = false
ws = 19
end)()
tauntdebounce = true
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://246480487"
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='r' then
if mouse.Target ~= nil then
if mouse.Target.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
if debounce then return end
debounce = true
attacking = true
ws = 8
enemy = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
for i = 1, 20 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-2), math.rad(40), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(.3,1.62,-.07) * CFrame.Angles(math.rad(-120),math.rad(-99),math.rad(0)),.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, .3) * CFrame.Angles(math.rad(25), math.rad(0)*math.cos(sine/7), math.rad(-2)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9,-.2) * CFrame.Angles(math.rad(-25), math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
swait()
end
for i = 1, 20 do
if grabbed then break end
local Hit = damagealll(5,rightlocation.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Parent.Name == enemy.Parent.Name then
grabbed = true
slachtoffer = v:FindFirstChildOfClass("Humanoid")
end
end
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, .3) * CFrame.Angles(math.rad(25), math.rad(0)*math.cos(sine/7), math.rad(-2)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9,-.2) * CFrame.Angles(math.rad(-25), math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.25,-.18,.2) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(0)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-2), math.rad(-40), math.rad(0)), 0.3)
swait()
end
if grabbed then
change = .5
ws = 0
jp = 0
enemyweld = weldBetween(enemy.Parent.Head,leftlocation)
enemyweld.C0 = CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180))
for i = 1, 35 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)),math.rad(0),math.rad(0)),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.4 + .02 * math.sin(sine/12),.10 * -math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 10 * math.sin(sine/12)),math.rad(0),math.rad(-25)), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), .1) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(-10)), 0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), .1) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(10)), 0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.8,.39) * CFrame.Angles(math.rad(-138),math.rad(0),math.rad(0)),.3)
swait()
end
rawr = Instance.new("Sound",Head)
rawr.SoundId = "rbxassetid://246480487"
rawr.Volume = 8
rawr.Pitch = 1.05
rawr:Play()
wait(.35)
for i = 1, 60 do
if enemy.Health > 1 then
enemy:TakeDamage(-math.huge)
end
hum.CameraOffset = Vector3.new(math.random(-1,1),0,math.random(-1,1))
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165, 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.9 + .02 * math.sin(sine/12),.05) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
swait()
end
hum.CameraOffset = Vector3.new(0,0,0)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 25 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, .3) * CFrame.Angles(math.rad(25), math.rad(0)*math.cos(sine/7), math.rad(-2)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9,-.2) * CFrame.Angles(math.rad(-25), math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.2,.39) * CFrame.Angles(math.rad(-90),math.rad(30),math.rad(0)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165, 0) * CFrame.Angles(math.rad(-0),math.rad(40),math.rad(0)),.1)
swait()
end
g1:Remove()
enemyweld:Remove()
throwo = Instance.new("Sound",enemy.Parent.Head)
throwo.SoundId = "rbxassetid://2314640406"
throwo.Volume = 10
throwo.Pitch = .95
throwo:Play()
enemy:TakeDamage(-math.huge)
removeuseless:AddItem(throwo,4)
local bov = Instance.new("BodyVelocity",enemy.Parent.Head)
bov.maxForce = Vector3.new(99999,99999,99999)
enemy.Parent.Head.CFrame = CFrame.new(enemy.Parent.Head.Position,mouse.Hit.p)
bov.velocity = enemy.Parent.Head.CFrame.lookVector*100
removeuseless:AddItem(bov,.25)
for i = 1, 25 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2, .1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.25,-.18,.2) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(0)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165, 0) * CFrame.Angles(math.rad(-0),math.rad(-40),math.rad(0)),.1)
swait()
end
jp = 85
grabbed = false
debounce = false
attacking = false
else
ws = 19
jp = 85
grabbed = false
debounce = false
attacking = false
end
end
end
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='e' then
if debounce then return end
debounce = true
attacking = true
coroutine.wrap(function()
if dash1 then
dash1 = false
dash2 = true
for i = 1, 30 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.15,-.3) * CFrame.Angles(math.rad(50 + 5 * math.sin(sine/8)),math.rad(0),math.rad(-10)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-.15,.5) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(-20)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/7))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, .3) * CFrame.Angles(math.rad(25), math.rad(0)*math.cos(sine/7), math.rad(-2)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9,-.2) * CFrame.Angles(math.rad(-25), math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
swait()
end
elseif dash2 then
dash1 = true
dash2 = false
for i = 1, 30 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.15,-.3) * CFrame.Angles(math.rad(50 + 5 * math.sin(sine/8)),math.rad(0),math.rad(-10)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-.15,.5) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(-20)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/7))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, -.2) * CFrame.Angles(math.rad(-25), math.rad(0)*math.cos(sine/7), math.rad(-2)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9,.3) * CFrame.Angles(math.rad(25), math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
swait()
end
end
end)()
local boomsound = Instance.new("Sound",Torso)
boomsound.SoundId = "rbxassetid://1177784919"
boomsound.Volume = 8
boomsound:Play()
removeuseless:AddItem(boomsound,5)
local tornadotwistloc = Instance.new("Part",Torso)
tornadotwistloc.CFrame = Root.CFrame
tornadotwistloc.Anchored = true
tornadotwistloc.Transparency = 1
tornadotwistloc.CanCollide = false
tornadotwistloc.Size = Vector3.new(1,1,1)
twist = 0
grassblocksloc = Instance.new("Part",Torso)
grassblocksloc.Size = Vector3.new(1,1,1)
grassblocksloc.CanCollide = false
grassblocksloc.Transparency = 1
grassblocksloc.Anchored = false
grassblockslocweld = weldBetween(grassblocksloc,Torso)
grassblockslocweld.C0 = CFrame.new(4,4,0)
grassblocksloc2 = Instance.new("Part",Torso)
grassblocksloc2.Size = Vector3.new(1,1,1)
grassblocksloc2.CanCollide = false
grassblocksloc2.Transparency = 1
grassblocksloc2.Anchored = false
grassblockslocweld2 = weldBetween(grassblocksloc2,Torso)
grassblockslocweld2.C0 = CFrame.new(-4,4,0)
coroutine.wrap(function()
for i = 1, 30 do
Hit = damagealll(16,Torso.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
slachtoffer:TakeDamage(-math.huge)
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*90
removeuseless:AddItem(vel,.1)
end
end
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Alder")
sk.Name = "sk"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
local energys = Instance.new("Part",Torso)
energys.Size = Vector3.new(3.5,3.5,3.5)
energys.Material = "Neon"
energys.BrickColor = BrickColor.new("Alder")
energys.Anchored = true
energys.CanCollide = false
energys.CFrame = grassblocksloc.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local energys2 = Instance.new("Part",Torso)
energys2.Size = Vector3.new(3.5,3.5,3.5)
energys2.Material = "Neon"
energys2.BrickColor = BrickColor.new("Alder")
energys2.Anchored = true
energys2.CanCollide = false
energys2.CFrame = grassblocksloc2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.01,0,.01)
sk.Transparency = sk.Transparency + .05
energys2.Transparency = energys2.Transparency + .05
energys.Transparency = energys.Transparency + .05
swait()
end
sk:Remove()
energys2:Remove()
energys:Remove()
end)()
Root.CFrame = Root.CFrame * CFrame.new(0,0,-2.4)
swait()
end
debounce = false
attacking = false
end)()
coroutine.wrap(function()
local wind = Instance.new("Part", Torso)
wind.Size = Vector3.new(0.5, 0.5, 0.5)
wind.Material = "Neon"
wind.BrickColor = BrickColor.new("Really white")
wind.Transparency = .5
wind.Anchored = true
wind.CanCollide = false
wind.CFrame = tornadotwistloc.CFrame * CFrame.Angles(math.rad(90),0,0)
windMESH = Instance.new("SpecialMesh", wind)
windMESH.Scale = Vector3.new(4.5,7.5,4.5)
windMESH.MeshId = "rbxassetid://168892432"
local wind2 = Instance.new("Part", Torso)
wind2.Size = Vector3.new(0.5, 0.5, 0.5)
wind2.Material = "Neon"
wind2.BrickColor = BrickColor.new("Really white")
wind2.Transparency = .5
wind2.Anchored = true
wind2.CanCollide = false
wind2.CFrame = tornadotwistloc.CFrame * CFrame.Angles(math.rad(90),0,0)
windMESH2 = Instance.new("SpecialMesh", wind2)
windMESH2.Scale = Vector3.new(2.5,5.5,2.5)
windMESH2.MeshId = "rbxassetid://168892432"
for i = 1, 50 do
twist = twist + 11
windMESH.Scale = windMESH.Scale + Vector3.new(.35,.35,.35)
windMESH2.Scale = windMESH2.Scale + Vector3.new(.35,.35,.35)
wind.CFrame = tornadotwistloc.CFrame * CFrame.Angles(math.rad(90),math.rad(twist),0)
wind2.CFrame = tornadotwistloc.CFrame * CFrame.Angles(math.rad(90),math.rad(-twist),0)
wind.Transparency = wind.Transparency + .015
wind2.Transparency = wind2.Transparency + .015
swait()
end
wind:Remove()
wind2:Remove()
end)()
end
end)

checks1 = coroutine.wrap(function() -------Checks
while true do
hf = ray(Root.Position,(CFrame.new(Root.Position,Root.Position+Vector3.new(0,-1,0))).lookVector,3*3,Character)
if Root.Velocity.y > 1 and hf == nil then
position = "Jump"
elseif Root.Velocity.y < -1 and hf == nil then
position = "Falling"
elseif Root.Velocity.Magnitude < 2 and hf ~= nil then
position = "Idle"
elseif Root.Velocity.Magnitude > 2 and hf ~= nil then
position = "Walking"
end
wait()
end
end)
checks1()

oofing = true
hum.HealthChanged:Connect(function(healthz)
if tauntdebounce then return end
if dedlaff then return end
if oofing then return end
oofing = true
ouchtable = beingattackedtable[math.random(1,#beingattackedtable)]
ouch = Instance.new("Sound",Head)
ouch.SoundId = "rbxassetid://"..ouchtable
ouch.Volume = 8
ouch:Play()
wait(1)
wait(ouch.TimeLength)
ouch:Remove()
wait(1)
oofing = false
end)
coroutine.wrap(function()
wait(2)
oofing = false
end)()

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.Stepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
                                hum.Name = "nightfall"
			end
		end
	end
end
alreadyflip = false
function jumpsound()
if alreadyflip then return end
alreadyflip = true
flipsound = Instance.new("Sound",Torso)
flipsound.SoundId = "rbxassetid://1031614266"
flipsound.Volume = 2
flipsound.Pitch = 1
flipsound:Play()
removeuseless:AddItem(flipsound,2)
wait(1)
alreadyflip = false
end
coroutine.wrap(function()
while true do
if hum.Health < .1 then
deadsound = Instance.new("Sound", Torso)
deadsound.Volume = 6
deadsound.SoundId = "rbxassetid://1411352723"
deadsound:Play()
immortality()
end
wait()
end
end)()
spinny = 0
local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Jump" and attacking == false then
coroutine.wrap(function()
jumpsound()
end)()
spinny = spinny - 18
change = 1
ws = 35
footsteps.Volume = 0
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(spinny), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-10)), 0.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
elseif position == "Falling" and attacking == false then
change = 1
ws = 19
spinny = 0
footsteps.Volume = 0
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, .5) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, .5) * CFrame.Angles(math.rad(8), math.rad(-4), math.rad(0)), 0.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.64 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.9 + .02 * math.sin(sine/12),.05) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
elseif position == "Walking" and attacking == false and running == false then
change = 1.2
if invisible then
ws = 30
else
ws = 19
end
walking = true
spinny = 0
footsteps.Volume = 2
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.15,-.3) * CFrame.Angles(math.rad(50 + 5 * math.sin(sine/8)),math.rad(0),math.rad(-10)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-.15,.5) * CFrame.Angles(math.rad(-70),math.rad(40),math.rad(-20)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.07 + 0.2*math.sin(sine/3.5), 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/7))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9 - 0.35 * math.cos(sine/7)/2.8, -.3  + 0.2 - math.sin(sine/7)/3.4) * CFrame.Angles(math.rad(25 - 35) + -math.sin(sine/7)/2.3, math.rad(0)*math.cos(sine/7), math.rad(0), math.cos(-15 * 75 * math.cos(sine/7))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9 + 0.35 * math.cos(sine/7)/2.8, -.3 + 0.2 + math.sin(sine/7)/3.4) * CFrame.Angles(math.rad(25 - 35) - -math.sin(sine/7)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(-15 * 75 * math.cos(sine/7))), 0.3)
elseif position == "Idle" and attacking == false and running == false then
change = .5
if invisible then
ws = 30
else
ws = 19
end
spinny = 0
footsteps.Volume = 0
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.165 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)),math.rad(0),math.rad(0)),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.14 + .02 * math.sin(sine/12),-.125) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.4 + .02 * math.sin(sine/12),.10 * -math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 10 * math.sin(sine/12)),math.rad(0),math.rad(-25)), 0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), .1) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(-10)), 0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), .1) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(10)), 0.1)
end
swait()
end
end)
anims()
warn("He's here. Made by Supr14")
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 100
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").AutoJumpEnabled = true
game.Players.LocalPlayer.Character.RockAccessory.Handle:BreakJoints()
local rock1 = game.Players.LocalPlayer.Character.RockAccessory.Handle
game["Run Service"].Heartbeat:Connect(function()
rock1.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
end)
Destroy_Mesh("RockAccessory")