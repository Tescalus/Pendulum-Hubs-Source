-- Made by NoobyGames12, remaded FM sword with additional gun

-- If you have it and if you leak it, ill never give the scripts i made since you leaked one of my scripts, pretending that you made this, its just an FREE MODEL remade thing that i made. Now if you leak it, go ahead, ill never give you scripts ever again. 

--NoobyGames12
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
local hat = Align(game:GetService("Workspace").JohnWantedADuck["Police K4LAS [Back]"].Handle,char['Left Arm'],false)
local cf = char['Left Arm'].CFrame*CFrame.new(-0.5,0,0)*CFrame.Angles(math.rad(-250),math.rad( 0),-180)
hat[1].CFrame = cf:Inverse() * char['Left Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
 -- FLING BELOW!
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
plr = game.Players.LocalPlayer
char = game.Workspace.non
hum = char.Humanoid
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new

function CreatePart(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.Parent = parent
p.Size = Vector3.new(1,1,1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "SpecialMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end
---------------- left gaunlet
local handle = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(handle,"Brick",1.1,0.4,1.1)
CreateWeld(handle,larm,handle,0,0.45,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local handleout = CreatePart(char,0,0,"Neon",BrickColor.new("Royal purple"))
CreateMesh(handleout,"Brick",1.075,0.45,1.075)
CreateWeld(handleout,larm,handleout,0,0.45,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local handleout2 = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(handleout2,"Brick",1.05,0.485,1.05)
CreateWeld(handleout2,larm,handleout2,0,0.45,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local box = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(box,"Brick",1.2,0.5,0.5)
CreateWeld(box,handle,box,0.05,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local boxout = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(boxout,"Brick",1.185,0.525,0.525)
CreateWeld(boxout,handle,boxout,0.05,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local boxout2 = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(boxout2,"Brick",1.15,0.585,0.585)
CreateWeld(boxout2,handle,boxout2,0.05,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local boxoutrand = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(boxoutrand,"Brick",1,0.35,0.35)
CreateWeld(boxoutrand,handle,boxoutrand,-0.075,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local glowstrip = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(glowstrip,"Brick",0.65,0.05,1.15)
CreateWeld(glowstrip,larm,glowstrip,0.15,0.365,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local glowstrip2 = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(glowstrip2,"Brick",0.65,0.05,1.15)
CreateWeld(glowstrip2,larm,glowstrip2,0.15,0.465,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local glowstrip3 = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(glowstrip3,"Brick",0.65,0.05,1.15)
CreateWeld(glowstrip3,larm,glowstrip3,0.15,0.565,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local diamond = CreatePart(char,0,0,"Neon",BrickColor.new("Royal purple"))
CreateMesh(diamond,"Brick",0.25,0.25,1.15)
CreateWeld(diamond,handle,diamond,-0.35,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- gun here

local handle = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(handle,"Brick",0.75,0.4,0.4)
CreateWeld(handle,larm,handle,-0.1,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local barrel = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(barrel,"Brick",0.45,1,0.45)
CreateWeld(barrel,handle,barrel,-0.25,0.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local barrelglow = CreatePart(char,0,0,"Neon",BrickColor.new("Royal purple"))
CreateMesh(barrelglow,"Brick",0.375,0.965,0.375)
CreateWeld(barrelglow,handle,barrelglow,-0.25,0.55,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local barrelup = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(barrelup,"Brick",0.385,0.535,0.4625)
CreateWeld(barrelup,barrel,barrelup,-0.065,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local barrelupglow = CreatePart(char,0,0,"Neon",BrickColor.new("Bright blue"))
CreateMesh(barrelupglow,"Brick",0.325,0.585,0.455)
CreateWeld(barrelupglow,barrel,barrelupglow,-0.065,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local barrel2 = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Black"))
CreateMesh(barrel2,"Brick",0.325,1.5,0.325)
CreateWeld(barrel2,handle,barrel2,-0.25,1.25,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local barrelhole = CreatePart(char,0,0,"SmoothPlastic",BrickColor.new("Really black"))
CreateMesh(barrelhole,"Brick",0.25,0.25,0.25)
CreateWeld(barrelhole,barrel2,barrelhole,0,0.65,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
---

local gunmode = false

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
it=Instance.new
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
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1
player=nil 

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
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

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=0
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
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
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
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
 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(0,0)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,0,BrickColor.new("Really red"))
                else
                h.Health=h.Health-(Damage/0)
                showDamage(hit.Parent,Damage/0,0,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
  local dam = Instance.new("Sound",c)
  local rndm=math.random(1,#hitsounds)
  local r=rndm
  dam.SoundId = "http://www.roblox.com/asset/?id="..hitsounds[r]
  dam.Volume = 1.25
  dam.Pitch = 1
  dam:Play()
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Player=game:GetService('Players').LocalPlayer
Character=Player.Character
Mouse=Player:GetMouse()
m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Mid gray","Handle",Vector3.new(0.275000006, 1.73512506, 0.280375004))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, -1.10559327e-007, 0, 1.10559313e-007, 0.999999881, -6.82671057e-008, 7.54756585e-015, 6.82671129e-008, 1),CFrame.new(-0.069039166, -0.113463402, 1.04289675, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Handle,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.228, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.96695328e-006, 1.76659834, -0.297748327, 1, -1.86023797e-007, 5.96046519e-008, -5.96047443e-008, -4.97983308e-007, 1, -1.86023769e-007, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.125, 0.375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.214124978, 0.205375016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, 1.86247182, 0.341249466, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.75, 0.75))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.228, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, 1.76659834, 0.369124293, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.125, 0.375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.252000004, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.78813934e-006, -1.95409656, 0.369124651, 1, -3.5029597e-008, -5.96046519e-008, -5.96046306e-008, 6.17193905e-007, -1, 3.50296325e-008, 1, 6.17193905e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.125, 0.375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.252000004, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-8.94069672e-007, -1.95409656, -0.297748804, -1, -5.23922949e-008, 5.96046519e-008, -5.96046803e-008, 6.17193905e-007, -1, 5.23922594e-008, -1, -6.17193905e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.569999993, 0.125, 0.375))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.13575315, -0.0312535167, 1.63871276, -5.96046448e-008, -0.707106888, -0.707106709, 1, 1.651742e-007, -2.49467973e-007, 2.93196308e-007, -0.707106709, 0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.413124949, 0.622375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.98023224e-007, -1.16725111, -1.41408849, 1, 1.56260029e-007, -2.68220901e-007, -7.91682311e-008, -0.707106948, -0.70710665, -3.00153374e-007, 0.70710665, -0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.204125047, 0.287375003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.02655792e-006, -1.16711032, -0.0589969158, 1, 1.08027862e-007, 0, -5.37960721e-014, 4.97983308e-007, -1, -1.08027862e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.448374987))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.36441803e-007, -2.35079217, 0.103010416, 1, 2.03386463e-007, -1.49011612e-007, -1.4901174e-007, 6.17194019e-007, -1, -2.03386378e-007, 1, 6.17194075e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.200000003, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, 1.71972668, 0.400372267, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.25, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.207000002, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-8.94069672e-007, -2.02871776, -0.278748035, -1, -1.71600149e-007, 5.96046519e-008, -5.96047229e-008, 4.38378009e-007, -1, 1.71600121e-007, -1, -4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.207000002, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(8.94069672e-007, -2.02871752, 0.419371605, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.223999977, 0.375375003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(7.15255737e-007, -2.16047049, 0.508368373, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.699999988, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.405000031, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.35976458, -0.0312541127, 1.86352515, 5.96046448e-008, 0.500000238, -0.866025329, -1, -3.57641632e-008, -8.94739998e-008, -7.57096927e-008, 0.866025269, 0.500000238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.203125, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0, -1.08190203, 0.2501719, 1, -3.12822095e-007, 5.96046519e-008, -1.13020228e-007, -0.173648566, 0.98480773, -2.97719339e-007, -0.98480767, -0.173648566))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.502499998, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.409124941, 0.360375017))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-4.05311584e-006, 1.95058596, 0.253540456, -1, 1.02354932e-007, -1.49011612e-007, -1.17442823e-007, 0.258818656, 0.965925932, 1.3743427e-007, 0.965925992, -0.258818686))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.200000003, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.68847609, 0.419371486, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.207000002, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(7.74860382e-007, -1.99747372, 0.400373936, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.25, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.4375, 0.25))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -1.18813586, 0.908314347, -1, -1.16559704e-008, -1.49011612e-007, -1.31319965e-007, 0.544638991, 0.838670731, 7.13820114e-008, 0.838670731, -0.544638932))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.405000031, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.35976434, -0.0312459469, 1.86352515, -1.49011612e-007, -0.500000238, 0.866025269, 1, -3.47141249e-009, 1.70059607e-007, -8.20235115e-008, 0.866025269, 0.500000238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.409124911, 0.268375039))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.03983688e-006, 1.82663035, 1.68847704, -1, 2.51590194e-007, -1.49011612e-007, -2.54842973e-007, -0.500000179, 0.866025329, 1.43377648e-007, 0.866025269, 0.500000179))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.698124886, 0.372374952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.455000013, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.200000003, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.08616257e-006, 1.6884762, -0.278747916, 1, -1.86023797e-007, 5.96046519e-008, -5.96047443e-008, -4.97983308e-007, 1, -1.86023769e-007, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.330124885, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(7.74860382e-007, 2.75683522, 1.15006804, 1, 2.61612684e-007, -5.96046519e-008, -4.6201059e-008, 0.386711121, 0.922201037, 2.64309278e-007, -0.922201037, 0.386711121))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.200000003, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.90734863e-006, 1.20410335, -0.1381253, 1, -1.30388145e-007, 5.96046519e-008, -5.96047158e-008, -4.97983308e-007, 1, -1.30388116e-007, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.13575315, -0.0312504768, 1.638713, 0, 0.707106888, 0.707106709, -1, -1.57551966e-007, 1.57552009e-007, 2.2281219e-007, -0.707106709, 0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-0.999259949, -0.0312482715, -0.496301651, 8.94069814e-008, 0.707106769, -0.707106829, 1, -2.08849031e-007, -8.2408441e-008, -2.0595013e-007, -0.707106829, -0.707106709))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.200000003, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.96695328e-006, 1.20410311, 0.278748631, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.745124936, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.96046448e-008, 0.302499771, 0.0937513113, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.415125012, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, -0.659994602, 0.135124326, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.630125046, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.14576721e-006, 1.25361502, 0.392871499, -1, 9.86020154e-008, -1.49011612e-007, -1.49011655e-007, -4.38377924e-007, 1, 9.86019515e-008, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.395000011, 0.75, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.248124972, 0.311374992))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.96046448e-008, 0.954994917, 0.140751123, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.25999999, 0.375, 0.21875))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -1.50817347, 0.125254035, -1, 6.68158862e-008, -1.49011612e-007, -1.4901164e-007, -4.97983194e-007, 1, 6.68158151e-008, 1, 4.97983194e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.35512504, 0.283374995))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.96046448e-008, 0.91299367, 0.281997681, -1, 9.86020154e-008, -1.49011612e-007, -1.49011655e-007, -4.38377924e-007, 1, 9.86019515e-008, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.203125, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, -0.781131983, 0.0222299099, -1, 2.86555604e-007, -5.96046519e-008, -1.08459133e-007, -0.173648685, 0.98480773, 2.71851889e-007, 0.98480773, 0.173648685))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.35512504, 0.416375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, 0.522374153, 0.125002146, -1, 9.86020154e-008, -1.49011612e-007, -1.49011655e-007, -4.38377924e-007, 1, 9.86019515e-008, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0.99925971, -0.0312514305, -0.496301413, 0, -0.707106709, 0.707106829, -1, 1.69960003e-007, 1.69959961e-007, -2.40359725e-007, -0.707106888, -0.707106769))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.643000007, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.51446462, -0.0312519073, 0.511714339, 0, -4.38378066e-007, 1, -1, 2.45074915e-007, 1.0743547e-013, -2.45074915e-007, -1, -4.38378066e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.54112494, 0.367374986))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.57627869e-007, -1.79205251, -0.0442371368, 1, 1.5625281e-007, -2.68220901e-007, -2.68220987e-007, 6.17193848e-007, -1, -1.56252639e-007, 1, 6.17193905e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.630125046, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, -0.552494049, 0.0937507153, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Mid gray","Part",Vector3.new(0.275000006, 0.216124982, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.78813934e-007, 0.63488543, 0.590048075, -1, 2.21816833e-007, 5.96046519e-008, -1.14701351e-007, -0.707106829, 0.707106769, 1.98995039e-007, 0.707106769, 0.707106829))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.309124947, 0.343375027))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.9935112e-006, 1.40163493, 1.65097666, -1, 2.51590194e-007, -1.49011612e-007, -2.54842973e-007, -0.500000179, 0.866025329, 1.43377648e-007, 0.866025269, 0.500000179))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.998124957, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, 0.428994179, 0.0937510729, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.405125052, 0.211375013))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, 0.446621895, 0.0734990835, -1, 9.86020154e-008, -1.49011612e-007, -1.49011655e-007, -4.38377924e-007, 1, 9.86019515e-008, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.413124949, 0.622375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.7285347e-006, 0.967765272, 0.720929861, -1, 2.21816833e-007, 5.96046519e-008, -1.14701351e-007, -0.707106829, 0.707106769, 1.98995039e-007, 0.707106769, 0.707106829))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.275000006, 0.320124894, 0.316374987))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.457500011, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.322125077, 0.363375008))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.84774399e-006, 0.960361481, 0.0573717356, 1, -6.68157512e-008, -5.96046519e-008, 5.96046164e-008, -4.97983308e-007, 1, -6.68157796e-008, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.51412493, 0.622375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.96695328e-006, 1.51446474, -0.287093759, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.204125047, 0.210375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, -1.12023759, -0.0676275492, -1, -2.06059703e-008, 0, -7.19086588e-015, 3.48970019e-007, -1, 2.06059703e-008, -1, -3.48970019e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.261124998, 0.245374992))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0, -0.201990128, 0.0982512236, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.375, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.206125051, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.38418579e-007, -0.137369633, 0.0937509537, -1, 9.86020154e-008, -1.49011612e-007, -1.49011655e-007, -4.38377924e-007, 1, 9.86019515e-008, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.578125, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.63588333e-006, -1.29723644, 0.0231808424, 1, -1.86023783e-007, -5.96046519e-008, 5.96045879e-008, -3.48969991e-007, 1, -1.86023797e-007, -1, -3.48969991e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.25999999, 0.225500003, 0.210125014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-0.00167286396, 0.746741295, -0.00556850433, -1, 6.68158222e-008, -5.96046519e-008, 5.96046803e-008, 4.38378009e-007, -1, -6.68157938e-008, -1, -4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.214125022, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.81469727e-006, 0.381998301, -0.135124564, -1, -5.23922843e-008, 1.49011612e-007, -1.4901164e-007, 4.97983251e-007, -1, 5.23922097e-008, -1, -4.97983251e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.560000002, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.270000011, 0.21875, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.35113907e-006, -1.64879727, 0.0388069153, 1, -1.86023783e-007, -5.96046519e-008, 5.96045879e-008, -3.48969991e-007, 1, -1.86023797e-007, -1, -3.48969991e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.449500024, 0.236624971))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0, -1.14855242, -0.0782039165, -1, 1.1814204e-007, -5.96046519e-008, -8.81511255e-008, -0.258819431, 0.965925753, 9.8689604e-008, 0.965925813, 0.258819431))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.46875, 0.220999971))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -1.17250943, 0.949309707, -1, -1.16559704e-008, -1.49011612e-007, -1.31319965e-007, 0.544638991, 0.838670731, 7.13820114e-008, 0.838670731, -0.544638932))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.35212487, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.96695328e-006, 1.7106328, -4.67702293, 1, -5.28256834e-008, 3.27825546e-007, -1.54116776e-007, -0.948323309, 0.317305803, 2.94122714e-007, -0.317305803, -0.948323369))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.5, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.288000047, 0.200000003, 0.27837503))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.00251865, -0.0312470198, -0.784425139, -5.96046448e-008, 0.362437576, 0.932008028, 1, 8.8373362e-008, 2.95864595e-008, -7.16414377e-008, 0.932008028, -0.362437606))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.200000003, 0.217000008, 0.200375021))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-007, -3.18676305, -1.53718555, 1, 8.19928516e-008, -2.68220901e-007, -2.15646111e-007, -0.386710614, -0.922201157, -1.79337775e-007, 0.922201157, -0.386710614))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 0.200000003, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.49000001, 0.200000003, 0.290374994))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.73874784, -0.0312489271, 0.358844757, -8.94069814e-008, -0.0130901812, 0.999914408, 1, 5.69744678e-008, 9.01605191e-008, -5.81498085e-008, 0.999914408, 0.0130901812))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.24712491, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.37090683e-006, 3.7712388, 4.10999966, 1, 2.20300279e-007, -3.27825546e-007, 7.26464435e-008, 0.713250935, 0.70090878, 3.88232309e-007, -0.70090884, 0.713250995))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.600000024, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.621124864, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.96046448e-007, 3.43644333, -0.254856586, 1, 2.8833017e-007, 5.96046519e-008, -4.31625189e-008, -0.0566928945, 0.998391747, 2.91245613e-007, -0.998391688, -0.0566928908))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.940000057, 0.200000003, 0.285374999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.0734067, -0.0312533975, 4.65720272, 1.49011626e-007, 0.694658399, -0.719339788, -1, 3.30585053e-008, -1.75226305e-007, -9.79421202e-008, 0.719339788, 0.694658399))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.84512496, 0.422374964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.76837158e-007, 3.25642681, 0.00496280193, 1, 2.88228279e-007, 5.96046519e-008, -5.96046021e-008, -1.70154109e-007, 1, 2.88228279e-007, -1, -1.70154095e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 1.04612494, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.03983688e-006, 6.0806818, -0.48661232, 1, 2.83280116e-007, 0, 3.20681721e-008, -0.113203041, 0.993571877, 2.81459165e-007, -0.993571937, -0.113203049))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.49000001, 0.200000003, 0.290374994))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.73874784, -0.0312509537, 0.358844757, 0, 0.0130901793, -0.999914348, -1, -5.85088848e-008, -7.65957409e-010, -5.85139013e-008, 0.999914408, 0.0130901802))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 1.46012485, 0.422374964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.05311584e-006, 5.85410023, -0.495341063, 1, 2.75573711e-007, 1.49011612e-007, -1.16857876e-007, -0.113203339, 0.993571877, 2.90670897e-007, -0.993571937, -0.113203347))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.210000038, 0.200000003, 0.285374999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-0.630329967, -0.0312533975, 7.20098686, 1.11758709e-008, 0.99984777, -0.017452918, -1, 8.5759515e-009, -1.49042407e-007, -1.48870043e-007, 0.0174529161, 0.99984777))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(1.78499997, 0.200000003, 0.301375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.64131165, -0.0312466621, 0.814543009, -1.78813963e-007, -0.104528897, 0.994521916, 1, 6.1102142e-008, 1.86221044e-007, -8.02329012e-008, 0.994521916, 0.104528897))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.678124905, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.96046448e-007, 5.27017689, -0.0733480453, 1, 2.8833017e-007, 5.96046519e-008, -4.31626219e-008, -0.0566925369, 0.998391747, 2.91245584e-007, -0.998391688, -0.0566925332))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.800000012, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.210000038, 0.200000003, 0.285374999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0.630329847, -0.0312465429, 7.20098686, -9.87201929e-008, -0.99984777, 0.017452918, 1, -9.613413e-008, 1.49012436e-007, -1.47311923e-007, 0.0174529161, 0.99984777))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.47012496, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.11272049e-006, 4.9387393, -4.49442863, 1, 2.42971879e-007, 2.68220901e-007, -1.46989407e-008, -0.713250041, 0.700909734, 3.61609949e-007, -0.700909734, -0.713250101))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.699999988, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.288000047, 0.200000003, 0.27837503))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.00251842, -0.0312527418, -0.784425259, -2.98023224e-008, -0.362437576, -0.932008028, -1, -3.9197058e-008, 4.7219352e-008, -5.36460405e-008, 0.932008028, -0.362437606))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.533124864, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.01327896e-006, 4.10316849, -0.103866458, 1, 2.8833017e-007, 5.96046519e-008, -4.31625473e-008, -0.0566928051, 0.998391747, 2.91245584e-007, -0.998391688, -0.0566928014))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.200000003, 0.217000008, 0.200375021))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -3.33085537, -1.5976094, 1, 8.19928516e-008, -2.68220901e-007, -2.15646111e-007, -0.386710614, -0.922201157, -1.79337775e-007, 0.922201157, -0.386710614))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 0.200000003, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.235124931, 1.6693753))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-4.64916229e-006, -0.673488855, 5.65330791, -1, 2.57733284e-008, -4.1723257e-007, 2.16240803e-008, -0.993572056, -0.11320243, -4.17468186e-007, -0.113202423, 0.993571997))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.480124891, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.01327896e-006, 2.6059866, 0.051631093, 1, 2.90808202e-007, 5.96046519e-008, -5.96046306e-008, -8.07461475e-008, 1, 2.90808202e-007, -1, -8.07461333e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 1, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.235124931, 1.6693753))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-4.29153442e-006, -0.399590373, 4.02885008, -1, 2.75204592e-009, -4.1723257e-007, 2.09061284e-008, -0.998391747, -0.0566919968, -4.16717569e-007, -0.0566919968, 0.998391747))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.237124875, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.08616257e-006, 2.20885611, -3.10965157, 1, 1.22782865e-007, 3.27825546e-007, -8.59755218e-008, -0.82164669, 0.569997251, 3.39342648e-007, -0.569997191, -0.821646631))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.800000012, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 1.65712488, 0.359375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.1920929e-006, 4.40055227, -0.0314526558, 1, 2.82533193e-007, 5.96046519e-008, -4.34911662e-008, -0.0566928945, 0.998391747, 2.85457958e-007, -0.998391688, -0.0566928908))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.488124937, 0.359375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(9.53674316e-007, 2.57349205, 0.495863676, 1, 2.95756422e-007, 5.96046519e-008, -9.27020594e-008, 0.113203131, 0.993571877, 2.87107866e-007, -0.993571937, 0.113203138))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.655375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.84774399e-006, 1.02953684, 2.8258214, -1, -1.09740803e-007, -3.27825546e-007, -2.40661642e-008, -0.923879445, 0.382683516, -3.44867317e-007, 0.382683575, 0.923879564))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.200000003, 0.217000008, 0.200375021))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -3.40289879, -1.62781823, 1, 8.19928516e-008, -2.68220901e-007, -2.15646111e-007, -0.386710614, -0.922201157, -1.79337775e-007, 0.922201157, -0.386710614))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 0.200000003, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.488124937, 0.418375015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.07288361e-006, 2.60998273, -0.0503669977, 1, 2.90808202e-007, 5.96046519e-008, -5.96046306e-008, -8.07461475e-008, 1, 2.90808202e-007, -1, -8.07461333e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.200000003, 0.217000008, 0.200375021))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -3.25880861, -1.56739795, 1, 8.19928516e-008, -2.68220901e-007, -2.15646111e-007, -0.386710614, -0.922201157, -1.79337775e-007, 0.922201157, -0.386710614))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 0.200000003, 0.600000024))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.265124857, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.1920929e-007, 3.70434904, 2.44769764, 1, 3.05401159e-007, -1.49011612e-007, -3.84168999e-008, 0.537299871, 0.843391299, 3.37636607e-007, -0.843391299, 0.537299871))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.618124902, 0.209375009))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.07288361e-006, 2.67497754, -0.154865503, 1, 2.90808202e-007, 5.96046519e-008, -5.96046306e-008, -8.07461475e-008, 1, 2.90808202e-007, -1, -8.07461333e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.484124899, 0.227375031))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.13248825e-006, 2.07749343, -1.55897069, -1, 2.0314171e-007, -1.49011612e-007, 3.82758287e-008, 0.707107008, 0.70710659, 2.49009986e-007, 0.70710659, -0.707106948))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.454124868, 0.214375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.09944153e-006, 4.72574425, -0.500342607, 1, 2.72365185e-007, 1.49011612e-007, -1.17221134e-007, -0.113203213, 0.993571877, 2.87482976e-007, -0.993571877, -0.113203213))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.899999976, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 1.65712488, 0.422374964))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.25169754e-006, 4.40054798, -0.205949783, 1, 2.82533193e-007, 5.96046519e-008, -4.34911662e-008, -0.0566928945, 0.998391747, 2.85457958e-007, -0.998391688, -0.0566928908))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.446125001, 0.496375084))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.7285347e-006, 0.313133836, 6.93109894, -1, 3.38840884e-008, 5.96046519e-008, -3.38840529e-008, -1, 5.74912178e-007, 5.96046661e-008, 5.74912178e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.421999991, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.558792, -0.0312539935, -0.45239532, 2.98023224e-008, -0.707106769, -0.707106829, -1, -7.48441451e-008, 3.26972902e-008, -7.60432783e-008, 0.707106829, -0.707106709))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.277124941, 0.702375054))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.76837158e-007, -2.44779181, 0.103008986, 1, 2.03386463e-007, -1.49011612e-007, -1.4901174e-007, 6.17194019e-007, -1, -2.03386378e-007, 1, 6.17194075e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.5, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.422124922, 0.412375003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.31130219e-006, -1.70811987, 0.370481491, 1, 1.56259688e-007, -2.68220901e-007, -2.99524515e-007, 0.258819312, -0.965925872, -8.15145142e-008, 0.965925872, 0.258819312))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.207000002, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.7285347e-006, -1.7005955, 0.278747916, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.421999991, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.55879188, -0.0312462449, -0.452395201, 5.96046448e-008, 0.707106769, 0.707106829, 1, -4.38479519e-009, -7.99089008e-008, -5.34036033e-008, 0.707106829, -0.707106709))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.275000006, 0.204124942, 0.464375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.36441803e-007, -2.27592182, 0.103008866, 1, 2.03386463e-007, -1.49011612e-007, -1.4901174e-007, 6.17194019e-007, -1, -2.03386378e-007, 1, 6.17194075e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.23299998, 0.295375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.08616257e-006, -0.537618876, 2.27821803, -1, 3.50292382e-008, 2.68220901e-007, -3.50290357e-008, -1, 7.53727932e-007, 2.6822093e-007, 7.53727932e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.418375015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.54972076e-006, 1.79147363, 1.84832418, -1, -2.19832074e-007, -2.68220901e-007, -3.42159723e-008, -0.707107008, 0.70710659, -3.45105576e-007, 0.70710659, 0.707106948))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1.04999995, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Institutional white","Part",Vector3.new(0.275000006, 0.200124964, 0.287375033))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-6.55651093e-007, -0.200989008, 2.46776938, -1, 3.38840884e-008, 5.96046519e-008, -3.38840529e-008, -1, 5.74912178e-007, 5.96046661e-008, 5.74912178e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.216999978, 0.295375019))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-007, -0.42824471, 2.46571684, -1, 3.50217348e-008, 2.68220901e-007, -3.50215323e-008, -1, 7.53727875e-007, 2.6822093e-007, 7.53727875e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.75, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.418375015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.1920929e-007, 1.93505025, 1.70474756, 1, 1.8804613e-007, -2.68220901e-007, 5.6691988e-008, 0.707107067, 0.707106471, 3.22629546e-007, -0.707106531, 0.707107067))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1.04999995, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.207000002, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.7285347e-006, -1.70059586, -0.138124347, -1, -1.71600149e-007, 5.96046519e-008, -5.96047229e-008, 4.38378009e-007, -1, 1.71600121e-007, -1, -4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.331124961, 0.412375003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.98023224e-007, -1.41137242, -1.47533894, 1, 1.56260029e-007, -2.68220901e-007, -7.91682311e-008, -0.707106948, -0.70710665, -3.00153374e-007, 0.70710665, -0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.709124923, 0.47437498))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.25169754e-006, -1.87605298, 0.196760774, 1, 1.5625281e-007, -2.68220901e-007, -2.68220987e-007, 6.17193848e-007, -1, -1.56252639e-007, 1, 6.17193905e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.277124912, 0.227375031))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.15904617e-006, 2.51099396, -0.945535302, -1, 2.51590308e-007, -1.49011612e-007, -3.25266569e-009, 0.50000006, 0.866025388, 2.92389416e-007, 0.866025448, -0.50000006))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Institutional white","Part",Vector3.new(0.275000006, 0.200124964, 0.287375033))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.01327896e-006, 0.00686681271, 2.46776795, 1, 4.04674836e-008, 5.96046519e-008, -4.04674481e-008, 1, -5.74912178e-007, -5.96046803e-008, 5.74912178e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.560000002, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.84512496, 0.359375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.17232513e-007, 3.25642681, 0.179460406, 1, 2.88228279e-007, 5.96046519e-008, -5.96046021e-008, -1.70154109e-007, 1, 2.88228279e-007, -1, -1.70154095e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.453000009, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.95527112, -0.0312464833, 0.483453929, 1.19209275e-007, 0.258818507, 0.965925932, 1, -8.24298763e-009, -1.21205815e-007, -2.34081945e-008, 0.965925932, -0.258818507))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.453000009, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.95527112, -0.0312538147, 0.483453929, -2.98023224e-008, -0.258818537, -0.965925992, -1, -2.11072013e-008, 3.65092774e-008, -2.98372704e-008, 0.965925932, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.25999999, 0.3125, 0.320125014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-0.00167268515, -1.01674032, 0.0665671825, -1, -2.06061035e-008, 5.96046519e-008, 5.96046661e-008, -4.97983308e-007, 1, -2.06060733e-008, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.698124886, 0.732374966))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.425000012, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.698124886, 0.534374952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.452499986, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.368124902, 0.378374994))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.20537186e-006, 1.49373317, 0.509495497, -1, 1.54237696e-007, -1.49011612e-007, -1.49011683e-007, -4.38377924e-007, 1, 1.54237625e-007, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.567124963, 0.311374992))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.96695328e-006, 0.994490385, 0.140751123, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.418250024, 0.25))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.96046448e-008, -1.13293266, -0.127015591, -1, 1.1814204e-007, -5.96046519e-008, -8.81511255e-008, -0.258819431, 0.965925753, 9.8689604e-008, 0.965925813, 0.258819431))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.403124899, 0.352375001))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.14576721e-006, 1.55247092, -0.700873375, -1, 3.75780473e-009, -1.49011612e-007, -1.02709933e-007, 0.707106948, 0.707106709, 1.08024309e-007, 0.70710665, -0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(1.625, 0.200000003, 0.296375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.97657108, -0.0312469006, 0.569297791, -1.78813934e-007, -0.0523363948, 0.99862951, 1, 7.44965192e-008, 1.82963561e-007, -8.39700789e-008, 0.99862957, 0.0523363985))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.940000057, 0.200000003, 0.285374999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.0734067, -0.0312458873, 4.6572032, -2.38418608e-007, -0.694658399, 0.719339788, 1, -7.77344482e-008, 2.56373596e-007, -1.22174583e-007, 0.719339788, 0.694658399))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(1.625, 0.200000003, 0.296375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.97657156, -0.0312528014, 0.569297791, 8.94069672e-008, 0.0523363948, -0.99862957, -1, -7.9065849e-008, -9.36733713e-008, -8.38600229e-008, 0.99862957, 0.0523363948))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 1.66212487, 0.359375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.84774399e-006, 5.95509291, -0.320841074, 1, 2.75573711e-007, 1.49011612e-007, -1.16857876e-007, -0.113203339, 0.993571877, 2.90670897e-007, -0.993571937, -0.113203347))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(1.78499997, 0.200000003, 0.301375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.64131165, -0.0312528014, 0.814543009, 8.94069672e-008, 0.104528897, -0.994521856, -1, -7.01918026e-008, -9.72769385e-008, -7.99755355e-008, 0.994521916, 0.104528904))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.204125047, 0.207375005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.78813934e-006, -1.16710985, 0.175246477, -1, -2.06059703e-008, 0, -7.19086588e-015, 3.48970019e-007, -1, 2.06059703e-008, -1, -3.48970019e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.223124996, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.96046448e-008, -0.964124441, -0.0247514248, 1, -3.01422034e-007, 5.96046519e-008, -3.31073302e-008, 0.0871552527, 0.99619478, -3.05469911e-007, -0.99619478, 0.0871552527))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.244125068, 0.416375011))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.1920929e-007, -0.686996341, -0.125002146, -1, -5.23922274e-008, 1.49011612e-007, -1.49011626e-007, 3.48969991e-007, -1, 5.23921742e-008, -1, -3.48969991e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.206125051, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0, 0.168619156, -0.0937508345, -1, -5.23922559e-008, 1.49011612e-007, -1.4901164e-007, 4.97983251e-007, -1, 5.23921813e-008, -1, -4.97983251e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.560000002, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.398124993, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.84774399e-006, 1.4540993, 0.200625658, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.239124984, 0.205375016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, 1.85597229, 0.341248155, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.698124886, 0.534374952))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.452499986, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.315999985, 0.310375005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.68220901e-006, 2.08321929, -0.579118371, 1, -3.05231737e-007, 5.96046519e-008, -5.96048082e-008, -4.97983308e-007, 1, -3.05231708e-007, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0.99925971, -0.0312514305, -0.496301413, 0, -0.707106709, 0.707106829, -1, 1.69960003e-007, 1.69959961e-007, -2.40359725e-007, -0.707106888, -0.707106769))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.207000002, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-7.74860382e-007, -1.99747372, -0.297748566, -1, -1.71600149e-007, 5.96046519e-008, -5.96047229e-008, 4.38378009e-007, -1, 1.71600121e-007, -1, -4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.25, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.311124951, 0.267374992))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(2.14576721e-006, -1.94385314, 0.47499609, 1, -6.68158364e-008, 5.96046519e-008, 5.96046803e-008, 4.38378009e-007, -1, 6.6815808e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.495000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.275000006, 0.200000003, 0.213375002))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.96695328e-006, 1.71972692, -0.297746897, 1, -1.86023797e-007, 5.96046519e-008, -5.96047443e-008, -4.97983308e-007, 1, -1.86023769e-007, -1, -4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 0.25, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.643000007, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.51446462, -0.0312519073, 0.511714339, 0, -4.38378066e-007, 1, -1, 2.45074915e-007, 1.0743547e-013, -2.45074915e-007, -1, -4.38378066e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.496000022, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.13575315, -0.0312535167, 1.63871276, -5.96046448e-008, -0.707106888, -0.707106709, 1, 1.651742e-007, -2.49467973e-007, 2.93196308e-007, -0.707106709, 0.707106888))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.643000007, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.51446474, -0.0312479734, 0.511714339, 5.96046519e-008, 4.38378066e-007, -1, 1, -2.45074915e-007, 5.96045453e-008, -2.45074887e-007, -1, -4.38378095e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.577124953, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.96695328e-006, 1.2623533, 0.27874887, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.870000005, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.304124922, 0.267374992))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.14576721e-006, 1.6403501, 0.474995613, -1, 1.54237696e-007, -1.49011612e-007, -1.49011683e-007, -4.38377924e-007, 1, 1.54237625e-007, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.495000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.330124915, 0.226374999))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.2649765e-006, 1.84085846, 0.585492015, -1, 1.54237696e-007, -1.49011612e-007, -1.49011683e-007, -4.38377924e-007, 1, 1.54237625e-007, 1, 4.38377953e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.25999999, 0.578125, 0.21875))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0.00167268515, 1.04017782, 0.125254273, 1, 2.06060218e-008, 5.96046519e-008, 5.96046448e-008, 3.48969991e-007, -1, -2.06060431e-008, 1, 3.48969991e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.239124984, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.90734863e-006, 1.85597229, 0.341248155, -1, 2.73445636e-007, -5.96046519e-008, -5.96047869e-008, -4.97983308e-007, 1, 2.73445607e-007, 1, 4.97983308e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.423000038, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(1.828511, -0.0312466025, 1.86352599, -1.49011612e-007, -0.500000238, 0.866025269, 1, -3.47173224e-009, 1.70059423e-007, -8.20231492e-008, 0.866025269, 0.500000238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.275000006, 0.23712492, 0.375375003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.76837158e-007, -2.23306799, -0.714783967, 1, 1.28876025e-007, -1.49011612e-007, -8.8350177e-008, -0.38268286, -0.923879802, -1.76090154e-007, 0.923879862, -0.38268289))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.410999984, 0.469375014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(7.15255737e-007, -2.25397205, 0.350374818, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.850000024, 0.699999988))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.293000042, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(0.930041909, -0.0312547088, 2.61983705, 2.68220924e-006, -0.866025388, 0.500000238, 1, 1.34954996e-006, -3.0269282e-006, 1.94662152e-006, 0.500000238, 0.866025388))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.315999985, 0.303375006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(3.75509262e-006, -2.0832181, 0.73186779, 1, 8.41783816e-008, -5.96046519e-008, -5.96046874e-008, 4.38378009e-007, -1, -8.41783532e-008, 1, 4.38378009e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.275000006, 0.698124886, 0.638374984))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-2.02655792e-006, 1.51446426, -0.0117214918, -1, 2.45074915e-007, -5.96046519e-008, -5.96047798e-008, -5.27786028e-007, 1, 2.45074887e-007, 1, 5.27786028e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.293000042, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-0.930041909, -0.03124547, 2.61983705, -2.75671505e-006, 0.866025388, -0.500000238, -1, -1.43972136e-006, 3.0197582e-006, 1.89532614e-006, 0.500000238, 0.866025329))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.275000006, 0.238124937, 0.381375015))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-006, -2.16469121, -0.908047557, -1, -9.70897673e-008, -1.49011612e-007, 1.00514129e-007, 0.382683396, -0.923879564, 1.46723522e-007, -0.923879564, -0.382683367))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.524999976, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.235124931, 0.586375237))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-4.70876694e-006, -4.59392071, 4.83900547, -1, 3.01723389e-007, -3.27825546e-007, 2.23408545e-008, -0.700909495, -0.713250279, -4.44980344e-007, -0.713250279, 0.700909495))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.04999995, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.28125, 0.234375))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-5.96046448e-008, -1.44312787, -0.230922222, 1, -1.99133694e-007, -5.96046519e-008, 9.3278274e-008, 0.173647881, 0.984807849, -1.85758211e-007, -0.984807849, 0.173647881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.04999995, 0.400000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Royal purple","Part",Vector3.new(0.423000038, 0.200000003, 0.280375004))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.82851136, -0.0312532187, 1.86352599, 5.96046448e-008, 0.500000238, -0.866025329, -1, -3.57638221e-008, -8.94738008e-008, -7.57092948e-008, 0.866025269, 0.500000238))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.287124902, 0.227375031))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-3.03983688e-006, 2.52654123, 0.448077202, -1, 2.51590194e-007, -1.49011612e-007, -1.49011683e-007, -2.59562086e-007, 1, 2.51590166e-007, 1, 2.59562114e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.22512494, 0.42337501))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(5.36441803e-007, 2.19158387, 0.875249863, 1, 2.87006458e-007, -5.96046519e-008, -2.30892709e-008, 0.279828936, 0.960049868, 2.92219624e-007, -0.960049927, 0.279828966))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.408374965))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(4.76837158e-007, -2.34476542, -0.473634839, 1, 1.52993096e-007, -1.49011612e-007, -1.04336792e-007, -0.258818269, -0.965926051, -1.86346938e-007, 0.965926051, -0.258818269))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1.04999995, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Metal,0,0,"Black","Part",Vector3.new(0.275000006, 0.221124932, 0.408374965))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-1.1920929e-006, -2.29170871, -0.671645045, -1, -1.21206767e-007, -1.49011612e-007, 1.12563526e-007, 0.258819103, -0.965925813, 1.55643789e-007, -0.965925813, -0.258819103))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.550000012, 1.04999995, 0.800000012))
Hitbox=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,1,"Medium stone grey","Hitbox",Vector3.new(4.90999985, 1.2299999, 0.200000003))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -1, 2.17809955e-007, -5.96046519e-008, -5.96047656e-008, -4.97983308e-007, 1, 2.17809927e-007, 1, 4.97983308e-007),CFrame.new(-4.90843725, -0.0829741955, 0.0609716177, 0, -6.82671129e-008, -1, 1.1055932e-007, 1, -6.82671129e-008, 1, -1.1055932e-007, 7.547565e-015))

