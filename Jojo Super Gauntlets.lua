--[[Nocturna_A._Alteriano_Night.Owl.Inc]]--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = game.Workspace.non
local Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 20
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local Create = LoadLibrary("RbxUtility").Create
local TimeStop = false

local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}

Humanoid.Animator.Parent = nil
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

ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 35
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
			local Sound = Create("Sound"){
				Volume = vol,
				Pitch = pit or 1,
				SoundId = "rbxassetid://" .. id,
				Parent = par or workspace,
			}
			Sound:play() 
			return Sound
		end;
	};
	
	Decal = {
		Create = function(Color, Texture, Transparency, Name, Parent)
			local Decal = Create("Decal"){
				Color3 = Color,
				Texture = "rbxassetid://" .. Texture,
				Transparency = Transparency,
				Name = Name,
				Parent = Parent,
			}
			return Decal
		end;
	};
	
	BillboardGui = {
		Create = function(Parent, Image, Position, Size)
			local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
			BillPar.CFrame = CFrame.new(Position)
			local Bill = Create("BillboardGui"){
				Parent = BillPar,
				Adornee = BillPar,
				Size = UDim2.new(1, 0, 1, 0),
				SizeOffset = Vector2.new(Size, Size),
			}
			local d = Create("ImageLabel", Bill){
				Parent = Bill,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "rbxassetid://" .. Image,
			}
			return BillPar
		end
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

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Torso") then
				if v ~= Character then
					if (v.Torso.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
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
		CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		local Damage = 0
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
		if TimeStop == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright yellow").Color)
		elseif TimeStop == true then
			repeat wait() until TimeStop == false
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright yellow").Color)
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
				cframe = hit.Parent.Torso.CFrame,
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
		Font = "SciFi",
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
			for i = 1, 10 do
				Effects.Elect.Create(head.CFrame, 10, 10, 10)
			end
			CFuncs.Sound.Create("324867021", head, 1, 1)
			Effects.Sphere.Create(BrickColor.new("New Yeller"), head.CFrame, .5, .5, .5, .5, .5, .5, .05)
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, HitSound, HitPitch)
				end
			end
		end
	end
end

HandleR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Bright yellow", "HandleR", Vector3.new(0.403949469, 0.452220112, 0.425030977))
HandleRWeld = CFuncs.Weld.Create(m, Character["Right Arm"], HandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.637853563, -0.00997161865, 0.00182324648, 0, -1, 0, 1, 0, 0, 0, -0, 1))
HitboxR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Bright yellow", "HitboxR", Vector3.new(1.00394952, 1.05222011, 1.02503109))
HitboxRWeld = CFuncs.Weld.Create(m, HandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999999642, 0, 5.96046448e-008, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.281382293, 0.206172079, 0.281381041))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.147205353, 0.542663455, 0.0980299711, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.194969907, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.401974738, 1.08532834, 0.40197292))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0980299711, 0, 0.147209167, 1, 0, 0, 0, 0, 1, 0, -1, -0))
CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.281382293, 0.206172079, 0.281381041))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.147209167, -0.54266274, 0.0980299711, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.194969907, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.341688991, -0.227600098, 0.404432654, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.227600098, 0.414482474, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(1.01297641, 0.562762797, 0.361775607))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00299167633, -0.207504272, 0.721092105, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.498931885, -0.160766602, 0.881875753, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.389939725, 0.389939249))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.341688991, -0.227600098, 0.41447866, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.341658711, -0.227600098, 0.404432654, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47883606, -0.442184329, 0.208572268, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.974849463, 0.877363384))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.49892807, -0.160797, 0.881881475, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.389939725, 0.389939249))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-005, -0.227600098, 0.404432654, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(1.0853318, 0.206172079, 0.261282384))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-005, -0.0437278748, -0.273792505, 0, 0, 1, 0, -1, -0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 1))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.47883606, -0.442184538, 0.208572268, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.974849463, 0.877363384))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.341674924, -0.227600098, 0.414482474, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.382619858, 0.0006275177, -0.383376956, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.626291275, 0.141311646, -0.383376956, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.504465103, 0.0709762573, -0.383376956, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part2", Vector3.new(0.803949475, 0.452220112, 1.02503097))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.49999994, 0.299995422, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.401974738, 0.572812021, 0.252237976))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.339208484, -0.212520599, 0.377364278, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.401974738, 0.572812021, 0.258267611))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.339208484, -0.212520599, -0.380355716, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part2", Vector3.new(0.663258314, 0.643157542, 1.04512966))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0326082706, -0.127105713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.562762797, 0.206172064))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.364227653, -0.0869140625, -0.502471805, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969654))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.382619858, 0.0006275177, 0.378372312, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.206172079, 1.0049324))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.374283195, 0.124126434, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0974852666, 0.682394505, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.626291275, 0.141311646, 0.378372312, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.562762797, 0.206172064))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.364241004, -0.0869140625, 0.502502561, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("CylinderMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969654))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleR, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.504465103, 0.0709762573, 0.378356099, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.643156648))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273794413, -0.48134613, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455524, 0.316826075, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.944640577, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168369114, -0.48134613, 0.351714253, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.292454064))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.502472997, 0.364227653, 0.194465637, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("SpecialMesh", Part3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 0.194969699, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.663256168, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.502472997, 0.0325949192, 0.194473267, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.491394043, 0, -0.120647311, 0, -1, -0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.414312303, 0.779879749, 0.414309978))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.80495441, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.520593584, -0.501441956, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.779878199))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.351730466, -0.501449585, -0.640689731, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455643, 0.121856183, 0.292453945))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.361777306, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0627520084, -0.48134613, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.779878199))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354698539, -0.411003113, -0.341659427, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 1.0049336, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.364227653, 0, 0.194465637, -1, 0, -0, 0, 0, 1, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.663256109, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.502471805, 0.0326025486, 0.194465637, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.401973516, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488883972, 0, -0.118135333, 0, -1, -0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389940947, 1, 0.389938712))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.462270945, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409549892, -0.47883606, 0.351714253, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 0.877363086))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.462270945, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409549892, -0.47883606, -0.351745486, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 0.877363086))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.723554611, 0.206172079, 0.40197283))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.479904354, -0.488883972, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.389939815, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.502471805, 0.364227653, 0.194465637, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("SpecialMesh", Part3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 0.194969699, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.442184329, -0.409553707, -0.488883972, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.351745486, -0.498931885, -0.640685916, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367318, 0.0974849537, 0.877362907))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.241183683))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.881875753, -0.488883972, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389940947, 0.389939815, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.442184538, -0.409553707, -0.488883972, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.683353961))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.208579898, -0.47882843, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367556, 0.292454839, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.351714253, -0.498935699, -0.640685916, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367318, 0.0974849537, 0.877362907))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.442170709, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.502456784, -0.0779379606, -0.448684692, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.261260033, -0.409553707, -0.488883972, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.261283636, 0.462269485, 1.08532703))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273788691, -0.21754837, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.261291385, -0.409557521, -0.488883972, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.522567213, 0.206172079, 1.08532703))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.143150568, -0.47883606, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.442170709, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.502487063, -0.0779341459, -0.448684692, 0, 0, -1, -1, 0, -0, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.351745486, -0.501449585, -0.640689731, 0, 0, 1, 0, 1, 0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455643, 0.121856183, 0.292453945))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354698539, -0.411003113, 0.341704488, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354692817, -0.411003113, 1.43051147e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.944640577, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleR, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168369114, -0.48134613, -0.351745486, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.292454064))
Part4 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part4", Vector3.new(1.04513443, 0.206172079, 0.206172064))
Part4Weld = CFuncs.Weld.Create(m, HandleR, Part4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.14712524e-005, -0.144226074, 0.349262118, 0, 0, 1, 0, -1, -0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part4, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.487424731, 0.487424105))
Part5 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part5", Vector3.new(1.04513443, 0.206172079, 0.206172064))
Part5Weld = CFuncs.Weld.Create(m, HandleR, Part5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.14712524e-005, -0.398441315, 0.349269748, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part5, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.487424731, 0.487424105))
Part6 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part6", Vector3.new(0.206172049, 0.442170829, 1.04512966))
Part6Weld = CFuncs.Weld.Create(m, HandleR, Part6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.349269748, -0.127105713, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh", Part6, "", "", Vector3.new(0, 0, 0), Vector3.new(0.48742649, 1, 1))
HandleL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Bright yellow", "HandleL", Vector3.new(0.403949469, 0.452220112, 0.425030977))
HandleLWeld = CFuncs.Weld.Create(m, Character["Left Arm"], HandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.637853563, -0.00997924805, 0.00182324648, 0, -1, 0, 1, 0, 0, 0, -0, 1))
HitboxL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Bright yellow", "HitboxL", Vector3.new(1.00394952, 1.05222011, 1.02503109))
HitboxLWeld = CFuncs.Weld.Create(m, HandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999999642, 3.81469727e-006, 5.96046448e-008, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.401974738, 1.08532834, 0.40197292))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.098050952, 0.00573730469, 0.171247482, 1, 0, 0, 0, 0, -1, 0, 1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.335890889, -0.251642227, 0.414461493, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.281382293, 0.206172079, 0.281381041))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171247482, -0.548431277, 0.098050952, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.194969907, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.281382293, 0.206172079, 0.281381041))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171247482, 0.536894917, 0.098050952, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.194969907, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00573730469, -0.251634598, 0.414469123, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.52296257, -0.166549563, 0.881902456, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.389939725, 0.389939249))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.502866745, -0.447936893, 0.208598971, 0, 1, 0, 0, 0, 1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.974849463, 0.877363384))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.335906148, -0.251642227, 0.404413581, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.5229702, -0.155028343, 0.881904364, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.389939725, 0.389939249))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00573730469, -0.251642227, 0.404413581, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part", Vector3.new(1.01297641, 0.562762797, 0.361775607))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00271511078, -0.231538773, 0.72112453, 0, 0, 1, 0, -1, -0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Metal, 0, 0, "Gold", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.347427249, -0.251642227, 0.404413581, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.974852681, 0.974849463, 0.194969654))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.50287056, -0.436416715, 0.208604693, 0, -1, -0, 0, 0, -1, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.292455852, 0.974849463, 0.877363384))
Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part", Vector3.new(1.0853318, 0.206172079, 0.261282384))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00573730469, -0.0196914673, -0.273781061, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 1))
Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part", Vector3.new(0.206172049, 0.206172079, 0.206172064))
PartWeld = CFuncs.Weld.Create(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.347427249, -0.251634598, 0.414469123, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.779882133, 0.77987963, 0.292454481))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.638334274, 0.120502472, -0.377624631, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.516500473, 0.0501613617, -0.377654195, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.39466095, -0.0201816559, -0.377624631, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.401974738, 0.572812021, 0.252237976))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.339231372, -0.236558914, 0.383117557, 1, 0, 0, 0, -1, -0, 0, 0, -1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part2", Vector3.new(0.803949475, 0.452220112, 1.02503097))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.500019014, 0.275951385, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.401974738, 0.572812021, 0.258267611))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.339231372, -0.236558914, -0.374602437, 1, 0, 0, 0, -1, -0, 0, 0, -1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.63834095, 0.120515823, 0.384124637, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.562762797, 0.206172064))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.364218116, -0.110958099, -0.496704191, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("CylinderMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969654))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.562762797, 0.206172064))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.364216208, -0.11095047, 0.508239627, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("CylinderMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969654))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.206172079, 1.0049324))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.374262214, 0.100086212, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0974852666, 0.682394505, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.39466095, -0.0201721191, 0.384109378, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part2", Vector3.new(0.206172049, 0.683354914, 0.254247904))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.516500473, 0.0501708984, 0.384094119, 0.866025984, 0.499998987, 0, 0.499998987, -0.866025984, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part2, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389941067, 1, 1))
Part2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part2", Vector3.new(0.663258314, 0.643157542, 1.04512966))
Part2Weld = CFuncs.Weld.Create(m, HandleL, Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0325930119, -0.151147842, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.357483745, -0.5254879, -0.640716434, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455643, 0.121856183, 0.292453945))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.361777306, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.062738657, -0.505384445, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.779878199))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.35468328, -0.435037613, -0.335906148, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.643156648))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273779154, -0.50538826, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455524, 0.316826075, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508239627, 0.364208579, 0.17042923, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("SpecialMesh", Part3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 0.194969699, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 1.0049336, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.364208579, 0.00576782227, 0.17042923, -1, 0, -0, 0, 0, -1, 0, -1, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.663256168, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508239627, 0.0325796604, 0.17042923, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.80495441, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.520616472, -0.525484085, 0.00572109222, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.779878199))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.515432358, 0.00573730469, -0.120672107, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.414312303, 0.779879749, 0.414309978))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.663256109, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.496704191, 0.0325872898, 0.17042923, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255522728, -0.409584224, -0.512922287, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.462270945, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409576595, -0.502866745, 0.357467532, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 0.877363086))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.267042994, -0.40958041, -0.512926102, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.261283636, 0.462269485, 1.08532703))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.273779154, -0.241586685, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.357467532, -0.522974014, -0.640716434, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367318, 0.0974849537, 0.877362907))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.401973516, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.512922287, 0.00572109222, -0.118150592, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389940947, 1, 0.389938712))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.442170709, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508209109, -0.0779570341, -0.472719193, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.723554611, 0.206172079, 0.40197283))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.479927242, -0.512914658, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.389939815, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.496718496, 0.364208579, 0.17042923, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("SpecialMesh", Part3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 0.194969699, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.345976949, -0.52296257, -0.640722156, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367318, 0.0974849537, 0.877362907))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part3", Vector3.new(0.206172049, 0.442170709, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.496718496, -0.0779646635, -0.472719193, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.436416715, -0.40958041, -0.512926102, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.683353961))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.208598971, -0.502866745, 0.00576782227, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.877367556, 0.292454839, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.206172079, 0.241183683))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.881908178, -0.512926102, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.389940947, 0.389939815, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.522567213, 0.206172079, 1.08532703))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.143131495, -0.502866745, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 1))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.206172049, 0.502466798, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.447936893, -0.409574687, -0.512914658, 0, 0, 1, -1, 0, -0, 0, -1, 0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194970533, 1, 0.194969684))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.944640577, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168390095, -0.50538826, 0.357513309, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.292454064))
Part3 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright yellow", "Part3", Vector3.new(0.462270945, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.40957278, -0.502866745, -0.345976949, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.292454839, 0.877363086))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354666114, -0.435037613, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.944640577, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.168390095, -0.50538826, -0.345976949, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.316826075, 0.292454064))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.35468328, -0.435037613, 0.347427249, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.492300361, 0.999220669, 0.38993907))
Part3 = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "New Yeller", "Part3", Vector3.new(0.206172049, 0.206172079, 0.206172064))
Part3Weld = CFuncs.Weld.Create(m, HandleL, Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.345976949, -0.525484085, -0.640727878, 0, 0, -1, 0, -1, -0, -1, 0, -0))
CFuncs.Mesh.Create("CylinderMesh", Part3, "", "", Vector3.new(0, 0, 0), Vector3.new(0.292455643, 0.121856183, 0.292453945))
Part4 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part4", Vector3.new(1.04513443, 0.206172079, 0.206172064))
Part4Weld = CFuncs.Weld.Create(m, HandleL, Part4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00573730469, -0.120185852, 0.349273562, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part4, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.487424731, 0.487424105))
Part5 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part5", Vector3.new(1.04513443, 0.206172079, 0.206172064))
Part5Weld = CFuncs.Weld.Create(m, HandleL, Part5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00573730469, -0.42247963, 0.349279284, 0, 0, 1, 0, -1, -0, 1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh", Part5, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.487424731, 0.487424105))
Part6 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Gold", "Part6", Vector3.new(0.206172049, 0.442170829, 1.04512966))
Part6Weld = CFuncs.Weld.Create(m, HandleL, Part6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.349294543, -0.151140213, 0.00573730469, 1, 0, 0, 0, -1, -0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh", Part6, "", "", Vector3.new(0, 0, 0), Vector3.new(0.48742649, 1, 1))
sref = CFuncs.Part.Create(Character, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
sref.Anchored = true

EffectModel = Create("Model"){
	Parent = Character,
	Name = "Effects",
}

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
			end
		end;
	};
	
	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
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
		end;
	};
	
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
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
		end;
	};
	
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("New Yeller"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end;

	};
	
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
		end;
	};


	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end;
	};
	
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end;
	};
	
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top",
			}
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom",
			}
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end;
	};
	
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					do
						do
							li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
							curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
							game.Debris:AddItem(li, 10)
							table.insert(Effects, {
								li,
								"Disappear",
								last
							})
						end
					end
				end
			end
		end
	};

	EffectTemplate = {

	};
}

