-------------
--Big Daddy--
----------------------------------------------------------------
--By CKbackup (Sugarie Saffron)                               --
--YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw--
--Discord: Sugarie Saffron#4705                               --
----------------------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
wait(.1)
local Player = game:service'Players'.LocalPlayer
local chara = game.Workspace.non
local Mouse = Player:GetMouse()
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
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
Humanoid.WalkSpeed = 16
debby = game:GetService("Debris")

Humanoid.MaxHealth = 800
Humanoid.Health = 800

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



local RW = newMotor(Torso, RightArm, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0))
local Neck = newMotor(Torso, Head, CFrame.new(0,0,0), CFrame.new())
local RH = newMotor(Torso, RightLeg, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0))
local RootJoint = newMotor(RootPart, Torso, CFrame.new(0,0,0), CFrame.new(0,0,0))

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
Neck.C0 = clerp(Neck.C0, table[2], speed) 
RW.C0 = clerp(RW.C0, table[3], speed) 
LW.C0 = clerp(LW.C0, table[4], speed) 
RH.C0 = clerp(RH.C0, table[5], speed) 
LH.C0 = clerp(LH.C0, table[6], speed) 
if bool == true then
if resetc1 == false then
resetc1 = true
RootJoint.C1 = RootJoint.C1
Neck.C1 = Neck.C1
RW.C1 = rarmc1
LW.C1 = larmc1
RH.C1 = rlegc1
LH.C1 = llegc1
end
end
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

local mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://318340174"
mus.Looped = true
mus.Volume = 1
mus:Play()



local sh = Instance.new("Shirt",chara)
local pn = Instance.new("Pants",chara)
sh.ShirtTemplate = "rbxassetid://17799754"
pn.PantsTemplate = "rbxassetid://21172424"
if chara:FindFirstChild("FaysG") then chara:FindFirstChild("FaysG"):Destroy() end

skincol = {"Bright yellow","Cool yellow","Pastel yellow","Pastel brown","Br. yellowish orange","White","Bright violet","Medium green","Medium stone grey","Dark stone grey"}

