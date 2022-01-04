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
local c = game:GetService("Players").LocalPlayer.Character["Cartoony Rainbow Rifle"].Handle
c.Anchored = false
local cRot = 3.8
game:GetService("RunService").RenderStepped:Connect(function(dt)
    cRot = cRot + 0*dt
    c.Anchored = true
    c.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0,-1,-.2) * CFrame.Angles(math.rad(-285), 359.7, -cRot)
    c.Velocity = Vector3.new(0,0,0)
    c.Anchored = false
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

warn("Netless Activated!")
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
--------------------------
--Zenith Battle Rifle-70--
----------------------------------------------------------------
--By CKbackup (Sugarie Saffron)                               --
--YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw--
--Discord: Sugarie Saffron#4705                               --
----------------------------------------------------------------

print([[
--------------------------------
By CKbackup (Sugarie Saffron)                               
YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw
Discord: Sugarie Saffron#4705    
--------------------------------
The Zenith Battle Rifle 70 (ZBR-70)
The ZBR-70 was a rifle designed by
Engineer Alexander Zenith in 1970, for a
cheap yet reliable option to be used
as a standard issue rifle.
It fires 5.56 calibre rounds and
is still used today in several armies
and police forces.
--------------------------------
(Keys)
Click (Hold) - Fire
R - Reload
Q/E - Quick Strafe
Z - Dive
X - Knife Stab
F - Heal
H - Flashlight

Reloading while there's still ammo will
add an extra bullet.
Rifle only has an effective range of
200 studs.
Healing will add a health point for 200
frames before wearing out, and has a
cooldown of 30 seconds.
]])

wait(1/60)
Effects = { }
local Player = game:service'Players'.localPlayer
local chara = game.Workspace.non
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local Mouse = Player:GetMouse()
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
local Camera = workspace.CurrentCamera
local RootPart = chara.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary("RbxUtility").Create
local debby = game:GetService("Debris")
Humanoid.WalkSpeed = 16

local shots = 30

local healing = false

Humanoid.Animator.Parent = nil
chara.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
local w = Create('Motor'){
Parent = part0,
Part0 = part0,
Part1 = part1,
C0 = c0,
C1 = c1,
}
return w
end

function clerp(a, b, t)
return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
RW.C0 = clerp(RW.C0, table[3], speed) 
LW.C0 = clerp(LW.C0, table[4], speed) 
RH.C0 = clerp(RH.C0, table[5], speed) 
LH.C0 = clerp(LH.C0, table[6], speed) 
if bool == true then
if resetc1 == false then
resetc1 = true
RootJoint.C1 = RootJoint.C1
Torso.Neck.C1 = Torso.Neck.C1
RW.C1 = rarmc1
LW.C1 = larmc1
RH.C1 = rlegc1
LH.C1 = llegc1
end
end
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
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
ArtificialHB.Event:wait()
else
for i = 0, num do
ArtificialHB.Event:wait()
end
end
end

function RemoveOutlines(part)
part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

function so(id,par,pit,vol)
local sou = Instance.new("Sound", par or workspace)
if par == chara then
sou.Parent = chara.Torso
end
sou.Volume = vol
sou.Pitch = pit or 1
sou.SoundId = "rbxassetid://" .. id
sou.PlayOnRemove = true
sou:Destroy()
end

--This is just for builds--
New = function(Object, Parent, Name, Data)
local Object = Instance.new(Object)
for Index, Value in pairs(Data or {}) do
Object[Index] = Value
end
Object.Parent = Parent
Object.Name = Name
return Object
end

