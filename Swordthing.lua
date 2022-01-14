loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

local ToolName = "MeshPartAccessory"
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
player=nil 
mana=0

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
w1.Material = "Neon"
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
w2.Material = "Neon"
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
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
                local Damage=math.random(minim,maxim)
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
                --h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                --h.Health=h.Health-(Damage/2)
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
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.296501815, 5.18878126, 0.296499223))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10050106, -1.63029861, -0.888347149, -1, 0, 0, 0, 0, -1, -0, -0.999999881, -0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really red","Hitbox",Vector3.new(0.200000003, 6.98600721, 2.19299841))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -3.93773937, 2.93521118, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.70486319, 3.70584869, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.815379143, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.03775609, 0.311326832, 1.18599701))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40932465, 3.81469727e-006, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.34825706, -1.8123436, 0.999997854, 1.3482402e-007, 1.3200642e-007, -1.99253947e-009, 0.707105041, -0.707106531, -1.88677433e-007, 0.7071051, 0.707106531))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 1.33309555, -1.79717827, 0.999997854, 7.14049833e-008, 2.88419812e-007, -2.54434127e-007, 0.707104981, 0.707106411, -1.53452262e-007, -0.707104921, 0.707106352))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.44612718, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.37199664, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.14962149, -2.81639862, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.593003511, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.18598497, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.59437418, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.55661559, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.8536377, 0.000444412231, -6.91413879e-006, -2.9802333e-008, -0.999999762, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.0013752, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.22374678, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80853271, 0.000414848328, 3.47587585, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517091e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00040435791, -1.87283707, -3.30593491, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15766907, 0.000414848328, -0.0542945862, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.13355285e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000381469727, 0.518871069, 4.00193787, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768051, 0.000414848328, 0.168071747, 1.73149047e-007, -0.866024673, 0.499999404, 1, 1.09283775e-007, -1.57012963e-007, 8.13355712e-008, 0.499999523, 0.866024494))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9568634, 0.000414848328, 4.06890678, 1.29209454e-007, -0.866017103, -0.499994904, 0.99999994, 2.00155014e-007, -8.82613804e-008, 1.7651513e-007, -0.499995023, 0.866016924))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.6042366, 0.000414848328, 1.40539384, 7.28354408e-008, -0.999999523, 2.98026634e-008, 1, 7.28354905e-008, -1.137834e-007, 1.13783528e-007, 2.9802635e-008, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15763474, 0.000415802002, -0.721405029, 8.67096972e-008, -0.866025329, 0.499999881, 1, 3.44270887e-008, -1.13789923e-007, 8.13314571e-008, 0.5, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95671082, 0.000415802002, 2.80871201, 4.27689706e-008, -0.86602515, -0.499999851, 0.999999762, 1.25296964e-007, -1.31482579e-007, 1.76515783e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768814, 0.000414848328, 0.538698196, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.1335557e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000418663025, -4.66182327, -2.80873108, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587387, 0.000415802002, -0.721378326, 8.67091714e-008, -0.866024256, 0.499999464, 0.999999046, 3.4425458e-008, -1.13791891e-007, 8.13342709e-008, 0.499999762, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80846024, 0.000415802002, 2.8087101, 4.27693685e-008, -0.86602515, -0.499999851, 0.999999762, 1.25295941e-007, -1.31480022e-007, 1.76513069e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15765762, 0.000414848328, -0.27664566, 1.73148948e-007, -0.866023302, 0.499998629, 1, 1.09283704e-007, -1.57012749e-007, 8.13356706e-008, 0.499998748, 0.866023123))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000422477722, -5.40308189, -2.95698166, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -1.13156891, -3.15768433, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80859375, 0.000414848328, 3.69829178, 1.29208786e-007, -0.866024613, -0.499999523, 1, 2.00156563e-007, -8.82638247e-008, 1.76517119e-007, -0.499999642, 0.866024435))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.741254389, 0.296501786, 0.889497578))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.55724716, 0.000415802002, 0.593008757, -2.98023437e-008, -1, -0, 1, -2.98023437e-008, 0, 0, 0, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80845261, 0.000414848328, 3.25345612, 1.29208672e-007, -0.866023123, -0.499998778, 0.999999762, 2.00156279e-007, -8.82637536e-008, 1.76517077e-007, -0.499998778, 0.866023183))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587006, 0.000414848328, 0.538694382, 1.73149331e-007, -0.866016984, 0.499995172, 0.99999994, 1.09285118e-007, -1.57010405e-007, 8.13343917e-008, 0.499995291, 0.866016805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80862808, 0.000414848328, 4.06892586, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517119e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 2.89088011, 3.26107788, -0.999993324, -1.62995764e-006, 4.10754041e-007, -2.91542648e-007, 1.04308128e-007, -0.999998927, 1.61505602e-006, -0.999993324, -2.53319683e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.89087987, -3.26107788, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 4.00277376, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.00343322754, -0.573273778, 0.999997854, 1.29937892e-008, 1.07842467e-007, -1.29937483e-008, 0.999997437, 0, -1.07842268e-007, 5.96046448e-008, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.26012194, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.815383554, -2.81639481, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600714, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.03774309, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.0377425, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.70486319, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.0377562, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.2978766, 3.26107407, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.2978785, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.89088058, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600726, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.37198853, 3.11284637, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.00137448, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.5943768, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.0377562, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.29787683, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.07551241, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.00276041, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379918, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.9650178, 0.889497638))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.4475174, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.00148392, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 1.33425784, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.9650178, 0.444748878))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -3.84435654, 4.01723862, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379977, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.85279465, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.70486307, 2.96461105, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.29927588, 0.741248131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -4.5114727, 4.01726913, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.326151937, 0.200000003, 0.355799079))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.03784561, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.33425796, 0.296501786, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40934753, 3.81469727e-006, -6.91413879e-006, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.03752136, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, 0.444754362, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40908051, 0.000387191772, -6.91413879e-006, -2.98023259e-008, -0.999999523, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.96453476, 4.67300415e-005, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, -0.444758654, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.00191879, 0.00050163269, 0.815378904, -2.98023437e-008, -0.999999642, -0, 0.999999642, -2.98023437e-008, 0, 0, 0, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.444748729))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45595932, 0.000414848328, 1.25711417, 7.28358245e-008, -0.999999046, 2.98032496e-008, 1, 7.28358458e-008, -1.13780651e-007, 1.13780807e-007, 2.98032212e-008, 0.999998808))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -2.74229431, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.74255371, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.48226929e-005, 2.89077377, -2.43186951e-005, 0.999999642, 1.29942332e-008, 1.07873738e-007, -1.29943079e-008, 0.999999642, 7.15448891e-007, -1.07873717e-007, -7.15448834e-007, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374794006, -0.963628292, 4.00193787, -0.999993443, -3.16762635e-006, -1.49011381e-008, -1.49021755e-008, 8.47403953e-007, -0.999998868, 3.16762657e-006, -0.999993384, -7.8780505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000382423401, -0.88951993, -3.11242676, 0.999993205, 1.42891167e-006, -3.27825433e-007, -4.32134527e-007, 1.02892602e-006, -0.999998927, -1.47361538e-006, 0.999993265, 9.69328653e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000383377075, 0.518874645, -3.11242294, -0.999993443, -1.32620335e-006, 2.76574696e-007, 3.95783559e-007, -9.85657607e-007, 0.999998868, -1.37090683e-006, 0.999993265, 9.26059613e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60424805, 0.000413894653, 2.51726198, 1.59275899e-007, -0.999999821, 1.49011584e-007, 1, 1.59275913e-007, -1.1378453e-007, 1.1378458e-007, 1.49011612e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000409126282, -2.96186352, -3.45602417, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.55362201, 1.59275089e-007, -0.999997139, -5.96043996e-008, 1, 1.59274975e-007, -1.13784445e-007, 1.13784942e-007, -5.96045808e-008, 0.999996901))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598221, 0.000413894653, 2.36899614, 1.59275146e-007, -0.999998569, -2.98022584e-008, 1, 1.59275189e-007, -1.13784601e-007, 1.137849e-007, -2.98023508e-008, 0.999998331))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.99837613, 1.59275089e-007, -0.99999845, -5.96045027e-008, 1, 1.59275174e-007, -1.13784559e-007, 1.13784928e-007, -5.96046306e-008, 0.999998212))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598602, 0.000414848328, 1.77599883, 1.59275174e-007, -0.999998808, -2.98022726e-008, 1, 1.59275203e-007, -1.13784644e-007, 1.13784857e-007, -2.98023366e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000412940979, -3.70311022, -3.60429001, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.90172958, -0.639986753, 0.999993563, 1.29944793e-008, 1.07850958e-007, -1.29944917e-008, 0.999992311, 1.25175063e-006, -1.0785029e-007, -1.07292954e-006, 0.999998868))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.593003571, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.0706977844, -0.573273659, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.596420288, -0.57327354, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.18922043, -0.57327342, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.737804413, -0.573273778, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.62124634e-005, -1.92287064, -0.639983892, 0.999997854, 1.29942155e-008, 1.07847583e-007, -1.29942519e-008, 0.999997437, 7.15275121e-007, -1.07847377e-007, -6.55669055e-007, 0.999999464))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.33082199, -0.573274136, 0.999993563, 1.2994124e-008, 1.07846695e-007, -1.29940725e-008, 0.999992311, 6.55663769e-007, -1.07846034e-007, -4.76846481e-007, 0.999998868))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))