mouse.Button1Down:connect(function()
        if attack==false and attacktype==1 then
                attacktype=2
                attackone()
        elseif attack==false and attacktype==2 then
                attacktype=3
                attacktwo()
        elseif attack==false and attacktype==3 then
                attacktype=4
                attackthree()
        elseif attack==false and attacktype==4 then
                attacktype=1
                attackfour()
        end
end)

function bladespin()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,5,7,math.random(0,0),"Normal",RootPart,0,0) end) 
        for i=0,1,0.1 do
                swait()
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-10)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
for z = 0, 2 do
so("http://roblox.com/asset/?id=199146359",Hitbox,1.15,1.05) 
        for i=0,1,0.5 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(90)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
        for i=0,1,0.5 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(180)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
        for i=0,1,0.5 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(240)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
        for i=0,1,0.5 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(360)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
end
        attack=false
con1:disconnect()
end  

function flashingslash()
        attack=true
        for i=0,2,0.1 do
                swait()
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-80),math.rad(-80))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=540358153",Hitbox,1,0.9) 
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("White").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = Hitbox.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(0.5,0.5,0.5)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,13,16,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,2,0.1 do
                swait()
            z.Scale = z.Scale + vt(7.5,-0.01,-0.01)
            b.Transparency = b.Transparency + 0.05
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-2.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(70),math.rad(90))*angles(math.rad(-75),0,math.rad(0)),.9)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
con1:disconnect()
attack = false
b:Destroy()
end

