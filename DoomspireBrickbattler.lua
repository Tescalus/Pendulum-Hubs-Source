--{{Linked Sword remake by SezHu. Made for Darkross. Whoever it is that spread this around, I hope you kill yourself.}}--
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
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
wait(1 / 60)
Effects = { }
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
local Player = game.Players.localPlayer
local Mouse = Player:GetMouse()
local Character = game.Workspace.non
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Camera = game.Workspace.CurrentCamera
local RootJoint = RootPart.RootJoint
local Equipped = false
local Attack = false
local Anim = 'Idle'
local Idle = 0
local Combo = 1
local TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local Velocity = RootPart.Velocity.y
local Sine = 0
local Change = 1
Instance.new("ForceField",Character).Visible = false
local humanoid = game.Workspace.non.Humanoid

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

humanoid.WalkSpeed = 20
humanoid.JumpPower = 60 
humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

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

ArtificialHB = Create("BindableEvent"){
	Parent = script,
	Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 45
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

local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel"
}

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			if Size == Vector3.new() then
				Part.Size = Vector3.new(0.2, 0.2, 0.2)
			else
				Part.Size = Size
			end
			return Part
		end;
	};
	
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};

	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	Sound = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = "rbxassetid://" .. id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}


SwordHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","SwordHandle",Vector3.new(0.869999945, 0.450000048, 0.440000325))
SwordHandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],SwordHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.185770988, 0.870510101, 0.408577919, 0.203587696, 0.0859783739, 0.975274265, 0.215029001, 0.967887759, -0.130214334, -0.955151618, 0.236222297, 0.178562179))

FSwordHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","SwordHandle",Vector3.new(0.869999945, 0.450000048, 0.440000325))
FSwordHandleWeld=CFuncs.Weld.Create(m,FSwordHandle,SwordHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.185770988, 0.870510101, 0.408577919, 0.203587696, 0.0859783739, 0.975274265, 0.215029001, 0.967887759, -0.130214334, -0.955151618, 0.236222297, 0.178562179))

SwordHitbox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","SwordHitbox",Vector3.new(2.86000085, 0.780000031, 0.490000904))
SwordHitboxWeld=CFuncs.Weld.Create(m,FSwordHandle,SwordHitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.40326214, -0.0246145725, 0.0822520256, 0.996526599, -0.0713239759, 0.0429853499, -0.0685022175, -0.995603502, -0.063884899, 0.04735291, 0.0607184023, -0.997031152))
Sword=CFuncs.Part.Create(m,Enum.Material.Plastic,0.40000000596046,0,"Dark stone grey","Sword",Vector3.new(1, 0.800000012, 4))
SwordWeld=CFuncs.Weld.Create(m,FSwordHandle,Sword,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00868201256, -0.0434961319, -1.57871437, -0.0685393885, -0.995604873, -0.0638238713, -0.0473001003, -0.060659457, 0.997037172, -0.996526659, 0.0713551864, -0.0429345965))
CFuncs.Mesh.Create("SpecialMesh",Sword,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
SwordTip=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","SwordTip",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
SwordTipWeld=CFuncs.Weld.Create(m,FSwordHandle,SwordTip,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.99350071, 0.0115001202, -0.0282430649, 0.996526718, -0.0713239908, 0.0429855287, 0.0685023069, 0.995603621, 0.0638830736, -0.0473529696, -0.0607165657, 0.997031391))
SwordBase=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","SwordBase",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
SwordBaseWeld=CFuncs.Weld.Create(m,FSwordHandle,SwordBase,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.965875626, -0.108898878, -0.0282406807, 0.996527016, -0.0713239983, 0.0429854989, 0.0685023293, 0.995603859, 0.0638830885, -0.0473529994, -0.0607165806, 0.997031689))
sw00ng=CFuncs.Mesh.Create("SpecialMesh",Sword,Enum.MeshType.FileMesh,"rbxasset://fonts/sword.mesh",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
sw00ng.TextureId = "rbxasset://textures/SwordTexture.png"
Dodgebox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","Dodgebox",Vector3.new(0.380000204, 0.440000057, 0.370000631))
DodgeboxWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Dodgebox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19000053, 0.0500006676, 0.00499725342, -5.2829273e-07, -1, 9.87201929e-08, -1.00000012, 5.32949343e-07, -2.98023224e-08, 2.98023224e-08, -9.68575478e-08, -1.00000012))
RHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","RHandle",Vector3.new(4.92000628, 0.740000546, 0.839999795))
RHandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],RHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.891376376, 0.0220794678, -0.335389137, -0.0211870149, 0.999322236, 0.0301050469, 0.985142112, 0.0157343224, 0.171019673, 0.170430094, 0.0332811475, -0.98480773))
kaboomsky=CFuncs.Mesh.Create("SpecialMesh",RHandle,Enum.MeshType.FileMesh,"rbxasset://fonts/rocketlauncher.mesh",Vector3.new(0, 0, 0),Vector3.new(0.75, 0.75, 0.75))
RocketMaker=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","RocketMaker",Vector3.new(0.349999934, 0.350000024, 0.369999945))
RocketMakerWeld=CFuncs.Weld.Create(m,RHandle,RocketMaker,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.6350019, 0.17499733, 0.0449929237, 0.999999702, 0, 7.4505806e-09, 0, 1.72555447e-05, -1, 0, 1.00000012, 1.72555447e-05))

kaboomsky=CFuncs.Mesh.Create("SpecialMesh",RHandle,Enum.MeshType.FileMesh,"rbxasset://fonts/rocketlauncher.mesh",Vector3.new(0, 0, 0),Vector3.new(0.75, 0.75, 0.75))
kaboomsky.TextureId = "rbxasset://textures/rocketlaunchertex.png"



