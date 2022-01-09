if syn then
    local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Synapse X detected!";
    Text = "Synapse X has been detected! Running new reanimation with R15 support and R6 support. Please wait a few moments...";
    Duration = 5;
})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua"))()
    else
        local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Other executor detected!";
    Text = "Unfortunately, because you are not using Synapse X, you cannot use the new reanimation. You will only have R6 support with fling. You can buy Synapse X at https://x.synapse.to";
    Duration = 5;
})
        Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
hed.Massless = true
hed.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
torso.Massless = true
torso.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rarm.Massless = true
rarm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
larm.Massless = true
larm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
lleg.Massless = true
lleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rleg.Massless = true
rleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
root.Massless = true
root.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
warn("Netless Activated!")
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character



bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
     return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

     bbv = Instance.new("BodyPosition",bhandle)
     bbv.Position = char.Torso.CFrame.p
   
     
     
     mouse.Button1Down:Connect(function()
         if dead == false then
        lt = false
        ltt = false
     bbav = Instance.new("BodyAngularVelocity",bhandle)
     bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
     bbav.P = 1000000000000000000000000000
     bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
     game:GetService("Debris"):AddItem(bbav,0.1)
        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
              --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
            --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
            
            else
       -- repeat 
        game:GetService("RunService").RenderStepped:Wait()
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(0,26,0)
         end
    end)

 plr:GetMouse().Button1Down:Connect(function()
attackingwithhrp = true	
end)

 
plr:GetMouse().Button1Up:Connect(function()
attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
repeat wait() until attackingwithhrp == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
until attackingwithhrp == false
end)
end
---//===================================================\\----
---||		      EDITED BY Witherower#9294				||----
---\\===================================================//----
 
local ToolName = "MeshPartAccessory"
 
local RUNNING = false
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local Player = game:GetService("Players").LocalPlayer
local Character = game.Workspace.non
local mouse = Player:GetMouse()
local Mouse = mouse
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local debris = game:GetService("Debris")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local cam = workspace.CurrentCamera
local HUM = Character.Humanoid
local ROOT = HUM.Torso
local MOUSEPOS = ROOT.Position
local DAMAGEMULTIPLIER = 1
local TERRIBLE = {}  
 
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
 
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//
 
local sick = IT("Sound",Character)
Animation_Speed = 1.75
Animation_Speed2 = 5
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 15
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local FIRECOLOR = C3(0,0,0)
 
local Musika = IT("Sound", RootPart)
local Volu = 6
local Pitch = 1
local Song = 773296297
local TSPT, TVY, TSTP
 
local Musika2 = IT("Sound", RootPart)
local Volu2 = 5
local Pitch2 = 1
local Song2 = 0
local TSPT2, TVY2, TSTP2
 
local Player_Size = 1
local WALKINGANIM = false
local SCALE = 2
 
local Decal = IT("Decal")
local STUFF = Instance.new("Folder",Character)
 
local SLASHES = 1
 
local HITPLAYERSOUNDS = {"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
 
local SWORDEQUIPPED = false
local TOBANISH = {}
local TOBAN = {}
local MODE = 1
local GUNEQUIPPED = false
local val = nil
 
-----------------------------------
 
local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
}
 
local MATERIALS = {
	Enum.Material.Brick,
	Enum.Material.Cobblestone,
	Enum.Material.Concrete,
	Enum.Material.CorrodedMetal,
	Enum.Material.DiamondPlate,
	Enum.Material.Fabric,
	Enum.Material.Foil,
	Enum.Material.ForceField,
	Enum.Material.Glass,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.Ice,
	Enum.Material.Marble,
	Enum.Material.Metal,
	Enum.Material.Neon,
	Enum.Material.Pebble,
	Enum.Material.Plastic,
	Enum.Material.Sand,
	Enum.Material.Slate,
	Enum.Material.SmoothPlastic,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks
}
 
-----------------------------------
function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end
function swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end
-----------------------------------
 
--><Some Functions
 
function AttackGyro()
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,4000000,0)
	GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		until ATTACK == false
		GYRO:Remove()
	end))
end
 
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = VT(x1,y1,z1)
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end
 
function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = VT(x1,y1,z1)
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = VT(x1,y1,z1)
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
local LIGHTNING = Instance.new("ParticleEmitter")
LIGHTNING.Texture = "http://www.roblox.com/asset/?id=243098098"
LIGHTNING.LightEmission = 0
LIGHTNING.LockedToPart = true
LIGHTNING.Color = ColorSequence.new(C3(1,1,0))
LIGHTNING.Rate = 100
LIGHTNING.Lifetime = NumberRange.new(0.1,0.10)
LIGHTNING.Rotation = NumberRange.new(0,360)
LIGHTNING.Size = NumberSequence.new(1)
LIGHTNING.Transparency = NumberSequence.new(0,0)
LIGHTNING.Speed = NumberRange.new(0,0)
LIGHTNING.RotSpeed = NumberRange.new(0,0)
LIGHTNING.Enabled = true
 
function createBGCircle(size,parent,color)
local bgui = Instance.new("BillboardGui",parent)
bgui.Size = UDim2.new(size, 0, size, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 0
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547"
imgc.ImageColor3 = C3(1,1,0)
return bgui,imgc
end
 
function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end
 
function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = VT(x1,y1,z1)
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function createmesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end
 
function waveEff(bonuspeed,type,typeoftrans,pos,scale,value,value2,color)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("New Yeller")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
		rng.Color = C3(1,1,0)
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
rngm.MeshId = "rbxassetid://20329976"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
end
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(5*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-5*bonuspeed/2),0)
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.Color = C3(1,1,0)
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end
 
function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.Color = C3(1,1,0)
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = C3(1,1,0)
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end
 
function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = Effects
p.Size = Vector3.new(0.05,0.05,0.05)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.Color = C3(1,1,0)
p.Material = material
return p
end
 
function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.Color = C3(1,1,0)
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end
 
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
function weldSomethings(a, b, acf)
    local we = Instance.new("Weld", a)
    we.Part0 = a
    we.Part1 = b
if acf ~= nil then
    we.C0 = acf
end
end
function QuaternionFromCFrame(CF)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = CF:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = 2
		NEWSOUND.Pitch = .8
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end 
function Wyvern(Size,DoesBurn)
	local WYVERN = IT("Model")
	local BASEPART = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Wyvern Base",(VT(1, 7.2, 1)*1.5)*Size,false)
	local BASEWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, BASEPART, CF(0,0,0), CF(0, 0, 0))
	CreateMesh("SpecialMesh", BASEPART, "FileMesh", "90615474", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	local RWING = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Right Wing", (VT(2, 3, 2)*1.5)*Size,false)
	local RWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, RWING, CF(2*Size , 2*Size, 0.75*Size), CF(-2*Size, 0, 0))
	local LWING = CreatePart(3, WYVERN, "Neon", 0, 0.5, "Deep orange", "Left Wing", (VT(2, 3, 2)*1.5)*Size,false)
	local LWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, LWING, CF(-2*Size , 2*Size, 0.75*Size), CF(2*Size, 0, 0))
	CreateMesh("SpecialMesh", RWING, "FileMesh", "90615661", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	CreateMesh("SpecialMesh", LWING, "FileMesh", "90615581", "", VT(1.5,1.5,1.5)*Size, VT(0,0,0))
	for _, c in pairs(WYVERN:GetChildren()) do
		if c.ClassName == "Part" then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			c.Color = FIRECOLOR
		end
	end
	WYVERN.Parent = Effects
	if DoesBurn == false then
		return WYVERN,BASEPART,RWING,LWING,BASEWELD,RWELD,LWELD
	elseif DoesBurn == true then
		local BodyFire = BurningLimb(BASEPART)
		BodyFire.Size = NumberSequence.new(Size,0)
		BodyFire.Acceleration = VT(0,2*Size,0)
		local RightWingFire = BurningLimb(RWING)
		RightWingFire.Size = NumberSequence.new(Size,0)
		RightWingFire.Acceleration = VT(0,6*Size,0)
		local LeftWingFire = BurningLimb(LWING)
		LeftWingFire.Size = NumberSequence.new(Size,0)
		LeftWingFire.Acceleration = VT(0,6*Size,0)
		BodyFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		RightWingFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		LeftWingFire.Color = ColorSequence.new(FIRECOLOR,C3(1,1,1))
		return WYVERN,BASEPART,RWING,LWING,BASEWELD,RWELD,LWELD,BodyFire,RightWingFire,LeftWingFire
	end
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function MagicRing()
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Warphole", VT(0, 0, 0))
	O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(0), RAD(0))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=0"
	local decal2 = Decal:Clone()
	decal2.Parent = O1
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=0"
	return O1
end
function MagicRing2(PART,CFRAME)
	local RING = CreatePart(3, Effects, "Neon", 0, 1, "New Yeller", "MagicRing", VT(0,0,0),false)
	local WELD = CreateWeldOrSnapOrMotor("Weld", PART, PART, RING, CFRAME, CF(0, 0, 0))
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = Decal:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = Decal:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	local LIGHT = IT("PointLight",RING)
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	return RING,WELD,MESH
end
local DECAL = IT("Decal")
function MagicRing3()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=0"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=0"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function SpecialSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Eye", VT(1,1,1), true)
    wave.Color = COLOR
    local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = C3(1,1,0)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end 
function Lightning(Part0, Part1, Times, Offset, Color, Timer, sSize, eSize, Trans, Boomer, sBoomer, slow, stime)
  local magz = (Part0 - Part1).magnitude
  local curpos = Part0
  local trz = {
    -Offset,
    Offset
  }
  for i = 1, Times do
    local li = Instance.new("Part", Effects)
    li.Name = "Lightning"
    li.TopSurface = 0
    li.Material = "Neon"
    li.BottomSurface = 0
    li.Anchored = true
    li.Locked = true
    li.Transparency = 0
    li.BrickColor = Color
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(0.1, 0.1, magz / Times)
    local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
    if Times == i then
      local magz2 = (curpos - Part1).magnitude
      li.Size = Vector3.new(0.1, 0.1, magz2)
      li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
    else
      li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
    end
    curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
    li:Destroy()
	WACKYEFFECT({Time = Timer, EffectType = "Box", Size = Vector3.new(sSize,sSize,li.Size.Z), Size2 = Vector3.new(eSize,eSize,li.Size.Z), Transparency = Trans, Transparency2 = 1, CFrame = li.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = li.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = Boomer, Boomerang = 0, SizeBoomerang = sBoomer})
  	if slow == true then
	swait(stime)
	end
  end
end
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end
 