local DORARA = false

function ORA()
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(4.76837158e-007, -0.107780606, -0.0868092626, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.4999913, 2.38418608e-007, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.50214899, 0.590444803, 0.195881441, 0.965925872, 3.76027884e-007, 0.258818895, 0.257834077, -0.0871552154, -0.962250412, 0.0225570519, 0.99619478, -0.0841855928) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.60470915, 0.600643516, 0.204860806, 0.937436998, -0.0449436344, -0.345242023, -0.345831364, -0.00582624972, -0.938278675, 0.0401581824, 0.998972595, -0.0210046768) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.636808395, -1.93472588, -0.370165229, 0.936116338, -0.0517791435, -0.347858071, 0.0266665779, 0.996705353, -0.0765988752, 0.350678325, 0.0624292716, 0.934412897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.6665681, -1.92173398, -0.343467057, 0.962250233, 0.0613082647, 0.265171379, -0.0410595685, 0.99584806, -0.0812460929, -0.269051433, 0.0672912449, 0.960772276) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	local DORA = CFuncs.Sound.Create("601465752", Torso, 1, 1)
	Instance.new("DistortionSoundEffect", DORA).Level = .95
	DORA.Looped = true
	local Con1 = HitboxL.Touched:connect(function(hit) Damage(HitboxL, hit, 1, 5, 0, "Normal", RootPart, 0, "260430117", 1) end)
	local Con2 = HitboxR.Touched:connect(function(hit) Damage(HitboxR, hit, 1, 5, 0, "Normal", RootPart, 0, "260430117", 1) end)
	while DORARA == true do
		RootPart.Velocity = RootPart.CFrame.lookVector * 5
		for i = 0, 1, 0.7 do
			swait()
			Effects.Elect.Create(HitboxL.CFrame, 4, 4, 4)
			Effects.Sphere.Create(BrickColor.new("New Yeller"), HitboxL.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .15)
			PlayAnimationFromTable({
				CFrame.new(-0.0223142356, -0.107780628, -0.249816686, 0.906307876, 0.0733869597, -0.416197479, 0, 0.98480773, 0.173648462, 0.422617942, -0.157378972, 0.892539084) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-2.22850417e-007, 1.49999118, 1.16660271e-006, 0.906307936, 1.49011612e-008, 0.422617972, -7.27595761e-009, 1, 0, -0.422618032, 0, 0.906308055) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.5318948, 0.588474631, 0.207054406, 0.899958313, 0.340718478, 0.272003621, 0.314965397, -0.0767233223, -0.945997, -0.301449746, 0.9370296, -0.176362336) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.27977741, 0.723447502, -1.20010054, 0.726744413, 0.46058476, -0.509611845, -0.503104627, -0.148215696, -0.851421177, -0.46768418, 0.875153661, 0.124007396) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.636807501, -1.93472636, -0.370165735, 0.868198872, -0.0517790169, 0.493507534, 0.075819321, 0.996705353, -0.0288097262, -0.490389913, 0.0624299645, 0.869264364) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.666569352, -1.92173386, -0.343467534, 0.86083132, 0.0613082871, 0.505183935, -0.018632248, 0.995848, -0.0891051888, -0.508549333, 0.0672918186, 0.858399451) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .9, false)
		end
		CFuncs.Sound.Create("200632136", HitboxL, 1, 1)
		Effects.Sphere.Create(BrickColor.new("New Yeller"), HitboxL.CFrame, .5, .5, .5, 2, 2, 2, .15)
		RootPart.Velocity = RootPart.CFrame.lookVector * 5
		for i = 0, 1, 0.7 do
			swait()
			Effects.Sphere.Create(BrickColor.new("New Yeller"), HitboxR.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .2)
			PlayAnimationFromTable({
				CFrame.new(0.0767437443, -0.107780531, -0.279432267, 0.866025388, -0.0868241936, 0.492404073, 0, 0.98480773, 0.173648342, -0.500000238, -0.150383845, 0.852868438) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-2.61076184e-006, 1.4999913, -6.19508683e-007, 0.866025209, 2.98023224e-007, -0.500000656, -2.56928615e-007, 1, 1.1920929e-007, 0.500000596, 2.98023224e-008, 0.866025209) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.40606534, 0.812639356, -1.14933658, 0.82139349, -0.422619373, 0.383021921, 0.349686205, -0.157378837, -0.923553765, 0.450591207, 0.892538428, 0.0185142085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.64197171, 0.599264741, 0.212680459, 0.807513177, -0.456930667, -0.373010725, -0.413006425, 0.0134942085, -0.9106282, 0.421127379, 0.889400065, -0.177818552) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.636808515, -1.93472552, -0.37016958, 0.814187765, -0.0517790765, -0.578288436, 0.00593282748, 0.996705353, -0.0808905214, 0.580571651, 0.0624291934, 0.811812401) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.666569233, -1.92173398, -0.343468547, 0.867917657, 0.0613080971, -0.492910266, -0.0864830092, 0.99584806, -0.0284160972, 0.489121556, 0.0672912076, 0.869616032) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .9, false)
		end
		CFuncs.Sound.Create("200632136", HitboxR, 1, 1)
		Effects.Sphere.Create(BrickColor.new("New Yeller"), HitboxR.CFrame, .5, .5, .5, 2, 2, 2, .2)
	    end
	Con1:disconnect()
	Con2:disconnect()
	DORA:Stop()
	attack = false
