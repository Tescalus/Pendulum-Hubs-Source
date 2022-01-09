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
warn("Netless Activated!")
game.Workspace.non.Humanoid.WalkSpeed = 50
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
 
-- hastebin.com/raw/dignsxi
TorsoColor = BrickColor.new("Royal purple")
--------------------------This is an Official script from Duelist--------------------------  
                           ---{--------------------                         -------------------}---
                           ---{--------------------         / \           -------------------}---
                            ---{--------------------         II            -------------------}---
                             ---{--------------------        II            -------------------}---
                             ---{--------------------        II            -------------------}---
                        ---{--------------------  A========A   -------------------}---      
                               ---{--------------------      II             -------------------}---
                               ---{--------------------      II             -------------------}---
                                ---{--------------------     W           -------------------}---
--------------------------------------------------------------------------------------------------------------
local char = game.Workspace.non
local torso = char.Torso
local hum = char.Humanoid
local hed = char.Head
local root = char.HumanoidRootPart
GroundWave2 = function(target)
        if TorsoColor == BrickColor.new("Royal purple") then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Bright yellow")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = target
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
				local wave5 = Instance.new("Part", torso)
                wave5.BrickColor = BrickColor.new("Really black")
                wave5.Anchored = true
                wave5.CanCollide = false
                wave5.Locked = true
                wave5.Size = Vector3.new(1, 1, 1)
                wave5.TopSurface = "Smooth"
                wave5.BottomSurface = "Smooth"
                wave5.Transparency = 0.35
                wave5.CFrame = target
                wave5.Material = "Neon"
                wm5 = Instance.new("SpecialMesh", wave)
                wm5.MeshType = "Sphere"
                wm5.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = BrickColor.new("Really black")
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = target
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0
                wave3.CFrame = target
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2+i*1.2)
                wm5.Scale = Vector3.new(2+i*1.1, 2+i*1.1, 2+i*1.1)
                wm2.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2)
                wm3.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2)
                --wave.Size = wm.Scale
                wave.CFrame = target
                wave.Transparency = i/14
				--wave.Size
				wave5.CFrame = target
				wave5.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = target
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = target
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
                wave5:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif TorsoColor == BrickColor.new("Royal purple") then
        wait()
        end
end
GroundWave = function(target)
        if TorsoColor == BrickColor.new("Royal purple") then
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Dark red")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = target
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = BrickColor.new("Dark red")
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = target
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = target
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2+i*1.2)
                wm2.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2)
                wm3.Scale = Vector3.new(2+i*1.2, 2+i*1.2, 2)
                --wave.Size = wm.Scale
                wave.CFrame = target
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = target
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = target
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif TorsoColor == BrickColor.new("Royal purple") then
        wait()
        end
end
local p = game.Players.LocalPlayer
local char = game.Workspace.non
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
local rj = root.RootJoint
local deb = false
local shot = 0
local stanceToggle = "Idle1"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local hb = game:GetService("RunService").Heartbeat
local Stepped = game:GetService("RunService").Stepped
hed.face.Texture = "rbxassetid://37700586"
eye2 = Instance.new("Part", workspace)
eye2.Anchored = false
eye2.Parent = hed
eye2.TopSurface = 0
eye2.BrickColor = BrickColor.new("Royal purple")
eye2.Material = "Neon"
eye2.BottomSurface = 0
eye2m = Instance.new("SpecialMesh", eye2)
eye2m.MeshId = "rbxassetid://31309506"
eye2m.TextureId = "rbxassetid://31309468"
eye2m.Scale = Vector3.new(1.03, 1.05, 1.03)
ogsize = eye2m.Scale
weld = Instance.new("Weld", hed)
weld.Part0 = eye2
weld.Part1 = hed
weld.Name = "eye2Weld"
weld.C1 = CFrame.new(0,.45,0.05)
local shir = Instance.new("Shirt",char)
local pan = Instance.new("Pants",char)
shir.ShirtTemplate = "http://www.roblox.com/asset/?id=83326831"
pan.PantsTemplate = "http://www.roblox.com/asset/?id=10045638"
spawn(function()
	while wait() do
		for i,v in pairs(char:GetChildren()) do
			if v:IsA('Part') then
				v.BrickColor = BrickColor.new("Bright yellow")
			end
		end
	end
end)
spawn(function()
	while wait(.9) do
		GroundWave2(torso.CFrame)
	end
end)
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	
	tf = tf + s
	if frame <= tf then
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
end
)
for i,v in pairs(hed:GetChildren()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
Debounces = {CanAttack = true, CanJoke = true, NoIdl = false, RPunch = false, RPunched = false, LPunch = false, LPunched = false, Slashing = false, Slashed = false, ks = false, ks2 = false}
weld5 = function(part0, part1, c0, c1)
	
	weeld = Instance.new("Weld", part0)
	weeld.Part0 = part0
	weeld.Part1 = part1
	weeld.C0 = c0
	weeld.C1 = c1
	return weeld
end

NewPart = function(prnt, siz, cf, trans, anc, mat, col)
	
	local prt = Instance.new("Part")
	prt.Parent = prnt
	prt.Name = "Part"
	prt.Size = siz
	prt.CanCollide = false
	prt.Anchored = anc
	prt.Locked = true
	prt.Transparency = trans
	prt.TopSurface = 10
	prt.BottomSurface = 10
	prt.FrontSurface = 10
	prt.BackSurface = 10
	prt.LeftSurface = 10
	prt.RightSurface = 10
	prt:BreakJoints()
	if not cf then
		prt.CFrame = CFrame.new(30, 10, 30)
		prt.Material = mat
		prt.BrickColor = BrickColor.new(col)
		m = Instance.new("SpecialMesh", prt)
		m.MeshType = 6
		return prt
	end
end

lerp = function(a, b, t)
	
	return a + (b - a) * t
end

slerp = function(a, b, t)
	
	dot = a:Dot(b)
	if t > 0.5 or not a then
		do return dot <= 0.99999 and dot >= -0.99999 or b end
		r = math.acos(dot)
		do return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r) end
	end
