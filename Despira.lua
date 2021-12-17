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
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local cos = math.cos
local pi = math.pi
local rclcount = 0
local rcl = 0
local rclcounttime = 50
local rclcountspeed = 1
local player = game.Players.LocalPlayer
local pchar = game.Workspace.non
local torso = pchar.Torso
local mouse = player:GetMouse()
local attack = false
local combo = 0
pchar.Archivable=true
Cols={"Black","Really black","Royal purple","Alder","Magenta"}


function stick(x, y)
	weld = Instance.new("Motor") 
	weld.Name='mot'
	weld.Part0 = x
	weld.Part1 = y
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end

do
    local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
    local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
    local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

    function clerp(a,b,t)
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)}
        local ax, ay, az = a.x, a.y, a.z
        local bx, by, bz = b.x, b.y, b.z

        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
    end
end    

Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p.Locked=true
    p:BreakJoints()
    return p
end

wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
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
        print("unreachable")
    end
    local len1 = (c-a):Dot((b-a).unit)
    local len2 = (b-a).magnitude - len1
    local width = (a + (b-a).unit*len1 - c).magnitude
    local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
    local list = {}
    if len1 > 0.01 then
        local w1 = wPart(0,0,0,'Really black',0.5,false,true,pchar)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Mesh(w1,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w1.Transparency=w1.Transparency+0.03
            end
        end)
        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        table.insert(list,w1)
    end
    if len2 > 0.01 then
        local w2 = wPart(0,0,0,'Really black',0.5,false,true,pchar)
        local sz = Vector3.new(0.2, width, len2) 
        w2.Size = sz
        local sp = Mesh(w2,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w2.Size
        w2:BreakJoints()
        w2.Anchored = true
        w2.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w2.Transparency=w2.Transparency+0.03
            end
        end)
        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        table.insert(list,w2)
    end
    return unpack(list)
end

function mgblock(pa,cfr,tm,col1,col2,sz,wa)
    local cols={col1,col2}
    Spawn(function()
        for i=1,tm do
            local a= Part(1,1,1,cols[math.random(1,2)],0,false,true,pchar)
            curre=a
            v1,v2,v3=sz.x,sz.y,sz.z
            local m= Mesh(a,3,v1,v2,v3)
            a.CFrame=pa.CFrame*cfr*CFrame.Angles(math.random(),math.random(),math.random())
            Spawn(function()
                while wait() do
                    if a.Transparency >= 1 then a:Destroy() break end
                    m.Scale=m.Scale-Vector3.new(.1,0.1,0.1)
                    a.CFrame=a.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.1,0)
                    a.Transparency=a.Transparency+0.05
                end
            end)
            wait(wa)
        end
    end)
    return curre
end

function trail(p,t,h)
    Spawn(function()
        local blcf = p.CFrame
        local scfr = blcf
        for i=1,t do
            local blcf = p.CFrame
            if scfr and (p.Position-scfr.p).magnitude > .1 then
                local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
                if a then game.Debris:AddItem(a,1) end 
                if b then game.Debris:AddItem(b,1) end
                local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
                if a then game.Debris:AddItem(a,1) end 
                if b then game.Debris:AddItem(b,1) end
                scfr = blcf
            elseif not scfr then
                scfr = blcf
            end
            game:service'RunService'.RenderStepped:wait()
        end
        scfr=nil
    end)
end

function cloneefx()
    for _,v in pairs(pchar:GetChildren()) do
        if v.ClassName=="Part" then
            local efx=v:Clone()
            efx.CanCollide=true
            efx.Anchored=true
            efx.Parent=workspace
            efx.BrickColor=BrickColor.new("Really black")
            efx:BreakJoints()
            Spawn(function()
                for i=1,10 do wait(.05)
                    efx.Transparency=efx.Transparency+.1
                end
                efx:Destroy()
            end)
        end
    end
end

so = function(id,par,lo,pi,tm)
    local s = Instance.new("Sound",par)
    s.Looped=lo
    s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id
    s:play()
    s.Volume=10
    game.Debris:AddItem(s,tm)
    return s
end

function posfix(nom)
    Spawn(function()
        local bg=Instance.new("BodyGyro",pchar.Torso)
        bg.maxTorque=Vector3.new(0,math.huge,0)
        bg.P=5000
        bg.D=100
        bg.cframe=workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(0,nom,0)
        wait(.5)
        bg:Destroy()
    end)
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end

Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

anglespeed = 1

angle = 0

local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end

function explosion(col1,col2,cfr,sz,rng,dmg)
    local a= Part(1,1,1,col1,.5,false,true,pchar)
    local a2= Part(1,1,1,col2,.5,false,true,pchar)
    local a3= Part(1,1,1,col2,.5,false,true,pchar)
    v1,v2,v3=sz.x,sz.y,sz.z
    local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
    local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
    local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
    a.CFrame=cfr
    a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
    a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pchar.Name then
                    v.Humanoid.Health=v.Humanoid.Health-dmg
                    v.Torso.Velocity=Vector3.new(math.random(-dmg*2,dmg*2),dmg*3,math.random(-dmg*2,dmg*2))
                end
            end
        end
    end
    Spawn(function()
        while true do
            wait()
            if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
            m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
            m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
            m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
            a2.CFrame=a2.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))
            a3.CFrame=a3.CFrame*CFrame.Angles(-math.rad(2),-math.rad(2),-math.rad(2))
            a.Transparency=a.Transparency+0.05
            a2.Transparency=a2.Transparency+0.05
            a3.Transparency=a3.Transparency+0.05
        end
    end)
end

