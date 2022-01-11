-----------------
--some sin thing--
--------------------------------------------------------------
--By CKbackup (Sugarie Saffron), credits to original creator--
--------------------------------------------------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character:FindFirstChildOfClass("Humanoid")
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
trispeed=1
pathtrans=.7
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
cloak=false
lightcolor='Royal purple'

local Color1=Torso.BrickColor

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=BrickColor.new("Royal purple")
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=game.Workspace.non
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
fp.Material="Neon"
fp:BreakJoints()
return fp 
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="rbxassetid://"..meshid
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

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.015
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
    ArtificialHB.Event:wait(0)
  else
    for i = 0, num do
      ArtificialHB.Event:wait(0)
    end
  end
end
 
 
function so(id,par,pit,vol)
  local sou = Instance.new("Sound", par or workspace)
  if par == Character then
    sou.Parent = Torso
  end
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "rbxassetid://" .. id
  sou.PlayOnRemove = true
  sou:Destroy()
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://4770583",vt(0,0,0),vt(x1,y1,z1))
--rbxassetid://4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
swait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
swait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part:Destroy()
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
swait()
Part.CFrame=Part.CFrame*euler(math.random(0,360),math.random(0,360),math.random(0,360))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part:Destroy()
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
swait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part:Destroy()
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Material = "Neon"
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
Part:Destroy()
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Material = "Neon"
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
Part:Destroy()
end),prt2,msh2)
end
for i=0,1,delay*2 do
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part:Destroy()
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
Part:Destroy()
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"rbxassetid://168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part:Destroy()
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
Part:Destroy()
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part:Destroy()
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part:Destroy()
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
Part:Destroy()
Mesh:Destroy()
end),prt,msh,x,y,z)
end

function puncheff(par)
so(386946017,par,math.random(80,120)/100,1)
MagicCircle(BrickColor.new("Alder"), par.CFrame, 1, 1, 1, 1, 1, 1, 0.05)
end