end

matrixInterpolate = function(a, b, t)
	
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx, by, bz), t)
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t)
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t)
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t)
	local t = v1:Dot(v2)
	if t >= 0 and t ~= 0 and t <= 0 then
		return CFrame.new()
	end
	return CFrame.new(v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, v3.x, v3.y, v3.z)
end

genWeld = function(a, b)
	
	local w = Instance.new("Weld", a)
	w.Part0 = a
	w.Part1 = b
	return w
end

weld = function(a, b)
	
	local weld = Instance.new("Weld")
	weld.Name = "W"
	weld.Part0 = a
	weld.Part1 = b
	weld.C0 = a.CFrame:inverse() * b.CFrame
	weld.Parent = a
	return weld
end

Lerp = function(c1, c2, al)
	
	local com1 = {c1.X, c1.Y, c1.Z, c1:toEulerAnglesXYZ()}
	local com2 = {c2.X, c2.Y, c2.Z, c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do
		com1[i] = v + (com2[i] - v) * al
	end
	return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://4762087546"
z.Looped = true
z.Pitch = 1
z.Volume = 10
wait(0.1)
z:Play()
New = function(Object, Parent, Name, Data)
	
	local Object = Instance.new(Object)
	if not Data then
		for Index,Value in pairs({}) do
			Object[Index] = Value
		end
		Object.Parent = Parent
		Object.Name = Name
		return Object
	end
end

part1 = Instance.new("Part", rarm)
part1.Name = "Arbiter"
part1.BrickColor = BrickColor.new("Really black")
part1.CFrame = rarm.CFrame
part1.Material = "Neon"
part1.Anchored = false
part1.CanCollide = false
part1.Locked = true
part1.Size = Vector3.new(0.25, 1.05, 5.9)
mesh1 = Instance.new("SpecialMesh", part1)
mesh1.MeshType = Enum.MeshType.FileMesh
mesh1.MeshId = "rbxassetid://10604848"
mesh1.TextureId = "http://www.roblox.com/asset/?id=10605252"
mesh1.Scale = Vector3.new(0.5,0.5,0.5)
local cor = Instance.new("Part", rarm)
cor.Name = "Thingy"
cor.Locked = true
cor.TopSurface = 0
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(0.2, 0.2, 0.2)
cor.Transparency = 1
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", cor)
weld1.Part0 = cor
weld1.Part1 = part1
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1.C1 = CFrame.new(0.25, 1, -0.5) * CFrame.Angles(math.rad(-20), math.rad(30), math.rad(90))
hitb = Instance.new("Part", cor)
hitb.Name = "Thingy2"
hitb.Locked = true
hitb.TopSurface = 0
hitb.BottomSurface = 0
hitb.CanCollide = false
hitb.Size = Vector3.new(4, 1, 3.5)
hitb.Transparency = 1
weld4 = Instance.new("Weld", cor)
weld4.Part0 = hitb
weld4.Part1 = cor
weld4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld4.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false
mod4 = Instance.new("Model", char)
ptez = {0.7, 0.8, 0.9, 1}
FindNearestTorso = function(Position, Distance, SinglePlayer)
	
	if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
		do return not SinglePlayer end
		do
			local List = {}
			for i,v in pairs(workspace:GetChildren()) do
				if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and v.Torso.Position - Position.magnitude <= Distance then
					table.insert(List, v)
				end
			end
			do return List end
			-- DECOMPILER ERROR: 3 unprocessed JMP targets
		end
	end
end

Slam = function()
	
	local part = Instance.new("Part", mod4)
	part.Anchored = true
	part.CanCollide = false
	part.FormFactor = "Custom"
	part.Size = Vector3.new(0.2, 0.2, 0.2)
	part.CFrame = root.CFrame * CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(90), 0, 0)
	part.Transparency = 0.7
	part.BrickColor = BrickColor.new("Really black")
	mesh = Instance.new("SpecialMesh", part)
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = Vector3.new(3, 3, 3)
	local part2 = Instance.new("Part", mod4)
	part2.Anchored = true
	part2.CanCollide = false
	part2.FormFactor = "Custom"
	part2.Size = Vector3.new(0.2, 0.2, 0.2)
	part2.CFrame = root.CFrame * CFrame.new(0, -2.4, -1.6)
	part2.Transparency = 0.7
	part2.BrickColor = BrickColor.new("Lime green")
	mesh2 = Instance.new("SpecialMesh", part2)
	mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh2.Scale = Vector3.new(3, 1.5, 3)
	x = Instance.new("Sound", larm)
	x.SoundId = "http://www.roblox.com/asset/?id=142070127"
	x.Pitch = ptez[math.random(1, #ptez)]
	x.Volume = 1
	x1 = Instance.new("Sound", larm)
	x1.SoundId = "http://www.roblox.com/asset/?id=206082327"
	x1.Pitch = ptez[math.random(1, #ptez)]
	x1.Volume = 1
	x:Play()
	x1:Play()
	for i,v in pairs(FindNearestTorso(torso.CFrame.p, 4)) do
		if v:FindFirstChild("Humanoid") then
			v.Humanoid.Health = 0
		end
	end
	coroutine.resume(coroutine.create(function()
		
		for i = 0, 0.62, 0.13 do
			fat.Event:wait()
			part.CFrame = part.CFrame
			part.Transparency = i
			mesh.Scale = mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
			part2.CFrame = part2.CFrame
			part2.Transparency = i
			mesh2.Scale = mesh2.Scale + Vector3.new(0.4, 0.2, 0.4)
		end
		part.Parent = nil
		part2.Parent = nil
		x:Destroy()
	end
))
end

wPart = function(x, y, z, color, tr, cc, an, parent)
	
	local wp = Instance.new("WedgePart", parent or Weapon)
	wp.formFactor = "Custom"
	wp.Size = Vector3.new(x, y, z)
	wp.BrickColor = BrickColor.new(color)
	wp.CanCollide = cc
	wp.Transparency = tr
	wp.Anchored = an
	wp.TopSurface = 0
	return wp
end

Mesh = function(par, num, x, y, z)
	
	local msh = _
	if num == 1 then
		msh = Instance.new("CylinderMesh", par)
	else
		if num == 2 then
			msh = Instance.new("SpecialMesh", par)
			msh.MeshType = 3
		else
			if num == 3 then
				msh = Instance.new("BlockMesh", par)
			else
				if num == 4 then
					msh = Instance.new("SpecialMesh", par)
					msh.MeshType = "Torso"
				else
					if type(num) == "string" then
						msh = Instance.new("SpecialMesh", par)
						msh.MeshId = num
					end
				end
			end
		end
	end
	msh.Scale = Vector3.new(x, y, z)
	return msh
end

local CFrameFromTopBack = function(at, top, back)
	
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
	
	local edg1 = c - a:Dot(b - a.unit)
	local edg2 = a - b:Dot(c - b.unit)
	local edg3 = b - c:Dot(a - c.unit)
	if edg1 <= b - a.magnitude and edg1 >= 0 then
		a = a
	else
		-- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

		if edg2 <= c - b.magnitude and edg2 >= 0 then
			a = b
		else
			-- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

			-- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

			if edg3 <= a - c.magnitude and edg3 >= 0 then
				a = c
			else
				print("unreachable")
			end
		end
	end
	local len1 = c - a:Dot(b - a.unit)
	local len2 = b - a.magnitude - len1
	local width = a + b - a.unit * len1 - c.magnitude
	local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = wPart(0, 0, 0, "Lime green", 0.5, false, true, char)
		do
			local sz = Vector3.new(0.2, width, len1)
			w1.Size = sz
			local sp = Mesh(w1, 2, 0, 0, 0)
			sp.MeshType = "Wedge"
			sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
			w1:BreakJoints()
			w1.Anchored = true
			w1.Transparency = 0.7
			Spawn(function()
		
		for i = 0, 1, 0.1 do
			fat.Event:wait()
			w1.Transparency = w1.Transparency + 0.03
		end
	end
)
			w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
			table.insert(list, w1)
		end
	end
	do
		if len2 > 0.01 then
			local w2 = wPart(0, 0, 0, "Lime green", 0.5, false, true, char)
			local sz = Vector3.new(0.2, width, len2)
			w2.Size = sz
			local sp = Mesh(w2, 2, 0, 0, 0)
			sp.MeshType = "Wedge"
			sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
			w2:BreakJoints()
			w2.Anchored = true
			w2.Transparency = 0.7
			Spawn(function()
		
		for i = 0, 1, 0.1 do
			fat.Event:wait()
			w2.Transparency = w2.Transparency + 0.03
		end
	end
)
			w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
			table.insert(list, w2)
		end
		do
			return unpack(list)
		end
	end
end

trail = function(p, t, h)
	
	Spawn(function()
		
		local blcf = p.CFrame
		local scfr = blcf
		for i = 1, t do
			local blcf = p.CFrame
			if scfr and p.Position - scfr.p.magnitude > 0.1 then
				local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
				if a then
					game.Debris:AddItem(a, 1)
				end
				if b then
					game.Debris:AddItem(b, 1)
				end
				local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
				if a then
					game.Debris:AddItem(a, 1)
				end
				if b then
					game.Debris:AddItem(b, 1)
				end
				scfr = blcf
			else
				do
					do
						if not scfr then
							scfr = blcf
						end
						fat.Event:wait()
						-- DECOMPILER ERROR at PC120: LeaveBlock: unexpected jumping out DO_STMT

						-- DECOMPILER ERROR at PC120: LeaveBlock: unexpected jumping out IF_ELSE_STMT

						-- DECOMPILER ERROR at PC120: LeaveBlock: unexpected jumping out IF_STMT

					end
				end
			end
		end
		scfr = nil
	end
)
end

rarm.Touched:connect(function(ht)
	
	hit = ht.Parent
	if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.RPunch == true and Debounces.RPunched == false then
		Debounces.RPunched = true
		hit:FindFirstChild("Humanoid"):TakeDamage(math.random(0, 0))
		if Debounces.ks == true then
			z = Instance.new("Sound", hed)
			z.SoundId = "rbxassetid://169380525"
			z.Pitch = ptz[math.random(1, #ptz)]
			z.Volume = 1
			z:Play()
		end
		wait(0.4)
		Debounces.RPunched = false
	end
	if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.RPunch == true and Debounces.RPunched == false then
		Debounces.RPunched = true
		hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(0, 0))
		if Debounces.ks == true then
			z = Instance.new("Sound", hed)
			z.SoundId = "rbxassetid://169380525"
			z.Pitch = ptz[math.random(1, #ptz)]
			z.Volume = 1
			z:Play()
		end
		wait(0.4)
		Debounces.RPunched = false
	end
end
)
larm.Touched:connect(function(ht)
	
	hit = ht.Parent
	if ht and hit:IsA("Model") and hit:FindFirstChild("Humanoid") and hit.Name ~= p.Name and Debounces.LPunch == true and Debounces.LPunched == false then
		Debounces.LPunched = true
		hit:FindFirstChild("Humanoid").Health = 0
		hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -160
		if Debounces.ks2 == true then
			z = Instance.new("Sound", hed)
			z.SoundId = "rbxassetid://169380525"
			z.Pitch = ptz[math.random(1, #ptz)]
			z.Volume = 1
			z:Play()
		end
		wait(0.4)
		Debounces.LPunched = false
	end
	if ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and Debounces.LPunch == true and Debounces.LPunched == false then
		Debounces.LPunched = true
		hit.Parent:FindFirstChild("Humanoid").Health = 0
		if Debounces.ks2 == true then
			z = Instance.new("Sound", hed)
			z.SoundId = "rbxassetid://169380525"
			z.Pitch = ptz[math.random(1, #ptz)]
			z.Volume = 1
			z:Play()
		end
		wait(0.4)
		Debounces.LPunched = false
	end
end
)
local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle
local toAxisAngle = function(CFr)
	
	local X, Y, Z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = CFr:components()
	local Angle = math.acos((R00 + R11 + R22 - 1) / 2)
	local A = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
	if A ~= 0 or not 1e-05 then
		local B = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
		if B ~= 0 or not 1e-05 then
			local C = R21 - R12 ^ 2 + R02 - R20 ^ 2 + R10 - R01 ^ 2
			if C ~= 0 or not 1e-05 then
				local x = (R21 - R12) / sqrt(A)
				local y = (R02 - R20) / sqrt(B)
				local z = (R10 - R01) / sqrt(C)
				return Vec3(x, y, z), Angle
			end
		end
	end
end

ApplyTrig = function(Num, Func)
	
	local Min, Max = Func(0), Func(1)
	local i = Func(Num)
	return (i - Min) / (Max - Min)
end

LerpCFrame = function(CFrame1, CFrame2, Num)
	
	local Vec, Ang = toAxisAngle(CFrame1:inverse() * CFrame2)
	return CFrame1 * fromAxisAngle(Vec, Ang * Num) + (CFrame2.p - CFrame1.p) * Num
end

Crater = function(Torso, Radius)
	
	Spawn(function()
		
		local Ray = Ray.new(Torso.Position, Vector3.new(0, -1, 0) * 10)
		local Ignore = {}
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Character ~= nil then
				Ignore[#Ignore + 1] = v.Character
			end
		end
		local Hit, Pos, SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray, Ignore)
		if Hit == nil then
			return 
		end
		local Parts = {}
		for i = 1, 360, 10 do
			local P = Instance.new("Part", Torso.Parent)
			P.Anchored = true
			P.FormFactor = "Custom"
			P.BrickColor = Hit.BrickColor
			P.Material = Hit.Material
			P.TopSurface = "Smooth"
			P.BottomSurface = "Smooth"
			P.Size = Vector3.new(5, 10, 10) * (math.random(80, 100) / 100)
			P.CFrame = (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 7, 0)) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)))
			Parts[#Parts + 1] = {P, P.CFrame, (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 1, 0)) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -Radius) * CFrame.Angles(math.rad(math.random(-50, -20)), math.rad(math.random(-15, 15)), math.rad(math.random(-15, 15))), P.Size}
			if math.random(0, 5) == 0 then
				local P = Instance.new("Part", Torso.Parent)
				P.Anchored = true
				P.FormFactor = "Custom"
				P.BrickColor = Hit.BrickColor
				P.Material = Hit.Material
				P.TopSurface = "Smooth"
				P.BottomSurface = "Smooth"
				P.Size = Vector3.new(2, 2, 2) * (math.random(80, 100) / 100)
				P.CFrame = (CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0, 2.5, 0)) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)))
				Parts[#Parts + 1] = {P, P.CFrame, CFrame.new(Pos, Pos + SurfaceNorm) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -Radius - 8) * CFrame.Angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90))), P.Size}
			end
		end
		for i = 0, 1, 0.05 do
			for i2,v in pairs(Parts) do
				v[1].CFrame = LerpCFrame(v[2], v[3], ApplyTrig(i, math.cos))
			end
			wait(0.02)
		end
		for i,v in pairs(Parts) do
			if v[1].Size.X > 2.1 then
				v[1].CFrame = v[1].CFrame + Vector3.new(0, 2, 0)
			end
			v[1].Anchored = false
		end
		for i = 0, 1, 0.05 do
			for i2,v in pairs(Parts) do
				v[1].Transparency = i
				if i == 1 then
					v[1]:Destroy()
				else
					if i >= 0.25 then
						v[1].CanCollide = false
					end
				end
			end
			wait(0.02)
		end
		Parts = nil
	end
)
end

function Dmg()
	local partofdeath = hitb
	local function CreateRegion3FromLocAndSize(Position, Size)
		local SizeOffset = Size/2
		local Point1 = Position - SizeOffset
		local Point2 = Position + SizeOffset
		return Region3.new(Point1, Point2)
	end
	local reg = CreateRegion3FromLocAndSize(partofdeath.Position, partofdeath.Size)
	for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do
		Spawn(function()
			if Debounces.Slashing == true and Debounces.Slashed == false then
				Debounces.Slashed = true
				ypcall(function()
					local humanoid = v.Parent:FindFirstChild("Humanoid") or v.Parent.Parent:FindFirstChild("Humanoid")
					GroundWave(v.Parent.Torso.CFrame)
					humanoid.Health = humanoid.Health - 928373
					local ex = Instance.new('Explosion',workspace)
					ex.Position = v.Parent.Torso.Position
					ex.BlastRadius = 0
				end)
				wait(.4)
				Debounces.Slashed = false
			end
		end)
	end
end

pts = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
ptz = {0.7, 0.8, 0.9, 1, 1.1}
part1.Transparency = 0
attackone = function()
	
	for i = 1, 10 do
		corw.C0 = Lerp(corw.C0, CFrame.new(-0.5, -1.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(150)), 0.4)
		corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, -0.5) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-24)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3, 0.5, -0.4) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(10)), 0.5)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), 0.5)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-24), math.rad(0), math.rad(-20)), 0.3)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), 0), 0.7)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.7)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.7)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.7)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0.2) * CFrame.Angles(math.rad(-11), math.rad(0), math.rad(-14)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.7, -1, -0.3) * CFrame.Angles(math.rad(20), math.rad(-30), math.rad(16)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
end

attacktwo = function()
	
	Debounces.Slashing = true
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://227194094"
	z.Pitch = ptz[math.random(1, #ptz)]
	z.Volume = 0.4
	wait(0.01)
	z:Play()
	for i = 1, 14 do
		Dmg()
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
		corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(28)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0.4) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(100)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(36), math.rad(0), math.rad(-20)), 0.3)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.36)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-40), math.rad(0)), 0.36)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(0), math.rad(-40), 0), 0.4)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.72, -1, -0.3) * CFrame.Angles(math.rad(14), math.rad(50), math.rad(-15)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0.2) * CFrame.Angles(math.rad(-12), math.rad(-30), math.rad(16)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
	do
		Debounces.Slashing = false
	end
end

attackthree = function()
	
	for i = 1, 10 do
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
		corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-24)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0.4) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(100)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(48), math.rad(0), math.rad(-20)), 0.4)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(0)), 0.5)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1.3) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.5)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.72, -1, -0.4) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(-10)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(-30), math.rad(16)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