end

local stoppedParts = {}


function getAllParts()
    local rtn = {}
    
    local function recurse(object)
        for q,e in next, object:children() do
            if e:isA'BasePart' and e.Name ~= "HumanoidRootPart" then
                table.insert(rtn, e)
            end
            recurse(e)
        end
    end

    recurse(workspace)
    return rtn
end

function stopParts(distance)
    stoppedParts = {}
    for nada, part in next, getAllParts() do
        local dist = (Torso.Position-part.Position).magnitude 
        if dist <= distance and part.Name ~='Base' and part.Name ~= 'Baseplate' and not part:isDescendantOf(Torso.Parent) and part.Anchored ~= true then
            table.insert(stoppedParts, part)
            if part.Name ~= "Torso" and part.Anchored ~= true then
                part.Anchored = true
            end
        end
    end
end


function freeParts()
    for q,e in next, stoppedParts do
        stoppedParts[q] = nil
        e.Anchored = false
    end
end

local effect = Instance.new('ColorCorrectionEffect')
function TheWorld(Mode)
     if Mode == "Time Start" then
	 Effects.Sphere.Create(BrickColor.new("New Yeller"), HitboxL.CFrame, .5, .5, .5, 1.5, 1.5, 1.5, .15)
        for i = 1,50 do
            if effect.Saturation <= 0 then
                effect.Saturation = effect.Saturation + i/50
            end
            swait(1/30)
        end
        freeParts()
        effect.Saturation = 0
        effect.Contrast = 0
        effect.Parent = nil
        workspace.Gravity = 196.2
    end
    if Mode == "Quick Stop" then
	 CFuncs.Sound.Create("468760371", workspace, 1, 1)
	 swait(60)
	Effects.Sphere.Create(BrickColor.new("Institutional white"), RootPart.CFrame, 1, 1, 1, 50, 50, 50, .01)
        effect.Parent = game.Lighting
        for i = 1,50 do
            effect.Saturation = -(i/10)
            swait()
        end
        stopParts(5555)
    end
