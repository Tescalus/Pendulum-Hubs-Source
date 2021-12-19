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
warn("Netless Activated!")

_G.loop = true
local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }
    
    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')--This will get the first "SpecialMesh" it finds if it does not find any, then it will return nil
    if Mesh and m then --If Mesh is set to true and it finds a mesh it will destroy it
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true
    
    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}
        
end 
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
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
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local Mouse = plr:GetMouse()
local char = game.Workspace.non
local tweenserv = game:GetService("TweenService")
local lighting = game:GetService("Lighting")
local hum = char:FindFirstChildOfClass("Humanoid")
local tor = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
local root = char:FindFirstChild("HumanoidRootPart")
local head = char:FindFirstChild("Head")
local face = head:FindFirstChildOfClass("Decal")
local larm = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
local rleg = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
local lleg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
local neck = tor:FindFirstChild("Neck")
local rootj = root:FindFirstChild("RootJoint")
local LS = tor:FindFirstChild("Left Shoulder")
local RS = tor:FindFirstChild("Right Shoulder")
local LH = tor:FindFirstChild("Left Hip")
local RH = tor:FindFirstChild("Right Hip")
local bp = plr:FindFirstChild("Backpack")
local cam = workspace.CurrentCamera
hum.WalkSpeed = 25
hum:ClearAllChildren()
char.Animate:remove()


