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
cam=game.Workspace.CurrentCamera
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
bounce=false
cooldown=false
deeznuts=false
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
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

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

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	end
	

local Player = game.Players.localPlayer
local Character = game.Workspace.non
local red = 255
local green = 255
local blue = 255
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local lim = 0
local st = 0
local necko = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local attacktype = 1
local ZTarget, RocketTarget = nil, nil
local euler = CFrame.fromEulerAnglesXYZ
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
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local v = game.Players.localPlayer
local torso = v.Character.Torso

plr = game.Players.LocalPlayer
char = game.Players.LocalPlayer.Character
hum = game.Players.LocalPlayer.Character.Humanoid
t = game.Players.LocalPlayer.Character.Torso
h = game.Players.LocalPlayer.Character.Head
ra = game.Players.LocalPlayer.Character["Right Arm"]
la = game.Players.LocalPlayer.Character["Left Arm"]
rl = game.Players.LocalPlayer.Character["Right Leg"]
ll = game.Players.LocalPlayer.Character["Left Leg"]
tors = Character.Torso
lleg = Character["Left Leg"]
root = Character.HumanoidRootPart
hed = Character.Head
rleg = Character["Right Leg"]
rarm = Character["Right Arm"]
larm = Character["Left Arm"]
bsize1 = NumberSequenceKeypoint.new(3,3,3)
bsize2 = NumberSequenceKeypoint.new(10,10,10)
local Effects = {}
attack = false
local attacking = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
local colororg = BrickColor.new("Dark indigo") -- set color u like
local meshtype = "Sphere" -- only for specialmesh
mouse = plr:GetMouse()


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
                showDamage(hit.Parent,Damage,3,TorsoColor)
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,3,BrickColor.new("Bright blue"))
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
                bodyVelocity.velocity=vt(0,10,0)
                bodyVelocity.P=1000
                bodyVelocity.maxForce=Vector3.new(1e+009, 1e+009, 1e+009)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
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
                swait(5)
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
        m.Name=""
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.Material = "Neon"
        c.BrickColor=bc("Bright red")
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
CV="Hot pink"

local txt = Instance.new("BillboardGui", c)
txt.Adornee = c
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
if Dealt < 12 then
text.Font = "Highway"
elseif Dealt < 20 then
text.Font = "SourceSansBold"
elseif Dealt >= 20 then
text.Font = "Fantasy"
end
text.TextStrokeColor3 = BrickColor.new("Really black").Color
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=c
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=c.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
if Dealt < 12 then
text.TextColor3 = BrickColor.new("White").Color
elseif Dealt < 20 then
text.TextColor3 = BrickColor.new("Bright yellow").Color
elseif Dealt >= 20 then
text.TextColor3 = BrickColor.new("Really red").Color
end
v.Shape="Block"
text.Text = tostring(Dealt).. "!"
  local dam = Instance.new("Sound",c)
  local rndm=math.random(1,#hitsounds)
  local r=rndm
  dam.SoundId = "http://www.roblox.com/asset/?id="..hitsounds[r]
  dam.Volume = 1.25
  dam.Pitch = 1
  dam:Play()
        c.formFactor="Plate"
c.Transparency = 0.99
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
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
        wait(1)
        for l = 0, 9 do
         text.TextTransparency = text.TextTransparency + 0.1
         text.TextStrokeTransparency = text.TextStrokeTransparency + 0.1
         wait()
        end
end

---------------- Weapon model

local handle = Instance.new("Part")
handle.Parent = Character
handle.Size = Vector3.new(0.225, 0.225, 0.225)
handle.Archivable = true
handle.Transparency = 0
handle.BrickColor = BrickColor.new("Really red")
handle.Material = "Neon"
local handlmesh = Instance.new("BlockMesh",handle)
handlmesh.Scale = Vector3.new(0.75,0.75,32.5)
local weld1 = Instance.new("Weld")
weld1.Parent = handle
weld1.Part0 = rarm
weld1.Part1 = handle
weld1.C1 = CFrame.new(0, 1, 0.25*1.5)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))
local handle2 = Instance.new("Part")
handle2.Parent = Character
handle2.Size = Vector3.new(0.3, 0.3, 0.75)
handle2.Archivable = true
handle2.Transparency = 0
handle2.BrickColor = BrickColor.new("Really red")
handle2.Material = "Neon"
local weld12 = Instance.new("Weld")
weld12.Parent = handle2
weld12.Part0 = rarm
weld12.Part1 = handle2
weld12.C1 = CFrame.new(0, 1, -2.5*1.45)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))
local handle3 = Instance.new("Part")
handle3.Parent = Character
handle3.Size = Vector3.new(0.275, 0.275, 0.75)
handle3.Archivable = true
handle3.Transparency = 0
handle3.BrickColor = BrickColor.new("Really red")
handle3.Material = "Neon"
local weld13 = Instance.new("Weld")
weld13.Parent = handle3
weld13.Part0 = rarm
weld13.Part1 = handle3
weld13.C1 = CFrame.new(0, 1, 2.5*1.5)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0))
local blade = Instance.new("Part")
blade.Parent = Character
blade.Size = Vector3.new(0.2, 0.2, 0.2)
blade.Archivable = true
blade.Transparency = 0
blade.CanCollide = false
blade.BrickColor = BrickColor.new("Really red")
blade.Material = "Neon"
local msh = Instance.new("SpecialMesh",blade)
msh.Scale = vt(0.25,1.25*5,3*5)
msh.MeshType = "Wedge"
local weld1a = Instance.new("Weld")
weld1a.Parent = blade
weld1a.Part0 = rarm
weld1a.Part1 = blade
weld1a.C1 = CFrame.new(0, -3.05, 2.65)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0))
local bladeefo = Instance.new("ParticleEmitter",blade)
bladeefo.Texture = "http://www.roblox.com/asset/?id=296874871"
bladeefo.LightEmission = 1
bladeefo.LockedToPart = true
bladeefo.Color = ColorSequence.new(BrickColor.new("Really red").Color)
bladeefo.Rate = 900
bladeefo.VelocitySpread = 900000000000
bladeefo.Lifetime = NumberRange.new(0.25)
bladeefo.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.25,0),NumberSequenceKeypoint.new(1,0,0)})
bladeefo.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.85,0)})
bladeefo.Rotation = NumberRange.new(-500,500)
bladeefo.RotSpeed = NumberRange.new(-500,500)
bladeefo.Speed = NumberRange.new(5,7.5)