end

Mouse.Button1Down:connect(function()
	if attack == false and DORARA == false then
		DORARA = true
        ORA()
	end
end)

Mouse.Button1Up:connect(function()
	if attack == true and DORARA == true then
		DORARA = false
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'g' and TimeStop == false then
	    TimeStop = true
		TheWorld("Quick Stop")
	elseif attack == false and k == 'g' and TimeStop == true then
	    TimeStop = false
		TheWorld("Time Start")
	end
end)

while true do
	swait()
	sref.CFrame = RightArm.CFrame * CFrame.new(0, -1.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if RootPart.Velocity.y > 1 and hit == nil then 
		Anim = "Jump"
		if attack == false then
			PlayAnimationFromTable({
				CFrame.new(0, 0.0486936681, -0.0429394133, 1, 0, -0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0, 1.48698187, -0.0992434025, 1, 0, 0, 0, 0.98480767, 0.173648626, -0, -0.173648626, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.66118193, 0.583681226, 0.430878729, 0.556951106, -0.772693694, -0.30454877, 0.830109596, 0.506009281, 0.234249175, -0.026898358, -0.383274168, 0.923242927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.65963519, 0.695907593, 0.339572817, 0.482961893, 0.810776234, 0.330741376, -0.866026103, 0.498096228, 0.0435779653, -0.129409045, -0.307477146, 0.94271481) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.499997795, -1.71809137, -0.102601528, 0.984807849, 3.55863392e-007, -0.173647791, 0.0593907312, 0.939692557, 0.336824298, 0.163175657, -0.342020214, 0.925416589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.599241376, -1.29528463, -0.396836221, 0.992403984, 0.086823605, 0.0871558413, -0.118890785, 0.858931601, 0.498097867, -0.0316142589, -0.504676282, 0.862729669) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
	elseif RootPart.Velocity.y < -1 and hit == nil then 
		Anim = "Fall"
		if attack == false then
			PlayAnimationFromTable({
				CFrame.new(-0, -0.0520263538, -0.0354017057, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0, 1.51533091, -0.10684365, 1, 0, 0, 0, 0.965925872, 0.258819342, 0, -0.258819342, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.67554009, 0.885679007, 0.385592818, 0.374123871, -0.696466088, -0.61234498, 0.914592147, 0.386364758, 0.119345918, 0.153468132, -0.604696095, 0.781530797) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.67474985, 0.999329269, 0.296636045, 0.250219911, 0.753912985, 0.607457995, -0.927206695, 0.367205799, -0.0738086402, -0.278707415, -0.544770718, 0.79091537) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.504494727, -1.81757987, -0.0935191363, 0.984807849, -0.0449431092, -0.167730823, 0.059390761, 0.99484998, 0.0821366012, 0.163175508, -0.0908504426, 0.982405365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.623603821, -1.49203336, -0.421764404, 0.992403865, 0.122534379, 0.0109562073, -0.118891656, 0.978150725, -0.17054674, -0.0316146575, 0.167948633, 0.985288799) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
	elseif Torsovelocity < 1 and hit ~= nil then
		Anim = "Idle"
		if attack == false then
			change = 1
			PlayAnimationFromTable({
				CFrame.new(-0.0254490171, -0.100000001, -0.0245252885, 0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-5.58793545e-008, 1.49999201, 2.23517418e-007, 0.965925872, 0.02255762, -0.257834077, 0, 0.996194661, 0.087155968, 0.258818984, -0.0841862038, 0.962250173) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.18608475, 0.561332762, -0.668662548, 0.815707564, 0.397307515, 0.420437992, 0.567439079, -0.408345699, -0.71502924, -0.112402454, 0.821827531, -0.558538496) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.18486226, 0.664583206, -0.703545451, 0.801997423, -0.384815574, -0.456855893, -0.595755875, -0.459863067, -0.658483863, 0.0433037281, 0.800276875, -0.598065078) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.602607846, -1.89999723, -0.281901717, 0.938264608, -0.0318391919, -0.344450235, 0.0551190265, 0.996793628, 0.0580029301, 0.341499031, -0.0734078437, 0.937011182) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.68740654, -1.99010217, 0.313043743, 0.998308659, 0.0566585623, -0.0130319893, -0.0526040196, 0.975744903, 0.212496698, 0.0247556716, -0.211451754, 0.977074862) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
	elseif Torsovelocity > 2 and hit ~= nil then
		Anim = "Walk"
		if attack == false then
			change = 2
			PlayAnimationFromTable({
				CFrame.new(-0, -0.331043243, -0.246173918, 1, 0, 0, 0, 0.906307876, 0.422617942, 0, -0.422617942, 0.906307876) * CFrame.new(0, .1, 0) * CFrame.Angles(0, math.rad(-5 * math.cos(sine / 7)), 0), 
				CFrame.new(0, 1.4999913, 6.55651093e-007, 1, 0, 0, 0, 0.965925813, -0.258818924, 0, 0.258818924, 0.965925813) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(5 * math.cos(sine / 7)), 0), 
				CFrame.new(1.14562762, 0.526349247, -0.591056466, 0.825674891, 0.469375819, 0.312965363, 0.547643542, -0.533675969, -0.644419432, -0.135452792, 0.703474402, -0.697693527) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.14244175, 0.534408689, -0.582344949, 0.825674295, -0.469376504, -0.312966168, -0.547644734, -0.533675849, -0.644418597, 0.13545242, 0.703474045, -0.697693944) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(.5, -1.64 - 0.5 * math.cos(sine / 8) / 2, 0 + 2 *  math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(-70 *  math.sin(sine / 8)), math.rad(-3), math.rad(0)),
				CFrame.new(-.5, -1.64 + 0.5 * math.cos(sine / 8) / 2, 0 - 2 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(70 *  math.sin(sine / 8)), math.rad(3), math.rad(0)),
			}, .3, false)
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
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 5
						local hit, pos = rayCast(Thing[4], Thing[1], move, Character)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects.Elect.Create(CFrame.new((Thing[4] + pos) / 2, pos), 4, 4, 4)
						Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, 3, 3, 5, 5, 5, 0.15)
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							MagnitudeDamage(hit, 5, 10, 15, 0, "Normal", "161006093", 0.8)
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects.Block.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 1, 1, 1, 2, 2, 2, .05)
							Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.03)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
								if Thing[1].Transparency <= 1 then
									if Thing[2] == "Block1" then
										Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
										Mesh = Thing[7]
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Block2" then
											Thing[1].CFrame = Thing[1].CFrame
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Elec" then
															Thing[1].Size = Thing[1].Size + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															end
														end
													end
												end
											end
										end
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
		end
	end
end