function executionstab()
        attack=true
        for i=0,5,0.1 do
                swait()
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-80),math.rad(-80))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=540358153",Hitbox,1.5,0.75) 
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("Really red").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = Hitbox.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(0.5*2,0.5*2,0.5*2)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,50,60,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,5,0.1 do
                swait()
            z.Scale = z.Scale + vt(15,-0.01*2,-0.01*2)
            b.Transparency = b.Transparency + 0.05
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(70),math.rad(90))*angles(math.rad(-75),0,math.rad(0)),.9)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
con1:disconnect()
attack = false
b:Destroy()
end

function enerwave()
        attack=true
        for i=0,1,0.1 do
                swait()
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-80),math.rad(-80))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=540358153",Hitbox,1,0.9) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.CFrame = Torso.CFrame + Torso.CFrame.lookVector*5
     lb.Transparency = 0
     lb.Size = vt(15,0.6,3)
local tra2 = Instance.new("ParticleEmitter",lb)
tra2.Texture = "http://www.roblox.com/asset/?id=745304849"
tra2.LightEmission = 1
tra2.Color = ColorSequence.new(lb.BrickColor.Color)
tra2.Rate = 500000000000
tra2.Lifetime = NumberRange.new(0.5)
tra2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,3,0),NumberSequenceKeypoint.new(1,0,0)})
tra2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
tra2.Speed = NumberRange.new(0)
tra2.Rotation = NumberRange.new(-500,500)
tra2.VelocitySpread = 90000
tra2.RotSpeed = NumberRange.new(-500,500)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
lb.Touched:connect(function(hit) Damagefunc(hit,10,13,math.random(10,20),"Normal",RootPart,.2,1) end) 
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = Torso.CFrame.lookVector *150
  bv.Parent = lb
        for i=0,2,0.1 do
                swait()
                Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(30)),.3)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(70),math.rad(90))*angles(math.rad(-75),0,math.rad(0)),.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