function tmdmg(tm,pa,dmg,rng)
        Spawn(function()
        for i=1,tm do wait()
            for i,v in pairs(workspace:children()) do
                if v:IsA("Model") and v:findFirstChild("Humanoid") then
                    if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                        if (v:findFirstChild("Torso").Position - pa.Position).magnitude < rng and v.Name ~= pchar.Name then
                            v.Humanoid.Health=v.Humanoid.Health-dmg
                        end
                    end
                end
            end
        end
    end)
end

Lerp = {
    Number = function(C1,C2,inc)
        return C1 + (C2 - C1) * inc
    end;
    CFrame = function(a,b,m)
		local c,d={a:components()},{b:components()}
		table.foreach(c,function(a,b)c[a]=c[a]+(d[a]-c[a])*m end)
		return CFrame.new(unpack(c))
	end;
}

local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end

local Neck = genWeld(pchar.Torso,pchar.Head)
Neck.C0 = CFrame.new(0,1,0)
Neck.C1 = CFrame.new(0,-0.5,0)
local LeftShoulder = genWeld(pchar.Torso,pchar['Left Arm'])
LeftShoulder.C0 = CFrame.new(-1,0.5,0)
LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
local RightShoulder = genWeld(pchar.Torso,pchar['Right Arm'])
RightShoulder.C0 = CFrame.new(1,0.5,0)
RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
local LeftHip = genWeld(pchar.Torso,pchar['Left Leg'])
LeftHip.C0 = CFrame.new(-1,-1,0)
LeftHip.C1 = CFrame.new(-0.5,1,0)
local RightHip = genWeld(pchar.Torso,pchar['Right Leg'])
RightHip.C0 = CFrame.new(1,-1,0)
RightHip.C1 = CFrame.new(0.5,1,0)
local RootJoint = genWeld(pchar.HumanoidRootPart,pchar.Torso)
RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)

