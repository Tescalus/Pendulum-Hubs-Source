----------------------------------------------------------------
--------------------------Noob Script--------------------------
----------------------------------------------------------------
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
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
Player = game.Players.LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game.Workspace.non
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

Character = Player.Character
Humanoid = Character.Humanoid
---------
plr = game.Players.LocalPlayer
chara = plr.Character
mouse = plr:GetMouse()
Create = Instance.new
Huge = math.huge




local shadowhead = Create("Part",chara.Head)
shadowhead.BrickColor = BrickColor.new("Really black")
shadowhead.Size = Vector3.new(1.2, 0.6, 1)
shadowhead.CanCollide = false
local shadowheadmesh = Create("SpecialMesh",shadowhead)
shadowheadmesh.MeshType = "Head"
shadowheadmesh.Scale = Vector3.new(1.26, 1.5, 1.26)
local weld2 = Create("Weld",shadowhead)
weld2.Part0 = shadowhead
weld2.Part1 = chara.Head
weld2.C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
char = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

local Orin = "http://www.roblox.com/asset/?id=10521899"
Head.face.Texture = Orin
function weld(a, b, acf)
	local w = Instance.new("Weld", a)
	w.Part0 = a
	w.Part1 = b
	w.C0 = acf
end

char.Humanoid.MaxHealth = 9999
char.Humanoid.Health = 9999

char.Humanoid.Changed:Connect(function()


char.Humanoid.Health = 9999

end)
--------------------------------
char.Head.face.Texture = "rbxassetid://10521899"
--------------------------------




-------------------------------------------------------

local FavIDs = {
	340106355, --Nefl Crystals
	927529620, --Dimension
	876981900, --Fantasy
	398987889, --Ordinary Days
	1117396305, --Oh wait, it's you.
	885996042, --Action Winter Journey
	919231299, --Sprawling Idiot Effigy
	743466274, --Good Day Sunshine
	727411183, --Knife Fight
	1402748531, --The Earth Is Counting On You!
	595230126 --Robot Language
	}



--The reality of my life isn't real but a Universe -makhail07
wait(0.2)
local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
print('SCRIPTNAME Loaded')
print('SCRIPT DESCRIPTION')
local char = plr.Character
local hum = char.Humanoid
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("New Yeller")

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor



-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
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
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
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
		local Damage = math.random(minim, maxim)
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
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
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
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(255, 255, 1))
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
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
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
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
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
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
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
    end
  },
  Cylinder = {
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
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
print("hi")
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://2582829122"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end

BTAUNT = Instance.new("Sound", tors)
BTAUNT.SoundId = "http://www.roblox.com/asset/?id=869166432"
BTAUNT.Volume = 10
BTAUNT.Pitch = 1
BTAUNT.Looped = true
BTAUNT.TimePosition = 0

BTAUNT2 = Instance.new("Sound", tors)
BTAUNT2.SoundId = "http://www.roblox.com/asset/?id=935804253"
BTAUNT2.Volume = 10
BTAUNT2.Pitch = 1
BTAUNT2.Looped = false
BTAUNT2.TimePosition = 0

BTAUNT3 = Instance.new("Sound", tors)
BTAUNT3.SoundId = "http://www.roblox.com/asset/?id=2866646141"
BTAUNT3.Volume = 2
BTAUNT3.Pitch = 1
BTAUNT3.Looped = true
BTAUNT3.TimePosition = 0

TEST = Instance.new("Sound", tors)
TEST.SoundId = "http://www.roblox.com/asset/?id=130766856"
TEST.Volume = 25
TEST.Pitch = 1
TEST.Looped = false
TEST.TimePosition = 0
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 50)
	end))
	return NSound
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------


-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
----------------------------------------------------------------------------------
hum.WalkSpeed = 8
hum.JumpPower = 57
hum.Animator.Parent = nil
----------------------------------------------------------------------------------


-------------------------------------------------------
--End Customization--
-------------------------------------------------------
local Blobby = Instance.new("Part", char)
Blobby.Name = "Blob"
Blobby.CanCollide = false
Blobby.BrickColor = BrickColor.new("Really black")
Blobby.Transparency = 0
Blobby.Material = "Plastic"
Blobby.Size = Vector3.new(1, 1, 2)
Blobby.TopSurface = Enum.SurfaceType.Smooth
Blobby.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Blobby)
Weld.Part0 = ra
Weld.Part1 = Blobby
Weld.C1 = CFrame.new(0, 0.8, 0)
Weld.C0 = CFrame.Angles(Rad(-180),0,135)

local M2 = Instance.new("SpecialMesh")
M2.Parent = Blobby
M2.MeshId = "rbxassetid://0"
M2.TextureId = "rbxassetid://0"
M2.Scale = Vector3.new(1, 0.8, 1)

--[[local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0, 3.5, 0)
naeeym2.Adornee = hed
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Fight Me"
tecks2.Font = Enum.Font.Bodoni
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0, 0, 0)
tecks2.TextStrokeColor3 = Color3.new(1, 1, 1)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2]]
----------------------------------------------------------------------------------
local AddInstance = function(Object, ...)
local Obj = Instance.new(Object)
for i,v in next,(...) do
Obj[i] = v
end
return Obj
end
----------------------------------------------------

MeshT = "rbxassetid://1028713"
TextureM = "rbxassetid://127678851"




local Load = Instance.new("Animation", char)


		local Reaper = AddInstance("Part",{
			Parent = hed,
			CFrame = hed.CFrame,
			formFactor = "Symmetric",
			Size = Vector3.new(1, 1, 1),
			CanCollide = false,
			TopSurface = "Smooth",
			BottomSurface = "Smooth",
			Locked = true,
		})
		local Weld = AddInstance("Weld",{
			Parent = Reaper,
			Part0 = hed,
			C0 = CFrame.new(0, 0.4, 0)*CFrame.Angles(0, 0, 0),
			Part1 = Reaper,
		})
		local Mesh = AddInstance("SpecialMesh",{
			Parent = Reaper,
			MeshId = MeshT,
			TextureId = TextureM,
			Offset = Vector3.new(0, 0.3, 0),
			Scale = Vector3.new(1.05,1.05,1.05),
			VertexColor = Vector3.new(0.3, 0, 0.3),
		})
		
		
		
		
		
