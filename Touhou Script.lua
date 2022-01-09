--[[KillerDarkness0105's/Codex#6685 Touhou magic script]]--
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
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


Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Humanoid=Character.Humanoid
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
attacktype2=1
vt=Vector3.new
cf=CFrame.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
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
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
stance = false
local ff = 2
noleg = false
evadecooldown = false
Humanoid.Animator.Parent = nil
equip = false
local Effects = {}
 attackspeed = 0.14 
 df = false
 Swing = 1
local sine = 0
local change = 1
local val = 0
magic = false
cam = workspace.CurrentCamera
deb = game:GetService("Debris")
RbxUtility = LoadLibrary("RbxUtility")
Create = RbxUtility.Create
Humanoid.WalkSpeed = 32
Humanoid.JumpPower = 76
local g ="Lime green"
local r ="Dark indigo"






music = Instance.new("Sound",Torso) -- change to Character for global music --Change to Torso for non-global music. You may wanna leave this at torso tho...
music.Volume = 0.5
music.TimePosition = 0
music.Pitch = 1
if Player.Name == "TheSatanicAngel" then
music.SoundId = "rbxassetid://512289595"--576413172 --music2 = 1117522463 --music3 = 903651242 --music4 = 611389938 -- 541377118  490561591
else
music.SoundId = "rbxassetid://803364705"--576413172 --music2 = 1117522463 --music3 = 903651242 --music4 = 611389938 -- 541377118  490561591
end
music.Looped = true
music:Play()







local handee = Instance.new("Part")
handee.Parent = Character
handee.Size = Vector3.new(.2,.2,.2)
handee.Archivable = true
handee.Transparency = 1
handee.CanCollide = false
handee.BrickColor = BrickColor.new("Cyan")
handee.Material = "Neon"
local handeeweld = Instance.new("Weld")
handeeweld.Parent = handee
handeeweld.Part0 = RightArm
handeeweld.Part1 = handee
handeeweld.C1 = CFrame.new(0, 0.97, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
        handeeweld.Part0 = RightArm
        
        
        
        
    
        
        
        
        
        
        
        
        so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait()
sou:play()
game:GetService("Debris"):AddItem(sou,8)
end))
end

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
 
 
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
    local wld = Instance.new("Weld", wp1)
    wld.Part0 = wp0
    wld.Part1 = wp1
    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
 
 
newWeld(RootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
newWeld(Torso, LeftLeg, -0.5, -1, 0)
LeftLeg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(Torso, RightLeg, 0.5, -1, 0)
RightLeg.Weld.C1 = CFrame.new(0, 1, 0)

    Player=game:GetService('Players').LocalPlayer
    Character=Player.Character
    mouse=Player:GetMouse()
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
   

part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  if fp.BrickColor == BrickColor.new("Dark indigo") then
    fp.Material = "Neon"
  else
    if fp.BrickColor == BrickColor.new("Fossil") then
      fp.BrickColor = BrickColor.new("Dark indigo")
      fp.Material = "Neon"
    else
      fp.Material = "Neon"
    end
  end
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end

F1 = Instance.new("Folder", Character)
F1.Name = "Effects Folder"
F2 = Instance.new("Folder", F1)
F2.Name = "Effects"
Triangle = function(a, b, c)
end

MagicBlock4 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe
  prt.Name = "prt"
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end



MagicCircle4 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe
  prt.Name = "prt"
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicWave4 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicCylinder4 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicCylinder5 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicBlood4 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3})
end

ElecEffect4 = function(cff, x, y, z)
  local prt = part(3, F2, 0, 0, BrickColor.new("Dark indigo"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 2)
  xval = math.random() / 2
  yval = math.random() / 2
  zval = math.random() / 2
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval}
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
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,Character,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
swait()
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
swait()
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
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
swait()
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
swait()
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
swait()
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
swait()
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
swait()
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
		
		
	




New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
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
 
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
 
--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
 
 
 
 
 
 
 
 
 
 
function Dmgfunc(player,mindamage,maxdamage,waait)
    