Damagefunc=function(hit,efft,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
         local torsy = (hit.Parent:findFirstChild("Torso") or hit.Parent:findFirstChild("UpperTorso"))
       h=hit.Parent:FindFirstChildOfClass("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Head")~=nil then
        h=hit.Parent.Parent:FindFirstChildOfClass("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Head")~=nil then
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
                Damage=0
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
				if efft == "Blunt" then
				puncheff(hit)
				end
				h.MaxHealth = 100
                h.Health=h.Health-0
                showDamage(hit.Parent,Damage,.5,TorsoColor)
                if Type=="Knockdown" then
                local hum=hit.Parent:FindFirstChildOfClass("Humanoid")
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(30)
HHumanoid.PlatformStand=false
end),hum)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=RootPart.CFrame.lookVector*knockback
bodvol.P=50000
bodvol.maxForce=Vector3.new(5000, 0, 5000) * 5000000000
bodvol.Parent=torsy
torsy.CFrame = CFrame.new(torsy.Position)*CFrame.Angles(math.rad(90),0,0)
game:GetService("Debris"):AddItem(bodvol,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
                vp.velocity=Character.Torso.CFrame.lookVector*knockback
--                if KnockbackType==1 then
--                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
--                elseif KnockbackType==2 then
--                vp.velocity=Property.CFrame.lookVector*knockback
--                end
                if knockback>0 then
                        vp.Parent=torsy
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
                bp.position=torsy.Position
                bp.Parent=torsy
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=torsy
                coroutine.resume(coroutine.create(function(Part) 
                so("15666462",Part,1,1.5) 
                swait(5)
                so("15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:FindFirstChildOfClass("Humanoid")
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
                targetgui:Destroy()
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
 
function showDamage(Dude, Text, Time, Color)
coroutine.resume(coroutine.create(function()
local naeeym2 = Instance.new("BillboardGui",Dude)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Dude.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = Text
tecks2.Font = "Fantasy"
tecks2.TextSize = 24
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.8,0,1)
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
end))
end

    Player=game:GetService('Players').LocalPlayer
    Character=game.Workspace.non
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
    
    function parta(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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

local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Claw1"

Handle=parta(Enum.FormFactor.Custom,modelzorz,Enum.Material.Neon,0,1,TorsoColor,"Handle",Vector3.new(4,4,1))
Handleweld=weld(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.74455023, 0.843135834, 3.31332064, 0.866820872, 0.000393055088, -0.498619556, 0.129048944, -0.966104209, 0.223582461, -0.481630623, -0.258152217, -0.837489963))
Gear=parta(Enum.FormFactor.Custom,modelzorz,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(4.29999971, 4.30000019, 1))
Gearweld=weld(modelzorz,Handle,Gear,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0552597046, -0.0398271084, -0.0363032818, 0.999988854, -3.23429704e-005, 0.00164097548, 3.37436795e-005, 0.999994695, -0.000689953566, -0.00164103508, 0.000689953566, 0.999993086))

local modelzorz2=Instance.new("Model") 
modelzorz2.Parent=Character 
modelzorz2.Name="Claw2"

Handle2=parta(Enum.FormFactor.Custom,modelzorz2,Enum.Material.Neon,0,1,TorsoColor,"Handle",Vector3.new(4,4,1))
Handle2weld=weld(modelzorz2,Character["Torso"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.65693045, 1.66835713, 2.9684639, 0.866025746, 0.129405379, 0.482963592, -3.67555799e-006, -0.965926409, 0.258817136, 0.499999553, -0.224144042, -0.836516559))
Gear2=parta(Enum.FormFactor.Custom,modelzorz2,Enum.Material.SmoothPlastic,0,1,"Really black","Part",Vector3.new(4.29999971, 4.30000019, 1))
Gear2weld=weld(modelzorz2,Handle2,Gear2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.049841404, 0.049908638, 2.78949738e-005, 0.999990344, -5.01424074e-006, -1.49011612e-007, 5.28991222e-006, 0.999994934, 2.98023224e-008, 2.38418579e-007, -1.63912773e-007, 0.999994636))

local modelzorz3=Instance.new("Model") 
modelzorz3.Parent=Character 
modelzorz3.Name="Eye"

handle=parta(Enum.FormFactor.Custom,modelzorz3,Enum.Material.SmoothPlastic,0,1,TorsoColor,"Handle",Vector3.new(1,6,6))
handleweld=weld(modelzorz3,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.22326851, -3.5562191, -0.038143158, 0, 0, 1, 0, 1, 0, -1, 0, 0))

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Gear2 = New("Part",modelzorz2,"Gear2",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(5, 7, 5),CFrame = CFrame.new(68.5, 2.5, -42.5, 0, 0, -1, -1, 0, 0, 0, 1, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gear2,"Mesh",{Offset = Vector3.new(0, 0, -1),Scale = Vector3.new(25, 25, 25),MeshId = "rbxassetid://92052865",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Gear2,"Weld",{Part0 = Gear2,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, 1, -1, 0, 0),C1 = CFrame.new(0, 3.57627869e-06, 2.99999237, 0.999991357, -6.94066244e-08, 4.63798642e-07, 6.63525327e-07, -0.999994934, -2.62497252e-07, 2.04890966e-08, 2.84217094e-13, -0.999997139),})
Gear = New("Part",modelzorz,"Gear",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(5, 7, 5),CFrame = CFrame.new(78.5, 2.5, -42.5, 0, 0, 1, 1, 0, 0, 0, 1, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gear,"Mesh",{Offset = Vector3.new(0, 0, -1),Scale = Vector3.new(25, 25, 25),MeshId = "rbxassetid://92053026",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Gear,"Weld",{Part0 = Gear,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(0, 3.57627869e-06, 2.99999237, 0.999991357, -6.94066244e-08, 4.63798642e-07, 6.63525327e-07, -0.999994934, -2.62497252e-07, 2.04890966e-08, 2.84217094e-13, -0.999997139),})
DragonHead = New("Part",modelzorz3,"DragonHead",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(72.5999985, 5.5999999, -63.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",DragonHead,"Mesh",{Scale = Vector3.new(5, 5, 5),MeshId = "rbxassetid://420164161",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",DragonHead,"Weld",{Part0 = DragonHead,Part1 = handle,C1 = CFrame.new(-4, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0),})
EyePart = New("Part",modelzorz3,"EyePart",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.Neon,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(70.0999985, 8.60000038, -63.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.384314, 0.145098, 0.819608),})
Mesh = New("SpecialMesh",EyePart,"Mesh",{Scale = Vector3.new(1, 1, 2),MeshId = "rbxassetid://420164161",MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EyePart,"Weld",{Part0 = EyePart,Part1 = handle,C1 = CFrame.new(-4, 3.00000048, 2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0),})
EyePart = New("Part",modelzorz3,"EyePart",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.Neon,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(75.0999985, 8.60000038, -63.5999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.384314, 0.145098, 0.819608),})
Mesh = New("SpecialMesh",EyePart,"Mesh",{Scale = Vector3.new(1, 1, 2),MeshId = "rbxassetid://420164161",MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EyePart,"Weld",{Part0 = EyePart,Part1 = handle,C1 = CFrame.new(-4, 3.00000048, -2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0),})
EyePart = New("Part",modelzorz3,"EyePart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(70.0999985, 8.60000038, -64.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",EyePart,"Mesh",{Scale = Vector3.new(0.899999976, 0.899999976, 0.5),MeshId = "rbxassetid://420164161",MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EyePart,"Weld",{Part0 = EyePart,Part1 = handle,C1 = CFrame.new(-4.5, 3.00000048, 2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0),})
EyePart = New("Part",modelzorz3,"EyePart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(75.0999985, 8.60000038, -64.0999985, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",EyePart,"Mesh",{Scale = Vector3.new(0.899999976, 0.899999976, 0.5),MeshId = "rbxassetid://420164161",MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EyePart,"Weld",{Part0 = EyePart,Part1 = handle,C1 = CFrame.new(-4.5, 3.00000048, -2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0),})


local moosick = it("Sound",Character)
moosick.SoundId = "rbxassetid://608726256"
 --142653441, 175067863
moosick.Name = "moosick"
moosick.Looped = true
moosick.Volume = 1

anim = Character:findFirstChild("Animate")
if anim then
anim:Destroy()
end

local pemit = Instance.new("ParticleEmitter")
pemit.Color = ColorSequence.new(Color3.new(.5,0,1))
pemit.Lifetime = NumberRange.new(1)
pemit.Acceleration = Vector3.new(0,20,0)
pemit.EmissionDirection = "Front"
pemit.Size = NumberSequence.new(1,0)
pemit.Speed = NumberRange.new(10)
pemit.LightEmission = 1
pemit.Rate = 500
pemit.Rotation = NumberRange.new(0,360)
pemit.RotSpeed = NumberRange.new(150)
pemit.Texture = "rbxasset://textures/particles/smoke_main.dds"
pemit.Enabled = false

local pe1 = pemit:Clone()
pe1.Parent = Handle
local pe2 = pemit:Clone()
pe2.Parent = Handle2
local pe3 = pemit:Clone()
pe3.Parent = handle
pe3.EmissionDirection = "Right"
pe3.Rate = 1000

local light = Instance.new("PointLight", Character.Torso)
light.Color = TorsoColor.Color
light.Brightness = 5
light.Range = 15
light.Enabled = false

local Footsteps = it("Sound",Character.Torso)
Footsteps.SoundId = "rbxassetid://142665235"
Footsteps.Looped = true
Footsteps.Pitch = 0.8
Footsteps.Volume = 0.3

local Footsteps2 = it("Sound",Character.Torso)
Footsteps2.SoundId = "rbxassetid://142665235"
Footsteps2.Looped = true
Footsteps2.Pitch = 1
Footsteps2.Volume = 0.4

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Material = Enum.Material.Neon
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
Part:Destroy()
end),prt,msh)
end

TrailDeb = false

function equipanim()
attack=true
Gear.Transparency = 1
Gear2.Transparency = 1
for i,v in pairs(modelzorz3:children()) do
if v:IsA("BasePart") then v.Transparency = 1 end
end
Humanoid.WalkSpeed = 0
moosick:Play()
for i=0,1,0.05 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.2)
end
swait(60)
for i=0,1,0.05 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,.5)*euler(-30,0,-20),.3)
RW.C0=clerp(RW.C0,cf(1.2,0.5,.5)*euler(-30,0,20),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(50),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.2)
end
so(136007472,Torso,1,1)
swait(30)
for i=0,30 do
swait(1)
MagicRing(BrickColor.new("Alder"), Gear.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), 20, 20, 2, 1, 1, 1, -1, -1, 0)
MagicRing(BrickColor.new("Alder"), Gear2.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), 20, 20, 2, 1, 1, 1, -1, -1, 0)
MagicRing(BrickColor.new("Alder"), DragonHead.CFrame*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50))), 60, 60, 6, 1, 1, 1, -3, -3, 0)
end
swait(180)
so(233096557,Torso,1,5)
so(233091205,Torso,1,5)
so(150829983,DragonHead,.9,5)
MagicCircle(BrickColor.new("Alder"), Gear.CFrame, 10, 10, 10, 1, 1, 1, 0.01)
MagicCircle(BrickColor.new("Alder"), Gear2.CFrame, 10, 10, 10, 1, 1, 1, 0.01)
MagicCircle(BrickColor.new("Alder"), DragonHead.CFrame, 20, 20, 20, 1, 1, 1, 0.01)
Gear.Transparency = 0
Gear2.Transparency = 0
for i,v in pairs(modelzorz3:children()) do
if v:IsA("BasePart") and v ~= handle then v.Transparency = 0 end
end
pe1.Enabled = true
pe2.Enabled = true
pe3.Enabled = true
light.Enabled = true
for a=1,300 do
handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(50),math.rad(0),math.rad(0))
swait()
end
attack = false
end