-------------------------------------------------------
wait(1)
plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
whitecolor = Color3.new(255,255,1)
epicmode = false
normal = true
for i,v in pairs(char:GetChildren()) do
   if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "ShirtGraphic" then
      print("no")
     end
end
local shirt = Instance.new("Shirt",char)
shirt.ShirtTemplate = "rbxassetid://463141967"
local pants = Instance.new("Pants",char)
pants.PantsTemplate = "rbxassetid://175974404"
local bdycolors = char["Body Colors"]
bdycolors.HeadColor3 = whitecolor
bdycolors.LeftArmColor3 = whitecolor
bdycolors.LeftLegColor3 = whitecolor
bdycolors.RightArmColor3 = whitecolor
bdycolors.RightLegColor3 = whitecolor
bdycolors.TorsoColor3 = whitecolor
for i,v in pairs(char:GetChildren()) do
    if v.ClassName == "Hat" or v.ClassName == "Accessory" then
        print("no")
    end
end



local BC = Character["Body Colors"]
BC.HeadColor = BrickColor.new("New Yeller")
BC.LeftArmColor = BrickColor.new("New Yeller")
BC.LeftLegColor = BrickColor.new("New Yeller")
BC.RightArmColor = BrickColor.new("New Yeller")
BC.RightLegColor = BrickColor.new("New Yeller")
BC.TorsoColor = BrickColor.new("New Yeller")



local righteyebrickcolor = "Institutional white"
local reye = Instance.new("Part", char)
reye.CanCollide = false
reye.BrickColor = BrickColor.new(righteyebrickcolor)
reye.Material = "Neon"
reye.Size = Vector3.new(.25,.35,.15)
weld(reye, char.Head, CFrame.new(0.15,-0.2,0.55), CFrame.new(1,0,0))
m1 = Instance.new("SpecialMesh", reye)
m1.MeshType = "Sphere"
m1.Scale = Vector3.new(0.9,0.9,0.9)
reye.Locked = true
reye.Name = "re"

-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.Adornee = hed
naeeym2.Name = "Name"

local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Script By Henriquegame2015 (Rare Script)(Leaked)"
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('New Yeller').Color
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
textfag = tecks2
tecks2.Text = "Load....."
wait(2)
tecks2.Text = "Pendulum Hub best hub B)"
wait(1)
tecks2.Text = "Noob Switcher"
BTAUNT:Play()
coroutine.resume(coroutine.create(function()
    while textfag ~= nil do
        swait()
        textfag.Position = UDim2.new(math.random(-.2,.2),math.random(-3,3),.05,math.random(-3,3))  
        textfag.Rotation = math.random(-3,3)
    end
end))


char.Humanoid.JumpPower = 115
char.Humanoid.WalkSpeed = 30


--Switcher-------------------------------------


local effectTorso = Instance.new("Sparkles", char.Torso)
effectTorso.SparkleColor = Color3.new(0, 85, 255)
effectTorso.Enabled = false

local animation = Instance.new("NumberValue", char)
animation.Value = 1
animation.Name = "Animation"




---------------------------


function Noob2 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://583914109"
wait(0.1)
pants.PantsTemplate = "rbxassetid://7825739"
tecks2.Text = "Anime"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Hot pink').Color
maincolor = BrickColor.new("Hot pink")

BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1131624146"

BC.HeadColor = BrickColor.new("New Yeller")
        BC.LeftArmColor = BrickColor.new("New Yeller")
        BC.LeftLegColor = BrickColor.new("New Yeller")
        BC.RightArmColor = BrickColor.new("New Yeller")
        BC.RightLegColor = BrickColor.new("New Yeller")
        BC.TorsoColor = BrickColor.new("New Yeller")
char.Torso.Material = ("Plastic")

	effectTorso.Enabled = false
	
	animation.Value = 3
	
	
	hed.face.Texture = "rbxassetid://10521899"
	
	
end

function Noob3 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://259122117"
wait(0.1)
pants.PantsTemplate = "rbxassetid://227915108"
tecks2.Text = "Murder"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Really red').Color
maincolor = BrickColor.new("Really red")

BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1564523997"

BC.HeadColor = BrickColor.new("New Yeller")
        BC.LeftArmColor = BrickColor.new("New Yeller")
        BC.LeftLegColor = BrickColor.new("New Yeller")
        BC.RightArmColor = BrickColor.new("New Yeller")
        BC.RightLegColor = BrickColor.new("New Yeller")
        BC.TorsoColor = BrickColor.new("New Yeller")

char.Torso.Material = ("Plastic")
	
	effectTorso.Enabled = false
	
	animation.Value = 1
	
	hed.face.Texture = "rbxassetid://10521899"


end

function Noob4 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://463141967"
wait(0.1)
pants.PantsTemplate = "rbxassetid://175974404"
tecks2.Text = "Noob Switcher"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('New Yeller').Color
maincolor = BrickColor.new("New Yeller")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=869166432"

BC.HeadColor = BrickColor.new("New Yeller")
        BC.LeftArmColor = BrickColor.new("New Yeller")
        BC.LeftLegColor = BrickColor.new("New Yeller")
        BC.RightArmColor = BrickColor.new("New Yeller")
        BC.RightLegColor = BrickColor.new("New Yeller")
        BC.TorsoColor = BrickColor.new("New Yeller")
char.Torso.Material = ("Plastic")
	effectTorso.Enabled = false
	
	animation.Value = 1
	
	hed.face.Texture = "rbxassetid://10521899"

	
end


function Noob5 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://1533635803"
wait(0.1)
pants.PantsTemplate = "rbxassetid://1460022985"
tecks2.Text = "Pandora"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('White').Color
maincolor = BrickColor.new("White")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1382488262"

BC.HeadColor = BrickColor.new("New Yeller")
        BC.LeftArmColor = BrickColor.new("New Yeller")
        BC.LeftLegColor = BrickColor.new("Black")
        BC.RightArmColor = BrickColor.new("New Yeller")
        BC.RightLegColor = BrickColor.new("Black")
        BC.TorsoColor = BrickColor.new("New Yeller")
	char.Torso.Material = ("Plastic")
	effectTorso.Enabled = false
	
	animation.Value = 1
	
	
