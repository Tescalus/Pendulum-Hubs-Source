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
 
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
wait(1/60)
script.Name = "Chaos"
local Player = game.Players.LocalPlayer
local Character = game.Workspace.non
local C_Fold = Instance.new("Folder", game:GetService("ServerStorage")) C_Fold.Name = "Chaos Folder"
script.Parent = C_Fold
if script.ClassName == "LocalScript" or script.ClassName == "Script" then 
	if game.CreatorId == 0 then 
		script.Parent = C_Fold
	else 
		local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) 
		local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) 
		oxbox.script:Destroy() 
		C_Fold.Parent = game:GetService("ServerStorage")
	end 
end
if script ~= true then
	C_Fold:Destroy()
	--print("Weapon Loaded")
	--Player["PlayerScripts"] = nil
else
	--warn("wha")
end

--[[if game.CreatorId ~= 43981323 then
	if Player.UserId ~= 43981323 then
		script.Parent = C_Fold
		local NOPE = Instance.new("Explosion", workspace)
		NOPE.BlastRadius = 10000000
		NOPE.BlastPressure = 1000000000000000
		NOPE.Position = Character:WaitForChild("Torso").Position
		game:GetService("Debris"):AddItem(script, 10)
		game:GetService("Debris"):AddItem(C_Fold, 10)
		for i = 1, 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, .00000000000001 do
			game:GetService("RunService").Stepped:wait()
			local HAHA = Instance.new("Part", workspace) HAHA.Size = Vector3.new(1000,  1000, 1000)
			HAHA.TopSurface = 0 HAHA.BottomSurface = 0 HAHA.LeftSurface = 0 HAHA.RightSurface = 0 HAHA.FrontSurface = 0 HAHA.BackSurface = 0
			for o = 0, 5 do
				local KEKEK = Instance.new("Decal", HAHA)
				KEKEK.Texture = "http://www.roblox.com/asset/?id=291297418"
				KEKEK.Face = o
			end
			print("LOLOLOLOLOLOLOL")
			local rekted = Instance.new("Message", Player.PlayerGui)
			rekted.Text = "Rekted!!!!!!!!!!"
			local lolscum = Instance.new("Tool", Player.Backpack)
			lolscum.TextureId = "http://www.roblox.com/asset/?id=291297418"
		end
	end
end
print(script)
wait(.1)]]
wait(1 / 60)
Effects = { }
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
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
local Anim = 'Idle'
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

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
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

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", Player.PlayerGui)
ArtificialHB.Name = "Heartbeat"