function attackone()
attack=true
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear.Touched:connect(function(hit) Damagefunc(hit,"Blunt",0,"Normal",RootPart,0) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-10)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(10)),.3)
        RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-3,1,2)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
    so("231917758",Handle,1,.9) 
    so("159972643",Torso,1,1) 
    for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(80,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-4,1,-8)*angles(math.rad(-85),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
    --dmgstop()
    attack=false
    con1:disconnect()
if TrailDeb == true then
TrailDeb = false
end
end

function attacktwo()
attack=true
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle2.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear2.Touched:connect(function(hit) Damagefunc(hit,"Blunt",20,25,20,"Normal",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-30,0,-20),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-5,1,-5)*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
    so("231917758",Handle2,1,.8) 
    so("159972627",Torso,1,1) 
    for i=0,1,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        LW.C0=clerp(LW.C0,cf(-1,0.5,-1)*euler(-30,0,20),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(10,1,-5)*angles(math.rad(0),math.rad(-80),math.rad(20)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
    --dmgstop()
    attack=false
    con1:disconnect()
if TrailDeb == true then
TrailDeb = false
end
end

function attackthree()
attack=true
if TrailDeb == false then
TrailDeb = true
end						
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear.Touched:connect(function(hit) Damagefunc(hit,"Blunt",20,25,30,"Up",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
        RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(0.5,-1.3,-0.1),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(3,7,-1)*angles(math.rad(20),math.rad(0),math.rad(-120)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
    so("231917758",Handle,1,1) 
    so("159882477",Torso,1,1) 
    for i=0,1,0.05 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,4,-3)*angles(math.rad(120),math.rad(0),math.rad(-120)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(2,-1.3,0.1),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
    end
    --dmgstop()
    attack=false
    con1:disconnect()
if TrailDeb == true then
TrailDeb = false
end
end

function attackfour()
attack=true
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle2.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear2.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,20,0,"Normal",RootPart,.2,1) end) 
    con2=Gear.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,20,0,"Normal",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*angles(math.rad(40),math.rad(0),math.rad(-40)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(40)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(70),math.rad(0),math.rad(-45)),.3)
       	RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
		LH.C0=clerp(LH.C0,cf(-1,0.5,0)*euler(0,-1.57,0)*angles(math.rad(-10),math.rad(30),math.rad(-40)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(1.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-1.5,3,0)*angles(math.rad(0),math.rad(180),math.rad(180)),.2)  
    end
if anim then
anim.Disabled=true
end
    so("231917758",Torso,1,0.7) 
    so("159882584",Torso,1,1) 
    for i=0,1,0.04 do
        swait()
        Torso.Velocity=RootPart.CFrame.lookVector*50
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*angles(math.rad(-5),math.rad(0),math.rad(0+360*i)),.3)
        RW.C0=clerp(RW.C0,cf(1.2,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
        LW.C0=clerp(LW.C0,cf(-1.2,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
        RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(3,4,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-3,4,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2) 
    end
    --dmgstop()
    attack=false
    con1:disconnect()
    con2:disconnect()
if anim then
anim.Disabled=false
end
if TrailDeb == true then
TrailDeb = false
end
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
	local prt = parta(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, 0.05 do
			swait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function MagniDamage(par,efft,magni,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
 print("lol")
end

function MagicCircle4(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function smashdown()
attack=true

if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle2.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear2.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,15,100,"Normal",RootPart,.2,1) end) 
    con2=Gear.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,15,100,"Normal",RootPart,.2,1) end) 
    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,1,0)*euler(math.rad(180),0,0),.3)
		RW.C0=clerp(RW.C0,cf(1.5,1,0)*euler(math.rad(180),0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(50),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(4,30,10)*angles(math.rad(35),math.rad(0),math.rad(-90)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,30,10)*angles(math.rad(35),math.rad(0),math.rad(90)),.2)  
    end
	Humanoid.WalkSpeed = 0
    so("231917758",Torso,1,0.7) 
    so("159882584",Torso,1,1) 
	    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),0,0),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(90),0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(4,6,-10)*angles(math.rad(-35),math.rad(0),math.rad(-90)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,6,-10)*angles(math.rad(-35),math.rad(0),math.rad(90)),.2)  
	end
	con1:disconnect()
    con2:disconnect()
    attack=false
if anim then
anim.Disabled=false
end
if TrailDeb == true then
TrailDeb = false
end
	local ref = it("Part",Character)
	ref.Size = Vector3.new(0,0,0)
	ref.Anchored = true
	ref.CanCollide = false
	ref.Transparency = 1
	local looky = RootPart.CFrame
	for i=1,10 do
	ref.CFrame = looky*CFrame.new(0,-2.5,-10*i)
	BlastEffect(BrickColor.new("White"),ref.CFrame,1,.2,1,1,0,1)
	BlastEffect(BrickColor.new("White"),ref.CFrame,5,1,.5,.1,2,.1)
	MagniDamage(ref,"",10,30,35,50,"Knockdown",RootPart,.2,1)
	so(178452221,ref,.6,1)
    so(192410084,ref,1,1)
	swait(5)
	end
	ref:Destroy()
	swait(60)
    --dmgstop()
end

function mudads()
attack=true
so("624164065",Torso,1,3)
print("SUNLIGHT YELLO OVRDREV")


if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle2.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
    con1=Gear2.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,15,10,"Normal",RootPart,.05,1) end) 
    con2=Gear.Touched:connect(function(hit) Damagefunc(hit,"Blunt",10,15,10,"Normal",RootPart,.05,1) end) 
	Humanoid.WalkSpeed = 16
    so("159882584",Torso,1,1) 
	    for i=0,1,0.08 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.2,1,0)*euler(math.rad(90),math.rad(-90),0),.3)
		RW.C0=clerp(RW.C0,cf(1.2,1,0)*euler(math.rad(90),math.rad(90),0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(4,2,10)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,2,10)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
		end
		for a = 1,20 do
		so("231917758",Torso,math.random(6,10)/10,1) 
	    for i=0,1,0.2 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.2,1,-2)*euler(math.rad(90),math.rad(-90),0),.3)
		RW.C0=clerp(RW.C0,cf(1.2,1,2)*euler(math.rad(90),math.rad(90),0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(math.random(-10,10),math.random(0,4),-20)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(math.random(-10,10),math.random(0,4),20)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
		end
		so("231917758",Torso,math.random(6,10)/10,1) 
	    for i=0,1,0.2 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.2,1,2)*euler(math.rad(90),math.rad(-90),0),.3)
		RW.C0=clerp(RW.C0,cf(1.2,1,-2)*euler(math.rad(90),math.rad(90),0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(math.random(-10,10),math.random(0,4),20)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
        Handle2weld.C0=clerp(Handle2weld.C0,cf(math.random(-10,10),math.random(0,4),-20)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)  
		end
		end
	con1:disconnect()
    con2:disconnect()
    --dmgstop()
    attack=false
if anim then
anim.Disabled=false
end
if TrailDeb == true then
TrailDeb = false
end
end

function laser()
attack = true
Humanoid.WalkSpeed = 16
for i=0,1,0.05 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,.5)*euler(-30,0,-20),.3)
RW.C0=clerp(RW.C0,cf(1.2,0.5,.5)*euler(-30,0,20),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(50),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.2)
end
	local blmod = Instance.new("Model",Character)
	  for a = 1, 5 do
	  	local blast2 = it("Part",blmod)
		blast2.Size = vt(1,1,1)
		blast2.BrickColor = TorsoColor
		blast2.Material = "Neon"
        blast2.Anchored = false
		blast2.CanCollide = false
		local blwe = Instance.new("Weld",blast2)
		blwe.Part0 = DragonHead
		blwe.Part1 = blast2		
		blwe.C0 = CFrame.new(0, 0, -5)
		blwe.C1 = CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        local m = Instance.new("BlockMesh", blast2)
        m.Scale = Vector3.new(6,6,6)
        coroutine.resume(coroutine.create(function()
          for i = 0,1,.1 do
            blast2.Transparency = 1.2-i
            swait()
            blwe.C1 = blwe.C1 * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
          end
		while blast2 do
		swait()
		blwe.C1 = blwe.C1 * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
		end
      	end))
	  end