hed.face.Texture = "rbxassetid://10521899"

end



function Noob6 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://338740550"
wait(0.1)
pants.PantsTemplate = "rbxassetid://338750779"
tecks2.Text = "Injustice"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Neon orange').Color
maincolor = BrickColor.new("Really black")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=929330882"

BC.HeadColor = BrickColor.new("White")
        BC.LeftArmColor = BrickColor.new("White")
        BC.LeftLegColor = BrickColor.new("White")
        BC.RightArmColor = BrickColor.new("White")
        BC.RightLegColor = BrickColor.new("White")
        BC.TorsoColor = BrickColor.new("White")
char.Torso.Material = ("Plastic")

effectTorso.Enabled = false

animation.Value = 1


hed.face.Texture = "rbxassetid://10521899"
	
	
end


function Noob7 ()
	
	wait(0.1)
shirt.ShirtTemplate = "rbxassetid://45695443"
wait(0.1)
pants.PantsTemplate = "rbxassetid://45696190"
tecks2.Text = "God of Time"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Deep orange').Color
maincolor = BrickColor.new("Deep orange")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=492070484"

BC.HeadColor = BrickColor.new("Smoky grey")
        BC.LeftArmColor = BrickColor.new("Smoky grey")
        BC.LeftLegColor = BrickColor.new("Black")
        BC.RightArmColor = BrickColor.new("Smoky grey")
        BC.RightLegColor = BrickColor.new("Black")
        BC.TorsoColor = BrickColor.new("Smoky grey")

char.Torso.Material = ("Plastic")


effectTorso.Enabled = false

animation.Value = 1

hed.face.Texture = "rbxassetid://10521899"

	
	
end



function Noob8 ()
	
	wait(0.1)

tecks2.Text = "★ Rockefeller Street ★"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Really blue').Color
maincolor = BrickColor.new("Really blue")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=255288110"

BC.HeadColor = BrickColor.new("Bright blue")
        BC.LeftArmColor = BrickColor.new("Light blue")
        BC.LeftLegColor = BrickColor.new("Light blue")
        BC.RightArmColor = BrickColor.new("Bright blue")
        BC.RightLegColor = BrickColor.new("Bright blue")
        BC.TorsoColor = BrickColor.new("Really blue")

effectTorso.Enabled = true


shirt.ShirtTemplate = "rbxassetid://0"
wait(0.1)
pants.PantsTemplate = "rbxassetid://0"

animation.Value = 2

hed.face.Texture = "rbxassetid://10521899"


	
	
end


function Noob9 ()
	
	wait(0.1)

tecks2.Text = "J҉ E҉ V҉ I҉ L҉"

tecks2.TextColor3 = BrickColor.new('Black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Royal purple').Color
maincolor = BrickColor.new("Royal purple")


BTAUNT.SoundId = "http://www.roblox.com/asset/?id=2533880583"

BC.HeadColor = BrickColor.new("Lilac")
        BC.LeftArmColor = BrickColor.new("Lilac")
        BC.LeftLegColor = BrickColor.new("Lilac")
        BC.RightArmColor = BrickColor.new("Lilac")
        BC.RightLegColor = BrickColor.new("Lilac")
        BC.TorsoColor = BrickColor.new("Lilac")

effectTorso.Enabled = false


shirt.ShirtTemplate = "rbxassetid://2544612637"
wait(0.1)
pants.PantsTemplate = "rbxassetid://2544611861"

animation.Value = 4

hed.face.Texture = "rbxassetid://241553801"







	
	
end


--------------------------------------------










--------------------------------------------------

function die()
	attack = true
M2.MeshId = "http://www.roblox.com/asset/?id=12592754"
M2.TextureId = "http://www.roblox.com/asset/?id=12592745"
	for i = 0, 2.6, 0.1 do
		swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06 * Sin(sine / 24) - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-84), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(160), Rad(-.6), Rad(13)), 0.2)
                                LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
			end
	Cso("357417055", tors, 10, 1)
	CameraEnshaking(2, 15)
	Effects.Wave.Create(BrickColor.new("Really black"), tors.CFrame * CF(0, -6, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
  	Effects.Wave.Create(BrickColor.new("Really black"), tors.CFrame * CF(0, -6, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
  	Effects.Wave.Create(BrickColor.new("Really black"), tors.CFrame * CF(0, -6, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
 	for i, v in pairs(FindNearestHead(Blobby.CFrame.p, 9.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	for i = 0, 3, 0.1 do
		swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
			neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size + 0.06 * Sin(sine / 24) - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(84), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06 * Sin(sine / 24) - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-84), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(5), Rad(-.6), Rad(-25)), 0.3)
                        LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
			end
M2.MeshId = "http://www.roblox.com/asset/?id=0"
M2.TextureId = "http://www.roblox.com/asset/?id=0"
	attack = false
end


function dance()
	attack = true
	hum.WalkSpeed = 0
	CFuncs.Sound.Create("rbxassetid://130791919", head, 100, 1)
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 2) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.15)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1.2 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1.2 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	attack = false
	hum.WalkSpeed = 20
end

function aaa()
	attack = true
	hum.WalkSpeed = 0
	for i = 0,20, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-5), Rad(0), Rad(25)), 0.3)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-5), Rad(0), Rad(-25)), 0.3)
		RW.C0 = clerp(RW.C0, CF(1.1* Player_Size, 0.5 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(180), Rad(6), Rad(-56)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.1 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(45), Rad(6), Rad(86)), 0.1)
	end
	hum.WalkSpeed = 16
	attack = false
end