local bld2 = blade:Clone()
bld2.Parent = Character
local bld2eff = bld2.ParticleEmitter
local weld2a = bld2.Weld
weld2a.C1 = CFrame.new(0, -3.55, 3.15)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(0))
local bld3 = blade:Clone()
bld3.Parent = Character
local bld3eff = bld3.ParticleEmitter
local weld3a = bld3.Weld
weld3a.C1 = CFrame.new(0, -4.05, 3.65)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(0))
local bld4 = blade:Clone()
bld4.Parent = Character
local bld4eff = bld4.ParticleEmitter
local weld4a = bld4.Weld
weld4a.C1 = CFrame.new(0, -4.55, 4.15)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
----- lol
handle.CanCollide = false
handle2.CanCollide = false
handle3.CanCollide = false
----

function attackone()
	attack = true
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(90), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
		end
		wait(0.15)
local slas = Instance.new("Sound",blade)
slas.SoundId = "rbxassetid://92597296"
slas.Volume = 2.5
slas.Pitch = 0.74
slas:Play()
local slas2 = Instance.new("Sound",blade)
slas2.SoundId = "rbxassetid://92597369"
slas2.Volume = 1.5
slas2.Pitch = 0.5
slas2:Play()
local hit = blade.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit2 = bld2.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit3 = bld3.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit4 = bld4.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
				for i = 0,1,0.1 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(50)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(180), math.rad(180), math.rad(-120)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
				end
				attack = false
				hit:disconnect()
				hit2:disconnect()
				hit3:disconnect()
				hit4:disconnect()
				wait(3)
				slas:Destroy()
				slas2:Destroy()
end

function attacktwo()
	attack = true
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(-90), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
		end
		wait(0.15)
local slas = Instance.new("Sound",blade)
slas.SoundId = "rbxassetid://28144425"
slas.Volume = 2.5
slas.Pitch = 0.95
slas:Play()
local hit = blade.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit2 = bld2.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit3 = bld3.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit4 = bld4.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
				for i = 0,1,0.1 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-90)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
				end
				attack = false
				hit:disconnect()
				hit2:disconnect()
				hit3:disconnect()
				hit4:disconnect()
				wait(3)
				slas:Destroy()
end

function attackthree()
	attack = true
	local swin = Instance.new("Sound",blade)
swin.SoundId = "rbxassetid://92597296"
swin.Volume = 5
swin.Pitch = 0.75
swin:Play()
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(-90), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
		end
		wait(0.15)