swordtrail = Instance.new("Trail", SwordHitbox)
A2 = Instance.new('Attachment',SwordBase)
A3 = Instance.new('Attachment',SwordTip)
swordtrail.Lifetime = .1
swordtrail.Enabled = false
swordtrail.Attachment0 = A2
swordtrail.Attachment1 = A3
local startColor = Color3.new(0, 0, 0)
local endColor = Color3.new(200,200, 200)
local startT = .2
local endT = .8

local sequence = ColorSequence.new(startColor, endColor)
local sequence2 = NumberSequence.new(startT, endT)

swordtrail.Color = sequence
swordtrail.Transparency = sequence2


function RayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
	local list = (game.Workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= Character.Name then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end

function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(0, 0)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "Bloxxed!", 1, BrickColor.new(Torso.Color).Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "Bloxxed!", 1, BrickColor.new(Torso.Color).Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			hit.Parent.Torso.CanCollide = false
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cf = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "SourceSansLight",
		TextColor3 = Color,
		TextScaled = true,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
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

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
				end
			end
		end
	end
end

EffectModel = Create("Model"){
	Parent = Character,
	Name = "EffectModel",
}

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 3 then
				table.insert(Effects, {
					prt,
					"Block3",
					delay,
					x3,
					y3,
					z3,
					msh,
					Part
				})
			elseif Type == 4 then
				table.insert(Effects, {
					prt,
					"Block2Fire",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	};

	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			if parent == nil then
				prt.Parent = workspace
			else
				prt.Parent = parent
			end
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blood = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Blood",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blast = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "1323306", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Block4",
				delay,
				x3,
				y3,
				z3,
				msh,
				Part
			})
		end
	};

	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(prt, 10)
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end
	};

	Elec = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 9
			yval = math.random() / 9
			zval = math.random() / 9
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.05,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Elec2 = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 7
			yval = math.random() / 7
			zval = math.random() / 7
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.1,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Clone = {
		Create = function() 
			for _, v in pairs(Torso.Parent:children()) do
				if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
					local c = CFuncs.Part.Create(EffectModel, "Neon", 0, .5, BrickColor.new("Bright blue"), "Effect", v.Size)
					c.Anchored = true
					c.CFrame = v.CFrame
					game:GetService("Debris"):AddItem(c, 5)
					local cmsh = nil
					if v.Name == "Head" then
						cmsh = CFuncs.Mesh.Create("SpecialMesh", c, "Head", "", Vector3.new(0, 0, 0), v.Mesh.Scale)
					else
						cmsh = CFuncs.Mesh.Create("BlockMesh", c, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
					end
					table.insert(Effects, {
						c,
						"Cylinder",
						0.05,
						0.1,
						0.1,
						0.1,
						cmsh
					})
				end
			end
		end
	};

	EffectTemplate = {

	};
}



function basicatk3()
	Attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142343417, 0.0233179983, 0.020687107, 0.573575377, 0, -0.819152832, 0, 1, 0, 0.819152832, 0, 0.573575377) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.98023224e-07, 1.49992621, 2.16066837e-07, 0.608099699, -0.0691893846, 0.790839791, 0, 0.99619478, 0.0871555731, -0.793860614, -0.0529992878, 0.605785728) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.05688548, 0.769726157, 0.0676793456, -0.311439514, -0.945715487, -0.092885226, 0.945463896, -0.298567384, -0.130214006, 0.09541291, -0.128373384, 0.987125456) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.411215395, 0.158524469, -0.878887057, 0.250847429, -0.870902896, 0.422615528, 0.960933626, 0.276778936, -3.5065608e-07, -0.116970763, 0.406105578, 0.906309128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.657444179, -1.99999833, -0.128117085, 0.896965504, -0.0924630314, 0.432323426, 0.14320904, 0.98592627, -0.0862591267, -0.418263227, 0.139284089, 0.897583365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.494430214, -2.06444812, 0.151889086, 0.924378932, -0.0320322104, 0.380128324, -0.00379799958, 0.995646238, 0.093135722, -0.381456703, -0.0875364318, 0.920232713) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
	end
	swordtrail.Enabled = true
	local con = SwordHitbox.Touched:connect(function(hit)
	Damage(SwordHitbox, hit, 0, 0, 0, "Normal", RootPart, 0.2, "851453784", 1)end)
	CFuncs.Sound.Create("12222208", SwordHitbox, 1, 1)
		for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142339114, 0.0233179983, 0.0206872839, 0.642787755, 0, 0.766044497, 0, 1, 0, -0.766044497, 0, 0.642787755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(9.59248496e-07, 1.49992597, 4.65522191e-07, 0.60942173, 0, -0.792846382, 0, 1, 0, 0.792846322, 0, 0.609421849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.73596513, 0.521444082, -0.798278034, 0.809956312, -0.584440529, 0.0489933714, 0.032929007, -0.0380880162, -0.998731732, 0.585565269, 0.810542405, -0.0116045829) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.85990238, 0.325684935, -0.117992491, 0.89608562, 0.442657262, 0.0329447091, -0.4075903, 0.849945962, -0.333859384, -0.175786465, 0.285738617, 0.942047179) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.425910503, -2.07023525, 0.0920312852, 0.940003216, -0.0248685181, 0.340258449, -0.0248680059, 0.98969233, 0.141034499, -0.340258539, -0.141034409, 0.929695547) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.614895225, -2, -0.0110759763, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		Torso.Velocity=RootPart.CFrame.lookVector*50
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(.5, .5, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-90)), .5)
		end
		Torso.Velocity=RootPart.CFrame.lookVector*0
		con:Disconnect()
		swordtrail.Enabled = false
	Attack = false