function finalChaos()
	attack = true
	spawn(function()
		local p = Instance.new("Part",char)
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = CFrame.new(mouse.Hit.p+Vector3.new(0,100,0))
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = "https://roblox.com/asset/?id=28140935"
		m.Scale = Vector3.new(2,2,2)
		for i=1,30 do
			p.CFrame = p.CFrame-Vector3.new(0,3.3333,0)
			p.CFrame = p.CFrame * CFrame.Angles(0.5,0,0)
			wait()
		end
	local beam = Instance.new("Part",char)
	beam.Anchored = true
	beam.CanCollide = false
	beam.BrickColor = BrickColor.new("White")
	beam.Material = Enum.Material.Neon
	beam.Size = Vector3.new(1,1,1)
	beam.Position = p.Position+Vector3.new(0,1000,0)
	beam.CFrame = beam.CFrame * CFrame.Angles(0,0,89.5354)
	local m = Instance.new("SpecialMesh",beam)
	m.MeshType = "Cylinder"
	m.Scale = Vector3.new(2000,15,15)
	damage(6,20,35,p.Position)
	p.Transparency = 1
	CFuncs.Sound.Create("rbxassetid://440145223", p, 10, 1)
	for i=1,10 do
		m.Scale = m.Scale-Vector3.new(0,1,1)
		beam.Transparency = i / 10
		wait()
	end
	p:Destroy()
	end)
	attack = false
end

function beam()
	attack = true
	hum.WalkSpeed = 0
	local Ring1 = Instance.new("Part", char)
	Ring1.Anchored = true
	Ring1.BrickColor = maincolor
	Ring1.CanCollide = false
	Ring1.FormFactor = 3
	Ring1.Name = "Ring"
	Ring1.Material = "Neon"
	Ring1.Size = Vector3.new(1, 0.05, 1)
	Ring1.Transparency = 1
	Ring1.TopSurface = 0
	Ring1.BottomSurface = 0
	local Ring1Mesh = Instance.new("SpecialMesh", Ring1)
	Ring1Mesh.MeshType = "Brick"
	Ring1Mesh.Name = "SizeMesh"
	Ring1Mesh.Scale = Vector3.new(0, 1, 0)
	local InnerRing1 = Ring1:Clone()
	InnerRing1.Parent = char
	InnerRing1.Transparency = 0
	InnerRing1.BrickColor = BrickColor.new("New Yeller")
	InnerRing1.Size = Vector3.new(1, 1, 1)
	local InnerRing1Mesh = InnerRing1.SizeMesh
	InnerRing1Mesh.Scale = Vector3.new(0, 0, 0)
	InnerRing1Mesh.MeshType = "Sphere"
	Ring1:Destroy()
	for i = 0, 6, 0.1 do
		swait()
		--orb.CFrame = Pupil.CFrame
		Aura(7, 0.12, "Add", Head.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0, "Sphere")
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 1) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(165 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-165 + 2.5 * Sin(sine / 20))), 0.12)
	end
	InnerRing1.Transparency = 1
	InnerRing1.CFrame = Head.CFrame + root.CFrame.lookVector * 5
        Cso("2545012765", char, 10, 1)
	Cso("2606661976", char, 2.3, 1)
	local a = IT("Part", char)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = BrickC("Pastel violet")
	a.Material = "SmoothPlastic"
	a.Transparency = 0
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = IT("Part", char)
	a2.Name = "Direction"
	a2.Anchored = true
	a2.BrickColor = maincolor
	a2.Color = maincolor.Color
	a2.Material = "Neon"
	a2.Transparency = 0.7
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = IT("Part", char)
	ba.Name = "HitDirect"
	ba.Anchored = true
	ba.BrickColor = maincolor
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (InnerRing1.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
	a.CFrame = a.CFrame * angles(0, Rad(90), 0)
	a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
	game:GetService("Debris"):AddItem(a, 20)
	game:GetService("Debris"):AddItem(a2, 20)
	game:GetService("Debris"):AddItem(ba, 20)
	local msh = Instance.new("SpecialMesh", a)
	msh.MeshType = "Brick"
	msh.Scale = Vector3.new(1, 5, 5)
	local msh2 = Instance.new("SpecialMesh", a2)
	msh2.MeshType = "Brick"
	msh2.Scale = Vector3.new(1, 7, 7)
	for i = 0, 10, 0.1 do
		swait()
		CameraEnshaking(1, 5)
		a2.Color = maincolor.Color
		root.CFrame = FaceMouse()[1]
		InnerRing1.CFrame = Head.CFrame + root.CFrame.lookVector * 4
		ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (InnerRing1.CFrame.p - position).magnitude
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
		a.CFrame = a.CFrame * angles(0, Rad(90), 0)
		a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
		msh.Scale = msh.Scale - Vector3.new(0, 0.05, 0.05)
		msh2.Scale = msh2.Scale - Vector3.new(0, 0.03, 0.03)
		Aura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0, "Sphere")
		for i, v in pairs(FindNearestHead(ba.CFrame.p, 14.5)) do
		if v:FindFirstChild("Head") then
				Eviscerate(v)
			end
		end
	end
	a:Destroy()
	a2:Destroy()
	ba:Destroy()
	InnerRing1:Destroy()
	attack = false
	hum.WalkSpeed = 10
	hum.CameraOffset = Vector3.new(0,0,0)
end

