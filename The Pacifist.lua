--[[Pacifist class created by Brannon1964802.]]--
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

Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
--it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local gun=false
local shoot=false
player=nil 
mana=0

local defensevalue = .3
local speedvalue = 1
local damagevalue = 1
local cf = CFrame.new-- make things easier :)
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local stats=Instance.new('Folder',Character)
stats.Name='Stats'
local block=Instance.new('BoolValue',stats)
block.Name='Block'
block.Value=false
local stun=Instance.new('BoolValue',stats)
stun.Name='Stun'
stun.Value=false
local defense=Instance.new('NumberValue',stats)
defense.Name='Defence'
defense.Value=defensevalue
local speed=Instance.new('NumberValue',stats)
speed.Name='Speed'
speed.Value=speedvalue
local damagea=Instance.new('NumberValue',stats)
damagea.Name='Damage'
damagea.Value=damagevalue

Humanoid = Character.Humanoid
if Humanoid:FindFirstChild("Animator")then
Humanoid:FindFirstChild("Animator"):Destroy()
end

Humanoid.WalkSpeed = 10

--[[music = Instance.new("Sound", Torso)
music.SoundId = "http://www.roblox.com/asset/?id=179604943"
music.Volume = 0.5
music.Looped = true
wait(0.1)
music:Play()]]--

Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b

CloakEffectLight2 = Instance.new("PointLight", Torso)
CloakEffectLight2.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight2.Range = 7.5
CloakEffectLight2.Brightness = 7.5
CloakEffectLight2.Enabled = true

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Motor"), Instance.new("Motor") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s, p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
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

--To use: fat.Event:fat.Event:wait() or fat.Event:connect(function() asdcode end)

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 	
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

sitting=false
resting=false
meditating=false
sprint=false

mouse.Button1Down:connect(function()
end)
print'Only instinct left is survival.'
mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='z' and attack==false and resting==false and sprint==false and meditating==false then
	attack=true
	if sitting==false then
	sitting=true
	Humanoid.WalkSpeed = 0
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.25)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.3,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-60),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.25,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	elseif sitting==true then
	sitting=false
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.25)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.3,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-60),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.25,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	Humanoid.WalkSpeed = 10
	end
	attack=false
	end
	if k=='x' and attack==false and sitting==false and sprint==false and meditating==false then
	attack=true
	if resting==false then
	resting=true
	Humanoid.WalkSpeed = 0
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.05)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.1,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-40),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.05,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	elseif resting==true then
	resting=false
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.05)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.1,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-40),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.05,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	Humanoid.WalkSpeed = 10
	end
	attack=false
	end
	if k=='c' and attack==false and sitting==false and resting==false and sprint==false then
	attack=true
	if meditating==false then
	meditating=true
	Humanoid.WalkSpeed = 0
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.05)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.1,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-40),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.05,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	elseif meditating==true then
	meditating=false
	for i=0,1,0.04 do
	fat.Event:wait()
	RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.05)*angles(math.rad(0),math.rad(15),math.rad(0)),0.15)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30)),0.15)
	RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.15)
	LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.1,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),0.15)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-40),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
	LH.C0=clerp(LH.C0,cf(-0.75,0.05,-1)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.15)
	end
	Humanoid.WalkSpeed = 10
	end
	attack=false
	end
	if k=='e' and attack==false and resting==false and sitting==false and meditating==false and sprint==false then
	sprint=true
	Humanoid.WalkSpeed = 16
	end
end)

mouse.KeyUp:connect(function(k)
if k=='e' and attack==false and resting==false and sitting==false and meditating==false and sprint==true then
sprint=false
Humanoid.WalkSpeed = 10
end
end)

local sine = 0
local change = 1
local val = 0