dodamage = coroutine.wrap(function()
    
if player ~= Character and player:FindFirstChild("IsHit") == nil then
    

player.Humanoid.Health = player.Humanoid.Health - 0


local thiing = Instance.new("ObjectValue",player)
thiing.Name = "IsHit"
deb:AddItem(thiing,waait)

--for nooby ;)
local Damagetext = Instance.new("BillboardGui",player)
Damagetext.Size = UDim2.new(0,100,0,40)
Damagetext.StudsOffset = Vector3.new(0,3,0)
Damagetext.Adornee = player.Head
Damagetext.Name = "TalkingBillBoard"
local Damagelabel = Instance.new("TextLabel",Damagetext)
Damagelabel.BackgroundTransparency = 1
Damagelabel.BorderSizePixel = 0
Damagelabel.Text = ""..Max
Damagelabel.Font = "Bodoni"
Damagelabel.FontSize = "Size24"
Damagelabel.TextStrokeTransparency = 0
Damagelabel.TextColor3 = Color3.new(255,255,255)
Damagelabel.TextStrokeColor3 = Color3.new(0,0,0)
Damagelabel.Size = UDim2.new(1,0,1.5,0)
deb:AddItem(Damagetext,4.5)
for i = 1, 70 do
wait(0.00000000000000000000000001)
Damagelabel.Position = Damagelabel.Position - UDim2.new(0,0,.06,0)
Damagelabel.TextStrokeTransparency = Damagelabel.TextStrokeTransparency +.06
Damagelabel.TextTransparency = Damagelabel.TextTransparency + .04
end
Damagetext:Destroy()
end
end)
dodamage(player,mindamage,maxdamage,waait)
    
end







function Bullets(thinggy,size,color,velocity,damage,bounce,collide,rotation)
    swait()
	   local Bullet = Instance.new("Part",Workspace)
	Bullet.Locked = true
	Bullet.Name = "Bullet"
	Bullet.Anchored = bounce
	Bullet.CanCollide = collide
	Bullet.Transparency = 0.24
	Bullet.Reflectance = 0
	Bullet.BottomSurface = 0
	Bullet.TopSurface = 0
	Bullet.Shape = 0
	Bullet.BrickColor = BrickColor.new(color)
	Bullet.Size = Vector3.new(size,size,size)
	Bullet.Material = "Neon"
	Bullet.Orientation = vt(-90,0,0)
	local Bulletthing = Instance.new("SpecialMesh",Bullet)
	Bulletthing.MeshId = "rbxassetid://1245215297"
		local Bulletforce = Instance.new("BodyForce")
	Bulletforce.force = Vector3.new(0,Bullet:GetMass()*166.2,0)
	Bulletforce.Parent = Bullet
	Bullet.CFrame = thinggy.CFrame*CFrame.new(0,0,0) + Vector3.new(math.random(-1,1),math.random(0,0.7),math.random(-1,1))
	local bv = Instance.new("BodyVelocity",Bullet)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    Bullet.CFrame = CFrame.new(Bullet.Position,mouse.Hit.p+Vector3.new(math.random(-7,7),math.random(-2,2),math.random(-6,6)))
		bv.velocity = Bullet.CFrame.lookVector*velocity
		
		so("http://roblox.com/asset/?id=925629856",Bullet,0.4,1)
	if bounce == false then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "Bullet" and hit.Name ~= "prt" and Bullet.Anchored == false) then
	    	    local orbexplode = Instance.new("Sound", Bullet)
    orbexplode.Volume = 0.4
    orbexplode.PlayOnRemove = true
    orbexplode.SoundId = "http://roblox.com/asset/?id=929619479"
    orbexplode.Pitch = 1
    orbexplode:Destroy()
    deb:AddItem(orbexplode, 4)
	Bullet.Anchored = true
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	*3.6
	Explode.Visible = false
	Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
Dmgfunc(0)
	end
end)
Bullet.Mesh.Scale = Vector3.new(0,0,0)
MagicCircle4(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2+size*1.4, 2.2+size*1.4, 2.2+size*1.4, 0.02)
MagicCircle4(BrickColor.new("White"), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 4.2, 4.2, 4.2, 0.02)
	end
	end)
	elseif bounce == true then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent~= Character) then
	Bullet.Anchored = true
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	
	Explode.Visible = false
	Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
	Dmgfunc(0)
	end
	end)
Bullet.Mesh.Scale = Vector3.new(.1,.1,.1)

MagicCircle4(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2+size*1.4, 2.2+size*1.4, 2.2+size*1.4, 0.02)
MagicCircle4(BrickColor.new("White"), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 4.2, 4.2, 4.2, 0.02)


	end
	end)
	end
	deb:AddItem(Bullet,5.3)

	return Bullet
end