function Call_Upon_The_Eyes()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(0), Rad(15 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	Magic(5, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
	Magic(10, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
	Magic(1, "Add", mouse.Hit, Vector3.new(100000, 100000, 100000000), 0.5, maincolor, "Sphere")
	Magic(1, "Add", mouse.Hit, Vector3.new(10000000, 100000, 10000000), 0.75, maincolor, "Sphere")
	CameraEnshaking(4, 25)
	for i, v in pairs(FindNearestHead(mouse.Hit.p, 14.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(45), Rad(0), Rad(15 + 2.5 * Sin(sine / 20))), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
	end
	attack = false
	hum.WalkSpeed = 10
end

function CHAOS()
	attack = true
	    root.CFrame = CFrame.new(CFrame.new(mouse.Hit.p)*CFrame.new(0,2.8,0).p,root.Position)
            Cso("2545012765", hed, 10, 1)
        Effects.Ring.Create(BrickC("Royal purple"), root.CFrame * CF(0, -2.3, 0) * angles(Rad(90),Rad(-1),Rad(0)), 2.5, 2.5, 40, 3, 3, 45, 0.01)

  	Effects.Sphere.Create(BrickColor.new("Royal Purple"), root.CFrame * CF(0, -2, 0), 10, 7, 10, 15, -0.1, 15, 0.04)
  	Effects.Sphere.Create(BrickColor.new("Really white"), root.CFrame * CF(0, -2, 0), 10, 6, 10, 15, -0.1, 15, 0.02)
  	Effects.Sphere.Create(BrickColor.new("Royal Purple"), root.CFrame * CF(0, -2, 0), 10, 4, 10, 15, -0.1, 15, 0.01)

	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(2,7,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1.5,9.5,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
	PixelBlock(1,12,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2,2,2,0.3,maincolor,0)
 	for i, v in pairs(FindNearestHead(Blobby.CFrame.p, 9.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	attack = false
end
function Chain2()
	if Mouse.Target.Parent ~= char and Mouse.Target.Parent.Parent ~= char and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
	local HUM = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
	local TORSO = HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
	local HEAD = HUM.Parent:FindFirstChild("Head")
	local RIGHTARM = HUM.Parent:FindFirstChild("Right Arm") or HUM.Parent:FindFirstChild("RightLowerArm")
	local LEFTARM = HUM.Parent:FindFirstChild("Left Arm") or HUM.Parent:FindFirstChild("LeftLowerArm")
	if HEAD and TORSO and HUM.Health > 0 then
	local GYRO = IT("BodyGyro",root)
	GYRO.D = 275
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,40000,0)
	attack = true
	hum.WalkSpeed = 0
	local hit,pos,hummie;
	local Hook2 = Part(EffectModel, Color3.new(),Enum.Material.Neon,Vector3.new(.05,.05,.05),root.CFrame,true,false)
	Hook2.Transparency = 1
	local A2 = NewInstance("Attachment",Hook2)
	local B2 = NewInstance("Attachment",la,{Position = Vector3.new(0,-ra.Size.Y/2,0)})
	local Chain2 = NewInstance("Beam",Hook2,{Attachment0 = A2,Attachment1=B2,Color = Color3.fromRGB(138,138,138),FaceCamera=true,LightInfluence=0,Texture="rbxassetid://73042633",TextureLength=5,Transparency=NumberSequence.new(0),TextureSpeed=0,CurveSize0=0,CurveSize1=0,FaceCamera=true,Segments=10,Width0=1,Width1=1})
	for i = 0, 2.3, .1 do
		swait()
		GYRO.cframe = CF(root.Position,TORSO.Position)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-7)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(7)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-25)), 0.1)
	end
	Cso("169105657", ra, 7, 1.2)
	for i = 0, 5, .1 do
		if(hit)then break end
		swait()
		GYRO.cframe = CF(root.Position,TORSO.Position)
		Hook2.CFrame = TORSO.CFrame
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(7)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-7)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-25)), 0.1)
	end
	Cso("169105657", ra, 5, .8)
        Cso("2545211765", char, 7, 1) 
	GYRO:remove()
	TORSO:BreakJoints()
	for i = 0, 6, .1 do
		swait()
		Hook2.CFrame = Hook2.CFrame:lerp(tors.CFrame * CF(0, 0, -1), .2)
		if(hit)then hit.CFrame = Hook2.CFrame; hit.Velocity = Vector3.new() 
		end
		if((Hook2.CFrame.p-tors.CFrame.p).magnitude < 2)then
			break
		end
		Chain2.TextureLength = 4
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(90)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(7)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-25)), 0.1)
	end
		hum.WalkSpeed = 16
		attack = false
		Hook2:Destroy()
		end
	end
end

function dejzrXD()
        attack = true
    hum.WalkSpeed = 20
    for i = 0, 1, 0.1 do
        swait()
        Cso("262562442", char, 10, 1)
        hum.CameraOffset = Vector3.new(0, -0.1 + 0.1 * Cos(sine / 20), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
    end
    Magic(5, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
    Magic(10, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
    Magic(1, "Add", mouse.Hit, Vector3.new(1000, 100000, 1000), 0.5, maincolor, "Sphere")
    Magic(1, "Add", mouse.Hit, Vector3.new(1000, 1000, 1000), 0.75, maincolor, "Sphere")
    CameraEnshaking(4, 5)
    for i, v in pairs(FindNearestHead(mouse.Hit.p, 14.5)) do
        if v:FindFirstChild("Head") then
            Eviscerate(v)
        end
    end
    for i = 0, 1, 0.1 do
        swait()
        hum.CameraOffset = Vector3.new(0, -0.2 + 0.1 * Cos(sine / 20), 0)
        rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
        RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(45), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
    end
	attack = false
	Speed = 20
end

function specialchaos()
        wait(0)
	CHOICE = 6
        Cso("130781067", hed, 10, 1)
	local killsky = Instance.new('Sky', game:GetService'Lighting')
killsky.SkyboxBk = "rbxassetid://3662994"
killsky.SkyboxDn = "rbxassetid://3662994"
killsky.SkyboxFt = "rbxassetid://3662994"
killsky.SkyboxLf = "rbxassetid://3662994"
killsky.SkyboxRt = "rbxassetid://3662994"
killsky.SkyboxUp = "rbxassetid://3662994"
---
killsky.StarCount = 0
killsky.SunAngularSize = 0
killsky.MoonAngularSize = 0
killsky.MoonTextureId = ""
killsky.CelestialBodiesShown = false
	if HITFLOOR ~= nil then
		ATTACK = false
		Rooted = false
		local RINGSPIN = true
		local CONSTRUCTING = true
		local RING = CreatePart(3, Effects, "Neon", 0, 10, "Royal purple", "Ring", VT(0,0,0))
		RING.Color = C3(0,0,0)
		MakeForm(RING,"Cyl")
		RING.CFrame = CF(HITPOS)
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(5), RAD(0))
			until CONSTRUCTING == false
			repeat 
				Swait() 
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(5), RAD(0))
			until RINGSPIN == false
			for i = 1, 25 do
				Swait()
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(5), RAD(0))
				RING.Size = RING.Size - VT(0.15,0,0.15)
				--DECAL.Transparency = DECAL.Transparency + 1/25
				RING.Transparency = RING.Transparency + 1/25
			end
			RING:remove()
		end))
		for i = 1, 15 do
			Swait()
			RING.Size = RING.Size + VT(0,0,0)
			RING.Transparency = RING.Transparency - 1/15
		end
		end
	hum.WalkSpeed = 20
	attack = false