end

function basicatk1()
	Attack = true
	CFuncs.Sound.Create("12222216", SwordHitbox, 1, 1)
		local con = SwordHitbox.Touched:connect(function(hit)
	Damage(SwordHitbox, hit, 0, 0, 0, "Normal", RootPart, 0.2, "851453784", 1)end)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142327882, 0.0233180653, 0.0206850152, 0.342022419, 9.53674316e-07, -0.939693272, -1.97067857e-06, 0.999999821, -2.77161598e-06, 0.939691842, -3.1888485e-06, 0.342018187) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.0002484e-06, 1.49992502, -4.16819603e-06, 0.536599159, 0, 0.843837321, 0, 1, 0, -0.843837321, 0, 0.536599159) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.86725414, 0.520918071, 0.271278173, -0.192566082, -0.920491397, -0.340020508, 0.967886448, -0.121106967, -0.220293105, 0.16159907, -0.371522188, 0.914252102) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.63878369, 0.0883156657, 0.277901947, 0.932158768, 0.313689649, 0.180773243, -0.33414492, 0.937619865, 0.0960013121, -0.139381975, -0.149892926, 0.978828311) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.631921172, -2.00664234, -0.186664119, 0.932272255, -0.109707505, 0.344721258, 0.134574026, 0.989692569, -0.0489756428, -0.335795075, 0.0920491666, 0.937426567) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.51753515, -2, 0.082954295, 0.939693093, 0, 0.342018992, 0, 1, 0, -0.342019022, 0, 0.939693093) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 1)
	end
	swordtrail.Enabled = true
		for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142326681, 0.0233180001, 0.0206871442, 1.78813934e-07, 0, 1.00000203, 0, 1, 0, -1.00000203, 0, 1.49011612e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49992609, 0, 0.462487102, 0, -0.886626124, 0, 1, 0, 0.886626124, 0, 0.462487072) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.59986377, 0.488647908, -0.460965931, 0.695726395, -0.716896534, 0.0449903496, 0.0475609899, -0.0165210012, -0.998731732, 0.716730595, 0.696983814, 0.0226022154) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.80470943, 0.308719665, 0.00611042976, 0.864646077, 0.492070675, 0.1012609, -0.498273998, 0.865697801, 0.0478584878, -0.0641115457, -0.0918363109, 0.993708193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.450665146, -1.87432182, 0.242756784, 0.938798666, 0.182527304, -0.29213196, -0.024868004, 0.881770015, 0.471023679, 0.343567908, -0.434931636, 0.832343459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.463921428, -2, -0.403737426, 0.766046047, 0, -0.642788887, 0, 1, 0, 0.642788887, 0, 0.766046047) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(.5, .5, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(-90)), 1)
	end
	
	
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142326681, 0.0233180001, 0.0206871442, 1.78813934e-07, 0, 1.00000203, 0, 1, 0, -1.00000203, 0, 1.49011612e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49992609, 0, 0.462487102, 0, -0.886626124, 0, 1, 0, 0.886626124, 0, 0.462487072) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.59986377, 0.488647908, -0.460965931, 0.695726395, -0.716896534, 0.0449903496, 0.0475609899, -0.0165210012, -0.998731732, 0.716730595, 0.696983814, 0.0226022154) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.80470943, 0.308719665, 0.00611042976, 0.864646077, 0.492070675, 0.1012609, -0.498273998, 0.865697801, 0.0478584878, -0.0641115457, -0.0918363109, 0.993708193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.450665146, -1.87432182, 0.242756784, 0.938798666, 0.182527304, -0.29213196, -0.024868004, 0.881770015, 0.471023679, 0.343567908, -0.434931636, 0.832343459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.463921428, -2, -0.403737426, 0.766046047, 0, -0.642788887, 0, 1, 0, 0.642788887, 0, 0.766046047) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), .1)
	end
	swordtrail.Enabled = false
		con:Disconnect()
	Attack = false
end