Rifle = New("Model",chara,"Rifle",{})
Handaru = New("Part",Rifle,"Handaru",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.899999976, 0.200000003),CFrame = CFrame.new(4.86797953, 9.56716633, -139.033096, 5.38420863e-10, 1.44063961e-09, 1, 0.939692974, -0.342020035, 4.30411262e-12, 0.342022955, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Handaru,"Mesh",{Scale = Vector3.new(0.699999988, 0.800000012, 0.899999976),})
Weld = New("ManualWeld",Handaru,"Weld",{Part0 = Handaru,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, 0, 0.939692974, 0.342020005, 0, -0.342020005, 0.939692974, 1, 0, 0),C1 = CFrame.new(-0.17155385, -1.13280964, 0.0381164551, -1, -0.000112917653, 0.000207058736, -0.000112889931, 1, 0.000133873371, -0.000207074263, 0.000133850204, -1.00000167),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.300000191, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70005512, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.260647774, 0.327582359, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999744, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 6.5500145, -138.486115, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64811707, 1.54591751, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.19999969, 0.300000012, 0.200000003),CFrame = CFrame.new(4.86801004, 9.10005951, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.303163528, 0.532794952, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 8.10003662, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.19156933, 1.01578903, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.10003662, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.19156933, 1.01578903, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 8.10003662, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.17448044, 1.06274033, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 8.10003662, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.20866871, 0.968809128, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.400000006, 0.200000003),CFrame = CFrame.new(4.86801004, 8.84343719, -138.889923, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.631113052, 0.382074356, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 6.90001345, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.33632183, 1.37924004, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.5000248, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.75539589, 1.22100544, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.5000248, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.75539589, 1.22100544, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.536102, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.81948566, 1.19112206, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.400000006, 0.600000024, 0.0500000007),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86801004, 8.05001831, -138.636108, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.28987503, 0.891940117, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999559, 0.200000018, 0.200000003),CFrame = CFrame.new(4.86801004, 8.30002022, -138.586105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.03784847, 0.853420258, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.1500349, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.153590202, 0.797625542, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.5000248, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.738307, 1.26795673, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.20001698, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.0373106, 1.32361412, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.25003147, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.999316216, 1.10544491, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 6.90001297, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.31922245, 1.42622185, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 6.90001297, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.31922245, 1.42622185, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt1 = New("Part",Rifle,"Bolt1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt1,"Weld",{Part0 = Bolt1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.20001793, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.02022171, 1.37056446, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.20001698, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.0373106, 1.32361412, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.35003948, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.905339241, 1.07124043, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.5000248, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.77249527, 1.17402458, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 6.90001297, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.30213356, 1.47317219, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.436096, -1.32226452e-11, -1.53790924e-09, 1, -1.00000036, -2.98023224e-08, 4.30411262e-12, 2.98023224e-08, -1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.78528309, 1.28509235, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.20001793, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.05440998, 1.27663231, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
BoltP2 = New("Part",Rifle,"BoltP2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 9.05003452, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP2,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP2,"Weld",{Part0 = BoltP2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298863411, 0.690872192, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.05004311, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.247550964, 0.831825256, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.436096, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.78528309, 1.28509235, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.330000043, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 10.4435368, -138.676941, 1.44968448e-09, 5.13570408e-10, 1, 0.342020035, -0.939692914, 4.30411262e-12, 0.93970108, 0.342023075, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.34202221, 0.939699054, 0, 0.939699054, 0.342022151, 0, 0, 0, -1),C1 = CFrame.new(0.945329666, 0.0349359512, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.475091, -138.861252, -5.13568965e-10, 1.44968504e-09, 1, 0.939693391, 0.342019081, 4.30411262e-12, -0.342022091, 0.939701438, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0, 0, 0, -1),C1 = CFrame.new(0.911945343, -0.149044991, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95003605, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.341526985, 0.866029739, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003719, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.529464722, 0.934432983, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70004368, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.311944008, 0.468552589, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.09999979, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003815, -138.436096, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.563667297, 0.840460777, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999866, 0.200000003),CFrame = CFrame.new(4.86797953, 9.75094795, -139.391876, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(0.049990654, -0.399991989, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.399999917, 0.200000003),CFrame = CFrame.new(4.86804056, 9.50004482, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.124007225, 0.536956787, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.630000234, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 11.1861582, -138.831116, 1.53790924e-09, -1.32226452e-11, 1, 2.98023224e-08, -1.00000036, 4.30411262e-12, 1.00000894, 2.98023224e-08, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, 1.00000668, 0, 0, 0, 0, -1),C1 = CFrame.new(1.59043694, -0.36392498, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.65003014, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.623440742, 0.968637466, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000016, 0.400000006),CFrame = CFrame.new(4.86801004, 8.30003548, -138.736115, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.08913803, 0.712458611, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.80001593, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.47349644, 1.11840248, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.5, 0.5, 0.100000001),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.45003128, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.811378479, 1.03704071, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.300000012, 0.300000012),CFrame = CFrame.new(4.86801004, 9.23582172, -138.853729, 1, -5.13568965e-10, 1.44968504e-09, 4.30411262e-12, 0.939693391, 0.342019081, 2.29920261e-09, -0.342022091, 0.939701438),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.300000012, 0.200000003, 0.600000024),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0),C1 = CFrame.new(-0.250016212, 0.281872749, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.80001593, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.45640755, 1.16535378, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.80001593, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.47349644, 1.11840248, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.199999988, 0.200000003),CFrame = CFrame.new(4.86797953, 9.63987923, -139.379089, 1.44063961e-09, 1, 5.38420808e-10, -0.342020005, 4.30411262e-12, 0.939692974, 0.93970108, 2.29920261e-09, 0.342022926),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.800000012, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0.34202221, 0.939698994, 0, 0, 0, -1, -0.939698994, 0.34202221, 0),C1 = CFrame.new(-0.0500078201, -0.349992752, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.55003834, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.717402458, 1.00283623, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 9.20003986, -138.986115, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.200000003, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.328917503, 0.169712067, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.81948566, 1.19112206, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.800000012, 0.200000003),CFrame = CFrame.new(4.86797953, 9.55004978, -138.986099, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(-1.14440918e-05, 0.0500144958, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85004425, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.435488701, 0.9002285, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.4500523, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.999621391, 0.165052414, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.04999995, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.80001593, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.49059582, 1.07142258, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Mag = New("Model",Rifle,"Mag",{})
MagPart = New("Part",Mag,"MagPart",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.80870724, -139.086884, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",MagPart,"Mesh",{Scale = Vector3.new(0.899999976, 1, 0.699999988),})
Weld = New("ManualWeld",MagPart,"Weld",{Part0 = MagPart,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.731114388, 0.208864212, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95642948, -139.11293, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.150000572, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85794735, -139.095566, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.0499992371, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75946617, -139.078201, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.0500011444, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.66098499, -139.060837, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.150001526, 9.53674316e-07, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.949999988, 0.349999994, 1.02499998),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
MuzzleFlash = New("Part",Rifle,"MuzzleFlash",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.100000001, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86804056, 6.25002193, -138.486115, 1.53790924e-09, 1.32227007e-11, -1, 0, 1.00000036, -4.30411262e-12, 1.00000894, 0, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",MuzzleFlash,"Weld",{Part0 = MuzzleFlash,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.93001747, 1.64852142, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
BoltP1 = New("Part",Rifle,"BoltP1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 8.65003014, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP1,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP1,"Weld",{Part0 = BoltP1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.674744606, 0.827680588, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt2 = New("Part",Rifle,"Bolt2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995619, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 9.05004692, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt2,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt2,"Weld",{Part0 = Bolt2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298851967, 0.690867424, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})

Knife2 = New("Part",chara,"Knife2",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000018, 3, 0.600000024),CFrame = CFrame.new(20.800066, 8.20085621, -102.600151, 0.999997199, -7.43909914e-05, -0.000123201287, 0.000132681176, 7.43816781e-05, 1.00000858, -8.01031129e-05, -0.999997139, 8.01140704e-05),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Knife2,"Mesh",{MeshId = "rbxassetid://121944778",TextureId = "rbxassetid://121944805",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Knife2,"Weld",{Part0 = Knife2,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -1.83178334e-11, -9.29553131e-20, -8.93234474e-20, 1.9826904e-10, -1, 1.83178334e-11, 1, 1.9826904e-10),C1 = CFrame.new(0.0998783112, -1.00001431, 0.900054932, -0.999999046, -0.00013233356, 7.98649926e-05, -0.000129168649, 1.00000286, 7.99051195e-05, -7.79679685e-05, 7.79874026e-05, -0.999999046),})

SheathPart = New("Part",chara,"SheathPart",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.70037603, 7.11581182, -105.941528, 0.000411997637, 0.000128002648, 1, 0.765914023, -0.642943084, -0.00023325636, 0.642943025, 0.765914023, -0.000362930034),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",SheathPart,"Mesh",{Scale = Vector3.new(0.419999987, 2.5, 5),MeshId = "rbxassetid://504776834",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",SheathPart,"Weld",{Part0 = SheathPart,Part1 = LeftLeg,C0 = CFrame.new(0, 0, 0, 0.000411997637, 0.765914023, 0.642943025, 0.000128002648, -0.642943084, 0.765914023, 1, -0.00023325636, -0.000362930034),C1 = CFrame.new(-0.399157524, -0.0849089622, 0.44103241, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1),})
KnifeH = New("Part",chara,"KnifeH",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.70015621, 7.43445921, -105.543449, 1, -0.000408680877, -0.00014000498, -0.000222999661, -0.765914917, 0.642942011, -0.000369990012, -0.642941952, -0.765914917),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",KnifeH,"Mesh",{MeshId = "rbxassetid://121944778",TextureId = "rbxassetid://121944805",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",KnifeH,"Weld",{Part0 = KnifeH,Part1 = LeftLeg,C0 = CFrame.new(0, 0, 0, 1, -0.000222999661, -0.000369990012, -0.000408680877, -0.765914917, -0.642941952, -0.00014000498, 0.642942011, -0.765914917),C1 = CFrame.new(-0.399399757, 0.23380661, 0.043006897, -1, -0.000285560207, 0.000172345346, -0.000285530492, 1, 0.000172423926, -0.000172394575, 0.000172374697, -1),})

Knife2.Transparency = 1
KnifeH.Transparency = 0

function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
return TEff
end

LLTr = CreateTrailObj(LeftLeg,"White","White",0,0)
RLTr = CreateTrailObj(RightLeg,"White","White",0,0)
LATr = CreateTrailObj(LeftArm,"White","White",0,0)
RATr = CreateTrailObj(RightArm,"White","White",0,0)

local p1mit = Instance.new("ParticleEmitter",Knife2)
p1mit.Texture = "rbxasset://textures/particles/fire_main.dds"
p1mit.Color = ColorSequence.new(Color3.new(.6,0,0))
p1mit.Size = NumberSequence.new(1,0)
p1mit.Lifetime = NumberRange.new(2)
p1mit.Rate = 100
p1mit.Enabled = false
p1mit.Acceleration = Vector3.new(0,-10,0)
p1mit.Rotation = NumberRange.new(0,359)
p1mit.Speed = NumberRange.new(0)
p1mit.Enabled = false

local tr2
spawn(function()
local Att1 =  New("Attachment",Knife2,"Att1",{Position = Vector3.new(0,1.3,.2)})
local Att2 =  New("Attachment",Knife2,"Att2",{Position = Vector3.new(0,-.5,.2)})
tr2 = New("Trail",Knife2,"TrailEff",{Color = ColorSequence.new(Color3.new(.8,.8,.8)),Transparency = NumberSequence.new(0,1),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
end)

local scr = Instance.new("ScreenGui",Player:FindFirstChildOfClass("PlayerGui"))
local fr1 = Instance.new("Frame",scr)
fr1.AnchorPoint = Vector2.new(1,.5)
fr1.BackgroundTransparency = 1
fr1.BorderSizePixel = 0
fr1.Position = UDim2.new(1,0,.6,0)
fr1.Size = UDim2.new(0,150,0,200)

local imgbase = Instance.new("ImageLabel")
imgbase.BackgroundTransparency = 1
imgbase.BorderSizePixel = 0
imgbase.Size = UDim2.new(0,50,0,50)
imgbase.ImageColor3 = Color3.new(.3,.3,.3)

local img1 = imgbase:Clone()
img1.Parent = fr1
img1.Image = "rbxassetid://50231593"
img1.ImageColor3 = Color3.new(1,1,1)

imgbase:Destroy()

local txtbase = Instance.new("TextLabel")
txtbase.BackgroundTransparency = 1
txtbase.BorderSizePixel = 0
txtbase.Size = UDim2.new(0,100,0,50)
txtbase.Font = "Highway"
txtbase.TextSize = 30
txtbase.TextColor3 = Color3.new(.3,.3,.3)
txtbase.TextStrokeColor3 = Color3.new(0,0,0)
txtbase.TextStrokeTransparency = 0

local txt1 = txtbase:Clone()
txt1.Parent = fr1
txt1.Text = "30/30"
txt1.TextColor3 = Color3.new(1,1,1)
txt1.Position = UDim2.new(0,50,0,0)

txtbase:Destroy()

local fr2 = Instance.new("Frame",scr)
fr2.AnchorPoint = Vector2.new(.5,.5)
fr2.BackgroundColor3 = Color3.new(0,0,0)
fr2.BorderColor3 = Color3.new(0,0,0)
fr2.BorderSizePixel = 5
fr2.Position = UDim2.new(.5,0,.8,0)
fr2.Size = UDim2.new(0,300,0,30)

local hpbar = Instance.new("Frame",fr2)
hpbar.BackgroundColor3 = Color3.new(0,1,0)
hpbar.BorderSizePixel = 0
hpbar.Size = UDim2.new(1,0,1,0)
local hptext = Instance.new("TextLabel",fr2)
hptext.BackgroundTransparency = 1
hptext.BorderSizePixel = 0
hptext.LayoutOrder = -1
hptext.Size = UDim2.new(0,100,1,0)
hptext.Font = "Highway"
hptext.Text = " + 100"
hptext.TextColor3 = Color3.new(1,1,1)
hptext.TextSize = 30
hptext.TextXAlignment = "Left"

coroutine.wrap(function()
while true do
swait()
txt1.Text = shots.."/30"
end
end)()

coroutine.wrap(function()
while true do
swait()
local hp = Humanoid.Health
local mhp = Humanoid.MaxHealth
hpbar.Size = UDim2.new(hp/mhp,0,1,0)
if healing == false then
hpbar.BackgroundColor3 = Color3.new(1-(hp/mhp),hp/mhp,0)
else
hpbar.BackgroundColor3 = Color3.new(1,1,0)
end
hptext.Text = " + "..(math.floor(hp))
end
end)()

local li = Instance.new("SpotLight",Head)
li.Angle = 90
li.Brightness = 50
li.Shadows = true
li.Range = 30
li.Enabled = false

function rayCast(Position, Direction, Range, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function FindNearestTorso(Position, Distance, SinglePlayer)
if SinglePlayer then
return (SinglePlayer.Head.CFrame.p - Position).magnitude < Distance
end
local List = {}
for i, v in pairs(workspace:GetDescendants()) do
if v:IsA("Model") then
if v:findFirstChild("Head") then
if v ~= chara then
if (v.Head.Position - Position).magnitude <= Distance then
table.insert(List, v)
end 
end 
end 
end 
end
return List
end

EffectModel = Create("Model"){
Parent = chara,
Name = "Effects",
}

--Effect Functions--
Effects = {

Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("BlockMesh",p)
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
if spin == true then
p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
end
end
p:Destroy()
end)()
return p
end,

Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,

Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("CylinderMesh",p)
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,

Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://20329976"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://3270017"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,

Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = meshid
m.TextureId = textid
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.new(0,move,0)
end
p:Destroy()
end)()
return p
end,

}

function GetDudesTorso(c)
local torsy = (c:findFirstChild("Torso") or c:findFirstChild("UpperTorso"))
if torsy ~= nil then
return torsy
end
end

function BodyVel(part,faws)
local bodyvel = Instance.new("BodyVelocity",part)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,pep,pep)
bodyvel.Velocity = faws
debby:AddItem(bodyvel,.2)
end

function Dmg(dude,dmg,env,faws,trip,efftyp,toim)
if dude and dude ~= chara then
if dude:FindFirstChild("HITO") then return end
if toim ~= 0 then
local debounce = Instance.new("BoolValue",dude)
debounce.Name = "HITO"
debby:AddItem(debounce,toim)
end
local hum = dude:FindFirstChildOfClass("Humanoid")
local dam = dmg+math.random(0,0)
local teksu = "-"..dam
if hum then
local finhel = hum.Health - dam
if (finhel <= 0 and dude:FindFirstChild("DEATHED")==nil) or dmg == 0 then
teksu = "DEATH"
dude:BreakJoints()
Instance.new("BoolValue",dude).Name = "DEATHED"
--local soaa = Instance.new("Sound",dude.Head)
--local cho = math.random(1,5)
--if cho == 1 then
--soaa.SoundId = "rbxassetid://111896685"
--elseif cho == 2 then
--soaa.SoundId = "rbxassetid://535528169"
--elseif cho == 3 then
--soaa.SoundId = "rbxassetid://1080363252"
--elseif cho == 4 then
--soaa.SoundId = "rbxassetid://147758746"
--elseif cho == 5 then
--soaa.SoundId = "rbxassetid://626777433"
--soaa.Volume = .2
--soaa.TimePosition = 1
--end
--game:service'Debris':AddItem(soaa,6)
--soaa:Play()
end
if dmg ~= math.huge then
hum.Health = hum.Health - dam
end
end
coroutine.wrap(function()
local naeeym2 = Instance.new("BillboardGui",dude)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = dude:FindFirstChild("Head")
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = teksu
tecks2.Font = "Fantasy"
tecks2.TextSize = 24
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
swait(10)
for i = 0,1,.05 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(0,0,.005,0)
tecks2.TextStrokeTransparency = i
tecks2.TextTransparency = i
end
naeeym2:Destroy()
end)()
local torsy = GetDudesTorso(dude)
if torsy then
local amtt = dam/5
if amtt > 30 then
amtt = 30
end
for i=1,amtt do
local blp = Instance.new("Part",EffectModel)
blp.Size = Vector3.new(.3,.3,.3)
blp.BrickColor = BrickColor.new("Crimson")
blp.CFrame = torsy.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
blp.Velocity = torsy.CFrame.lookVector*math.random(-8,-8) + torsy.CFrame.rightVector*math.random(-8,8) + Vector3.new(0,math.random(0,5),0)
blp.RotVelocity = Vector3.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))
--local blm = Instance.new("SpecialMesh",blp)
--blm.MeshType = "Sphere"
coroutine.wrap(function()
swait(10)
blp.Orientation = Vector3.new(0,blp.Orientation.y,0)
for i=0,1,.1  do
swait()
blp.Transparency = i
blp.Size = blp.Size + Vector3.new(.05,-.05,.05)
end
blp:Destroy()
end)()
end
if efftyp == "Blunt" then
puncheff(torsy)
elseif efftyp == "Sharp" then
slasheff(torsy)
coroutine.wrap(function()
if Knife2.Transparency == 0 then
p1mit.Enabled = true
swait(10)
p1mit.Enabled = false
end
end)()
elseif efftyp == "Shot" then
so(144884872,torsy,.9,1)
end
if faws ~= 0 then
BodyVel(torsy,faws)
end
if trip == true then
torsy.CFrame = torsy.CFrame * CFrame.Angles(math.rad(-90),0,0)
torsy.RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
end
end
end
end

function MagnitudeDmg(par,magni,dmg,env,faws,trip,efftyp,toim)
for _, c in pairs(workspace:GetDescendants()) do
local hum = c:FindFirstChildOfClass("Humanoid")
if hum ~= nil and c:FindFirstChild("IsTeamMateOfCK")==nil then
local head = GetDudesTorso(c)
if head ~= nil then
local targ = head.Position - par.Position
local mag = targ.magnitude
if magni >= mag and c ~= chara then
Dmg(c,dmg,env,faws,trip,efftyp,toim)
end
end
end
end
end

function CamShake(par,magni,env,dur)
coroutine.wrap(function()
for i=0,dur*60 do
swait()
Humanoid.CameraOffset = Vector3.new(math.random(-(env*10),(env*10))/10,math.random(-(env*10),(env*10))/10,math.random(-(env*10),(env*10))/10)
end
Humanoid.CameraOffset = Vector3.new()
end)()
end

function puncheff(par)
if par.Parent:FindFirstChild("DebounceHit")==nil then
so(386946017,par,math.random(80,120)/100,1)
Effects.Sphere(par.CFrame,Vector3.new(1,1,1),Vector3.new(1,1,1),Vector3.new(.1,.1,.1),"Neon","White",false,.1)
end
end

function slasheff(par)
if par.Parent:FindFirstChild("DebounceHit")==nil then
local cho = math.random(1,3)
so(444667859,par,1,1)
Effects.Sphere(par.CFrame*CFrame.Angles(math.random(0,360),math.random(0,360),math.random(0,360)),Vector3.new(.5,.5,.5),Vector3.new(1,0,1),Vector3.new(-.1,5,-.1),"Neon","White",false,.1)
CamShake(par,3,.3,.5)
end
end

function gunreload()
local bolting = false
if shots < 1 then
bolting = true
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(7.16576396e-05, -8.09862577e-09, 5.8991347e-05, 0.866025805, 5.21622605e-05, -0.499999523, -8.21355061e-05, 1, -3.79384437e-05, 0.500003934, 7.39239331e-05, 0.866033435),
CFrame.new(-0.000200522729, 1.49998856, -2.10760772e-05, 0.866025805, -8.21355061e-05, 0.500003934, 5.21622605e-05, 1, 7.39239331e-05, -0.499999523, -3.79384437e-05, 0.866033435),
CFrame.new(1.19112039, 0.509645581, -0.936723173, 0.866108775, 0.469844252, -0.170603499, 0.000398069969, -0.34195143, -0.939717591, -0.499855638, 0.813835204, -0.296356052),
CFrame.new(-1.01784408, -0.307534277, 0.587668538, 0.813770115, -0.296275973, 0.499998927, 0.342069209, 0.939674795, 7.47573649e-05, -0.469858527, 0.170973375, 0.866026163),
CFrame.new(0.500045836, -2.00001574, 6.10351854e-05, 1.00000012, 0, 0, 0, 1, -1.09139364e-11, 0, -1.09139364e-11, 1.00000012),
CFrame.new(-0.499982297, -2.00001812, -1.68383121e-06, 0.866025805, 7.7745608e-07, 0.499999464, -9.20089349e-07, 1, 3.87553882e-08, -0.499999464, -4.93619154e-07, 0.866025805),
}, .4, false)
end
so(1550642637,RightArm,1,1)
local magh = Mag:Clone()
local magd = Mag:Clone()
magd.Parent = chara
magd:MoveTo(MagPart.Position)
magd.MagPart.CFrame = MagPart.CFrame
for i,v in pairs(Mag:children'') do
v.Transparency = 1
end
for i,v in pairs(magd:children'') do
v.CanCollide = true
end
coroutine.wrap(function()
swait(120)
for ab=0,1,.1 do
swait()
for i,v in pairs(magd:children'') do
v.Transparency = ab
end
end
magd:Destroy()
end)()
swait(10)
magh.MagPart.Weld.Part1 = LeftArm
magh.MagPart.Weld.C1 = CFrame.new()
magh.MagPart.Weld.C0 = CFrame.new(-1,0,-.1) * CFrame.Angles(math.rad(90),0,math.rad(90))
magh.Parent = chara
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(6.78431461e-05, -8.38813463e-09, 6.55982731e-05, 0.866028309, 5.21623115e-05, -0.500000954, -8.2135979e-05, 1, -3.7939295e-05, 0.500000954, 7.39235766e-05, 0.866028368),
CFrame.new(-0.000197320973, 1.4999876, -1.30886638e-05, 0.98481077, -8.24863091e-05, 0.173648238, 7.46281003e-05, 1, 5.17808985e-05, -0.173648268, -3.80359343e-05, 0.98481077),
CFrame.new(1.1081171, 0.229849994, -0.552296758, 0.32167092, 0.529445052, -0.784998, -0.865821123, -0.171100825, -0.47018975, -0.383253366, 0.83091414, 0.403366506),
CFrame.new(-0.717486799, 0.926528692, -1.03411949, 0.0336538404, -0.23535648, -0.971329331, -0.966074884, 0.241339579, -0.0919491872, 0.256061047, 0.941471338, -0.219250023),
CFrame.new(0.500048757, -2.00001621, 5.34072533e-05, 1.00000596, -8.18545232e-11, 0, -8.18545232e-11, 1, -5.85714588e-10, 0, -5.85714588e-10, 1.00000596),
CFrame.new(-0.499987721, -2.00001812, -2.68220901e-07, 0.866030872, 7.77390596e-07, 0.500002384, -9.19890795e-07, 1, 3.82206053e-08, -0.500002325, -4.94204869e-07, 0.866030872),
}, .4, false)
end
magh:Destroy()
so(1550643261,RightArm,1,1)
for i,v in pairs(Mag:children'') do
v.Transparency = 0
end
shots=1
if bolting then
shots=0
swait(10)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(7.16576469e-05, -8.0986311e-09, 5.89913543e-05, 0.866025865, 5.21622605e-05, -0.499999553, -8.2135557e-05, 1, -3.79385383e-05, 0.500003994, 7.39240495e-05, 0.866033494),
CFrame.new(-0.0471813381, 1.46578491, -0.0813962817, 0.866025865, -0.171088517, 0.4698219, 5.20799076e-05, 0.939667284, 0.342089593, -0.499999523, -0.296236575, 0.813792229),
CFrame.new(0.903510451, 0.733465374, -0.540370524, 0.0522459783, 0.845055699, 0.532124102, 0.996226788, -0.00712709641, -0.0864949599, -0.0693004429, 0.534644127, -0.842239022),
CFrame.new(-1.3147887, 0.362699449, -0.10727562, 0.924801946, -0.332139075, 0.18555221, 0.0397336259, -0.400726348, -0.915335894, 0.37838313, 0.853878319, -0.35739553),
CFrame.new(0.500048101, -2.00001764, 6.48489149e-05, 1.00000465, 6.20275387e-10, 7.62939453e-06, 6.20275387e-10, 1, 1.05501385e-09, 7.62939453e-06, 1.05501385e-09, 1.00001347),
CFrame.new(-0.499982387, -2.0000186, 2.08616257e-06, 0.866025865, 7.78074536e-07, 0.500008345, -9.20103844e-07, 1, 3.99777491e-08, -0.499999523, -4.92556865e-07, 0.866041124),
}, .4, false)
end
so(437204112,RightArm,1,1)
swait(5)
end
shots = shots+30
end