end
function icando()
	attack = true
	hum.WalkSpeed = 0
        TEST:Remove()
        TEST:Play()
        repeat
	for i = 0,4,0.1 do
		swait()
                TEST.Parent = tors
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(-20)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.05 * Cos(sine / 12)* Player_Size, -0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-76)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.5 + 0.05 * Cos(sine / 12)* Player_Size, -0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(56)), 0.1)
	end
        until TEST.Playing == false
        TEST:Stop()
        TEST:Play()
        TEST:Remove()
        print('I CAN DO ANYTHING')
		attack = false
		hum.WalkSpeed = 20
end

function finalChaos2()
	attack = true
M2.MeshId = "http://www.roblox.com/asset/?id=12592754"
M2.TextureId = "rbxassetid://2582829122"
	M2.Scale = Vector3.new(5, 5, 5)
        Cso("2545018472", hed, 10, 1)
	for i = 0, 1, 0.1 do
		swait()
		hum.CameraOffset = Vector3.new(0, 8, 0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-45 - 7.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-16.5), Rad(0), Rad(-20)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-16.5), Rad(0), Rad(20)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(180), Rad(0), Rad(15)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-30), Rad(-90)), 0.2)
	end
	Cso("483458132", char, 10, .7)
	Cso("483458132", char, 10, 1)
	CameraEnshaking(6, 65)
	Effects.Wave.Create(BrickColor.new("Royal Purple"), tors.CFrame * CF(0, -5, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
  	Effects.Wave.Create(BrickColor.new("Really white"), tors.CFrame * CF(0, -5, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
  	Effects.Wave.Create(BrickColor.new("Royal Purple"), tors.CFrame * CF(0, -5, 0) * angles(math.rad(0), math.rad(math.random(0, 180)), math.rad(0)), 550.5, 100.5, 550.5, 200, 20, 200, 0.05)
	Effects.Ring.Create(BrickColor.new("Really white"), root.CFrame * CF(0, -2, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5, 0.5, 0.1, 2, 2, 0, 0.04)
  	Effects.Sphere.Create(BrickColor.new("Royal Purple"), root.CFrame * CF(0, -2, 0), 10, 7, 10, 15, -0.1, 15, 0.04)
  	Effects.Sphere.Create(BrickColor.new("Really white"), root.CFrame * CF(0, -2, 0), 10, 6, 10, 15, -0.1, 15, 0.02)
  	Effects.Sphere.Create(BrickColor.new("Royal Purple"), root.CFrame * CF(0, -2, 0), 10, 4, 10, 15, -0.1, 15, 0.01)
	Magic(5, "Add", root.CFrame * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, BrickColor.new("Royal Purple"), "Sphere")
	Magic(10, "Add", root.CFrame * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, BrickColor.new("Royal Purple"), "Sphere")
	Magic(1, "Add", root.CFrame, Vector3.new(1, 100000, 1), 0.5, BrickColor.new("Really white"), "Sphere")
	Magic(1, "Add", root.CFrame, Vector3.new(1, 1, 1), 0.75, BrickColor.new("Really white"), "Sphere")
	for i, v in pairs(FindNearestHead(Blobby.CFrame.p, 99999999999.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	for i = 0, 1, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(45 - 7.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-45)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9* Player_Size - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(45)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(-325), Rad(-.6), Rad(-45)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -.6* Player_Size) * angles(Rad(-325), Rad(-6), Rad(45)), 0.2)
	end
	M2.Scale = Vector3.new(1, 1, 1)
M2.MeshId = "http://www.roblox.com/asset/?id=0"
M2.TextureId = "http://www.roblox.com/asset/?id=0"
	attack = false
end

function DRAG_THEM_TO_HELL()
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
	local HUM = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
	local TORSO = HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
	local HEAD = HUM.Parent:FindFirstChild("Head")
	if HEAD and TORSO and HUM.Health > 0 then
	local GYRO = IT("BodyGyro",root)
	GYRO.D = 275
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,40000,0)
	attack = true
	hum.WalkSpeed = 0
	local hit,pos,hummie;
	local Hook = Part(EffectModel, Color3.new(),Enum.Material.Neon,Vector3.new(.05,.05,.05),root.CFrame,true,false)
	Hook.Transparency = 1
	local A = NewInstance("Attachment",Hook)
	local B = NewInstance("Attachment",la,{Position = Vector3.new(0,-ra.Size.Y/2,0)})
	local Chain = NewInstance("Beam",Hook,{Attachment0 = A,Attachment1=B,Color = Color3.fromRGB(138,138,138),FaceCamera=true,LightInfluence=0,Texture="rbxassetid://73042633",TextureLength=5,Transparency=NumberSequence.new(0),TextureSpeed=0,CurveSize0=0,CurveSize1=0,FaceCamera=true,Segments=10,Width0=1,Width1=1})
	local POS = mouse.Hit.p
	local CHAINS = false
	local CHAINLINKS = {}
	local A = IT("Attachment",la)
	A.Position = Vector3.new(1,-1,0)*Player_Size
	A.Orientation = Vector3.new(-90, -89.982, 0)
	local B = IT("Attachment",la)
	B.Position = Vector3.new(-1,-1,0)*Player_Size
	B.Orientation = Vector3.new(-90, 89.988, 0)
	local C = IT("Attachment",la)
	C.Position = Vector3.new(0.5,-1.3,0)*Player_Size
	C.Orientation = Vector3.new(-90, -89.982, 0)
	local D = IT("Attachment",la)
	D.Position = Vector3.new(-0.5,-1.3,0)*Player_Size
	D.Orientation = Vector3.new(-90, 89.988, 0)
	local LIGHT = IT("Attachment",la)
	LIGHT.Position = Vector3.new(0,-1,0)*Player_Size
	local LIGHT2 = IT("PointLight",LIGHT)
	LIGHT2.Range = 7
	LIGHT2.Brightness = 5
	LIGHT2.Color = Color3.new(0,0,0)
	for i = 1, 2 do
		local TWIST = -2
		local START = A
		local END = B
		if i == 1 then
			START = B
			END = A
		end
		local ChainLink = IT("Beam",tors)
		ChainLink.Texture = "rbxassetid://73042633"
		ChainLink.Color = ColorSequence.new(Color3.fromRGB(138,138,138))
		ChainLink.TextureSpeed = 1
		ChainLink.Width0 = 1
		ChainLink.Width1 = 1
		ChainLink.TextureLength = 2.5
		ChainLink.Attachment0 = START
		ChainLink.Attachment1 = END
		ChainLink.CurveSize0 = TWIST
		ChainLink.CurveSize1 = TWIST
		--ChainLink.FaceCamera = true
		ChainLink.Segments = 45
		ChainLink.Transparency = NumberSequence.new(0.25)
		table.insert(CHAINLINKS,ChainLink)
	end
	for i = 1, 2 do
		local TWIST = -1
		local START = C
		local END = D
		if i == 1 then
			START = D
			END = C
		end
		local ChainLink = IT("Beam",tors)
		ChainLink.Texture = "rbxassetid://73042633"
		ChainLink.Color = ColorSequence.new(Color3.fromRGB(138,138,138))
		ChainLink.TextureSpeed = 1
		ChainLink.Width0 = 1
		ChainLink.Width1 = 1
		ChainLink.TextureLength = 5
		ChainLink.Attachment0 = START
		ChainLink.Attachment1 = END
		ChainLink.CurveSize0 = TWIST
		ChainLink.CurveSize1 = TWIST
		--ChainLink.FaceCamera = true
		ChainLink.Segments = 25
		ChainLink.LightEmission = 0.5
		ChainLink.Transparency = NumberSequence.new(0.25)
		table.insert(CHAINLINKS,ChainLink)
	end
	for i = 0, 2.3, .1 do
		swait()
		GYRO.cframe = CF(root.Position,TORSO.Position)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-7)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(7)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-25)), 0.1)
	end
	Cso("169105657", ra, 7, 1.2)
	for i = 0, 4, .1 do
		if(hit)then break end
		swait()
		GYRO.cframe = CF(root.Position,TORSO.Position)
		Hook.CFrame = HEAD.CFrame
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(7)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(-7)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, -0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(-25)), 0.1)
	end
	for _,v in next, getRegion(Hook.Position,1,{char}) do
			if(v.Parent and GetTorso(v.Parent) and v.Parent:FindFirstChildOfClass'Humanoid')then
				hit = GetTorso(v.Parent);
				hummie = v.Parent:FindFirstChildOfClass'Humanoid';
			break;
		end
	end
	Cso("169105657", ra, 5, .8)
	Cso("1251737869", tors, 2, 1.1)
	GYRO:remove()
	for i = 0, 3, .1 do
		swait()
		HUM.PlatformStand = true
		Hook.CFrame = Hook.CFrame:lerp(ra.CFrame * CF(0, 0, -1), .2)
		if(hit)then hit.CFrame = Hook.CFrame; hit.Velocity = Vector3.new() 
		end
		if((Hook.CFrame.p-ra.CFrame.p).magnitude < 2)then
			break
		end
		Chain.TextureLength = 4
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-5 - 2.5 * Sin(sine / 30)), Rad(0), Rad(45)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(10)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-84), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(10)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0.4* Player_Size) * angles(Rad(90), Rad(-.6), Rad(45)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(30), Rad(-.6), Rad(-25)), 0.1)
	end
		hum.WalkSpeed = 16
		attack = false
		Hook:Destroy()
		A:remove()
		B:remove()
		C:remove()
		D:remove()
		end
	end