function Rotbullet(thinggy,size,color,velocity,damage,bounce,collide)
    
    rotation = 0
    rotation2 = 0
    
    
	   local Bullet = Instance.new("Part",Workspace)
	Bullet.Locked = true
	Bullet.Name = "Bullet"
	Bullet.Anchored = bounce
	Bullet.CanCollide = collide
	Bullet.Transparency = 0.24
	Bullet.Reflectance = 0
	Bullet.BottomSurface = 0
	Bullet.TopSurface = 0
	Bullet.Shape = 0
	Bullet.BrickColor = BrickColor.new(color)
	Bullet.Size = Vector3.new(size,size,size)
	Bullet.Material = "Neon"
	local Bulletthing = Instance.new("SpecialMesh",Bullet)
	Bulletthing.MeshType = "Sphere"
		local Bulletforce = Instance.new("BodyForce")
	Bulletforce.force = Vector3.new(0,Bullet:GetMass()*166.2,0)
	Bulletforce.Parent = Bullet
	Bullet.CFrame = thinggy.CFrame*CFrame.new(0,0,0) + Vector3.new(math.random(-1,1),math.random(0,0.7),math.random(-1,1))
	local bv = Instance.new("BodyVelocity",Bullet)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    Bullet.CFrame = CFrame.new(Bullet.Position,mouse.Hit.p+Vector3.new(math.random(-7,7),math.random(-2,2),math.random(-6,6)))
		bv.velocity = Bullet.CFrame.lookVector*velocity
		so("http://roblox.com/asset/?id=925629856",Bullet,0.4,1)
	if bounce == false then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "Bullet" and hit.Name ~= "prt" and Bullet.Anchored == false) then
	    
	    
	    
	    	    local orbexplode = Instance.new("Sound", Bullet)
    orbexplode.Volume = 0.4
    orbexplode.PlayOnRemove = true
    orbexplode.SoundId = "http://roblox.com/asset/?id=929619479"
    orbexplode.Pitch = 1
    orbexplode:Destroy()
    deb:AddItem(orbexplode, 4)
	Bullet.Anchored = true
	
		local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	*3.6
	Explode.Visible = false
	
	
	
		Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
Dmgfunc(0)
	end
end)
Bullet.Mesh.Scale = Vector3.new(0,0,0)
MagicCircle4(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2+size*1.4, 2.2+size*1.4, 2.2+size*1.4, 0.02)
MagicCircle4(BrickColor.new("White"), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 4.2, 4.2, 4.2, 0.02)

	for i = 1,10 do
wait(0)
rotation2 = rotation2 - 25
				 local Bullet2 = Instance.new("Part")
  Bullet2.Parent = Workspace
   Bullet2.Material = "Neon"
    Bullet2.BrickColor = BrickColor.new(color)
     Bullet2.CanCollide = false
     Bullet2.Archivable = true
     Bullet2.Anchored = false
     Bullet2.Transparency = 0
     Bullet2.Size = vt(size/1.3,size/1.3,size/1.3)
local B2mesh = Instance.new("SpecialMesh",Bullet2)
     B2mesh.MeshType = "Sphere"
     Bullet2.CFrame = Bullet.CFrame*CFrame.Angles(0,math.rad(rotation2),0)*CFrame.new(0,2,0)
     local bv2 = Instance.new("BodyVelocity",Bullet2)
	bv2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	    	bv2.velocity = Bullet2.CFrame.lookVector*velocity

	


	
	Bullet2.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "Bullet" and hit.Name ~= "prt" and Bullet.Anchored == true) then
	    Bullet2.Anchored = true
		local Explode2 = Instance.new("Explosion") 
	Explode2.Position = Bullet2.Position
	Explode2.Parent = Workspace 
	Explode2.BlastPressure = 0
	Explode2.BlastRadius = Bullet2.Size.X	*3.6
	Explode2.Visible = false
	
		Explode2.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
Dmgfunc(0)
	end
end)
	Bullet2.Mesh.Scale = Vector3.new(0,0,0)
MagicCircle4(BrickColor.new(color), Bullet2.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2+size/1.4, 2.2+size/1.4, 2.2+size/1.4, 0.02)
MagicCircle4(BrickColor.new("White"), Bullet2.CFrame * cf(0, 0, 0), 1, 1, 1, 4.2, 4.2, 4.2, 0.02)
end
end)
	