function Debree(Table)
	local KindOf = Table.Variant or "Ring"
	local Position = Table.Location or Torso.Position
	local Coloration = Table.Color or C3(1, 1, 1)
	local Texture = Table.Material or "Slate"
	local Fling = Table.Scatter or 1
	local Number = Table.Amount or 1
	local Rocks = Table.DebreeCount or 1
	local Range = Table.Distance or 1
	local Scale = Table.Size or 1
	local Timer = Table.Delay or 1.5
	coroutine.resume(coroutine.create(function()
		local ScaleVector = VT(Scale, Scale, Scale)
		local Boulders = {}
		Position = CF(Position)
		if KindOf == "Ring" or KindOf == "Both" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), Range)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Loose" or KindOf == "Both" then
			for RockValue = 1, Rocks do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale - Scale / 2), math.ceil(Scale - Scale / 2)), 0.7)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Velocity = CF(BOULDER.Position - VT(0, 4, 0), BOULDER.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 5, 0).p).lookVector * MRANDOM(Fling - Fling / 1.5, Fling + Fling / 1.5)
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Random" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), MRANDOM(0, Range))
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		wait(Timer)
		for E = 1, 45 do
			Swait()
			for A = 1, #Boulders do
				Boulders[A].Transparency = Boulders[A].Transparency + 0.022222222222222223
			end
		end
		for A = 1, #Boulders do
			Boulders[A]:Destroy()
		end
	end))
end
 
function CameraShake(AREA,RANGE,SHAKE,TIMER)
	if true then return end
end
 
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
function weldSomethings(a, b, acf)
    local we = Instance.new("Weld", a)
    we.Part0 = a
    we.Part1 = b
if acf ~= nil then
    we.C0 = acf
end
end
function QuaternionFromCFrame(CF)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = CF:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.EmitterSize = VOLUME * 3
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end 
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function MagicRing()
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Warphole", VT(0, 0, 0))
	O1.CFrame = RootPart.CFrame * CF(0, 0, -3) * ANGLES(RAD(90), RAD(0), RAD(0))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=0"
	local decal2 = Decal:Clone()
	decal2.Parent = O1
	decal2.Face = "Bottom"
	decal2.Texture = "http://www.roblox.com/asset/?id=0"
	return O1
end
function MagicRing2(PART,CFRAME)
	local RING = CreatePart(3, Effects, "Neon", 0, 1, "New Yeller", "MagicRing", VT(0,0,0),false)
	local WELD = CreateWeldOrSnapOrMotor("Weld", PART, PART, RING, CFRAME, CF(0, 0, 0))
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = Decal:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = Decal:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	local LIGHT = IT("PointLight",RING)
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=2829906887"
	return RING,WELD,MESH
end
local DECAL = IT("Decal")
function MagicRing3()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=0"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=0"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function SpecialSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Eye", VT(1,1,1), true)
    wave.Color = COLOR
    local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = C3(1,1,0)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end      
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end
function SpawnTrail(FROM,TO,BIG)
local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end
 
function Debree(Table)
	local KindOf = Table.Variant or "Ring"
	local Position = Table.Location or Torso.Position
	local Coloration = Table.Color or C3(1, 1, 1)
	local Texture = Table.Material or "Slate"
	local Fling = Table.Scatter or 1
	local Number = Table.Amount or 1
	local Rocks = Table.DebreeCount or 1
	local Range = Table.Distance or 1
	local Scale = Table.Size or 1
	local Timer = Table.Delay or 1.5
	coroutine.resume(coroutine.create(function()
		local ScaleVector = VT(Scale, Scale, Scale)
		local Boulders = {}
		Position = CF(Position)
		if KindOf == "Ring" or KindOf == "Both" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), Range)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Loose" or KindOf == "Both" then
			for RockValue = 1, Rocks do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale - Scale / 2), math.ceil(Scale - Scale / 2)), 0.7)
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, false)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Velocity = CF(BOULDER.Position - VT(0, 4, 0), BOULDER.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 5, 0).p).lookVector * MRANDOM(Fling - Fling / 1.5, Fling + Fling / 1.5)
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		if KindOf == "Random" then
			for RockValue = 1, Number do
				local LOCATION = Position * ANGLES(RAD(0), RAD(360 / Number * RockValue), RAD(0)) * CF(0, MRANDOM(-math.ceil(Scale / 2), math.ceil(Scale / 2)), MRANDOM(0, Range))
				local BOULDER = CreatePart(3, workspace, Texture, 0, 0, BRICKC("Pearl"), "Debree", ScaleVector, true)
				BOULDER.CanCollide = true
				BOULDER.CFrame = LOCATION * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				BOULDER.Color = Coloration
				table.insert(Boulders, BOULDER)
			end
		end
		wait(Timer)
		for E = 1, 45 do
			Swait()
			for A = 1, #Boulders do
				Boulders[A].Transparency = Boulders[A].Transparency + 0.022222222222222223
			end
		end
		for A = 1, #Boulders do
			Boulders[A]:Destroy()
		end
	end))
end
 
function CameraShake(AREA,RANGE,SHAKE,TIMER)
	if true then return end
end
 
function AdvancedChatfunc(Text, Timer, Delay, ChatterSound)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(80, 35, 3, 15)
		naeeym2.StudsOffset = VT(0, 5, 0)
		naeeym2.Adornee = Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
		tecks2.TextSize = 35
		tecks2.TextStrokeTransparency = 0.3
		tecks2.TextColor3 = C3(0,0,0)
		tecks2.TextStrokeColor3 = C3(0,0,0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		local DONE = false
		coroutine.wrap(function()
			while wait() do
				tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
				tecks2.TextColor3 = C3(0,0,0)
				tecks2.TextStrokeColor3 = C3(0,0,0)
				if DONE == true then
					break
				end
			end
		end)()
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				if ChatterSound ~= false and naeeym2.Parent == Character then
					CreateSound(265970978, Head, 7, MRANDOM(-6,12)/4, false)
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(Delay)
		naeeym2.Name = "FadingDialogue"
		if Character:FindFirstChild("SpeechBoard") == nil then
			coroutine.resume(coroutine.create(function()
				for i = 1, 35 do
					Swait()
				end
			end))
		end
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
		DONE = true
	end)
	chat()
end
 
function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end
 
function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),STRENGTH,MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end
 
function AdvancedChatfunc(Text, Timer, Delay, ChatterSound)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(80, 35, 3, 15)
		naeeym2.StudsOffset = VT(0, 5, 0)
		naeeym2.Adornee = Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
		tecks2.TextSize = 35
		tecks2.TextStrokeTransparency = 0.3
		tecks2.TextColor3 = C3(0,0,0)
		tecks2.TextStrokeColor3 = C3(0,0,0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		local DONE = false
		coroutine.wrap(function()
			while wait() do
				tecks2.Font = FONTS[MRANDOM(1,#FONTS)]
				tecks2.TextColor3 = C3(0,0,0)
				tecks2.TextStrokeColor3 = C3(0,0,0)
				if DONE == true then
					break
				end
			end
		end)()
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				if ChatterSound ~= false and naeeym2.Parent == Character then
					CreateSound(265970978, Head, 7, MRANDOM(-6,12)/4, false)
				end
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(Delay)
		naeeym2.Name = "FadingDialogue"
		if Character:FindFirstChild("SpeechBoard") == nil then
			coroutine.resume(coroutine.create(function()
				for i = 1, 35 do
					Swait()
				end
			end))
		end
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
		DONE = true
	end)
	chat()
end
 
function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end
 
function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end
 
function MagicSphere2(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 1, BRICKC(color), "Effect", VT(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale - VT(size/waitt,size/waitt,size/waitt)
			wave.Transparency = wave.Transparency - (1/waitt)
		end
		wave:remove()
	end))
end
 
function VELOC(Part,Resistance,Position)
	local GRAV = IT("BodyPosition",Part)
	GRAV.D = Resistance
	GRAV.P = 20000
	GRAV.MaxForce = VT(math.huge,math.huge,math.huge)
	GRAV.Position = Position
	return GRAV
end
 
function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end
 
function MakeWings(DoesBurn)
	local RWING = CreatePart(3, Effects, "Neon", 0, 0.5, "Deep orange", "Right Wing", (VT(2, 3, 2)*1.5),false)
	local LWING = CreatePart(3, Effects, "Neon", 0, 0.5, "Deep orange", "Left Wing", (VT(2, 3, 2)*1.5),false)
	CreateMesh("SpecialMesh", RWING, "FileMesh", "90615661", "", VT(1.5,1.5,1.5), VT(0,0,0))
	CreateMesh("SpecialMesh", LWING, "FileMesh", "90615581", "", VT(1.5,1.5,1.5), VT(0,0,0))
	local RWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, RWING, CF(2 , 2, 0.75), CF(-3.5, 0, 0))
	local LWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, LWING, CF(-2 , 2, 0.75), CF(3.5, 0, 0))
	RWING.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	LWING.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	RWING.Color = FIRECOLOR
	LWING.Color = FIRECOLOR
	if DoesBurn == true then
		local RightWingFire = BurningLimb(RWING)
		local LeftWingFire = BurningLimb(LWING)
		return RWING,LWING,RWELD,LWELD,RightWingFire,LeftWingFire
	else
		return RWING,LWING,RWELD,LWELD
	end
end
 
function BurningLimb(Limb)
	local PRTCL = ParticleEmitter({Speed = 2, Drag = 4, Size1 = 1, Size2 = 0, Lifetime1 = 0.6, Lifetime2 = 1.5, Parent = Limb, Emit = 100, Offset = 360, Enabled = true})
	PRTCL.Acceleration = VT(0,5,0)
	PRTCL.ZOffset = 1
	return PRTCL
end
 