local m = Instance.new("Model")
m.Name = "Model"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Royal purple")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p1.CFrame = CFrame.new(-4.38250017, 5.90899992, 11.0679998, -3.24902021e-006, 9.58114477e-010, -0.999992907, -7.26728331e-006, -0.999994278, -8.0171958e-010, -0.999992251, 7.50569825e-006, 3.24877897e-006)
p1.Anchored = true
p1.CanCollide = false
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.0900000036, 1.5, 0.200000003)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p2.CFrame = CFrame.new(-4.78348494, 1.20046949, 11.0674896, 2.03024854e-007, 0.999994814, 2.68895456e-005, -6.45878536e-005, -2.68897929e-005, 0.999998271, 0.999994814, -2.04498548e-007, 6.45876353e-005)
p2.Anchored = true
p2.CanCollide = false
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Royal purple")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p3.CFrame = CFrame.new(-4.78348494, 1.20046949, 11.0674896, 1.35292976e-005, 0.999994814, 2.33750106e-005, 0.499945492, -2.70082237e-005, 0.866054654, 0.866051197, -3.0624193e-008, -0.499943763)
p3.Anchored = true
p3.CanCollide = false
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Royal purple")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p4.CFrame = CFrame.new(-3.9834733, 1.20044112, 11.0675144, 1.90376704e-005, 0.999994814, 1.91206054e-005, 0.707060516, -2.69822558e-005, 0.707149625, 0.707147956, 5.72263765e-008, -0.707058728)
p4.Anchored = true
p4.CanCollide = false
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p5.CFrame = CFrame.new(-3.9834733, 1.20044112, 11.0675144, 2.03024854e-007, 0.999994814, 2.68895456e-005, -6.45878536e-005, -2.68897929e-005, 0.999998271, 0.999994814, -2.04498548e-007, 6.45876353e-005)
p5.Anchored = true
p5.CanCollide = false
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Royal purple")
p6.Material = Enum.Material.SmoothPlastic
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.600000143, 1)
p6.CFrame = CFrame.new(-4.38349676, 0.700476408, 11.0674639, 2.03024811e-007, 2.68621734e-005, -0.999994993, -6.45878681e-005, 0.999998331, 2.68624135e-005, 0.999994993, 6.45876644e-005, 2.04505866e-007)
p6.Anchored = true
p6.CanCollide = false
b6 = Instance.new("CylinderMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(1, 1.5, 0.100000001)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Royal purple")
p7.Material = Enum.Material.SmoothPlastic
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.CFrame = CFrame.new(-4.38347578, 0.100488186, 11.0674219, 0.999994993, 2.68598014e-005, -2.10421803e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, 2.08939497e-007, 6.46425033e-005, 0.999994993)
p7.Anchored = true
p7.CanCollide = false
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=3270017"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.80000037, 0.200000003)
p8.CFrame = CFrame.new(-4.44335222, 6.31963682, 11.0678616, -2.03024811e-007, 2.68621734e-005, 0.999994993, 6.45878681e-005, 0.999998331, -2.68624135e-005, -0.999994993, 6.45876644e-005, -2.04505866e-007)
p8.Anchored = true
p8.CanCollide = false
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.400000006, 1, 0.600000024)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
p9.CFrame = CFrame.new(-4.38343573, 1.70038664, 11.0675249, 2.03024811e-007, 2.68621734e-005, -0.999994993, -6.45878681e-005, 0.999998331, 2.68624135e-005, 0.999994993, 6.45876644e-005, 2.04505866e-007)
p9.Anchored = true
p9.CanCollide = false
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.449999988, 1.10000002, 0.150000006)
handl = Instance.new("Part", m)
handl.BrickColor = BrickColor.new("Really black")
handl.Material = Enum.Material.SmoothPlastic
handl.Name = "handle"
handl.FormFactor = Enum.FormFactor.Custom
handl.Size = Vector3.new(0.200000003, 0.600000024, 0.200000003)
handl.CFrame = CFrame.new(-4.38349676, 0.700476408, 11.0674639, 2.03024811e-007, 2.68621734e-005, -0.999994993, -6.45878681e-005, 0.999998331, 2.68624135e-005, 0.999994993, 6.45876644e-005, 2.04505866e-007)
handl.Anchored = true
handl.CanCollide = false
b10 = Instance.new("BlockMesh", handl)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.5, 1.5, 0.150000006)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.SmoothPlastic
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
p11.CFrame = CFrame.new(-4.3834815, 1.20045376, 11.0674934, 0.000361636019, 0.000304358749, -0.999994814, -0.999998271, -0.000127056977, -0.000361675629, -0.000127166844, 0.999994755, 0.000304312387)
p11.Anchored = true
p11.CanCollide = false
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=16606212"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.0500000007, 0.0599999987, 0.219999999)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Royal purple")
p12.Material = Enum.Material.SmoothPlastic
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.600000024, 0.400000036, 0.400000006)
p12.CFrame = CFrame.new(-4.38352394, 0.900473356, 11.0674744, 0.999994993, -2.10422286e-007, -2.68598014e-005, -2.68600634e-005, -6.46624612e-005, -0.999998331, 2.08939497e-007, 0.999994993, -6.46621702e-005)
p12.Anchored = true
p12.CanCollide = false
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.SmoothPlastic
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
p13.CFrame = CFrame.new(-4.38342142, 3.50038433, 11.0676756, 2.03024811e-007, 2.68621734e-005, -0.999994993, -6.45878681e-005, 0.999998331, 2.68624135e-005, 0.999994993, 6.45876644e-005, 2.04505866e-007)
p13.Anchored = true
p13.CanCollide = false
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.400000006, 2.70000005, 1.25)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Royal purple")
p14.Material = Enum.Material.SmoothPlastic
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p14.CFrame = CFrame.new(-4.3834815, 1.20045376, 11.0674934, 2.03024854e-007, 0.999994814, 2.68895456e-005, -6.45878536e-005, -2.68897929e-005, 0.999998271, 0.999994814, -2.04498548e-007, 6.45876353e-005)
p14.Anchored = true
p14.CanCollide = false
b14 = Instance.new("CylinderMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(1, 0.860000014, 0.349999994)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Royal purple")
p15.Material = Enum.Material.SmoothPlastic
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p15.CFrame = CFrame.new(-4.38351488, 1.00045681, 11.067482, 0.999994993, -2.10422286e-007, -2.68598014e-005, -2.68600634e-005, -6.46624612e-005, -0.999998331, 2.08939497e-007, 0.999994993, -6.46621702e-005)
p15.Anchored = true
p15.CanCollide = false
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.200000003, 0.200000003, 0.400000006)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Royal purple")
p16.Material = Enum.Material.SmoothPlastic
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1, 0.200000003, 0.400000036)
p16.CFrame = CFrame.new(-4.3834815, 1.20045376, 11.0674934, 0.999994993, 2.10420296e-007, 2.68598014e-005, -2.68600634e-005, 6.45879554e-005, 0.999998331, 2.08939497e-007, -0.999994993, 6.45876644e-005)
p16.Anchored = true
p16.CanCollide = false
b16 = Instance.new("CylinderMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 0.899999976, 0.899999976)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Royal purple")
p17.Material = Enum.Material.SmoothPlastic
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000033, 0.200000003, 0.400000006)
p17.CFrame = CFrame.new(-4.3834815, 1.20045376, 11.0674934, 0.999994993, 1.22376412e-006, 2.79684682e-005, -2.79687956e-005, 6.45115288e-005, 0.999998331, 1.22221331e-006, -0.999994993, 6.45113687e-005)
p17.Anchored = true
p17.CanCollide = false
b17 = Instance.new("CylinderMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1, 1.10000002, 0.25)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.SmoothPlastic
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.600000024, 0.200000003, 0.400000006)
p18.CFrame = CFrame.new(-4.3834815, 1.20045376, 11.0674934, 0.999994993, 2.10420296e-007, 2.68598014e-005, -2.68600634e-005, 6.45879554e-005, 0.999998331, 2.08939497e-007, -0.999994993, 6.45876644e-005)
p18.Anchored = true
p18.CanCollide = false
b18 = Instance.new("CylinderMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(1, 1, 0.5)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.SmoothPlastic
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.80000037, 0.200000003)
p19.CFrame = CFrame.new(-4.32335329, 6.31963253, 11.0678616, 1.78813934e-007, 2.67998621e-005, -0.999994993, -6.46066765e-005, 0.999998331, 2.68001022e-005, 0.999994993, 6.46064655e-005, 1.78813934e-007)
p19.Anchored = true
p19.CanCollide = false
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.400000006, 1, 0.600000024)
blade = Instance.new("Part", m)
blade.BrickColor = BrickColor.new("Royal purple")
blade.Material = Enum.Material.SmoothPlastic
blade.Name = "blade"
blade.FormFactor = Enum.FormFactor.Custom
blade.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
blade.CFrame = CFrame.new(-4.38342142, 3.50038433, 11.0676756, 2.03024811e-007, 2.68621734e-005, -0.999994993, -6.45878681e-005, 0.999998331, 2.68624135e-005, 0.999994993, 6.45876644e-005, 2.04505866e-007)
blade.Anchored = true
blade.CanCollide = false
b20 = Instance.new("BlockMesh", blade)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.419999987, 2.70000005, 0.5)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Royal purple")
p21.Material = Enum.Material.SmoothPlastic
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p21.CFrame = CFrame.new(-4.87347412, 1.20048833, 11.067421, 0.999994993, 2.68597978e-005, -1.63912773e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, 1.63912773e-007, 6.46424742e-005, 0.999994993)
p21.Anchored = true
p21.CanCollide = false
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Material = Enum.Material.SmoothPlastic
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p22.CFrame = CFrame.new(-4.6434741, 1.36048794, 11.0674219, 0.999994993, 2.68597978e-005, -1.63912773e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, 1.63912773e-007, 6.46424742e-005, 0.999994993)
p22.Anchored = true
p22.CanCollide = false
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.Material = Enum.Material.SmoothPlastic
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p23.CFrame = CFrame.new(-4.6434741, 1.05048847, 11.0674219, 0.999994993, 2.68597978e-005, -1.63912773e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, 1.63912773e-007, 6.46424742e-005, 0.999994993)
p23.Anchored = true
p23.CanCollide = false
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Really black")
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p24.CFrame = CFrame.new(-4.38800001, 3.43899989, 11.0679998, -3.24902021e-006, 9.58114477e-010, -0.999992907, -7.26728331e-006, -0.999994278, -8.0171958e-010, -0.999992251, 7.50569825e-006, 3.24877897e-006)
p24.Anchored = true
p24.CanCollide = false
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.100000001, 1.5, 0.100000001)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.Material = Enum.Material.SmoothPlastic
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p25.CFrame = CFrame.new(-4.12346935, 1.36048794, 11.0674219, -0.999994993, -2.6859796e-005, 1.78813934e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, -1.78813934e-007, -6.46425033e-005, -0.999994993)
p25.Anchored = true
p25.CanCollide = false
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Royal purple")
p26.Material = Enum.Material.SmoothPlastic
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p26.CFrame = CFrame.new(-3.89346814, 1.20048833, 11.0674229, -0.999994993, -2.6859796e-005, 1.78813934e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, -1.78813934e-007, -6.46425033e-005, -0.999994993)
p26.Anchored = true
p26.CanCollide = false
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really black")
p27.Material = Enum.Material.SmoothPlastic
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p27.CFrame = CFrame.new(-4.12346935, 1.05048847, 11.0674219, -0.999994993, -2.6859796e-005, 1.78813934e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, -1.78813934e-007, -6.46425033e-005, -0.999994993)
p27.Anchored = true
p27.CanCollide = false
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Really black")
p28.Material = Enum.Material.SmoothPlastic
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p28.CFrame = CFrame.new(-4.12346935, 1.36048794, 11.0674219, -0.999994993, -2.6859796e-005, 1.78813934e-007, -2.68600634e-005, 0.999998331, -6.46428016e-005, -1.78813934e-007, -6.46425033e-005, -0.999994993)
p28.Anchored = true
p28.CanCollide = false
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.280000001, 0.280000001, 0.5)
c = m:children()
for n = 1, #c do
	if (c[n].className == "Part") then
		if (c[n].Name ~= "handle") then
			stick(c[n], m.handle)
			wait()
			c[n].Anchored = false
		end
	end