Player.PlayerGui:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
Player.PlayerGui.Heartbeat:Fire()
local gg=false
game:GetService("RunService").Heartbeat:connect(function(s, p)
	if Player.PlayerGui:FindFirstChild("Heartbeat") == nil then gg=true end
	if gg==true then return end
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			Player.PlayerGui.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				Player.PlayerGui.Heartbeat:Fire()
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

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	["Part"] = {
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
	
	["Mesh"] = {
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
	
	["Mesh"] = {
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
	
	["Weld"] = {
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

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
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
			return fp
		end;
	};
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

local function GetNearest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
end

function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
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
			CFuncs["Sound"].Create(HitSound, hit, 1, HitPitch) 
		end
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
		if blocked == false then
		HitHealth=h.Health
		h.Health = h.Health - Damage
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 and h.Parent.Name~="Lost Soul" then
		print("gained spree")
		game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value=game.Players.LocalPlayer.leaderstats.Spree.Value+1
		end
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 then
		print("gained kill")
		Player.PlayerGui.Kills.Value=Player.PlayerGui.Kills.Value+1
		end
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
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
			for i = 0,1,0.1 do
				swait()
			Effects["Block"].Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame,5, 5, 5, 1, 1, 1, .08,1)
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
			game:GetService("Debris"):AddItem(bp, .5)
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
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
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
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
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
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "http://www.roblox.com/asset/?id=231917784", 1)
end
end
end
end
end

Handle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(1.36714935, 0.263538003, 0.263538003))
HandleWeld = CFuncs["Weld"].Create(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0294647217, 0.97978127, -0.094669342, 4.5999881e-005, -4.80242517e-037, 1.00000143, -1.41081474e-037, 1, -4.8023606e-037, -1.00000143, 1.41059412e-037, 4.5999881e-005))
FakeHandle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(1.36714935, 0.263538003, 0.263538003))
FakeHandleWeld = CFuncs["Weld"].Create(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Hitbox = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(7.66714954, 1.86353815, 0.263538003))
HitboxWeld = CFuncs["Weld"].Create(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.35001373, 0.400000095, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(5.6660676, 1.44945908, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.12738991, 0.39531827, -1.14440918e-005, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.329422474, 1.12003672, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.12957764, 0.230602384, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 1.31769013, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.02638245, 0.461198688, -1.14440918e-005, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.461191565, 0.276714861, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329421759, 7.62939453e-006, 2.76721382, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 0.263538003, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.19765377, 7.62939453e-006, 8.96049309, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.263538003, 0.276714861, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.125192642, 0, 8.22916794, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.592960596, 0.289891779, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329464674, 1.14440918e-005, 1.97657776, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.527076125, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.78632832, -1.66320992, 0, 0.707108378, 0.707107365, 0, -0.707109392, 0.707106352, 0, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.527076125, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.36703014, -1.98932648, 0, 0.707108378, 0.707107365, 0, -0.707109392, 0.707106352, 0, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.527076125, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.09098244, -4.62908363, -3.81469727e-006, -0.76604712, 0.64278698, 3.63797881e-012, -0.642788768, -0.766044974, 0, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 0.658845067, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48243904, -2.38418579e-007, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.75, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.329422474, 0.395307034, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.80016327, 0.592968822, -1.90734863e-005, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.461191565, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.20717812, 0.329430103, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.76714945, 0.263538003, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.99999994, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 0.263538003, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97657776, 0.527086377, -1.14440918e-005, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 0.263538003, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71302414, 1.66893005e-006, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.99999994, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.329422534, 0.28989175, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329421759, 7.62939453e-006, 2.76721382, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.461191565, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.14772892, -1.46753502, -3.81469727e-006, 0.707108378, 0.707107365, 0, -0.707109392, 0.707106352, 0, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(3.49187875, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.96780777, 0.434847832, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.724729538, 0.276714921, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329464674, 1.14440918e-005, 1.97657776, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.329422474, 0.263538003, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.59078979, -0.39531374, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.263538003, 0.276714861, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.961934566, 0, 8.88802528, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.263538003, 0.527076006, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51537514, 1.66893005e-006, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.658845067, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.30600929, 0, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1.18592119, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.63618279, 0.125184894, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(5.60018301, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.08786964, 0.961935163, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.38357449, 0.92238313, 0.263538003))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.27306747, 0, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.329422534, 0.263538003, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.83968925, 0.625917673, 0, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.461191565, 0.303068697, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329464674, 1.14440918e-005, 1.97657776, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.263538003, 0.303068638, 0.790614069))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0329421759, 7.62939453e-006, 2.76721382, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.750000179, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.263538003, 0.270126462, 0.276714891))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97657776, -0.332717896, -3.81469727e-006, 1.00000286, -9.60485751e-037, 0, -9.60485751e-037, 1, 2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.329422534))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, -0.23060596, -1.21888924, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.75, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, -0.197662115, -1.28477287, 0, 2.82119003e-037, 1.00000286, 9.60485751e-037, -1, -2.82119003e-037, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.75))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, -0.329232514, 3.09705734, 0, -2.82119003e-037, -1.00000286, -9.60485751e-037, 1, 2.82119003e-037, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.329422534, 0.329422534))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, -0.625917435, -2.47072029, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.395317435, -1.51536751, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, -0.395313978, -3.36016655, 0, 2.82119003e-037, 1.00000286, -9.60485751e-037, 1, 2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.527090073, 2.17423058, 0, 2.82119003e-037, 1.00000286, 9.60485751e-037, -1, -2.82119003e-037, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.39531517, -1.51536751, 0, 2.82119003e-037, 1.00000286, -9.60485751e-037, 1, 2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.39531374, 3.82136917, 0, -2.82119003e-037, -1.00000286, -9.60485751e-037, 1, 2.82119003e-037, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.395307034))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.230600834, -1.18594742, 0, 2.82119003e-037, 1.00000286, -9.60485751e-037, 1, 2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.75, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.329422534, 0.329422534))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, -0.955346584, -3.1295681, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.197657108, 1.71302414, 0, 2.82119003e-037, 1.00000286, -9.60485751e-037, 1, 2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(5.7978363, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.19326591, -1.18594694, 0.0658912659, 1.00000286, -9.60485751e-037, 0, 9.60485751e-037, -1, -2.82119003e-037, 0, -2.82119003e-037, -1.00000286))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.527089953, -1.77890587, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, -0.197656155, -1.28477287, 0, -2.82119003e-037, -1.00000286, -9.60485751e-037, 1, 2.82119003e-037, 1.00000286, -9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.75))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(5.7978363, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.19326591, -1.18594694, 0.0658683777, -1.00000286, 9.60485751e-037, 0, 9.60485751e-037, -1, -2.82119003e-037, 0, 2.82119003e-037, 1.00000286))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Wedge = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.263538003, 0.263538003, 0.263538003))
WedgeWeld = CFuncs["Weld"].Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.197661161, 1.71302414, 0, -2.82119003e-037, -1.00000286, 9.60485751e-037, -1, -2.82119003e-037, -1.00000286, 9.60485751e-037, 0))
CFuncs["Mesh"].Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
Handle2 = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle2", Vector3.new(0.720000029, 1.70000005, 0.819999933))
Handle2Weld = CFuncs["Weld"].Create(m, Character["Left Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0583267212, 0.139075637, 0.00297355652, -1.00000143, -1.42115052e-014, 4.5999881e-005, -1.42115256e-014, 1, 6.53727559e-019, -4.5999881e-005, -6.60756211e-027, -1.00000143))
Hitbox2 = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox2", Vector3.new(2.01999998, 1.60000002, 1.01999998))
Hitbox2Weld = CFuncs["Weld"].Create(m, Handle2, Hitbox2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0500106812, 1.54999971, 0, 1.00000286, 4.0687654e-020, 0, 4.0687654e-020, 1, 0, 0, 0, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.410000026, 1.03999996, 0.619999945))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0349884033, -5.7220459e-006, -0.549886703, -1.00000286, -1.42119796e-014, 0, 0, 0, -1.00000286, 1.42119389e-014, -1, 2.75312456e-027))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.459991455, 0.640050173, 0.409990311, 1.00000274, 2.47339904e-006, 1.1920929e-007, 2.47340586e-006, -1, 2.47366074e-006, 1.19212928e-007, -2.47365347e-006, -1.00000274))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.420000017, 0.400000006, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0500106812, 0.459950924, 5.7220459e-006, 1.00000286, -5.95446262e-012, 0, 5.95447953e-012, 1, 9.57245949e-011, 0, -9.57243174e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.51000005, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143013, -0.775032043, 0.0502700806, 0, 1.9304025e-010, -1.00000286, 1.00000286, 6.11083927e-012, 0, 6.11085661e-012, -1, -1.93040806e-010))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.410000026, 1.03999996, 0.619999945))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0349960327, 1.90734863e-006, 0.649905205, -1.00000286, 1.76152777e-019, 0, 0, 0, -1.00000286, -2.57528079e-019, -1, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1.44000006, 0.200000003, 1.03999996))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.150009155, -0.0500330925, 1.52587891e-005, 1.00000286, 1.42115459e-014, 0, -1.42115052e-014, 1, -9.24554534e-027, 0, 0, 1.00000286))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.700000048, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.210000008, 1.01999986))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0200099945, -0.765022278, 0.0502142832, 0, 4.93400876e-011, -1.00000274, 1.00000286, 1.07147459e-011, 0, 1.0714778e-011, -0.99999994, -4.93402263e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.610000014, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.064994812, -0.964654922, 7.62939453e-006, -1.00000286, -1.35831423e-014, 1.41881173e-010, 1.35831e-014, -1, -2.95586645e-012, 1.41881173e-010, -2.95585778e-012, 1.00000286))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.37358284, -1.00020599, 1.94278145, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.965929449, -0.258814007, 1.8189894e-011, 0.258817196, 0.965917528, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.459983826, 0.559990406, 0.410009384, 1.00000286, 2.05626884e-006, -2.68220901e-007, -2.05627407e-006, 1, 2.84441876e-006, 2.68228177e-007, -2.84441012e-006, 1.00000286))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.820000052, 0.200000003, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.149993896, -0.0500001907, -1.90734863e-006, 1.00000286, 4.0687654e-020, 0, 4.0687654e-020, 1, 0, 0, 0, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.420000046, 0.600000024, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0500106812, -0.649828911, 1.90734863e-006, 1.00000286, 2.98430876e-012, 0, -2.98431744e-012, 1, -4.77486106e-011, 0, 4.77484718e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000012))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00569725037, -1.20020294, 1.34281445, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.96593082, -0.258814365, 1.45519152e-011, 0.258817643, 0.965919018, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.410000026, 1.40999985, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.655006409, -0.045165062, 7.62939453e-006, 1.00000286, 5.97578063e-012, 0, -5.97579755e-012, 1, -9.50424739e-011, 0, 9.50421963e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.830000043, 0.200000003, 1.03999996))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.455024719, -0.650080562, 9.53674316e-006, 1.00000286, 2.99883555e-012, 0, -2.99884379e-012, 0.99999994, 4.91128527e-011, 0, -4.91127139e-011, 1.00000274))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.00999999, 0.400000036, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0549850464, 0.859841824, 9.53674316e-006, 1.00000286, 2.72848476e-012, 0, -2.72849256e-012, 1, -4.75212369e-011, 0, 4.75210982e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.209999964, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.404998779, -0.95982039, 0.659996033, 1.49011612e-007, -2.60678007e-006, 1.00000286, 3.38301476e-007, -1, -2.60678735e-006, 1.00000286, 3.38300907e-007, -1.49011612e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.400000036, 0.409999967))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.58306885e-005, -0.861808717, 0.665008545, 1.13504939e-009, 2.44412922e-006, -1.00000286, 1.57146104e-007, -1, -2.44413604e-006, -1.00000286, -1.57145649e-007, -1.13504939e-009))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.51000005, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0122337341, 0.474967957, 0.0501980782, 0, 9.77706804e-011, -1.00000286, 1.00000286, 9.0810701e-012, 0, 9.08109612e-012, -1, -9.7770958e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 1.4000001, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.459991455, -0.0400872231, 3.81469727e-006, 1.00000286, -5.23478448e-011, 0, 5.23480009e-011, 1, -1.78261461e-010, 0, 1.78260962e-010, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.610000014, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150127411, -0.765022278, 0.050093174, 0, 0, -1.00000286, 1.00000286, 1.42115459e-014, 0, 1.42115052e-014, -1, 9.24554534e-027))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.830000043, 0.200000003, 1.03999996))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.455024719, 0.549902916, 1.33514404e-005, 1.00000286, 8.69701706e-012, 0, -8.69704135e-012, 1, -9.48151002e-011, 0, 9.48148227e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.36998558, -1.00019455, 1.94278049, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.965929091, -0.258813918, 1.45519152e-011, 0.258817106, 0.96591717, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.400000036, 0.410000026))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-005, 0.45963192, 0.354988098, 0, -4.75210982e-011, -1.00000286, -2.72849408e-012, 1, -4.75212369e-011, 1.00000286, 2.72848627e-012, 0))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.459983826, 0.560108662, 0.409986496, -1.00000286, -2.51817255e-006, 1.1920929e-007, -2.5181796e-006, 1, 2.4732567e-006, -1.19216566e-007, 2.47324942e-006, -1.00000286))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 2.00999999, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.355003357, 0.0546789169, 1.33514404e-005, 1.00000286, 1.42115459e-014, 0, -1.42115052e-014, 1, -9.24554534e-027, 0, 0, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.400000036, 0.409999967))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-006, -0.938343048, 0.664993286, 1.1920929e-007, 9.32232069e-011, 1.00000286, -5.84789508e-012, 1, -9.32234706e-011, -1.00000286, -5.84786733e-012, 1.1920929e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.419999957, 0.200000003, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.349998474, -0.840093613, 3.81469727e-006, 1.00000286, -5.23478448e-011, 0, 5.23480009e-011, 1, -1.78261461e-010, 0, 1.78260962e-010, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.00999999, 0.200000003, 1.01999998))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0449905396, -1.04016685, 1.90734863e-006, 1.00000286, 2.9842526e-012, 0, -2.98426128e-012, 1, -4.77486106e-011, 0, 4.77484718e-011, 1.00000286))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.400000036, 0.410000026))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-006, 0.54027319, 0.354988098, 0, 2.4735923e-006, 1.00000286, 2.98430725e-012, -1, 2.47359958e-006, 1.00000286, 2.98430898e-012, 0))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.610000014, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150108337, 0.464981079, 0.0500302315, 0, -1.43472789e-010, -1.00000286, 1.00000286, 2.98444104e-012, 0, 2.98444971e-012, -1, 1.43473206e-010))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.36998558, -1.20021057, -0.84282589, -5.96046448e-007, -1.19208153e-007, -1.00000286, 0.965929508, -0.258814275, -5.4488919e-007, -0.258817494, -0.965917587, 2.69415068e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.24280548, 0.00502967834, 1.00020599, 0.258817405, 0.96591711, 2.00088834e-011, 8.73114914e-011, -2.04636308e-012, -1.00000286, -0.965929031, 0.258814216, -8.36735126e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.410000026))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-006, 0.250274181, -0.0450134277, 0, 2.4735923e-006, 1.00000286, 2.98430725e-012, -1, 2.47359958e-006, 1.00000286, 2.98430898e-012, 0))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.24280453, 0.372152328, 1.00020981, 0.258817405, 0.96591711, 2.00088834e-011, 8.73114914e-011, -2.04636308e-012, -1.00000286, -0.965929031, 0.258814216, -8.36735126e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400074005, -1.22174454, -0.857766151, 4.76837158e-007, -1.1920838e-007, 1.00000286, -0.965929031, -0.258814245, 4.29739885e-007, 0.258817434, -0.96591711, -2.38562279e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0053653717, -1.00020218, 1.94278049, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.965929329, -0.258813977, 1.45519152e-011, 0.258817166, 0.965917408, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.45998764, 0.639939547, 0.410007477, -1.00000274, -2.05972356e-006, -2.68220901e-007, 2.05972879e-006, -1, 2.84469252e-006, -2.68228177e-007, 2.8446841e-006, 1.00000274))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000012))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.36998558, -1.20021057, 1.34280586, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.965929687, -0.258814067, 1.8189894e-011, 0.258817255, 0.965917766, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.310000032, 1.06000006, 0.319999963))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0369796753, 1.71661377e-005, 0.645148039, -1.00000286, -1.42865727e-014, 0, 0, 4.84305929e-011, -1.00000286, 1.4286532e-014, -1, -4.84307316e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 1.07999992, 0.619999945))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0400009155, 3.81469727e-006, -0.550094128, -1.00000286, 1.76152777e-019, 0, 0, 0, -1.00000286, -2.57528079e-019, -1, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 1.07999992, 0.619999945))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0400009155, 3.81469727e-006, 0.649905205, -1.00000286, 1.76152777e-019, 0, 0, 0, -1.00000286, -2.57528079e-019, -1, 0))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.409999996, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150146484, -0.775886536, 0.050093174, 0, 0, -1.00000286, 1.00000286, 1.42115459e-014, 0, 1.42115052e-014, -1, 9.24554534e-027))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22001648, 0.372150421, -0.185092926, -0.707113385, 0.707101226, 2.18278728e-011, 4.72937245e-011, 7.48058351e-011, -1.00000143, -0.707102299, -0.707112372, -9.09494702e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.659992218, 0.370054245, -0.921754837, -1.00000286, 5.14851529e-011, 0, 0, 9.5951691e-011, -1.00000286, -5.14852987e-011, -1, -9.59519686e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.210000008, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.405000687, 0.759868801, 0.659988403, 1.47521496e-006, 5.17919261e-006, -1.00000286, -3.2469668e-006, 1, 5.17920262e-006, 1.00000286, 3.24694997e-006, 1.47523315e-006))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.610000014, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.064994812, -0.965881824, 7.62939453e-006, -1.00000286, -1.35831423e-014, 1.41881173e-010, 1.35831e-014, -1, -2.95586645e-012, 1.41881173e-010, -2.95585778e-012, 1.00000286))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.899999976, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.25774574, -0.403015137, 1.02173233, -0.258817345, 0.96591711, -3.72519935e-008, -5.99829946e-008, 2.24945325e-008, 1.00000286, 0.965928972, 0.258814156, 5.21213224e-008))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.659988403, 5.14984131e-005, -0.921754837, -1.00000286, 5.14851529e-011, 0, 0, 9.5951691e-011, -1.00000286, -5.14852987e-011, -1, -9.59519686e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000012))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.400075912, -1.22171783, 1.35775185, 5.96046448e-008, 7.73070497e-012, -1.00000286, -0.965929091, -0.258814007, -5.75746526e-008, -0.258817196, 0.96591717, -1.54186637e-008))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1.01999998, 0.200000003, 0.410000026))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-006, 0.159724727, -0.0450134277, 0, -2.47359276e-006, -1.00000286, -2.51888788e-013, 1, -2.47360003e-006, 1.00000286, 2.51893179e-013, 0))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000006))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.401578903, -1.02172089, 1.95771885, 5.96046448e-008, 7.73070497e-012, -1.00000286, -0.965929091, -0.258813977, -5.75746526e-008, -0.258817166, 0.96591717, -1.54186637e-008))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.375089645, -1.20021057, -0.842826843, -5.96046448e-007, -1.1920838e-007, -1.00000286, 0.965929925, -0.258814394, -5.44885552e-007, -0.258817613, -0.965918005, 2.69415068e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.24612808, -0.403017044, -0.187274933, 0.707113266, 0.707101345, -2.97986844e-008, -4.73555701e-008, 8.95023362e-008, 1.00000143, 0.707102358, -0.707112253, 9.67738742e-008))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1, 0.200000003, 0.209999964))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.38690186e-005, -0.891833842, 0.644989014, 1.13504939e-009, 2.44355533e-006, -1.00000286, 1.57128099e-007, -1, -2.44356215e-006, -1.00000286, -1.57127644e-007, -1.13504939e-009))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.939999998, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22001648, 0.005027771, -0.185092926, -0.707113385, 0.707101226, 2.18278728e-011, 4.72937245e-011, 7.48058351e-011, -1.00000143, -0.707102299, -0.707112372, -9.09494702e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00569725037, -1.20020676, -0.842824936, -5.96046448e-007, -1.1920838e-007, -1.00000286, 0.965929627, -0.258814305, -5.4488919e-007, -0.258817524, -0.965917706, 2.69415068e-007))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000012))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375091553, -1.20021439, 1.34281826, -1.09139364e-011, 7.73070497e-012, 1.00000286, 0.965931058, -0.258814484, 1.45519152e-011, 0.258817732, 0.965919256, -5.45696821e-012))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(1, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.24280453, -0.369983673, 1.00020599, 0.258817405, 0.96591711, 2.00088834e-011, 8.73114914e-011, -2.04636308e-012, -1.00000286, -0.965929031, 0.258814216, -8.36735126e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.409999996, 0.210000008, 0.620000005))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150108337, 0.477142334, 0.0500302315, 0, -1.43472789e-010, -1.00000286, 1.00000286, 2.98444104e-012, 0, 2.98444971e-012, -1, 1.43473206e-010))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22001648, -0.36998558, -0.185092926, -0.707113385, 0.707101226, 2.18278728e-011, 4.72937245e-011, 7.48058351e-011, -1.00000143, -0.707102299, -0.707112372, -9.09494702e-011))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0.10000000149012, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.659992218, -0.36998558, -0.921754837, -1.00000286, 5.14851529e-011, 0, 0, 9.5951691e-011, -1.00000286, -5.14852987e-011, -1, -9.59519686e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.310000032, 1.06000006, 0.319999963))
PartWeld = CFuncs["Weld"].Create(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0369796753, 1.71661377e-005, -0.554851294, -1.00000286, -1.42865727e-014, 0, 0, 4.84305929e-011, -1.00000286, 1.4286532e-014, -1, -4.84307316e-011))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))

EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

Effects = {
	["Block"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	
	["Cylinder"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			Effects[#Effects + 1] = {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3
			}
		end;
	};
	
	["Sphere"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	
	["Elec"] = {
		Create = function(cff, x, y, z)
			local prt = CFuncs["Part"].Create(workspace, "Neon", 0, 0, BrickColor.new("Cyan"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
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
	
	["Ring"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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


	["Wave"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

	["Break"] = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
}

function Reappear()
	for _, i in pairs(Character:children()) do
		if i:IsA("BasePart") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Transparency = - i
				end
				Part.Transparency = 0
			end), i)
		elseif i:IsA("Accessory") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Handle.Transparency = - i
				end
				Part.Handle.Transparency = 0
			end), i)
		end
	end
	for _, i in pairs(m:children()) do
		if i:IsA("BasePart") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 0
			end), i)
		end
	end
end

function Disappear()
	for _, i in pairs(Character:children()) do
		if i:IsA("BasePart") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 1
			end), i)
		elseif i:IsA("Accessory") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Handle.Transparency = - i
				end
				Part.Handle.Transparency = 1
			end), i)
		end
	end
	for _, i in pairs(m:children()) do
		if i:IsA("BasePart") then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.3 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 1
			end), i)
		end
	end
end

function AirDash()
	attack = true
	local AntiJump = Humanoid.Changed:connect(function()
		Humanoid.Jump = false
	end)
	Disappear()
	CFuncs["Sound"].Create("rbxassetid://169445226", Torso, 1, .8)
	for i = 0, 1, 0.1 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 150
		for i = 1, 3 do
			Effects["Elec"].Create(Torso.CFrame, 5, 5, 5)
		end
		PlayAnimationFromTable({
			CFrame.new(0, -0.0684475452, -0.249608472, 1, 0, 0, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.41547072, 0.181262881, 1, 0, 0, 0, 0.906307876, -0.42261827, 0, 0.42261827, 0.906307876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.39608037, 0.0857366472, 0.69745177, -0.171009958, 0.0301529951, -0.984807849, 0.756428123, 0.644482613, -0.111619413, 0.631325841, -0.764024317, -0.133021519) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.56568348, 0.51024133, 0.517902374, 0.913699269, 0.316559821, 0.254840195, -0.354537129, 0.314407557, 0.880597234, 0.198638007, -0.894951463, 0.399506152) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.500000358, -1.34467852, -0.458858073, 0.98480773, -0.0301534627, -0.17101039, 0.0996006578, 0.904794157, 0.414038181, 0.142244503, -0.424780726, 0.894051492) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.493063986, -1.76353812, 0.337700725, 0.965925753, -4.96573023e-007, 0.258819401, -0.14845252, 0.81915164, 0.55403316, -0.212012589, -0.573577225, 0.791239619) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(185), math.rad(-10)), 0.3)
	end
	Reappear()
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(-3.45729177e-006, -1.07288361e-006, -1.61215644e-006, 0.422617137, 0, 0.906308293, 0, 1, 0, -0.906308293, 0, 0.422617137),
         CFrame.new(-2.93552876e-006, 1.49999666, 2.47359276e-006, 0.642787337, 0.0667652711, -0.763129652, 0, 0.996194661, 0.0871558487, 0.766044676, -0.0560226738, 0.640341341),
         CFrame.new(0.698839545, 0.330527961, -1.17968464, -0.0858322605, 0.628752053, 0.772854269, 0.992461622, 0.122068912, 0.0109129949, -0.0874799117, 0.76796484, -0.634489775),
         CFrame.new(-1.41369021, 0.137095958, 0.271576643, 0.951021314, 0.183494747, 0.248773009, -0.256190121, 0.918202639, 0.302110255, -0.172988355, -0.351046532, 0.920239806),
         CFrame.new(0.64087379, -1.98256373, 0.140884519, 0.704417586, -0.0616254881, -0.707105517, 0.087155968, 0.996194661, 4.53608664e-006, 0.704414487, -0.0616316497, 0.70710808),
         CFrame.new(-0.751752973, -1.94796431, 0.117966183, 0.936117291, 0.140046805, -0.322600812, -0.0871559978, 0.981060147, 0.172988161, 0.340717107, -0.133820623, 0.930593371),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(2.70828605e-006, -0.256154776, -0.071654655, 0.499999046, -1.78813579e-007, -0.866026044, 0.150384009, 0.984807789, 0.0868238211, 0.852869093, -0.173648283, 0.492402941),
         CFrame.new(4.34633694e-006, 1.49999607, 2.42484384e-006, 0.646143615, 0.0549410731, 0.761235893, -0.0851004422, 0.996372402, 0.000322267413, -0.758456767, -0.0649897307, 0.648474991),
         CFrame.new(1.86507177, 0.598104239, 0.183552518, -0.114682339, -0.981059372, -0.156110525, 0.981060445, -0.0871559381, -0.172987223, 0.156104773, -0.172992408, 0.9724738),
         CFrame.new(-1.52644157, 0.0874626189, -0.302744657, 0.95125103, 0.20658794, -0.229004204, -0.254887104, 0.944645047, -0.2065873, 0.173649222, 0.254886597, 0.951251268),
         CFrame.new(0.623469114, -1.90178788, 0.0298061967, 0.992532074, -0.0928985924, 0.079056859, 0.0757590532, 0.97739321, 0.197391063, -0.0956070125, -0.189927697, 0.977131963),
         CFrame.new(-0.786503196, -1.67652178, -0.389780819, 0.631277382, 0.179900557, 0.754403591, -0.0723632798, 0.982144117, -0.173656344, -0.772174001, 0.0550341941, 0.6330235),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .5)
	end
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.573575675, 0, -0.819152594, 0, 1, 0, 0.819152594, 0, 0.573575675),
         CFrame.new(3.08454037e-006, 1.49999881, 2.57045031e-006, 0.642787039, -0.0667651147, 0.76312989, 0, 0.99619478, 0.0871556103, -0.766044915, -0.0560225062, 0.640341043),
         CFrame.new(1.69747591, 0.457380712, 0.451709926, -0.0444228128, -0.827531219, 0.55965966, -0.981060326, -0.0695906579, -0.180770397, 0.18854022, -0.557090104, -0.808766544),
         CFrame.new(-1.68707776, 0.160575554, -0.28150323, 0.690673113, 0.601469755, -0.401503354, -0.691249013, 0.712214351, -0.12217018, 0.212474763, 0.361918449, 0.907672644),
         CFrame.new(0.637356639, -1.97847009, 0.076719813, 0.850760341, -0.123644285, 0.51080215, 0.0764630362, 0.990710139, 0.112458259, -0.519961715, -0.0566175357, 0.852311194),
         CFrame.new(-0.628168941, -1.98483193, 0.152803689, 0.640938401, 0.0450230837, 0.766270876, -0.0758190081, 0.99710989, 0.00483164471, -0.763838768, -0.0611946844, 0.642499626),
		}, .55, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), .5)
	end
	CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox, 1, 1.2)
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(-0, -0.179999992, 0, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352),
         CFrame.new(-3.07708979e-006, 1.49999881, 2.57790089e-006, 0.64278692, 0.066765137, -0.763130128, 0, 0.99619478, 0.0871556103, 0.766045094, -0.056022495, 0.640340984),
         CFrame.new(0.954324961, 0.24834919, -0.880105972, 0.326528549, 0.544942617, -0.772280335, -0.941748381, 0.257209718, -0.216687083, 0.0805559754, 0.798048139, 0.597185135),
         CFrame.new(-1.58964086, 0.138686687, 0.0523245335, 0.944645166, 0.254885972, -0.206588656, -0.206587031, 0.951251626, 0.229002386, 0.254887283, -0.173647493, 0.951251388),
         CFrame.new(0.670057595, -1.81781983, -0.10544461, 0.499700427, -0.0172690637, -0.866026282, 0.0345539972, 0.999402881, 9.12000269e-006, 0.865508974, -0.0299292281, 0.499998689),
         CFrame.new(-0.884505391, -1.76931953, -0.185952976, 0.681231737, 0.216974914, -0.699174821, -0.105348974, 0.974182904, 0.199672803, 0.724448264, -0.0623660684, 0.686502278),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(70)), .5)
	end
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(-0, -0.199999988, 0, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
         CFrame.new(-3.2261014e-006, 1.49999571, 1.87009573e-006, 0.499998987, 0.0754793361, -0.862730443, 0, 0.996194661, 0.087155968, 0.866025984, -0.0435778946, 0.498096317),
         CFrame.new(0.758310795, 0.506792068, -1.07750559, 0.0780267715, 0.542353034, 0.836519599, 0.995831132, -0.0821644962, -0.0396157168, 0.0472465083, 0.836123407, -0.546503007),
         CFrame.new(-1.56371987, -0.0378807485, -0.12044096, 0.892536283, 0.33327353, 0.30382207, -0.157379016, 0.861525297, -0.482707113, -0.422623843, 0.383018374, 0.821392834),
         CFrame.new(0.688273072, -1.83205605, 0.326112747, 0.492402941, -0.0868238136, -0.866025984, 0.173647985, 0.984807849, 0, 0.852869213, -0.150383666, 0.499998987),
         CFrame.new(-0.464390695, -1.92090166, -0.363977104, 0.962945819, 0.0995973051, -0.250631034, -0.0593889765, 0.984808624, 0.163171798, 0.263075113, -0.142240882, 0.954232156),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), .5)
	end
    CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox, 1, .7)
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(6.67199492e-006, -0.207597449, -0.0868210196, 0.642787039, 9.57827169e-008, -0.766045034, 0.13302201, 0.984807849, 0.11161866, 0.754407108, -0.173647866, 0.633021653),
         CFrame.new(-2.45868534e-007, 1.4999963, -1.11758425e-008, 0.642787039, -1.63912773e-007, 0.766045034, 9.57827169e-008, 1.00000012, 1.1920929e-007, -0.766045034, -7.4505806e-009, 0.642787039),
         CFrame.new(1.63684285, 0.191258341, 0.0590808541, 0.419205964, -0.896826267, -0.141311735, 0.875504494, 0.440527022, -0.198564485, 0.240329444, -0.0404796004, 0.969847083),
         CFrame.new(-1.44409096, 0.0586332679, 0.28650257, 0.847117305, 0.408219695, 0.340219229, -0.468929112, 0.875426352, 0.117194086, -0.249995977, -0.258815825, 0.93301481),
         CFrame.new(0.598103762, -1.98841107, 0.015527457, 0.981059909, -0.0858310461, -0.17365095, 0.115870565, 0.978432178, 0.171010211, 0.155227691, -0.187892288, 0.969845891),
         CFrame.new(-0.84634155, -1.7162106, -0.315425038, 0.499999523, 0.150383905, 0.852868795, 7.07805157e-007, 0.98480767, -0.17364873, -0.866025805, 0.0868248716, 0.492403209),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .5)
	end
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, 0.76604414),
         CFrame.new(-1.40070915e-006, 1.4999963, -1.66893005e-006, 0.76604414, -0.0429935083, 0.6413486, 0, 0.997760653, 0.066885978, -0.642788053, -0.051237613, 0.764328718),
         CFrame.new(1.66817236, 0.999997735, 0.511572003, 0.736215532, -0.634792984, 0.234573662, -0.642445922, -0.546619952, 0.537093997, -0.212720826, -0.546117783, -0.810250103),
         CFrame.new(-1.37409723, 0.400003314, -0.627805173, 0.774178386, 0.211310744, -0.596653819, -0.628698826, 0.366000623, -0.686135113, 0.0733878911, 0.906306386, 0.416200638),
         CFrame.new(0.653213322, -1.99999535, -0.12855646, 0.94284457, -0.0929451212, 0.320008487, 0.0665469989, 0.993487716, 0.0924861878, -0.326520622, -0.0659044906, 0.94288969),
         CFrame.new(-0.640875459, -1.9999963, -0.0123234689, 0.764365256, 0.0739410222, 0.64053005, -0.0661710203, 0.997153461, -0.0361446291, -0.641379297, -0.0147568267, 0.767082214),
		}, .35, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), .5)
	end
    CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox, 1, .8)
	for i = 0, 1, 0.3 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
         CFrame.new(-1.3038516e-006, -0.390966356, -0.0855526477, 0.499999046, 1.78813579e-007, 0.866026044, -0.150384009, 0.984807789, 0.0868238211, -0.852869093, -0.173648283, 0.492402941),
         CFrame.new(-4.05311584e-006, 1.49999619, 1.60932541e-006, 0.573575735, -0.0713945851, -0.81603545, 6.76140189e-007, 0.99619472, -0.0871561766, 0.819152594, 0.0499901175, 0.571393192),
         CFrame.new(1.28216481, 0.179315746, -0.842360139, 0.633024693, -0.0230962932, -0.773787081, -0.717572212, 0.357540846, -0.597708046, 0.290465295, 0.933612049, 0.209758848),
         CFrame.new(-1.62196672, 0.225311682, 0.0992549062, 0.755533695, 0.605033398, 0.25120458, -0.532469451, 0.790533543, -0.302544594, -0.381635189, 0.0948238969, 0.919436276),
         CFrame.new(0.811682165, -1.60607064, -0.260146618, 0.492403209, -0.0868215263, -0.866026103, 0.173648342, 0.98480773, 2.86102295e-006, 0.852869093, -0.15038538, 0.499998868),
         CFrame.new(-0.546382487, -1.80111504, -0.26132381, 0.984808207, 0.173645854, 6.02006912e-006, -0.142245889, 0.80670774, 0.573575616, 0.0995941162, -0.564862847, 0.819152772),
		}, .43, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.Angles(math.rad(0), math.rad(0), math.rad(80)), .5)
	end
	FakeHandleWeld.C0 = CFrame.Angles(0, 0, 0)
	AntiJump:disconnect()
	attack = false