local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=284205403"
Particle.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0))
 
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or Vector3.new(0,-50,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		game:GetService("Debris"):AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end
 
function ShakeCam(Length,Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			Swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			Humanoid.CameraOffset = Vector3.new(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)))
			Cam.CFrame = Cam.CFrame * CF(RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity)), RAD(MRANDOM(-intensity, intensity))) * EULER(RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM, RAD(MRANDOM(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
 
--//=================================\\
--||	     WEAPON CREATION
--\\=================================//
 
local WEAPONGUI = IT("ScreenGui",PlayerGui)
local ATTACKSFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.8, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
local TEXT = CreateLabel(ATTACKSFRAME, "[BANISH]", Color3.fromRGB(255,215,0), 8.5,  Enum.Font.SourceSansBold, 0, 2, 0.5, "W E A P O N T E X T L A B E L")
 
local Sword = IT("Part")
Sword.Size = VT(0.2,5.25,0.75)
Sword.Anchored = false
Sword.CanCollide = false
Sword.Transparency = 1
local athp = Instance.new("Attachment",Sword)
local atho = Instance.new("Attachment",Sword)
if Character[ToolName] then
    if workspace[Player.Name][ToolName].Handle:FindFirstChildOfClass("Weld") then workspace[Player.Name][ToolName].Handle:FindFirstChildOfClass("Weld"):Destroy() end
    Character[ToolName].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
    Character[ToolName].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
end
athp.Position = Vector3.new(0,0.75,0)
atho.Rotation = Vector3.new(-135,90,0)
 
local SwordMesh = IT("SpecialMesh",Sword)
SwordMesh.MeshId = "rbxassetid://416669243"
SwordMesh.TextureId = "rbxassetid://416669357"
local Attachment0 = IT("Attachment",Sword)
Attachment0.Name = "Attachment0"
Attachment0.Position = VT(0,-0.753,0)
local Attachment1 = IT("Attachment",Sword)
Attachment1.Name = "Attachment1"
Attachment1.Position = VT(0,2.657,0)
local Trail = IT("Trail",Sword)
Trail.Lifetime = 2.5
Trail.Transparency = NumberSequence.new(0.25,1)
Trail.Attachment0 = Attachment0
Trail.Attachment1 = Attachment1
Trail.Enabled = false
Trail.Color = ColorSequence.new(C3(1,1,0))
Trail.Texture = "rbxassetid://1978704853"
local Particle = IT("ParticleEmitter",Sword)
Particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})
Particle.LightEmission = 1
Particle.LightInfluence = 0
Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5),NumberSequenceKeypoint.new(1,1.5)})
Particle.Texture = "rbxassetid://243660373"
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0.5),NumberSequenceKeypoint.new(0.8,0.5),NumberSequenceKeypoint.new(1,1)})
Particle.EmissionDirection = Enum.NormalId.Top
Particle.Lifetime = NumberRange.new(1,1)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = Vector2.new(0,0)
Particle.Enabled = true
local Light = IT("PointLight",Sword)
Light.Brightness = 5
Light.Range = 5
Light.Color = C3(1,1,0)
 
local SwordGrip = CreateWeldOrSnapOrMotor("Weld", Sword, RightArm, Sword, CF(0, -1, -2)*ANGLES(RAD(-90),RAD(0),RAD(0)), CF(0, 0, 0))
Sword.Parent = Character
LIGHTNING:Clone().Parent = Sword
 
local Gun = IT("Part")
Gun.Size = VT(0.51,1.18,1.35)
Gun.Anchored = false
Gun.CanCollide = false
local GunMesh = IT("SpecialMesh",Gun)
GunMesh.MeshId = "rbxassetid://95356090"
GunMesh.TextureId = "rbxassetid://126534866"
GunMesh.Scale = VT(1.8,1.8,1.8)
local Particle = IT("ParticleEmitter",Gun)
Particle.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})
Particle.LightEmission = 1
Particle.LightInfluence = 0
Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5),NumberSequenceKeypoint.new(1,1.5)})
Particle.Texture = "rbxassetid://243660373"
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0.5),NumberSequenceKeypoint.new(0.8,0.5),NumberSequenceKeypoint.new(1,1)})
Particle.EmissionDirection = Enum.NormalId.Top
Particle.Lifetime = NumberRange.new(1,1)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = NumberRange.new(0,0)
Particle.Rate = Vector2.new(0,0)
Particle.Enabled = true
local Hole = IT("Part",Gun)
Hole.Size = VT(0.05,0.05,0.05)
Hole.Anchored = false
Hole.CanCollide = false
Hole.Transparency = 1
CreateWeldOrSnapOrMotor("Weld", Hole, Hole, Gun, CF(0, -0.4, 0.75)*ANGLES(RAD(0),RAD(0),RAD(0)), CF(0, 0, 0))
 
local GunGrip = CreateWeldOrSnapOrMotor("Weld", Gun, LeftArm, Gun, CF(0, -1.5, 0)*ANGLES(RAD(-90),RAD(0),RAD(0)), CF(0, 0, 0))
Gun.Parent = Character
LIGHTNING:Clone().Parent = Gun
 
local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
 
--//=================================\\
--||			DAMAGING
--\\=================================//
 
function Kill(dude)
coroutine.resume(coroutine.create(function()
if dude and dude.Name ~= Character.Name and dude.Name ~= Player.Name then
local h = dude:FindFirstChildOfClass("Humanoid")
local t = dude:FindFirstChild("Torso") or dude:FindFirstChild("UpperTorso") or dude:FindFirstChild("HumanoidRootPart")
local deathp = Instance.new("Part",Effects) deathp.Anchored = true deathp.Size = Vector3.new() deathp.Transparency = 1 deathp.CanCollide = false deathp.CFrame = t.CFrame
coroutine.wrap(function()
deathp:Destroy()
end)
if h then
if dude then
CreateSound(206082273, deathp, 5, .75)
ShakeCam(1,10)
for i = 0, math.random(3,7) do
WACKYEFFECT({Time = math.random(36.25,91.25), EffectType = "Sphere", Size = Vector3.new(2.5,2.5,2.5), Size2 = Vector3.new(1.25,20,1.25), Transparency = 0, Transparency2 = 1, CFrame = deathp.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
end
WACKYEFFECT({Time = math.random(18,20.5), EffectType = "Sphere", Size = Vector3.new(2.5,2.5,2.5), Size2 = Vector3.new(10,10,10), Transparency = 0.6, Transparency2 = 1, CFrame = deathp.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
for i = 0, math.random(5,9) do
WACKYEFFECT({Time = math.random(9,10.25), EffectType = "Sphere", Size = Vector3.new(4.5,4.5,4.5), Size2 = Vector3.new(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = deathp.CFrame, MoveToPos = deathp.CFrame*CFrame.new(math.random(-95,95),math.random(-95,95),math.random(-95,95)).p, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 45, SizeBoomerang = 40})
end
end
end
end
end))
end
 
function ApplyAoE(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Kill(CHILD)
					end
				end
			end
		end
	end
end
 
--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
 
function Sprint()
	Speed = 30
	RUNNING = true
end
 
function ToggleWeapon(TYPE)
	ATTACK = true
	Speed = 3
	if TYPE == "Sword" then
		if SWORDEQUIPPED == false then
			for i = 0, 9 do
				slash(math.random(10,50)/10,3,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),VT(0.05,0.01,0.05),math.random(25,50)/250,BrickColor.new("White"))
			end
			CreateSound(1368637781,Torso,10,1,false)
			CreateSound(200633077,Torso,10,1,false)
			CreateSound(169380495,Torso,10,1,false)
			sphere2(5,"Add",RootPart.CFrame,VT(5,5,5),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			sphere2(6,"Add",RootPart.CFrame,VT(5,5,5),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			for i = 0, 2, 0.1 do
				swait()
				ShakeCam(1,10)
				sphere2(5,"Add",Sword.CFrame*CFrame.new(math.random(-8,-2),0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
				waveEff(5,"Add","Out",RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(5,0.25,5),0.05,0.015,BrickColor.new("New Yeller"))
				waveEff(5,"Add","Out",RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(10,0.25,10),0.05,0.015,BrickColor.new("New Yeller"))
		        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
		        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-15)), 1 / 3)
		        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.35, 0.7, -0.7) * ANGLES(RAD(210), RAD(0), RAD(-60)) * RIGHTSHOULDERC0, 1 / 3)
		        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.45, -0.35) * ANGLES(RAD(20), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / 3)
		        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.02, -0.01) * ANGLES(RAD(10), RAD(55), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / 3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-74), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / 3)
			end
			SWORDEQUIPPED = true
			for i = 0, 2, 0.1 do
				swait()
				sphere2(5,"Add",Sword.CFrame*CFrame.new(math.random(-8,-2),0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
				RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(-40),math.rad(0)),.2)
				LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(1),math.rad(5)),.2)
				RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.1,0.1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(40)),.3)
				Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(-40)),.3)
				RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.25,0,-0.65)*ANGLES(math.rad(100),math.rad(180),math.rad(-23)),.3)
				LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,1,0.1)*ANGLES(math.rad(110),math.rad(0),math.rad(-85)),.3)
			end
			local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.new("New Yeller"))
			hitb.Anchored = true
			hitb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*4
			slash(5,5,true,"Round","Add","Out",hitb.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(0.05,0.01,0.05),0.01,BrickColor.new("New Yeller"))
			CreateSound(200633196,Torso,10,1,false)
			CreateSound(200633108,Torso,10,1,false)
			CreateSound(234365549,Torso,10,1,false)
			for i = 0, 2, 0.1 do
				swait()
				ApplyAoE(Sword.Position,5)
				sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
				RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(-20)),.2)
				LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(50),math.rad(0)),.2)
				RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(-0.1,-0.25,0)*ANGLES(math.rad(10),math.rad(0),math.rad(-50)),.3)
				Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(50)),.3)
				RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(-80),math.rad(0),math.rad(70)),.3)
				LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(100),math.rad(0),math.rad(-50)),.3)
			end
			hitb:Destroy()
		else
			CreateSound(200633077,Torso,10,1,false)
			for i=0, 0.5, 0.1 / 3 do
		        Swait()
				sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		        RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / 3)
		        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-15)), 1 / 3)
		        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.35, 0.7, -0.7) * ANGLES(RAD(210), RAD(0), RAD(-60)) * RIGHTSHOULDERC0, 1 / 3)
		        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.45, -0.35) * ANGLES(RAD(20), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / 3)
		        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.02, -0.01) * ANGLES(RAD(10), RAD(55), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / 3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-74), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / 3)
			end
			SWORDEQUIPPED = false
		end
	elseif TYPE == "Gun" then
		if GUNEQUIPPED == false then
			GUNEQUIPPED = true
			CreateSound(1368637781,Torso,10,1,false)
			CreateSound(200633077,Torso,10,1,false)
			CreateSound(169380495,Torso,10,1,false)
			sphere2(5,"Add",Gun.CFrame,VT(5,5,5),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			sphere2(6,"Add",Gun.CFrame,VT(5,5,5),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			ShakeCam(1,10)
			sphere2(5,"Add",Gun.CFrame*CFrame.new(math.random(-8,-2),0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			waveEff(5,"Add","Out",Gun.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(5,0.25,5),0.05,0.015,BrickColor.new("New Yeller"))
			waveEff(5,"Add","Out",Gun.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(10,0.25,10),0.05,0.015,BrickColor.new("New Yeller"))
		else
			sphere2(5,"Add",LeftArm.CFrame*CF(0,-1,0),VT(1,1,1),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			sphere2(6,"Add",Gun.CFrame,VT(1,1,1),0.25,0.25,0.25,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			sphere2(5,"Add",Gun.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			CreateSound(200633077,Torso,10,1,false)
			GUNEQUIPPED = false
		end
	end
	ATTACK = false
	Speed = 15
end
 
function SlashOne()
	ATTACK = true
	Speed = 3
	Trail.Enabled = true
	for i = 0, 2, 0.1 do
		swait()
		sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(-40),math.rad(0)),.2)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(1),math.rad(5)),.2)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.1,0.1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(40)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(-40)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.25,0.5,-0.65)*ANGLES(math.rad(100),math.rad(0),math.rad(-23))*ANGLES(RAD(0),RAD(180),RAD(0)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,1,0.1)*ANGLES(math.rad(110),math.rad(0),math.rad(-85))*ANGLES(RAD(0),RAD(-90),RAD(0)),.3)
	end
	local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
	hitb.Anchored = true
	hitb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*4
	CreateSound(200633196,Torso,10,1,false)
	CreateSound(200633108,Torso,10,1.5,false)
	CreateSound(234365549,Torso,10,1,false)
	for i = 0, 1, 0.1 do
		swait()
		sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		ApplyAoE(Sword.Position,5)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(-20)),.2)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(50),math.rad(0)),.2)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(-0.1,-0.25,0)*ANGLES(math.rad(10),math.rad(0),math.rad(-50)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(50)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(80),math.rad(0),math.rad(70))*ANGLES(RAD(0),RAD(90),RAD(0)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,1,0.1)*ANGLES(math.rad(100),math.rad(0),math.rad(-50))*ANGLES(RAD(0),RAD(-90),RAD(0)),.3)
	end
	hitb:Destroy()
	ATTACK = false
	Speed = 15
	Trail.Enabled = false