end
for _,v in pairs(pchar:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
handl.Anchored=false
mwl= Weld(handl,pchar.Torso,-1,0,-1,rad(120),0,0,m)
m.Parent = pchar
hp=Instance.new('HopperBin',player.Backpack)
hp.Name='Despira'

local hat=Part(.5,1,1.02,'Really black',0,false,false,pchar)
Mesh(hat,'http://www.roblox.com/asset/?id=16952952',1.05,1.05,1.05)
Weld(pchar.Head,hat,0,-.25,0,0,0,0,p)
-- cape mesh cause lazy :p
local cpw=Part(.2,.2,.2,'White',1,false,false,pchar)
Weld(torso,cpw,0,-1,-.5,0,0,0,p)
local cp=Part(.1,.1,.1,'Really black',0,false,false,pchar)
Mesh(cp,'http://www.roblox.com/asset/?id=114046169',1.3,1.3,1.3)
cape = Weld(cpw,cp,0,1.2,0,0,0,0,p)

local function newLerpTo(weld)
        return {
                Weld = weld;
                To = weld.C0; 
                Cache = weld.C0; 
                Speed = 0.2; 
        }
end

Used={Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false}

function SetAnimData(IF_DATA_IS_USED)
    Used = IF_DATA_IS_USED
end

function CheckAnimData(ANIM_TAB,DO_ANIM)
    anglespeed=Anims[ANIM_TAB][DO_ANIM].speed or 1
    if Used.Head == true then
        LerpTo.Neck.To = LerpTo.Neck.Cache * Anims[ANIM_TAB][DO_ANIM].Head
    end
    if Used.RightArm == true then
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * Anims[ANIM_TAB][DO_ANIM].RightArm
    end
    if Used.LeftArm == true then
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * Anims[ANIM_TAB][DO_ANIM].LeftArm
    end
    if Used.RightLeg == true then
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * Anims[ANIM_TAB][DO_ANIM].RightLeg
    end
    if Used.LeftLeg == true then
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * Anims[ANIM_TAB][DO_ANIM].LeftLeg
    end
    if Used.Torso == true then
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * Anims[ANIM_TAB][DO_ANIM].Torso
    end
    LerpTo.cape.To = LerpTo.cape.Cache * Anims[ANIM_TAB][DO_ANIM].Cape
end


function UpdateAnims()
    Anims = {
        ["Idle"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(cos(angle)*0.01,0,0),
                RightArm = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftArm = CFrame.Angles(-cos(angle)*0.1,0,0),
                RightLeg = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*0.1,0,0),
                Torso = CFrame.Angles(0,0,0),
                Cape = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2,
                Head = CFrame.Angles(0,0,cos(angle)*0.05),
                RightArm = CFrame.Angles(-cos(angle)*1,0,0),
                LeftArm = CFrame.Angles(cos(angle)*1,0,0),
                RightLeg = CFrame.Angles(cos(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0),
                Cape =CFrame.Angles(-rad(40)+sin(angle)*.1,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(-20),0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0),
                Cape = CFrame.Angles(-rad(70)+sin(angle)*.4,0,0)
                }
            },
        ["Holding"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(cos(angle)*0.01,0,0),
                RightArm = CFrame.Angles(cos(angle)*0.1,0,rad(10)),
                LeftArm = CFrame.Angles(-cos(angle)*0.1,0,-rad(10)),
                RightLeg = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*0.1,0,0),
                Torso = CFrame.Angles(0,0,0),
                Cape = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2,
                Head = CFrame.Angles(0,0,cos(angle)*0.05),
                RightArm = CFrame.Angles(-cos(angle)*.3,0,rad(10)),
                LeftArm = CFrame.Angles(cos(angle)*.3,0,-rad(10)),
                RightLeg = CFrame.Angles(cos(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0),
                Cape =CFrame.Angles(-rad(40)+sin(angle)*.1,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(-20),0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0),
                Cape = CFrame.Angles(-rad(70)+sin(angle)*.4,0,0)
                }
            }
        }