function basicatk2()
	Attack = true
	CFuncs.Sound.Create("12222216", SwordHitbox, 1, .8)
		local con = SwordHitbox.Touched:connect(function(hit)
	Damage(SwordHitbox, hit, 0, 0, 0, "Normal", RootPart, 0.2, "851453784", 1)end)
		for i = 0, .5, 0.1 do
			PlayAnimationFromTable({
         CFrame.new(0.199326009, 0, -0.0621959642, 0.500000238, 0, 0.866025388, 0, 1, 0, -0.866025388, 0, 0.500000238) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999201, 0, 0.866025805, 0, -0.499999762, 0, 1, 0, 0.499999762, 0, 0.866025805) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.930871904, 0.250794977, -1.28154397, -0.0386770852, 0.569197655, -0.821290731, -0.998659015, 0.00628901878, 0.0513885207, 0.0344153345, 0.822176874, 0.568191111) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.60257423, 0.0277413726, -0.076416865, 0.0147553682, 0.129409567, 0.991481602, 0.224142969, 0.965926051, -0.12940973, -0.974444628, 0.224143118, -0.0147536397) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.624383092, -1.99999106, -0.0120142996, 0.707107008, 0, -0.707106769, 0, 1, 0, 0.707106769, 0, 0.707107008) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.482958466, -1.99999106, -0.129410326, 0.707106769, 0, 0.707107008, 0, 1, 0, -0.707107008, 0, 0.707106769) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
			FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
		end
		swordtrail.Enabled = true
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.366101086, 0, -0.414826214, 0.258818984, 0, 0.965925872, 0, 1, 0, -0.965925872, 0, 0.258818984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999201, 0, 0.342023224, 0, -0.939691603, 0, 1, 0, 0.939691603, 0, 0.342023224) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0553627312, 1.3573252, -1.17095125, 0.785249949, 0.559134185, 0.265991658, 0.545306027, -0.827990174, 0.130666092, 0.293298304, 0.0424413234, -0.955078542) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.60256672, 0.0277402997, -0.0764263347, 0.0147550702, 0.129409924, 0.991481423, 0.224143073, 0.965925932, -0.129410043, -0.974444628, 0.224143118, -0.0147539973) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.624385655, -1.99999106, -0.0120021999, 0.707108498, 0, -0.70710516, 0, 1, 0, 0.70710516, 0, 0.707108498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.48295331, -1.99999106, -0.129420042, 0.70710516, 0, 0.707108498, 0, 1, 0, -0.707108498, 0, 0.70710516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
	end
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.366099417, -0.200000986, -0.414823025, 0.582563281, 0.271655113, 0.766044199, -0.42261821, 0.906307876, -1.75809453e-06, -0.694272339, -0.323743135, 0.642787993) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.231262937, 1.54721832, -0.0511251986, 0.851651847, -0.42261821, -0.309973061, 0.397132277, 0.906307876, -0.144540951, 0.342016667, -1.75809453e-06, 0.939694047) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0908454061, 1.16592097, -1.08897507, -0.0772816539, 0.583855987, 0.808170736, 0.727612376, -0.521148086, 0.446077228, 0.681621552, 0.622508645, -0.384545565) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.61299813, 0.0366990864, 0.314264029, -0.455841899, 0.169077203, 0.87385428, 0.0347501114, 0.984423816, -0.172343403, -0.889382243, -0.048194766, -0.454617083) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.21119905, -1.34869587, -0.183849275, 0.851651549, -0.252021521, -0.459537864, 0.397132158, 0.882479608, 0.252023607, 0.342017442, -0.39713347, 0.851650953) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0580956787, -1.95897889, 0.369651437, 0.640855312, -0.42261821, 0.640857816, 0.298834234, 0.906307876, 0.298838168, -0.707108855, -1.75809453e-06, 0.707104981) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
	end
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.366085619, -1.19999647, -0.414817601, 0.582568169, -0.412207156, 0.700499654, -0.422613144, 0.582565188, 0.69427377, -0.694271266, -0.700502098, 0.165179759) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.112729274, 1.56678414, 0.254275501, 0.577656388, 0.0997146964, -0.810166836, -0.213354647, 0.976452529, -0.0319427848, 0.787904203, 0.191304803, 0.585328698) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.96889925, 0.746382177, -0.185331225, 0.0769328177, -0.997015715, 0.00641870499, 0.879773498, 0.0648541152, -0.470948815, 0.469127119, 0.0418784246, 0.882137418) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.88176703, 0.136358321, 0.177449048, -0.455846965, 0.778092861, 0.43217504, 0.703643739, 0.612389445, -0.360367835, -0.545058966, 0.139824644, -0.826655984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.90178746, -1.14663219, -0.653959215, 0.851655245, 0.190028608, -0.488439023, -0.00672882795, 0.935840786, 0.352359027, 0.524059415, -0.296801776, 0.798292339) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.830604553, -2.07172632, -0.233860642, 0.784890771, 0.0754829049, -0.615019679, -0.147760659, 0.986719251, -0.0674703121, 0.601758778, 0.143832445, 0.785620093) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
	end
	swordtrail.Enabled = false	
		con:Disconnect()
	Attack = false
end


function dodgeball()
	game.Workspace.non.Humanoid.Jump = true
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	Attack = true
	humanoid.AutoRotate = false
		local spawnPos = Torso.Position
orb1=CFuncs.Part.Create(Torso, "Neon", 0, 0, BrickColor.new("Crimson"), "ref", Vector3.new(2,2,2))	
orb1.Anchored=true
orb1.CanCollide=false

game:GetService("Debris"):AddItem(orb1, 10)
orb1.Elasticity = 1
        local mbewm2 = Instance.new("SpecialMesh", orb1)
        mbewm2.MeshType = "Sphere"
        mbewm2.Scale = Vector3.new(1,1,1)
	game:GetService("Debris"):AddItem(orb1, 3)
	for i = 0, 2, 0.1 do
		orb1.CFrame = Dodgebox.CFrame
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142339477, 0.0233179312, 0.0206872448, 0.642789185, 7.39382813e-08, 0.766043305, -4.8651782e-07, 1, 3.11712938e-07, -0.766043305, -5.73050784e-07, 0.642789245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.34310243e-06, 1.49992716, -2.40420513e-06, 0.609423697, -6.78923243e-07, -0.792844892, 8.58872227e-08, 1, -7.90281774e-07, 0.792844832, 4.13525413e-07, 0.609423757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70033991, 0.0784267411, 0.291652292, 0.980928302, -0.190888226, -0.0366283059, 0.192193046, 0.924432218, 0.329373628, -0.0290131569, -0.330131561, 0.943489075) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.9394995, 0.331927955, -0.314799666, 0.117194936, 0.856613636, -0.502472639, -0.987918258, 0.0488963015, -0.14706032, -0.101404801, 0.513636589, 0.851994693) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.596234262, -2.04406619, 0.245654553, 0.999976635, 0.00595425069, -0.00338888168, -0.00461965939, 0.95128876, 0.308266908, 0.00505927205, -0.308244109, 0.951293945) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.699660361, -2.00000048, 0.0218301564, 0.984807849, -4.44691977e-07, 0.173648536, 4.41870725e-07, 1, 5.48861863e-08, -0.173648536, 2.26791599e-08, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(Mouse.Hit.p.X, 0, Mouse.Hit.p.Z))
	end
		local con = orb1.Touched:connect(function(hit)
	 CFuncs.Sound.Create("112503990", Torso, 1, .8)end)
	orb1.Anchored=false
	orb1.CanCollide=true
	
	local roketsped = 500
		local spawnPosition = (RootPart.CFrame * CFrame.new(0, 0, -3)).p
		orb1.CFrame = CFrame.new(spawnPosition, Mouse.hit.p)
		orb1.Velocity = orb1.CFrame.lookVector * roketsped
