--------------------------------------------------------------------------------
--A Really Mad Guy with a Knife, a Tec-9 and a Sawed-Off! THOSE KIDS WILL PAY!--
--------------------------------------------------------------------------------
--By CKbackup (Sugarie Saffron)                               --
--YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw--
--Discord: Sugarie Saffron#4705                               --
----------------------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
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
local hat = Align(char['White SS'].Handle,char['Left Arm'],false)
local cf = char['Left Arm'].CFrame*CFrame.new(0,-.6,-.75)*CFrame.Angles(math.rad(45),math.rad(-20),0)
hat[1].CFrame = cf:Inverse() * char['Left Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
_G.loop2 = true
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
            while _G.loop2 do 
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
local hat = Align(char['Cartoony Rainbow Rifle'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(35),math.rad(70),60)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
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
Humanoid.WalkSpeed = 8

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
Naifu = New("Part",chara,"Naifu",{BrickColor = BrickColor.new("Dark stone grey"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000018, 0.200000003, 2.09999967),CFrame = CFrame.new(-46.1688423, 1.71234488, -46.3381615, -0.556669891, -0.663414657, 0.499999702, -0.766044796, 0.642787278, 7.3450633e-07, -0.321393907, -0.383021802, -0.866025567),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Naifu,"Mesh",{Scale = Vector3.new(0.5, 0.699999988, 0.5),VertexColor = Vector3.new(0.5, 0.5, 0.5),MeshId = "rbxassetid://54430772",TextureId = "rbxassetid://54430066",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Naifu,"Weld",{Part0 = Naifu,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.556669891, -0.766044796, -0.321393907, -0.663414657, 0.642787278, -0.383021802, 0.499999702, 7.3450633e-07, -0.866025567),C1 = CFrame.new(-0.0408859253, -1.28767514, 0.650009155, -0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, -0.866025388),})
TEC9 = New("Part",chara,"TEC9",{BrickColor = BrickColor.new("Dark stone grey"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000018, 1.20000005, 1.79999959),CFrame = CFrame.new(-56.3000031, 1.29999971, -46.6999931, -1, -1.00172471e-07, -1.61844298e-08, 5.16190539e-08, -8.19882651e-09, 1, -1.29974794e-07, 1, -4.67569983e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",TEC9,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012),MeshId = "rbxassetid://742046473",TextureId = "rbxassetid://742046691",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",TEC9,"Weld",{Part0 = TEC9,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, -1, 5.16190539e-08, -1.29974794e-07, -1.00172471e-07, -8.19882651e-09, 1, -1.61844298e-08, 1, -4.67569983e-08),C1 = CFrame.new(-0.0999984741, -1.70001817, -7.62939453e-06, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
DBarrel = New("Part",chara,"DBarrel",{BrickColor = BrickColor.new("Dark stone grey"),Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000018, 0.799999952, 2.09999967),CFrame = CFrame.new(-42.2655792, 3.62635231, -28.7166176, 0.99998486, 0.00129485771, -0.00535738515, -0.00132099993, 0.999987245, -0.0048789978, 0.00535099953, 0.00488600042, 0.999973774),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",DBarrel,"Mesh",{Scale = Vector3.new(0.00700000022, 0.00700000022, 0.00700000022),MeshId = "rbxassetid://438826329",TextureId = "rbxassetid://438826340",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",DBarrel,"Weld",{Part0 = DBarrel,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, 0.99998486, -0.00132099993, 0.00535099953, 0.00129485771, 0.999987245, 0.00488600042, -0.00535738515, -0.0048789978, 0.999973774),C1 = CFrame.new(0.00952529907, -1.46699142, -0.100050688, -0.868691146, -0.00176300027, 0.495351046, -0.495353371, 0.00488599995, -0.868677914, -0.000888805604, -0.999986589, -0.00511773303),})

local att1 = Instance.new("Attachment",Naifu)
att1.Position = Vector3.new(0,.2,-.2)
local att2 = Instance.new("Attachment",Naifu)
att2.Position = Vector3.new(0,.1,1.5)
local tr1 = Instance.new("Trail",Naifu)
tr1.Color = ColorSequence.new(Color3.new(.5,.5,.5),Color3.new(1,1,1))
tr1.Transparency = NumberSequence.new(0,1)
tr1.Lifetime = .5
tr1.Enabled = false
tr1.Attachment0 = att1
tr1.Attachment1 = att2

if chara:FindFirstChild("FakeHeadM") then
local CorruptFace = New("Decal",chara.FakeHeadM.FakeHead,"Corrupt",{Texture = "rbxassetid://1000657824",})
chara.FakeHeadM.FakeHead.Normal:Destroy()
chara.FakeHeadM.FakeHead.Lood:Destroy()
chara.FakeHeadM.FakeHead.Rooped:Destroy()
chara.FaysG:Destroy()
chara.FakeHeadM.Ahoge:Destroy()
for i,v in pairs(chara:GetDescendants()) do
if v.Name == "SpecPart" or v.Name == "Ears1Part" then
v:Destroy()
elseif v.Name == "Ears2Part" then
v.Transparency = 0
end
end
end
for i, v in pairs(chara:children()) do
if v:IsA("Shirt") or v:IsA("Pants") then
v:Destroy()
elseif v.Name == "Chest" then
for a, b in pairs(v:children()) do
if b.Name ~= "Tail" then
b.Transparency = 1
end
end
end
end
local sh = Instance.new("Shirt",chara)
local pn = Instance.new("Pants",chara)
sh.ShirtTemplate = "rbxassetid://567462542"
pn.PantsTemplate = "rbxassetid://1521666087"
---------------------------

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

function chatfunc(text)
coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "BLABLABLA"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Antique"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(1,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)coroutine.wrap(function()
while tecks2 ~= nil do
swait()
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end)()
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
swait()
end
swait(30)
for i = 1, 5 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)()
end

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
if dude and dude ~= chara and dude.Name ~= "CKbackup" and dude.Name ~= "Nebula_Zorua" and dude.Name ~= "Salvo_Starly" then
if dude:FindFirstChild("HITO") then return end
local debounce = Instance.new("BoolValue",dude)
debounce.Name = "HITO"
debby:AddItem(debounce,toim)
local hum = dude:FindFirstChildOfClass("Humanoid")
local dam = -math.huge
local teksu = "-"..dam
if hum then
local finhel = hum.Health - dam
if finhel <= 0 and dude:FindFirstChild("DEATHED")==nil then
Instance.new("BoolValue",dude).Name = "DEATHED"
local soaa = Instance.new("Sound",dude.Head)
local cho = math.random(1,5)
if cho == 1 then
soaa.SoundId = "rbxassetid://111896685"
elseif cho == 2 then
soaa.SoundId = "rbxassetid://535528169"
elseif cho == 3 then
soaa.SoundId = "rbxassetid://1080363252"
elseif cho == 4 then
soaa.SoundId = "rbxassetid://147758746"
elseif cho == 5 then
soaa.SoundId = "rbxassetid://626777433"
soaa.Volume = .2
soaa.TimePosition = 1
end
game:service'Debris':AddItem(soaa,6)
soaa:Play()
end
hum.Health = hum.Health - dam
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
tecks2.Font = "Antique"
tecks2.TextSize = 24
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(1,0,0)
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
for i=1,dam/5 do
local blp = Instance.new("Part",EffectModel)
blp.Size = Vector3.new(.3,.3,.3)
blp.BrickColor = BrickColor.new("Crimson")
blp.CFrame = torsy.CFrame
blp.Velocity = torsy.CFrame.lookVector*5
coroutine.wrap(function()
swait(10)
blp.Orientation = Vector3.new(0,blp.Orientation.y,0)
for i=0,1,.1  do
swait()
blp.Transparency = i
blp.Size = blp.Size + Vector3.new(.02,-.02,.02)
end
blp:Destroy()
end)()
end
if efftyp == "Blunt" then
puncheff(torsy)
elseif efftyp == "Sharp" then
slasheff(torsy)
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
if hum ~= nil and c:FindFirstChild("IsTeamMateOfCK")==nil and c.Name ~= "CKbackup" and c.Name ~= "Nebula_Zorua" and c.Name ~= "Salvo_Starly" then
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

function puncheff(par)
if par.Parent:FindFirstChild("DebounceHit")==nil then
so(386946017,par,math.random(80,120)/100,1)
Effects.Sphere(par.CFrame,Vector3.new(1,1,1),Vector3.new(1,1,1),Vector3.new(2,2,2),"Neon","White",false,.1)
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

local mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://581195737"
mus.Looped = true
mus.Volume = 1
mus:Play()

coroutine.wrap(function()
chatfunc("I'm tired of all of this crap..")
swait(90)
chatfunc("Now the day of reckoning has begun..")
swait(90)
chatfunc("This shall be my finest hour..")
swait(90)
chatfunc("ICH BIN GOTT! BERZERKER!")
end)()

function smek()
attack = true
Humanoid.WalkSpeed = 16
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.0506498702, -5.11459177e-07, -0.0829713419, 0.76604414, 0, 0.642788053, -2.68192082e-07, 1.00000834, 3.19618522e-07, -0.642793417, -4.17232513e-07, 0.766050518),
CFrame.new(0.0446723551, 1.46553934, 0.0211830139, 0.735023618, 0.242944986, -0.633023083, -0.171009988, 0.969846427, 0.173647657, 0.656122029, -0.0193818808, 0.754406095),
CFrame.new(1.40946591, -0.0135071278, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
CFrame.new(-1.55299187, 0.416839302, -0.457236975, 0.68952775, 0.492403448, -0.53112185, -0.633021951, 0.766044736, -0.11161866, 0.35190171, 0.413175911, 0.839911342),
CFrame.new(0.499983132, -2.00001597, -9.13441181e-06, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414),
CFrame.new(-0.500005186, -2.00001597, -1.22189522e-06, 0.98480773, 0, 0.173648447, 0, 1, 0, -0.173648447, 0, 0.98480773),
}, .3, false)
end
Humanoid.WalkSpeed = 2
tr1.Enabled = true
so(536642316,Naifu,1,1)
for i=0,1.4,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.0327370502, 1.24810251e-09, 0.00299140904, 0.64278698, 0, -0.766044974, 3.19616191e-07, 1, 2.68189382e-07, 0.766044974, -4.17229018e-07, 0.64278698),
CFrame.new(-0.0331632644, 1.46557713, -0.11364907, 0.656121135, -0.0193833038, 0.754413188, -0.171011418, 0.969854534, 0.173649102, -0.735024333, -0.24294585, 0.633027315),
CFrame.new(1.24921072, -0.104290992, 0.29409039, 0.93969059, 0.26200676, 0.21985054, -0.342026025, 0.719844162, 0.604022086, -2.68220901e-07, -0.642788291, 0.766043901),
CFrame.new(-0.663761616, 0.985711455, -0.487553686, 0.383021712, -0.64278698, -0.663414836, -0.866025984, 0, -0.499998987, 0.321392834, 0.766044974, -0.556670249),
CFrame.new(0.500005841, -2.00003386, -4.52250242e-06, 0.984807551, 0, -0.173649341, 0, 1, 0, 0.173649341, 0, 0.984807551),
CFrame.new(-0.499993563, -2.00003386, -1.44541264e-06, 0.64278698, 0, 0.766044974, 0, 1, 0, -0.766044974, 0, 0.64278698),
}, .5, false)
MagnitudeDmg(Naifu,3,40,3,RootPart.CFrame.lookVector*5,false,"Sharp",.5)
end
swait(5)
Humanoid.WalkSpeed = 8
tr1.Enabled = false
attack = false
end