end




LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
        hndl = newLerpTo(mwl);
        cape = newLerpTo(cape);
}
LerpTo.hndl.Cache=CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,rad(90))
hitdeb=false
hp.Selected:connect(function(mouse)
	local jmptimer = 0
	mouse.Button1Down:connect(function()
		if attack == true then return end 
	    if combo==0 then
	    	attack=true
            tmdmg(10,blade,5,3)
	        SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
			LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(40),-rad(50))*CFrame.new(0,-.5,0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
			wait(.1)
			trail(blade,10,5)
			so('161006212',torso,false,1)
			LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(50))*CFrame.new(0,-.5,0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
			wait(.2)
			attack=false
	        combo=1
	    elseif combo==1 then
	    	attack=true
            tmdmg(10,blade,5,3)
	    	SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),0,rad(120))*CFrame.new(-.5,0,0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
			wait(.1)
			trail(blade,10,5)
			so('161006212',torso,false,.8)
			LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),0,-rad(50))*CFrame.new(.5,0,-0.5)*CFrame.Angles(0,-rad(90),0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(70))
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(70),0)
			wait(.2)
			attack=false
	        combo=2
	    elseif combo==2 then
	    	attack=true
	    	trail(blade,35,5)
            tmdmg(10,blade,5,3)
			so('160069154',torso,false,1)
			SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
			LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))*CFrame.new(0,-.5,0)
			LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))*CFrame.new(0,-.5,0)
			LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(rad(90),0,0)
			local spn=0
			for i=1,15 do
	            spn=spn+30
	            wait(i/1000)
	            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(spn)+rad(70))
	        end
	        attack=false
	        combo=3
	    end
	    Spawn(function()
	        wait(0.6)
	        if attack==false then
	            attack=true
	            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
        		LerpTo.hndl.To = LerpTo.hndl.Cache
	            wait(.2)
	            attack=false
	            combo=0
	        end
	    end)
	end)
	mouse.KeyDown:connect(function(ke)
		if attack==true then return end
	    key=ke:lower()
	    if key=="e" then attack=true
	    	SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
            posfix(-rad(90))
            LerpTo.hndl.To = CFrame.new(0,-0.3,0)
	    	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(30))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(90))*CFrame.new(0.5,-.5,0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
			LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
            wait(.3)
            mgblock(pchar['Left Arm'],CFrame.new(0,-1,0),7,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
            so('28257433',pchar.Torso,false,.8)
            local efx= Part(1,1,1,'Black',0,false,true,pchar)
            local m= Mesh(efx,'http://www.roblox.com/asset/?id=51177741',2,2,2)
            efx.CFrame=pchar['Left Arm'].CFrame*CFrame.Angles(-rad(90),0,rad(90))
            local cb=Part(1,1,1,'Black',0,false,true,pchar)
            Mesh(cb,1,1,1,1)
            for i=1,20 do wait()
                efx.CFrame=clerp(efx.CFrame,efx.CFrame*CFrame.new(0,0,-50),.1)
                local p=Part(1,1,1,Cols[math.random(1,#Cols)],0,false,true,pchar)
                Mesh(p,3,1.5,1.5,1.5)
                p.CFrame=efx.CFrame
                cb.Size = Vector3.new(.5, (pchar['Left Arm'].Position - efx.Position).magnitude, .5)
                cb.CFrame = CFrame.new((pchar['Left Arm'].Position + efx.Position)/2, pchar['Left Arm'].Position) * CFrame.Angles(math.pi/2, 0, 0)
                coroutine.resume(coroutine.create(function(part,spin)
                    for i=1, 15 do
                        part.Mesh.Scale=part.Mesh.Scale+Vector3.new(.3,.3,.3)
                        part.Transparency=i/15
                        part.CFrame=part.CFrame*CFrame.new(math.random(-10,10)/3,math.random(-10,10)/3,math.random(-10,10)/3)*spin
                        wait()
                    end
                    part.Parent=nil
                end),p,CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500))
                if hitdeb==false then
                    for i,v in pairs(workspace:children()) do
                        if v:IsA("Model") and v:findFirstChild("Humanoid") then
                            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                                if (v:findFirstChild("Torso").Position - efx.Position).magnitude < 7 and v.Name ~= pchar.Name then
                                    damg=math.random(0,0)
                                    v.Humanoid:TakeDamage(damg)
                                    v.Humanoid.PlatformStand=true
                                    local lock=Weld(efx,v.Torso,0,0,0,0,0,0,v)
                                    local asd=true
                                    Spawn(function()
                                        while asd do wait()
                                            efx.CFrame=clerp(efx.CFrame,pchar.HumanoidRootPart.CFrame*CFrame.new(0,0,-7),.2)
                                            cb.Size = Vector3.new(.5, (pchar['Left Arm'].Position - efx.Position).magnitude, .5)
                                            cb.CFrame = CFrame.new((pchar['Left Arm'].Position + efx.Position)/2, pchar['Left Arm'].Position) * CFrame.Angles(math.pi/2, 0, 0)
                                        end
                                    end)
                                    wait(.1)
                                    for i=1,10 do wait()
                                        efx.Transparency=efx.Transparency+.1
                                    end
                                    trail(blade,35,5)
                                    tmdmg(10,blade,5,3)
                                    so('160069154',torso,false,1.1)
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(45))
                                    LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
                                    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(90),0)
                                    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(90))*CFrame.new(-0.5,-.5,0)
                                    LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(rad(90),0,rad(90))
                                    wait(.05)
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(90))*CFrame.new(0.5,-.5,0)
                                    mgblock(pchar['Left Arm'],CFrame.new(0,-1,0),7,'Really black','Royal purple',Vector3.new(1.5,1.5,1.5),.1)
                                    local spn=0
                                    for i=1,12 do
                                        spn=spn+30
                                        wait()
                                        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(spn)-rad(90))
                                        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(spn)+rad(90),0)
                                    end
                                    wait(.3)
                                    asd=false
                                    so('28144425',torso,false,.265)
                                    so('2697431',torso,false,.2)
                                    local splos= Part(1,1,1,'Really black',.5,false,true,pchar)
                                    local m= Mesh(splos,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                                    splos.CFrame=torso.CFrame*CFrame.new(-3,0,0)*CFrame.Angles(0,0,-pi/2)
                                    Spawn(function()
                                        for i=1,10 do wait(.01)
                                            m.Scale=m.Scale+Vector3.new(1,.2,1)
                                            splos.Transparency=splos.Transparency+.1
                                        end
                                        splos:Destroy()
                                    end)
                                    for i=1,3 do
                                        for i=1,3 do
                                            mgblock(v.Torso,CFrame.new(math.random(-3,3)/2,math.random(-3,3)/2,math.random(-3,3)/2),2,'Really black','Royal purple',Vector3.new(.1,.1,.1),0)
                                        end
                                    end
                                    efx:Destroy()
                                    cb:Destroy()
                                    lock:Destroy()
                                    mgblock(v.Torso,CFrame.new(math.random(-3,3)/2,math.random(-3,3)/2,math.random(-3,3)/2),20,'Really black','Royal purple',Vector3.new(.1,.1,.1),0)
                                    local vs = Instance.new("BodyVelocity",v.Torso)
                                    vs.maxForce = Vector3.new(1,1,1)*9e9
                                    vs.P = 2000
                                    vs.velocity = pchar.HumanoidRootPart.CFrame.lookVector*60+Vector3.new(0,150,0)
                                    wait(.05)
                                    vs:Destroy()
                                    Spawn(function()
                                        wait(2)
                                        v.Humanoid.PlatformStand=false
                                    end)
                                    v.Humanoid.Health=v.Humanoid.Health-30
                                    SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
                                    LerpTo.hndl.To = LerpTo.hndl.Cache
                                    attack=false
                                    return
                                end
                            end
                        end
                    end
                end
            end
            for i=1,10 do wait()
                efx.CFrame=clerp(efx.CFrame,pchar['Left Arm'].CFrame*CFrame.Angles(-rad(90),0,rad(90)),.2)
                cb.Size = Vector3.new(.5, (pchar['Left Arm'].Position - efx.Position).magnitude, .5)
                cb.CFrame = CFrame.new((pchar['Left Arm'].Position + efx.Position)/2, pchar['Left Arm'].Position) * CFrame.Angles(math.pi/2, 0, 0)
            end
            efx:Destroy()
            cb:Destroy()
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
            LerpTo.hndl.To = LerpTo.hndl.Cache
            attack=false
        elseif key=="z" then
        elseif key=="x" then
            attack=true
            local tapdeb=false
            for i,x in pairs(workspace:children()) do
                if x:IsA("Model") and x:findFirstChild("Humanoid") then
                    if x:findFirstChild("Head") and x:findFirstChild("Torso") then
                        if (x:findFirstChild("Torso").Position - mouse.Hit.p).magnitude < 4 and x.Name ~= pchar.Name then
                            if tapdeb==false then
                                SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
                                cloneefx()
                                pchar.Torso.CFrame=x.Torso.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(0,pi/1,0)
                                tmdmg(10,blade,3,3)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(40),-rad(50))*CFrame.new(0,-.5,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
                                wait(.1)
                                trail(blade,3,5)
                                so('161006212',torso,false,1)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(50))*CFrame.new(0,-.5,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
                                wait(.2)
                                cloneefx()
                                pchar.Torso.CFrame=x.Torso.CFrame*CFrame.new(-4,0,0)*CFrame.Angles(0,-pi/2,0)
                                tmdmg(10,blade,4,3)
                                SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),0,rad(120))*CFrame.new(-.5,0,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
                                wait(.1)
                                trail(blade,3,5)
                                so('161006212',torso,false,.8)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),0,-rad(50))*CFrame.new(.5,0,-0.5)*CFrame.Angles(0,-rad(90),0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(70))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(70),0)
                                wait(.2)
                                cloneefx()
                                pchar.Torso.CFrame=x.Torso.CFrame*CFrame.new(0,0,4)*CFrame.Angles(0,0,0)
                                tmdmg(10,blade,4,3)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(40),-rad(50))*CFrame.new(0,-.5,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
                                wait(.1)
                                trail(blade,3,5)
                                so('161006212',torso,false,1)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(50))*CFrame.new(0,-.5,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
                                wait(.2)
                                cloneefx()
                                pchar.Torso.CFrame=x.Torso.CFrame*CFrame.new(4,0,0)*CFrame.Angles(0,pi/2,0)
                                tmdmg(10,blade,4,3)
                                SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),0,rad(120))*CFrame.new(-.5,0,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
                                wait(.1)
                                trail(blade,3,5)
                                so('161006212',torso,false,.8)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),0,-rad(50))*CFrame.new(.5,0,-0.5)*CFrame.Angles(0,-rad(90),0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(70))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(70),0)
                                wait(.2)
                                so('161006212',torso,false,.5)
                                cloneefx()
                                tmdmg(10,blade,5,3)
                                trail(blade,3,7)
                                pchar.Torso.CFrame=x.Torso.CFrame*CFrame.new(0,0,-6)*CFrame.Angles(0,pi/1,0)
                                LerpTo.hndl.To = CFrame.new(0,-0.3,0)
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(30))
                                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(90))*CFrame.new(0.5,-.5,0)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
                                wait(.1)
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                                wait(.1)
                                LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(rad(90),0,rad(90))
                                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(90))
                                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(90))*CFrame.new(-.5,-.5,0)
                                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(90),0)
                                wait(.4)
                                SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
                                LerpTo.hndl.To = LerpTo.hndl.Cache
                                attack=false
                                return
                            end
                        end
                    end
                end
            end
            attack=false
        elseif key=="c" then
            attack=true
            SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
            posfix(-rad(90))
            LerpTo.hndl.To = CFrame.new(0,-0.3,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(30))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(90))*CFrame.new(0.5,-.5,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
            wait(.1)
            so('62339698',torso,false,.35)
            Spawn(function()
                for i=1,3 do wait()
                    local efx= Part(1,1,1,'Really black',.5,false,true,m)
                    local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                    efx.CFrame=torso.CFrame*CFrame.Angles(pi/2,0,-rad(90))
                    Spawn(function()
                        for i=1,7 do wait()
                            m.Scale=m.Scale+Vector3.new(1,.1,1)
                        end
                        efx:Destroy()
                    end)
                end
            end)
            Spawn(function()
                for i=1,4 do wait()
                    mgblock(torso,CFrame.new(0,0,0),4,'Really black','Really black',Vector3.new(2,2,2),.1)
                end
            end)
            local v = Instance.new("BodyVelocity",torso)
            v.maxForce = Vector3.new(1,1,1)*9e9
            v.P = 2000
            local cfx=torso.CFrame*CFrame.Angles(0,rad(90),0)
            v.velocity = cfx.lookVector*60
            local tapdeb=false
            for i=1,10 do wait()
                for i,x in pairs(workspace:children()) do
                    if x:IsA("Model") and x:findFirstChild("Humanoid") then
                        if x:findFirstChild("Head") and x:findFirstChild("Torso") then
                            if (x:findFirstChild("Torso").Position - torso.Position).magnitude < 7 and x.Name ~= pchar.Name then
                                if tapdeb==false then
                                    tmdmg(15,blade,3,5)
                                    v:Destroy()
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(40))*CFrame.new(0.5,-.5,0)
                                    so('10209645',torso,false,.8)
                                    for i=1,3 do wait()
                                        x.Humanoid.PlatformStand=true
                                        x.Torso.CFrame=pchar['Left Arm'].CFrame*CFrame.new(0,-1,0)*CFrame.Angles(rad(90),0,0)
                                    end
                                    so('46153268',torso,false,.5)
                                    wait(.4)
                                    SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
                                    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
                                    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
                                    LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
                                    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
                                    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
                                    LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,-rad(90))*CFrame.Angles(-rad(130),0,0)
                                    so('169310515',torso,false,.6)
                                    wait(.4)
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(150),0,0)
                                    mgblock(pchar['Left Arm'],CFrame.new(0,-1,0),30,'Really black','Really black',Vector3.new(2,2,2),.1)
                                    mgblock(x.Torso,CFrame.new(0,0,0),30,'Really black','Really black',Vector3.new(2,2,2),.1)
                                    local vs = Instance.new("BodyVelocity",x.Torso)
                                    vs.maxForce = Vector3.new(1,1,1)*9e9
                                    vs.P = 2000
                                    vs.velocity = Vector3.new(0,6,0)
                                    local efx= Part(1,1,1,'Really black',1,false,true,m)
                                    local m= Mesh(efx,'http://www.roblox.com/asset/?id=1185246',10,10,10)
                                    Spawn(function()
                                        for i=1,7 do wait()
                                            efx.Transparency=efx.Transparency-.1
                                        end
                                    end)
                                    for i=1,100 do
                                        efx.CFrame=x.Torso.CFrame
                                        wait()
                                    end
                                    vs:Destroy()
                                    x.Torso.Anchored=true
                                    local bp=Instance.new("BodyPosition",torso)
                                    bp.maxForce=Vector3.new(10000,10000,10000)
                                    bp.position=x.Torso.Position+Vector3.new(5,0,0)
                                    so('160069154',torso,false,1.1)
                                    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(45))
                                    LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
                                    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(90),0)
                                    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(90))*CFrame.new(-0.5,-.5,0)
                                    LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(rad(90),0,rad(90))
                                    trail(blade,35,5)
                                    local spn=0
                                    for i=1,12 do
                                        spn=spn+30
                                        wait()
                                        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(spn))
                                        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(spn),0)
                                    end
                                    bp:Destroy()
                                    efx:Destroy()
                                    so('138122923',torso,false,.8)
                                    x.Humanoid.Health=x.Humanoid.Health-20
                                    for i=1,14 do
                                        local efx= Part(1,1,1,'Really black',0,false,false,pchar)
                                        local m= Mesh(efx,3,math.random(1,10)/10,math.random(1,10)/10,math.random(1,10)/10)
                                        efx.CFrame=x.Torso.CFrame
                                        efx.Velocity=Vector3.new(math.random(-20,20),0,math.random(-20,20))
                                        Spawn(function()
                                            for i=1,10 do wait(.1)
                                                efx.Transparency=efx.Transparency+.1
                                            end
                                        end)
                                    end
                                    x.Torso.Anchored=false
                                    x.Humanoid.PlatformStand=false
                                    SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
                                    LerpTo.hndl.To = LerpTo.hndl.Cache
                                    attack=false
                                    return
                                end
                            end
                        end
                    end
                end
            end
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
            LerpTo.hndl.To = LerpTo.hndl.Cache
            v:Destroy()
            attack=false
        elseif key=="v" then
	    elseif key==" " then
			tim = game:service'RunService'.Stepped:wait()
			if (tim - jmptimer < .2) then
				attack=true
				Spawn(function()
			    	for i=1,3 do wait()
		                local efx= Part(1,1,1,'Really black',.5,false,true,m)
		                local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
		                efx.CFrame=torso.CFrame
		                Spawn(function()
		                    for i=1,7 do wait()
		                    	m.Scale=m.Scale+Vector3.new(1,.2,1)
		                    	efx.Transparency=efx.Transparency+.12
		                    end
		                    efx:Destroy()
		                end)
		            end
		        end)
		    	local vs = Instance.new("BodyVelocity",pchar.Torso)
	            vs.maxForce = Vector3.new(1,1,1)*9e9
	            vs.P = 2000
	            vs.velocity = pchar.Torso.CFrame.lookVector*60+Vector3.new(0,150,0)
	            wait(.025)
	            vs:Destroy()
		    	trail(blade,35,5)
				so('160069154',torso,false,.8)
                SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
				LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))*CFrame.new(0,-.5,0)
				LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))*CFrame.new(0,-.5,0)
				LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,rad(90),0)*CFrame.Angles(rad(130),0,0)
				local spn=0
				for i=1,14 do
		            spn=spn+30
		            wait(i/1000)
		            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(rad(spn),0,0)
		        end
		        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
		        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
	            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
	            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
	            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
	    	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
	    	    LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,-rad(90))*CFrame.Angles(-rad(130),0,0)
	    	    hitted=false
	    	    local hp=blade.Touched:connect(function(hit)
	    	    	if hitted == true or hit.Parent.Name==pchar.Name then return end
                    so('157878578',torso,false,1)
	    	    	hitted=true
	    	    	explosion('Really black','Royal purple',torso.CFrame,Vector3.new(40,40,40),30,40)
	    	    	for i=1, 30 do
	                    local p= Part(math.random(2,7),math.random(2,7),math.random(2,7),workspace.Base.BrickColor.Color,0,false,false,m)
	                    p.Material=workspace.Base.Material
				        p.CFrame=CFrame.new(torso.CFrame.x+math.random(-i,i),0,torso.CFrame.z+math.random(-i,i))*CFrame.Angles(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*CFrame.Angles(pi/2,0,0)
				        p.Velocity=Vector3.new(math.random(-100,100),math.random(30,100),math.random(-100,100))
                        game.Debris:AddItem(p,2)
				        Spawn(function()
				        	for i=1,10 do wait(.01)
				        		p.Transparency=p.Transparency+.1
				        	end
				        end)
			        end
	    	    end)
				repeat wait() until hitted
				hp:disconnect()
	    	    wait(.5)
		        SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
		        LerpTo.hndl.To = LerpTo.hndl.Cache
		        attack=false
		    end
		else
			wait(.2)
		end
		jmptimer = tim
	end)
	SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),rad(20),-rad(70))*CFrame.new(0,-1,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
	wait(.01)
	mwl.Part1=pchar['Right Arm']
	mwl.C1=CFrame.new(0,-1,0)*CFrame.Angles(-rad(90),0,rad(90))
	wait(.2)
	CurrentActiveAnim="Holding"
	LerpTo.hndl.To = LerpTo.hndl.Cache
	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
end)

hp.Deselected:connect(function()
	SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),rad(20),-rad(70))*CFrame.new(0,-1,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
	LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,0)
	wait(.1)
	mwl.Part1=pchar.Torso
	mwl.C1=CFrame.new(-1,0,-1)*CFrame.Angles(rad(120),0,0)
	wait(.1)
	CurrentActiveAnim="Idle"
	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
end)

UpdateAnims()
SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})

CurrentActiveAnim="Idle"

game:service'RunService'.RenderStepped:connect(function()
    UpdateAnims(angle)
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    rclcount = (rclcount%rclcounttime)+rclcountspeed
    rcl = math.pi*math.sin((math.pi*2)/rclcounttime*rclcount)
    angle = (angle % 100) + anglespeed/10
    if Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 then
        CheckAnimData(CurrentActiveAnim,"Jump")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        CheckAnimData(CurrentActiveAnim,"Stance")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
        CheckAnimData(CurrentActiveAnim,"Walk")
    end
end)