end
 
function SlashTwo()
	ATTACK = true
	Speed = 3
	Trail.Enabled = true
	for i = 0, 1, 0.1 do
		swait()
		sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(20),math.rad(5)),.2)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(-0.1,0.1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-40)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(40)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.25,2,-0.65)*ANGLES(math.rad(100),math.rad(0),math.rad(-23)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-0.5,2,-0.25)*ANGLES(math.rad(90),math.rad(0),math.rad(40)),.3)
	end
	local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
	hitb.Anchored = true
	hitb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*4
	CreateSound(200633281,Torso,10,1,false)
	CreateSound(161006195,Torso,10,1.5,false)
	for i = 0, 1, 0.1 do
		swait()
		sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		ApplyAoE(Sword.Position,5)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(-30),math.rad(0)),.2)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(20)),.2)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.2,-0.25,0)*ANGLES(math.rad(10),math.rad(0),math.rad(90)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(-90)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(80),math.rad(0),math.rad(20))*ANGLES(RAD(0),RAD(90),RAD(0)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,1,0.1)*ANGLES(math.rad(100),math.rad(0),math.rad(-50))*ANGLES(RAD(0),RAD(-90),RAD(0)),.3)
	end
	ATTACK = false
	Speed = 15
	Trail.Enabled = false
end
 
function SlashThree()
	ATTACK = true
	Speed = 3
	Trail.Enabled = true
	for i = 0, 1, 0.1 do
		swait()
		sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(-30),math.rad(0)),.2)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(5)),.2)
		RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(-0.1,0.1,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-60)),.3)
		Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0),math.rad(60)),.3)
		RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.5,0.5,0)*ANGLES(math.rad(-30),math.rad(0),math.rad(53))*ANGLES(RAD(0),RAD(0),RAD(0)),.3)
		LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.5,1,0)*ANGLES(math.rad(10),math.rad(0),math.rad(-10))*ANGLES(RAD(0),RAD(0),RAD(0)),.3)
	end
	for x = 0, 2 do
		CreateSound(200633108,Torso,10,1,false)
		CreateSound(234365573,Torso,10,1,false)
		local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
		hitb.Anchored = true
		hitb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*4
		for i = 0, 1, 1 do
			swait()
			sphere2(5,"Add",Sword.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
			ApplyAoE(Sword.Position,5)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(-10)),.2)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(40),math.rad(20)),.2)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.2,-0.25,0)*ANGLES(math.rad(-2),math.rad(0),math.rad(80)),.3)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(4),math.rad(0),math.rad(-80)),.3)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,2,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(80))*ANGLES(RAD(0),RAD(0),RAD(0)),.3)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,2,0.1)*ANGLES(math.rad(10),math.rad(0),math.rad(-20))*ANGLES(RAD(0),RAD(0),RAD(0)),.3)
		end
	end
	ATTACK = false
	Speed = 15
	Trail.Enabled = false
end
 
function attackone()
	ATTACK = true
	CreateSound(136007472,Torso,10,1,false)
for i = 0,2,0.1 do
swait()
slash(math.random(30,60)/10,5,true,"Round","Add","In",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.5,0.01,0.5),-0.5,BrickColor.new("New Yeller"))
RightHip.C0=Clerp(RightHip.C0,CF(1,-1 - 0.05 * math.cos(SINE / 28),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(30)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 - 0.05 * math.cos(SINE / 28),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-30)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,-0.3,-0.15)*ANGLES(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(30),math.rad(0),math.rad(0 - 5 * math.cos(SINE / 0.2))),.2)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.05,0.4,-0.5)*ANGLES(math.rad(140),math.rad(0),math.rad(-50)),.2)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.05,0.4,-0.5)*ANGLES(math.rad(140),math.rad(0),math.rad(50)),.2)
end
for i = 0, 24 do
sphere2(2,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(1,1,1),-0.01,7,-0.01,BrickColor.new("New Yeller"))
slash(math.random(10,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
ApplyAoE(RootPart.Position,55)
for i = 0, 24 do
sphere2(2,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(1,1,1),-0.01,7,-0.01,BrickColor.new("New Yeller"))
slash(math.random(10,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),math.random(150,350)/250,BrickColor.new("White"))
end
ShakeCam(1,10)
CreateSound(206082327,Torso,10,1,false)
CreateSound(847061203,Torso,10,1,false)
CreateSound(239000203,Torso,10,1,false)
CreateSound(579687077,Torso,10,1,false)
CreateSound(1368637781,Torso,10,1,false)
CreateSound(763718160,Torso,10,1,false)
CreateSound(782353443,Torso,10,1,false)
for i = 0,2,0.1 do
swait()
RightHip.C0=Clerp(RightHip.C0,CF(1,-1 - 0.05 * math.cos(SINE / 28),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-30)),.5)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 - 0.05 * math.cos(SINE / 28),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(30)),.5)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0.3,-0.15)*ANGLES(math.rad(-30),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(-30),math.rad(0),math.rad(0 - 2.5 * math.cos(SINE / 0.2))),.5)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.4,0)*ANGLES(math.rad(-20),math.rad(0 - 2 * math.cos(SINE / 0.2)),math.rad(80 + 2 * math.cos(SINE / 0.2))),.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.4,0)*ANGLES(math.rad(-20),math.rad(0 + 2 * math.cos(SINE / 0.2)),math.rad(-80 - 2 * math.cos(SINE / 0.2))),.5)
end
	ATTACK = false
	Speed = 15
end
 
function attacktwo()
	ATTACK = true
local savespeed = Speed
Speed = 3
local keptcolor = BrickColor.new("New Yeller")
CreateSound(847061203,Torso,10,1,false)
sphere2(5,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(1,1,1),0.1,0.1,0.1,keptcolor,keptcolor.Color)
sphere2(5,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(1,1,1),0.2,0.2,0.2,keptcolor,keptcolor.Color)
for i = 0, 14 do
PixelBlock(1,math.random(1,3),"Add",RightArm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.02,keptcolor,0)
end
for i = 0,1,0.1 do
swait()
sphere2(8,"Add",LeftArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.3)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.3)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.3)
end
for i = 0, 1 do
CreateSound(763755889,Torso,10,1,false)
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-90)),.6)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-180)),.6)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
for i = 0,1,0.6 do
swait()
sphere2(8,"Add",RightArm.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0),VT(2.25,0.1,2.25),0.01,0.01,0.01,keptcolor,keptcolor.Color)
slash(math.random(15,30)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.05,0.01,0.05),math.random(25,75)/250,BrickColor.new("White"))
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(-5)),.6)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(30),math.rad(0)),.6)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-270)),.6)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-30)),.6)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.5)*ANGLES(math.rad(90),math.rad(0),math.rad(-60)),.6)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.15,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.6)
end
local rot = 0
local dis = CreateParta(Effects,0.5,1,"Neon",keptcolor)
CreateSound(763718160,Torso,10,1,false)
dis.CFrame = RootPart.CFrame*CFrame.new(0,2,-3)
createmesh(dis,"Sphere",10,1,10)
local at1 = Instance.new("Attachment",dis)
at1.Position = VT(-5,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = VT(5,0,0)
local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = BRICKC("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    dis.CFrame.p,                           -- origin
	    (mouse.Hit.p - dis.CFrame.p).unit * 500 -- direction
	) 
	local ignore = dis
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (dis.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(dis.CFrame.p, position) * CFrame.new(0, 0, 0)
dis.CFrame = a.CFrame
dis.CFrame = dis.CFrame*CFrame.Angles(0,math.rad(rot),0)
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*250
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
local hitted = false
coroutine.resume(coroutine.create(function()
dis.Touched:connect(function(hit) 
	if hitted == false and hit.Parent ~= Effects then
	hitted = true
	CreateSound(782200047,Torso,10,1,false)
	ApplyAoE(dis.Position,25)
	sphere2(8,"Add",dis.CFrame,VT(10,1,10),1,0.1,1,keptcolor,keptcolor.Color)
	sphere2(4,"Add",dis.CFrame,VT(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	sphere2(3,"Add",dis.CFrame,VT(1,1,1),0.5,0.5,0.5,keptcolor,keptcolor.Color)
	coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2344870656"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 10000000
eff.Enabled = true
eff.EmissionDirection = "Front"
eff.Lifetime = NumberRange.new(1)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,75,0),NumberSequenceKeypoint.new(0.1,20,0),NumberSequenceKeypoint.new(0.8,40,0),NumberSequenceKeypoint.new(1,60,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.SpreadAngle = Vector2.new(0,900)
eff.RotSpeed = NumberRange.new(-500,500)
wait(0.2)
eff.Enabled = false
	end))
	coroutine.resume(coroutine.create(function()
		for i = 0, 9 do
local disr = CreateParta(Effects,1,1,"Neon",keptcolor)
disr.CFrame = dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",disr)
at1.Position = VT(-5,0,0)
local at2 = Instance.new("Attachment",disr)
at2.Position = VT(5,0,0)
local trl = Instance.new('Trail',disr)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://2342682798"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(keptcolor.Color)
trl.Lifetime = 0.5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = disr.CFrame.lookVector*math.random(50,200)
bv.Parent = disr
local val2 = 0
coroutine.resume(coroutine.create(function()
	swait(30)
	for i = 0, 9 do
		swait()
		val = val2 + 0.1
		trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, val),NumberSequenceKeypoint.new(1, 1)})
		ApplyAoE(disr.Position,25)
	end
game:GetService("Debris"):AddItem(disr, 3)
end))
end
ApplyAoE(dis.Position,25)
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(keptcolor.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(20,250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.25)
eff.Enabled = false
end))
	for i = 0, 9 do
		slash(math.random(10,20)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),VT(0.01,0.01,0.01),math.random(100,200)/250,BrickColor.new("White"))
	end
for i = 0, 19 do
PixelBlock(1,math.random(5,20),"Add",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),4,4,4,0.08,keptcolor,0)
end
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
ShakeCam(1,10)
end
end))
dis.Anchored = true
dis.Transparency = 1
wait(8)
dis:Destroy()
end
end)
end))
rot = rot - 15
end
for i = 0,2,0.1 do
swait()
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(-30),math.rad(0)),.3)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(5)),.3)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(10),math.rad(0),math.rad(50)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.5,0.5,0)*ANGLES(math.rad(90),math.rad(0),math.rad(60)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.5,0.5,0)*ANGLES(math.rad(-20),math.rad(0),math.rad(-10)),.3)
end
ATTACK = false
Speed = 15
end
 