for _,v in pairs(m:GetChildren()) do
	if v:IsA("BasePart") then
		v.Transparency = 1
	end
end

local athp = Instance.new("Attachment",Handle)
local atho = Instance.new("Attachment",Handle)

Character[ToolName].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
Character[ToolName].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
athp.Position = Vector3.new(0,1,0.2)
atho.Rotation = Vector3.new(-132.5,90,0)

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(10),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.6) 
so("http://roblox.com/asset/?id=231917871",Hitbox,1,0.8) 
 for i=0,1,0.1 do
                swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(-70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
        attack=false
con1:disconnect()
scfr = nil
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)

        end

for i=0,1,1 do
swait()
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.7) 
so("http://www.roblox.com/asset/?id=234365573",Hitbox,1,0.7)
for i=0,1,0.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
end
con1:disconnect()
attack=false
scfr = nil
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.4) 
so("http://www.roblox.com/asset/?id=234365549",Hitbox,1,0.6)
for i=0,1,.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
scfr = nil
end

function CyanMoon()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(120),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
for i=1,4 do
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.8)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-60)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,-6*i),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
scfr = nil
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"SmoothPlastic",0,0,"Really red","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt)
end

function Execution() --HEUAHUEHAUEHAUHUEAHUAEHUAHEUAHEUH
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,90,100,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        for i = 1,20 do
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                   hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
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
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
end
attack=false
con1:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
               elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			CyanMoon()
		end
	elseif k=='e' then
		if attack==false then
			Execution()
		end
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
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
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end
game.Workspace.non.Humanoid.WalkSpeed = 21.5