so(864314263,DragonHead,1,5)
for i=1,150 do
MagicRing(BrickColor.new("Alder"), DragonHead.CFrame * CFrame.new(0,0,-5) * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), 20, 20, 2, 1, 1, 1, -1, -1, 0)
handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(50),math.rad(0),math.rad(0))
swait()
end
for i=0,1,0.05 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,.5)*euler(-30,0,-20),.3)
RW.C0=clerp(RW.C0,cf(1.2,0.5,.5)*euler(-30,0,20),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(math.random(-1,1),math.random(5,7),math.random(6,8))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.2)
end
		so(162246701,DragonHead,1,5)
		local frontcf = DragonHead.CFrame * CFrame.new(0,0,-5)
		local sannd = Instance.new("Sound",Torso)
		sannd.SoundId = "rbxassetid://345052019"
		sannd.Looped = false
		sannd.Volume = 1000
		sannd:Play()
		local hitcf = mouse.Hit
		local ref = it("Part",Character)
		ref.Size = Vector3.new(0,0,0)
		ref.Anchored = true
		ref.CanCollide = false
		ref.Transparency = 1
		local blast = it("Part",blmod)
		blast.Size = vt(1,1,(frontcf.p - hitcf.p).magnitude)
		blast.BrickColor = TorsoColor
		blast.Material = "Neon"
        blast.Anchored = true
		blast.CanCollide = false
		blast.CFrame = CFrame.new((frontcf.p + hitcf.p)/2,frontcf.p)
		local m = Instance.new("BlockMesh", blast)
        m.Scale = Vector3.new(5,5,1)
		for a = 1, 200 do
		local frontcf = DragonHead.CFrame * CFrame.new(0,0,-5)
		local hitcf = mouse.Hit
		ref.CFrame = hitcf
		blast.Size = vt(1,1,(frontcf.p - hitcf.p).magnitude)
		blast.CFrame = CFrame.new((frontcf.p + hitcf.p)/2,frontcf.p)
		MagicBlock(TorsoColor, hitcf, 1, 1, 1, 6, 6, 6, 0.1)
		MagniDamage(ref,"",10,5,7,0,"Knockdown",RootPart,.05,1)
		handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(-5),math.rad(0),math.rad(0))
		--handleweld.C0 = cf(math.random(-2,2),math.random(4,8),math.random(5,9))*angles(math.rad(-5),math.rad(0),math.rad(0))
		swait(1)
		end
		for a = 0,1,.05 do
		sannd.Volume = a
		for _, b in pairs(blmod:GetChildren()) do
		b.Transparency = a
		end
		swait()
		end
		sannd:Destroy()
		blmod:Destroy()
		attack = false