function attackthree()
ATTACK = true
local keptcolor = BrickColor.new("New Yeller")
CreateSound(136007472,Torso,10,1,false)
	for i = 0,2,0.1 do
		swait()
		sphere2(5,"Add",LeftArm.CFrame*CFrame.new(0,-1.5,0),VT(1,1,1),0.025,0.025,0.025,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)* ANGLES(math.rad(10),math.rad(0),math.rad(50)),0.3)
Torso.Neck.C0 = Clerp(Torso.Neck.C0,NECKC0 *ANGLES(math.rad(5),math.rad(0),math.rad(-50)),.3)
RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * ANGLES(math.rad(80), math.rad(10), math.rad(60)), 0.3)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * ANGLES(math.rad(140), math.rad(0), math.rad(-70)), 0.3)
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-1.5),math.rad(-50),math.rad(-10)),.3)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-2.5),math.rad(0),math.rad(40)),.3)
	end
CreateSound(763716870,Torso,10,1,false)
CreateSound(782353443,Torso,10,1,false)
CreateSound(782225570,Torso,10,1,false)
CreateSound(763717569,Torso,10,1,false)
sphere2(5,"Add",RootPart.CFrame,VT(1,1,1),1,1,1,BrickColor.new("New Yeller"))
sphere2(5,"Add",RootPart.CFrame,VT(1,1,1),0.5,0.5,0.5,BrickColor.new("New Yeller"))
for i = 0, 24 do
		slash(math.random(10,50)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),math.rad(0)),VT(0.01,0.01,0.01),math.random(50,200)/250,BrickColor.new("White"))
end
for i = 0,4,0.1 do
		swait()
		RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*5
		local dis = CreateParta(Effects,0.25,1,"Neon",BrickColor.new("New Yeller"))
createmesh(dis,"Sphere",1,1,1)
dis.Anchored = true
dis.CFrame = LeftArm.CFrame*CFrame.new(0,-3,0)
sphere2(5,"Add",dis.CFrame,VT(1,1,1),0.1,0.1,0.1,dis.BrickColor,dis.Color)
coroutine.resume(coroutine.create(function()
	swait(30)
	dis.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 19 do
swait()
ShakeCam(1,5)
end
end))
coroutine.resume(coroutine.create(function()
ApplyAoE(dis.Position,25)
local eff = Instance.new("ParticleEmitter",dis)
eff.Texture = "rbxassetid://2273224484"
eff.LightEmission = 1
eff.Color = ColorSequence.new(dis.Color)
eff.Rate = 500000
eff.Lifetime = NumberRange.new(0.5,2)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,20,0),NumberSequenceKeypoint.new(0.2,2,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0,0),NumberSequenceKeypoint.new(0.8,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(50,450)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-50,50)
wait(0.125)
eff.Enabled = false
end))
ApplyAoE(dis.Position,25)
    for i = 0, 2 do
		slash(math.random(10,80)/10,5,true,"Round","Add","Out",dis.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),math.random(50,150)/250,dis.BrickColor)
	end
	CreateSound(782353117,Torso,10,1,false)
	CreateSound(1666361078,Torso,10,1,false)
	CreateSound(782353443,Torso,10,1,false)
	sphere2(3,"Add",dis.CFrame,VT(1,1,1),0.4,0.4,0.4,dis.BrickColor,dis.Color)
end))
game:GetService("Debris"):AddItem(dis, 5)
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CF(0,0,0)* ANGLES(math.rad(89),math.rad(-8),math.rad(-5)),0.5)
Torso.Neck.C0 = Clerp(Torso.Neck.C0,NECKC0 *ANGLES(math.rad(-30),math.rad(0),math.rad(8)),.5)
RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * ANGLES(math.rad(-14), math.rad(1), math.rad(17)), 0.5)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.85, 0) * ANGLES(math.rad(180), math.rad(0), math.rad(-8)), 0.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(1,-0.5,-0.6)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-8),math.rad(0),math.rad(-20)),.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(9),math.rad(0),math.rad(20)),.5)
	end
ATTACK = false
Speed = 15
end
 
function ball()
ATTACK = true
Rooted = true
local truescale = 0
local rd = math.random(1,3)
CreateSound(1368583274,Torso,10,1,false)
for i = 0,49,0.1 do
swait()
truescale = truescale + 0.2
ShakeCam(3,10)
slash(5,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,75,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(3,0.01,3),-3,BrickColor.new("New Yeller"))
block(10,"Add",RootPart.CFrame*CFrame.new(0,75,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(truescale,truescale,truescale),0.01,0.01,0.01,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
RightHip.C0=Clerp(RightHip.C0,CF(1,-0.5,-0.5)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(5),math.rad(-10)),.5)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(1),math.rad(5)),.5)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,1)*ANGLES(math.rad(0),math.rad(0),math.rad(40)),.5)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(20),math.rad(0),math.rad(-40)),.5)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,1,0.1)*ANGLES(math.rad(180),math.rad(-30),math.rad(-5)),.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(-5),math.rad(10),math.rad(-10)),.5)
end
CreateSound(260411131,Torso,10,1,false)
for i = 0,2,0.1 do
swait()
block(10,"Add",RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(1,1,1),0.01,0.01,0.01,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
RightHip.C0=Clerp(RightHip.C0,CF(1,-0.5,-0.5)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(5),math.rad(-10)),.5)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(1),math.rad(5)),.5)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,1)*ANGLES(math.rad(0),math.rad(0),math.rad(55)),.5)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(10),math.rad(0),math.rad(-55)),.5)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.15,0.5,-0.6)*ANGLES(math.rad(90),math.rad(0),math.rad(-50)),.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(-5),math.rad(10),math.rad(-10)),.5)
end
local orb = Instance.new("Part", Effects)
for i = 0, 4 do
CreateSound(335657174,Torso,10,1,false)
end
local efec = Instance.new("ParticleEmitter",orb)
efec.Texture = "rbxassetid://2109052855"
efec.LightEmission = 1
efec.Color = ColorSequence.new(BrickColor.new("New Yeller").Color)
efec.Rate = 5
efec.Lifetime = NumberRange.new(3)
efec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,100,0),NumberSequenceKeypoint.new(0.2,175,0),NumberSequenceKeypoint.new(0.6,110,0),NumberSequenceKeypoint.new(0.8,175,0),NumberSequenceKeypoint.new(1,200,0)})
efec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.1,0.25,0),NumberSequenceKeypoint.new(0.6,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
efec.Drag = 5
efec.LockedToPart = true
efec.Rotation = NumberRange.new(-500,500)
efec.VelocitySpread = 9000
efec.RotSpeed = NumberRange.new(-500,500)
        orb.BrickColor = BrickColor.new("New Yeller")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = VT(25,25,25)
orb.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*3
	local a = Instance.new("Part",workspace)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = BrickColor.new("New Yeller")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    orb.CFrame.p,                           -- origin
	    (mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
	) 
	local ignore = orb
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
a:Destroy()
local over = false
local bgui,imgc = createBGCircle(250,orb,BrickColor.new("New Yeller").Color)
bgui.AlwaysOnTop = true
imgc.Image = "rbxassetid://2076519836"
coroutine.resume(coroutine.create(function()
while true do
swait()
if over == false then
slash(10,2,true,"Round","Add","Out",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),1,BrickColor.new("New Yeller"))
imgc.Rotation = imgc.Rotation + 5
imgc.ImageTransparency = 0.75 + 0.25 * math.cos(SINE / 15)
bgui.Size = UDim2.new(250 + 25 * math.cos(SINE / 15),0, 250 + 25 * math.cos(SINE / 15),0)
elseif over == true then
break
end
end
end))
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*50
bv.Parent = orb
coroutine.resume(coroutine.create(function()
wait(10)
over = true
efec.Enabled = false
orb.Anchored = true
for i = 0, 2 do
CreateSound(1664711478,Torso,10,1,false)
CreateSound(763717897,Torso,10,1,false)
CreateSound(763718160,Torso,10,1,false)
CreateSound(782353443,Torso,10,1,false)
CreateSound(335657174,Torso,10,1,false)
CreateSound(167115397,Torso,10,1,false)
end
for i = 0, 2 do
block(3,"Add",orb.CFrame,VT(1,1,1),6.5,6.5,6.5,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
block(2,"Add",orb.CFrame,VT(1,1,1),6,6,6,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
block(1,"Add",orb.CFrame,VT(1,1,1),4.5,4.5,4.5,BrickColor.new("New Yeller"),BrickColor.new("New Yeller").Color)
end
for i = 0, 49 do
slash(math.random(10,30)/10,5,true,"Round","Add","Out",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),math.random(150,2500)/250,BrickColor.new("New Yeller"))
end
imgc.ImageTransparency = 0
ShakeCam(25,100)
for i = 0, 199 do
swait()
coroutine.resume(coroutine.create(function()
ApplyAoE(orb.Position,9e9)
end))
imgc.Rotation = imgc.Rotation + 10
local dis = CreateParta(Effects,1,1,"Neon",BrickColor.new("New Yeller"))
dis.CFrame = orb.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new("Attachment",dis)
at1.Position = VT(-25000,0,0)
local at2 = Instance.new("Attachment",dis)
at2.Position = VT(25000,0,0)
local trl = Instance.new('Trail',dis)
trl.Attachment0 = at1
trl.FaceCamera = true
trl.Attachment1 = at2
trl.Texture = "rbxassetid://1049219073"
trl.LightEmission = 1
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
trl.Color = ColorSequence.new(BrickColor.new("New Yeller").Color)
trl.Lifetime = 5
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = dis.CFrame.lookVector*math.random(500,2500)
bv.Parent = dis
game:GetService("Debris"):AddItem(dis, 5)
sphere2(15,"Add",orb.CFrame,VT(1.25,1.25,1.25),45,45,45,BrickColor.new("New Yeller"))
for i = 0, 2 do
slash(15,5,true,"Round","Add","Out",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),25,BrickColor.new("New Yeller"))
slash(15,5,true,"Round","Add","Out",orb.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.01,0.01,0.01),50,BrickColor.new("New Yeller"))
end
orbm.Scale = orbm.Scale + VT(10,10,10)
orb.Transparency = orb.Transparency + 0.005
imgc.ImageTransparency = imgc.ImageTransparency + 0.005
bgui.Size = bgui.Size + UDim2.new(35,0,35,0)
end
game:GetService("Debris"):AddItem(orb, 10)
end))
for i = 0,2,0.1 do
swait()
RightHip.C0=Clerp(RightHip.C0,CF(1,-0.5,-0.5)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(5),math.rad(-10)),.5)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(20),math.rad(10)),.5)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,-0.3,1)*ANGLES(math.rad(5),math.rad(0),math.rad(-45)),.5)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(10),math.rad(0),math.rad(45)),.5)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0)*ANGLES(math.rad(90),math.rad(0),math.rad(50)),.5)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(20),math.rad(10),math.rad(-30)),.5)
end
ATTACK = false
Rooted = false
end
 