end
end
end)

	elseif bounce == true then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent~= Character) then
	Bullet.Anchored = true
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	
	Explode.Visible = false
	Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
	Dmgfunc(0)
	end
	end)
Bullet.Mesh.Scale = Vector3.new(.1,.1,.1)

MagicCircle4(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2+size*1.4, 2.2+size*1.4, 2.2+size*1.4, 0.02)
MagicCircle4(BrickColor.new("White"), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 4.2, 4.2, 4.2, 0.02)


	end
	end)
	end
	deb:AddItem(Bullet,3.3)
deb:AddItem(Bullet2,3.3)

	return Bullet
end





function Bullets2(size,color,velocity,damage,bounce,collide)
	   local Bullet = Instance.new("Part",Workspace)
	Bullet.Locked = true
	Bullet.Name = "Bullet"
	Bullet.Anchored = bounce
	Bullet.CanCollide = collide
	Bullet.Transparency = 0.24
	Bullet.Reflectance = 0
	Bullet.BottomSurface = 0
	Bullet.TopSurface = 0
	Bullet.Shape = 0
	Bullet.BrickColor = BrickColor.new(color)
	Bullet.Size = Vector3.new(size,size,size)
	Bullet.Material = "Neon"
	local Bulletthing = Instance.new("SpecialMesh",Bullet)
	Bulletthing.MeshType = "Sphere"
	Bullet.CFrame = handee.CFrame*CFrame.new(0,0,0) + Vector3.new(math.random(-180,180),math.random(-1.6,6.6),math.random(-180,180))
	local bv = Instance.new("BodyVelocity",Bullet)
	bv.maxForce = Vector3.new(99999,99999,99999)
    Bullet.CFrame = CFrame.new(Bullet.Position,mouse.Hit.p)
		bv.velocity = Bullet.CFrame.lookVector*velocity
		so("http://roblox.com/asset/?id=200633327",Bullet,1,1)
			spawn = coroutine.wrap(function()
	Bullet.Transparency = 0
	Bullet.Mesh.Scale = Vector3.new(3.5,3.5,3.5)
	wait()
	Bullet.Transparency = .25
	Bullet.Mesh.Scale = Vector3.new(2.5,2.5,2.5)
	wait()
	Bullet.Transparency = .5
	Bullet.Mesh.Scale = Vector3.new(1.5,1.5,1.5)
	wait()
	Bullet.Transparency = 0
	Bullet.Mesh.Scale = Vector3.new(1,1,1)
end)
	if bounce == false then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "Bullet" and Bullet.Anchored == false) then
	Bullet.Anchored = true
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	
	Explode.Visible = false
	Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
Dmgfunc(0)
	end
end)
Bullet.Mesh.Scale = Vector3.new(.1,.1,.1)
MagicBlock(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 1.7, 1.7, 1.7, 0.04)
MagicBlock(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2, 2.2, 2.2, 0.04)
for i = 0,2.3,0.1 do
    swait()
	Bullet.Transparency = Bullet.Transparency + 0.02
	Bullet.Mesh.Scale = Bullet.Mesh.Scale + Vector3.new(.3,.3,.3)
	end
	Bullet:Destroy()
	end
	end)
	elseif bounce == true then
	Bullet.Touched:connect(function(hit)
	if (hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent~= Character) then
	Bullet.Anchored = true
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	
	Explode.Visible = false
	Explode.Hit:connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid")~=nil and hit.Parent:FindFirstChild("IsHit")==nil then
	Dmgfunc(0)
	end
	end)
Bullet.Mesh.Scale = Vector3.new(.1,.1,.1)
MagicBlock(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 1.7, 1.7, 1.7, 0.04)
MagicBlock(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 2.2, 2.2, 2.2, 0.04)
for i = 0,2.3,0.1 do
    swait()
	Bullet.Transparency = Bullet.Transparency + 0.02
	Bullet.Mesh.Scale = Bullet.Mesh.Scale + Vector3.new(.3,.3,.3)
	MagicSphere(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 6.2, 6.2, 6.2, 0.04)
	MagicSphere(BrickColor.new(color), Bullet.CFrame * cf(0, 0, 0), 1, 1, 1, 8.2, 8.2, 8.2, 0.04)
	end
	Bullet:Destroy()
	end
	end)
end
	spawn()
	deb:AddItem(Bullet,10)
	return Bullet
end


 
 
 
 
 
 
 local shooting = false
 
 
 