attack = false
wait(1)
lb:Destroy()
end

function repeatbullet()
attack = true
		for i = 0,1,0.3 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=604905243",barrelhole,1,1) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = barrelhole.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(0.6,0.6,0.6)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("Royal purple").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = barrelhole.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(1,1,1)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
local hitted = false
lb.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
lb.Touched:connect(function(hit) Damagefunc(hit,9,10,math.random(10,20),"Normal",RootPart,.2,1) end) 
z.Scale = vt(1,1,1)
b.Transparency = 0
b.CFrame = barrelhole.CFrame
		for i = 0,1,0.3 do
		swait()
            z.Scale = z.Scale + vt(0.2,0.2,0.2)
            b.Transparency = b.Transparency + 0.25
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
		for i = 0,1,0.3 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=604905243",barrelhole,1,1) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = barrelhole.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(0.6,0.6,0.6)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
local hitted = false
lb.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
lb.Touched:connect(function(hit) Damagefunc(hit,9,10,math.random(10,20),"Normal",RootPart,.2,1) end) 
z.Scale = vt(1,1,1)
b.Transparency = 0
b.CFrame = barrelhole.CFrame
		for i = 0,1,0.3 do
		swait()
            z.Scale = z.Scale + vt(0.2,0.2,0.2)
            b.Transparency = b.Transparency + 0.25
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
		for i = 0,1,0.3 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=604905243",barrelhole,1,1) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = barrelhole.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(0.6,0.6,0.6)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