FHead = New("Part",chara,"FHead",{BrickColor = BrickColor.new(skincol[math.random(1,#skincol)]),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2.5999999, 1.29999995, 1.29999995),CFrame = CFrame.new(18.8000259, 5.85002184, -11.199934, -1, 0, 0, 0, 0.999997139, -9.36714151e-10, 0, -9.36711486e-10, -1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",FHead,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
Decal = New("Decal",FHead,"Decal",{Texture = "http://www.roblox.com/asset/?id=46078492",})
Weld = New("ManualWeld",FHead,"Weld",{Part0 = FHead,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.999999046, -9.36713263e-10, 0, -9.36714151e-10, -1),C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.999999046, -9.36713263e-10, 0, -9.36714151e-10, -1),})

Head:ClearAllChildren()
Instance.new("BlockMesh",Head).Scale = Vector3.new(0,0,0)

local hedcol = FHead.BrickColor
local bcols = Instance.new("BodyColors",chara)
bcols.Name = "NeoCols"
bcols.HeadColor = hedcol
bcols.LeftArmColor = hedcol
bcols.RightArmColor = hedcol
bcols.TorsoColor = hedcol
bcols.LeftLegColor = hedcol
bcols.RightLegColor = hedcol

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

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:waitForChild("Heartbeat")
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
    for i = 0, num*30 do
      ArtificialHB.Event:wait()
    end
  end
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
local debounce = Instance.new("BoolValue",dude)
debounce.Name = "HITO"
debby:AddItem(debounce,toim)
local hum = dude:FindFirstChildOfClass("Humanoid")
local dam = 0
local teksu = "-"..dam
if hum then
local finhel = hum.Health - dam
if finhel <= 0 and dude:FindFirstChild("DEATHED")==nil then
Instance.new("BoolValue",dude).Name = "DEATHED"
end
hum.Health = hum.Health - 0
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
swait(.2)
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
for i=1,dam/5 do
local blp = Instance.new("Part",EffectModel)
blp.Size = Vector3.new(.3,.3,.3)
blp.BrickColor = BrickColor.new("Crimson")
blp.CFrame = torsy.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
blp.Velocity = torsy.CFrame.lookVector*math.random(-8,-8) + torsy.CFrame.rightVector*math.random(-8,8) + Vector3.new(0,math.random(0,5),0)
blp.RotVelocity = Vector3.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))
--local blm = Instance.new("SpecialMesh",blp)
--blm.MeshType = "Sphere"
coroutine.wrap(function()
swait(.2)
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
Humanoid.CameraOffset = Vector3.new(0,0,0)
end)()
end

function puncheff(par)
if par.Parent:FindFirstChild("DebounceHit")==nil then
so(386946017,par,math.random(6,8)/10,1)
local bla = Effects.Sphere(par.CFrame,Vector3.new(1,1,1),Vector3.new(1,1,1),Vector3.new(1,1,1),"Neon","White",false,.1)
CamShake(bla,30,.5,.5)
end
end

function slasheff(par)
if par.Parent:FindFirstChild("DebounceHit")==nil then
local cho = math.random(1,3)
if cho == 1 then
so(444667824,par,1,1)
elseif cho == 2 then
so(444667844,par,1,1)
elseif cho == 3 then
so(444667859,par,1,1)
end
--function(cf,partsize,meshstart,meshadd,matr,colour,factor)
Effects.Sphere(par.CFrame*CFrame.Angles(math.random(0,360),math.random(0,360),math.random(0,360)),Vector3.new(.5,.5,.5),Vector3.new(1,0,1),Vector3.new(0,5,0),"Neon","Really red",false,.1)
end
end

function smasheff(pos,projsiz,projnum,grousiz,grono,grospr,projfor)
local hit,hitpos = rayCast(pos,Vector3.new(0,-1,0),4,chara)
if hit ~= nil then
for i = 1, projnum do
local p = Instance.new("Part",EffectModel)
p.BrickColor = hit.BrickColor
p.Material = hit.Material
p.Size = Vector3.new(projsiz,projsiz,projsiz)
p.CFrame = CFrame.new(hitpos+Vector3.new(math.random(-grospr,grospr),0,math.random(-grospr,grospr))) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
p.CanCollide = false
p.Velocity = projfor
CreateTrailObj(p,Color3.new(1,1,1),Color3.new(1,1,1),0,0).Enabled = true
coroutine.resume(coroutine.create(function()
swait(.2)
p.CanCollide = true
swait(3)
for i = 0,1,.01 do
swait()
p.Transparency = i
end
p:Destroy()
end))
end
for i = 1, grono do
local size = math.random(4,6)
local gtrace = Instance.new("Part",EffectModel)
gtrace.BrickColor = hit.BrickColor
gtrace.Material = hit.Material
gtrace.Size = Vector3.new(grousiz,grousiz,grousiz)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = CFrame.new(hitpos+Vector3.new(math.random(-grospr,grospr),0,math.random(-grospr,grospr))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
coroutine.wrap(function()
swait(3)
for i = 0,1,.01 do
swait()
gtrace.Transparency = i
end
gtrace:Destroy()
end)()
end
end
end

function attackone()
attack = true
Humanoid.WalkSpeed = 10
for i=0,2,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, 0.499998987),
CFrame.new(-0.0638873279, 2.01559806, -0.402032375, 0.492402941, -0.214610398, 0.84349376, -0.173647985, 0.925416708, 0.336823881, -0.852869213, -0.312324047, 0.418411195),
CFrame.new(1.10928118, 0.356215954, -1.26063514, 0.766042948, 0.642789483, 0, 0, 0, -1, -0.642789423, 0.766042948, 0),
CFrame.new(-1.95000088, -9.79751348e-07, 8.32974911e-06, 0.766044021, 0.633022547, -0.111619651, -0.642788172, 0.754405975, -0.133022651, 1.49011612e-07, 0.173648953, 0.984807789),
CFrame.new(0.650009155, -2.5999999, -1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.650007129, -2.5999999, 1.07288361e-05, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
}, .3, false)
end
RATr.Enabled = true
so(487907203,Head,1,3)
so(200632136,RightArm,.6,1)
Humanoid.WalkSpeed = 0
BodyVel(RootPart,RootPart.CFrame.lookVector*70)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.222327977, -0.0760439336, -0.208909988, 0.604021907, -0.342020392, 0.719846964, -0.0554149859, 0.883022249, 0.46604827, -0.795038819, -0.321393698, 0.514411688),
CFrame.new(7.34417608e-06, 2.0353117, -0.350306809, 1, -4.47034836e-07, 1.69873238e-06, -2.08616257e-07, 0.939692974, 0.342019647, -1.7285347e-06, -0.342019677, 0.939692795),
CFrame.new(1.09530568, 0.103452325, -1.42083132, 0.766043782, 0.64278847, -1.9967556e-06, -0.321392238, 0.383016765, -0.866028547, -0.556672335, 0.663416266, 0.499994785),
CFrame.new(-1.9499985, -4.95091081e-06, 1.11758709e-06, 0.766044378, 0.633022308, -0.111619204, -0.642787814, 0.754405975, -0.13302502, -1.57952309e-06, 0.173650473, 0.984807491),
CFrame.new(0.75631088, -2.3547678, -0.864154458, 0.997292876, -0.0554149859, -0.0483326912, 0.0263557732, 0.883022249, -0.468590677, 0.0686457753, 0.46604827, 0.882092297),
CFrame.new(-0.650001526, -2.59999871, 7.66813719e-06, 1, 0, 0, 0, 1.00000012, -1.49011612e-08, 0, -1.49011612e-08, 1),
}, .3, false)
MagnitudeDmg(RightArm,2.5,40,3,RootPart.CFrame.lookVector*60,true,"Blunt",.5)
end
swait(.5)
Humanoid.WalkSpeed = 16
RATr.Enabled = false
attack = false
end