--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
ManualWeld2 = Instance.new("ManualWeld")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
ManualWeld5 = Instance.new("ManualWeld")
Part6 = Instance.new("Part")
ManualWeld7 = Instance.new("ManualWeld")
Part8 = Instance.new("Part")
ParticleEmitter9 = Instance.new("ParticleEmitter")
ManualWeld10 = Instance.new("ManualWeld")
Part11 = Instance.new("Part")
ManualWeld12 = Instance.new("ManualWeld")
Part19 = Instance.new("Part")
ManualWeld20 = Instance.new("ManualWeld")
Part21 = Instance.new("Part")
ManualWeld22 = Instance.new("ManualWeld")
Model0.Name = "saber"
Model0.Parent = mas
Part1.Name = "hand"
Part1.Parent = Model0
Part1.Material = Enum.Material.SmoothPlastic
Part1.BrickColor = BrickColor.new("Really black")
Part1.Rotation = Vector3.new(0, -90, 0)
Part1.CanCollide = false
Part1.Shape = Enum.PartType.Cylinder
Part1.Size = Vector3.new(1.29999995, 0.299999952, 0.299999952)
Part1.CFrame = CFrame.new(-1741.76343, 117.599991, -204.231796, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part1.Position = Vector3.new(-1741.76343, 117.599991, -204.231796)
Part1.Orientation = Vector3.new(0, -90, 0)
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld2.Name = "Weld"
ManualWeld2.Parent = Part1
ManualWeld2.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld2.C1 = CFrame.new(0.0347900391, 0, 0.0680541992, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld2.Part0 = Part1
ManualWeld2.Part1 = Part3
Part3.Name = "main"
Part3.Parent = Model0
Part3.Transparency = 1
Part3.CanCollide = false
Part3.Size = Vector3.new(1, 1, 1)
Part3.CFrame = CFrame.new(-1741.79822, 117.599991, -204.29985, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(-1741.79822, 117.599991, -204.29985)
Part4.Name = "cap2"
Part4.Parent = Model0
Part4.Material = Enum.Material.SmoothPlastic
Part4.BrickColor = BrickColor.new("Really black")
Part4.Rotation = Vector3.new(0, -90, 0)
Part4.CanCollide = false
Part4.Shape = Enum.PartType.Cylinder
Part4.Size = Vector3.new(0.0999999046, 0.349999994, 0.349999994)
Part4.CFrame = CFrame.new(-1741.76343, 117.599991, -203.531723, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part4.Position = Vector3.new(-1741.76343, 117.599991, -203.531723)
Part4.Orientation = Vector3.new(0, -90, 0)
Part4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld5.Name = "Weld"
ManualWeld5.Parent = Part4
ManualWeld5.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld5.C1 = CFrame.new(0.0347900391, 0, 0.768127441, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld5.Part0 = Part4
ManualWeld5.Part1 = Part3
Part6.Name = "bot1"
Part6.Parent = Model0
Part6.Material = Enum.Material.SmoothPlastic
Part6.BrickColor = BrickColor.new("Really black")
Part6.Rotation = Vector3.new(0, -90, 0)
Part6.CanCollide = false
Part6.Shape = Enum.PartType.Cylinder
Part6.Size = Vector3.new(0.0999999046, 0.349999994, 0.349999994)
Part6.CFrame = CFrame.new(-1741.76343, 117.599991, -204.931747, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part6.Position = Vector3.new(-1741.76343, 117.599991, -204.931747)
Part6.Orientation = Vector3.new(0, -90, 0)
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld7.Name = "Weld"
ManualWeld7.Parent = Part6
ManualWeld7.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld7.C1 = CFrame.new(0.0347900391, 0, -0.631896973, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld7.Part0 = Part6
ManualWeld7.Part1 = Part3
Part8.Name = "cap"
Part8.Parent = Model0
Part8.Material = Enum.Material.SmoothPlastic
Part8.BrickColor = BrickColor.new("Gold")
Part8.Rotation = Vector3.new(0, -90, 0)
Part8.CanCollide = false
Part8.Shape = Enum.PartType.Cylinder
Part8.Size = Vector3.new(0.0999999046, 0.300000012, 0.300000012)
Part8.CFrame = CFrame.new(-1741.76343, 117.599991, -203.431747, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.937255, 0.721569, 0.219608)
Part8.Position = Vector3.new(-1741.76343, 117.599991, -203.431747)
Part8.Orientation = Vector3.new(0, -90, 0)
Part8.Color = Color3.new(0.937255, 0.721569, 0.219608)
ParticleEmitter9.Parent = Part8
ParticleEmitter9.LockedToPart = true
ParticleEmitter9.Transparency = NumberSequence.new(0,0.1)
ParticleEmitter9.Size = NumberSequence.new(0.5,0.5)
ParticleEmitter9.Color = ColorSequence.new(Color3.new(0.333333, 0, 0),Color3.new(0.666667, 0, 0))
ParticleEmitter9.EmissionDirection = "Right"
ParticleEmitter9.LightEmission = 0.44999998807907
ParticleEmitter9.Texture = "rbxassetid://147313514"
ParticleEmitter9.Lifetime = NumberRange.new(0.5, 0.5)
ParticleEmitter9.Rate = 200
ParticleEmitter9.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter9.Speed = NumberRange.new(10, 10)
ParticleEmitter9.VelocitySpread = 2
ParticleEmitter9.Color = ColorSequence.new(Color3.new(0.333333, 0, 0),Color3.new(0.666667, 0, 0))
ManualWeld10.Name = "Weld"
ManualWeld10.Parent = Part8
ManualWeld10.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld10.C1 = CFrame.new(0.0347900391, 0, 0.868103027, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld10.Part0 = Part8
ManualWeld10.Part1 = Part3
Part11.Name = "bot2"
Part11.Parent = Model0
Part11.Material = Enum.Material.SmoothPlastic
Part11.BrickColor = BrickColor.new("Really black")
Part11.Rotation = Vector3.new(0, -90, 0)
Part11.CanCollide = false
Part11.Shape = Enum.PartType.Cylinder
Part11.Size = Vector3.new(0.0999999046, 0.300000012, 0.300000012)
Part11.CFrame = CFrame.new(-1741.76343, 117.599991, -205.031723, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part11.Position = Vector3.new(-1741.76343, 117.599991, -205.031723)
Part11.Orientation = Vector3.new(0, -90, 0)
Part11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
ManualWeld12.Name = "Weld"
ManualWeld12.Parent = Part11
ManualWeld12.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld12.C1 = CFrame.new(0.0347900391, 0, -0.731872559, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld12.Part0 = Part11
ManualWeld12.Part1 = Part3
Part19.Name = "outblade"
Part19.Parent = Model0
Part19.Material = Enum.Material.Neon
Part19.BrickColor = BrickColor.new("Maroon")
Part19.Rotation = Vector3.new(0, -90, 0)
Part19.CanCollide = false
Part19.Shape = Enum.PartType.Cylinder
Part19.Size = Vector3.new(4.39999962, 0.2500000012, 0.2500000012)
Part19.CFrame = CFrame.new(-1741.76343, 117.599991, -201.181747, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Color = Color3.new(0.458824, 0, 0)
Part19.Position = Vector3.new(-1741.76343, 117.599991, -201.181747)
Part19.Orientation = Vector3.new(0, -90, 0)
Part19.Color = Color3.new(0.458824, 0, 0)
ManualWeld20.Name = "Weld"
ManualWeld20.Parent = Part19
ManualWeld20.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld20.C1 = CFrame.new(0.0347900391, 0, 3.11810303, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld20.Part0 = Part19
ManualWeld20.Part1 = Part3
Part21.Name = "outball"
Part21.Parent = Model0
Part21.Material = Enum.Material.Neon
Part21.BrickColor = BrickColor.new("Maroon")
Part21.Rotation = Vector3.new(0, -90, 0)
Part21.CanCollide = false
Part21.Shape = Enum.PartType.Ball
Part21.Size = Vector3.new(0.25, 0.25, 0.25)
Part21.CFrame = CFrame.new(-1741.76343, 117.599991, -198.981674, 1.19248806e-08, 0, -1, 0, 1, 0, 1, 0, 1.19248806e-08)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.Color = Color3.new(0.458824, 0, 0)
Part21.Position = Vector3.new(-1741.76343, 117.599991, -198.981674)
Part21.Orientation = Vector3.new(0, -90, 0)
Part21.Color = Color3.new(0.458824, 0, 0)
ManualWeld22.Name = "Weld"
ManualWeld22.Parent = Part21
ManualWeld22.C0 = CFrame.new(0, 0, 0, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08)
ManualWeld22.C1 = CFrame.new(0.0347900391, 0, 5.31817627, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld22.Part0 = Part21
ManualWeld22.Part1 = Part3
for i,v in pairs(mas:GetChildren()) do
	v.Parent = char
	saber = v
	outblade = Part19
	outball = Part21
	particle = ParticleEmitter9
	main = Part3
	cap = Part8
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

local ws = hum.WalkSpeed
local jp = hum.JumpPower
local nws = ws
local njp = jp

local rootj0 = rootj.C0
local neck0 = neck.C0
local LS0 = LS.C0
local RS0 = RS.C0
local LH0 = LH.C0
local RH0 = RH.C0
local rootj1 = rootj.C1
local neck1 = neck.C1
local LS1 = LS.C1
local RS1 = RS.C1
local LH1 = LH.C1
local RH1 = RH.C1

local pshew = Instance.new("Sound", cap)
pshew.SoundId = "rbxassetid://605604103"
pshew.Volume = 2
pshew.Name = "PSHEW"

local sheww = Instance.new("Sound", cap)
sheww.SoundId = "rbxassetid://605607641"
sheww.Volume = 2
sheww.Name = "SHEWW"

local wanwan = Instance.new("Sound", outblade)
wanwan.SoundId = "rbxassetid://1460966017"
wanwan.Volume = 1
wanwan.Name = "WANWAN"
wanwan.Looped = true

local chwan = Instance.new("Sound", outblade)
chwan.SoundId = "rbxassetid://1647165403"
chwan.Volume = 1
chwan.Name = "CHWAN"

local pssps = Instance.new("Sound", outblade)
pssps.SoundId = "rbxassetid://1335649595"
pssps.Volume = 1
pssps.Name = "PSSPS"

local vomb = Instance.new("Sound", outblade)
vomb.SoundId = "rbxassetid://2088308141"
vomb.Volume = 2
vomb.Name = "VOMB"

local ooowa = Instance.new("Sound", larm)
ooowa.SoundId = "rbxassetid://1386781853"
ooowa.Volume = 2.5
ooowa.Name = "OOOWA"

local koohaa = Instance.new("Sound", head)
koohaa.SoundId = "rbxassetid://149840174"
koohaa.Volume = 2
koohaa.Name = "KOOOHAAA"
koohaa.Looped = true
koohaa:Play()
local thepos = koohaa.TimePosition

-----------------------------------------------------------------------------

local CFn = CFrame.new
local CFa = CFrame.Angles
local Rad = math.rad
local Cos = math.cos
local Sin = math.sin
local sine = 1
local attacking = false
local equipped = false
local Changing = false
local Swinging = false
local kill = false
local attackstate = 1
local Choking = false
local buttonC = false

-----------------------------------------------------------------------------

for i,v in pairs(char:GetChildren()) do
	if v:IsA("Shirt") then
		v:Destroy()
	end
	if v:IsA("Pants") then
		v:Destroy()
	end
	if v:IsA("Accessory") then
		v:Destroy()
	end
end

local ff = Instance.new("ForceField", char)
ff.Visible = false
hum.MaxHealth = math.huge
hum.Health = math.huge

local shirt = Instance.new("Shirt", char)
shirt.ShirtTemplate = "rbxassetid://1724954890"
local pants = Instance.new("Pants", char)
pants.PantsTemplate = "rbxassetid://1057571121"

head.Transparency = 1



local hairw = Instance.new("Weld", hair)
hairw.Part0 = head
hairw.Part1 = hair
hairw.C1 = CFn(0, -0.1, 0)

local AT0 = Instance.new("Attachment", outblade)
AT0.Position = Vector3.new(-2.2, 0, 0)

local AT1 = Instance.new("Attachment", outblade)
AT1.Position = Vector3.new(2.4, 0, 0)

local trail = Instance.new("Trail", outblade)
trail.Attachment0 = AT0
trail.Attachment1 = AT1
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0.9, 0)})
trail.LightEmission = 0.7
trail.Lifetime = 0.5
trail.MaxLength = 2
trail.MinLength = 0.05
trail.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, 0.2, 0)})
trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 0, 0), 0), ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 0, 0), 0)})

local mainw = Instance.new("Weld", main)
mainw.Part0 = tor
mainw.Part1 = main
mainw.C1 = CFn(1, 1, 0)

local bld = Instance.new("Part", saber)
bld.Size = Vector3.new(4.7, 1, 1)
bld.CanCollide = false
bld.Transparency = 1

local bldw = Instance.new("Weld", bld)
bldw.Part0 = outblade
bldw.Part1 = bld




outblade.Transparency = 1
outball.Transparency = 1
trail.Enabled = false
particle.Transparency = NumberSequence.new(0, 1)
particle.LockedToPart = false
particle.Enabled = false

-----------------------------------------------------------------------------

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

function clerp(a, b, t)
	return a:lerp(b, t)
end

function Sound(id, vol, par, name, looped)
	if not par:FindFirstChild(name) then
		local sound = Instance.new("Sound", par)
		sound.SoundId = id
		sound.Volume = vol
		if looped == true then
			sound.Looped = true
		end
		sound.Name = name
		sound:Play()
		return sound
	else
		local sound = par:FindFirstChild(name)
		sound:Play()
		return sound
	end
end

function StopSound(id, vol, par, name, looped)
	if not par:FindFirstChild(name) then
		local sound = Instance.new("Sound", par)
		sound.SoundId = id
		sound.Volume = vol
		if looped == true then
			sound.Looped = true
		end
		sound.Name = name
		sound:Stop()
		return sound
	else
		local sound = par:FindFirstChild(name)
		sound:Stop()
		return sound
	end
end

function Force(part, pos, part2, pos2, par2)
	local parp = Instance.new("Part", char)
	parp.Size = Vector3.new(1, 1, 1)
	parp.Transparency = 1
	parp.CanCollide = false
	local parpw = Instance.new("Weld", parp)
	parpw.Part0 = part
	parpw.Part1 = parp
	parpw.C1 = pos
	local pare = Instance.new("ParticleEmitter", parp)
	pare.LockedToPart = true
	pare.Transparency = NumberSequence.new(0.4, 1)
	pare.Size = NumberSequence.new(1.25, 0)
	pare.Lifetime = NumberRange.new(1)
	pare.Rotation = NumberRange.new(0, 360)
	pare.Rate = 200
	pare.RotSpeed = NumberRange.new(360, 360)
	pare.Speed = NumberRange.new(4)
	pare.Color = ColorSequence.new(Color3.fromRGB(170, 0, 0),Color3.fromRGB(255, 255, 255))
	pare.SpreadAngle = Vector2.new(360, 360)
	pare.Texture = "rbxassetid://122356023"
	local parp2 = parp:Clone()
	parp2.Parent = par2
	local parp2w = parp2:FindFirstChild("Weld")
	parp2w.Part0 = part2
	parp2w.Part1 = parp2
	parp2w.C1 = pos2
	return parp, parp2
end

function equipunequip()
	if attacking == false and equipped == false and Changing == false then
		attacking = true
		Changing = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		for i = 0,1,.1 do
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-20), 0, Rad(-60)), i)
			rootj.C1 = clerp(rootj.C1, rootj1, i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0, i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFn(0, 0, -0.5) * CFa(0, Rad(90), 0), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		StopSound("rbxassetid://605607641", 2, cap, "SHEWW", false)
		Sound("rbxassetid://605604103", 2, cap, "PSHEW", false)
		Sound("rbxassetid://1460966017", 1, cap, "WANWAN", true)
		equipped = true
		mainw.Part0 = rarm
		mainw.C1 = CFn(0, 1, 0) * CFa(0, Rad(180), 0)
		outblade.Transparency = 0
		outball.Transparency = 0
		trail.Enabled = true
		particle.Transparency = NumberSequence.new(0, 0.1)
		particle.LockedToPart = true
		particle.Enabled = true
		for i = 0,1,.1 do
			neck.C1 = clerp(neck.C1, neck1, i)
			rootj.C1 = clerp(rootj.C1, rootj1, i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(50), 0, 0), i)
			LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0, i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		hum.WalkSpeed = nws
		hum.JumpPower = njp
		Changing = false
		attacking = false
	elseif attacking == false and equipped == true and Changing == false then
		attacking = true
		Changing = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		StopSound("rbxassetid://605604103", 2, cap, "PSHEW", false)
		Sound("rbxassetid://605607641", 2, cap, "SHEWW", false)
		StopSound("rbxassetid://1460966017", 1, cap, "WANWAN", true)
		outblade.Transparency = 1
		outball.Transparency = 1
		trail.Enabled = false
		particle.Transparency = NumberSequence.new(0, 1)
		particle.LockedToPart = false
		particle.Enabled = false
		for i = 0,1,.1 do
			neck.C1 = clerp(neck.C1, neck1, i)
			rootj.C1 = clerp(rootj.C1, rootj1, i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(50), 0, 0), i)
			LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0, i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.1 do
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-20), 0, Rad(-60)), i)
			rootj.C1 = clerp(rootj.C1, rootj1, i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0, i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFn(0, 0, -0.5) * CFa(0, Rad(90), 0), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		mainw.Part0 = tor
		mainw.C1 = CFn(1, 1, 0)
		equipped = false
		hum.WalkSpeed = nws
		hum.JumpPower = njp
		Changing = false
		attacking = false
	end
end

function Swing()
	if attacking == false and equipped == true and Swinging == false then
		attacking = true
		Swinging = true
		kill = false
		hum.WalkSpeed = 3
		hum.JumpPower = 5
		local hey = bld.Touched:connect(function(hit)
    			if kill == true and hit.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) then
            	    kill = false
            		local killman = hit.Parent
            		local killhum = killman:FindFirstChildOfClass("Humanoid")
					local up = true
					for i = 1,2 do
						local cutpart = Instance.new("Part", killman)
						cutpart.Size = Vector3.new(hit.Size.X, hit.Size.Y / 2, hit.Size.Z)
						cutpart.BrickColor = hit.BrickColor
						cutpart.Material = hit.Material
						cutpart.Transparency = hit.Transparency
						cutpart.Reflectance = hit.Reflectance
						cutpart.BackSurface = hit.BackSurface
						cutpart.BottomSurface = hit.BottomSurface
						cutpart.FrontSurface = hit.FrontSurface
						cutpart.LeftSurface = hit.LeftSurface
						cutpart.RightSurface = hit.RightSurface
						cutpart.TopSurface = hit.TopSurface
						if up == true then
							cutpart.CFrame = hit.CFrame * CFn(0, hit.Size.Y / 2, 0)
							up = false
						else
							cutpart.CFrame = hit.CFrame * CFn(0, -(hit.Size.Y / 2), 0)
							up = true
						end
					end
					hit:Destroy()
            		if attackstate == 1 then
						Sound("rbxassetid://1647165403", 1, outblade, "CHWAN", false)
					elseif attackstate == 2 then
						Sound("rbxassetid://1335649595", 1, outblade, "PSSPS", false)
					end
        	elseif kill == true and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) then
            	    kill = false
            		local killman = hit.Parent.Parent
            		local killhum = killman:FindFirstChildOfClass("Humanoid")
					local up = true
					for i = 1,2 do
						local cutpart = Instance.new("Part", killman)
						cutpart.Size = Vector3.new(hit.Size.X, hit.Size.Y / 2, hit.Size.Z)
						cutpart.BrickColor = hit.BrickColor
						cutpart.Material = hit.Material
						cutpart.Transparency = hit.Transparency
						cutpart.Reflectance = hit.Reflectance
						cutpart.BackSurface = hit.BackSurface
						cutpart.BottomSurface = hit.BottomSurface
						cutpart.FrontSurface = hit.FrontSurface
						cutpart.LeftSurface = hit.LeftSurface
						cutpart.RightSurface = hit.RightSurface
						cutpart.TopSurface = hit.TopSurface
						if up == true then
							cutpart.CFrame = hit.CFrame * CFn(0, hit.Size.Y / 2, 0)
							up = false
						else
							cutpart.CFrame = hit.CFrame * CFn(0, -(hit.Size.Y / 2), 0)
							up = true
						end
					end
					hit:Destroy()
            		if attackstate == 1 then
						Sound("rbxassetid://1647165403", 1, outblade, "CHWAN", false)
					elseif attackstate == 2 then
						Sound("rbxassetid://1335649595", 1, outblade, "PSSPS", false)
					end
                end
    		end)
		if attackstate == 1 then
			attackstate = 2
			for i = 0,1,.15 do
				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-10)), i)
				rootj.C1 = clerp(rootj.C1, rootj1, i)
				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
				RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(-80), Rad(-40)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(0.3, 0, 0) * CFa(Rad(5), 0, 0), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0, i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(30), 0), i)
				LH.C0 = clerp(LH.C0, LH0, i)
				RH.C0 = clerp(RH.C0, RH0, i)
				swait()
			end
			Sound("rbxassetid://2088308141", 2, outblade, "VOMB", false)
			for i = 0,1,.15 do
				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(10)), i)
				rootj.C1 = clerp(rootj.C1, rootj1, i)
				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
				RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(-80), Rad(-50)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0, i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(-75), 0), i)
				LH.C0 = clerp(LH.C0, LH0, i)
				RH.C0 = clerp(RH.C0, RH0, i)
				swait()
			end
		elseif attackstate == 2 then
			attackstate = 1
			for i = 0,1,.15 do
				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(10)), i)
				rootj.C1 = clerp(rootj.C1, rootj1, i)
				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
				RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(110), Rad(-20), Rad(-90)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0, i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0, i)
				RH.C0 = clerp(RH.C0, RH0, i)
				swait()
			end
			Sound("rbxassetid://2088308141", 2, outblade, "VOMB", false)
			for i = 0,1,.15 do
				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-10)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFa(0, 0, Rad(-40)), i)
				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), i)
				RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(-80), Rad(70), Rad(-40)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), 0, 0), i)
				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), Rad(40), 0), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0, i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0, i)
				RH.C0 = clerp(RH.C0, RH0, i)
				swait()
			end
		end
		hum.WalkSpeed = nws
		hum.JumpPower = njp
		kill = false
		hey:disconnect()
		Swinging = false
		attacking = false
	end
