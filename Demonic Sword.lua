loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
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
Character=Player.Character 
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
Mouse=nil
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
Mouse=Player:GetMouse()
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



	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
a = Instance.new("ScreenGui")
a.Name="CooldownGUI"
a.Parent=Player.PlayerGui

b = Instance.new("Frame")
b.Parent=a
b.Visible=true
b.BackgroundTransparency=0.3
b.BackgroundColor3=Color3.fromRGB(0, 0, 0)
b.BorderColor3=Color3.fromRGB(255, 255, 255)
b.BorderSizePixel=3
b.Position=UDim2.new(0.7, 0, 0.75, 0)
b.Size=UDim2.new(0, 200, 0, 100)

c = Instance.new("Frame")
c.Parent=a
c.Visible=true
c.BackgroundTransparency=0.3
c.BorderColor3=Color3.fromRGB(255, 255, 255)
c.BorderSizePixel=3
c.BackgroundColor3=Color3.fromRGB(0, 0, 0)
c.Position=UDim2.new(0.875, 0, 0.75, 0)
c.Size=UDim2.new(0, 200, 0, 100)

d = Instance.new("Frame")
d.Parent=a
d.Visible=true
d.BackgroundTransparency=0.3
d.BorderColor3=Color3.fromRGB(255, 255, 255)
d.BorderSizePixel=3
d.BackgroundColor3=Color3.fromRGB(0, 0, 0)
d.Position=UDim2.new(0.875, 0, 0.95, 0)
d.Size=UDim2.new(0, 200, 0, 100)

e = Instance.new("Frame")
e.Parent=a
e.Visible=true
e.BackgroundTransparency=0.3
e.BorderColor3=Color3.fromRGB(255, 255, 255)
e.BorderSizePixel=3
e.BackgroundColor3=Color3.fromRGB(0, 0, 0)
e.Position=UDim2.new(0.7, 0, 0.95, 0)
e.Size=UDim2.new(0, 200, 0, 100)

f = Instance.new("Frame")
f.Parent=a
f.Visible=true
f.BackgroundTransparency=0.3
f.BorderColor3=Color3.fromRGB(255, 255, 255)
f.BorderSizePixel=3
f.BackgroundColor3=Color3.fromRGB(0, 0, 0)
f.Position=UDim2.new(1.675, 0, 0.95, 0)
f.Size=UDim2.new(0, 200, 0, 100)

g = Instance.new("Frame")
g.Parent=a
g.Visible=true
g.BackgroundTransparency=0.3
g.BorderColor3=Color3.fromRGB(255, 255, 255)
g.BorderSizePixel=3
g.BackgroundColor3=Color3.fromRGB(0, 0, 0)
g.Position=UDim2.new(1.675, 0, 0.75, 0)
g.Size=UDim2.new(0, 200, 0, 100)

b2=Instance.new("TextLabel")
b2.Parent=a
b2.BackgroundTransparency=1
b2.BorderColor3=Color3.fromRGB(139, 139, 139)
b2.BorderSizePixel=3
b2.Position=b.Position
b2.Size=UDim2.new(0, 200, 0, 100)
b2.Visible=true
b2.ZIndex=3
b2.Font="SourceSansItalic"
b2.FontSize="Size32"
b2.TextColor3=Color3.fromRGB(255, 255, 255)
b2.TextScaled=false
b2.TextStrokeColor3=Color3.fromRGB(139, 139, 139)
b2.TextTransparency=0
b2.Text=[[
Shock
(Z)
]]

c2=Instance.new("TextLabel")
c2.Parent=a
c2.BackgroundTransparency=1
c2.BorderColor3=Color3.fromRGB(139, 139, 139)
c2.BorderSizePixel=3
c2.Position=c.Position
c2.Size=UDim2.new(0, 200, 0, 100)
c2.Visible=true
c2.ZIndex=3
c2.Font="SourceSansItalic"
c2.FontSize="Size32"
c2.TextColor3=Color3.fromRGB(255, 255, 255)
c2.TextScaled=false
c2.TextStrokeColor3=Color3.fromRGB(139, 139, 139)
c2.TextTransparency=0
c2.Text=[[
Dominator
(X)
]]