local hit = blade.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit2 = bld2.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit3 = bld3.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
local hit4 = bld4.Touched:connect(function(hit)
Damagefunc(hit,3,7,5,"Normal",root,.2,1)
end)
for z = 0,2 do
local slas = Instance.new("Sound",blade)
slas.SoundId = "rbxassetid://92597369"
slas.Volume = 1.5
slas.Pitch = 1
slas:Play()
local swin2 = Instance.new("Sound",blade)
swin2.SoundId = "rbxassetid://92597296"
swin2.Volume = 5
swin2.Pitch = 1.25
swin2:Play()
local swin3 = Instance.new("Sound",blade)
swin3.SoundId = "rbxassetid://92597296"
swin3.Volume = 2.5
swin3.Pitch = 0.95
swin3:Play()
				for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
				end
			    for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(120)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
			    end
			    for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(180)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
			    end
			    for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(240)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
			    end
			    for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(300)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
			    end
			    for i = 0,1,0.5 do
		swait()
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(360)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.25) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
			    end
				slas:Destroy()
				swin2:Destroy()
				swin3:Destroy()
end
				attack = false
				hit:disconnect()
				hit2:disconnect()
				hit3:disconnect()
				hit4:disconnect()
				wait(3)
end

function attackfour()
	attack = true
		for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-100)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(100)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(-40), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
		    end
		wait(0.05)
			local swin = Instance.new("Sound",blade)
swin.SoundId = "rbxassetid://92597296"
swin.Volume = 2.5
swin.Pitch = 0.75
swin:Play()
		for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(-40), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
		    end
			 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new("Really red")
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
     lb.CFrame = lb.CFrame - vt(0,0.5,0)
     lb.Anchored = true
     lb.Size = vt(3,3,3)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
local hitcircle = lb.Touched:connect(function(hit)
Damagefunc(hit,7,14,5,"Normal",root,.2,1)
end)
local sa = Instance.new("Sound",lb)
sa.SoundId = "rbxassetid://233091205"
sa.Volume = 1.25
sa.Pitch = 1
sa:Play()
local tra = Instance.new("ParticleEmitter",lb)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.95
tra.Color = ColorSequence.new(lb.BrickColor.Color)
tra.Rate = 1000
tra.Lifetime = NumberRange.new(1)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
tra.Speed = NumberRange.new(10,25)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.RotSpeed = NumberRange.new(-500,500)
	for i = 0, 24 do
		wait()
		thing.Scale = thing.Scale + vt(0.1,0.1,0.1)
		lb.Size = lb.Size + vt(0.1,0.1,0.1)
		lb.Transparency = lb.Transparency + 0.05
		lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
        lb.CFrame = lb.CFrame - vt(0,0.5,0)
	end
	attack = false
	hitcircle:disconnect()
	tra.Rate = 0
	wait(5)
	lb:Destroy()
	swin:Destroy()
end

local hold = false
function do1()
	attack = true
	for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(-40), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(-10), math.rad(-90)), 0.3)
	    end
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new("Really red")
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
     lb.Anchored = true
     lb.Size = vt(0.2,0.2,0.2)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
local tra = Instance.new("ParticleEmitter",lb)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.95
tra.Color = ColorSequence.new(lb.BrickColor.Color)
tra.Rate = 1000
tra.Lifetime = NumberRange.new(0.25)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,12.5,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.95,0)})
tra.Speed = NumberRange.new(0)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.LockedToPart = true
tra.RotSpeed = NumberRange.new(-500,500)
local saz = Instance.new("Sound",lb)
saz.SoundId = "rbxassetid://192410062"
saz.Volume = 1.5
saz.Pitch = 1
saz:Play()
for i = 0, 24 do
	wait()
	lb.Size = lb.Size + vt(0.15,0.15,0.15)
	lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
end
while wait() do
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
if hold == false then
break
end
end
lb.Touched:connect(function(hit)
Damagefunc(hit,10,25,5,"Normal",root,.2,1)
end)
tra.Rate = 0
lb.Anchored = false
local sa = Instance.new("Sound",lb)
sa.SoundId = "rbxassetid://233091205"
sa.Volume = 1.25
sa.Pitch = 1
sa:Play()
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 0.95
trail.Color = ColorSequence.new(lb.BrickColor.Color)
trail.Rate = 10000
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.95,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.Rotation = NumberRange.new(-500,500)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *100
  bv.Parent = lb
  wait(0.1)
	attack = false
	wait(10)
	lb:Destroy()
end

function do2()
attack = true
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(60), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
local touched = false
local over = false
local delay = false
local spart = Instance.new("Part",char)
     local thing = Instance.new("SpecialMesh",spart)
     thing.MeshType = meshtype