fat.Event:connect(function()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(20)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20)),0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-20),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.15)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(10)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10)),0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-10),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and sitting==false and resting==false and meditating==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.1+0.1*math.cos(sine/30))*angles(math.rad(-2.5*math.cos(sine/30)),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(-5*math.cos(sine/30))+ -math.sin(sine/30)/15,math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.55+0.05*math.cos(sine/30)+ -math.sin(sine/30)/40,0)*angles(math.rad(5-2.5*math.cos(sine/30)),math.rad(0),math.rad(10+5*math.cos(sine/30))+ math.sin(sine/30)/20),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.55+0.05*math.cos(sine/30)+ -math.sin(sine/30)/40,0)*angles(math.rad(5-2.5*math.cos(sine/30)),math.rad(0),math.rad(-10-5*math.cos(sine/30))+ -math.sin(sine/30)/20),0.15)
RH.C0=clerp(RH.C0,cf(1,-0.9-0.1*math.cos(sine/30),0.025*math.cos(sine/30))*angles(math.rad(-2.5*math.cos(sine/30)),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-0.9-0.1*math.cos(sine/30),0.025*math.cos(sine/30))*angles(math.rad(-2.5*math.cos(sine/30)),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
else
if attack==false and sitting==true and resting==false and meditating==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.9)*angles(math.rad(-45-2.5*math.cos(sine/30)),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(-5*math.cos(sine/30))+ -math.sin(sine/30)/15,math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.45,0)*angles(math.rad(-45-2.5*math.cos(sine/30)),math.rad(0),math.rad(10)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.45,0)*angles(math.rad(-45-2.5*math.cos(sine/30)),math.rad(0),math.rad(-10)),0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0.025*math.cos(sine/30))*angles(math.rad(45-2.5*math.cos(sine/30)),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0.025*math.cos(sine/30))*angles(math.rad(45-2.5*math.cos(sine/30)),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),0.15)
else
if attack==false and sitting==false and resting==true and meditating==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.3)*angles(math.rad(-80-1*math.cos(sine/30)),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5-1*math.cos(sine/30))+ -math.sin(sine/30)/15,math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1,0.75,0.1)*angles(math.rad(215-1*math.cos(sine/30)),math.rad(0),math.rad(-45)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1,0.75,0.1)*angles(math.rad(200-1*math.cos(sine/30)),math.rad(0),math.rad(45)),0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0.025*math.cos(sine/30))*angles(math.rad(25-1*math.cos(sine/30)),math.rad(90),math.rad(0))*angles(math.rad(20),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0.025*math.cos(sine/30))*angles(math.rad(10-1*math.cos(sine/30)),math.rad(-90),math.rad(0))*angles(math.rad(20),math.rad(0),math.rad(0)),0.15)
else
if attack==false and sitting==false and resting==false and meditating==true then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.9)*angles(math.rad(10-1*math.cos(sine/30)),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10-1*math.cos(sine/30))+ -math.sin(sine/30)/15,math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.25,0.5,-0.5)*angles(math.rad(0),math.rad(165),math.rad(90)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.25,0.5,-0.5)*angles(math.rad(0),math.rad(-165),math.rad(-90)),0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0.1)*angles(math.rad(-30),math.rad(75),math.rad(0))*angles(math.rad(80),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0.1)*angles(math.rad(-30),math.rad(-75),math.rad(0))*angles(math.rad(80),math.rad(0),math.rad(0)),0.15)
end
end
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false and sprint==false then
change=0.5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.175+0.025*math.cos(sine/3.5)+ -math.sin(sine/3.5)/7)*angles(math.rad(5-2.5*math.cos(sine/3.5)),math.rad(0),math.rad(10*math.cos(sine/7))),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0+0.025*math.cos(sine/3.5))*angles(math.rad(0-2.5*math.cos(sine/3.5)),math.rad(1.5*math.cos(sine/7)),math.rad(-7.5*math.cos(sine/7))),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(30*math.cos(sine/7))+ math.sin(sine/7)/2.5,math.rad(0),math.rad(10)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-30*math.cos(sine/7))+ -math.sin(sine/7)/2.5,math.rad(0),math.rad(-10)),0.15)
RH.C0=clerp(RH.C0,cf(1,-0.925-0.5*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*angles(math.rad(-15-15*math.cos(sine/7))+ -math.sin(sine/7)/2.5,math.rad(90-10*math.cos(sine/7)),math.rad(0))*angles(math.rad(0+2.5*math.cos(sine/7)),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-0.925+0.5*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*angles(math.rad(-15+15*math.cos(sine/7))+ math.sin(sine/7)/2.5,math.rad(-90-10*math.cos(sine/7)),math.rad(0))*angles(math.rad(0-2.5*math.cos(sine/7)),math.rad(0),math.rad(0)),0.15)
elseif attack==false and sprint==true then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.1+0.1*math.cos(sine/3.5)+ -math.sin(sine/3.5)/7)*angles(math.rad(5-2.5*math.cos(sine/3.5)),math.rad(0),math.rad(10*math.cos(sine/7))),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0+0.025*math.cos(sine/3.5))*angles(math.rad(0-2.5*math.cos(sine/3.5)),math.rad(1.5*math.cos(sine/7)),math.rad(-7.5*math.cos(sine/7))),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(45*math.cos(sine/7))+ math.sin(sine/7)/2.5,math.rad(0),math.rad(10)),0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-45*math.cos(sine/7))+ -math.sin(sine/7)/2.5,math.rad(0),math.rad(-10)),0.15)
RH.C0=clerp(RH.C0,cf(1,-0.9-0.25*math.cos(sine/7)/2,0.5*math.cos(sine/7)/2)*angles(math.rad(-15-45*math.cos(sine/7))+ -math.sin(sine/7)/2.5,math.rad(90-10*math.cos(sine/7)),math.rad(0))*angles(math.rad(0+2.5*math.cos(sine/7)),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-0.9+0.25*math.cos(sine/7)/2,-0.5*math.cos(sine/7)/2)*angles(math.rad(-15+45*math.cos(sine/7))+ math.sin(sine/7)/2.5,math.rad(-90-10*math.cos(sine/7)),math.rad(0))*angles(math.rad(0-2.5*math.cos(sine/7)),math.rad(0),math.rad(0)),0.15)
end
elseif torvel<22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end)