function wepknifestab()
attack = true
Humanoid.WalkSpeed = 2
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.000179143899, 4.94844912e-08, -0.000147477331, 0.500000775, 1.22923609e-06, -0.86602509, -0.000292493496, 1.00000012, -0.000167452119, 0.866025031, 0.000337032834, 0.500000775),
CFrame.new(-0.000420931523, 1.50010991, -7.43984856e-06, 0.500000775, -0.000292493496, 0.866025031, 1.22923609e-06, 1.00000012, 0.000337032834, -0.86602509, -0.000167452119, 0.500000775),
CFrame.new(0.839951992, 0.256004274, -0.958486319, 0.499996692, 0.813799739, 0.2961981, 4.75931301e-06, 0.342016816, -0.939693928, -0.866027415, 0.469845295, 0.171003401),
CFrame.new(-1.22089827, -0.164978445, -0.0866824239, 0.983905554, -0.138054684, 0.113450736, 0.176127508, 0.856396437, -0.485349834, -0.0301539302, 0.497520208, 0.866928339),
CFrame.new(0.500076354, -2.00016046, 1.52737084e-05, 1.00000012, -1.45519152e-11, 2.98023224e-08, -1.45519152e-11, 1.00000012, -7.27595761e-12, 2.98023224e-08, -7.27595761e-12, 1.00000012),
CFrame.new(-0.499987543, -2.00015903, -5.56111336e-05, 0.499999285, 9.37507139e-07, 0.866025865, -1.2402096e-06, 1.00000012, -3.66519089e-07, -0.866025925, -8.90795491e-07, 0.499999374),
}, .5, false)
end
so(211059653,Knife2,1,1)
Knife2.Transparency = 0
KnifeH.Transparency = 1
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.000175330031, 1.00539501e-06, -0.000154084992, 0.500003099, 1.22933841e-06, -0.866029263, -0.000292495621, 1.00000453, -0.000167453458, 0.866029143, 0.000337033416, 0.500003219),
CFrame.new(-0.00041242165, 1.50012219, -6.93052425e-06, 0.500003099, -0.000292495621, 0.866029143, 1.22933841e-06, 1.00000453, 0.000337033416, -0.866029263, -0.000167453458, 0.500003219),
CFrame.new(1.09288597, 0.364121079, -0.802504063, 0.748180747, 0.593714058, 0.296199232, 0.116981708, 0.321389914, -0.939695835, -0.653104663, 0.737710655, 0.171003729),
CFrame.new(-0.688675284, 1.32965851, -0.712965548, 0.334458649, -0.800666928, -0.49706617, -0.926752567, -0.375185549, -0.0192363095, -0.171089798, 0.46709004, -0.867502213),
CFrame.new(0.500086367, -2.00017858, 1.52748289e-05, 1.00000489, -7.13043846e-10, 2.98023224e-08, -7.13043846e-10, 1.00000441, -5.31144906e-10, 2.98023224e-08, -5.31144906e-10, 1.00000489),
CFrame.new(-0.499991834, -2.00017858, -5.22881746e-05, 0.500001609, 9.36794095e-07, 0.866030037, -1.24011513e-06, 1.00000441, -3.673631e-07, -0.866030157, -8.91312084e-07, 0.500001788),
}, .5, false)
end
tr2.Enabled = true
so(200632136,Knife2,math.random(9,11)/10,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-2.50339508e-06, -0.116524018, -2.23838973, 0.342018872, -5.0964772e-08, -0.939693093, 0.321393877, 0.939692676, 0.11697726, 0.883022726, -0.342020035, 0.321392655),
CFrame.new(-6.99047723e-06, 1.49998283, -2.62057279e-06, 0.342018872, 1.1920929e-07, 0.939693093, -5.0964772e-08, 1, -1.49011612e-07, -0.939693093, -7.4505806e-09, 0.342018902),
CFrame.new(1.22636616, 0.263386577, -0.809811354, 0.939690471, 0.342026293, 1.16229057e-06, -0.0593909174, 0.163175166, -0.984808028, -0.336830378, 0.925414443, 0.173647419),
CFrame.new(-1.32934356, 1.10000336, -0.700607181, -1.1920929e-07, 0.342020571, -0.939692616, -1, -4.47034836e-08, 1.49011612e-07, 7.4505806e-09, 0.939692497, 0.342020541),
CFrame.new(0.977364421, -1.93956006, -0.0584065914, 0.854759812, -0.518661916, -0.0193820298, 0.5132581, 0.850225329, -0.116975099, 0.0771495849, 0.0900376588, 0.99294579),
CFrame.new(-0.972516656, -1.19701695, -0.393972486, 0.183487743, 0.321393877, 0.92899859, 0.0593910404, 0.939692676, -0.336824, -0.981226325, 0.11697726, 0.153334215),
}, .4, false)
MagnitudeDmg(Knife2,0,0,0,RootPart.CFrame.lookVector*0,false,"Sharp",0)
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.000175330031, 1.00539501e-06, -0.000154084992, 0.500003099, 1.22933841e-06, -0.866029263, -0.000292495621, 1.00000453, -0.000167453458, 0.866029143, 0.000337033416, 0.500003219),
CFrame.new(-0.00041242165, 1.50012219, -6.93052425e-06, 0.500003099, -0.000292495621, 0.866029143, 1.22933841e-06, 1.00000453, 0.000337033416, -0.866029263, -0.000167453458, 0.500003219),
CFrame.new(1.09288597, 0.364121079, -0.802504063, 0.748180747, 0.593714058, 0.296199232, 0.116981708, 0.321389914, -0.939695835, -0.653104663, 0.737710655, 0.171003729),
CFrame.new(-0.688675284, 1.32965851, -0.712965548, 0.334458649, -0.800666928, -0.49706617, -0.926752567, -0.375185549, -0.0192363095, -0.171089798, 0.46709004, -0.867502213),
CFrame.new(0.500086367, -2.00017858, 1.52748289e-05, 1.00000489, -7.13043846e-10, 2.98023224e-08, -7.13043846e-10, 1.00000441, -5.31144906e-10, 2.98023224e-08, -5.31144906e-10, 1.00000489),
CFrame.new(-0.499991834, -2.00017858, -5.22881746e-05, 0.500001609, 9.36794095e-07, 0.866030037, -1.24011513e-06, 1.00000441, -3.673631e-07, -0.866030157, -8.91312084e-07, 0.500001788),
}, .5, false)
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.000179143899, 4.94844912e-08, -0.000147477331, 0.500000775, 1.22923609e-06, -0.86602509, -0.000292493496, 1.00000012, -0.000167452119, 0.866025031, 0.000337032834, 0.500000775),
CFrame.new(-0.000420931523, 1.50010991, -7.43984856e-06, 0.500000775, -0.000292493496, 0.866025031, 1.22923609e-06, 1.00000012, 0.000337032834, -0.86602509, -0.000167452119, 0.500000775),
CFrame.new(0.839951992, 0.256004274, -0.958486319, 0.499996692, 0.813799739, 0.2961981, 4.75931301e-06, 0.342016816, -0.939693928, -0.866027415, 0.469845295, 0.171003401),
CFrame.new(-1.22089827, -0.164978445, -0.0866824239, 0.983905554, -0.138054684, 0.113450736, 0.176127508, 0.856396437, -0.485349834, -0.0301539302, 0.497520208, 0.866928339),
CFrame.new(0.500076354, -2.00016046, 1.52737084e-05, 1.00000012, -1.45519152e-11, 2.98023224e-08, -1.45519152e-11, 1.00000012, -7.27595761e-12, 2.98023224e-08, -7.27595761e-12, 1.00000012),
CFrame.new(-0.499987543, -2.00015903, -5.56111336e-05, 0.499999285, 9.37507139e-07, 0.866025865, -1.2402096e-06, 1.00000012, -3.66519089e-07, -0.866025925, -8.90795491e-07, 0.499999374),
}, .5, false)
end
so(211134014,Knife2,1,1)
Knife2.Transparency = 1
KnifeH.Transparency = 0
Humanoid.WalkSpeed = 16
tr2.Enabled = false
attack = false
end