end

function attackone()
	attack = true
				local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.13 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
			CFrame.new(-0.131559491, -0.320498586, 0.169404626, 0.573576331, -1.19657315e-007, 0.819152236, -0.280166179, 0.939692795, 0.196174532, -0.769751489, -0.342019767, 0.538985491) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-4.47034836e-008, 1.50000048, 2.98023224e-007, 0.573576331, -0.142244831, -0.806707442, -1.19657315e-007, 0.98480767, -0.173648953, 0.819152236, 0.0996010229, 0.564862311) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.808982491, 0.459623098, -0.809256911, -0.309975415, 0.628641963, 0.713249564, 0.948714852, 0.155525729, 0.275230855, 0.0620930195, 0.761985064, -0.644611061) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.51002705, 0.0649872497, 0.484053552, 0.933559537, 0.320965201, 0.159525007, -0.335746944, 0.62731266, 0.702675521, 0.125462264, -0.709549546, 0.693396747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.06218219, -1.44446337, -0.324575514, 0.633718252, -0.296198159, -0.714610517, 0.0593904257, 0.939692438, -0.336824715, 0.771280944, 0.171010911, 0.613091588) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.578954935, -1.89007342, -0.0991814733, 0.974172831, 0.036860466, -0.222775176, 0.0446061641, 0.935730338, 0.34988451, 0.221354336, -0.350785136, 0.909918845) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
	end
	CFuncs["Sound"].Create("rbxassetid://588693579", Hitbox, 1, 1)
	RootPart.Velocity = RootPart.CFrame.lookVector * 50
	for i = 0, 1, 0.15 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, .1, .1, .1)
		PlayAnimationFromTable({
			CFrame.new(-0.126416981, -0.288554907, -0.0458763018, 0.658456802, 0.336823344, -0.673041403, 0.0412939899, 0.876750886, 0.479168862, 0.751484811, -0.343304545, 0.563393831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(4.75347042e-006, 1.50000226, -8.70972872e-006, 0.629547477, -0.0176723152, 0.776760995, 0.182676718, 0.975082517, -0.125871003, -0.75518167, 0.221137911, 0.617089033) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.86234975, 0.403067291, -0.0970593393, 0.0283662975, -0.981458306, -0.189565629, 0.811184466, 0.133416668, -0.569368005, 0.584102094, -0.13762185, 0.799928188) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.50460577, 0.187671542, 0.402171046, 0.0342593789, 0.798939466, 0.600434899, -0.526206851, 0.525188565, -0.668792546, -0.849666238, -0.293040574, 0.43840009) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.630320907, -2.04325032, 0.0690481961, 0.981336057, -0.154941499, -0.113898009, 0.176862091, 0.95973134, 0.218256027, 0.0754945576, -0.23432678, 0.969222307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.72014606, -1.49782073, -0.858283162, 0.708516896, -0.0158675089, 0.705515504, 0.260576338, 0.934978366, -0.240656585, -0.655823171, 0.354349881, 0.666582644) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
	end
	con:disconnect()
	attack = false