function Spin()
ATTACK = true
Speed = 3
CreateSound(1368583274,Torso,10,1,false)
local bgui = Instance.new("BillboardGui",RootPart)
bgui.Size = UDim2.new(25, 0, 25, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 1
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547"
imgc.ImageColor3 = Color3.new(1,1,0)
local imgc2 = imgc:Clone()
imgc2.Parent = bgui
imgc2.Position = UDim2.new(-0.5,0,-0.5,0)
imgc2.Size = UDim2.new(2,0,2,0)
imgc2.ImageColor3 = Color3.new(1,1,0)
for i = 0, 10, 0.1 do
		swait()
imgc.ImageTransparency = imgc.ImageTransparency - 0.01
imgc.Rotation = imgc.Rotation + 1
imgc2.ImageTransparency = imgc2.ImageTransparency - 0.01
imgc2.Rotation = imgc2.Rotation - 1
bgui.Size = bgui.Size - UDim2.new(0.25, 0, 0.25, 0)
slash(math.random(50,100)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),VT(0.1,0.01,0.1),math.random(25,50)/250,BrickColor.new("White"))
sphere2(5,"Add",Sword.CFrame*CFrame.new(math.random(-8,-2),0,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.1,0.1,0.1),0,0.1,0,BrickColor.new("Cyan"),BrickColor.new("Cyan").Color)
waveEff(5,"Add","In",RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0),VT(15,0.25,15),-0.075,0.05,BrickColor.new("White"))
	RightHip.C0=Clerp(RightHip.C0,CF(1,-0.5,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(-40),math.rad(10)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(1),math.rad(20)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.1,0.2,-0.3)*ANGLES(math.rad(10),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(5),math.rad(0),math.rad(-50)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.25,0.5,-0.65)*ANGLES(math.rad(100),math.rad(0),math.rad(-23))*ANGLES(RAD(0),RAD(90),RAD(0)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(110),math.rad(0),math.rad(-85))*ANGLES(RAD(0),RAD(-90),RAD(0)),.3)
end
imgc.ImageTransparency = 1
waveEff(2,"Add","Out",RootPart.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),VT(6,10,6),0.5,0.8,BrickColor.new("White"))
waveEff(3,"Add","Out",RootPart.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),VT(6,10,6),0.5,0.4,BrickColor.new("White"))
waveEff(4,"Add","Out",RootPart.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),VT(6,10,6),0.5,0.2,BrickColor.new("White"))
waveEff(5,"Add","Out",RootPart.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),VT(6,10,6),0.5,0.1,BrickColor.new("White"))
waveEff(6,"Add","Out",RootPart.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),VT(6,10,6),0.5,0.05,BrickColor.new("White"))
for i = 0, 9 do
slash(math.random(10,25)/10,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,0,math.random(-30,15))*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),VT(0.1,0.01,0.1),math.random(75,250)/250,BrickColor.new("White"))
end
--CreateSound(430315987,Torso,10,1,false)
CreateSound(1295446488,Torso,10,1,false)
for x = 0, 14 do
CreateSound(200633281,Torso,10,1,false)
CreateSound(161006195,Torso,10,1,false)
ApplyAoE(Torso.Position,10)
CreateSound(200632992,Torso,10,1,false)
slash(5,5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.05,0.01,0.05),math.random(1,10)/100,BrickColor.new("White"))
for i = 0, 1, 0.6 do
		swait()
RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*2
RootPart.Velocity = VT(0,0,0)
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,3)*ANGLES(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(4),math.rad(0),math.rad(-60)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(90)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
slash(5,2.5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.05,0.01,0.05),math.random(1,10)/100,BrickColor.new("White"))
CreateSound(200632992,Torso,10,1,false)
ApplyAoE(Torso.Position,10)
for i = 0, 1, 0.6 do
		swait()
RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*3
RootPart.Velocity = VT(0,0,0)
	RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,3)*ANGLES(math.rad(90),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(4),math.rad(0),math.rad(-60)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(90)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
slash(5,2.5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.05,0.01,0.05),math.random(1,10)/100,BrickColor.new("White"))
CreateSound(200632992,Torso,10,1,false)
ApplyAoE(Torso.Position,10)
for i = 0, 1, 0.6 do
		swait()
RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*3
RootPart.Velocity = VT(0,0,0)
	RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,3)*ANGLES(math.rad(180),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(4),math.rad(0),math.rad(-60)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(90)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
slash(5,2.5,true,"Round","Add","Out",RootPart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),VT(0.05,0.01,0.05),math.random(1,10)/100,BrickColor.new("White"))
CreateSound(200632992,Torso,10,1,false)
ApplyAoE(Torso.Position,10)for i = 0, 1, 0.6 do
		swait()
RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*3
RootPart.Velocity = VT(0,0,0)
	RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0,0,3)*ANGLES(math.rad(270),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(4),math.rad(0),math.rad(-60)),.3)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(90)),.3)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0.1)*ANGLES(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
end
for i = 0, 2.5, 0.1 do
swait()
RightHip.C0=Clerp(RightHip.C0,CF(1,-1,0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3),math.rad(0),math.rad(-20)),.2)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-0.6,-0.5)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3),math.rad(20),math.rad(-12)),.2)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0.1,0.2,-0.35)*ANGLES(math.rad(10),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(5),math.rad(0),math.rad(40)),.2)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1.45,0.5,0)*ANGLES(math.rad(90),math.rad(0),math.rad(110))*ANGLES(RAD(0),RAD(90),RAD(0)),.2)
LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1.45,0.5,0)*ANGLES(math.rad(45),math.rad(0),math.rad(-20))*ANGLES(RAD(0),RAD(-90),RAD(0)),.2)
end
bgui:Destroy()
ATTACK = false
Speed = 15
end
 
function violent()
ATTACK = true
Rooted = true
local highuppos = Hole.Position+VT(0,1000,0)
for i = 0, 2.5, 0.1 do
swait()
RightHip.C0=Clerp(RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(SINE / 20))),.1)
LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(1),math.rad(0 - 2 * math.cos(SINE / 20))),.1)
RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.02 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(30 + 3 * math.cos(SINE / 40))),.1)
Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(SINE / 40)),math.rad(-30 - 3 * math.cos(SINE / 40))),.1)
RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,0.5 + 0.05 * math.cos(SINE / 28),0.1)*ANGLES(math.rad(-6 + 5 * math.cos(SINE / 26)),math.rad(-10 - 6 * math.cos(SINE / 24)),math.rad(13 - 5 * math.cos(SINE / 34)))*ANGLES(RAD(0),RAD(90),RAD(0)),.1)
LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / 3)
end
WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2.5,2.5,2.5), Transparency = 0.3, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
SpawnTrail(Hole.Position,highuppos)
ATTACK = false
Rooted = false
CreateSound(136007472,Torso,10,1,false)
local orb = Instance.new("Part", Effects)
        orb.BrickColor = BrickColor.new("New Yeller")
        orb.CanCollide = false
        orb.FormFactor = 3
        orb.Name = "Ring"
        orb.Material = "Neon"
        orb.Size = Vector3.new(1, 1, 1)
        orb.Transparency = 0
        orb.TopSurface = 0
        orb.BottomSurface = 0
        local orbm = Instance.new("SpecialMesh", orb)
        orbm.MeshType = "Sphere"
orbm.Name = "SizeMesh"
orbm.Scale = VT(2,2,2)
orb.CFrame = mouse.Hit
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*100
bv.Parent = orb
local hitted = false
coroutine.resume(coroutine.create(function()
game:GetService("Debris"):AddItem(orb, 5)
orb.Transparency = 1
orb.Anchored = true
local elocacenter = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
elocacenter.Anchored = true
elocacenter.CFrame = orb.CFrame
elocacenter.Orientation = VT(0,0,0)
local eloca1 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca1.Anchored = true
eloca1.CFrame = elocacenter.CFrame
local eloca2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca2.Anchored = true
eloca2.CFrame = elocacenter.CFrame
local eloca3 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca3.Anchored = true
eloca3.CFrame = elocacenter.CFrame
local eloca4 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
eloca4.Anchored = true
eloca4.CFrame = elocacenter.CFrame
local lookavec = 0 
local speeds = 0
ShakeCam(1,25)
coroutine.resume(coroutine.create(function()
CreateSound(419447292,Torso,10,1,false)
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),1,BrickColor.new("New Yeller"))
sphere(6,"Add",elocacenter.CFrame,VT(0,0,0),1,BrickColor.new("New Yeller"))
sphere(7,"Add",elocacenter.CFrame,VT(0,0,0),1,BrickColor.new("New Yeller"))
sphere(8,"Add",elocacenter.CFrame,VT(0,0,0),1,BrickColor.new("New Yeller"))
sphere(9,"Add",elocacenter.CFrame,VT(0,0,0),1,BrickColor.new("New Yeller"))
for i = 0, 24 do
swait()
lookavec = lookavec + 2
speeds = speeds + 1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1,2),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1,2),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
end
 
local risen = 0
for i = 0, 176 do
swait()
lookavec = lookavec + 0.25
risen = risen + 0.05
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
end
 