function gunshoot()
attack = true
Humanoid.WalkSpeed = 2
repeat
for i=0,1 do
swait()
PlayAnimationFromTable({		
CFrame.new(9.81599442e-05, -3.13463495e-08, 0.000154759327, 0.499999762, 5.98886472e-05, -0.866025686, -0.000172460219, 1, -3.0416435e-05, 0.866025627, 0.000164563156, 0.499999762),
CFrame.new(0.110661574, 1.52556551, -0.192373157, 0.469904929, 0.170847476, 0.866025805, -0.341963649, 0.93971324, 0.000164846599, -0.813787699, -0.296226799, 0.499999464),
CFrame.new(0.900587499, 0.405391365, -0.749934435, 0.50007689, 0.865988314, 0.000331558258, 0.000377809047, 0.000164698489, -0.99999994, -0.865981102, 0.500081062, -0.000244814204),
CFrame.new(-1.05577028, 0.00611187518, -0.929771721, 0.258709729, 0.208402574, 0.94320631, 0.878974199, -0.455733538, -0.140396863, 0.400591552, 0.865375996, -0.301083267),
CFrame.new(0.500045836, -2.00001764, 6.86496642e-05, 1.00000012, 0, -2.98023224e-08, 0, 1, -3.63797881e-12, -2.98023224e-08, -3.63797881e-12, 1.00000012),
CFrame.new(-0.499984354, -2.00001764, 3.27825546e-06, 0.500000656, -9.88464308e-07, 0.86602515, 8.06332537e-07, 1, 6.75843694e-07, -0.86602515, 3.60366357e-07, 0.500000656),
}, .5, false)
end
CamShake(RightArm,3,.1,.05)
Bolt1.Transparency = 1
BoltP1.Transparency = 1
Bolt2.Transparency = 0
BoltP2.Transparency = 0
local part, pos = rayCast(MuzzleFlash.Position,((Mouse.Hit.p+Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)) - MuzzleFlash.Position),200,chara)
local aimo = Instance.new("Part",Camera)
aimo.Anchored = true
aimo.Size = Vector3.new()
aimo.Transparency = 1
aimo.CanCollide = false
aimo.CFrame = CFrame.new(pos)
Effects.Meshed(MuzzleFlash.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),Vector3.new(),Vector3.new(.0025,.0001,.0025),"","rbxassetid://662585058","",0,false,.1)
Effects.Block(MuzzleFlash.CFrame,Vector3.new(.4,.4,.4),Vector3.new(),Vector3.new(.3,.3,.3),"Neon","Bright yellow",true,false,.1)
Effects.Block(MuzzleFlash.CFrame,Vector3.new(.4,.4,.4),Vector3.new(),Vector3.new(.6,.6,.6),"Neon","Bright yellow",true,false,.1)
Effects.Block(CFrame.new(pos),Vector3.new(.4,.4,.4),Vector3.new(),Vector3.new(.1,.1,.1),"Neon","Bright yellow",true,false,.1)
Effects.Block(CFrame.new((MuzzleFlash.Position + pos)/2,pos),Vector3.new(.2,.2,(MuzzleFlash.Position - pos).magnitude),Vector3.new(0,0,1),Vector3.new(.1,.1,0),"Neon","Bright yellow",false,false,.1)
MagnitudeDmg(aimo,0,0,0,RootPart.CFrame.lookVector*0,false,"Shot",0)
so(1583819337,Bolt1,math.random(90,110)/100,2)
local hitpt = Instance.new("Part",EffectModel)
hitpt.Size = Vector3.new(0,0,.3)
hitpt.CFrame = Bolt1.CFrame * CFrame.Angles(0,math.rad(90),0)
hitpt.Velocity = RootPart.CFrame.rightVector*10+Vector3.new(0,5,0)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "rbxassetid://94295100"
hitm.TextureId = "rbxassetid://94287792"
hitm.Scale = Vector3.new(2,2,4)
coroutine.wrap(function()
swait(120)
for i = 0,1,.1 do
swait()
hitpt.Transparency = i
end
hitpt:Destroy()
end)()
for i=0,1 do
swait()
PlayAnimationFromTable({		
CFrame.new(7.78138638e-05, -1.36256676e-05, 0.100157872, 0.499999881, 5.98886909e-05, -0.866025805, -0.000172460306, 1.00000012, -3.04165078e-05, 0.866040111, 0.000164565776, 0.500008047),
CFrame.new(0.110661842, 1.52556539, -0.192373574, 0.469904989, 0.170847505, 0.866040289, -0.341963649, 0.93971324, 0.000164849247, -0.813787758, -0.296226829, 0.500007749),
CFrame.new(1.073771, 0.405395687, -0.649899781, 0.50007695, 0.865988374, 0.000331558171, 0.000377809076, 0.000164698373, -0.99999994, -0.865981162, 0.500081062, -0.000244814291),
CFrame.new(-0.882619739, 0.00611773878, -0.829759479, 0.258715928, 0.208411366, 0.943215907, 0.878974259, -0.455733567, -0.140396863, 0.400595129, 0.865381122, -0.301077813),
CFrame.new(0.413464695, -2.00001669, -0.049946934, 1.00001276, 2.30284058e-09, 7.09295273e-06, 2.30284058e-09, 1, 1.3042154e-09, 7.09295273e-06, 1.3042154e-09, 1.00000441),
CFrame.new(-0.586589575, -2.00001693, -0.0500222594, 0.500000775, -9.86188752e-07, 0.866039634, 8.06332537e-07, 1, 6.78477591e-07, -0.866025209, 3.61660568e-07, 0.500009),
}, .5, false)
end
shots = shots - 1
aimo:Destroy()
if shots <= 0 then
gunreload()
end
Bolt1.Transparency = 0
BoltP1.Transparency = 0
Bolt2.Transparency = 1
BoltP2.Transparency = 1
until zhold == false
Humanoid.WalkSpeed = 16
attack = false
end