end
function ultra()
        attack = true
	hum.WalkSpeed = 0
        BTAUNT:Remove()
hed.face.Texture = "rbxassetid://160952297"
local Fire = IT("Sound",Character.Torso)
Fire.SoundId = "rbxassetid://1060413310"
Fire.Looped = true
Fire.Pitch = 1
Fire.Volume = 1
Fire:Play()
BTAUNT:Play()
        BTAUNT:Remove()
        wait(1)
	for i = 0,18,0.1 do
        swait()
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(0)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-.6), Rad(43 + 4.5 * Sin(sine / 12))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
	end
        wait(1)
	for i = 0,1.2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(0)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-.6), Rad(43 + 4.5 * Sin(sine / 12))), 0.1)
        LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
	end
	for i = 0,1.2,0.1 do
		swait()

	rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(0)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(0), Rad(0)), 0.15)
        RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(5)), 0.1)
        LW.C0 = clerp(LW.C0, CF(-.8, 0.5 + 0.05 * Sin(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(20), Rad(-215)), 0.1)
	end
M2.MeshId = "http://www.roblox.com/asset/?id=12592754"
M2.TextureId = "rbxassetid://26884682"
        tecks2:Remove()
        Fire:Stop()
        local BC = char["Body Colors"]
        BC.HeadColor = BrickColor.new("New Yeller")
        BC.LeftArmColor = BrickColor.new("New Yeller")
        BC.LeftLegColor = BrickColor.new("New Yeller")
        BC.RightArmColor = BrickColor.new("New Yeller")
        BC.RightLegColor = BrickColor.new("New Yeller")
        BC.TorsoColor = BrickColor.new("New Yeller")
        tecks2:Remove()
        BTAUNT3:Play()
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,1,0)
naeeym2.Adornee = hed
naeeym2.Name = "Name"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Font = "Garamond"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new('Really black').Color
tecks2.TextStrokeColor3 = BrickColor.new('Really black').Color
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
textfag = tecks2
wait(1)
tecks2.Text = "The Boss Noob"
coroutine.resume(coroutine.create(function()
    while textfag ~= nil do
        swait()
        textfag.Position = UDim2.new(math.random(-.2,.2),math.random(-3,3),.05,math.random(-3,3))  
        textfag.Rotation = math.random(-3,3)
    end
end))
hed.face.Texture = "rbxassetid://160952297"
-------------------
    Spawn(function()
        while Equipped and Humanoid.Parent and Torso.Parent do
            if Angle == 360 then
                Angle = 0
            end
            Angle = Angle + 0.05
            local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
            if Hit then
                if not Circle.Parent then
                    Circle.Parent = Character
                end
                for i, v in pairs(CircleParts) do
                    v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
                end
            else
                Circle.Parent = nil
            end
            wait()
        end
    end)
	attack = false
	hum.WalkSpeed = 75
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == "t" then
                      dance()
		elseif key == 'y' then
			aaa()
		elseif key == "p" then
						finalChaos()
		elseif key == "z" then
						beam()
                elseif key == "x" then
                                            Call_Upon_The_Eyes()
                elseif key == "v" then
                                            dejzrXD()
                elseif key == "b" then
                                            specialchaos()
                elseif key == "n" then
                                           CHAOS()
                elseif key == "f" then
                                           icando()
                elseif key == "h" then
                                           finalChaos2()
                elseif key == "g" then
                                           Chain2()
                elseif key == "c" then
                                           DRAG_THEM_TO_HELL()
		                elseif key == "q" then
			
			
	
                                           Noob6()
		elseif key == "l" then
			
			

	
			Noob2()
			

		elseif key == "k" then
			
			
	
			
			Noob3()
		
		elseif key == "j" then
			
			

		
			
			Noob4()
			

		elseif key == "m" then
		
			

			
			Noob5()
			
			
		elseif key == "e" then
			
			
		
			
			Noob7()