function shoot()
    so("http://roblox.com/asset/?id=925333540",Torso,1.1,1)
    MagicBlock4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 16.2, 16.2, 16.2, 0.04)

    MagicCircle4(BrickColor.new("Dark indigo"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 19.2, 19.2, 19.2, 0.03)
    
    MagicWave4(BrickColor.new("Dark indigo"), cf(RootPart.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 0.5, 0.3, 0.5, 0.04)
    
 MagicWave4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    attack = true
                    local thing = Instance.new("BodyGyro",RootPart)
thing.D = 350
thing.P = 6000
thing.MaxTorque = vt(100000,math.huge,0)
thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
      for i = 0,2,0.16 do
        swait()
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1.0, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1.0, 0)  * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
end
shooting = true

while shooting == true do
    swait(2.5)
        thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
            Torso.Velocity =  RootPart.CFrame.lookVector * -13
        if math.random(1,2) == 1 then
    Bullets(handee,math.random(1,2),g,math.random(220,520),5.5,false,false)
            MagicBlock(BrickColor.new("Lime green"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
else
    Bullets(handee,math.random(1,2),r,math.random(200,520),6.3,false,false)
            MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
end
end

attack = false
thing:Destroy()
    end




local cardmax = 0
local cardpos = 3
local carding = false
function SCB()
    print('Spell Card Barrage -> Debuff - 3.6 WalkSpeed.')
    Humanoid.WalkSpeed = Humanoid.WalkSpeed-3.6
    so("http://roblox.com/asset/?id=925333540",Torso,1.1,1)
    MagicBlock4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 16.2, 16.2, 16.2, 0.04)

    MagicCircle4(BrickColor.new("Dark indigo"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 19.2, 19.2, 19.2, 0.03)
    
    MagicWave4(BrickColor.new("Dark indigo"), cf(RootPart.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 0.5, 0.3, 0.5, 0.04)
    
 MagicWave4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    attack = true

local Card = Instance.new('Part',Character)
Card.Transparency = 0.5
Card.Color = Color3.fromRGB(0,255,0)
Card.Size = Vector3.new(0.65,0.2,1.2)
Card.Material = "Neon"
Card.CFrame = handee.CFrame + Vector3.new(0,3,0)
CardMesh = Instance.new("BlockMesh",Card)
local gyrothing = Instance.new("BodyGyro",Card)
	gyrothing.D = 100
	gyrothing.P = 2000
	gyrothing.MaxTorque = Vector3.new(4000000,4000000,4000000)
	gyrothing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
	local position = Instance.new("BodyPosition",Card)
	position.D = 2350
	position.maxForce = Vector3.new(math.huge,math.huge,math.huge)
cardmax = cardmax+1
cardpos = cardpos+1

      for i = 0,2,0.16 do
        swait()
        gyrothing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
        position.Position = Torso.Position + Vector3.new(10,3,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1.0, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1.0, 0)  * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
end
  
  attack = false

for i = 1,65 do
    position.Position = Torso.Position + Vector3.new(10-cardpos,cardpos,0)
    --position.Position = Torso.Position + Vector3.new(0,cardpos,0)
   swait(2.5)
   gyrothing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
        if math.random(1,2) == 1 then
    Bullets(Card,math.random(0.9,1.1),g,math.random(320,420),6.1,false,false)
else
    Bullets(Card,math.random(0.9,1.1),r,math.random(320,420),8.2,false,false)
end
end



Card:Destroy()
cardmax = cardmax-1
Humanoid.WalkSpeed = Humanoid.WalkSpeed+3.6
cardpos = cardpos-1
if Humanoid.WalkSpeed == 32 then
    print('WalkSpeed Regained.')
    end
    end




function rotball()
   

    so("http://roblox.com/asset/?id=925333540",Torso,1.1,1)
    MagicBlock4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 16.2, 16.2, 16.2, 0.04)

    MagicCircle4(BrickColor.new("Dark indigo"), RootPart.CFrame * cf(0, 0, 0), 1, 1, 1, 19.2, 19.2, 19.2, 0.03)
    
    MagicWave4(BrickColor.new("Dark indigo"), cf(RootPart.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 0.5, 0.3, 0.5, 0.04)
    
 MagicWave4(BrickColor.new("Lime green"), RootPart.CFrame * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    attack = true



                       local thing = Instance.new("BodyGyro",RootPart)
thing.D = 350
thing.P = 6000
thing.MaxTorque = vt(100000,math.huge,0)
thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
      for i = 0,2,0.16 do
        swait()
        thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1.0, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1.0, 0)  * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
end

  
		local beam = Instance.new("Part", workspace)
		beam.BrickColor = BrickColor.new(g)
		beam.FormFactor = "Custom"
		beam.Material = "Neon"
		beam.Transparency = 0.25
		beam.Anchored = true
		beam.Locked = false
		beam.CanCollide = false
				local Z = Instance.new("SpecialMesh",beam)
	Z.MeshType = "Sphere"
	
		local ray = Ray.new(handee.CFrame.p, (mouse.Hit.p - handee.CFrame.p).unit * 700)
		local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
		local distance = (handee.CFrame.p - position).magnitude
		beam.CFrame = CFrame.new(handee.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		beam.Size = Vector3.new(1, 1, distance)



for i = 1,6,0.1 do
    swait()
thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
		beam.CFrame = CFrame.new((beam.CFrame.p + position) / 2, beam.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		beam.Size = Vector3.new(1, 1, distance)
		MagicBlock4(BrickColor.new("Lime green"), beam.CFrame * cf(0, 0, 0), 1, 1, 1, 16.2, 16.2, 16.2, 0.04)
		MagicShockTrailAlt(BrickColor.new("Dark indigo"),beam.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),10,10,5,-0.05,-0.05,25,0.005,math.random(1,2))
if math.random(1,2) == 1 then
beam.BrickColor = BrickColor.new(g)
else
beam.BrickColor = BrickColor.new(r)
end
end
  attack = false
thing:Destroy()
beam:Destroy()


    end



function Ldash()
    
    

evadecooldown = true
attack = true
so("http://www.roblox.com/asset/?id=707957812", Torso, 2.5, 1)
 
 
 
 


 --+173.8*i
for i = 0,2,0.064 do
swait()
RootPart.Velocity = RootPart.CFrame.rightVector * -54
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(32)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-9),math.rad(-14)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(77), math.rad(0), math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.0, 0.5, -0.55) * angles(math.rad(30), math.rad(0), math.rad(70)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(12)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.2)
end

attack = false
wait(0.13)
evadecooldown = false
 
 
end





function Rdash()
    
    

evadecooldown = true
attack = true
so("http://www.roblox.com/asset/?id=707957812", Torso, 2.5, 1)
 
 
 
 
 

 --+173.8*i
for i = 0,2,0.064 do
swait()
RootPart.Velocity = RootPart.CFrame.rightVector * 54
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-32)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(9),math.rad(14)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.0, 0.5, -0.55) * angles(math.rad(30), math.rad(0), math.rad(-70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(77), math.rad(0), math.rad(-70)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-12)), 0.2)
end