function heal()
attack = true
Humanoid.WalkSpeed = 2
local val = Instance.new("BoolValue",chara)
val.Name = "healcool"
debby:AddItem(val,30)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1.00000131, 5.536549e-11, 0, 5.536549e-11, 1, 5.82076609e-11, 0, 5.82076609e-11, 1.00000131),
CFrame.new(-0.0470143259, 1.46578526, -0.0813575089, 0.866027415, -0.171009213, 0.46984449, 1.88792183e-06, 0.939693928, 0.342016727, -0.499997973, -0.296194941, 0.813800871),
CFrame.new(1.50003648, 0.699995697, 3.59429396e-05, 1.00000131, -2.06271608e-07, -6.67154382e-06, -2.06196262e-07, -1, 2.48575816e-07, -6.67157292e-06, -2.48721335e-07, -1.00000131),
CFrame.new(-1.2535826, -0.14593178, 0.0679161474, 0.941512227, -0.331708014, -0.0593915284, 0.331707656, 0.88120383, 0.336823434, -0.059390977, -0.33682391, 0.939694226),
CFrame.new(0.500059426, -2.00001574, 4.5761466e-05, 0.939693809, -1.38383513e-07, -0.342020601, -2.80560926e-08, 1, -4.82134055e-07, 0.342020571, 4.627218e-07, 0.939694047),
CFrame.new(-0.499963611, -2.0000174, 2.33203173e-05, 0.939694047, -1.69952145e-07, 0.342020452, 2.99973181e-07, 1, -3.27068847e-07, -0.342020482, 4.10043867e-07, 0.939694047),
}, .4, false)
end
local inj = New("Part",chara,"inj",{Size = Vector3.new(2.10000014, 0.299999982, 0.300000012),CFrame = CFrame.new(-37.1041107, 9.26048374, -70.1689682, -0.100794047, 0.957379222, 0.270676494, -0.129940063, 0.257064044, -0.957618713, -0.986385465, -0.131693989, 0.0984913707),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
local iMesh = New("SpecialMesh",inj,"Mesh",{Scale = Vector3.new(0.00200000009, 0.00200000009, 0.00200000009),MeshId = "rbxassetid://504973881",MeshType = Enum.MeshType.FileMesh,})
local iWeld = New("ManualWeld",inj,"Weld",{Part0 = inj,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.100794047, -0.129940063, -0.986385465, 0.957379222, 0.257064044, -0.131693989, 0.270676494, -0.957618713, 0.0984913707),C1 = CFrame.new(0.250003815, -1.05000305, -0.249992371, -0.270675898, 0.957618654, -0.0984939635, 0.957379043, 0.257062733, -0.131696969, -0.100796357, -0.129943267, -0.986384809),})
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1.00000441, 2.30059527e-10, -1.45519152e-11, 2.30059527e-10, 1, 2.32830644e-10, -1.45519152e-11, 2.32830644e-10, 1.00000441),
CFrame.new(-0.0342181027, 1.48367238, -0.0925136507, 0.939694226, 1.76227331e-07, 0.342022419, -0.0593916923, 0.984807789, 0.163176015, -0.336826295, -0.173648849, 0.925418019),
CFrame.new(1.50004876, 0.69999665, 2.83136833e-05, 1.00000441, -2.06446316e-07, -6.67157292e-06, -2.06021568e-07, -1, 2.48401193e-07, -6.67160202e-06, -2.48895958e-07, -1.00000441),
CFrame.new(-1.32655382, 0.16053623, -0.618192732, 0.82254082, 0.00194577302, 0.568706632, 0.568639874, 0.0127443047, -0.82248795, -0.00884814467, 0.999919116, 0.00937626697),
CFrame.new(0.500066876, -2.00001621, 5.19603491e-05, 0.939696729, -1.38208819e-07, -0.342021674, -2.78232619e-08, 1, -4.81959432e-07, 0.342021644, 4.62896423e-07, 0.939696968),
CFrame.new(-0.499963373, -2.00001645, 2.26646662e-05, 0.939696968, -1.69777451e-07, 0.342021525, 3.00089596e-07, 1, -3.26806912e-07, -0.342021555, 4.1021849e-07, 0.939696968),
}, .4, false)
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1.00000012, -3.48876483e-12, 0, -3.48876483e-12, 1, 0, 0, 0, 1.00000012),
CFrame.new(-2.27339151e-05, 1.46578801, -0.0939310491, 1.00000012, -3.72103386e-07, 1.64323137e-06, -2.12327393e-07, 0.939692557, 0.342020363, -1.67140388e-06, -0.342020422, 0.939692676),
CFrame.new(1.50005758, 0.699994743, 3.59426958e-05, 1.00000012, -2.06212761e-07, -6.67157292e-06, -2.06226048e-07, -1, 2.48663127e-07, -6.67157292e-06, -2.48663127e-07, -1.00000012),
CFrame.new(-0.943567514, 0.0578621849, -0.670854151, 0.270323098, -0.957491815, 0.100672945, 0.957676411, 0.256677359, -0.130279034, 0.0989006162, 0.131629527, 0.986353219),
CFrame.new(0.500069618, -2.00001717, 4.97102737e-05, 0.939692676, -1.38762402e-07, -0.342020184, -2.76195351e-08, 1, -4.81668394e-07, 0.342020184, 4.62023309e-07, 0.939692795),
CFrame.new(-0.499966532, -2.00001884, 2.46018171e-05, 0.939692795, -1.69370765e-07, 0.342019975, 2.99449312e-07, 1, -3.27592716e-07, -0.342020005, 4.10247594e-07, 0.939692795),
}, .5, false)
end
so(566593606,Torso,1,1)
coroutine.wrap(function()
healing = true
for i=1,200 do
swait()
Humanoid.Health = Humanoid.Health + 1
end
healing = false
end)()
swait(60)
inj:BreakJoints()
inj.CanCollide = true
inj.Velocity = RootPart.CFrame.rightVector*-30
coroutine.wrap(function()
swait(60)
for i=0,1,.1 do
swait()
inj.Transparency = i
end
inj:Destroy()
end)()
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1.00000012, -7.41096073e-12, 0, -7.41096073e-12, 1, 2.91038305e-11, 0, 2.91038305e-11, 0.99999994),
CFrame.new(-3.04159403e-05, 1.46578789, -0.0939521194, 1.00000012, -4.05150786e-07, 1.62865035e-06, -1.76347669e-07, 0.939691484, 0.342023492, -1.66901737e-06, -0.342023432, 0.939691424),
CFrame.new(1.50005376, 0.699994802, 3.59716505e-05, 1.00000012, -1.58599477e-07, -6.6684006e-06, -1.58597771e-07, -1, 2.8318027e-07, -6.6684006e-06, -2.83209374e-07, -0.99999994),
CFrame.new(-1.64437401, 0.697701395, 0.19487834, 0.408384711, 0.907241344, 0.100674063, -0.898611128, 0.418956876, -0.130281046, -0.160374403, -0.0372620374, 0.986352742),
CFrame.new(0.500071704, -2.00001526, 2.73138285e-05, 0.939691603, 9.13247675e-07, -0.342023104, -1.21287303e-06, 1, -6.62083039e-07, 0.342023045, 1.03705679e-06, 0.939691603),
CFrame.new(-0.499963105, -2.00001931, 1.77323818e-05, 0.939691305, -1.36975643e-06, 0.342023998, 1.52508437e-06, 1, -1.85216777e-07, -0.342024028, 6.95697963e-07, 0.939691186),
}, .5, false)
end
attack = false
Humanoid.WalkSpeed = 16
end