function dashattack()
attack = true
Humanoid.WalkSpeed = 2
so(487911937,Head,1,3)
for i=0,2,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.260801345, 0.37769106, 1, 0, 0, 0, 0.939692736, -0.342019886, 0, 0.342019916, 0.939692736),
CFrame.new(0, 1.88156867, 0.187936544, 1, 0, 0, 0, 0.939692438, -0.342020929, 0, 0.342020959, 0.939692438),
CFrame.new(2.54999161, 0.600001335, 9.71555778e-07, 0, -1, 0, 1, 0, 2.98023224e-08, 2.98023224e-08, 0, 1),
CFrame.new(-2.54999542, 0.599999964, 3.99351336e-07, 0, 1, 0, -1.00000012, 0, 9.83476639e-07, 9.23871994e-07, 0, 1.00000012),
CFrame.new(0.649994314, -2.32730556, 0.445138514, 0.939692736, 0, -0.342019886, 0.116977625, 0.939692736, 0.321393639, 0.321393639, -0.342019886, 0.883022428),
CFrame.new(-0.649998546, -2.32730579, 0.445138097, 0.939692736, 0, 0.342019886, -0.116977625, 0.939692736, 0.321393639, -0.321393639, -0.342019886, 0.883022428),
}, .4, false)
end
RATr.Enabled = true
Humanoid.WalkSpeed = 0
local bodyvel = Instance.new("BodyVelocity",RootPart)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,0,pep)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
local dasu = 0
local par = rayCast(RootPart.Position,RootPart.CFrame.lookVector*1,5,chara)
repeat
dasu = dasu + 1
bodyvel.Velocity = RootPart.CFrame.lookVector*50
par = rayCast(RootPart.Position,RootPart.CFrame.lookVector*1,5,chara)
so(10730819,Torso,1,2)
CamShake(Torso,60,.4,.1)
smasheff(Torso.Position,math.random(10,20)/10,math.random(2,3),math.random(10,20)/10,math.random(2,3),2,(RootPart.CFrame.lookVector*-math.random(30,50))+Vector3.new(math.random(-5,5),math.random(50,70),math.random(-5,5)))
swait()
Effects.Wave(RootPart.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(),Vector3.new(1,.2,1),"",10,false,.05)
PlayAnimationFromTable({
CFrame.new(-0.11852926, -0.0870857984, -0.16250591, 0.499998987, 0.433013916, -0.75, 0, 0.866024852, 0.500001073, 0.866025984, -0.25000003, 0.433011562),
CFrame.new(1.67643725e-06, 1.94997621, -1.7765941e-06, 0.866025209, -8.34465027e-07, 0.500000358, 7.30156898e-07, 1.00000012, 3.57627869e-07, -0.500000417, 6.70552254e-08, 0.866025209),
CFrame.new(2.30981135, 0.0232107639, -1.46663569e-05, 0.499999255, -0.866025925, 3.06963921e-06, 0.866025925, 0.499999285, -2.25007534e-06, 4.17232513e-07, 3.78489494e-06, 1),
CFrame.new(-0.942220747, 0.533102334, -1.07246113, 0.173649132, -0.63302058, 0.754407704, 0.98480767, 0.11162056, -0.1330221, -1.62422657e-06, 0.76604557, 0.642786443),
CFrame.new(0.650001526, -2.59999871, -7.62939544e-06, 1, 0, 2.98023224e-08, 0, 1.00000012, 7.4505806e-09, 2.98023224e-08, 7.4505806e-09, 1.00000012),
CFrame.new(-0.957818449, -2.31074858, -0.794715047, 0.939692378, 1.1920929e-07, 0.342020839, 0.116977721, 0.939692855, -0.321393222, -0.321394473, 0.342019558, 0.883022189),
}, .4, false)
MagnitudeDmg(Torso,6,30,3,RootPart.CFrame.lookVector*60,true,"Blunt",.5)
until par ~= nil or dasu >= 100
bodyvel:Destroy()
Humanoid.WalkSpeed = 16
RATr.Enabled = false
attack = false
end