local GRAVITY_ACCELERATION = 196.2
	local bodyForce = Instance.new('BodyForce', orb1)
	bodyForce.Name = 'Antigravity'
	bodyForce.force = Vector3.new(0, orb1:GetMass() * GRAVITY_ACCELERATION, 0)
	
game:GetService("Debris"):AddItem(orb1, 8)

	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142358784, 0.0233174488, 0.0206872076, 0.642785072, 3.25146175e-06, -0.766046703, -2.37840504e-06, 1, 2.24876021e-06, 0.766046762, 3.76494427e-07, 0.642785072) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-5.94174753e-06, 1.49992752, 6.44530655e-06, 0.674973369, -2.24472751e-06, 0.737842202, 3.30112925e-06, 1, 2.24354153e-08, -0.737842202, 2.4205583e-06, 0.674973369) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.67408049, 0.116924986, -0.235040307, 0.93551451, -0.291971684, 0.198909909, 0.329377055, 0.924430549, -0.192195028, -0.127762914, 0.245317593, 0.960987091) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58664989, 0.765351355, -0.846855521, -0.120212317, 0.321875662, -0.939119458, -0.987918437, -0.131986037, 0.0812216997, -0.0978073403, 0.937537193, 0.333853245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.766593277, -1.96006727, -0.107848071, 0.976080298, -0.137189135, 0.168661386, 0.138399139, 0.990365744, 0.00461723236, -0.167669922, 0.0188358091, 0.985663354) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.403303981, -1.99999976, -0.0619408637, 0.984807789, -2.66062125e-06, 0.173648238, 2.98927625e-06, 1, -1.63115692e-06, -0.173648268, 2.1254591e-06, 0.98480773) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(Mouse.Hit.p.X, 0, Mouse.Hit.p.Z))
	end
	humanoid.AutoRotate = true
	Attack = false
	while orb1 do
	swait()	
	MagnitudeDamage(orb1, 4, 0, 0, 100, "Normal", "112503990", 1)	
	end
	
end


function roketlunch()
	game.Workspace.non.Humanoid.Jump = true
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	Attack = true
	humanoid.WalkSpeed = 2
	humanoid.JumpPower = 0
	RHandle.Transparency = 0
	Sword.Transparency = 1
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142319212, 0.0233183783, 0.0206877608, 1.00000012, 1.49011612e-08, 2.98023224e-08, 2.72463048e-08, 0.984807968, 0.173647314, 2.98023224e-08, -0.17364724, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0154076805, 1.5522356, -0.0916171968, 0.999084175, 0.0180828422, -0.0387787819, -0.00742995739, 0.9658584, 0.258964151, 0.0421376526, -0.258438855, 0.965108156) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.28755724, 0.00418370962, -0.0650342703, 0.890014946, 0.230696142, -0.393259257, -0.298804998, 0.946620405, -0.120936036, 0.344367683, 0.225142673, 0.911439359) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.59552705, 0.053297095, -0.298519343, 0.986049891, 0.15347448, -0.0644321442, -0.162331849, 0.801095366, -0.576103032, -0.036800772, 0.578525543, 0.814833522) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.573113441, -1.8059541, -0.374102622, 0.999206126, -0.0373207629, 0.0139417946, 0.0392762311, 0.98143959, -0.187706873, -0.00667765737, 0.188105404, 0.982126117) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433013678, -1.95186841, 0.175973177, 1, 0, 2.98023224e-08, 0, 0.98480773, 0.173648328, 2.98023224e-08, -0.173648328, 0.984807789) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
	
		for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142319426, -1.08839262, 0.0206871927, 1.00000012, 1.49011612e-08, 2.98023224e-08, 2.72463048e-08, 0.984807968, 0.173647314, 2.98023224e-08, -0.17364724, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0154080922, 1.55223548, -0.0916156173, 0.999084175, 0.0180828422, -0.0387787819, -0.00742995739, 0.9658584, 0.258964151, 0.0421376526, -0.258438855, 0.965108156) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.428888142, 0.573096275, -1.0865351, 0.629741013, 0.73693651, -0.245664269, -0.133446366, -0.208918005, -0.968785584, -0.765257001, 0.64286691, -0.0332227312) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.24049437, 0.563232303, -0.47247985, 0.974705219, -0.150607079, -0.165128678, -0.176947653, -0.0686892122, -0.981820583, 0.136526525, 0.986204565, -0.0936013013) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.542829335, -1.05595815, -0.494429678, 0.999206185, -0.0391747355, 0.00724902749, 0.0392762125, 0.999124289, -0.0144301355, -0.00667738914, 0.0147034377, 0.999869585) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433013409, -1.47995389, 0.259185165, 1, -2.98023224e-08, 0, 0, 0.17364727, 0.984807968, 2.98023224e-08, -0.984807849, 0.173647255) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(Mouse.Hit.p.X, 0, Mouse.Hit.p.Z))
		end	
		
		local roket=CFuncs.Part.Create(Torso, "Neon", 0, 0, BrickColor.new("Smoky grey"), "ref", Vector3.new(1,1,2))	