function doge()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
local bodyvel = Instance.new("BodyVelocity",RootPart)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,pep,pep)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.413182259, -0.492409885, 1, 0, 0, 0, 0.173647001, 0.984807968, 0, -0.984807968, 0.173647001),
CFrame.new(0, 1.39017391, 0.409808099, 1, 0, 0, 0, 0.499998748, -0.866026163, 0, 0.866026163, 0.499998748),
CFrame.new(0.997828066, 1.40889716, 0.360830426, 0, 0.173647001, 0.984807968, 0.173647001, -0.969846725, 0.171008945, 0.984807968, 0.171008945, -0.030153282),
CFrame.new(-1.00000775, 1.48291457, 0.347779244, 0, -0.173647001, -0.984807968, -0.173647001, -0.969846725, 0.171008945, -0.984807968, 0.171008945, -0.030153282),
CFrame.new(0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.000384914892, -2.50002575, -0.500230014, 1, 0.000325046538, 9.11258903e-05, -9.11258612e-05, -1.13315764e-07, 1, 0.000325047644, -1.00000298, -8.37171683e-08),
CFrame.new(-2.67028663e-05, 1.3837955, 0.294111609, 1, 7.27595761e-12, -7.27595761e-12, 0, 0.766044259, -0.642787933, -5.78026516e-12, 0.642787993, 0.766044199),
CFrame.new(1.49976707, 1.00041652, 0.300775796, -0.00040801923, -0.765891016, 0.642970264, 2.89759337e-05, -0.642970324, -0.765891075, 0.99999994, -0.000293867604, 0.000284536654),
CFrame.new(-1.42841077, 1.06972277, 0.174795836, 0.220292583, 0.604053974, -0.765891671, -0.261924088, -0.719712377, -0.642969549, -0.939610124, 0.34224686, -0.000331013813),
CFrame.new(0.500055313, -2, 3.8146969e-05, 1, 0, -5.78026516e-12, 0, 1, 0, -5.78026516e-12, 0, 1),
CFrame.new(-0.49997139, -2, -1.62124597e-05, 1, 0, -5.78026516e-12, 0, 1, 0, -5.78026516e-12, 0, 1),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
end
for i=0,50,10 do
swait()
bodyvel.Velocity = RootPart.CFrame.lookVector*(50-i)
end
bodyvel:Destroy()
swait(10)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.00016165484, -1.36983359, -0.0292072296, 1, 7.76843081e-05, -2.60516535e-05, -6.40891813e-05, 0.939692557, 0.342020124, 5.10504469e-05, -0.342021197, 0.939695537),
CFrame.new(-1.71661304e-05, 1.55976009, -0.1281178, 1, 7.27595761e-12, -7.27595761e-12, -3.63797881e-12, 0.939692616, 0.342020214, 2.91038305e-11, -0.342020303, 0.939692557),
CFrame.new(1.50001144, 1.00809121, -0.154073462, 1, 1.45519152e-11, -7.27595761e-12, -3.63797881e-12, -0.939692974, -0.342018962, 2.91038305e-11, 0.342018992, -0.939693034),
CFrame.new(-1.30754018, 0.449972421, -0.64069438, 0.262003481, 0.219851375, -0.939691246, -0.642790556, 0.766041994, 2.16066837e-06, 0.719843447, 0.604024053, 0.342024028),
CFrame.new(0.49989906, -0.431120992, -0.657953143, 1, -6.40891813e-05, 5.10504469e-05, 7.76843081e-05, 0.939692557, -0.342021197, -2.60516535e-05, 0.342020124, 0.939695537),
CFrame.new(-0.600045562, -1.23124671, 0.200614065, 1, -3.91021022e-05, -7.18890005e-05, 7.7586832e-05, 0.173648059, 0.984807789, -2.60246452e-05, -0.984807789, 0.173648089),
}, .3, false)
end
Humanoid.WalkSpeed = 16
attack = false
end