function thesurou()
attack = true
Humanoid.WalkSpeed = 0
local grab = nil
local torsy = nil
local hum = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 6)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 then
hum = v:FindFirstChildOfClass("Humanoid")
torsy = GetDudesTorso(v)
grab = v
end
end
so(200632136,RootPart,.8,1)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.160800725, -0.377691686, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0, 2.01372528, -0.214328468, 1, 0, 0, 0, 0.984807789, 0.173648685, 0, -0.173648715, 0.984807789),
CFrame.new(1.30359828, 0.346287906, -1.12627494, 0.866025269, 0.500000358, -4.18942193e-07, -0.0868241489, 0.150382817, -0.984807909, -0.492404312, 0.852868497, 0.173647434),
CFrame.new(-1.30359876, 0.346286833, -1.12628198, 0.866025269, -0.500000358, 4.18942193e-07, 0.0868241489, 0.150382817, -0.984807909, 0.492404312, 0.852868497, 0.173647434),
CFrame.new(0.65000087, -2.4212749, -0.479339659, 0.984807849, 0, -0.173647985, -0.0593910702, 0.939692736, -0.33682391, 0.163175747, 0.342019886, 0.925416768),
CFrame.new(-0.649993539, -2.42127419, -0.479341805, 0.984807849, 0, 0.173647985, 0.0593910702, 0.939692736, -0.33682391, -0.163175747, 0.342019886, 0.925416768),
}, .3, false)
end
if grab ~= nil and torsy ~= nil then
so(487911937,Head,1,3)
so(240429615,torsy,1,1)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.034717761, 1.88260937, 0.18508473, 0.984807849, -1.54085157e-07, -0.173648179, -0.0593909919, 0.939692736, -0.336823851, 0.163175985, 0.342019886, 0.925416648),
CFrame.new(1.95000458, 1.57569158, -0.277835488, 1, 0, 0, 0, -0.984807968, -0.173647001, 0, 0.173647001, -0.984807968),
CFrame.new(-1.95000529, -2.02655792e-06, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(0.650004029, -2.5999999, 7.15255737e-07, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.649996519, -2.5999999, -6.10947609e-07, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849),
}, .3, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
for a=1,3 do
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.034717761, 1.88260937, 0.18508473, 0.984807849, -1.54085157e-07, -0.173648179, -0.0593909919, 0.939692736, -0.336823851, 0.163175985, 0.342019886, 0.925416648),
CFrame.new(1.95000458, 1.57569158, -0.277835488, 1, 0, 0, 0, -0.984807968, -0.173647001, 0, 0.173647001, -0.984807968),
CFrame.new(-1.95000529, -2.02655792e-06, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(0.650004029, -2.5999999, 7.15255737e-07, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.649996519, -2.5999999, -6.10947609e-07, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849),
}, .3, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
so(200632136,RootPart,.9,1)
for i = 0,1,.2 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.102054864, -0.932198167, 9.983778e-07, 0, 0.766044974, -0.64278698, 0, 0.64278698, 0.766044974, 1, 0, 0),
CFrame.new(0, 1.94997787, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.70003557, 0.647316098, -1.51024413, 0.866025388, 0, 0.500000238, 0.383022666, 0.64278698, -0.663414419, -0.321393639, 0.766044974, 0.556669831),
CFrame.new(-1.95000505, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.650000989, -0.993868172, -1.34321105, 1, 0, 0, 0, 0.64278698, -0.766044974, 0, 0.766044974, 0.64278698),
CFrame.new(-0.650000989, -2.59999466, 7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
puncheff(torsy)
smasheff(torsy.Position,math.random(10,20)/10,math.random(4,6),math.random(10,20)/10,math.random(4,6),5,Vector3.new(math.random(-30,30),math.random(70,90),math.random(-30,30)))
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.5,.5,.5),"",10,false,.05)
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.25,1,.25),"",-10,false,.05)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.034717761, 1.88260937, 0.18508473, 0.984807849, -1.54085157e-07, -0.173648179, -0.0593909919, 0.939692736, -0.336823851, 0.163175985, 0.342019886, 0.925416648),
CFrame.new(1.95000458, 1.57569158, -0.277835488, 1, 0, 0, 0, -0.984807968, -0.173647001, 0, 0.173647001, -0.984807968),
CFrame.new(-1.95000529, -2.02655792e-06, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(0.650004029, -2.5999999, 7.15255737e-07, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.649996519, -2.5999999, -6.10947609e-07, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849),
}, .3, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
so(200632136,RootPart,.9,1)
for i = 0,1,.2 do
swait()
PlayAnimationFromTable({
CFrame.new(0.102049023, -0.932193279, 0, 0, -0.766044974, 0.64278698, 0, 0.64278698, 0.766044974, -1, 0, 0),
CFrame.new(0, 1.94997406, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.70003128, 0.647328019, -1.51025343, 0.866025388, 0, 0.500000238, 0.383022666, 0.64278698, -0.663414419, -0.321393639, 0.766044974, 0.556669831),
CFrame.new(-1.95000458, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.650002003, -0.993867934, -1.34321058, 1, 0, 0, 0, 0.64278698, -0.766044974, 0, 0.766044974, 0.64278698),
CFrame.new(-0.650001049, -2.60001373, 1.14440918e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
puncheff(torsy)
smasheff(torsy.Position,math.random(10,20)/10,math.random(4,6),math.random(10,20)/10,math.random(4,6),5,Vector3.new(math.random(-30,30),math.random(70,90),math.random(-30,30)))
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.5,.5,.5),"",10,false,.05)
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.25,1,.25),"",-10,false,.05)
end
so(200632136,RootPart,.9,1)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, 0.499998987),
CFrame.new(0.0492400974, 1.93260896, -0.0852866173, 0.492402941, 0.0868238136, 0.866025984, -0.173647985, 0.984807849, 0, -0.852869213, -0.150383666, 0.499998987),
CFrame.new(2.25130796, 1.15621161, -0.521879852, 0.866025984, -0.43301183, 0.249999613, 0, -0.500000238, -0.866025388, 0.499998987, 0.750000477, -0.433013201),
CFrame.new(-1.95000482, 3.33413482e-07, 2.38418579e-07, 0.76604408, 0.633022606, -0.111619651, -0.642788172, 0.754405975, -0.133022651, 1.78813934e-07, 0.173648968, 0.98480773),
CFrame.new(0.650005341, -2.5999999, -7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.650006175, -2.5999999, 2.44379044e-06, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
}, .4, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
local pato = Instance.new("Part",torsy)
pato.CFrame = torsy.CFrame
pato.Size = Vector3.new(4.1,6.1,1.1)
pato.Transparency = 1
pato.CanCollide = false
pato.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
local werudo = Instance.new("Weld",pato)
werudo.Part0 = pato
werudo.Part1 = torsy
torsy.Velocity = RootPart.CFrame.lookVector*150+Vector3.new(0,30,0)
torsy.RotVelocity = Vector3.new(10,10,10)
pato.Touched:connect(function(hit)
if hit:IsDescendantOf(chara)==false then
pato:Destroy()
Dmg(grab,70,3,Vector3.new(0,20,0)+RootPart.CFrame.lookVector*50,true,"Blunt",.3)
so(260430079,torsy,1,5)
MagnitudeDmg(torsy,6,40,3,Vector3.new(0,5,0)+RootPart.CFrame.lookVector*20,true,"Blunt",.2)
smasheff(torsy.Position,math.random(10,20)/10,math.random(4,6),math.random(10,20)/10,math.random(4,6),5,Vector3.new(math.random(-30,30),math.random(70,90),math.random(-30,30)))
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.5,.5,.5),"",10,false,.05)
Effects.Wave(CFrame.new(torsy.Position),Vector3.new(),Vector3.new(.25,1,.25),"",-10,false,.05)
end	
end)
so(200632136,RootPart,.8,1)
for i = 0,2,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.222327977, -0.0760439336, -0.208909988, 0.604021907, -0.342020392, 0.719846964, -0.0554149859, 0.883022249, 0.46604827, -0.795038819, -0.321393698, 0.514411688),
CFrame.new(7.34417608e-06, 2.0353117, -0.350306809, 1, -4.47034836e-07, 1.69873238e-06, -2.08616257e-07, 0.939692974, 0.342019647, -1.7285347e-06, -0.342019677, 0.939692795),
CFrame.new(1.09530568, 0.103452325, -1.42083132, 0.766043782, 0.64278847, -1.9967556e-06, -0.321392238, 0.383016765, -0.866028547, -0.556672335, 0.663416266, 0.499994785),
CFrame.new(-1.9499985, -4.95091081e-06, 1.11758709e-06, 0.766044378, 0.633022308, -0.111619204, -0.642787814, 0.754405975, -0.13302502, -1.57952309e-06, 0.173650473, 0.984807491),
CFrame.new(0.75631088, -2.3547678, -0.864154458, 0.997292876, -0.0554149859, -0.0483326912, 0.0263557732, 0.883022249, -0.468590677, 0.0686457753, 0.46604827, 0.882092297),
CFrame.new(-0.650001526, -2.59999871, 7.66813719e-06, 1, 0, 0, 0, 1.00000012, -1.49011612e-08, 0, -1.49011612e-08, 1),
}, .3, false)
end
end
attack = false
Humanoid.WalkSpeed = 8
end