end

function Choke()
	if attacking == false and Choking == false then
		attacking = true
		Choking = false
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		if Mouse.Target ~= nil and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
			local theguy = Mouse.Target.Parent
			local thehum = theguy:FindFirstChildOfClass("Humanoid")
			if thehum.Health > 0 then
			    local thehead = theguy:FindFirstChild("Head")
    			local thetor = theguy:FindFirstChild("Torso") or theguy:FindFirstChild("UpperTorso")
    			root.CFrame = CFn(root.CFrame.p, Vector3.new(Mouse.Hit.x, root.CFrame.y, Mouse.Hit.z))
    			thetor.CFrame = CFn(thetor.CFrame.p, Vector3.new(root.CFrame.x, thetor.CFrame.y, root.CFrame.z))
    			local thetorframe = thetor.CFrame
    			local forpar, forpar2 = Force(larm, CFn(0, 1, 0), thehead, CFn(0, 0.5, 0), theguy)
				if thetor.Anchored == true then
					thetor.Anchored = false
				end
    			local thebv = Instance.new("BodyPosition", thetor)
    			thebv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    			thebv.Position = thetorframe.p
				Sound("rbxassetid://1386781853", 2.5, larm, "OOOWA", false)
    			for i = 0,1,.15 do
    				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-20)) , i)
    				rootj.C1 = clerp(rootj.C1, rootj1 * CFa(0, 0, Rad(20)), i)
    				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, Rad(90)), i)
    				RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(20), 0), i)
    				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), Rad(-20), 0), i)
    				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
    				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
    				rootj.C0 = clerp(rootj.C0, rootj0, i)
    				LS.C0 = clerp(LS.C0, LS0, i)
    				RS.C0 = clerp(RS.C0, RS0, i)
    				LH.C0 = clerp(LH.C0, LH0, i)
    				RH.C0 = clerp(RH.C0, RH0, i)
    				swait()
    			end
    			thebv.Position = thetorframe * CFn(0, 10, 0).p
    			for i = 0,1,.05 do
    				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(20), 0, Rad(-20)), i)
    				rootj.C1 = clerp(rootj.C1, rootj1 * CFa(0, 0, Rad(20)), i)
    				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, Rad(140)), i)
    				RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(20), 0), i)
    				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), Rad(-20), 0), i)
    				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
    				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
    				rootj.C0 = clerp(rootj.C0, rootj0, i)
    				LS.C0 = clerp(LS.C0, LS0, i)
    				RS.C0 = clerp(RS.C0, RS0, i)
    				LH.C0 = clerp(LH.C0, LH0, i)
    				RH.C0 = clerp(RH.C0, RH0, i)
    				swait()
    			end
    			for i = 1,math.huge do
    				if buttonC == true and thehum.Health > 0 then
    					thehum.Health = thehum.Health - 0
    					swait()
    				elseif buttonC == false or thehum.Health <= 0 then
    					break
    				end
    			end
    			if thehum.Health <= 0 then
    			    Sound("rbxassetid://513153251", 4, thetor, "OUCH", false)
    			end
    			thebv:Destroy()
    			forpar:Destroy()
    			forpar2:Destroy()
			end
		elseif Mouse.Target ~= nil and Mouse.Target.Parent.Parent:FindFirstChildOfClass("Humanoid") then
			local theguy = Mouse.Target.Parent.Parent
			local thehum = theguy:FindFirstChildOfClass("Humanoid")
			   if thehum.Health > 0 then
			    local thehead = theguy:FindFirstChild("Head")
    			local thetor = theguy:FindFirstChild("Torso") or theguy:FindFirstChild("UpperTorso")
    			root.CFrame = CFn(root.CFrame.p, Vector3.new(Mouse.Hit.x, root.CFrame.y, Mouse.Hit.z))
    			thetor.CFrame = CFn(thetor.CFrame.p, Vector3.new(root.CFrame.x, root.CFrame.y, root.CFrame.z))
    			local thetorframe = thetor.CFrame
    			local forpar, forpar2 = Force(larm, CFn(0, 1, 0), thehead, CFn(0, 0.5, 0), theguy)
				if thetor.Anchored == true then
					thetor.Anchored = false
				end
    			local thebv = Instance.new("BodyPosition", thetor)
    			thebv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    			thebv.Position = thetorframe.p
				Sound("rbxassetid://1386781853", 2.5, larm, "OOOWA", false)
    			for i = 0,1,.15 do
    				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-20)) , i)
    				rootj.C1 = clerp(rootj.C1, rootj1 * CFa(0, 0, Rad(20)), i)
    				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, Rad(90)), i)
    				RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(20), 0), i)
    				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), Rad(-20), 0), i)
    				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
    				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
    				rootj.C0 = clerp(rootj.C0, rootj0, i)
    				LS.C0 = clerp(LS.C0, LS0, i)
    				RS.C0 = clerp(RS.C0, RS0, i)
    				LH.C0 = clerp(LH.C0, LH0, i)
    				RH.C0 = clerp(RH.C0, RH0, i)
    				swait()
    			end
    			thebv.Position = thetorframe * CFn(0, 10, 0).p
    			for i = 0,1,.05 do
    				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(20), 0, Rad(-20)), i)
    				rootj.C1 = clerp(rootj.C1, rootj1 * CFa(0, 0, Rad(20)), i)
    				LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, Rad(140)), i)
    				RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(20), 0), i)
    				LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(5), Rad(-20), 0), i)
    				RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(5), 0, 0), i)
    				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
    				rootj.C0 = clerp(rootj.C0, rootj0, i)
    				LS.C0 = clerp(LS.C0, LS0, i)
    				RS.C0 = clerp(RS.C0, RS0, i)
    				LH.C0 = clerp(LH.C0, LH0, i)
    				RH.C0 = clerp(RH.C0, RH0, i)
    				swait()
    			end
    			for i = 1,math.huge do
    				if buttonC == true and thehum.Health > 0 then
    					thehum.Health = thehum.Health - 1.5
    					swait()
    				elseif buttonC == false or thehum.Health <= 0 then
    					break
    				end
    			end
    			if thehum.Health <= 0 then
    				Sound("rbxassetid://513153251", 4, thetor, "OUCH", false)
    			end
    			thebv:Destroy()
    			forpar:Destroy()
    			forpar2:Destroy()
			end
		end
		hum.WalkSpeed = nws
		hum.JumpPower = njp
		Choking = false
		attacking = false
	end