d2=Instance.new("TextLabel")
d2.Parent=a
d2.BackgroundTransparency=1
d2.BorderColor3=Color3.fromRGB(139, 139, 139)
d2.BorderSizePixel=3
d2.Position=d.Position
d2.Size=UDim2.new(0, 200, 0, 100)
d2.Visible=true
d2.ZIndex=3
d2.Font="SourceSansItalic"
d2.FontSize="Size32"
d2.TextColor3=Color3.fromRGB(255, 255, 255)
d2.TextScaled=false
d2.TextStrokeColor3=Color3.fromRGB(139, 139, 139)
d2.TextTransparency=0
d2.Text=[[
Eliminator
(V)
]]

e2=Instance.new("TextLabel")
e2.Parent=a
e2.BackgroundTransparency=1
e2.BorderColor3=Color3.fromRGB(139, 139, 139)
e2.BorderSizePixel=3
e2.Position=e.Position
e2.Size=UDim2.new(0, 200, 0, 100)
e2.Visible=true
e2.ZIndex=3
e2.Font="SourceSansItalic"
e2.FontSize="Size32"
e2.TextColor3=Color3.fromRGB(255, 255, 255)
e2.TextScaled=false
e2.TextStrokeColor3=Color3.fromRGB(139, 139, 139)
e2.TextTransparency=0
e2.Text=[[
Obliteration
(C)
]]	
	
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size,material)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material=material
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
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

local Color = BrickColor.new("Dark grey")
	
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really black")
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
w2.BrickColor = BrickColor.new("Really red")
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=-math.huge
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
				local cam = game.Workspace.CurrentCamera
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart=part(1,workspace,0,0,BrickColor.new("Really black"),"Effect",vt(0,0,0),"Granite")
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

mod3 = Instance.new("Model",RightLeg)

function Stomp()
local function fpart(formfactor,parent,reflectance,transparency,brickcolor,name,size,material)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material=material
fp:BreakJoints()
return fp 
end 
local function fmesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
	local part = fpart("Custom",mod3,0,0.7,BrickColor.new("Crimson"),"Wave",vt(0.2,0.2,0.2),"Neon")
	part.Anchored = true
    local mesh = fmesh("SpecialMesh",part,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(25,25,25))
    local part2 = fpart("Custom",mod3,0,0.7,BrickColor.new("Crimson"),"Wave",vt(0.2,0.2,0.2),"Neon")
	part2.Anchored = true	
	local mesh2 = fmesh("SpecialMesh",part2,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(15,15,15))
    local part3 = fpart("Custom",mod3,0,0.7,BrickColor.new("Crimson"),"Wave",vt(0.2,0.2,0.2),"Neon")
    part3.CFrame=RightLeg.CFrame*CFrame.new(0,-3,0)
	part3.Anchored = true	
	local mesh3 = fmesh("SpecialMesh",part3,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(12,12,12))
    MagniDamage(part,part,30,10,15,math.random(10,20),"Knockdown")
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(2.8,2.8,2.8)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
end

model = Instance.new("Model",Character)
model.Name = "Realm"