end

function yummy()
attack=true
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
local grab
local torsy
local ghum
local soaa
    for i=0,1,0.05 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-10)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(10)),.3)
        RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-3,1,2)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
con1=Gear.Touched:connect(function(hit)
if grab == nil and hit.Parent ~= Character then
torsy = (hit.Parent:findFirstChild("Torso") or hit.Parent:findFirstChild("UpperTorso"))
ghum = hit.Parent:FindFirstChildOfClass("Humanoid")
if ghum ~= nil and torsy ~= nil then
grab=hit.Parent
so(386946017,hit,1,1)
local soaa = it("Sound",grab.Head)
soaa.Volume = 1
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
soaa:Play()
end
end
end) 
    so("231917758",Handle,1,.9) 
    so("159972643",Torso,1,1) 
    for i=0,3,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(80,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-4,1,-8)*angles(math.rad(-85),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
if grab ~= nil then
	Humanoid.WalkSpeed = 0
	con1:disconnect()
    for i=0,3,0.05 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,20,-8)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
    for i=0,1,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(0,16,5)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
	grab:BreakJoints()
	for i,v in pairs(grab:children()) do
	if v:IsA("BasePart") then
	game:service'Debris':AddItem(v,.01)
	end
	end
	local ref = it("Part",Character)
	ref.Size = Vector3.new(0,0,0)
	ref.Anchored = true
	ref.CanCollide = false
	ref.Transparency = 1
	ref.CFrame = Gear.CFrame