end



-----------------------------------------------------------------------------

function kdown(k)
	if k == "e" then
		equipunequip()
	elseif k == "c" then
		if buttonC == false then
			buttonC = true
			Choke()
		end
	end
end

function kup(k)
	if k == "c" then
		if buttonC == true then
			buttonC = false
		end
	end
end

function lmdown()
	Swing()
end

Mouse.KeyDown:connect(kdown)
Mouse.KeyUp:connect(kup)
Mouse.Button1Down:connect(lmdown)

-----------------------------------------------------------------------------

warn([[Darth Vader.
	last updated: 2018/7/19, 20:14 JST.
	
	Please do not leak this script.]])

-----------------------------------------------------------------------------

while true do
	swait()
	sine = sine + 1
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	if Changing == true then
		state = "Change"
	elseif Swinging == true then
		state = "Swing"
	elseif Choking == true then
		state = "Choking"
	elseif 1 < root.Velocity.y then
		state = "Jump"
	elseif -1 > root.Velocity.y then
		state = "Fall"
	elseif torvel < 1 then
		state = "Idle"
	elseif tor.Velocity.magnitude < 50 then
		state = "Walk"
	end
	
	if state == "Jump" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-10), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-10), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.5, -1, -0.1) * CFa(Rad(-10), 0, Rad(-40)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.3, -0.8, 0) * CFa(Rad(-5), 0, Rad(15)), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Fall" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(10), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(20), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.4, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.4, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(-20)), 0.15)
	elseif state == "Idle" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-7 * Sin(sine / 15)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1 * Cos(sine / 15)) * CFa(Rad(-2 * Sin(sine / 15)), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, Rad(2 * Sin(sine / 15))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, Rad(-2 * Sin(sine / 15))), 0.15)
		neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(10), 0, 0), 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(2), 0, 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Walk" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-5 * Sin(sine / 4)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1 * Cos(sine / 4)) * CFa(Rad(-5), 0, Rad(5 * Sin(sine / 8))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(0, 0, Rad(-25 * Sin(sine / 8))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(0, 0, Rad(-25 * Sin(sine / 8))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.15 * Cos(sine / 8), -0.3 * Cos(sine / 8), 0) * CFa(0, 0, Rad(55 * Sin(sine / 8))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0.15 * Cos(sine / 8), 0.3 * Cos(sine / 8), 0) * CFa(0, 0, Rad(55 * Sin(sine / 8))), 0.15)
		neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(-20)), 0.15)
	end
	if not head:FindFirstChild("KOOOHAAA") then
		koohaa = Instance.new("Sound", head)
		koohaa.SoundId = "rbxassetid://149840174"
		koohaa.Name = "KOOOHAAA"
		koohaa.Volume = 2
		koohaa.TimePosition = thepos
		koohaa.Looped = true
		koohaa:Play()
	end
	thepos = koohaa.TimePosition