spart.Size = vt(1,1,1)
spart.Anchored = true
spart.BrickColor = BrickColor.new("Really red")
spart.Transparency = 0.5
spart.CanCollide = false
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,-1,0)
local pt1e = NumberSequenceKeypoint.new(0,2,0)
local pt2e = NumberSequenceKeypoint.new(1,0.5,0)
local effecto = Instance.new("ParticleEmitter",spart)
effecto.Texture = "rbxassetid://296874871"
effecto.LightEmission = 1
effecto.LockedToPart = true
effecto.Color = ColorSequence.new(BrickColor.new("Really red").Color)
effecto.Rate = 10000
effecto.VelocitySpread = 900000000000
effecto.Lifetime = NumberRange.new(0.25)
effecto.Size = NumberSequence.new({pt1e,pt2e})
effecto.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
effecto.Speed = NumberRange.new(10,25)
effecto.Rotation = NumberRange.new(-500,500)
effecto.RotSpeed = NumberRange.new(-500,500)
spart.CFrame = tors.CFrame + Vector3.new(0,0.1,0)
local tick2 = Instance.new("Sound",spart)
tick2.SoundId = "rbxassetid://233091205"
tick2.Volume = 2.5
tick2.Pitch = 1
tick2:Play()
spart.CFrame = hed.CFrame + Vector3.new(0,-1,0)
spart.Anchored = false
spart.Size = vt(0.75,12.5,12.5)
spart.CFrame = hed.CFrame + Vector3.new(0,-1,0)
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = hed.CFrame.lookVector * 175
bv.Parent = spart
spart.Touched:connect(function(hit)
local saveposition = spart.CFrame
local effector2 = Instance.new("ParticleEmitter",spart)
effector2.Texture = "rbxassetid://296874871"
effector2.LightEmission = 1
effector2.Color = ColorSequence.new(BrickColor.new("Really red").Color)
effector2.Rate = 10000
effector2.Lifetime = NumberRange.new(0.25)
effector2.VelocitySpread = 999999999999999
effector2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
effector2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
effector2.Speed = NumberRange.new(50)
effector2.Rotation = NumberRange.new(-500,500)
effector2.RotSpeed = NumberRange.new(-500,500)
Damagefunc(hit,12,22,-20,"Normal",root,.2,1)
over = true
wait(0.25)
effector2.Rate = 0
wait(0.25)
effector2:Destroy()
end)
		for i = 0,1,0.1 do
		swait()
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(-90), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
attack = false
wait(5)
effecto.Rate = 0
wait(1.5)
spart:Destroy()
end

function do3()
attack = true
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new("Really red")
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*5
     lb.Anchored = true
     lb.Size = vt(0.2,0.2,0.2)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
hum.WalkSpeed = 0
for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
		for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(60), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(120), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(180), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(240), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
thing.Scale = thing.Scale + vt(4.5,4.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(300), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
local touched = false
local rotationval = 1
local delay = false
local distance = 3.55
local spart = Instance.new("Part",t)
local tick4 = Instance.new("Sound",t)
tick4.SoundId = "rbxassetid://228343271"
tick4.Volume = 2.5
tick4.Pitch = 0.9
local tick2 = Instance.new("Sound",t)
tick2.SoundId = "rbxassetid://233091205"
tick2.Volume = 5
tick2.Pitch = 1
tick2:Play()
spart.Size = vt(10,10,1)
spart.BrickColor = BrickColor.new("Really red")
spart.Transparency = 0.35
spart.CanCollide = false
spart.Anchored = true
spart.Material = "Neon"
spart.CFrame = hed.CFrame + Vector3.new(0,0.1,0)
wait(0.05)
spart.Touched:connect(function(hit)
local effector2 = Instance.new("ParticleEmitter",spart)
effector2.Texture = "http://www.roblox.com/asset/?id=296874871"
effector2.LightEmission = 1
effector2.Color = ColorSequence.new(BrickColor.new("Really red").Color)
effector2.Rate = 10000
effector2.Lifetime = NumberRange.new(0.25)
effector2.VelocitySpread = 999999999999999
effector2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
effector2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
effector2.Speed = NumberRange.new(50)
effector2.Rotation = NumberRange.new(-500,500)
effector2.RotSpeed = NumberRange.new(-500,500)
Damagefunc(hit,5,15,-20,"Normal",root,.2,1)
wait(0.25)
effector2.Rate = 0
wait(0.25)
end)
tick4:Play()
for x = 0, 9 do
		for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
		for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(30), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(60), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(120), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(180), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(240), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
	for i = 0,1,0.75 do
		swait()
lb.CFrame = char.Head.CFrame + char.Head.CFrame.lookVector*3
lb.CFrame = lb.CFrame - vt(0,1.5,0)
distance = distance + 1*5
rotationval = rotationval - 0.125
spart.Size = spart.Size + Vector3.new(0,0,2*5)
spart.CFrame = hed.CFrame*CFrame.Angles(0,0,rotationval) + hed.CFrame.lookVector*distance
spart.CFrame = spart.CFrame + Vector3.new(0,-1.5,0)
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(300), math.rad(30), math.rad(90)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		end
end
spart:Destroy()
hum.WalkSpeed = 16
attack = false
for i = 0, 24 do
lb.Transparency = lb.Transparency + 0.05
thing.Scale = thing.Scale - vt(4.5,4.5,0)
wait()
end
lb:Destroy()
end

function DeleteParent(parent)
	for i,v in pairs(parent:children()) do
    if v:IsA("Part") then
        v:Destroy()
    end
end	
end


function do4()
	hum.WalkSpeed = 0
	attack = true
		for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.3)
	    end
			local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://136007472"