so(206082327,Gear,1,3)
local partasdeff = Instance.new("ParticleEmitter",ref)
partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
partasdeff.LightEmission = .1
partasdeff.Size = NumberSequence.new(0.2)
partasdeff.Texture = "rbxassetid://771221224"
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
partasdeff.Transparency = bbb
partasdeff.Size = aaa
partasdeff.ZOffset = .9
partasdeff.Acceleration = Vector3.new(0, -5, 0)
partasdeff.LockedToPart = false
partasdeff.EmissionDirection = "Back"
partasdeff.Lifetime = NumberRange.new(1, 2)
partasdeff.Rate = 1000
partasdeff.Rotation = NumberRange.new(-100, 100)
partasdeff.RotSpeed = NumberRange.new(-100, 100)
partasdeff.Speed = NumberRange.new(6)
partasdeff.VelocitySpread = 10000
partasdeff.Enabled=false
partasdeff:Emit(70)
game:service'Debris':AddItem(ref,5)
swait(90)
so(2767085,DragonHead,1,1)
	swait(150)
	    for i=0,1,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
	    end
so(133966572,DragonHead,.8,2)
for i=1,15 do
for a=1,5 do
handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(-20),math.rad(0),math.rad(0))
swait()
end
local bo = it("Part",Character)
bo.Size = vt(.2,.6,1)
bo.BrickColor = BrickColor.new("Persimmon")
bo.CFrame = DragonHead.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
bo.Velocity = RootPart.CFrame.lookVector*40
local m = it("SpecialMesh",bo)
m.MeshId = "rbxassetid://305829157"
m.Scale = vt(math.random(9,13)/10,math.random(9,13)/10,math.random(9,13)/10)
coroutine.wrap(function()
swait(300)
for a=0,1,.05 do
swait()
bo.Transparency = a
end
bo:Destroy()
end)()
end
for a=1,5 do
handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(-20),math.rad(0),math.rad(0))
swait()
end
local bo = it("Part",Character)
bo.Size = vt(1,1,1)
bo.BrickColor = BrickColor.new("Persimmon")
bo.CFrame = DragonHead.CFrame*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
bo.Velocity = RootPart.CFrame.lookVector*40
local m = it("SpecialMesh",bo)
m.MeshId = "rbxassetid://4770583"
m.Scale = vt(3,3,3)
coroutine.wrap(function()
swait(300)
for a=0,1,.05 do
swait()
bo.Transparency = a
end
bo:Destroy()
end)()
swait(60)
end
    --dmgstop()
    attack=false
    con1:disconnect()
if TrailDeb == true then
TrailDeb = false
end
end

function smek()
attack=true
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Handle.CFrame.p
while true do swait()
if not TrailDeb then break end
local New = Handle.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "Neon"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = TorsoColor
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(20,1,20)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
swait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
swait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
local grab
local torsy
local ghum
local soaa
    for i=0,1,0.05 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-10)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(10)),.3)
        RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-3,1,2)*angles(math.rad(90),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
    end
con1=Gear.Touched:connect(function(hit)
if grab == nil and hit.Parent ~= Character then
torsy = (hit.Parent:findFirstChild("Torso") or hit.Parent:findFirstChild("UpperTorso"))
ghum = hit.Parent:FindFirstChildOfClass("Humanoid")
if ghum ~= nil and torsy ~= nil then
grab=hit.Parent
so(386946017,hit,1,1)
soaa = it("Sound",grab.Head)
soaa.Volume = 1
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
game:service'Debris':AddItem(soaa,8)
soaa:Play()
end
end
end) 
    so("231917758",Handle,1,.9) 
    so("159972643",Torso,1,1) 
    for i=0,3,0.1 do
        swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
        RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.5)*euler(80,1.8,1.5),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(-4,1,-10)*angles(math.rad(-85),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
if grab ~= nil then
	Humanoid.WalkSpeed = 0
	con1:disconnect()
    for i=0,3,0.05 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,20,-8)*angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