attack = false
wait(0.13)
evadecooldown = false
 
 
end



  mouse.Button1Down:connect(function(key)
if attack == false then
shoot()
end
end)
 
 
 
 
  mouse.Button1Up:connect(function(key)
if shooting == true then
shooting = false
end
end)
 
 
  
  mouse.KeyDown:connect(function(key)
if key == 'e' and attack == false and cardmax <= 5 then
SCB()
end
end)
 
 
 
  mouse.KeyDown:connect(function(key)
if key == 'f' and attack == false then
Ldash()
end
end)
 
 
 
  mouse.KeyDown:connect(function(key)
if key == 'g' and attack == false then
Rdash()
end
end)
 
   mouse.KeyDown:connect(function(key)
if key == 'r' and attack == false then
rotball()
end
end)
 
 
 
 local idk = 0
 
 
 
 local f = 0
 game:GetService("RunService"):BindToRenderStep("W0tT", 0, function()


Humanoid.MaxHealth = 250
f = f+1
if f >= 7 then
    MagicBlock4(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagicCircle4(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 0.1, 1, 6, 0, 6, 0.1)
end

end)

 Humanoid.Health = 250
 while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if attack==true or attack==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end



if RootPart.Velocity.y > 1 and hitfloor==nil then
Anim="Jump"






if attack==false then
change = 1
 
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, -.15) * CFrame.Angles(math.rad(-13), math.rad(0), math.rad(0)), 0.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30+2.05*math.cos(sine/5)),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30+2.05*math.cos(sine/5)), math.rad(0), math.rad(50-2.05*math.cos(sine/5))), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30+2.05*math.cos(sine/5)), math.rad(0), math.rad(-50+2.05*math.cos(sine/5))), 0.1)