zhold = true
function shoot()
attack = true
so(169799883,TEC9,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.0838357508, 1.42719412, -0.166348219, 0.857789159, 0.297403604, -0.419224113, -0.141315028, 0.920631945, 0.363959879, 0.49419412, -0.252958179, 0.83173573),
CFrame.new(1.22406256, -0.130654663, 0.277106255, 0.941511214, 0.33170712, 0.0593906641, -0.33170709, 0.881204426, 0.336822212, 0.0593910143, -0.336822152, 0.939693391),
CFrame.new(-1.43159902, 0, 0.187939197, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.499998897, -1.99999988, -1.49011612e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
Humanoid.WalkSpeed = 2
local ref = Instance.new("Part",chara)
ref.Size = Vector3.new(0,0,0)
ref.Anchored = true
ref.CanCollide = false
ref.Transparency = 1
TEC9.Transparency = 0
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-0.0438226089, 0, -0.0217384323, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.0674266815, 1.48262143, -0.0571227223, 0.939692736, 0.0593910702, -0.33682391, 0, 0.984807849, 0.173647985, 0.342019886, -0.163175747, 0.925416768),
CFrame.new(1.62663007, 0.722141325, -0.273156077, 0.883022428, -0.342019916, 0.321393609, 0.342019916, 0, -0.939692736, 0.321393609, 0.939692736, 0.116977602),
CFrame.new(-1.34998989, 0, 0.259806901, 0.866024911, 0, 0.500000954, 0, 1, 0, -0.500000954, 0, 0.866024852),
CFrame.new(0.499997795, -1.99999917, -1.51991844e-06, 0.866025686, 0, -0.499999642, 0, 1, 0, 0.499999642, 0, 0.866025686),
CFrame.new(-0.500000119, -1.99999917, 1.50501728e-06, 0.939692438, 0, 0.342020929, 0, 1, 0, -0.342020959, 0, 0.939692438),
}, .3, false)
end
swait(5)
local shots = 20
repeat
so(745308042,TEC9,1,1)
ref.CFrame = Mouse.Hit
MagnitudeDmg(ref,2,12,2,RootPart.CFrame.lookVector*3,false,"Shot",.1)
local hitpt = Instance.new("Part",EffectModel)
hitpt.Size = Vector3.new(0,0,.3)
hitpt.CFrame = TEC9.CFrame * CFrame.new(0,.465,.1)-- * CFrame.Angles(math.rad(90),0,0)
hitpt.Velocity = RootPart.CFrame.rightVector*10+Vector3.new(0,5,0)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "rbxassetid://94295100"
hitm.TextureId = "rbxassetid://94287792"
hitm.Scale = Vector3.new(3,3,3.5)
coroutine.wrap(function()
swait(30)
for i = 0,1,.1 do
swait()
hitpt.Transparency = i
end
hitpt:Destroy()
end)()
Effects.Block(TEC9.CFrame*CFrame.new(-.05,.465,-.9),Vector3.new(1,1,1),Vector3.new(),Vector3.new(.1,.1,.1),"Neon","Bright yellow",true,false,.1)
shots = shots - 1
for i=0,1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-0.0438226089, 0, -0.0217384323, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.0674266815, 1.48262143, -0.0571227223, 0.939692736, 0.0593910702, -0.33682391, 0, 0.984807849, 0.173647985, 0.342019886, -0.163175747, 0.925416768),
CFrame.new(1.62663007, 0.722141325, -0.273156077, 0.883022428, -0.342019916, 0.321393609, 0.342019916, 0, -0.939692736, 0.321393609, 0.939692736, 0.116977602)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5))),
CFrame.new(-1.34998989, 0, 0.259806901, 0.866024911, 0, 0.500000954, 0, 1, 0, -0.500000954, 0, 0.866024852),
CFrame.new(0.499997795, -1.99999917, -1.51991844e-06, 0.866025686, 0, -0.499999642, 0, 1, 0, 0.499999642, 0, 0.866025686),
CFrame.new(-0.500000119, -1.99999917, 1.50501728e-06, 0.939692438, 0, 0.342020929, 0, 1, 0, -0.342020959, 0, 0.939692438),
}, .3, false)
end
until zhold == false or shots == 0
swait(5)
ref:Destroy()
for i=0,1,.25 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.44842434, -0.192443371, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(1.39502811, 0.908103704, 0.515749812, -0.213331953, -0.84539932, -0.489683062, 0.875778735, 0.056671422, -0.479374528, 0.433013916, -0.531119943, 0.728292942),
CFrame.new(-1.5091548, 0.323206276, -0.384231716, 0.750000238, 0.433013409, -0.499999136, -0.500000179, 0.866025388, 6.10661004e-07, 0.433012158, 0.249999225, 0.866025925),
CFrame.new(0.50000149, -1.99999857, -2.11596489e-06, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.500000834, -1.99999857, 1.63912773e-06, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849),
}, .4, false)
end
so(1159825801,TEC9,1,1)
swait(15)
so(211134014,TEC9,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.0838357508, 1.42719412, -0.166348219, 0.857789159, 0.297403604, -0.419224113, -0.141315028, 0.920631945, 0.363959879, 0.49419412, -0.252958179, 0.83173573),
CFrame.new(1.22406256, -0.130654663, 0.277106255, 0.941511214, 0.33170712, 0.0593906641, -0.33170709, 0.881204426, 0.336822212, 0.0593910143, -0.336822152, 0.939693391),
CFrame.new(-1.43159902, 0, 0.187939197, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.499998897, -1.99999988, -1.49011612e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
TEC9.Transparency = 1
Humanoid.WalkSpeed = 8
attack = false
end

function dbshoot()
attack = true
so(169799883,DBarrel,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.0838357508, 1.42719412, -0.166348219, 0.857789159, 0.297403604, -0.419224113, -0.141315028, 0.920631945, 0.363959879, 0.49419412, -0.252958179, 0.83173573),
CFrame.new(1.22406256, -0.130654663, 0.277106255, 0.941511214, 0.33170712, 0.0593906641, -0.33170709, 0.881204426, 0.336822212, 0.0593910143, -0.336822152, 0.939693391),
CFrame.new(-1.43159902, 0, 0.187939197, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.499998897, -1.99999988, -1.49011612e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
Humanoid.WalkSpeed = 2
DBarrel.Transparency = 0
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0.0149096567, 0.133909225, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0, 1.43158329, -0.187937319, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
CFrame.new(1.0840646, 0.399937928, -0.718070745, 0.868691146, 0.495353371, 0.000888805604, -0.0877529308, 0.15565595, -0.983905911, -0.487519473, 0.854632378, 0.17868565),
CFrame.new(-1.35562694, -0.0255649146, 0.396688521, 0.939692378, -0.116977789, 0.321394831, -2.60770321e-07, 0.939692855, 0.342019856, -0.342021167, -0.321393549, 0.883021951),
CFrame.new(0.499995321, -2.00755072, 0.218008161, 0.939692736, 0, -0.342019886, 0.0593910702, 0.984807849, 0.163175747, 0.33682391, -0.173647985, 0.925416768),
CFrame.new(-0.499996126, -2.00755, 0.218011439, 0.939692736, 0, 0.342019886, -0.0593910702, 0.984807849, 0.163175747, -0.33682391, -0.173647985, 0.925416768),
}, .3, false)
end
swait(5)
so(132455829,DBarrel,1,1)
local ref = Instance.new("Part",chara)
ref.Size = Vector3.new(0,0,0)
ref.Anchored = true
ref.CanCollide = false
ref.Transparency = 1
ref.CFrame = RootPart.CFrame*CFrame.new(0,0,-6)
MagnitudeDmg(ref,4,100,0,RootPart.CFrame.lookVector*12,true,"Shot",.1)
Effects.Block(DBarrel.CFrame*CFrame.new(.1,.3,1.1),Vector3.new(1,1,1),Vector3.new(),Vector3.new(.1,.1,.1),"Neon","Bright yellow",true,false,.05)
Effects.Block(DBarrel.CFrame*CFrame.new(-.1,.3,1.1),Vector3.new(1,1,1),Vector3.new(),Vector3.new(.1,.1,.1),"Neon","Bright yellow",true,false,.05)
ref:Destroy()
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0.0149102025, 0.133909985, 1, 0, 0, 0, 0.984812796, -0.173648849, 0, 0.173648849, 0.984812796),
CFrame.new(0, 1.43158948, 0.0120660895, 1, 0, 0, 0, 1.00000262, -1.1920929e-07, 0, 1.1920929e-07, 1.00000262),
CFrame.new(1.20370889, 0.765974879, -0.570772648, 0.868689418, 0.319091678, -0.378892303, -0.0877506882, -0.653664529, -0.751683295, -0.48752436, 0.686227262, -0.539830863),
CFrame.new(-1.49794042, 0.21531868, 0.355185598, 0.923031092, 0.211469814, 0.321394384, -0.321394086, 0.883024752, 0.342021078, -0.211472049, -0.418990374, 0.883024335),
CFrame.new(0.499998927, -2.00757003, 0.218012124, 0.939692736, 0, -0.342019886, 0.0593913682, 0.984812796, 0.163176581, 0.336825609, -0.173648849, 0.925421476),
CFrame.new(-0.500004649, -2.00756979, 0.218013197, 0.939692736, 0, 0.342019886, -0.0593913682, 0.984812796, 0.163176581, -0.336825609, -0.173648849, 0.925421476),
}, .3, false)
end
swait(10)
for i=0,1,.25 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.44842434, -0.192443371, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(1.39502811, 0.908103704, 0.515749812, -0.213331953, -0.84539932, -0.489683062, 0.875778735, 0.056671422, -0.479374528, 0.433013916, -0.531119943, 0.728292942),
CFrame.new(-1.5091548, 0.323206276, -0.384231716, 0.750000238, 0.433013409, -0.499999136, -0.500000179, 0.866025388, 6.10661004e-07, 0.433012158, 0.249999225, 0.866025925),
CFrame.new(0.50000149, -1.99999857, -2.11596489e-06, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.500000834, -1.99999857, 1.63912773e-06, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849),
}, .4, false)
end
for i=1,2 do
so(1159825801,DBarrel,1,1)
local hitpt = Instance.new("Part",EffectModel)
hitpt.Size = Vector3.new(0,0,.3)
hitpt.CFrame = TEC9.CFrame * CFrame.Angles(math.rad(90),0,0)
hitpt.Velocity = RootPart.CFrame.rightVector*10+Vector3.new(0,5,0)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "rbxassetid://94248124"
hitm.TextureId = "rbxassetid://94219470"
hitm.Scale = Vector3.new(1.2,1.2,1.2)
coroutine.wrap(function()
swait(30)
for i = 0,1,.1 do
swait()
hitpt.Transparency = i
end
hitpt:Destroy()
end)()
swait()
end
swait(15)
so(211134014,DBarrel,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.0838357508, 1.42719412, -0.166348219, 0.857789159, 0.297403604, -0.419224113, -0.141315028, 0.920631945, 0.363959879, 0.49419412, -0.252958179, 0.83173573),
CFrame.new(1.22406256, -0.130654663, 0.277106255, 0.941511214, 0.33170712, 0.0593906641, -0.33170709, 0.881204426, 0.336822212, 0.0593910143, -0.336822152, 0.939693391),
CFrame.new(-1.43159902, 0, 0.187939197, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
CFrame.new(0.499998897, -1.99999988, -1.49011612e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
DBarrel.Transparency = 1
Humanoid.WalkSpeed = 8
attack = false
end

Mouse.Button1Down:connect(function()
if attack == false then
smek()
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
zhold = true
shoot()
elseif k == 'x' then
dbshoot()
end
end
end)

Mouse.KeyUp:connect(function(k)
k = k:lower()
if k == 'z' then
zhold = false
end
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
mus.SoundId = "rbxassetid://581195737"
mus.Looped = true
mus.Volume = 1
mus:Play()
end
if sprintt >= 1 then
sprintt = sprintt - 1
end
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
CFrame.new(1.20945489, -0.213504896, 3.55388607e-07, 0.939692736, 0.342019916, 1.53461215e-07, -0.342019945, 0.939692736, 1.93715096e-07, -8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(-1.20945573, -0.213503733, 5.0439985e-07, 0.939692736, -0.342019916, -1.53461215e-07, 0.342019945, 0.939692736, 1.93715096e-07, 8.56816769e-08, -2.23517418e-07, 1.00000012),
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
CFrame.new(1.55285025, 0.466259956, -9.26282269e-08, 0.766043842, -0.642788351, -6.46188241e-08, 0.642788291, 0.766043961, -7.4505806e-08, 1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(-1.5605253, 0.475036323, -2.10609159e-07, 0.766043842, 0.642788351, 6.46188241e-08, -0.642788291, 0.766043961, -7.4505806e-08, -1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
}, .3, false)
end
elseif Torsovelocity < 1 and hit ~= nil then
Anim = "Idle"
if attack == false then
change = 1
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
CFrame.new(0, 1.48262823, -0.0984786302, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(1.20945334, -0.213505104, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(-1.37076354, 0, -0.304326713, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0.499997705, -2, -2.77906656e-06, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
CFrame.new(-0.50000149, -2, -2.11596489e-06, 0.984807849, 0, 0.173647985, 0, 1, 0, -0.173647985, 0, 0.984807849) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
}, .3, false)
end
elseif Torsovelocity > 2 and hit ~= nil then
Anim = "Walk"
if attack == false then
Humanoid.WalkSpeed = 8
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0),
CFrame.new(0, 1.48263013, -0.0984808952, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, -.5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
CFrame.new(-1.37076354, 0, -0.304326713, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
}, .3, false)
end
end
end
end