gahd.Volume = 2.5
gahd.Pitch = 0.7
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = "http://www.roblox.com/asset/?id=359972668"
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*2.5
game:service'RunService'.RenderStepped:connect(function()
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
end)
for i = 0, 50 do
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.5
	wait()
end
	 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new("Really red")
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.Position = larm.Position
     lb.CFrame = lb.CFrame + vt(0,1.5,0)
     lb.Anchored = true
     lb.Size = vt(0.2,0.2,0.2)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = meshtype
local tra = Instance.new("ParticleEmitter",lb)
tra.Texture = "rbxassetid://296874871"
tra.LightEmission = 0.95
tra.Color = ColorSequence.new(lb.BrickColor.Color)
tra.Rate = 1000
tra.Lifetime = NumberRange.new(0.25)
tra.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,25,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
tra.Speed = NumberRange.new(0)
tra.Rotation = NumberRange.new(-500,500)
tra.VelocitySpread = 90000
tra.LockedToPart = true
tra.RotSpeed = NumberRange.new(-500,500)
local tran = Instance.new("ParticleEmitter",lb)
tran.Texture = "rbxassetid://296874871"
tran.LightEmission = 0.95
tran.Color = ColorSequence.new(lb.BrickColor.Color)
tran.Rate = 0
tran.Lifetime = NumberRange.new(1)
tran.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,25,0)})
tran.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
tran.Speed = NumberRange.new(25,50)
tran.Rotation = NumberRange.new(-500,500)
tran.VelocitySpread = 90000
tran.LockedToPart = true
tran.RotSpeed = NumberRange.new(-500,500)
local saz = Instance.new("Sound",lb)
saz.SoundId = "rbxassetid://192410062"
saz.Volume = 7.5
saz.Pitch = 1
saz:Play()
for i = 0, 59 do
	wait()
	lb.Size = lb.Size + vt(0.5,0.5,0.5)
	lb.CFrame = lb.CFrame + vt(0,0.275,0)
end
local savepoint = Instance.new("Part",lb)
savepoint.CFrame = lb.CFrame
savepoint.Transparency = 1
savepoint.CanCollide = false
savepoint.Anchored = true
for i = 0, 29 do
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
	lb.CFrame = savepoint.CFrame
	lb.Size = lb.Size - vt(0.75,0.75,0.75)
	 local lba = Instance.new("Part")
  lba.Parent = lb
   lba.Material = "Neon"
    lba.BrickColor = BrickColor.new("Really red")
     lba.CanCollide = false
     lba.Shape = "Ball"
     lba.CFrame = lb.CFrame
     lba.Size = vt(6,6,6)
     local thinga = Instance.new("SpecialMesh",lba)
     thinga.MeshType = meshtype
lba.Touched:connect(function(hit)
Damagefunc(hit,22,29,5,"Normal",root,.2,1)
end)
local sa = Instance.new("Sound",lb)
sa.SoundId = "rbxassetid://233091205"
sa.Volume = 1.25
sa.Pitch = 0.75
sa:Play()
local trail = Instance.new("ParticleEmitter",lba)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 0.95
trail.Color = ColorSequence.new(lb.BrickColor.Color)
trail.Rate = 10000
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.Rotation = NumberRange.new(-500,500)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *100
  bv.Parent = lba
wait(0.25)
end
tra.Rate = 0
tran.Rate = 9000
local sar = Instance.new("Sound",lb)
sar.SoundId = "rbxassetid://233091205"
sar.Volume = 2.5
sar.Pitch = 0.5
sar:Play()
local hit = lb.Touched:connect(function(hit)
Damagefunc(hit,40,50,5,"Normal",root,.2,1)
end)
for i = 0, 44 do
	lb.Size = lb.Size + vt(3,3,3)
	lb.CFrame = savepoint.CFrame
	lb.Transparency = lb.Transparency + 0.025
	wait()
end
tran.Rate = 0
hit:disconnect()
attack = false
	hum.WalkSpeed = 16
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.5
	wait(0)
end
shur:Destroy()
	wait(10)
	lb:Destroy()
end

function doSpecial()
	hum.WalkSpeed = 0
	attack = true
	local ff = Instance.new("ForceField",char)
		for i = 0,1,0.1 do
		swait()
	            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-180)), 0.3)
		    end
			local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