for a=1,5 do
    for i=0,1,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,-5,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
so(386946017,torsy,1,1)
BlastEffect(BrickColor.new("White"),CFrame.new(torsy.Position),.5,.5,.5,.5,.2,.5)
if ghum.Health > 10 then
Damagefunc(torsy,"",8,10,0,"Normal",RootPart,0,1)
end
    for i=0,1,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,20,-8)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
end
for i=1,30 do
swait()
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
end
    for i=0,5,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,15,10)*angles(math.rad(0),math.rad(180),math.rad(180)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
    for i=0,1,0.1 do
        swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(-4)),.3)
LW.C0=clerp(LW.C0,cf(-1.4,0.5,-0.2)*angles(math.rad(20),math.rad(0),math.rad(4)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
		handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
        Handleweld.C0=clerp(Handleweld.C0,cf(2,20,-20)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
        Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		if torsy~=nil then
		ghum.PlatformStand = true
		torsy.CFrame = Gear.CFrame
		end
    end
torsy.Velocity = RootPart.CFrame.lookVector*100
coroutine.wrap(function()
local par,pos
repeat swait() par,pos = rayCast(torsy.Position,Vector3.new(0,-1,0),2,grab) until par
Damagefunc(torsy,"",15,20,0,"Normal",RootPart,0,1)
BlastEffect(BrickColor.new("White"),CFrame.new(pos),0,0,0,.5,.2,.5)
so(260430079,torsy,1,5)
swait(60)
ghum.PlatformStand = false
end)()
swait(60)
end
    --dmgstop()
    attack=false
    con1:disconnect()
if TrailDeb == true then
TrailDeb = false
end
end

function rawr()
attack=true
Humanoid.WalkSpeed = 0
for i=0,1,0.05 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,.5)*euler(-30,0,-20),.3)
RW.C0=clerp(RW.C0,cf(1.2,0.5,.5)*euler(-30,0,20),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(50),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,0,0)*angles(math.rad(0),math.rad(-30),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,0,0)*angles(math.rad(0),math.rad(30),math.rad(0)),.2)
end
so(150829983,DragonHead,.9,5)
for a=1,300 do
handleweld.C0 = cf(math.random(-5,5)/10,math.random(55,65)/10,math.random(65,75)/10)*angles(math.rad(50),math.rad(0),math.rad(0))
BlastEffect(BrickColor.new("White"),RootPart.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(0,math.random(-50,50),0),1,.2,1,2,0,2)
MagniDamage(Torso,"",30,1,1,5,"Knockdown",RootPart,.05,1)
swait()
end
attack = false
end

equipanim()

mouse.Button1Down:connect(function()
        if attack==false and attacktype==1 then
                attacktype=2
                attackone()
        elseif attack==false and attacktype==2 then
                attacktype=3
                attacktwo()
		elseif attack==false and attacktype==3 then
				attacktype=1
				attackthree()
        end
end)

mouse.KeyDown:connect(function(k)
k = k:lower()
if k=='m' then
if Character:FindFirstChild("moosick")~=nil then
if moosick.IsPlaying == true then
moosick:Stop()
elseif moosick.IsPaused == true then
moosick:Play()
end
elseif Character:FindFirstChild("moosick")==nil then
local moosick = Instance.new("Sound",Character)
moosick.Name = "moosick"
moosick.SoundId = "rbxassetid://608726256"
moosick.Looped = true
moosick.Volume = 1
moosick:Play()
end
end
if attack == false then
if k=='z' then
mudads()
elseif k=='x' then
smashdown()
elseif k=='c' then
laser()
elseif k=='v' then
smek()
elseif k=='b' then
yummy()
elseif k=='g' then
rawr()
end
end
end)