local hitted = false
lb.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
lb.Touched:connect(function(hit) Damagefunc(hit,9,10,math.random(10,20),"Normal",RootPart,.2,1) end) 
z.Scale = vt(1,1,1)
b.CFrame = barrelhole.CFrame
b.Transparency = 0
		for i = 0,1,0.3 do
		swait()
            z.Scale = z.Scale + vt(0.2,0.2,0.2)
            b.Transparency = b.Transparency + 0.25
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
attack = false
b:Destroy()
wait(10)
lb:Destroy()
lb:Destroy()
lb:Destroy()
end

function stickybomb()
attack = true
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=604905243",barrelhole,1,1) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = barrelhole.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("Royal purple").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = barrelhole.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(1,1,1)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
local hitted = false
lb.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
hitted = false
wait(0.00005)
lb.Touched:connect(function(hit)
if hitted == false then
hitted = true
lb.Anchored = true
so("http://roblox.com/asset/?id=604906197",lb,1,1) 
Damagefunc(hit,1,3,-10,"Normal",RootPart,.2,1) 
for i = 0, 4 do
lb.BrickColor = BrickColor.new("Really red")
wait(0.25)
lb.BrickColor = BrickColor.new("Royal purple")
wait(0.25)
end
lb.Transparency = 1
so("http://roblox.com/asset/?id=412755503",lb,1,0.875) 
 local ba = Instance.new("Part")
  ba.Parent = char
   ba.Material = "Neon"
    ba.Color = BrickColor.new("Royal purple").Color
     ba.CanCollide = false
     ba.Shape = "Ball"
     ba.CFrame = lb.CFrame
     ba.Anchored = true
     ba.Transparency = 0
     ba.Size = vt(10,10,10)
  ba.CFrame = lb.CFrame
     local za = Instance.new("SpecialMesh",ba)
     za.MeshType = "Sphere"
za.Scale = vt(0,0,0)
ba.Touched:connect(function(hit)
Damagefunc(hit,16,19,math.random(10,20),"Normal",RootPart,.2,1) 
end)
for i = 0, 19 do
ba.Transparency = ba.Transparency + 0.05
za.Scale = za.Scale + vt(0.25,0.25,0.25)
wait()
end
ba:Destroy()
lb:Destroy()
end
end) 
		for i = 0,2,0.1 do
		swait()
            z.Scale = z.Scale + vt(0.1,0.1,0.1)
            b.Transparency = b.Transparency + 0.05
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
attack = false
b:Destroy()
wait(30)
lb:Destroy()
end