end

function attacktwo()
	attack = true
				local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.15 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
			CFrame.new(-0.0931401253, -0.403328717, -0.230022758, 0.707106054, -1.36977135e-007, 0.707107484, -0.241844028, 0.939693153, 0.241843715, -0.664464056, -0.342018902, 0.664462626) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.01327896e-006, 1.49999177, 1.31130219e-006, 0.707106054, -0.122787051, -0.696365118, -1.36977135e-007, 0.984808087, -0.173647076, 0.707107484, 0.122786999, 0.696363688) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.51814342, 0.223689169, 0.688179493, -0.137568116, -0.246912807, -0.959223211, 0.789885521, 0.556966305, -0.256650597, 0.597625256, -0.792983413, 0.118412107) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.61155009, 0.84159255, -0.506984234, 0.725072443, 0.649718523, -0.228332728, 0.0704733431, -0.399815619, -0.913882494, -0.685057223, 0.646539629, -0.335683078) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.959007144, -1.44447553, -0.459016204, 0.707106054, -0.183011726, -0.683013737, -1.36977135e-007, 0.96592629, -0.258817554, 0.707107484, 0.183011532, 0.683012247) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.401523113, -1.92804301, -0.0715783238, 0.98480773, 4.76837158e-007, 0.173648164, -0.0996008664, 0.819152236, 0.564862251, -0.142243981, -0.573576152, 0.806707501) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-10)), 0.3)
	end
	RootPart.Velocity = RootPart.CFrame.lookVector * 50
	CFuncs["Sound"].Create("rbxassetid://588693922", Hitbox2, 1, 1.5)
	CFuncs["Sound"].Create("rbxassetid://338586331", Hitbox2, 1, 1.1)
	for i = 0, 1, 0.2 do
		swait()
		Effects["Elec"].Create(Hitbox2.CFrame, .1, .1, .1)
		PlayAnimationFromTable({
			CFrame.new(-0.42147997, -0.541991115, 0.41270873, 0.777157903, 0.336823314, -0.531578541, 0.0263469964, 0.82655102, 0.562244952, 0.62875396, -0.45095858, 0.633486271) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.06552203, 1.48139107, 0.0732361525, 0.755344927, -0.00913953781, 0.655263901, 0.172986209, 0.96721828, -0.185916364, -0.632083893, 0.25378257, 0.732164264) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.5181396, 0.22368449, 0.68819344, 0.198801011, -0.246908307, -0.948427498, 0.830028176, 0.556967854, 0.0289852768, 0.521086812, -0.792983711, 0.315666586) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.301909953, 0.485349864, -1.08579051, 0.197922766, -0.871504903, -0.44867146, -0.555551589, 0.277377427, -0.783852279, 0.80758214, 0.404402286, -0.429266572) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.90766263, -1.68895841, -0.292883754, 0.823597074, -0.339787126, 0.454128563, 0.333233327, 0.937806427, 0.0973394513, -0.458959311, 0.071162343, 0.885602772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.638449132, -1.41060436, -0.708662212, 0.737985313, 0.155204505, 0.656726241, 0.242131248, 0.847485662, -0.472377807, -0.629881024, 0.507621825, 0.587852061) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-10)), 0.3)
	end
	con:disconnect()
	attack = false