function goright()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
BodyVel(RootPart,RootPart.CFrame.rightVector*40)
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 0.866025686, 9.42248391e-07, 0.500011504, -8.48485797e-08, 1, 2.03145464e-06, -0.499997288, 1.801709e-06, 0.866039157),
CFrame.new(0.0133891273, 1.49998093, -0.223221898, 0.999244928, 0.0180275738, 0.0343858302, -0.0296961162, 0.925415933, 0.377787739, -0.0250054598, -0.378526747, 0.92527163),
CFrame.new(0.597281635, 0.899970174, -0.636579931, -0.2961981, 0.81379801, 0.499997288, 0.939692438, 0.34202075, -1.801709e-06, -0.171011984, 0.469857872, -0.866039157),
CFrame.new(-1.5597142, 0.600028992, -0.496432245, 0.556670129, 0.663414598, -0.499997288, -0.766044378, 0.642787695, 1.801709e-06, 0.321399361, 0.38303256, 0.866039157),
CFrame.new(0.0669843927, -1.80000138, -0.249991581, 0.750000238, 0.433012992, -0.499997288, -0.499999464, 0.866025865, 1.801709e-06, 0.433021635, 0.250007659, 0.866039157),
CFrame.new(-1.01960945, -1.79999983, -0.300026655, 0.663413942, 0.556670904, -0.499997288, -0.642787337, 0.766044736, 1.801709e-06, 0.38302961, 0.321402997, 0.866039157),
}, .4, false)
end
Humanoid.WalkSpeed = 16
attack = false
end