end
if attack==false  then
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-25+3.05*math.cos(sine/5)), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.47, -0.7) * CFrame.Angles(math.rad(-12+3.05*math.cos(sine/5)), math.rad(-3), math.rad(0)), 0.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then
Anim="Fall"
change = 1


if attack==false then
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(20), math.rad(90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(40),math.rad(0),math.rad(0)),.1)

end
if attack==false or attack == true  then
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(3), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.67, -0.4) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(0)), 0.1)
end
     
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change = 1.73
if attack==false and equip == false then
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.10*math.cos(sine/40), -0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0+4*math.sin(sine/40)),math.rad(0),math.rad(-30)),0.1)


RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5+0.07*math.sin(sine/40), 0) * angles(math.rad(-3+2*math.cos(sine/40)), math.rad(0+7*math.cos(sine/40)), math.rad(3+3.2*math.cos(sine/40))),0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+0.07*math.sin(sine/40), 0) * angles(math.rad(-3+2*math.cos(sine/40)), math.rad(0-7*math.cos(sine/40)), math.rad(-3-3.2*math.cos(sine/40))),0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.10*math.cos(sine/40), 0) * CFrame.Angles(math.rad(0), math.rad(2), math.rad(-3)), 0.1)

RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.10*math.cos(sine/40), 0)  * CFrame.Angles(math.rad(0), math.rad(-2), math.rad(3)), 0.1)
end




elseif torvel>2 and torvel<4205 and hitfloor~=nil then
Anim="Walk"
change = 1 + Character.Humanoid.WalkSpeed/113
if attack==false and equip == false then
Humanoid.CameraOffset = Vector3.new(0,0,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.42*math.cos(sine/2.5), -.8) * angles(math.rad(-23), math.rad(0), math.rad(0)+ RootPart.RotVelocity.Y / 26), .1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-7+20*math.sin(sine/2.5)),math.rad(0),math.rad(0+5*math.sin(sine/5)) + RootPart.RotVelocity.Y / 13),.1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0+0.34*math.sin(sine/5)) * angles(math.rad(0-80*math.sin(sine/5))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(6+18*math.sin(sine/5))- RootPart.RotVelocity.Y / 34),.15)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0-0.34*math.sin(sine/5))*angles(math.rad(0+80*math.sin(sine/5))+ RootPart.RotVelocity.Y / 34,math.rad(0),math.rad(-6+18*math.sin(sine/5))+ RootPart.RotVelocity.Y / -34),.15)


LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.24*math.cos(sine/5), 0.+0.21*math.cos(sine/5)) * CFrame.Angles(math.rad(-5-60*math.sin(sine/5)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.8)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.24*math.cos(sine/5),0.-0.21*math.cos(sine/5)) * CFrame.Angles(math.rad(-5+60*math.sin(sine/5)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.8)
end

if attack==true and noleg == false then
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.24*math.cos(sine/5), 0+0.32*math.sin(sine/5)) * CFrame.Angles(math.rad(0-65*math.sin(sine/5)), math.rad(3), math.rad(0)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.24*math.cos(sine/5), 0-0.32*math.sin(sine/5)) * CFrame.Angles(math.rad(0+65*math.sin(sine/5)), math.rad(-3), math.rad(0)), 0.2)
end

end
end



 if 0 < #Effects then
      for e = 1, #Effects do
        if Effects[e] ~= nil then
          local Thing = Effects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if Thing[1].Transparency <= 1 then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-80, 80), math.random(-80, 80), math.random(-80, 80))
                Mesh = Thing[1]:FindFirstChild("Mesh")
                if not Mesh then
                  Mesh = Instance.new("BlockMesh")
                end
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[1]:FindFirstChild("Mesh")
                  if not Mesh then
                    Mesh = Instance.new("BlockMesh")
                  end
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                    Mesh = Thing[1]:FindFirstChild("Mesh")
                    if not Mesh then
                      Mesh = Instance.new("BlockMesh")
                    end
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  elseif Thing[2] == "Elec" then
                      Mesh = Thing[1]:FindFirstChild("Mesh")
                      if not Mesh then
                        Mesh = Instance.new("BlockMesh")
                      end
                      Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    elseif Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
            else
              Part.Parent = nil
              Part:Destroy()
              --game:GetService("Debris"):AddItem(Part, 0)
              table.remove(Effects, e)
            end
          end
        end
      end
    end

end