function yep()
attack = true
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=178452221",barrelhole,1,1)  
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.CFrame = barrelhole.CFrame + hed.CFrame.lookVector*37.5
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(2.5,75,2.5)
     local zb = Instance.new("SpecialMesh",lb)
     zb.MeshType = "Sphere"
     zb.Scale = vt(1,1,1)
lb.Touched:connect(function(hit)
Damagefunc(hit,17,20,math.random(10,20),"Normal",RootPart,.2,1) 
end)
for i = 0, 9 do
zb.Scale = zb.Scale + vt(0.1,0,0.1)
lb.CFrame = barrelhole.CFrame + hed.CFrame.lookVector*37.5
lb.Transparency = lb.Transparency + 0.1
wait()
end
lb:Destroy()
attack = false
end

function test()
attack = true
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=412756262",barrelhole,1,0.95) 
 local ba = Instance.new("Part")
  ba.Parent = char
   ba.Material = "Neon"
    ba.Color = BrickColor.new("Royal purple").Color
     ba.CanCollide = false
     ba.Shape = "Ball"
     ba.CFrame = barrelhole.CFrame
     ba.Anchored = true
     ba.Transparency = 1
     ba.Size = vt(1,1,1)
     ba.CFrame = barrelhole.CFrame
     local za = Instance.new("SpecialMesh",ba)
     za.MeshType = "Sphere"
     za.Scale = vt(5,5,5)