for i = 0, 176 do
swait()
lookavec = lookavec + 0.5
risen = risen + 0.05
speeds = speeds + 0.1
elocacenter.CFrame = elocacenter.CFrame*CFrame.Angles(0,math.rad(speeds),0)
eloca1.CFrame = elocacenter.CFrame*CFrame.new(lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca1.CFrame*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca2.CFrame = elocacenter.CFrame*CFrame.new(-lookavec,0,0)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca2.CFrame*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca3.CFrame = elocacenter.CFrame*CFrame.new(0,0,lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca3.CFrame*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
 
eloca4.CFrame = elocacenter.CFrame*CFrame.new(0,0,-lookavec)
PixelBlockNeg(2,math.random(1+risen,2+risen),"Add",eloca4.CFrame*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),5,5,5,0.05,BrickColor.new("New Yeller"),-2)
end
end))
coroutine.resume(coroutine.create(function()
ShakeCam(1,25)
ApplyAoE(elocacenter.Position,125)
CreateSound(468991944,Torso,10,1,false)
CreateSound(533636230,Torso,10,1,false)
CreateSound(419447292,Torso,10,1,false)
CreateSound(421328847,Torso,10,1,false)
CreateSound(919941001,Torso,10,1,false)
sphere(1,"Add",elocacenter.CFrame,VT(100,90000,100),-0.25,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(100,90000,100),0.5,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(0,0,0),5,BrickColor.new("New Yeller"))
sphere(2,"Add",elocacenter.CFrame,VT(0,0,0),5,BrickColor.new("New Yeller"))
sphere(3,"Add",elocacenter.CFrame,VT(0,0,0),5,BrickColor.new("New Yeller"))
sphere(4,"Add",elocacenter.CFrame,VT(0,0,0),5,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),5,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),500,BrickColor.new("New Yeller"))
for i = 0, 24 do
sphereMK(2,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.25,BrickColor.new("New Yeller"),0)
sphereMK(4,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25,BrickColor.new("New Yeller"),0)
sphereMK(6,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25,BrickColor.new("New Yeller"),0)
sphereMK(8,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25,BrickColor.new("New Yeller"),0)
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",elocacenter)
eff.Texture = "rbxassetid://2092248396"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.new("New Yeller").Color)
eff.Rate = 50000
eff.Lifetime = NumberRange.new(6,12)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,60,0),NumberSequenceKeypoint.new(0.2,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(100,1000)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-100,100)
wait(0.6)
eff.Enabled = false
end))
wait(1.25)
ShakeCam(1,25)
ApplyAoE(elocacenter.Position,150)
CreateSound(468991944,Torso,10,1,false)
CreateSound(533636230,Torso,10,1,false)
CreateSound(419447292,Torso,10,1,false)
CreateSound(421328847,Torso,10,1,false)
CreateSound(919941001,Torso,10,1,false)
sphere(1,"Add",elocacenter.CFrame,VT(150,90000,150),-0.5,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(150,90000,150),1,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(0,0,0),5*2,BrickColor.new("New Yeller"))
sphere(2,"Add",elocacenter.CFrame,VT(0,0,0),5*2,BrickColor.new("New Yeller"))
sphere(3,"Add",elocacenter.CFrame,VT(0,0,0),5*2,BrickColor.new("New Yeller"))
sphere(4,"Add",elocacenter.CFrame,VT(0,0,0),5*2,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),5*2,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),500*2,BrickColor.new("New Yeller"))
for i = 0, 24 do
sphereMK(2,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.25*2,BrickColor.new("New Yeller"),0)
sphereMK(4,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25*2,BrickColor.new("New Yeller"),0)
sphereMK(6,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25*2,BrickColor.new("New Yeller"),0)
sphereMK(8,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25*2,BrickColor.new("New Yeller"),0)
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",elocacenter)
eff.Texture = "rbxassetid://2092248396"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.new("New Yeller").Color)
eff.Rate = 50000
eff.Lifetime = NumberRange.new(6,12)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,90,0),NumberSequenceKeypoint.new(0.2,1.25,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(125,1250)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-100,100)
wait(1.25)
eff.Enabled = false
end))
wait(1.25)
ShakeCam(1,25)
ApplyAoE(elocacenter.Position,175)
CreateSound(468991944,Torso,10,1,false)
CreateSound(533636230,Torso,10,1,false)
CreateSound(419447292,Torso,10,1,false)
CreateSound(421328847,Torso,10,1,false)
CreateSound(919941001,Torso,10,1,false)
sphere(1,"Add",elocacenter.CFrame,VT(225,90000,225),-0.25*3,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(225,90000,225),0.5*3,BrickColor.new("New Yeller"))
sphere(1,"Add",elocacenter.CFrame,VT(0,0,0),5*3,BrickColor.new("New Yeller"))
sphere(2,"Add",elocacenter.CFrame,VT(0,0,0),5*3,BrickColor.new("New Yeller"))
sphere(3,"Add",elocacenter.CFrame,VT(0,0,0),5*3,BrickColor.new("New Yeller"))
sphere(4,"Add",elocacenter.CFrame,VT(0,0,0),5*3,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),5*3,BrickColor.new("New Yeller"))
sphere(5,"Add",elocacenter.CFrame,VT(0,0,0),500*3,BrickColor.new("New Yeller"))
for i = 0, 24 do
sphereMK(2,2,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,100,-0.25*3,BrickColor.new("New Yeller"),0)
sphereMK(4,4,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,75,-0.25*3,BrickColor.new("New Yeller"),0)
sphereMK(6,6,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,50,-0.25*3,BrickColor.new("New Yeller"),0)
sphereMK(8,8,"Add",elocacenter.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),25,25,25,-0.25*3,BrickColor.new("New Yeller"),0)
end
coroutine.resume(coroutine.create(function()
local eff = Instance.new("ParticleEmitter",elocacenter)
eff.Texture = "rbxassetid://2092248396"
eff.LightEmission = 1
eff.Color = ColorSequence.new(BrickColor.new("New Yeller").Color)
eff.Rate = 50000
eff.Lifetime = NumberRange.new(6,12)
eff.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,120,0),NumberSequenceKeypoint.new(0.2,2.5,0),NumberSequenceKeypoint.new(1,0.1,0)})
eff.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
eff.Speed = NumberRange.new(150,1500)
eff.Drag = 5
eff.Rotation = NumberRange.new(-500,500)
eff.VelocitySpread = 9000
eff.RotSpeed = NumberRange.new(-100,100)
wait(1.25)
eff.Enabled = false
end))
wait(0.5)
CreateSound(1535995263,Torso,10,1,false)
CreateSound(1535995263,Torso,10,1,false)
end))
for i = 0, 4, 0.1 do
swait()
PixelBlockX(5,0.5,"Add",RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("New Yeller"),0)
PixelBlockNeg(5,0.5,"Add",RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("New Yeller"),0)
PixelBlockX(5,0.5,"Add",LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("New Yeller"),0)
PixelBlockNeg(5,0.5,"Add",LeftArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90 + math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,1,0.01,BrickColor.new("New Yeller"),0)
end
coroutine.resume(coroutine.create(function()
wait(10)
elocacenter:Destroy()
eloca1:Destroy()
eloca2:Destroy()
eloca3:Destroy()
eloca4:Destroy()
end))
end))
end
 
function Shoot()
	ATTACK = true
	Rooted = false
	AttackGyro()
	Speed = 10
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		ApplyAoE(POS,10)
		CreateSound(356911785,Torso,10,.9,false)
		for i = 0, 5 do
			WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = CF(POS)*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		for i = 0, 2 do
			WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2.5,2.5,2.5), Transparency = 0.3, Transparency2 = 1, CFrame = CF(POS)*ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2.5,2.5,2.5), Transparency = 0.3, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		ShakeCam(1,10)
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(120), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until HOLD == false
	Speed = 15
	ATTACK = false
	Rooted = false
end
 
--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//
 
function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false and RUNNING == false then
		if SWORDEQUIPPED == true then
			if COMBO == 1 then
				COMBO = 2
				SlashOne()
			elseif COMBO == 2 then
				COMBO = 3
				SlashTwo()
			elseif COMBO == 3 then
				COMBO = 1
				SlashThree()
			end
		elseif GUNEQUIPPED == true then
			Shoot()
		end
	end
end
 
function MouseUp(Mouse)
HOLD = false
end
 
function KeyDown(Key)
	KEYHOLD = true
	if SWORDEQUIPPED == true or GUNEQUIPPED == true then
		if SWORDEQUIPPED == true then
			if Key == "z" and ATTACK == false and RUNNING == false then
				Spin()
			end			
		else
			if Key == "z" and ATTACK == false and RUNNING == false then
				violent()
			end
		end
		if Key == "x" and ATTACK == false and RUNNING == false then
			attackone()
		end
		if Key == "c" and ATTACK == false and RUNNING == false then
			attacktwo()
		end
		if Key == "v" and ATTACK == false and RUNNING == false then
			attackthree()
		end
		if Key == "b" and ATTACK == false and RUNNING == false then
			ball()
		end
	end
	if Key == "h" and ATTACK == false and RUNNING == false then
		SWORDEQUIPPED = false
		GUNEQUIPPED = false
	end
	if Key == "q" and ATTACK == false and MODE >1 then
		MODE = MODE -1
	end
	if Key == "e" and ATTACK == false and MODE <3 then
		MODE = MODE +1
	end
	if Key == "t" then
		TOBANISH = {}
		TOBAN = {}
	end
	if Key == "0" and ATTACK == false and RUNNING == false then
		Sprint()
	end
	if Key == "f" and ATTACK == false and RUNNING == false and GUNEQUIPPED == false then
		ToggleWeapon("Sword")
	end
	if Key == "g" and ATTACK == false and RUNNING == false and SWORDEQUIPPED == false then
		ToggleWeapon("Gun")
	end
end	
 
--//=================================\\
--\\=================================//
 
local ActualVelocity = Vector3.new(0,0,0)
 
 
function KeyUp(Key)
	KEYHOLD = false
	if Key == "0" and RUNNING == true then
		Speed = 15
		RUNNING = false
	end
end
 
Mouse.Button1Down:connect(function(NEWKEY)
    MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
    MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
    KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
    KeyUp(NEWKEY)
end)  
 
--><:thinking:
function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end
 
--//=================================\\
--\\=================================//
 