end

function attackthree()
	attack = true
					local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.2 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, .1, .1, .1)
		PlayAnimationFromTable({
			CFrame.new(-0, -0.20810315, -0.0867809057, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.47561324, 0.0288389549, 1, 0, 0, 0, 0.99619478, -0.0871553123, 0, 0.0871553123, 0.99619478) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.30000365, 1.09976232, 0.400648683, 0.965925872, -5.54146823e-007, -0.258818865, 0.166365132, -0.766044676, 0.620885253, -0.198267132, -0.642787635, -0.739942193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.3975333, 0.0611867793, 0.304421067, 0.969846368, 0.138258651, 0.200705305, -0.187892184, 0.948662996, 0.254431367, -0.155224353, -0.28447026, 0.946035028) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.500000536, -1.87321258, 0.271892726, 0.98480773, -4.69592806e-007, -0.173648208, 0.073387444, 0.906307578, 0.416198403, 0.15737848, -0.422619045, 0.892538726) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.5, -0.603483975, -0.925777316, 1, 0, -0, 0, 0.965925872, -0.258819073, 0, 0.258819073, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
	end
	RootPart.Velocity = RootPart.CFrame.lookVector * 50
	CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox, 1, 1.1)
	for i = 0, 1, 0.16 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
			CFrame.new(-0, -0.470929444, -0.192718163, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.47561359, 0.0288352519, 1, 0, 0, 0, 1, -2.98023224e-008, 0, -2.98023224e-008, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.08788931, 0.280158341, -0.816111982, 0.965924978, 0.148454919, 0.212014496, 0.166366577, 0.271385759, -0.947983205, -0.198270485, 0.95095253, 0.237440437) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.48265684, 0.224726945, 0.575256824, 0.91523385, 0.274062514, 0.295358658, -0.374409705, 0.849327624, 0.37210232, -0.148876935, -0.451145858, 0.879944921) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.481191039, -1.91050935, 0.407004416, 0.98480773, 0.0151346745, -0.17298761, 0.0733870268, 0.866584241, 0.493605196, 0.157378882, -0.498801291, 0.852308273) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.499998271, -1.47281778, -0.692839503, 0.984807849, 0, 0.173647985, 0.0593910702, 0.939692736, -0.33682391, -0.163175747, 0.342019886, 0.925416768) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(.5, .5, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(60)), 0.6)
	end
	con:disconnect()
	attack = false