function taunt()
attack = true
Humanoid.WalkSpeed = 0
mus.Pitch = 0
local snd = Instance.new("Sound",Head)
snd.Volume = 3
snd.SoundId = "rbxassetid://146333460"
snd:Play()
so(487907203,Head,1,3)
for i = 0,1,.01 do
swait()
PlayAnimationFromTable({
CFrame.new(-7.70094994e-06, 0.0393988565, 0.149780393, 0.999998927, -8.29677447e-08, -4.7053436e-07, 0, 0.984807849, -0.173647985, -6.85358827e-06, 0.173648238, 0.984809279),
CFrame.new(6.96081361e-06, 1.94950724, -0.513472855, 1, -6.94597475e-07, 3.9392653e-06, -6.94597475e-07, 0.939692855, 0.342019767, -3.93926348e-06, -0.342019796, 0.939692736),
CFrame.new(1.69018638, 1.65000451, 0.300107032, 0.866022527, 0.500005007, 5.95726306e-06, 0.500005066, -0.866022527, -1.13099813e-05, -4.91738319e-07, 1.27702951e-05, -1.00000012),
CFrame.new(-1.69020617, 1.6499958, 0.299897015, 0.866027176, -0.49999702, 6.79078403e-06, -0.499997079, -0.866027117, 1.20401382e-05, -1.34110451e-07, -1.38133764e-05, -1.00000012),
CFrame.new(0.650000513, -2.62530255, 0.310812205, 0.939692974, 0, -0.342019439, 0.0593909882, 0.984807849, 0.163175792, 0.336823434, -0.173647985, 0.925417006),
CFrame.new(-0.649998724, -2.62530136, 0.310818315, 0.939692497, 0, 0.34202072, -0.0593912043, 0.984807849, 0.163175717, -0.336824685, -0.173647985, 0.925416589),
}, .1, false)
end
so(487907316,Head,1,3)
for i = 0,1,.01 do
swait()
PlayAnimationFromTable({
CFrame.new(1.55392627e-05, -0.118780732, -0.583496988, 0.999998569, 2.40357622e-07, -4.16312105e-07, 0, 0.866025388, 0.500000238, -9.29446469e-06, -0.500001192, 0.866027057),
CFrame.new(1.61478602e-05, 1.9034369, 0.0406528115, 0.999998569, 0, -9.29446469e-06, 2.40357622e-07, 0.866025388, -0.500001192, -4.16312105e-07, 0.500000238, 0.866027057),
CFrame.new(1.35360622, -0.201802224, -0.616510034, 0.866021276, 0.500007153, -5.6077406e-06, -0.433019817, 0.74999243, -0.500005424, -0.250002086, 0.433017761, 0.866022408),
CFrame.new(-1.35358262, -0.201804206, -0.616507173, 0.866028905, -0.49999395, -4.74162516e-06, 0.433007032, 0.750007033, -0.499994606, 0.249997824, 0.433007747, 0.866028666),
CFrame.new(0.649987519, -2.44053602, -0.735289276, 0.999998569, 0, -9.29446469e-06, 2.40357622e-07, 0.866025388, -0.500001192, -4.16312105e-07, 0.500000238, 0.866027057),
CFrame.new(-0.650013626, -2.44054365, -0.735276401, 0.999998569, 0, -9.29446469e-06, 2.40357622e-07, 0.866025388, -0.500001192, -4.16312105e-07, 0.500000238, 0.866027057),
}, .1, false)
end
so(487907203,Head,.9,3)
for i = 0,1,.01 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.599999666, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(3.60608101e-06, 1.94996309, -3.51667404e-06, 0.469848812, 0.342020154, 0.813796282, -0.171001956, 0.939692676, -0.296202868, -0.866025746, 9.79501692e-06, 0.499999583),
CFrame.new(1.61960268, 1.77223492, -2.74498088e-05, 0.866025388, 0.500000238, 1.34671045e-05, 0.500000238, -0.866025388, -9.50000867e-06, 6.91284913e-06, 1.49608022e-05, -1),
CFrame.new(-2.50045633, 0.909400702, 7.89161845e-07, -1.0784097e-06, 0.984807849, -0.173647985, 0, -0.173647985, -0.984807849, -1, -1.06202424e-06, 1.8726405e-07),
CFrame.new(1.36961031, -2.04641271, 4.32031811e-06, 0.866025388, -0.500000238, -7.40492396e-06, 0.500000238, 0.866025388, 1.30000126e-05, -8.71550583e-08, -1.49608022e-05, 1),
CFrame.new(-0.649993896, -1.99999642, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .1, false)
end
so(487907316,Head,.9,3)
for i = 0,1,.01 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.699999571, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(4.35113907e-06, 1.9499656, -2.47359276e-06, 0.499997169, -0.296198249, -0.813799441, 0, 0.939692855, -0.342019647, 0.866027057, 0.171008855, 0.469843775),
CFrame.new(2.56986904, 0.91509676, 1.86699071e-05, -3.99215896e-05, -0.984806359, 0.173656061, 0, -0.173656061, -0.984806359, 1, -3.93150331e-05, 6.93262609e-06),
CFrame.new(-1.76206148, 1.33159709, 1.23434656e-05, 0.939692736, -0.342019886, 5.52932834e-05, -0.342019916, -0.939692736, -9.23453536e-06, 5.51170961e-05, -1.02337781e-05, -1),
CFrame.new(0.650001526, -1.89999652, -0.599994659, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-1.4295907, -1.91907001, -1.105927e-05, 0.866025388, 0.500000238, -1.4333129e-05, -0.500000238, 0.866025388, -9.00000668e-06, 7.91284765e-06, 1.49608022e-05, 1),
}, .1, false)
end
snd:Destroy()
mus.Pitch = 1
Humanoid.WalkSpeed = 16
attack = false
end