while true do
	Swait()
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
TORSOVELOCITY=(ActualVelocity*Vector3.new(1,0,1)).magnitude
TORSOVELOCITY=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if TORSOVERTICALVELOCITY > 20 then
		TORSOVERTICALVELOCITY = 20
	elseif TORSOVERTICALVELOCITY < -20 then
		TORSOVERTICALVELOCITY = -20
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Jump"
		if GUNEQUIPPED == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(10), RAD(0), RAD(0)), 0.3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / 1.75)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0 * 1) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / 1.75)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / 1.75)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / 1.75)
		else
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(10), RAD(0), RAD(0)), 0.3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / 1.75)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / 1.75)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / 1.75)		
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil and ATTACK == false then
		ANIM = "Fall"
		if GUNEQUIPPED == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(40), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / 1.75)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / 1.75)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / 1.75)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / 1.75)
		else
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 20)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(40), RAD(0), RAD(0)), 0.3)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / 1.75)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / 1.75)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / 1.75)			
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil and ATTACK == false then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if SWORDEQUIPPED == false and GUNEQUIPPED == false then
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(SINE / 20))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(1),math.rad(0 - 2 * math.cos(SINE / 20))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.02 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(30 + 3 * math.cos(SINE / 40))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(SINE / 40)),math.rad(-30 - 3 * math.cos(SINE / 40))),.1)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.9, 0.5 + 0.05 * SIN(SINE / 40), -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / 3)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.9, 0.25 + 0.05 * SIN(SINE / 40), -0.35) * ANGLES(RAD(70), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / 3)
		elseif SWORDEQUIPPED == true then
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(0 - 6 * math.cos(SINE / 40)),math.rad(-6 + 2 * math.cos(SINE / 20) - 6 * math.cos(SINE / 40))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(10 - 6 * math.cos(SINE / 40)),math.rad(3 - 2 * math.cos(SINE / 20) - 3 * math.cos(SINE / 40))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.06 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(-20 + 6 * math.cos(SINE / 40))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(6),math.rad(0 - 2 * math.cos(SINE / 42)),math.rad(20 - 6 * math.cos(SINE / 40))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,0.5 + 0.05 * math.cos(SINE / 28),0.1)*ANGLES(math.rad(-13 + 3 * math.cos(SINE / 26)),math.rad(-20 - 3 * math.cos(SINE / 24)),math.rad(20 - 5 * math.cos(SINE / 34)))*ANGLES(RAD(0),RAD(90),RAD(0)),.1)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,CF(-1,0.5 + 0.05 * math.cos(SINE / 28),0.1)*ANGLES(math.rad(-13 - 3 * math.cos(SINE / 25)),math.rad(10 + 3 * math.cos(SINE / 24)),math.rad(-10 + 5 * math.cos(SINE / 34)))*ANGLES(RAD(0),RAD(-90),RAD(0)),.1)
		elseif GUNEQUIPPED == true then
			RightHip.C0=Clerp(RightHip.C0,CF(1,-1 + 0.05 * math.cos(SINE / 20)  - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(90),math.rad(0))*ANGLES(math.rad(-3 + 2 * math.cos(SINE / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(SINE / 20))),.1)
			LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1 + 0.05 * math.cos(SINE / 20) - 0.02 * math.cos(SINE / 40),0)*ANGLES(math.rad(0),math.rad(-90),math.rad(0))*ANGLES(math.rad(-3 - 2 * math.cos(SINE / 40)),math.rad(1),math.rad(0 - 2 * math.cos(SINE / 20))),.1)
			RootJoint.C0=Clerp(RootJoint.C0,ROOTC0*CF(0 + 0.02 * math.cos(SINE / 40),0 - 0.02 * math.cos(SINE / 40),-0.05 - 0.05 * math.cos(SINE / 20))*ANGLES(math.rad(0 + 2 * math.cos(SINE / 20)),math.rad(0 + 2 * math.cos(SINE / 40)),math.rad(30 + 3 * math.cos(SINE / 40))),.1)
			Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(math.rad(2),math.rad(0 - 7 * math.cos(SINE / 40)),math.rad(-30 - 3 * math.cos(SINE / 40))),.1)
			RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,0.5 + 0.05 * math.cos(SINE / 28),0.1)*ANGLES(math.rad(-6 + 5 * math.cos(SINE / 26)),math.rad(-10 - 6 * math.cos(SINE / 24)),math.rad(13 - 5 * math.cos(SINE / 34)))*ANGLES(RAD(0),RAD(90),RAD(0)),.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil and ATTACK == false then
		if RUNNING == false then
			ANIM = "Walk"
			DOUBLED = false
			READYTODOUBLE = false
			if SWORDEQUIPPED == false and GUNEQUIPPED == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(-70) * COS(SINE / 7) , RAD(-90),	RAD(-5)), 0.1)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)
			elseif SWORDEQUIPPED == true then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(-70) * COS(SINE / 7) , RAD(-90),	RAD(-5)), 0.1)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / 1)
			elseif GUNEQUIPPED == true then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7) * ANGLES(RAD(9-2.5 * COS(SINE / 3.5)), RAD(0), RAD(10 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.925 - 0.5 * COS(SINE / 7) / 2, 0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 - 35 * COS(SINE / 7)) + -SIN(SINE / 7) / 2.5, RAD(90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.925 + 0.5 * COS(SINE / 7) / 2, -0.5 * COS(SINE / 7) / 2) * ANGLES(RAD(-15 + 35 * COS(SINE / 7)) + SIN(SINE / 7) / 2.5, RAD(-90 - 2 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30), 0.025 * COS(SINE / 20)) * ANGLES(RAD(70) * COS(SINE / 7) , RAD(90), RAD(5)), 0.1)				
			end
		else
			ANIM = "Run"
			DOUBLED = false
			READYTODOUBLE = false
			if SWORDEQUIPPED == false and GUNEQUIPPED == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1* 1) - 1)) * ANGLES(RAD(-2.5 * SIN(SINE / 20)), RAD(0), RAD(0) - Head.RotVelocity.Y / 15), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30)* 1, 0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(110)  * COS(SINE / 7) , RAD(90), RAD(13) - RightArm.RotVelocity.Y / 75), 0.15)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30)* 1, -0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(-110)  * COS(SINE / 7) , RAD(-90) ,	RAD(-13) + LeftArm.RotVelocity.Y / 75), 0.15)
			elseif SWORDEQUIPPED == true then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1* 1) - 1)) * ANGLES(RAD(-2.5 * SIN(SINE / 20)), RAD(0), RAD(0) - Head.RotVelocity.Y / 15), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				RightShoulder.C0=Clerp(RightShoulder.C0,CF(1,0.5 + 0.05 * math.cos(SINE / 28),0.1)*ANGLES(math.rad(-13 + 3 * math.cos(SINE / 26)),math.rad(-20 - 3 * math.cos(SINE / 24)),math.rad(20 - 5 * math.cos(SINE / 34)))*ANGLES(RAD(0),RAD(90),RAD(20)),.1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5 + 0.05 * SIN(SINE / 30)* 1, -0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(-110)  * COS(SINE / 7) , RAD(-90) ,	RAD(-13) + LeftArm.RotVelocity.Y / 75), 0.15)
			elseif GUNEQUIPPED == true then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0* 1, 0* 1, -0.175 + 0.025 * COS(SINE / 3.5) + -SIN(SINE / 3.5) / 7* 1) * ANGLES(RAD(26 - 4.5 * COS(SINE / 3.5)), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(15 * COS(SINE / 7))), 0.15)
				Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1* 1) - 1)) * ANGLES(RAD(-2.5 * SIN(SINE / 20)), RAD(0), RAD(0) - Head.RotVelocity.Y / 15), 0.3)
				RightHip.C0 = Clerp(RightHip.C0, CF(1* 1, -0.925 - 0.5 * COS(SINE / 7) / 2* 1, 0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 - 55 * COS(SINE / 7)) - RightLeg.RotVelocity.Y / 75 + -SIN(SINE / 7) / 2.5, RAD(90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 + 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1* 1, -0.925 + 0.5 * COS(SINE / 7) / 2* 1, -0.7 * COS(SINE / 7) / 2* 1) * ANGLES(RAD(-15 + 55 * COS(SINE / 7)) + LeftLeg.RotVelocity.Y / 75 + SIN(SINE / 7) / 2.5, RAD(-90 - 0.1 * COS(SINE / 7)), RAD(0)) * ANGLES(RAD(0 - 0.1 * COS(SINE / 7)), RAD(0), RAD(0)), 0.3)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5 + 0.05 * SIN(SINE / 30)* 1, 0.34 * COS(SINE / 7* 1)) * ANGLES(RAD(110)  * COS(SINE / 7) , RAD(90), RAD(13) - RightArm.RotVelocity.Y / 75), 0.15)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(140 + 5 * COS(SINE /32)), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			end
		end
	end
	val = MRANDOM(200,255)
	Humanoid.CameraOffset = VT(0,0,0)
	if GUNEQUIPPED == false then
		GunGrip.C0 = CF(-1.1, -1, 0)*ANGLES(RAD(-90),RAD(0),RAD(0))
		GunGrip.Part0 = Torso
	else
		GunGrip.C0 = CF(0, -1.5, 0)*ANGLES(RAD(-90),RAD(0),RAD(0))
		GunGrip.Part0 = LeftArm
		if HITFLOOR ~= nil then
			WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		WACKYEFFECT({Time = 15, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.015,0,0.015)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	Gun.Parent = Character
	if SWORDEQUIPPED == false then
		SwordGrip.C0 = CF(0, 0, 0.5)*ANGLES(RAD(-90),RAD(-90-45),RAD(90))
		SwordGrip.Part0 = Torso
	else
		SwordGrip.C0 = CF(0, -1, -2)*ANGLES(RAD(-90),RAD(0),RAD(0))
		SwordGrip.Part0 = RightArm
		if HITFLOOR ~= nil then
			WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.1,0,0.1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3.25,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,1,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.1,6,0.1), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(1,10)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = C3(1,1,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
	for _, c in pairs(Effects:GetDescendants()) do
		if c:IsA("Part") or c:IsA("MeshPart") then
			c.Color = Color3.fromRGB(255,215,0)
		elseif c:IsA("ParticleEmitter") or c:IsA("Trail") then
			c.Color = ColorSequence.new(Color3.fromRGB(255,215,0))
		elseif c:IsA("ImageLabel") then
			c.ImageColor3 = Color3.fromRGB(255,215,0)
		end
	end
	if not PlayerGui:FindFirstChild("W E A P O N G U I") then
		WEAPONGUI:remove()
		local WEAPONGUI = IT("ScreenGui",PlayerGui)
		WEAPONGUI.Name = "W E A P O N G U I"
		local ATTACKSFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.775, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
		local TEXT = CreateLabel(ATTACKSFRAME, "[B A N I S H]", Color3.fromRGB(255,215,0), 8.5,  Enum.Font.SourceSansBold, 0, 2, 0.5, "W E A P O N T E X T L A B E L")
	else
		for _, c in pairs(PlayerGui:GetDescendants()) do
			if c:IsA("TextLabel") and c.Name == "W E A P O N T E X T L A B E L" then
				c.Font = FONTS[MRANDOM(1,#FONTS)]
				c.TextColor3 = Color3.fromRGB(val,val,0)
				if MODE == 1 then
					c.Text = "[B A N I S H]"
				elseif MODE == 2 then
					c.Text = "[K I C K]"
				elseif MODE == 3 then
					c.Text = "[B A N]"
				end
			end 
		end
	end
	unanchor()
	Humanoid.DisplayDistanceType = "None"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	if sick then
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://3134116147"
		sick.MaxDistance = "inf"
		sick.Volume = 2
		sick.Looped = true
		sick.Playing = true
	else
		local sick = Instance.new("Sound",Character)
		sick.Name = "epic music aint it"
		sick.SoundId = "rbxassetid://3134116147"
		sick.MaxDistance = "inf"
		sick.Volume = 2
		sick.Looped = true
		sick.Playing = true
	end
end 