end

mouse.KeyDown:connect(function(key)
    if key == "e" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 50 do
	rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(160),math.rad(-6),math.rad(30)), 0.4)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(10),math.rad(30),math.rad(-15)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2.6)
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(2,4,2)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.Material = "Neon"
                P.BrickColor = BrickColor.new("Really black")
                P.Name = tostring(Y)
                local i = (Y+5)/(100)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-2+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
                --[[P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(20,50))
                    end
                end)]]--
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = 1
        s.Pitch = 0.9
        s:Play()
        sa = Instance.new("Sound",P)
        sa.SoundId = "rbxassetid://419447292"
        sa.Volume = 1
        sa.Pitch = 1
        sa:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid").Health = 0
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid").Health = 0
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(0.4,0.35,0)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(2,2,2)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(2,2,2)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = BrickColor.new("Royal purple")
                                P.Material = "Neon"
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
                v:Destroy()
            end
            CParts = {}
        end)
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-40),math.rad(0),math.rad(30)), 0.2)
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.4)
	lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
	rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)

attackfour = function()
	
	Debounces.Slashing = true
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://227194094"
	z.Pitch = ptz[math.random(1, #ptz)]
	z.Volume = 0.4
	wait(0.01)
	z:Play()
	for i = 1, 14 do
		Dmg()
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
		corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(28)), 0.4)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.4) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(-60)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(0)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(-10)), 0.3)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.36)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(0)), 0.36)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1.6) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.36)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0.2) * CFrame.Angles(math.rad(-10), math.rad(-20), math.rad(-16)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.72, -1, -0.4) * CFrame.Angles(math.rad(14), math.rad(-50), math.rad(14)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
	do
		Debounces.Slashing = false
	end
end

attackfive = function()
	
	z = Instance.new("Sound", hed)
	z.SoundId = "rbxassetid://"
	z.Pitch = 1
	z.Volume = 0.8
	wait(0.01)
	z:Play()
	for i = 1, 18 do
		corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.5)
		corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.5)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.7, 0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(-40)), 0.4)
		rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.7, 0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(40)), 0.4)
		larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.4, 0.15) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.5)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.25)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, -1.6) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.5)
		torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(20), math.rad(-15)), 0.5)
		lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(-20), math.rad(15)), 0.5)
		rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
		if Debounces.on == false then
			break
		end
		fat.Event:wait()
	end
	do
		z = Instance.new("Sound", hed)
		z.SoundId = "rbxassetid://227194094"
		z.Pitch = 0.6
		z.Volume = 1
		wait(0.01)
		z:Play()
		Debounces.Slashing = true
		for i = 1, 18 do
			Dmg()
			corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-40)), 0.5)
			corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(-50), math.rad(0)), 0.5)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.4, -0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-40)), 0.5)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.4, -0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(40)), 0.5)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.4, -0.15) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.5)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, -2) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.3)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -0.2, -0.48) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-10)), 0.3)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -0.9, 0.2) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(10)), 0.3)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			if Debounces.on == false then
				break
			end
			fat.Event:wait()
		end
		do
			Debounces.Slashing = false
		end
	end