roket.Anchored=false
roket.CanCollide=true
local roketsped = 100
		local spawnPosition = (RootPart.CFrame * CFrame.new(0, 0, -6)).p
		roket.CFrame = CFrame.new(spawnPosition, Mouse.hit.p) --NOTE: This must be done before assigning Parent
		roket.Velocity = roket.CFrame.lookVector * roketsped
CFuncs.Sound.Create("31761785", roket, 3, 1)
local GRAVITY_ACCELERATION = 196.2
	local bodyForce = Instance.new('BodyForce', roket)
	bodyForce.Name = 'Antigravity'
	bodyForce.force = Vector3.new(0, roket:GetMass() * GRAVITY_ACCELERATION, 0)
	
game:GetService("Debris"):AddItem(roket, 8)
		local con = roket.Touched:connect(function(hit)
	MagnitudeDamage(roket, 10, 0, 0, 100, "Normal", "112503990", 1) Effects.Sphere.Create(BrickColor.new(roket.Color), roket.CFrame, 3, 3, 3, 3, 3, 3, 0.03) roket.Transparency = 1 CFuncs.Sound.Create("169628396", Character, .1, 1)	local boo = Instance.new("Explosion", roket) boo.Position = roket.Position boo.BlastRadius = 30
boo.BlastPressure = 500 roket:Destroy() end)	
			for i = 0, 2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142334783, -1.08840001, 0.0206862688, 1.00000119, 7.67409801e-07, -2.98023224e-08, 6.21078584e-07, 0.984811127, -0.173649758, 2.38418579e-07, 0.173647732, 0.984807074) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0153429285, 1.61389816, 0.0791989863, 0.999084234, -0.0110745579, -0.0413306355, 0.00743017718, 0.996153533, -0.0873102993, 0.0421385169, 0.0869232267, 0.995323479) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.489735812, 0.316905022, -1.24634087, 0.629742265, 0.683080673, -0.369899511, -0.387131512, -0.136858344, -0.911810875, -0.67346406, 0.717405558, 0.178256541) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.24049377, 0.367668957, -0.636619806, 0.974705458, -0.198001236, -0.103657492, -0.119579755, -0.0701957047, -0.990339994, 0.188812226, 0.977685094, -0.092097044) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.542830348, -1.16139019, -0.103446305, 0.999207258, -0.0391742066, 0.00724938512, 0.0346246623, 0.943902194, 0.328414857, -0.0197079182, -0.327904552, 0.944504917) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433018923, -1.30207276, 0.749731183, 1.00000107, -2.38418579e-07, 6.00692658e-07, 7.78585672e-07, -0.173647717, 0.984811127, 5.96046448e-08, -0.984807074, -0.173649803) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		Torso.Velocity=RootPart.CFrame.lookVector*-20
		RootPart.CFrame = CFrame.new(RootPart.Position, Vector3.new(Mouse.Hit.p.X, 0, Mouse.Hit.p.Z))
	end
	RHandle.Transparency = 1
	Sword.Transparency = 0
	
	humanoid.WalkSpeed = 13
	humanoid.JumpPower = 60
	Attack = false
	end