Mouse.Button1Down:connect(function()
if attack == false then
attackone()
end
end)

local sprintt = 0

Mouse.KeyDown:connect(function(k)
k = k:lower()
if k=='m' then
if mus.IsPlaying == true then
mus:Stop()
elseif mus.IsPaused == true then
mus:Play()
end
end
if attack == false then
if k == 'z' then
thesurou()
elseif k == 'x' then
dashattack()
elseif k == 'g' then
taunt()
end
end
end)

prevhp = 800
Humanoid.HealthChanged:connect(function(hp)
if hp < prevhp then
local cho = math.random(1,5)
local s = Instance.new("Sound",Head)
if cho == 1 then
so(480392869,Head,1,3)
elseif cho == 2 then
so(480392949,Head,1,3)
elseif cho == 3 then
so(480394663,Head,1,3)
elseif cho == 4 then
so(480394802,Head,1,3)
elseif cho == 5 then
so(480394542,Head,1,3)
end
end
prevhp = hp
end)

local soundIds = {142539074, 487912030, 487911937}
coroutine.wrap(function()
while wait(math.random(25,30)/10) do
	if Humanoid.Health > 1 and attack == false then
	so(soundIds[math.random(1,3)],Head,1,3)
	end
end
end)()

Humanoid.Died:connect(function()
mus:Stop()
so(487907155,Head,1,3)
swait(5)
for i = 1,10 do
swait()
for i,v in pairs(chara:GetDescendants()) do
if v:IsA("BasePart") then
v.Transparency = v.Transparency + .1
end
end
end
chara:Destroy()
end)

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
if Head:FindFirstChild("mus")==nil then
mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://318340174"
mus.Looped = true
mus.Volume = 1
mus:Play()
end
local ss = Humanoid:GetState()
if ss == (Enum.HumanoidStateType.FallingDown or ss == Enum.HumanoidStateType.PlatformStanding) then
Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
end
Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
velocity = RootPart.Velocity.y
sine = sine + change
local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 5.3, chara)
if RootPart.Velocity.y > 1 and hit == nil then 
Anim = "Jump"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, 0.0740167201, -0.180228189, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0, 2.03109002, -0.115844816, 1, 0, 0, 0, 0.984807789, 0.173648685, 0, -0.173648715, 0.984807789),
CFrame.new(1.47152913, -0.278083742, 0.397592455, 0.939692855, 0.342019439, -3.31528156e-08, -0.321393043, 0.883022368, 0.34202078, 0.116977774, -0.321394503, 0.939692497),
CFrame.new(-1.47150564, -0.27808097, 0.397592992, 0.939692855, -0.342019439, 3.31528156e-08, 0.321393043, 0.883022368, 0.34202078, -0.116977774, -0.321394503, 0.939692497),
CFrame.new(0.650001526, -1.19999599, -0.600000799, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
CFrame.new(-0.649993896, -2.59999466, 5.54323037e-07, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
elseif RootPart.Velocity.y < -1 and hit == nil then 
Anim = "Fall"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, -0.133714333, 0.15832366, 1, 0, 0, 0, 0.939692736, -0.342019886, 0, 0.342019916, 0.939692736),
CFrame.new(0, 2.05995607, -0.632082939, 1, 0, 0, 0, 0.766044796, 0.642787218, 0, -0.642787218, 0.766044855),
CFrame.new(2.25642705, 0.257112086, -3.82667531e-06, 0.766044319, -0.642787933, -2.9919768e-08, 0.642787993, 0.766044319, 3.87430191e-07, -1.93715096e-07, -2.83122063e-07, 1),
CFrame.new(-2.25643301, 0.257116973, 9.41694736e-07, 0.766044319, 0.642787933, 2.9919768e-08, -0.642787993, 0.766044319, 3.87430191e-07, 1.93715096e-07, -2.83122063e-07, 1),
CFrame.new(0.649993896, -1.3999939, -0.600004256, 1, 0, 0, 0, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),
CFrame.new(-0.650001526, -2.59999371, -3.89218303e-06, 1, 0, 0, 0, 1, 2.98023224e-08, 0, 2.98023224e-08, 1),
}, .3, false)
end
elseif Torsovelocity < 1 and hit ~= nil then
Anim = "Idle"
if attack == false then
change = 1
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388) * CFrame.new(0,.05 * math.cos((sine)/5), 0),
CFrame.new(0.0984803587, 1.91524398, -0.170572892, 0.866025388, 0.0868240371, -0.492404163, 0, 0.984807849, 0.173647985, 0.500000238, -0.150383562, 0.852868617),
CFrame.new(1.98214447, 0.0342020541, -0.0883011818, 0.939692676, -0.116977856, -0.321394205, 0, 0.939692736, -0.342019945, 0.342020601, 0.321393609, 0.883022249),
CFrame.new(-1.51237798, -0.128823012, -0.775815547, 0.766044199, -0.642788053, -3.87430191e-07, 0.413175076, 0.492402881, -0.76604563, 0.492405087, 0.586824656, 0.642786384),
CFrame.new(0.649999857, -2.5999999, -8.64267349e-07, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388) * CFrame.new(0,-.05 * math.cos((sine)/5), 0),
CFrame.new(-0.64999789, -2.5999999, -9.53674544e-07, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024) * CFrame.new(0,-.05 * math.cos((sine)/5), 0),
}, .3, false)
end
elseif Torsovelocity > 2 and hit ~= nil then
Anim = "Walk"
if attack == false then
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 80
PlayAnimationFromTable({		
CFrame.new(0, 0.0098747462, -0.187130988, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.Angles(0, math.rad(0 + 10 * math.cos((sine) / 5)), 0),
CFrame.new(0, 2.01372552, -0.214327857, 1, 0, 0, 0, 0.984807849, 0.173648134, 0, -0.173648164, 0.984807849),
CFrame.new(1.94397354, -0.115067676, -0.230779886, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(-1.95000458, -0.0637510419, -0.214326635, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0.649997711, -2.60271978, -0.268911421, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849) * CFrame.new(0, 0, 0+ .65 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 5)), 0, 0),
CFrame.new(-0.650001526, -2.60271978, -0.268911421, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849) * CFrame.new(0, 0, 0- .65 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 5)), 0, 0),
}, .3, false)
end
end
end
end