elseif key == "u" then

Noob8()

		elseif key == "r" then
			
			Noob9()
			
			

 		end
	end
end)

mouse.Button1Down:connect(function(key)
	if attack == false then
		die()
	end
end)

function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = Instance.new("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or Color3.new(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or Vector3.new(1,1,1)
	part.CFrame = cframe or CF(0,0,0)
	part.Anchored = anchored or true
	part.CanCollide = cancollide or false
	part.Parent = parent or char
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end
-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos) --Thanks, Star Glitcher!
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
end
rng:Destroy()
end))
end

function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
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
		local Damage = math.random(minim, maxim)
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
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
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
					Effects.Block.Create(BrickColor.new("Royal purple"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
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

function damage(range,mindam,maxdam,pos)
	for i,v in ipairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v.Name ~= Player.Name then
				if v:FindFirstChildOfClass("Humanoid") then
					if v:FindFirstChild("Head") then
						if (v:FindFirstChild("Head").Position - pos).magnitude < 10 then
							if v:FindFirstChildOfClass("Humanoid").Health > 5000 then v:FindFirstChildOfClass("Humanoid").Health = 0 else
								v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - math.random(mindam,maxdam)
							end
						end
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
print("By Makhail07")
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
 			if attack == false then
	
	if animation.Value == 1 then
		
		
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0 - 0.04 * Sin(sine / 24) * Player_Size, 0 + 0.04 * Sin(sine / 12) * Player_Size, 0 + 0.05 * Player_Size * Cos(sine / 12)) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(0 - 2.5 * Sin(sine / 24)), Rad(0)), 0.08)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25 - 2.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.08)
                RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(79), Rad(0)) * angles(Rad(-6 - 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
                LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.06  - 0.05 * Player_Size * Cos(sine / 12), -0.01 * Player_Size) * angles(Rad(0 - 2.5 * Sin(sine / 12)), Rad(-79), Rad(0)) * angles(Rad(-6 + 2.5 * Sin(sine / 24)), Rad(0), Rad(0)), 0.08)
                RW.C0 = clerp(RW.C0, CF(1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(-43)), 0.08)
                LW.C0 = clerp(LW.C0, CF(-1 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, .6* Player_Size) * angles(Rad(-20), Rad(-.6), Rad(43)), 0.08)


	else
		
		if animation.Value == 2 then
			
			
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1.3 + 0.6 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(25)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(20), Rad(-15)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.5 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5 + 3 * Sin(sine / 20)), Rad(0), Rad(10 + 3 * Sin(sine / 20))), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5 + 3 * Sin(sine / 20)), Rad(0), Rad(-10 + 3 * Sin(sine / 20))), 0.15)
                RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(65 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(10 * Cos(sine / 20)), Rad(-15 + 2.5 * Sin(sine / 20))), 0.1)
			
			
		else
			
			
			if animation.Value == 3 then
				
				
				
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(10)), 0.15)
                tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-10)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(6)), 0.15)
                RW.C0 = clerp(RW.C0, CF(.8, 0.5 + 0.05 * Sin(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * angles(Rad(21), Rad(11), Rad(-90 - 2.5 * Sin(sine / 20))), 0.1)
                LW.C0 = clerp(LW.C0, CF(-.8, 0.3 + 0.05 * Sin(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * angles(Rad(8), Rad(5), Rad(90 + 2.5 * Sin(sine / 20))), 0.1)
				
				
			else
				
				
				if animation.Value == 4 then
					
					
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, 1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 10)), Rad(1 + -43 * Sin(sine / 10)), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(1 + -43 * Sin(sine / 8))), 0.3)
                RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.8 * Cos(sine / 10), 0.025 * Cos(sine / 10)) * RHCF * angles(Rad(-9.5), Rad(-20), Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(-1, -0.9 + 0.8 * Cos(sine / 10), 0.025 * Cos(sine / 10)) * LHCF * angles(Rad(-6.5), Rad(20), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 10)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(50), Rad(23 + 150 * Sin(sine / 8))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 10)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-50), Rad(-23 + 150 * Sin(sine / 8))), 0.1)
					
					
					
				end
				
			end
		end
		
		
	end
		                
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1
			if attack == false then
                                hum.WalkSpeed = 25
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(3 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.8 - 0.5 * Cos(sine / 7) / 2, 0.6 * Cos(sine / 7) / 2)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1, -0.8 + 0.5 * Cos(sine / 7) / 2, -0.6 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(0), Rad(-10 * Cos(sine / 20)), Rad(5 - 2.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
	                rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.9 + 0.5* Player_Size * Cos(sine / -15)) * angles(Rad(0), Rad(0), Rad(0)), 0.17)
		        neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.3 - 0.1 * Cos(sine / 20)* Player_Size, -.4* Player_Size) * angles(Rad(0), Rad(80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.15)
                        LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-80), Rad(0)) * angles(Rad(-10.5 + 3.5 * Sin(sine / 20)), Rad(0), Rad(20)), 0.15)
		        RW.C0 = clerp(RW.C0, CF(1.5 * Player_Size, 0.5 + 0.02 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-.6), Rad(43 + 4.5 * Sin(sine / 12))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
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
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
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
-------------------------------------------------------
--End Animations And Script--
------------------------------------------------------