function fireinDhole()
	Attack = true
		local bomb1=CFuncs.Part.Create(Torso, "Neon", 0, 0, BrickColor.new("Crimson"), "ref", Vector3.new(1,1,1))	
		bomb1.Anchored=true
		bomb1.CanCollide=true
		game:GetService("Debris"):AddItem(orb1, 10)
		bomb1.Elasticity = .3
        local mbewm2 = Instance.new("SpecialMesh", bomb1)
        mbewm2.MeshId = "rbxasset://fonts/timebomb.mesh"
		mbewm2.TextureId = "rbxasset://textures/bombtex.png"
        mbewm2.Scale = Vector3.new(1,1,1)
	
	CFuncs.Sound.Create("11565378", bomb1, 1, 1)
	for i = 0, 2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142339477, 0.0233179312, 0.0206872448, 0.642789185, 7.39382813e-08, 0.766043305, -4.8651782e-07, 1, 3.11712938e-07, -0.766043305, -5.73050784e-07, 0.642789245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.34310243e-06, 1.49992716, -2.40420513e-06, 0.609423697, -6.78923243e-07, -0.792844892, 8.58872227e-08, 1, -7.90281774e-07, 0.792844832, 4.13525413e-07, 0.609423757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70033991, 0.0784267411, 0.291652292, 0.980928302, -0.190888226, -0.0366283059, 0.192193046, 0.924432218, 0.329373628, -0.0290131569, -0.330131561, 0.943489075) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.66880238, 0.166423663, -0.183722675, 0.845035851, 0.182852611, -0.502473533, -0.291941375, 0.945062757, -0.147059917, 0.447978795, 0.270963728, 0.851994097) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.596234262, -2.04406619, 0.245654553, 0.999976635, 0.00595425069, -0.00338888168, -0.00461965939, 0.95128876, 0.308266908, 0.00505927205, -0.308244109, 0.951293945) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.699660361, -2.00000048, 0.0218301564, 0.984807849, -4.44691977e-07, 0.173648536, 4.41870725e-07, 1, 5.48861863e-08, -0.173648536, 2.26791599e-08, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		bomb1.CFrame = Dodgebox.CFrame
	end
		for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142358784, 0.0233174488, 0.0206872076, 0.642785072, 3.25146175e-06, -0.766046703, -2.37840504e-06, 1, 2.24876021e-06, 0.766046762, 3.76494427e-07, 0.642785072) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-5.94174753e-06, 1.49992752, 6.44530655e-06, 0.674973369, -2.24472751e-06, 0.737842202, 3.30112925e-06, 1, 2.24354153e-08, -0.737842202, 2.4205583e-06, 0.674973369) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.67408049, 0.116924986, -0.235040307, 0.93551451, -0.291971684, 0.198909909, 0.329377055, 0.924430549, -0.192195028, -0.127762914, 0.245317593, 0.960987091) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53036773, 0.2318203, -0.558730543, 0.939119756, 0.343578428, -0.00287370384, -0.0812207609, 0.213862434, -0.973481536, -0.333852679, 0.914449036, 0.228748128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.766593277, -1.96006727, -0.107848071, 0.976080298, -0.137189135, 0.168661386, 0.138399139, 0.990365744, 0.00461723236, -0.167669922, 0.0188358091, 0.985663354) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.403303981, -1.99999976, -0.0619408637, 0.984807789, -2.66062125e-06, 0.173648238, 2.98927625e-06, 1, -1.63115692e-06, -0.173648268, 2.1254591e-06, 0.98480773) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		bomb1.CFrame = Dodgebox.CFrame
	end
	bomb1.CFrame = RootPart.CFrame * CFrame.new(0,0,-3)
	bomb1.Anchored=false
	bomb1.Velocity=RootPart.CFrame.lookVector*50
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0142358784, 0.0233174488, 0.0206872076, 0.642785072, 3.25146175e-06, -0.766046703, -2.37840504e-06, 1, 2.24876021e-06, 0.766046762, 3.76494427e-07, 0.642785072) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-5.94174753e-06, 1.49992752, 6.44530655e-06, 0.674973369, -2.24472751e-06, 0.737842202, 3.30112925e-06, 1, 2.24354153e-08, -0.737842202, 2.4205583e-06, 0.674973369) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.67408049, 0.116924986, -0.235040307, 0.93551451, -0.291971684, 0.198909909, 0.329377055, 0.924430549, -0.192195028, -0.127762914, 0.245317593, 0.960987091) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53036773, 0.2318203, -0.558730543, 0.939119756, 0.343578428, -0.00287370384, -0.0812207609, 0.213862434, -0.973481536, -0.333852679, 0.914449036, 0.228748128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.766593277, -1.96006727, -0.107848071, 0.976080298, -0.137189135, 0.168661386, 0.138399139, 0.990365744, 0.00461723236, -0.167669922, 0.0188358091, 0.985663354) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.403303981, -1.99999976, -0.0619408637, 0.984807789, -2.66062125e-06, 0.173648238, 2.98927625e-06, 1, -1.63115692e-06, -0.173648268, 2.1254591e-06, 0.98480773) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	Attack = false
	wait(4)
	MagnitudeDamage(bomb1, 30, 0, 0, 400, "Normal", "112503990", 1) 
	Effects.Sphere.Create(BrickColor.new(Torso.Color), bomb1.CFrame, 3, 3, 3, 3, 3, 3, 0.03)
	CFuncs.Sound.Create("169628396", bomb1, 3, 1)
	bomb1.Transparency = 1
	bomb1.Anchored=true
	bomb1.CanCollide=false
	local boo = Instance.new("Explosion", bomb1)	
boo.Position = bomb1.Position
boo.BlastRadius = 30
boo.BlastPressure = 500
end




Mouse.KeyDown:connect(function(Key)
	Key = Key:lower()
		if Attack == false and Key == 'z' then
		dodgeball()
						elseif Attack == false and Key == 'x' then
        roketlunch()
				elseif Attack == false and Key == 'c' then
		fireinDhole()
	end
end)



Mouse.Button1Up:connect(function()
	if Attack == false and Combo== 1 then
		basicatk1()
		Combo=2
		elseif Attack == false and Combo== 2 then
		basicatk2()
		Combo=3
	elseif Attack == false and Combo== 3 then
		basicatk3()
		Combo=1
	end 
	end) 


	