local sine = 0
local change = 1
local val = 0

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
--if Anim=="Idle" and attack==false then
--idle=idle+1
--else
--idle=0
--end
if idle>=1000 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.25,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.25,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,0,-.75)*euler(-0.5,1.57,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(0,0,0),.2)
handleweld.C0=clerp(handleweld.C0,cf(0-1*math.cos(sine/40),6-0.5*math.cos(sine/20),7)*angles(math.rad(-5+5*math.cos(sine/20)),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(20),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(-20),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Neck.C0=clerp(Neck.C0,necko*euler(0.3,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.1,0,1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.1,0,-1),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.6,1.57,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.8,-1.57,0)*euler(0,0,0),.2)
handleweld.C0=clerp(handleweld.C0,cf(0-1*math.cos(sine/40),6-0.5*math.cos(sine/20),7)*angles(math.rad(-5+5*math.cos(sine/20)),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4,-1,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4,-1,0)*angles(math.rad(-20),math.rad(10),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change=0.5
if attack==false then
Footsteps:Stop()
Footsteps2:Stop()
Humanoid.WalkSpeed=12
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(6),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*angles(math.rad(3+3*math.cos(sine/36)),math.rad(0),math.rad(0)),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(16-6*math.cos(sine/28))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-16+6*math.cos(sine/28))),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(16)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1.1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(24)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0-1*math.cos(sine/40),6-0.5*math.cos(sine/20),7)*angles(math.rad(-5+5*math.cos(sine/20)),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4-1*math.cos(sine/30),0,0-1*math.cos(sine/30))*angles(math.rad(0+8*math.cos(sine/30)),math.rad(0),math.rad(0-8*math.cos(sine/30))),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4+1*math.cos(sine/36),0,0+1*math.cos(sine/36))*angles(math.rad(0-12*math.cos(sine/36)),math.rad(0),math.rad(0-12*math.cos(sine/36))),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=1
--[[RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(15*math.cos(sine/10))),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
]]--
Humanoid.WalkSpeed=50
--Footsteps:Play()
--Footsteps2:Stop()
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+0.1*math.cos(sine/2.5))*angles(math.rad(10+1*math.cos(sine/2.5)),math.rad(0),math.rad(1-5*math.cos(sine/5))),.3)
--Neck.C0=clerp(Neck.C0,necko*euler(0+0.075*math.cos(sine/2.5),0,0)*angles(math.rad(0),math.rad(0),math.rad(1+5*math.cos(sine/5))),.3)
--Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
--RW.C0=clerp(RW.C0,cf(1.4+0.25*math.cos(sine/5),0.5+0.25*math.cos(sine/5),-0.2+0.5*math.cos(sine/5))*angles(math.rad(20-60*math.cos(sine/5)),math.rad(0),math.rad(-4+30*math.cos(sine/5))),.3)
--LW.C0=clerp(LW.C0,cf(-1.4+0.25*math.cos(sine/5),0.5-0.25*math.cos(sine/5),-0.2-0.5*math.cos(sine/5))*angles(math.rad(20+60*math.cos(sine/5)),math.rad(0),math.rad(4+30*math.cos(sine/5))),.3)
--RH.C0=clerp(RH.C0,cf(1,-1-0.1*math.cos(sine/5),0-0.25*math.cos(sine/5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0+50*math.cos(sine/5))),.3)
--LH.C0=clerp(LH.C0,cf(-1,-1+0.1*math.cos(sine/5),0+0.25*math.cos(sine/5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0+50*math.cos(sine/5))),.3)
--handleweld.C0=clerp(handleweld.C0,cf(0-1*math.cos(sine/40),6-0.5*math.cos(sine/20),7)*angles(math.rad(-5+5*math.cos(sine/20)),math.rad(0),math.rad(0)),.2)
--Handleweld.C0=clerp(Handleweld.C0,cf(4-.5*math.cos(sine/30),0,0-.5*math.cos(sine/30))*angles(math.rad(0+1*math.cos(sine/30)),math.rad(-30),math.rad(0-1*math.cos(sine/30))),.2)
--Handle2weld.C0=clerp(Handle2weld.C0,cf(-4+.5*math.cos(sine/36),0,0+.5*math.cos(sine/36))*angles(math.rad(0-3*math.cos(sine/36)),math.rad(30),math.rad(0-3*math.cos(sine/36))),.2)
--end
--elseif torvel>=22 and hitfloor~=nil then
--Anim="Run"
change=1
--if attack==false then
Footsteps:Stop()
Footsteps2:Play()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+0.1*math.cos(sine/2.5))*angles(math.rad(20+1*math.cos(sine/2.5)),math.rad(0),math.rad(0)),.3)
Neck.C0=clerp(Neck.C0,necko*euler(-0.2+0.075*math.cos(sine/2.5),0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(24)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(-24)),.3)
RH.C0=clerp(RH.C0,cf(1,-1-0.1*math.cos(sine/5),0-0.5*math.cos(sine/5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0+70*math.cos(sine/5))),.3)
LH.C0=clerp(LH.C0,cf(-1,-1+0.1*math.cos(sine/5),0+0.5*math.cos(sine/5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0+70*math.cos(sine/5))),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,6,7)*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(4-.5*math.cos(sine/30),0,0-.5*math.cos(sine/30))*angles(math.rad(0+1*math.cos(sine/30)),math.rad(-60),math.rad(0-1*math.cos(sine/30))),.2)
Handle2weld.C0=clerp(Handle2weld.C0,cf(-4+.5*math.cos(sine/36),0,0+.5*math.cos(sine/36))*angles(math.rad(0-3*math.cos(sine/36)),math.rad(60),math.rad(0-3*math.cos(sine/36))),.2)
end
end
end
end