end

ComboNum = 0
mouse.Button1Down:connect(function()
	
	if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.NoIdl = true
		Debounces.on = true
		if ComboNum == 0 then
			attackone()
		else
			if ComboNum == 1 then
				attacktwo()
			else
				if ComboNum == 2 then
					attackthree()
				else
					if ComboNum == 3 then
						attackfour()
					else
						if ComboNum == 4 then
							attackfive()
						end
					end
				end
			end
		end
		ComboNum = ComboNum + 1
		Debounces.CanAttack = true
		Debounces.on = false
		wait(0.2)
		if Debounces.CanAttack == true then
			ComboNum = 0
			Debounces.NoIdl = false
		end
	end
end
)
mouse.KeyDown:connect(function(key)
	
	if string.byte(key) == 52 then
		Swing = 2
		char.Humanoid.WalkSpeed = 28
	end
end
)
mouse.KeyUp:connect(function(key)
	
	if string.byte(key) == 52 then
		Swing = 1
		char.Humanoid.WalkSpeed = 16
	end
end
)
jump = false
rs:connect(function()
	
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		
		if f then
			ffing = true
		else
			ffing = false
		end
	end
)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	else
		if ffing == true then
			animpose = "Freefalling"
		else
			if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
				animpose = "Idle"
			else
				if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 20 then
					animpose = "Walking"
				else
					if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude > 20 then
						animpose = "Running"
					end
				end
			end
		end
	end
	RightLeg = CFrame.new(0.5, -1, 0)
	LeftLeg = CFrame.new(-0.5, -1, 0)
	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-12 - 4 * math.cos(sine / 22)), math.rad(-12 - 2 * math.cos(sine / 22)), math.rad(12 + 2 * math.cos(sine / 22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, -0.2) * CFrame.Angles(math.rad(20 + 4 * math.cos(sine / 22)), math.rad(-22 - 2 * math.cos(sine / 22)), math.rad(-15 - 2 * math.cos(sine / 22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-12 + 2.5 * math.cos(sine / 22)), math.rad(0), math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2 + 2 * math.cos(sine / 22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 22)), math.rad(-5), math.rad(5)), 0.2)
			else
				if stanceToggle == "Idle2" then
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-22 - 4 * math.cos(sine / 12)), math.rad(-40 - 2 * math.cos(sine / 12)), math.rad(24 + 2 * math.cos(sine / 12))), 0.3)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.6, -0.6) * CFrame.Angles(math.rad(90 + 4 * math.cos(sine / 12)), math.rad(0), math.rad(50 - 2 * math.cos(sine / 12))), 0.3)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-6 + 2.5 * math.cos(sine / 12)), math.rad(0), math.rad(0)), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20 + 2 * math.cos(sine / 12)), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7 - 2 * math.cos(sine / 12)), math.rad(7), math.rad(-5)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30 - 2 * math.cos(sine / 12)), math.rad(-9), math.rad(5)), 0.2)
				end
			end
			fat.Event:wait()
		end
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.8
			corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
			corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-26)), 0.4)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 + 0.05 * math.sin(sine / 10), 0) * CFrame.Angles(math.rad(30 + 2 * math.sin(sine / 10)), math.rad(-40 - 10 * math.cos(sine / 10)), math.rad(20)), 0.1)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.sin(sine / 10), 0.15) * CFrame.Angles(math.rad(20 - 2 * math.sin(sine / 10)), math.rad(0 + 10 * math.cos(sine / 10)), math.rad(-20)), 0.1)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.1)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0.15 - 0.05 * math.sin(sine / 10)) * CFrame.Angles(math.rad(15 - 3 * math.sin(sine / 10)), math.rad(0), math.rad(0)), 0.1)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-3 + 3 * math.cos(sine / 10)), math.rad(0), 0), 0.1)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1 - 0.01 * math.cos(sine / 10), 0) * CFrame.Angles(math.rad(5 - 5 * math.cos(sine / 5)), math.rad(0), math.rad(-10 + 1.9 * math.cos(sine / 10))), 0.1)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0.3) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 + 0.01 * math.cos(sine / 10), 0) * CFrame.Angles(math.rad(-5 - 3 * math.cos(sine / 10)), math.rad(-10), math.rad(12 + 1.9 * math.cos(sine / 10))), 0.1)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
			rj.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-3 + 3 * math.cos(sine / 10)), math.rad(0), 0), 0.1)
			rj.C1 = Lerp(torso.Weld.C1, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
		else
			if animpose == "Walking" then
				change = 0.8
				corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0.5) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
				corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.4)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20 + 2 * math.cos(sine / 7)), math.rad(0), math.rad(30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 2), -math.sin(sine / 4) / 4) * CFrame.Angles(math.sin(sine / 4) / 2.8, -math.sin(sine / 4) / 3, math.rad(-10 - 7 * math.cos(sine / 2)) + root.RotVelocity.Y / 30), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1 + 0.1 * math.cos(sine / 2)) * CFrame.Angles(math.rad(-10 + 4 * math.cos(sine / 2)), math.rad(0 - 8 * math.cos(sine / 4) / 2.3), math.rad(0)), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y / 10, math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.12 * math.cos(sine / 2), 0) * CFrame.Angles(math.rad(-4 + 2 * math.cos(sine / 2)), math.rad(0 + 10 * math.cos(sine / 4) / 2.3) + root.RotVelocity.Y / 30, math.rad(0) + root.RotVelocity.Y / 30), 0.4)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5, -1 - math.cos(sine / 4) * 0.2, 0 + math.sin(sine / 4) * 0.1) * CFrame.Angles(math.sin(sine / 4) * 3 * AngleThetaL.Z, AngleThetaL.X, math.sin(sine / 4) * 3 * -AngleThetaL.X - root.RotVelocity.Y / 20), 0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5, -1 + math.cos(sine / 4) * 0.2, 0 - math.sin(sine / 4) * 0.1) * CFrame.Angles(math.sin(sine / 4) * 3 * -AngleThetaR.Z, AngleThetaR.X, math.sin(sine / 4) * 3 * AngleThetaR.X - root.RotVelocity.Y / 20), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			else
				if animpose == "Running" then
					change = 1.1
					corw.C0 = Lerp(corw.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
					corw.C1 = Lerp(corw.C1, CFrame.new(-2.4, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(-35)), 0.4)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4, 0.54, 0) * CFrame.Angles(math.rad(-34), math.rad(-15), math.rad(26)), 0.2)
					rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24 + 0.6 * math.cos(sine / 4) / 1.4, 0.54, 0 - 0.8 * math.cos(sine / 4)) * CFrame.Angles(math.rad(6 + 140 * math.cos(sine / 4) / 1.2), math.rad(0), math.rad(20 + 70 * math.cos(sine / 4))), 0.2)
					larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-8 + 12 * math.cos(sine / 2) / 1.5), math.rad(0 + 12 * math.cos(sine / 4)), math.rad(0)), 0.2)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y / 10, math.rad(0)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.2 * math.cos(sine / 2) / 1.7, 0) * CFrame.Angles(math.rad(-14 + 10 * math.cos(sine / 2) / 1.5), math.rad(0 - 12 * math.cos(sine / 4)) - root.RotVelocity.Y / 10, math.rad(0) + root.RotVelocity.Y / 20), 0.2)
					torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.8 - 0.4 * math.cos(sine / 4) / 2, math.sin(sine / 4) / 2) * CFrame.Angles(math.rad(-10) + -math.sin(sine / 4) / 1.2, math.rad(0 + 12 * math.cos(sine / 4)) + root.RotVelocity.Y / 10, 0), 0.8)
					lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8 + 0.4 * math.cos(sine / 4) / 2, -math.sin(sine / 4) / 2) * CFrame.Angles(math.rad(-10) + math.sin(sine / 4) / 1.2, math.rad(0 + 12 * math.cos(sine / 4)) + root.RotVelocity.Y / 10, 0), 0.8)
					rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
				else
					if animpose == "Jumping" then
						change = 1
						rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.2)
						rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
						larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.2)
						larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
						hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.2)
						torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(1), math.rad(0), 0), 0.2)
						torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
						lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
						lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
						rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
						rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
					else
						if animpose == "Freefalling" then
							change = 1
							rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(50)), 0.2)
							rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.36)
							larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(110), math.rad(-20), math.rad(-30)), 0.2)
							larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
							hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), 0), 0.2)
							torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
							torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
							lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, -0.5) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
							lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
							rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, 0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
							rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
						end
					end
				end
			end
		end
	end
end
)
hum.MaxHealth = math.huge
wait(3)
hum.Health = math.huge