local handle=part(1,model,0,0,BrickColor.new("Really black"),"Handle",vt(0.2, 1.5, 0.2),"Granite")
local prt1=part(1,model,0,0,BrickColor.new("Really black"),"Part1",vt(1.22, 7.2, 0.22),"Granite")
local prt2=part(1,model,0,0,BrickColor.new("Maroon"),"Part2",vt(0.22, 2.4, 0.22),"Neon")
local prt3=part(1,model,0,0,BrickColor.new("Maroon"),"Part3",vt(0.42, 0.85, 1.05),"Neon")
local prt4=part(1,model,0,0,BrickColor.new("Really black"),"Part4",vt(0.22, 1.5, 0.22),"Granite")
local prt5=part(1,model,0,0,BrickColor.new("Really black"),"Part5",vt(0.44, 0.6, 0.8),"Granite")
local prt6=part(1,model,0,0,BrickColor.new("Maroon"),"Part6",vt(1.6, 1.4, 0.2),"Neon")
local prt7=part(0,model,0,0,BrickColor.new("Really black"),"Part7",vt(0.4, 0.4, 0.4),"Granite")
local prt8=part(1,model,0,0,BrickColor.new("Really black"),"Part8",vt(0.4, 0.3, 0.22),"Granite")
local prt9=part(1,model,0,0,BrickColor.new("Really black"),"Part9",vt(0.4, 1.3, 1.5),"Granite")
local prt10=part(1,model,0,0,BrickColor.new("Maroon"),"Part10",vt(0.3, 1.5, 1.7),"Neon")
local prt11=part(1,model,0,0,BrickColor.new("Maroon"),"Part11",vt(0.4, 1.4, 0.22),"Neon")
local prt13=part(1,model,0,0,BrickColor.new("Maroon"),"Part13",vt(1.3, 7.3, 0.2),"Neon")
local prt15=part(1,model,0,0,BrickColor.new("Maroon"),"Part15",vt(1, 0.5, 0.22),"Neon")
local prt16=part(1,model,0,0,BrickColor.new("Maroon"),"Part16",vt(1, 0.5, 0.22),"Neon")

local handlemesh=mesh("SpecialMesh",handle,"FileMesh","http://www.roblox.com/asset/?id=1033714",vt(0,0,0),vt(0.2,5,0.2))
local msh2=mesh("SpecialMesh",prt2,"FileMesh","http://www.roblox.com/asset/?id=1033714",vt(0,0,0),vt(0.2, 5, 0.2))
local msh3=mesh("SpecialMesh",prt3,"Cylinder","",vt(0,0,0),vt(1,1,2))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=1033714",vt(0,0,0),vt(0.2, 5, 0.2))
local msh5=mesh("SpecialMesh",prt5,"Cylinder","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("SpecialMesh",prt6,"Sphere","",vt(0,0,0),vt(1,1,1))
local msh8=mesh("SpecialMesh",prt8,"FileMesh","http://www.roblox.com/asset/?id=192551369",vt(0,0,0),vt(0.5, 0.5, 0.2))
local msh9=mesh("SpecialMesh",prt9,"Cylinder","",vt(0,0,0),vt(1, 1, 2)) 
local msh10=mesh("SpecialMesh",prt10,"Cylinder","",vt(0,0,0),vt(1, 1, 2)) 

local handleweld=weld(handle,handle,RightArm,euler(89.75, 0, 0)*cf(0,1,0))
local wld1=weld(prt1,prt1,handle,euler(0, 80.1, 0)*cf(-0, 4.95, -0.02))
local wld2=weld(prt2,prt2,handle,euler(0, 80.1, 0)*cf(0.005, 0.15, -0.005))
local wld3=weld(prt3,prt3,handle,euler(0, 12.5, 0)*cf(-0, 1.303, -0.028))
local wld4=weld(prt4,prt4,handle,euler(0, 80.1, 0)*cf(0.005, 0.4, -0.005))
local wld5=weld(prt5,prt5,handle,euler(0, 12.5, 0)*cf(-0, 1.303, -0.028))
local wld6=weld(prt6,prt6,handle,euler(0, 80.1, 0)*cf(-0, 8.8, -0.02))
local wld7=weld(prt7,prt7,handle,euler(0, 80.1, 0)*cf(0.005, -1.8, -0.005))
local wld8=weld(prt8,prt8,handle,euler(0, -80.1, 0)*cf(-0, 1.6, -0.02))
local wld9=weld(prt9,prt9,handle,euler(0, 12.5, 0)*cf(-0, 1.303, -0.028))
local wld10=weld(prt10,prt10,handle,euler(0, 12.5, 0)*cf(-0, 1.303, -0.028))
local wld11=weld(prt11,prt11,handle,euler(0, 80.1, 0)*cf(-0.113, 8.501, -0.01))
local wld13=weld(prt13,prt13,handle,euler(0, 80.1, 0)*cf(-0, 4.95, -0.02))
local wld15=weld(prt15,prt15,handle,euler(0, 80.1, 0)*cf(-0.011, 3.903, 0))
local wld16=weld(prt16,prt16,handle,euler(0, 80.1, 0)*cf(-0.011, 5.903, 0))

function attackone()
attack = true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,5,13,5,"Normal",RootPart,.2,1,3) 
end) 
local fx=prt1.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(100)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.4)
end
so("http://www.roblox.com/asset/?id=199145841",handle,1,.9)
for i = 0,1,0.1 do
swait()
local blcf = prt1.CFrame*CFrame.new(0,.5,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 10
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),0.4)
end
attack = false
bounce=false
scfr=nil
fx:disconnect()
con:disconnect()
end