end

function attackfour()
	attack = true
					local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.15 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, .1, .1, .1)
		PlayAnimationFromTable({
			CFrame.new(-0.113323241, -0.301505059, -0.358205646, 0.642786801, -4.78913407e-008, 0.766045153, -0.198266953, 0.965925872, 0.16636543, -0.739942849, -0.258818924, 0.620884418) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.05798244e-006, 1.49999213, 9.983778e-007, 0.642786801, -0.0667652637, -0.763130188, -4.78913407e-008, 0.99619478, -0.0871558189, 0.766045153, 0.0560226589, 0.640340865) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.65369904, 0.162275895, -0.00659683347, 0.707105041, -0.696365714, -0.12278986, 0.579228401, 0.670027971, -0.464281261, 0.40558213, 0.257172287, 0.877134919) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.66235614, 0.192983806, -0.335417867, 0.563021898, 0.639703155, 0.52324605, 0.237272531, 0.481356442, -0.843799591, -0.791649222, 0.599229455, 0.119230166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.964248538, -1.60233533, -0.216483638, 0.571182966, -0.157378986, -0.805594265, 0.0301537905, 0.984807849, -0.171010092, 0.82026881, 0.0733863264, 0.567251086) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.823070824, -1.8176235, -0.245362669, 0.846333623, 0.340068877, -0.409966528, -0.271193385, 0.937547863, 0.217848897, 0.458446831, -0.0731925964, 0.885702848) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-50)), 0.5)
	end
	RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -10)
	CFuncs["Sound"].Create("rbxassetid://338586331", Hitbox2, 1, 1)
	CFuncs["Sound"].Create("rbxassetid://588693156", Hitbox2, 1, 1.5)
	for i = 0, 1, 0.16 do
		swait()
		Effects["Elec"].Create(Hitbox.CFrame, 5, 5, 5)
		PlayAnimationFromTable({
			CFrame.new(-0.157449037, -0.428025395, 0.0330477953, 0.31941691, 0.224143028, -0.920724034, 0.130619973, 0.951934218, 0.277055472, 0.938568771, -0.208761141, 0.274786323) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-8.62404704e-006, 1.49999344, -1.35879964e-005, 0.419978231, -0.0667628497, 0.905075192, 0.0789893046, 0.996194839, 0.0368312001, -0.904090106, 0.0560229644, 0.423653752) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.42177391, 0.402980715, 0.530310392, 0.578039765, -0.574771583, -0.579230309, 0.767084241, 0.624832928, 0.145484447, 0.278301865, -0.52841413, 0.802076399) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.44472814, 1.10374677, -0.520131826, 0.989266992, 0.030755192, 0.142846346, 0.107178524, -0.817194343, -0.566309273, 0.099316299, 0.575541079, -0.811719656) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.569701552, -1.87918103, 0.172382548, 0.960191846, -0.15472649, 0.232575998, 0.114886686, 0.977646708, 0.176091135, -0.254623055, -0.142361343, 0.956504226) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.878278732, -1.42697322, -0.499026388, 0.643315554, 0.242828339, 0.726071298, 0.0758636594, 0.923481584, -0.37606734, -0.761833251, 0.297012389, 0.575668097) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-50)), 0.6)
	end
	con:disconnect()
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 4
		attackthree()
	elseif attack == false and attacktype == 4 then
		attacktype = 1
		attackfour()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
		AirDash()
	end