end
-----------------------------------------------------------------------------

while true do
	swait()
	sine = sine + 1
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	if Changing == true then
		state = "Change"
	elseif Swinging == true then
		state = "Swing"
	elseif Choking == true then
		state = "Choking"
	elseif 1 < root.Velocity.y then
		state = "Jump"
	elseif -1 > root.Velocity.y then
		state = "Fall"
	elseif torvel < 1 then
		state = "Idle"
	elseif tor.Velocity.magnitude < 50 then
		state = "Walk"
	end
	
	if state == "Jump" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-10), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-10), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.5, -1, -0.1) * CFa(Rad(-10), 0, Rad(-40)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.3, -0.8, 0) * CFa(Rad(-5), 0, Rad(15)), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Fall" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(10), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(20), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.4, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.4, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(-20)), 0.15)
	elseif state == "Idle" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-7 * Sin(sine / 15)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1 * Cos(sine / 15)) * CFa(Rad(-2 * Sin(sine / 15)), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, Rad(2 * Sin(sine / 15))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), 0, Rad(-2 * Sin(sine / 15))), 0.15)
		neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(10), 0, 0), 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(2), 0, 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Walk" then
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-5 * Sin(sine / 4)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1 * Cos(sine / 4)) * CFa(Rad(-5), 0, Rad(5 * Sin(sine / 8))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(0, 0, Rad(-25 * Sin(sine / 8))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(0, 0, Rad(-25 * Sin(sine / 8))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.15 * Cos(sine / 8), -0.3 * Cos(sine / 8), 0) * CFa(0, 0, Rad(55 * Sin(sine / 8))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0.15 * Cos(sine / 8), 0.3 * Cos(sine / 8), 0) * CFa(0, 0, Rad(55 * Sin(sine / 8))), 0.15)
		neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(-20)), 0.15)
	end
	if not head:FindFirstChild("KOOOHAAA") then
		koohaa = Instance.new("Sound", head)
		koohaa.SoundId = "rbxassetid://149840174"
		koohaa.Name = "KOOOHAAA"
		koohaa.Volume = 2
		koohaa.TimePosition = thepos
		koohaa.Looped = true
		koohaa:Play()
	end
	thepos = koohaa.TimePosition
end