for i = 0, 49 do
ba.CFrame = barrelhole.CFrame
ba.Transparency = ba.Transparency - 0.1
za.Scale = za.Scale - vt(0.1,0.1,0.1)
wait()
end 
so("http://roblox.com/asset/?id=412756199",barrelhole,1,0.95) 
so("http://roblox.com/asset/?id=412756123",barrelhole,1,0.95) 
so("http://roblox.com/asset/?id=412755564",barrelhole,1,0.95) 
so("http://roblox.com/asset/?id=178452221",barrelhole,1,0.6) 
so("http://roblox.com/asset/?id=87767777",barrelhole,1,1) 
ba.Transparency = 0
za.Scale = vt(5,5,5)
local seen = Instance.new("Sound",barrelhole)
seen.SoundId = "rbxassetid://445796828"
seen.Pitch = 0.75
seen.Volume = 2.5
seen.Looped = true
seen:Play()
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.CFrame = barrelhole.CFrame + hed.CFrame.lookVector*200
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(10,400,10)
     local zb = Instance.new("SpecialMesh",lb)
     zb.MeshType = "Sphere"
     zb.Scale = vt(1,1,1)
lb.Touched:connect(function(hit)
Damagefunc(hit,22,28,math.random(10,20),"Normal",RootPart,.2,1) 
end)
for i = 0, 99 do
ba.CFrame = barrelhole.CFrame
ba.Transparency = ba.Transparency + 0.025
zb.Scale = zb.Scale + vt(0.01,0,0.01)
za.Scale = za.Scale + vt(1,1,1)
lb.CFrame = barrelhole.CFrame + hed.CFrame.lookVector*200
wait()
end
for i = 0, 19 do
seen.Volume = seen.Volume - 0.1
zb.Scale = zb.Scale - vt(0.05,0,0.05)
lb.CFrame = barrelhole.CFrame + hed.CFrame.lookVector*200
lb.Transparency = lb.Transparency + 0.05
wait()
end
seen:Destroy()
ba:Destroy()
lb:Destroy()
attack = false
end