end)

Humanoid.JumpPower = 80

while true do
	swait()
	Hitbox.Transparency = 1
	Hitbox2.Transparency = 1
	Handle.Transparency = 1
	Handle2.Transparency = 1
	FakeHandle.Transparency = 1
	RootPart.Transparency = 1
	Humanoid.WalkSpeed = 25
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
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				PlayAnimationFromTable({
					CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.49104357, -0.0507529527, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(1.37250769, 0.121224046, 0.64733851, 0.173648015, 2.58755701e-008, -0.984807789, 0.852869093, 0.499999106, 0.150383696, 0.49240306, -0.866025925, 0.0868238285) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.57669723, 0.162346587, -0.26788035, 0.8611601, 0.435611397, -0.262004048, -0.489563048, 0.849481702, -0.196745664, 0.136863008, 0.297697008, 0.944798946) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.49999693, -1.99999774, -8.94069672e-008, 0.965925872, 3.7422879e-007, -0.258818924, 0.0449429974, 0.984807849, 0.167731062, 0.254886955, -0.173647881, 0.951251388) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.598104358, -1.58444905, -0.345675468, 0.981060326, 0.0858319253, 0.173648298, -0.141065046, 0.930940628, 0.336823732, -0.132746041, -0.354940027, 0.925416648) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-10)), 0.3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
					CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.4910444, -0.0507505536, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(1.41551924, 0.430770516, 0.599072576, 0.163175896, -0.0593939237, -0.984807611, 0.972444415, 0.178148255, 0.150383249, 0.166509897, -0.982209563, 0.0868267864) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.53597856, 0.181962684, -0.0532567501, 0.748531938, 0.630958676, 0.203939021, -0.508304954, 0.743486166, -0.434573829, -0.425823927, 0.221629158, 0.877242625) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.525004327, -1.77186298, -0.282919437, 0.965925634, -0.0885212198, -0.24321124, 0.0449429862, 0.982783973, -0.179209024, 0.254887909, 0.162171945, 0.953274548) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.625082374, -1.74759519, -0.371673733, 0.98105973, 0.161157295, 0.107471913, -0.141064972, 0.974630296, -0.173771828, -0.132749975, 0.155320033, 0.978904068) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-10)), 0.3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				PlayAnimationFromTable({
					CFrame.new(-0.0741269588, -0.296722889, 0.0201097988, 0.819151819, 0, -0.573576868, 0, 1, 0, 0.573576868, 0, 0.819151819) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.0564861223, 1.48262787, -0.0806704611, 0.819151819, -0.0996004641, 0.564863026, 0, 0.984807849, 0.173647985, -0.573576868, -0.142244056, 0.806707144) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(1.61798644, 0.0522672534, 0.0578619242, 0.35459581, -0.371187091, -0.858185351, 0.516142964, 0.843021989, -0.151362091, 0.779652774, -0.389273971, 0.490517616) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.59952319, 0.0271437615, -0.238670975, 0.950691044, 0.297527671, -0.0875436962, -0.310010105, 0.903491974, -0.295966268, -0.00896313787, 0.308511913, 0.951178312) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.574041069, -1.71940637, 0.364966094, 0.988550007, -0.0436736047, -0.144435555, 0.130200043, 0.730692983, 0.67017597, 0.0762690306, -0.681308031, 0.7280128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.737140536, -1.73033857, -0.0957245529, 0.640411794, -0.00933929533, 0.767975152, -0.0868059918, 0.992638648, 0.0844586417, -0.763110518, -0.120753139, 0.634886801) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(190), math.rad(-10)), 0.3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3.5
				PlayAnimationFromTable({
					CFrame.new(0, -0.0223370567, -0.165983588, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(-3 * math.cos(sine / 10)), 0), 
					CFrame.new(0, 1.49999154, -4.32133675e-007, 1, 0, 0, 0, 0.99619478, -0.0871558785, 0, 0.0871558785, 0.99619478) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(3 * math.cos(sine / 10)), 0), 
					CFrame.new(1.34347034, 1.02328479, -0.33295393, 0.952024519, 0.0437923931, -0.302872181, -0.167465881, -0.753811061, -0.635392845, -0.256133795, 0.65563035, -0.710312903) * CFrame.new(0, 0, -.3) * CFrame.Angles(math.rad(20), 0, 0), 
					CFrame.new(-1.58242321, 0.297260404, 0.384855121, 0.837201297, 0.488875121, 0.245142967, -0.533269644, 0.630305767, 0.564214647, 0.121315509, -0.603088558, 0.788395166) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(3 * math.cos(sine / 10)), math.rad(3 + 1 * math.cos(sine / 10))), 
					CFrame.new(.5, -1.85 - 0.5 * math.cos(sine / 8) / 2, 0 + 2 *  math.sin(sine / 8) / 2) * angles(math.rad(-80 *  math.sin(sine / 8)), math.rad(-5), math.rad(0)),
					CFrame.new(-.5, -1.85 + 0.5 * math.cos(sine / 8) / 2, 0 - 2 * math.sin(sine / 8) / 2) * angles(math.rad(80 *  math.sin(sine / 8)), math.rad(5), math.rad(0)),
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(-.3, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-75)), 0.3)
			end
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
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
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