gahd.SoundId = "rbxassetid://136007472"
gahd.Volume = 1
gahd.Pitch = 0.7
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Bright red")
shur.Anchored = true
shur.CFrame = tors.CFrame + vt(0,-2.5,0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = "http://www.roblox.com/asset/?id=359972668"
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*5
game:service'RunService'.RenderStepped:connect(function()
	shur.CFrame = shur.CFrame*CFrame.Angles(0,0.05,0)
end)
for i = 0, 50 do
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*5
	wait()
end
		local ex = Instance.new("Sound",char)
ex.SoundId = "rbxassetid://197161452"
ex.Volume = 1
ex.Pitch = 1
ex:Play()
		local ex2 = Instance.new("Sound",char)
ex2.SoundId = "rbxassetid://197161452"
ex2.Volume = 0.75
ex2.Pitch = 0.85
ex2:Play()
		local ex3 = Instance.new("Sound",char)
ex3.SoundId = "rbxassetid://197161452"
ex3.Volume = 0.5
ex3.Pitch = 0.65
ex3:Play()
		local ex4 = Instance.new("Sound",char)
ex4.SoundId = "rbxassetid://446876721"
ex4.Volume = 1
ex4.Pitch = 0.5
ex4:Play()
		local ex5 = Instance.new("Sound",char)
ex5.SoundId = "rbxassetid://446876721"
ex5.Volume = 1.5
ex5.Pitch = 0.5
ex5:Play()
local seen = Instance.new("Sound",char)
seen.SoundId = "rbxassetid://445796828"
seen.Pitch = 0.75
seen.Volume = 1.75
seen.Looped = true
seen:Play()
	 local las = Instance.new("Part")
		local expld = Instance.new("Explosion", las)
			expld.BlastPressure = 1
  las.Parent = char
   las.Material = "Neon"
    las.BrickColor = BrickColor.new("Really red")
     las.CanCollide = false
     las.Shape = "Ball"
     las.Transparency = 0
     las.Size = vt(60,60,60)
     las.CFrame = shur.CFrame
     las.Anchored = true
	expld.BlastRadius = 9999999999
	expld.Position = las.Position
     local thing = Instance.new("SpecialMesh",las)
     thing.MeshType = "Sphere"
     thing.Scale = vt(1,0.1,1)
	 local bo = Instance.new("Part")
  bo.Parent = las
   bo.Material = "Neon"
    bo.BrickColor = BrickColor.new("Really red")
     bo.CanCollide = false
     bo.Shape = "Ball"
     bo.Transparency = 0
     bo.Size = vt(1,1,1)
     bo.CFrame = shur.CFrame
     bo.Anchored = true
     local thingbo = Instance.new("SpecialMesh",bo)
     thingbo.MeshType = "Sphere"
     thingbo.Scale = vt(90,90,90)
	 local boim = Instance.new("Part")
  boim.Parent = las
   boim.Material = "Neon"
    boim.BrickColor = BrickColor.new("Really red")
     boim.CanCollide = false
     boim.Shape = "Ball"
     boim.Transparency = 1
     boim.Size = vt(150,150,150)
     boim.CFrame = shur.CFrame
     boim.Anchored = true
	 local boim2 = Instance.new("Part")
  boim2.Parent = las
   boim2.Material = "Neon"
    boim2.BrickColor = BrickColor.new("Really red")
     boim2.CanCollide = false
     boim2.Shape = "Ball"
     boim2.Transparency = 0.65
     boim2.Size = vt(1,1,1)
     boim2.CFrame = shur.CFrame
     boim2.Anchored = true
     local boimmsh = Instance.new("SpecialMesh",boim2)
     boimmsh.MeshType = "FileMesh"
     boimmsh.Scale = vt(165,165,165)
	 local shock = Instance.new("Part")
  shock.Parent = las
   shock.Material = "Neon"
    shock.BrickColor = BrickColor.new("Really red")
     shock.CanCollide = false
     shock.Shape = "Ball"
     shock.Transparency = 0.25
     shock.CFrame = shur.CFrame
     shock.Anchored = true
     shock.Size = vt(0.2,0.2,0.2)
     local thingshock = Instance.new("SpecialMesh",shock)
     thingshock.MeshType = "FileMesh"
     thingshock.Scale = vt(50,25,50)
     thingshock.MeshId = "http://www.roblox.com/asset/?id=20329976"
	 local shock2 = Instance.new("Part")
  shock2.Parent = las
   shock2.Material = "Neon"
    shock2.BrickColor = BrickColor.new("Really red")
     shock2.CanCollide = false
     shock2.Shape = "Ball"
     shock2.Transparency = 0.5
     shock2.CFrame = shur.CFrame
     shock2.Anchored = true
     shock2.Size = vt(0.2,0.2,0.2)
     local thingshock2 = Instance.new("SpecialMesh",shock2)
     thingshock2.MeshType = "FileMesh"
     thingshock2.Scale = vt(85,20,85)
     thingshock2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	 local shock3 = Instance.new("Part")
  shock3.Parent = las
   shock3.Material = "Neon"
    shock3.BrickColor = BrickColor.new("Really red")
     shock3.CanCollide = false
     shock3.Shape = "Ball"
     shock3.Transparency = 0.75
     shock3.CFrame = shur.CFrame
     shock3.Anchored = true
     shock3.Size = vt(0.2,0.2,0.2)
     local thingshock3 = Instance.new("SpecialMesh",shock3)
     thingshock3.MeshType = "FileMesh"
     thingshock3.Scale = vt(100,15,100)
     thingshock3.MeshId = "http://www.roblox.com/asset/?id=20329976"
local scaleval = 5
game:service'RunService'.RenderStepped:connect(function()
	scaleval = scaleval - 0.035
	     boim.CFrame = shur.CFrame
	     bo.Transparency = bo.Transparency + 0.0055
	     boimmsh.Scale = boimmsh.Scale + vt(1,1,1)
	boim2.Transparency = boim2.Transparency + 0.00125
	 thingbo.Scale = thingbo.Scale + vt(scaleval,scaleval,scaleval)
	shock.CFrame = shock.CFrame*CFrame.Angles(0,0.1,0)
	shock2.CFrame = shock2.CFrame*CFrame.Angles(0,-0.1,0)
	shock3.CFrame = shock3.CFrame*CFrame.Angles(0,0.1,0)
	las.CFrame = shur.CFrame + vt(math.random(-1,1),0,math.random(-1,1))
	thing.Scale = thing.Scale + vt(0,5,0)
end)
for i = 0, 15 do
	local sa = Instance.new("Sound",char)
sa.SoundId = "rbxassetid://233091205"
sa.Volume = 0.85
sa.Pitch = 0.85
sa:Play()
	 local lb = Instance.new("Part")
  lb.Parent = las
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new("Really red")
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = shur.CFrame
     lb.Anchored = true
     lb.Size = vt(0.2,0.2,0.2)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "FileMesh"
     thing.Scale = vt(50,25,50)
     thing.MeshId = "http://www.roblox.com/asset/?id=20329976"
	 local lb3 = Instance.new("Part")
  lb3.Parent = las
   lb3.Material = "Neon"
    lb3.BrickColor = BrickColor.new("Really red")
     lb3.CanCollide = false
     lb3.Shape = "Ball"
     lb3.CFrame = shur.CFrame
     lb3.Anchored = true
     lb3.Size = vt(0.2,0.2,0.2)
     local thing3 = Instance.new("SpecialMesh",lb3)
     thing3.MeshType = "FileMesh"
     thing3.Scale = vt(50,30,50)
     thing3.MeshId = "http://www.roblox.com/asset/?id=20329976"
	 local lb2 = Instance.new("Part")
  lb2.Parent = las
   lb2.Material = "Neon"
    lb2.BrickColor = BrickColor.new("Really red")
     lb2.CanCollide = false
     lb2.Shape = "Ball"
     lb2.CFrame = shur.CFrame
     lb2.Anchored = true
     lb2.Size = vt(0.2,0.2,0.2)
     local thing2 = Instance.new("SpecialMesh",lb2)
     thing2.MeshType = "FileMesh"
     thing2.Scale = vt(50,40,50)
     thing2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	 local ring = Instance.new("Part")
  ring.Parent = las
   ring.Material = "Neon"
    ring.BrickColor = BrickColor.new("Really red")
     ring.CanCollide = false
     ring.Shape = "Ball"
     ring.CFrame = shur.CFrame
     ring.CFrame = ring.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
     ring.Anchored = true
     ring.Size = vt(0.2,0.2,0.2)
     local thingring = Instance.new("SpecialMesh",ring)
     thingring.MeshType = "FileMesh"
     thingring.Scale = vt(150,150,50)
     thingring.MeshId = "http://www.roblox.com/asset/?id=3270017"
	 local ring2 = Instance.new("Part")
  ring2.Parent = las
   ring2.Material = "Neon"
    ring2.BrickColor = BrickColor.new("Really red")
     ring2.CanCollide = false
     ring2.Shape = "Ball"
     ring2.CFrame = shur.CFrame
     ring2.CFrame = ring2.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
     ring2.Anchored = true
     ring2.Size = vt(0.2,0.2,0.2)
     local thingring2 = Instance.new("SpecialMesh",ring2)
     thingring2.MeshType = "FileMesh"
     thingring2.Scale = vt(150,150,50)
     thingring2.MeshId = "http://www.roblox.com/asset/?id=3270017"
	 local circle = Instance.new("Part")
  circle.Parent = las
   circle.Material = "Neon"
    circle.BrickColor = BrickColor.new("Really red")
     circle.CanCollide = false
     circle.Shape = "Ball"
     circle.Transparency = 0
     circle.Size = vt(125,125,125)
     circle.CFrame = shur.CFrame
     circle.Anchored = true
local smooth = game:service'RunService'.RenderStepped:connect(function()
	sa.Volume = sa.Volume - 0.025
	thingring.Scale = thingring.Scale + vt(1,1,0)
	ring.Transparency = ring.Transparency + 0.025
	thingring2.Scale = thingring2.Scale + vt(1,1,0)
	ring2.Transparency = ring2.Transparency + 0.025
	circle.Size = circle.Size + vt(1,1,1)
	circle.Transparency = circle.Transparency + 0.025
    circle.CFrame = shur.CFrame
	lb.CFrame = lb.CFrame*CFrame.Angles(0,-0.05,0)
	thing.Scale = thing.Scale + vt(5,0,5)
	lb.Transparency = lb.Transparency + 0.025
	lb2.CFrame = lb2.CFrame*CFrame.Angles(0,0.05,0)
	thing2.Scale = thing2.Scale + vt(3.5,0,3.5)
	lb2.Transparency = lb2.Transparency + 0.025
	lb3.CFrame = lb3.CFrame*CFrame.Angles(0,-0.05,0)
	thing3.Scale = thing3.Scale + vt(2.5,0,2.5)
	lb3.Transparency = lb3.Transparency + 0.025
end)
wait(1)
	lb:Destroy()
		lb2:Destroy()
			lb3:Destroy()
				circle:Destroy()
					ring:Destroy()
					   ring2:Destroy()
					sa:Destroy()
					smooth:disconnect()
end
attack = false
	hum.WalkSpeed = 16
	ex:Destroy()
		ex2:Destroy()
			ex3:Destroy()
				ex4:Destroy()
					ex5:Destroy()
for i = 0, 100 do
	seen.Volume = seen.Volume - 0.05
	     thing.Scale = thing.Scale - vt(0.01,0,0.01)
	     thingshock.Scale = thingshock.Scale - vt(1,0,1)
	thingshock2.Scale = thingshock2.Scale - vt(1,0,1)
	thingshock3.Scale = thingshock3.Scale - vt(1,0,1)
	las.Transparency = las.Transparency + 0.025
	shock.Transparency = shock.Transparency + 0.025
	shock2.Transparency = shock2.Transparency + 0.025
	shock3.Transparency = shock3.Transparency + 0.025
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*5
	wait(0)
end
shur:Destroy()
gahd:Destroy()
ff:Destroy()
	las:Destroy()
end

attackcombo = 0

mouse.Button1Down:connect(function()
if hold == false then
	if attack == false and attackcombo == 0 then
		attackcombo = 1
		attackone()
	elseif attack == false and attackcombo == 1 then
		attackcombo = 2
		attacktwo()
	elseif attack == false and attackcombo == 2 then
		attackcombo = 3
		attackthree()
	elseif attack == false and attackcombo == 3 then
		attackcombo = 0
		attackfour()
	end
end
if attack == true and hold == true then
hold = false
end
end)
mouse.KeyDown:connect(function(key)
if key == "z" and attack == false and hold == false then
hold = true
do1()
elseif key == "x" and attack == false then
do2()
elseif key == "c" and attack == false then
do3()
elseif key == "v" and attack == false then
do4()
elseif key == "q" and attack == false and plr.Name == "elementman124" then
doSpecial()
end
end)
char.Humanoid.Animator.Parent = nil

game:GetService("RunService").Stepped:connect(function()
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
      if attack == false then
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(25)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(-25)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
        if attack == false then
			RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(2.5),math.rad(0),math.rad(0)),.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(25)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.65, 0) * angles(math.rad(-10), math.rad(0), math.rad(-25)), 0.3)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(-20),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 32))* angles(math.rad(0),math.rad(0),math.rad(10)),.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-10)),.3)
             RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(90), math.rad(10 - 2.5 * math.cos(sine / 32))), 0.3)
             LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10 + 2.5 * math.cos(sine / 32))), 0.3)
          end
        else
          if Torsovelocity > 2 and hit ~= nil then
            Anim = "Walk"
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 50 * math.cos(sine / 6))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 32),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 50 * math.cos(sine / 6))),.3)
            if attack == false then
	          RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 2.5))* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(75 + 1.5 * math.cos(sine / 5)), math.rad(75), math.rad(10)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(0 - 25 * math.cos(sine / 5)), math.rad(0), math.rad(-10)), 0.3)
            end
          end
        end
      end
    end
  end
end)