function goleft()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
BodyVel(RootPart,RootPart.CFrame.rightVector*-40)
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 0.866035402, 9.42248391e-07, -0.499995083, 1.7168677e-06, 1, 1.08920722e-06, 0.500013709, 1.801709e-06, 0.866029859),
CFrame.new(-0.100005262, 1.49997783, -0.173194915, 0.984938622, -0.171012864, -0.0261079669, 0.171011686, 0.939692199, 0.296198815, -0.0261065066, -0.296198487, 0.954771042),
CFrame.new(1.55997992, 0.600023985, -0.496356547, 0.433018357, -0.750008225, 0.500013709, 0.866026461, 0.499998212, 1.801709e-06, -0.249996096, 0.433009237, 0.866029859),
CFrame.new(-0.510781586, 0.89997524, -0.686506629, -0.296202958, -0.813806593, -0.500013709, -0.939693034, 0.342019022, -1.801709e-06, 0.171007261, 0.469842136, -0.866029859),
CFrame.new(0.975441694, -1.79999304, -0.250189304, 0.750009537, -0.433016449, 0.500013709, 0.500001013, 0.866024911, 1.801709e-06, -0.433007956, 0.249998584, 0.866029859),
CFrame.new(-0.282589972, -1.79999781, -0.149757206, 0.813807786, -0.296199739, 0.500013709, 0.34202078, 0.939692438, 1.801709e-06, -0.469841361, 0.171009272, 0.866029859),
}, .4, false)
end
Humanoid.WalkSpeed = 16
attack = false
end

zhold = false
Mouse.Button1Down:connect(function()
zhold = true
if attack == false then
gunshoot()
end
end)

Mouse.Button1Up:connect(function()
zhold = false
end)

local sprintt = 0
Mouse.KeyDown:connect(function(k)
k = k:lower()
if attack == false then
if k == 'z' then
if Anim ~= "Fall" and Anim ~= "Jump" then
doge()
end
elseif k == 'x' then
wepknifestab()
elseif k == 'h' then
so(115959318,Torso,1,1)
if li.Enabled == true then
li.Enabled = false
else
li.Enabled = true
end
elseif k == 'f' and chara:FindFirstChild("healcool")==nil then
heal()
elseif k == 'q' then
goleft()
elseif k == 'e' then
goright()
elseif k == 'r' then
attack = true
Humanoid.WalkSpeed = 1
gunreload()
Humanoid.WalkSpeed = 16
attack = false
end
end
end)

coroutine.wrap(function()
game:GetService("RunService").RenderStepped:connect(function()
    for i,v in pairs(chara:GetDescendants()) do
    if v:IsA("BasePart") and v.Parent.Name ~= "FakeHeadM" and v.Name ~= "Head" and v.Parent:IsA("Accessory") == false then
    v.LocalTransparencyModifier = 0
    end
    end
end)
end)()

coroutine.wrap(function()
while 1 do
swait()
if doe <= 360 then
doe = doe + 2
else
doe = 0
end
end
end)()
while true do
swait()
while true do
swait()
Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
velocity = RootPart.Velocity.y
sine = sine + change
local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, chara)
if RootPart.Velocity.y > 1 and hit == nil then 
Anim = "Jump"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, 0.0382082276, -0.0403150208, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(0, 1.46579528, 0.0939689279, 1, 0, 0, 0, 0.939692855, -0.342019796, 0, 0.342019796, 0.939692855),
CFrame.new(0.734604299, 0.30659169, -0.856673121, 0.173673332, 0.92531991, 0.337076902, 0.00030374527, 0.342228055, -0.939616919, -0.984803319, 0.163288772, 0.0591548085),
CFrame.new(-1.22185647, -0.0727021843, -0.0971833766, 0.0593958423, 0.336820453, 0.93969363, 0.934461474, 0.312310249, -0.171008497, -0.351075143, 0.888264716, -0.296195835),
CFrame.new(0.5, -1.99739456, -0.0180913229, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.5, -1.30000103, -0.39999947, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
}, .3, false)
end
elseif RootPart.Velocity.y < -1 and hit == nil then 
Anim = "Fall"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, -0.0646628663, 0.0399149321, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0, 1.4913609, -0.128171027, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
CFrame.new(0.734604299, 0.30659169, -0.856673121, 0.173673332, 0.92531991, 0.337076902, 0.00030374527, 0.342228055, -0.939616919, -0.984803319, 0.163288772, 0.0591548085),
CFrame.new(-1.22185647, -0.0727021843, -0.0971833766, 0.0593958423, 0.336820453, 0.93969363, 0.934461474, 0.312310249, -0.171008497, -0.351075143, 0.888264716, -0.296195835),
CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
}, .3, false)
end
elseif Torsovelocity < 1 and hit ~= nil then
Anim = "Idle"
if attack == false then
change = 1
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, -1.92557081e-12, 2.61934474e-10, -1.92557081e-12, 1, -8.73114914e-11, 2.61934474e-10, -8.73114914e-11, 1.00001419) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
CFrame.new(-1.71661413e-05, 1.49998856, 6.10358911e-05, 1, -1.92557081e-12, 2.61934474e-10, -1.92557081e-12, 1, -8.73114914e-11, 2.61934474e-10, -8.73114914e-11, 1.00001419),
CFrame.new(0.734604299, 0.30659169, -0.856673121, 0.173673332, 0.92531991, 0.337076902, 0.00030374527, 0.342228055, -0.939616919, -0.984803319, 0.163288772, 0.0591548085),
CFrame.new(-1.22185647, -0.0727021843, -0.0971833766, 0.0593958423, 0.336820453, 0.93969363, 0.934461474, 0.312310249, -0.171008497, -0.351075143, 0.888264716, -0.296195835),
CFrame.new(0.500044346, -2.00001574, 4.57773203e-05, 1, -1.92557081e-12, 2.61934474e-10, -1.92557081e-12, 1, -8.73114914e-11, 2.61934474e-10, -8.73114914e-11, 1.00001419) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
CFrame.new(-0.49998188, -2.00001717, -1.52589619e-05, 1, -1.92557081e-12, 2.61934474e-10, -1.92557081e-12, 1, -8.73114914e-11, 2.61934474e-10, -8.73114914e-11, 1.00001419) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
}, .3, false)
end
elseif Torsovelocity > 2 and hit ~= nil then
Anim = "Walk"
if attack == false then
Humanoid.WalkSpeed = 24
PlayAnimationFromTable({		
CFrame.new(-8.35164028e-05, -0.0110899508, 0.357279301, 1, 8.84765032e-05, -2.51957972e-05, -7.45232464e-05, 0.939692497, 0.342020363, 5.39370812e-05, -0.342020363, 0.939692557) * CFrame.new(0, 0- .08 * math.cos((sine) / 2.5), 0) * CFrame.Angles(0, math.rad(5*math.cos(sine/2.5)), 0),
CFrame.new(-6.53590978e-05, 1.54212451, 0.181138486, 1, -7.45232464e-05, 5.39370812e-05, 8.84765032e-05, 0.939692497, -0.342020363, -2.51957972e-05, 0.342020363, 0.939692557) * CFrame.Angles(0, math.rad(0 - 2.5 * math.cos((sine) / 2.5)), 0),
CFrame.new(0.734604299, 0.30659169, -0.856673121, 0.173673332, 0.92531991, 0.337076902, 0.00030374527, 0.342228055, -0.939616919, -0.984803319, 0.163288772, 0.0591548085),
CFrame.new(-1.22185647, -0.0727021843, -0.0971833766, 0.0593958423, 0.336820453, 0.93969363, 0.934461474, 0.312310249, -0.171008497, -0.351075143, 0.888264716, -0.296195835),
CFrame.new(0.500047803, -2.00001502, 3.05175763e-05, 1, -7.27595761e-12, 0, -7.27595761e-12, 0.999999881, 0, 0, 0, 0.99999994) * CFrame.new(0, 0, 0+ 1 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 - 60 * math.cos((sine) / 2.5)), 0, 0),
CFrame.new(-0.499978185, -2.00001884, -1.52587882e-05, 1, -7.27595761e-12, 0, -7.27595761e-12, 0.999999881, 0, 0, 0, 0.99999994) * CFrame.new(0, 0, 0- 1 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 + 60 * math.cos((sine) / 2.5)), 0, 0),
}, .3, false)
end
end
end
end