mouse.KeyDown:connect(function(k)
  if k == "q" and gunmode == false then
     gunmode = true
  elseif k == "q" and gunmode == true then
     gunmode = false
  end
  if k == "z" and gunmode == false and attack == false then
     bladespin()
  elseif k == "z" and gunmode == true and attack == false then
     repeatbullet()
  end
  if k == "x" and gunmode == false and attack == false then
     flashingslash()
  elseif k == "x" and gunmode == true and attack == false then
     stickybomb()
  end
  if k == "c" and gunmode == false and attack == false then
     enerwave()
  elseif k == "c" and gunmode == true and attack == false then
     yep()
  end
  if k == "v" and gunmode == false and attack == false then
     executionstab()
  elseif k == "v" and gunmode == true and attack == false then
     test()
  end
end)

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,7,9,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
        end
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
        for i=0,1,0.1 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(25)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-100))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
        attack=false
con1:disconnect()
end	

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,7,9,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(-75),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,1) 
        for i=0,1,0.1 do
                swait()
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(40)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-45)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-25)), 0.3)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
        attack=false
con1:disconnect()
end     

function attackthree()
attack = true
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=604905243",barrelhole,1,1) 
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.Color = BrickColor.new("Royal purple").Color
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = barrelhole.CFrame
     lb.Anchored = true
     lb.Transparency = 0
     lb.Size = vt(0.6,0.6,0.6)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("Royal purple").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = barrelhole.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(1,1,1)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
local hitted = false
lb.Anchored = false
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
lb.Touched:connect(function(hit) Damagefunc(hit,9,12,math.random(10,20),"Normal",RootPart,.2,1) end) 
		for i = 0,2,0.1 do
		swait()
            z.Scale = z.Scale + vt(0.1,0.1,0.1)
            b.Transparency = b.Transparency + 0.05
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
attack = false
b:Destroy()
wait(10)
lb:Destroy()
end

function attackfour()
attack = true
		for i = 0,2,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
so("http://roblox.com/asset/?id=199145204",barrelhole,1,1) 
local con = barrel2.Touched:connect(function(hit) Damagefunc(hit,8,10,math.random(10,20),"Normal",RootPart,.2,1) end) 
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-90)), 0.3)
		end
con:disconnect()
so("http://roblox.com/asset/?id=604905243",barrelhole,1.25,0.9) 
	 local b = Instance.new("Part")
  b.Parent = char
   b.Material = "Neon"
    b.Color = BrickColor.new("Royal purple").Color
     b.CanCollide = false
     b.Shape = "Ball"
     b.CFrame = barrelhole.CFrame
     b.Anchored = true
     b.Transparency = 0
     b.Size = vt(5,5,5)
     local z = Instance.new("SpecialMesh",b)
     z.MeshType = "Sphere"
z.Scale = vt(0.25,0.25,0.25)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *150
  bv.Parent = lb
b.Touched:connect(function(hit) Damagefunc(hit,9,11,math.random(10,20),"Normal",RootPart,.2,1) end) 
		for i = 0,2,0.1 do
		swait()
            z.Scale = z.Scale + vt(0.15,0.15,0.15)
            b.Transparency = b.Transparency + 0.05
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(25)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(-50)), 0.3)
		end
attack = false
b:Destroy()
end

idleanim=.4
Humanoid.Animator.Parent = nil
while true do
swait()
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
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5)*angles(math.rad(-25),math.rad(105),math.rad(0)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2)*angles(math.rad(-25),math.rad(115),math.rad(0)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
if attack==false then
if gunmode == true then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(90),math.rad(0))*angles(math.rad(-25 + 5 * math.cos(sine / 32)),math.rad(15),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.35,0.5,0)*angles(math.rad(180),math.rad(30),math.rad(-90)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
elseif gunmode == false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))*angles(math.rad(0),math.rad(0),math.rad(-35)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(35)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(90),math.rad(0))*angles(math.rad(-25 + 5 * math.cos(sine / 32)),math.rad(15),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-25 + 2.5 * math.cos(sine / 32))),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 50 * math.cos(sine / 6))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 50 * math.cos(sine / 6))),.3)
if attack==false then
if gunmode == false then
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-55),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-25)),.3)
--RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
--LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
elseif gunmode == true then
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-55),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.45,0)*angles(math.rad(55),math.rad(0),math.rad(25)),.3)
--RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
--LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 75 * math.cos(sine / 3))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 75 * math.cos(sine / 3))),.3)
if attack==false then
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-0.25 + 0.05 * math.cos(sine / 32))* angles(math.rad(35),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(-60),math.rad(25)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-25)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
end