--{{Linked Sword remake by SezHu. Made for WolfyKi11er.}}--
while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA'Model' then
			for _, c in pairs(v:GetChildren()) do
				if c:IsA'Part' then
					c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
				end
			end
		end
	end
	TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	Velocity = RootPart.Velocity.y
	Sine = Sine + Change
	local hit, pos = RayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if RootPart.Velocity.y > 1 and hit == nil then 
		Anim = "Jump"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(-0.0142319221, 0.0233184248, 0.0206878185, 1.00000012, 1.49011612e-08, 0, 2.72463048e-08, 0.965925992, 0.258818656, 2.98023224e-08, -0.258818597, 0.965925932) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0172861218, 1.54588914, -0.00366462767, 0.999084175, 0.00742999092, -0.0421376228, -0.011074245, 0.996153653, -0.0869220346, 0.0413297117, 0.0873090774, 0.995323658) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54051697, 0.254249156, -0.521965742, 0.890014946, -0.152965426, -0.429505706, -0.32768172, 0.440404594, -0.835864007, 0.317014515, 0.884672523, 0.341842651) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.55745959, 0.112057857, 0.343250573, 0.986049891, 0.113037676, 0.12218184, -0.158506706, 0.861737013, 0.481959641, -0.050808996, -0.49460274, 0.867632747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.566533923, -1.59700418, -0.481964171, 0.999206185, -0.0385679156, -0.00998616219, 0.0397087261, 0.94381088, 0.328091979, -0.00322881341, -0.328228056, 0.944592893) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433014154, -1.95977831, 0.0051856637, 1, 0, 0, 0, 0.965925813, 0.258819401, -2.98023224e-08, -0.258819431, 0.965925753) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
		end
	elseif RootPart.Velocity.y < -1 and hit == nil then 
		Anim = "Fall"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(-0.0142319212, 0.0233183783, 0.0206877608, 1.00000012, 1.49011612e-08, 2.98023224e-08, 2.72463048e-08, 0.984807968, 0.173647314, 2.98023224e-08, -0.17364724, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0154076805, 1.5522356, -0.0916171968, 0.999084175, 0.0180828422, -0.0387787819, -0.00742995739, 0.9658584, 0.258964151, 0.0421376526, -0.258438855, 0.965108156) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.44003379, 0.0510732532, -0.418421805, 0.890014946, -0.0760585517, -0.449542671, -0.298804998, 0.647417247, -0.701118112, 0.344367683, 0.75833106, 0.553484201) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.55745959, 0.141547889, 0.332177758, 0.986049891, 0.113037676, 0.12218184, -0.162331849, 0.815350056, 0.555745184, -0.036800772, -0.567826271, 0.822325349) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.573113441, -1.8059541, -0.374102622, 0.999206126, -0.0373207629, 0.0139417946, 0.0392762311, 0.98143959, -0.187706873, -0.00667765737, 0.188105404, 0.982126117) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433013678, -1.95186841, 0.175973177, 1, 0, 2.98023224e-08, 0, 0.98480773, 0.173648328, 2.98023224e-08, -0.173648328, 0.984807789) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
		end		
	elseif TorsoVelocity < 1 and hit ~= nil then
		Anim = "Idle"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(-0.014233104, 0.0233179983, 0.020687025, 0.866024911, 0, -0.500000954, 0, 1, 0, 0.500000954, 0, 0.866024852) * CFrame.new(0, 0 + .05 * math.cos(Sine/25), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49992597, 0, 0.886625588, 0, 0.462487936, 0, 1, 0, -0.462487817, 0, 0.886625707) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + .08 * math.cos(Sine/25), 0, 0), 
         CFrame.new(1.70001733, 0.169989109, 0.310000241, 0.827918112, -0.251382649, -0.501356483, 0.215029001, 0.967887759, -0.130214334, 0.51799041, 6.03497028e-07, 0.855386436) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0 + 2 * math.cos(Sine/25)), math.rad(0), math.rad(0)), 
         CFrame.new(-1.61998975, 0.0599977374, 2.55400209e-06, 0.981399894, 0.191975057, 4.17232513e-07, -0.191975072, 0.981399834, 9.87734779e-07, -2.38418579e-07, -1.05053186e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0 - 2 * math.cos(Sine/25))), 
         CFrame.new(0.649993002, -1.99999797, 9.67067535e-07, 0.98969245, -0.143209025, 1.16229057e-06, 0.14320904, 0.98969245, -1.03930267e-06, -1.01327896e-06, 1.19954348e-06, 1) * CFrame.new(0, 0 - .08 * math.cos(Sine/25), 0) * CFrame.Angles(0, 0, 0 + .01 * math.cos(Sine/25)), 
         CFrame.new(-0.500000954, -2, -9.53674316e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0 - .08 * math.cos(Sine/25), 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
		end
	elseif TorsoVelocity > 2 and hit ~= nil then
		Anim = "Walk"
            if Attack == false then
		PlayAnimationFromTable({
         CFrame.new(-0.0142326364, 0.023318341, 0.0206875801, 1.00000012, 1.5803721e-08, 5.96046448e-08, 2.72463048e-08, 1, 5.61747235e-08, 2.98023224e-08, 2.44280045e-08, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(-.2, math.rad(0 - 10 * math.cos(Sine/6)/2), 0), 
         CFrame.new(1.03447394e-06, 1.49992573, -8.27737608e-07, 0.999084234, 2.72463048e-08, -0.0427876711, 2.93197502e-08, 1, 2.55612349e-08, 0.0427877009, 5.61747235e-08, 0.999084353) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.66816366, 0.125450149, 0.167713135, 0.975411952, -0.217704624, -0.0342991352, 0.22028406, 0.9678877, 0.12111339, 0.0068307519, -0.125690982, 0.992045999) * CFrame.new(0, 0, 0 + .2 * math.cos(Sine/6)/2) * CFrame.Angles(math.rad(0 - 30 * math.cos(Sine/6)/2), 0, 0), 
         CFrame.new(-1.58983934, 0.0268005617, -0.146883398, 0.986049891, 0.166255936, -0.00805497169, -0.16625604, 0.981399775, -0.0959867239, -0.00805321336, 0.0959868878, 0.995350063) * CFrame.new(0, 0, 0 - .3 * math.cos(Sine/6)/2) * CFrame.Angles(math.rad(0 + 30 * math.cos(Sine/6)/2), 0, 0), 
		 CFrame.new(.5, -1.64 - 0.8 * math.cos(Sine / 6) / 2, 0 + 2 *  math.sin(Sine / 6) / 3) * CFrame.Angles(math.rad(-50 *  math.sin(Sine / 6)), math.rad(-3), math.rad(0)),
		 		CFrame.new(-.5, -1.64 + 0.8 * math.cos(Sine / 6) / 2, 0 -  2 * math.sin(Sine / 6) / 3) * CFrame.Angles(math.rad(50 *  math.sin(Sine / 6)), math.rad(3), math.rad(0)),}, .3, false)
		FSwordHandleWeld.C0 = clerp(FSwordHandleWeld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 1)
end
	end
	
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Ice" then
							if Thing[6] <= Thing[5] then
								Thing[6] = Thing[6] + .05
								Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .4, 0)
							else
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							end
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block4" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.new(0, -Thing[7].Scale.Y, 0) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2Fire" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							if Thing[1].Transparency >= .3 then
								Thing[1].BrickColor = BrickColor.new("Bright red")
							else
								Thing[1].BrickColor = BrickColor.new("Bright yellow")
							end
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, -.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[10]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[1].CFrame = Thing[1].CFrame * Thing[11] * CFrame.new(0, 0, .2)
							Thing[1].Rotation = Vector3.new(0, 0, 0)
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end	
end