function attacktwo()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,5,15,5,"Normal",RootPart,.2,1,3) end)
local fx=prt1.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i=0,1,.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-70)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-10)),0.4)
end
so("http://www.roblox.com/asset/?id=199145887",handle,1,1)
for i = 0,1,0.1 do
swait()
local blcf = prt1.CFrame*CFrame.new(0,.5,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 10
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-40),math.rad(-10)),0.4)
end
scfr=nil
attack=false
bounce=false
con:disconnect()
fx:disconnect()
end

function Wave()
local function wpart(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
		NoOutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,4,31,5,"Normal",RootPart,.2,1,3) end) 
local fx=prt1.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i=0,1,.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.4)
end
so("http://www.roblox.com/asset/?id=199145913",handle,1,.9)
local hit,pos=rayCast(prt1.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
local ref=wpart(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
local function BlastEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=wpart(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame = cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.05 do
wait()
prt.Transparency=i
msh.Scale=msh.Scale+vt(x2,y2,z2)
end
prt.Parent=nil
end))
end
local function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=wpart(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 
for i = 5,1,-1 do
BlastEffect(BrickColor.new("Maroon"),cf(pos),1,1,1,1,1,1)
MagicCircle(BrickColor.new("Maroon"),cf(pos),3,3,3,5,5,5,0.05)
swait()
end
MagniDamage(ref,ref,13,15,25,math.random(10,20),"Knockdown")
end
for i = 0,1,0.1 do
swait()
local blcf = prt1.CFrame*CFrame.new(0,.5,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.4)
end
attack=false
bounce=false
scfr=nil
con:disconnect()
fx:disconnect()
end

function Charge()
attack = true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,10,40,50,"Normal",RootPart,.2,1,3) end)
local fx=prt1.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i = 0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-5),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5, 0.8, 0.2) * angles(math.rad(5), math.rad(-15), math.rad(112)), 0.3)
LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1.1,-1,0)*angles(math.rad(-5),math.rad(120),math.rad(-8)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(5),math.rad(-60),math.rad(0)),.3)
end
so("http://www.roblox.com/asset/?id=199145433",prt1,1,1.1)
local v=it("BodyVelocity",Torso)
v.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
v.velocity=RootPart.CFrame.lookVector*100
	function ppart(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
		NoOutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
for i=5,1,-1 do
for i=1,4 do
local prt=ppart(3,workspace,"SmoothPlastic",0,0,"Maroon","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Position=prt1.Position
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1,1,1))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1,1,1)
end
Part.Parent=nil
end),prt,msh)
MagniDamage(prt,prt,15,5,15,-10,"Normal")
end
swait(3)
end
local hitbox = prt1.Touched:connect(function(hit)
Damagefunc(prt1,hit,5,10,15,"Normal",RootPart,.2,1,3)
end)
hitbox:disconnect()
for i = 0,1,0.1 do
swait()
local blcf = prt1.CFrame*cf(0,0,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(60), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
v.Parent=nil
scfr=nil
attack = false
bounce=false
con:disconnect()
fx:disconnect()
end

function Execution()
	local function spart(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
		NoOutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
attack=true
local con1=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,12,25,100,"Normal",RootPart,.2,1) 
end) 
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
end
so("http://roblox.com/asset/?id=92597369",prt1,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = prt1.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',prt1,1,0.8)
                   hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
local blcf = prt1.CFrame*CFrame.new(0,.5,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-20),math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
end
attack=false
con1:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

function Destroyer()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=prt1.Touched:connect(function(hit) 
Damagefunc(prt1,hit,4,31,5,"Normal",RootPart,.2,1,3) end) 
local fx=prt1.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i=0,1,.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.4)
end
Stomp()
for i = 0,1,0.1 do
swait()
local blcf = prt1.CFrame*CFrame.new(0,.5,0)
if scfr and (prt1.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.4)
end
attack=false
bounce=false
scfr=nil
con:disconnect()
fx:disconnect()
end

Mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attack=true
			attacktype=2
			attackone()
		elseif attacktype==2 then
			attack=true
			attacktype=1
			attacktwo()	
		end
	end
end)

skillattack1 = false
skillattack2 = false
skillattack3 = false
skillattack4 = false

Mouse.KeyDown:connect(function(k)
k=k:lower()
if skillattack1 == false and attack == false and k == 'z' then
b.Size=UDim2.new(0, 0, 0, 100)
Wave()
for i = 1, 50 do
	skillattack1=true
	b.Size=b.Size+UDim2.new(0, 4, 0, 0)
	wait()
end
skillattack1=false
elseif skillattack2 == false and attack == false and k == 'v' then
d.Size=UDim2.new(0, 0, 0, 100)
Execution()
for i = 1, 200 do
	skillattack2=true
	d.Size=d.Size+UDim2.new(0, 1, 0, 0)
	wait()
end
skillattack2=false
elseif skillattack3 == false and attack == false and k == 'c' then
e.Size=UDim2.new(0, 0, 0, 100)
Charge()
for i = 1, 50 do
	skillattack3=true
	e.Size=e.Size+UDim2.new(0, 4, 0, 0)
	wait()
end
skillattack3=false
elseif skillattack4 == false and attack == false and k == 'x' then
c.Size=UDim2.new(0, 0, 0, 100)
Destroyer()
for i = 1, 100 do
	skillattack4=true
	c.Size=c.Size+UDim2.new(0, 2, 0, 0)
	wait()
end
skillattack4=false
end
end)


local sine = 0
local change = 1
local val = 0

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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-1.5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(20)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(25)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-25)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-10),math.rad(-90),math.rad(-20)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(10), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-5)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
--local TheCF=Thing[1].CFrame
--Thing[1].CFrame=TheCF
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
--Thing[3]=Thing[3]+Delay
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
--print(Thing[1].Transparency)
 
--[[local prt=part(3,workspace,0,0,BrickColor.new("White"),"Part",vt(1,1,1))
prt.Anchored=true
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()
yval=math.random()
zval=math.random()
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.05,x,y,z,xval,yval,zval}]]
--[[coroutine.resume(coroutine.create(function(Part,Mesh,Frame,xvaal,yvaal,zvaal)
Part.CFrame=cf(Frame)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
for i=0,1,0.05 do
swait()
xvaal=xvaal-0.1
yvaal=yvaal-0.1
zvaal=zvaal-0.1
Mesh.Scale=vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,cff,xval,yval,zval)]]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end