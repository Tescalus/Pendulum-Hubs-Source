
-- nebula's ezconvert
--[[
PUT YOUR SCRIPTS BELOW HERE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV	
]]

--Hacker X Smol hacker edit by InfiniteOneWithdank
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()



local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
print('Hacker Loaded')
local mouse = game.Players.LocalPlayer:GetMouse()
local char = plr.Character
local hum = char:FindFirstChildOfClass'Humanoid'
local hed = char.Head
local root = char:FindFirstChild'HumanoidRootPart'
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Lime green")
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
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
    local wld = Instance.new("Weld", wp1)
    wld.Part0 = wp0
    wld.Part1 = wp1
    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
newWeld(tors, ll, -0.5, -1, 0)
ll.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(tors, rl, 0.5, -1, 0)
rl.Weld.C1 = CFrame.new(0, 1, 0)
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
			local lerp = function(a, b, t)
	return a * (1 - t) + b * t
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

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
print("oh no he died")
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
	local Color = (Color or Color3.new(0, 1, 0))
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
print("ok")
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

function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
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
print("little herobrine im cumming in your mom")
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
Effects = {
	Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("BlockMesh",p)
	m.Scale = meshstart
	coroutine.wrap(function()
		for i = 0, 1, factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
			if spin == true then
				p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			end
		end
		p:Destroy()
	end)()
return p
	end,
	Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("SpecialMesh",p)
	m.MeshType = "Sphere"
	m.Scale = meshstart
	coroutine.wrap(function()
		for i=0,1,factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
		end
	p:Destroy()
end)()
return p
	end,

	Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
	local p = Instance.new("Part",EffectModel)
	p.BrickColor = BrickColor.new(colour)
	p.Size = partsize
	p.Anchored = true
	p.CanCollide = false
	p.Material = matr
	p.CFrame = cf
	if inverse == true then
		p.Transparency = 1
	else
		p.Transparency = 0
	end
	local m = Instance.new("CylinderMesh",p)
	m.Scale = meshstart
	coroutine.wrap(function()
		for i=0,1,factor do
			swait()
			if inverse == true then
				p.Transparency = 1-i
			else
				p.Transparency = i
			end
			m.Scale = m.Scale + meshadd
		end
	p:Destroy()
end)()
return p
	end,

Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://20329976"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://3270017"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,

Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = meshid
m.TextureId = textid
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,

Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.new(0,move,0)
end
p:Destroy()
end)()
return p
end,

}
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
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CamShake(Length, Intensity)
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
function Smooth(Part)
	Part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
end
hum.MaxHealth = 1.0E298
hum.Health = 1.0E298
game:GetService("RunService"):BindToRenderStep("HOT", 0, function()
  if hum.Health > 0.1 and hum.Health < 1.0E298 then
    hum.MaxHealth = 1.0E298
    hum.Health = 1.0E298
  end
end)
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
--------------------------------------------------------------------    --------------
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
local SONG = 2007066385
if plr.Name == "KillerDarkness0105" then
    SONG = 1837185092
    
    
    
  for _, v in pairs(char:GetDescendants()) do
        if v.ClassName == "Part" and v.Name ~= "Head" and v.Name ~= "LeftArm" and v.Name ~= "RightArm" then
            v.Material = "Neon"
            v.Color = Color3.new(0,0,0)
            if v:FindFirstChildOfClass("SpecialMesh") then
                v:FindFirstChildOfClass("SpecialMesh").TextureId = ""
            end
            end
    end
    
    
    end
if plr.Name == "InfiniteOneWithdank" then
	SONG = 200602561
end
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.Volume = 2.5
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
local WasAir = false
local InAir = false
local LandTick = 0
local movelegs = false
local FF = Instance.new("ForceField",char)
FF.Visible = false
local Speed = 16
local Screen = true
local op1 = false
local Sitt = false




--Wuss poppin B)
local RightCP = [[   

_./Index- Start/Code_TrackerV2.Exe/AdminStart



>Loading Code Tracker V2.

...


...


...

>BOOT_FINSHED STARTING CODETRACKERV2//



>Code Tracker V2 Loaded.



>Insert credentials
>Login: LOGIN
>Password: PASSWORD



...



Login: Codex47
Password: **************


>Processing...

...

...

>_INDEX IPLOOKUP/LOAD/IP/193.281.74.39

>PASSWORDCHECK - SUCCESSFUL

>Welcome Codex. Remember Help for basic commands, SHelp for admin commands.



Help

>LOADING

...


...


>PROCESSING FINSHED


>LOADING COMMANDS

// WINDOW COMMANDS \\


>ASSOC          Displays or modifies file extension associations.
ATTRIB         Displays or changes file attributes.
BREAK          Sets or clears extended CTRL+C checking.
BCDEDIT        Sets properties in boot database to control boot loading.
CACLS          Displays or modifies access control lists (ACLs) of files.
CALL           Calls one batch program from another.
CHKNTFS        Displays or modifies the checking of disk at boot time.
CLS            Clears the screen.
CMD            Starts a new instance of the Windows command interpreter.
COLOR          Sets the default console foreground and background colors.
COMP           Compares the contents of two files or sets of files.
COMPACT        Displays or alters the compression of files on NTFS partitions.
CONVERT        Converts FAT volumes to NTFS.  You cannot convert the
               current drive.
COPY           Copies one or more files to another location.
DATE           Displays or sets the date.
DEL            Deletes one or more files.
DIR            Displays a list of files and subdirectories in a directory.
FC             Compares two files or sets of files, and displays the
LABEL          Creates, changes, or deletes the volume label of a disk.
MD             Creates a directory.
MKDIR          Creates a directory.
MKLINK         Creates Symbolic Links and Hard Links
MODE           Configures a system device.
MORE           Displays output one screen at a time.
MOVE           Moves one or more files from one directory to another
               directory.
OPENFILES      Displays files opened by remote users for a file share.
PATH           Displays or sets a search path for executable files.
PAUSE          Suspends processing of a batch file and displays a message.
RECOVER        Recovers readable information from a bad or defective disk.
TASKKILL       Kill or stop a running process or application.
TIME           Displays or sets the system time.
TITLE          Sets the window title for a CMD.EXE session.
TREE           Graphically displays the directory structure of a drive or
               path.
TYPE           Displays the contents of a text file.
VER            Displays the Windows version.
VERIFY         Tells Windows whether to verify that your files are written
               correctly to a disk.
VOL            Displays a disk volume label and serial number.
XCOPY          Copies files and directory trees.
WMIC           Displays WMI information inside interactive command shell.


// IP COMMANDS \\


GRAB           Grabs randomly generated IP's for VPN use.
IP           	 Displays your current IP address.
DDOS           Stresses the IP using data packets and bandwidth overloaders.
FIRE           Protects users IP by firing a automatic disconnect if bandwidth reaches a certain level.
PULL           Pulls data packets from other networks for faster network sending and download data.


For more information on tools see th-

You : Shut up.


Load: Code Terminal

//ACCESSING HIDDEN COMMAND DATA 010101011101110011101\\

>LOAD PROCESS_INDEX?/C0DEXTERMINAL

>INSERT DOWNLOAD FILE CONSTRAINT

CODETERM/FILE/19853/DOWNLOAD.org

>SUCCESSFUL CONSTRAINT

>LOADING TERMINAL




...


...


...


...



...


>Boot Failed.


...


>RESTARTPROCESS/CODETERM.EXE/LOAD

...



>Restarting Code Terminal.

>Getting Information Please Wait.....
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 

>Code Terminal Loaded.
>Welcome ...
>You're not Cod-


>Getting Information Please Wait.....
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 

00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 

00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 


So, Trying to break into my program huh?

Well You got another thing coming to you bud.
Those passwords, this entire program, It was all an elaborate scam.
And you, Being the pathetic little wannabe hacker kid, fell right for it.
Now i think you have an even bigger problem.
Hell you even gave me your own ip by using the IPLOOKUP function.
Well may god help you.
Because im coming for you now kid.
See ya soon.
REMOTEWRITTEN/FILEDELETESYSTEM/SYS32

You:Looks Like I Gotta Restore Everything That Damned Codex.

>Deleting System32.










...











.....










......






>System32 Deleted. Initate System Restore.




...






....





...



>System Restored.
>Welcome NEWUSER

>Getting Information Please Wait.....
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 

You: I Know Your There Codex.

Codex: You'd be surely mistaken kid. Im coming for you. Also by the way, here's your private ip. --[193.281.74.39]--

You: Did You Know When You Try To Get My IP It Actually Shows Yours.

Codex: Oh Shit...

Monitor Closed.
   ]]



local idlecp = [[

  <--  BEGINNING DELETION SEQUENCE  -->
>Please note, unknown things may occur as you're going through others files.

>Deletion Beginning.
01101001 01101011 10000000 01110010 11111111 11010001 10111101 00010001 
11111000 00111010 01100010 10000001 11011111 10000011 00010001 00010000 
00100000 01111001 01111100 10110010 11110000 10000101 00101100 00000011 
10010111 01011011 10000010 11110110 01010010 00101101 11010101 10010000 
01001100 00101011 10101111 01101001 10100111 01000101 00110011 11001110 
10010110 10111011 11110111 00111110 11111010 01100101 11110100 01011011 
00111101 10001110 11001010 10010000 10110001 11110100 11101111 00011000 
00000000 01110110 10101101 00100000 11001010 00111000 10011101 00110010 
00110100 00010101 01101010 10101010 10011001 10011101 11000001 10111100 
10110001 11011101 11010100 11111010 11101100 01111100 00000001 01101100 
10010100 00010001 10100110 10110010 01101000 01110000 11111001 11100110 
00100100 10010100 00001100 01111011 01101010 00000011 01100110 01111100 
11010111 00101111 11110000 00101010 00110101 10110000 10100101 00100101 
11110100 01011110 00000100 01000100 11101101 00100101 00000110 01100010 
01110010 00111011 11001100 00000000 11101001 11100000 00111000 00010001 
11101001 11000101 00111000 01110000 11110000 10000100 11000001 11011001 
01001001 11010001 10111001 01101110 10100000 00101001 10100110 01111100 
11101001 11100101 01011110 01010001 11010000 10001000 11010110 01101101 
11111000 01100100 10111100 01001000 01001111 01100001 00100101 00001110 
11101110 01010011 10111000 11001011 10011011 00000010 01110010 11010011 
11011000 10101110 01000110 01010110 11000111 10110001 11111010 01111010 
01010011 10010110 00100100 00110100 01110001 10001110 10010110 00101111 
>KillerDarkness0105 Account Deletion.exe Active
00000010 01110000 01101111 10110010 10111001 10001010 10111000 11000001 
00010111 11111010 00100010 10001100 11011111 10010101 11001010 00000010 
10101101 01100011 00000010 11111101 00101000 11000100 11101111 10111101 
>Account Successfully Deleted.
00000001 00000000 10011100 10000001 01110001 01001110 00100000 00000001 
10000101 11011101 11011000 01011110 01100100 00010000 11110100 10000001 
01110101 01011111 11011111 01111010 11111010 10010101 10111111 00011100 
00010100 11000111 00100111 00100010 01010100 01010000 11101011 01101110 
10100001 10111000 11001011 00010010 10001110 01110011 00110111 10001100 
11111011 01110010 00100110 01101001 11011101 00010011 10000101 01001001 
11010110 01000000 00110111 01111101 10011010 00110001 11110001 00110101 
10011111 11111110 00100101 00011100 01010010 01010111 11100000 10111111 
00100101 10001111 01011110 11000100 10111110 00110111 00000100 11010110 
11010101 11011000 11010011 11010111 11111001 11001010 10011100 00010111 
>Account Successfully Deleted
01111110 10100101 11110100 00011000 11110101 11101101 01111001 11110011 
01010101 11000000 10001000 10001100 11110010 00011000 10111101 11111100 
01010110 10101100 01101011 01000111 01001111 00010100 00010110 11101110 
01011001 00010110 10111011 01111110 11111001 01101000 11001110 10000011 
01010101 10010111 10110010 00100011 00100010 00011010 10000101 00011110 
01110011 10111110 00000101 10110111 01101101 10001111 10000010 11100000 
01001011 11111111 11111100 00100010 11101101 10010000 01011110 00111111 
11010001 10110000 11101101 01101100 10000111 10100111 11110010 11010000 
00100110 01101011 01001100 00010110 10000000 10000111 11100000 11101011 
>FuntimeArtic Account Deletion.exe Active
11000011 10001111 01111011 00011001 11011011 01010001 01010101 11101101 
>Error
>Unable To Read Data.
01101001 01101011 10000000 01110010 11111111 11010001 10111101 00010001 
11111000 00111010 01100010 10000001 11011111 10000011 00010001 00010000 
00100000 01111001 01111100 10110010 11110000 10000101 00101100 00000011 
10010111 01011011 10000010 11110110 01010010 00101101 11010101 10010000 
01001100 00101011 10101111 01101001 10100111 01000101 00110011 11001110 
10010110 10111011 11110111 00111110 11111010 01100101 11110100 01011011 
>Delete TroubleShoot
01101001 01101011 10000000 01110010 11111111 11010001 10111101 00010001 
11111000 00111010 01100010 10000001 11011111 10000011 00010001 00010000 
00100000 01111001 01111100 10110010 11110000 10000101 00101100 00000011 
10010111 01011011 10000010 11110110 01010010 00101101 11010101 10010000 
01001100 00101011 10101111 01101001 10100111 01000101 00110011 11001110 
10010110 10111011 11110111 00111110 11111010 01100101 11110100 01011011 
>Deletion Success
10111110 11001100 00110011 01111100 11111110 00100100 01011101 10100010 
00101011 10110001 10000010 01100110 01110001 10100110 00011011 00000000 
01111111 01001110 00001101 10001100 10110110 01001010 01011101 01010011 
01000110 01100010 00101101 11010110 00100010 00111000 11100000 10010000 
01000010 10001010 11010101 00010010 00110100 00101000 01000111 01101101 
01101011 10011111 00011110 10111100 00100010 00011100 10110110 10000001 
11110111 00111100 10101001 11001111 11001001 01011101 11110100 10101111 
10001100 01111101 11000010 10100111 10001110 11011100 11011111 11101110 
11101001 11001000 10000101 10100100 01110100 00110100 00001111 11001110 
00000001 10111100 00010101 01111010 01110111 00001001 01010011 00110111 
01111100 11101100 00000101 10111011 10011000 01001010 10101100 10100110 
00000011 00000010 11001110 01010010 10101010 01011110 00000101 00100100 
11010001 00101110 00111010 01000000 00110001 01101111 11100100 11100100 
10101110 00000100 11110110 00001101 01100100 00011110 00100010 00110011 
10011000 01101001 10001100 11101111 01110111 00100111 00000001 10100110 
11001111 00101111 10110110 10001000 10011010 10100100 10100100 01110111 
>MonolithicDivinity Account Deletion.exe Active
00000010 01110000 01101111 10110010 10111001 10001010 10111000 11000001 
00010111 11111010 00100010 10001100 11011111 10010101 11001010 00000010 
10101101 01100011 00000010 11111101 00101000 11000100 11101111 10111101 
>Account Successfully Deleted.
00000001 00000000 10011100 10000001 01110001 01001110 00100000 00000001 
10000101 11011101 11011000 01011110 01100100 00010000 11110100 10000001 
01110101 01011111 11011111 01111010 11111010 10010101 10111111 00011100 
00010100 11000111 00100111 00100010 01010100 01010000 11101011 01101110 
10100001 10111000 11001011 00010010 10001110 01110011 00110111 10001100 
11111011 01110010 00100110 01101001 11011101 00010011 10000101 01001001 
10001000 00010010 10011100 11100100 01101011 00110111 00111001 00001110 
01100010 10010111 01010010 00000111 00000001 10011100 00000001 11100111 
00001110 01010110 11011000 10100011 01011101 01111101 00000000 10110101 
01111001 00110001 00001111 01010010 11111011 01010100 11000011 11111110 
01100010 10100111 01010100 11100011 10000100 00111110 11010001 00000111 
01000111 01101001 10111010 00100111 00111000 00101110 10101111 00011100 
01111100 11000100 11010011 00101100 01110010 01001011 10010010 00000000 
10000000 11100000 10101011 11010111 00010000 01000001 10001010 11000000 
11010000 00101010 00001111 10100000 00000000 10001000 00010101 10110001 
10101001 01011111 10001100 00110101 01010000 10011000 10011111 10100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111 
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
>Nebula_Zorua Account Deletion.exe Active...
>Error Unable To Find Account.
>Restarting...
>Unable To Restart.
>Unknown Chat Detected.
>Enter? Y/N
>Y
>Connecting To Chat....
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111 
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
Connected - 4
>You : What the hell kind of technology is this...

>The Broken Angel : You're close my little hacker, but still so far.

>Zelphix : You'll have to try harder.

>You : Who in the hell are you two.

>The Broken Angel & Zelphix : Destroyed figures.

>You : What about your "other friend" in here?

>Nᴉl : ˙sn oʇ sƃuolǝq plɹoʍ sᴉɥ┴
˙noʎ ɹoɟ ƃuᴉɯoɔ ǝɹ,ǝʍ ʇnq
˙˙˙ǝɯ puɐʇsɹǝpun oʇ ǝlqɐ ǝq ʇ,uoʍ ʎlɹɐǝlɔ no⅄

>You : Upside Down Text Ok Fine I Wont TroubleShoot This One.

10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111 
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 

>Chat Disconnected

>You : Damnit.

11110110 00101010 00011001 00100111 01111011 00101111 01001001 10100001 
11101111 01111001 11011000 10000001 01000100 10011111 10110010 10001011 
00000101 01101011 00001010 10011001 11011101 00010010 11000011 11110011 
01100011 01110010 00100000 00001110 10001100 00101010 10001011 00100010 
10011111 10001000 10001010 10110111 11011111 01001101 00011101 00101101 
11011111 10110001 10101111 01101110 11000010 01001000 00010110 00101101 
11111111 10000011 10010001 10110100 11000101 10111000 01111011 10101000 
01011011 11101110 01101001 00101111 11110101 11011000 01111111 01000110 
01111110 11110100 10010010 00011110 11011010 00110000 00100011 10011100 
01000001 10000111 11001101 01100101 01111110 11101010 11110100 00101010 
11010100 00001001 11110010 11110010 11111011 10111101 11100110 11001001 
11001100 11101100 10110111 11100010 10000111 01110010 11100110 00010111 
10010101 11110101 10100001 00110000 10101010 00011010 00001111 11110110 
01001111 10101001 10010011 10111101 00001100 10100000 01100101 01000000 
10111000 11001101 11111001 00000100 01110111 10001100 01001101 11000011 
00111010 00101010 10100110 01100101 01010010 11111010 11000011 10111110 
01000100 00001011 11101100 11000100 01101010 01101011 00111001 01000101 
01100010 10010100 00101001 11001001 11011111 01100111 11000100 00101000 
00100001 11110011 11100000 01100010 10010010 00101000 11011111 11110011 
00011011 01011110 00111101 01101110 01011101 01000010 01011110 10100101 
01100001 01010000 10001100 11100101 10010100 10011001 11010000 10001100 
10110110 00000111 01000000 11111111 00000110 10110100 11011001 01001110 
01101011 11100011 11011101 10111000 11001011 01101111 01010101 10011001 
10111000 11110001 00110101 11010011 01001011 01000010 01001100 10110010 
00101011 01101011 10101100 11100100 10001011 10000111 00110101 10101000 
01001111 00000101 01010101 01101101 01010010 00101011 01000101 00101011 
01100010 01000110 10111110 10001001 11100100 10101101 10111110 10001111 
00101000 10111001 10001101 11100111 11100000 01111100 10000111 10101010 
11011000 10011101 01011010 00101001 01010100 01101111 10101011 00010001 
10100100 00101111 00110000 01011011 00111011 00001011 00100110 00100000 
11111100 01101111 10001100 11011101 11011100 10111110 00110110 01000000 
11000100 11000110 01111001 11101010 01111101 10110011 11101011 10011111 
10111001 00110010 00100110 11111001 11110101 11101100 10100111 01010000 
00111010 11000111 01001001 01010011 00100110 01000111 11000111 01000100 
00100101 00100001 01100100 00111010 11100000 01100101 11110111 10100111 
01001101 10101010 00101110 10100111 11100011 11000100 10100100 01001010 
01100000 00111101 00111101 11100110 00111011 00110101 01001101 10010110 
00011100 10101111 11010101 10100001 10000110 10010001 11101011 01110000 
>Salvo_Starly Account Deletion.exe Active
01100000 00110010 11010001 10001001 10010100 10011010 11010100 00001101 
11111111 00001000 11010011 11100001 00001011 10011110 01000111 11001001 
11110011 11011111 01100001 11001110 10000000 10001101 11101111 00011001 
10011100 11110000 00001100 11011101 00011011 00010110 11110001 01011011 
10000000 10100110 11101111 11111100 11011001 11010010 11111000 01001111 
>Connecting To Furaffinity....
01001111 00110101 01101110 00000001 11011110 01011100 01000100 11011010 
01111000 10110011 01000111 11100110 10100010 00111111 00010010 11011000 
>You : Hold on, WHAT?!
01111101 00101101 11101100 10101101 10001100 11101011 11100111 01110111 
00010111 01101011 01110110 00001111 10101101 01000110 01010111 00000001
10001000 01110100 00110011 10101010 01100100 10111010 01100100 10111010 
>You : Did the account just redirect me to this?!
01100010 11001000 01000100 11101001 11011110 01111110 11010010 11110101 
01111100 10110110 10101110 01000000 00111100 11001110 11000011 01110100 
11100111 11011001 01001001 11010001 10001111 01110101 00001110 00011000 
>Successfully Connected.
>You : Shit..
10001000 01110100 00110011 10101010 01100100 10111010 01100100 10111010 
01100111 01000111 00011101 01111111 01001111 00010101 11010110 11100111 
01100010 11001000 01000100 11101001 11011110 01111110 11010010 11110101 
01111100 10110110 10101110 01000000 00111100 11001110 11000011 01110100 
11100111 11011001 01001001 11010001 10001111 01110101 00001110 00011000 
01101101 10001001 11100010 01000110 00111110 11001010 10001010 10001010 
00011001 10110010 00010110 11011100 11100110 10001001 11010011 10110111 
11101100 11110001 01000110 01110101 00111011 01111000 10111010 01100011 
>delta1035 Account Deletion.exe Active
10010010 10011100 00000110 11000101 00111100 00010100 10001110 01000111 
00001101 01101011 11001011 01110101 01000011 01101010 10111000 00100110 
>Error Line 531 - "What a shitty hacker you are my friend."
00000110 10111001 10001110 10110111 11011011 10101000 11000111 10010110 
10111000 11011000 11010101 01000101 11101010 01111111 11100110 01010011
>Error Proccessed

>Error Found

>Error Executed And Fixed

>Deletion Successful
01010110 11010100 01000110 11100100 11110111 11001110 11111000 00010101 
10111111 01110100 10011011 11101110 01001101 01010011 01000100 10110100 
01111011 11000011 10110110 01100011 11111011 11000011 01000101 01010111 
01011100 10101101 11001010 10110000 11101101 10000101 10000110 00100111 
11010101 10101010 10101001 00001011 11101000 01101000 01011011 11011111 
00001001 10000011 11110001 10010111 01111111 01010010 00001100 01000000 
01111100 11001000 00010010 00101000 11111100 00111110 00000100 11100011 
01111100 00010100 10010010 00111001 01111011 00010000 11100111 01110110 
11111011 01011100 01100100 01110100 11110101 11110100 11001000 10100100 
>Zuu_Roku Account Deletion.exe Active
10000100 10010011 10111001 00000100 11010111 10011000 11001110 11001101 
11000110 10100100 11101011 11111011 11001001 01100111 10011001 11100010 
>Error
10111101 00100000 11111101 01011000 11001101 00111000 10111110 10001010 
00111111 01000000 11111100 11000001 00010100 11001000 01000001 11100001 
10011011 00000001 10010110 10101111 10101100 11000000 00110101 00110000 
00110010 00001001 01110100 10010010 00101001 01010001 01011110 11011110 
>Unable To Detect Password.
01101110 11010011 10100110 11100101 10111000 11101101 01000011 01011000 
11100011 00100000 10001110 10000001 10100001 10010000 10111110 10100011 
00111101 01101100 01100100 10011111 10100001 11110010 01111011 00000010 
>Reason(s) Found : NANO.EXE
00001001 01111110 01101001 10101101 10001100 01001111 01110001 00110011 
00100011 01110001 01000000 00110101 11011000 11101000 10010111 01010001
>NANO Executed
01000101 10110110 10010000 00111011 10010010 11101000 11001001 10010111 
00100111 11000110 10100010 01010011 10111010 11000010 01110111 00101110 
>Deletion Successful
01011101 11110010 10010001 01001001 01011100 11110110 10000001 11110010 
10011010 11011101 11011111 01100111 10001011 00111001 00110010 11010001 
01011000 01110100 00011100 11011011 00000100 11000110 11111011 10000001 
01101001 11011100 11100111 11110001 01001101 01111000 11110101 00101111 
11001101 11011100 01010110 10100011 01111000 00010100 00001101 01100001 
01111100 11110110 10100001 10111111 11001110 10101000 11100010 11011011 
11110111 01110110 01001011 11111111 00011111 11001100 00101101 10110010 
00000010 10010110 11110000 01110011 11110111 00101111 10110111 01011101 
01001001 01111111 10001101 00100000 10110010 01110111 00110111 11010111 
00101101 10110101 00001000 10011110 10001100 00110001 10100001 00001010 
01101100 11110001 11001000 01101000 01000110 00001001 10100101 01111100 
10110110 01010110 00110100 10110111 10000001 00110011 01110100 00011010 
10011011 00011010 10011110 00001111 01111111 10000100 00011100 10100011 
11000010 00010011 11010000 10000111 00111110 01000000 00001100 11101100 
10100100 01111111 11110101 10001010 00000000 10100001 11111110 00101000 
11011110 00110101 00101110 00101000 10110101 00111100 11100011 00000001 
01011100 11010101 10110010 01101101 10110000 10101100 00111110 11011101 
01110011 01011111 00011010 00010010 11010100 11100011 11111111 10100011 
11100000 00000000 11001110 10110110 00110101 10110010 01101000 10011000 
01111101 10110000 11011011 00100100 00100110 00111011 10101111 10100001 
10101001 10001010 11001000 10011001 10001100 10000011 11000000 00101100 
10111101 10101011 11100011 01000111 01100000 10001000 11111110 10111111 
01100011 10111010 00010111 10010101 10001000 00001011 01101101 10110010 
10001001 11111101 11011100 01111101 10011111 11000000 01111100 10100110 
00001110 10101010 00101100 11000110 11001000 11110011 11101111 11100010 
00110101 00000110 11001110 10110011 10010001 10100011 00001000 10010110 
00100110 01110101 11000010 00101010 00011100 01011111 00000001 01110101 
00100111 11110101 10000011 01100110 11000000 01100001 11010011 11001001 
01010101 11101101 10011001 11100111 01000111 00111011 01101001 01011010 
11110001 00000011 11100011 10110010 11010100 00100101 01111011 01001100 
10010101 01111101 11000011 00011111 10100001 00011110 00001010 01010100 
10100000 00101100 11011111 11111011 11101110 01000110 10110111 01110001 
10100111 00110010 01011100 10101100 11101000 10011011 11100101 00110010 
11000100 00111000 00100011 01101001 11001010 01111011 11010101 11110100 
01011100 00111111 01010000 11010000 01010111 00010101 01110101 11110100 
10100000 11111100 01010101 11011011 00010111 10101011 01010000 10011000 
10110100 00100100 01100111 00100101 11110011 10000101 01010011 11110110 
00111001 10011001 10011000 01001111 11110011 11111100 10010011 11011010 
01110110 11001010 01010100 10000100 11111001 00100010 10010010 00011110 
01111101 11001100 01110100 11011000 01110101 11011111 10110111 10001001 
00000111 00000001 11100101 10010101 11111100 10111001 11010111 11110100 
11010101 00001101 01111100 10011001 01110101 10010101 10111110 10111111 
01011110 01010110 10101001 10000101 11000001 11111100 00101100 01010111 
01111010 01110110 01101111 10010010 10001110 00101011 00101001 11101101 
11011011 01110101 11000010 10110100 10110010 11101011 00011110 00010111 
10111000 01010001 10010100 01011001 00100111 00100011 00110111 10011101 
00011101 10001101 01111100 00001000 01001101 11011001 00111101 10011001 
11010100 01110111 00001010 10010110 00100000 10010101 01011100 01001000 
11101011 10110111 01110011 10011110 01110110 11110111 01001000 11011011 
00110100 00101001 10100011 11101000 00010011 01111000 10001010 11010110 
11000011 01100111 10011110 10100000 10111100 00011100 00101101 10111010 
10110110 01100001 10001111 10101010 00000010 10100001 01001111 01001011 
01000111 11110010 01100110 00101110 11101100 11001100 10100000 00100011 
00100101 01010011 11000100 01010001 01101110 01000100 01000110 10000101 
00111011 11000101 11101110 11000111 00110001 11101000 00000011 00010100 
10001001 01111110 01011000 11100000 00011110 11110101 01110001 10010100 
01110001 11011011 11111101 00011000 11100110 01011100 00011000 10001011 
10001001 11101111 00010111 00010011 10111111 01011000 00110111 10101110 
01001110 00010000 01010001 00000001 00110110 01000000 11010001 11111000 
01000001 00111011 11101100 10011111 10001001 10010111 10000100 00111011 
01101110 11101101 01101011 00100110 10011000 00111110 11010100 11011111 
01001100 10101110 01010011 00100100 00110010 11011010 11011111 01000101 
00100001 11111001 10110000 01001111 00010111 00111100 11011100 01011000 
10000100 01110000 00011011 00001001 11111110 10101001 10111001 00000100 
01001010 11110111 01110011 10011101 00010000 00111111 00010101 01110001 
10111100 11001111 11010000 11110110 11100100 11011010 00110101 10110111 
01011110 00011110 01010100 11010100 01011010 10100110 10111111 11101101 
11001010 01100101 11110010 00111011 01000010 01100010 10101001 00000010 
11000001 00101011 00111101 01100101 00100100 10011001 00100100 10000010 
10000110 01100101 10111001 10110110 00010011 10100000 01100101 10001001 
11100001 11101001 11010100 00101100 11001110 00001001 10001000 00010111 
01110010 01101110 01001011 01001000 00111111 01011000 01110101 00111011 
00010111 00010000 00110111 11111000 11011100 10101000 10111111 10110011 
00001111 10000110 10010011 00101110 10001100 11011101 11000101 11000010 
10011010 11100000 10110101 01000100 01001100 10101110 00111110 10111110 
10000010 11111010 01001101 01001110 11100101 11000011 00011010 00100101 
10000011 11101111 01011101 00010011 10111101 00100000 00101001 10011100 
01101001 01001001 00010001 01000011 11001111 01010000 00100010 11101011 
01110101 11000101 00000110 11011011 01101110 10001100 11010001 00100010 
01010101 00010000 11001001 10000110 00001011 00010110 11100000 00100110 
10010000 11010110 01001010 10101111 11101100 11011100 11110110 00111100 
10001010 00100011 00000011 11001011 11001101 01001001 00001010 00000100 
00111010 11010101 01010011 11111011 00100101 11100011 11100100 10000111 
11011100 01110011 10111011 00011001 10001111 11101010 10100110 11111100 
00101111 00001100 11101101 00010000 00100010 11000010 11111010 01000010 
10111001 01110111 10110101 00111100 01101110 11101111 11000011 11101101 
10101000 00001100 11000011 01010110 01010000 11101000 00001001 00101000 
10110110 00001010 11111111 01111001 11010000 00110100 10000101 11110100 
11011001 10110111 01110001 11101111 10110000 10011111 00101010 11111100 
01011010 10001111 01101011 10101000 10111010 10011111 11101001 00101100 
11011100 10010011 01010100 00000001 00110000 10100100 10011111 00101101 
11010101 11000101 01110101 00001011 11101001 00111101 01000010 00001011 
00100110 00010111 01101100 11001100 00000001 00111100 01000101 01101100 
00110001 01010111 00101010 10001111 10000111 11001100 11101101 01011000 
01100101 11100001 00010000 00000001 10101100 11000100 01000001 11111000 
10101101 11000101 10000010 11111000 10110111 00001111 00110011 10101100 
01010100 00010010 01001111 00011111 01010000 11011001 11100110 11101001 
00001010 10110010 11101000 01110100 10010010 10100000 00110111 10010010 
10000101 10010100 10000111 01111010 01010110 10110101 10011000 10101001 
10010101 00110000 10001010 11000111 10010000 00101001 01010001 11010110 
10111000 01111011 11011011 00001000 10000011 00010100 01010000 01011000 
10010100 10011010 01100010 11010111 00000001 01111110 11110001 10011101 
11100001 11011010 11000110 00110110 10100010 10101001 01011001 11001010 
00110001 01110111 10101010 11000111 10111000 11101001 11001100 01101010 
00010001 00110010 11101001 01001110 10000000 01101001 00001011 00111100 
00000000 00110010 10010011 11110000 10000100 11000101 11011000 01000111 
01000100 10000010 01101010 11000000 10000110 01111111 10110111 10011010 
11101100 10101110 01010001 10010010 11011010 10111110 00001000 01101111 
11011010 11111100 11111110 00100101 10010010 01111111 10011101 01111110 
00110010 10101101 10010111 11011010 01001101 01001100 10010000 00011100 
10001101 01011010 01011000 01001011 11010110 11010111 01001011 10010010 
10011100 10001010 11011000 01101110 10011101 10011101 00101110 01110111 
00111010 10100100 00001011 00001010 10010001 01001101 10110001 11100101 
11000110 11000111 10001001 01101111 01110001 01000111 10100000 01100111 
01101111 01111100 11010001 00001100 01100101 01011000 01011000 01110100 
10100100 11011011 10100010 11010010 00111000 11111001 00110011 10100110 
10110111 00010100 00001011 10011100 00001010 11011101 01100010 01001111 
01111001 10000111 11011100 01001101 00011110 11011011 11010011 10111101 
10101111 10010011 11100000 00110101 11011001 10110011 10001111 01111010 
01110110 10111011 11010011 11110110 00010000 01010101 00110000 10110011 
11101100 11011101 01111111 00101000 00010001 00010001 10010001 01101101 
00100100 11011001 11010010 11100010 10110010 01010011 01111010 10111010 
11000010 10111010 10011000 10100101 00100111 10111001 11010000 10100101 
10001100 10100010 11110110 01100110 01100100 01001000 00001011 11010110 
00110111 00100010 00110000 01111001 00001011 00010000 11111001 10111110 
11110111 00101101 01001110 00001100 10001001 10111010 00010010 10101101 
01110000 00011000 11000001 10101011 01010110 00101011 11001101 10000101 
01101101 01101011 01100011 01110110 01101101 11011000 00011100 10100000 
11110010 00000001 11100001 11100101 01001110 01000100 00110110 10011001 
00010000 11101110 11100110 11010010 01011101 10000000 01100011 11100011 
00011001 00111010 11010011 10000111 00110000 00111100 00110001 00110000 
01100110 11010110 11011010 00101111 11110011 10111110 01001010 11000101 
10010001 01001110 11001000 11000111 10000100 00011000 11001110 01001001 
11100001 01011000 10010001 01010010 00000001 01010111 10011011 10010110 
10001111 00000111 11011101 10101010 00111101 11101101 10010001 10110010 
10111011 01110011 10011010 01010000 11110011 00001000 10001010 01110001 
01111001 01011000 00100101 01001001 00011101 11010001 11010111 10000010 
11100000 00001101 00001110 11110011 11100101 01101101 00000000 01011101 
01100110 11010111 10111110 00101011 11111011 01100100 00111011 10110000 
11000010 00011011 01101110 11000110 11011100 11011000 01001100 00011000 
01011001 10000001 00000010 01001101 01001110 01110001 11110100 11001111 
01001001 11111000 00110001 11011111 10100100 00111110 10100101 00000011 
01001100 10100110 01100111 01111110 00010011 01010111 00110001 10011101 
11100000 11010111 01000110 10111110 01110100 01001100 11110110 01010001 
00110101 10100101 01011010 10001011 11001010 11000111 10000010 11110100 
10110101 01110011 11101100 11001011 10000101 01000001 01111001 00010100 
10100011 11000010 00101001 11111010 01011110 00110001 01111000 10001011 
00101100 00110010 10110100 00000001 00100110 00110001 00110111 01010010 
10011111 00010010 10001000 11101100 01101111 10100100 00011011 01011101 
00010101 11000111 01100111 00010101 11000111 10101011 10110110 01101010 
01011011 11111011 00111011 01110010 10101000 10011110 01011000 01101011 
11111010 11100101 01110011 00110011 10000010 00010111 01000010 10010110 
10111110 10111100 10101010 00100011 10111110 00111011 11010000 10010010 
10000000 10110110 01000011 11000000 11000010 01111001 01000001 00100100 
10111111 10001101 11010110 00001100 01010100 00010110 11110000 00000000 
11101000 00001001 00010000 01110010 11111011 10110100 10000001 00000110 
00110101 00101011 00011111 00001000 10001100 00100101 11111110 10011110 
10100111 01101001 00110001 11010101 00011101 10001111 00010110 11111011 
00111111 10000000 10111001 01000000 01111001 01100011 00000110 01010101 
10100111 11101000 11000100 11110010 01001110 00011101 00111010 01110100 
00111000 00010100 11100000 00011110 00110010 01011101 01000100 10010111 
00000101 01110011 00110000 10101110 11111110 11011001 11111110 01101011 
01000100 10100111 01110011 00111100 01011100 10000000 10000110 01110110 
01101101 11011000 01000011 01111000 10111100 00101101 01111111 10110111 
11000010 10000000 11110110 00010101 01000110 01110111 01110101 00001100 
11111010 10101100 11111011 11011110 10000111 00101001 01000001 10001000 
11110010 01101001 00100111 11011001 01000101 00010001 00110111 10110011 
11100000 00010101 10000111 10100100 11101011 00110011 00001011 11000000 
11010011 00011100 01101001 00000110 01101011 10110000 01110011 00110000 
11111011 11000100 01000111 11011101 10100001 11111000 11101010 01111000 
01110000 11001011 11111001 00101100 11000101 10010110 11110100 01110110 
11101000 00100011 11101111 10000110 10010000 01011010 11011111 11110110 
01101010 00111001 00011100 00001100 11100000 10110000 00000111 01000110 
10101100 10101110 01101000 10010110 00101111 00010111 11001100 01101101 
10110011 01001101 01110110 01110110 10111010 00100101 10100000 11011111 
11111010 01101000 00111110 00101100 10001011 00101111 00001011 11010011 
11111101 01010000 01001100 01100001 00100100 10101110 00010000 00001101 
01100001 11010100 10111010 10101010 10111010 01001000 10101000 10100011 
10111001 10100111 10001000 00001011 01100100 11011000 00100000 10010001 
00001011 10011000 01100111 00111001 10010110 11001100 01011001 01010101 
00011101 10110010 10000100 00111111 00010011 10100101 01110001 00100001 
10000001 10011000 00100110 11001111 01101011 01110001 10110001 11100000 
11100110 10010101 00111010 11001101 00101100 11010100 10110100 11010111 
10101001 10001111 00011100 10000000 10000101 01111100 01101001 01011000 
10100100 01010101 10100111 01001010 01001010 10001111 11111100 00001101 
01101010 11000011 00110101 10010110 10000100 01111101 01110011 00110001 
00010111 00101011 00010001 11011011 10100011 10101010 10100001 00000001 
01110010 11101101 00110000 00001001 00111101 11101100 10001100 01001101 
01000001 10111011 10010001 00100110 10001010 00010010 10111000 00000101 
11001011 01100010 10010000 01011011 10100100 11000011 00011011 01010111 
01010101 00010110 11111011 01100110 00100101 10011110 01000110 00111000 
00001010 01110000 00110111 01100000 10010101 01001100 00001110 10000111 
11001001 11111111 11000000 11111100 11101101 00100101 10111110 10011100 
10001100 00100100 10100101 01001001 00100100 11010011 11000001 00100001 
01011100 11110010 00001110 11111110 11011001 10001011 10110000 00001101 
01000011 01110110 11011101 10101000 00111000 11110011 01110010 00110110 
00111101 11110110 10101001 10100010 01111100 01011010 01110000 01011011 
10010101 10100111 00110000 11010011 00001101 00101110 11101011 01110111 
01100101 10010101 00111110 00110000 10110110 00011110 11100010 11111000 
11111111 11110100 11001011 10000011 10000110 10000001 10100000 11110010 
11011101 10101100 01110001 00101001 11111111 00000111 01010001 00100010 
00001011 11001000 00010011 01100100 01011011 11011010 00001011 01000101 
00000000 10001101 11110011 10100010 01000010 00001001 00011011 11010000 
11111001 00011001 10110100 10001001 10010101 01101100 01100111 11100001 
01101001 00001000 10000010 00011011 10100010 00110010 01011010 11110111 
00101110 11010011 01010101 10101011 01010110 11011101 00101011 11101110 
10110011 10001001 11010011 01101011 01111101 10101101 10001101 10000010 
11100010 11011011 11111010 10110110 01110111 00000111 01111101 11101110 
10000111 01011000 11111111 10110010 10111000 10111111 00001000 10001110 
10110000 00011111 00101100 10000010 01010101 00000111 01001110 01001101 
00001001 01011110 00110100 01101000 10100000 11011110 11000010 10111000 
01111100 01110100 00100110 01000001 10011111 01101000 01101010 00000100 
01000001 00111111 00101011 10000010 00110100 00010101 01100001 10100101 
11111001 01100110 10000110 10101111 00010101 00011011 11101010 10011011 
01011010 10011001 10111011 01000010 10001100 11001111 01010011 00111110 
01011010 00011011 11111110 00001101 11101011 10010100 10111101 10111000 
00100001 11101111 01000001 11011111 00001101 00000110 11101000 01010000 
10110100 11000010 11111010 01001101 10101001 01000011 10100010 11000010 
10000011 10010111 11111010 00111011 10110100 11010111 10110010 00101101 
10011101 11100001 11100000 01001110 01001100 01111010 11010101 01001011 
11011001 00111001 01100111 10111010 10110111 00111001 01010001 10110000 
01111010 11110010 10111110 11111011 10001110 10100111 10100110 00111000 
10011110 10100000 10011110 11000111 00111100 10100010 10110111 00010011 
10001011 00011010 10000111 01100011 01110101 01000001 00001011 11110011 
01110111 10000001 11111101 00010100 11001111 00111010 10000010 00110000 
11110100 00001001 10110000 10011001 11010111 10000100 11111110 10001111 
00010111 00010001 10001010 01001011 11100001 01100101 01000000 00000001 
10101010 10100001 00011110 00010011 11010110 11111011 10100000 10111110 
00000110 01111000 11111011 11101001 00110010 00011011 00011010 10001010 
11110100 10110101 01010100 11111000 11100100 00110000 11110111 01101011 
01000000 00111010 00011010 10110111 00001100 10110001 10101001 10001111 
10101100 00000011 00101100 11010010 11101101 00001111 10110001 00110001 
10101011 11001011 10110011 11010010 10010011 10101010 00011111 00010100 
00000111 01010001 01001101 00000110 11001100 10100011 10010110 01001011 
10101010 10100011 00011100 00101110 10001000 01011011 10110101 01000110 
10001100 01110100 00110000 01000000 00011101 11110111 01110010 00000110 
01011111 11001010 00001101 00111000 10101110 10001011 00100001 01101010 
11001110 01010101 11010101 00001100 11001101 00010101 11000010 11010111 
11011101 01100011 00000010 10000101 00011010 00001001 10011010 01010001 
10110110 11110011 00001000 10101010 11101110 11000101 11010011 00101001 
10001100 01110000 01100001 00010001 01011000 10000111 11010001 00101000 
00111010 10001000 01000011 10010100 00011111 01101001 00011101 11000110 
01011101 10111001 01000011 10100010 01000111 01101111 11011101 11011100 
10001010 10101011 01001001 10001100 10111110 00101001 01110010 10000100 
11011101 00011011 00110010 01100111 00111111 01010011 01100101 11100110 
10111011 00001011 01001010 01000101 01011000 00101011 10100100 01110001 
01001111 11000000 11100110 11111110 00100000 10111100 00101000 00011011 
10011000 00010001 11010010 11010011 00101011 11100101 00011011 11111111 
01011011 10010110 11101100 11100111 01010000 00111010 11010101 00100011 
10100101 11100010 01001010 00011110 00011001 01110101 01110011 10011010 
00001001 11011010 01100100 01111101 00101101 11101001 01111010 01011011 
11111111 00001000 01001101 11001001 10111011 01010010 11001001 10011000 
00110001 01110111 11011000 11001001 11001101 10100011 01000010 00000111 
00000110 11111111 01111111 01001011 01101000 11000011 01111101 10000110 
10101001 10001110 01010001 11001110 01100100 10110010 00010011 11101100 
10001000 01011101 01110000 00010110 11000111 00111110 01101111 00111010 
11000111 10111111 10011110 10011001 10001110 01011000 11110101 01101001 
11101101 01001110 01010100 01001010 11100001 01100010 00001100 01101100 
00011101 00100001 10011001 00000101 00111001 00000000 10101100 01111111 
10110000 11010100 00011010 01010011 10100100 01111100 00001100 01010101 
01101010 01000110 00001001 00000111 10100111 11111100 01001010 11111010  
]]

local MainCP = [[
		// Red Mamba Terminal Active \\

--This Is A Very Dangerous Terminal It Is Reccomended To Have Good Protection
-Enter Y/N
-Y

|| Beginning Hyjack Sequence ||

Dekim: This is Not The Best Idea But I Will Let Your Through

You: Thanks.

10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111 
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111  
>Open Place Found: Void Script Builder.exe
>Termination Proccessing
>Error
>Reason(s) Found:Tusk
>Failure: Too fat
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
				Hey There Skid
			It Seems Your Trying To Terminate My Site
			Sorry But I Cannot Allow That
		I Have Injected Your Systems With Malware
			Good Luck C:
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
>Systems Check:Malware Found
>Name:FreeVirus.exe
>Terminated
>Chat Found
>Connect Y/N
>Y
You:Free Virus Huh Thats Not The Best Idea.

Site Holder:Why Is That?

You:I Recoded It Back To You.

Site Holder:Oh GO- 		

>Chat Disconected Due To User Leaving Unexpectedly
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
>Eror-

>RED DEATH.EXE FOUND
>SYS32 DELETED

...

..

.


..


.

>Monitor Restored

>System Restored

You:Well Shit.

11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111 
00001111 10001100 00010011 10101011 10100101 10011010 01111011 00011111 
11110111 00000001 10001000 11000100 01010001 01110001 11111110 00100101 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101010 00011110 00011000 10001100 00001000 01111000 00010100 01101001 
10101101 11111110 11100110 11110000 01011011 11111110 01001101 01101101 
10010100 01011000 00000100 11100111 00011101 10110001 11010100 11100000 
11100000 10010100 01011000 01011011 01000010 11101001 01101010 01100010 
00010100 00101011 00101101 11101010 11001000 00010001 10110101 11111111
11000101 11100000 11100000 10100111 11010100 10000000 10010100 01010001 
11110101 01000010 10000110 01001101 10011110 00111011 01010111 11011000 
11110000 00100101 01011001 01011010 11110001 00010111 11111001 11000010 
10110001 11010101 10110000 10111010 00101110 11010000 10111011 11100001 
00000001 01010101 10111100 00111001 01010010 11010010 01100010 00111101 
11110100 10101100 01010111 00001001 10011111 00011000 01011001 11010101 
00101010 00101011 00111100 11100100 10011000 10011011 00000100 01110111
>Open Proccess Found:

>Roblox.exe

>Terminate Y/N
>Y

Termination Successful

You: Dekim I Think Im Done With The Red Mamba Terminal.

Dekim:Ok I Will Disconect You 

>Red Mamba Terminal Disconeccted			
]]

hum.JumpPower = 55
hum.Animator.Parent = nil
----------------------------------------------------------------------------------
--Origianlly was going to be a screen in the middle :depressed:
local Screen1 = IT("Part")
Screen1.BrickColor = BrickC("Really black")
Screen1.Material = "Glass"
Screen1.Color = Color3.new(0,0,0)
Screen1.Transparency = 0.3
Screen1.Size = Vector3.new(6, 4, 0)
Screen1.CanCollide = false
Screen1.Locked = true
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Bacon MonitorAccessory"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = Screen1 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(180),0) -- Angles
print("Ran with no errors")
Smooth(Screen1)
local Screen1Weld = IT("Weld")
Screen1Weld.Part0 = root
Screen1Weld.Part1 = Screen1
Screen1Weld.C0 = CF(-0, 3, -5) * angles(0, 0, 0)
Screen1Weld.Parent = Screen1
Screen1.Parent = char

local Screen2 = IT("Part")
Screen2.BrickColor = BrickC("Really black")
Screen2.Material = "Glass"
Screen2.Color = Color3.new(0,0,0)
Screen2.Transparency = 0.3
Screen2.Size = Vector3.new(6, 4, 0)
Screen2.CanCollide = false
Screen2.Locked = true
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Noob MonitorAccessory"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = Screen2 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(180),0) -- Angles
print("Ran with no errors")
Smooth(Screen2)
local Screen2Weld = IT("Weld")
Screen2Weld.Part0 = root
Screen2Weld.Part1 = Screen2
Screen2Weld.C0 = CF(8, 4, -2) * angles(0.1, -0.9, 0)
Screen2Weld.Parent = Screen2
Screen2.Parent = char
----------------------------------------------------------------------------------
local Screen3 = IT("Part")
Screen3.BrickColor = BrickC("Really black")
Screen3.Material = "Glass"
Screen3.Color = Color3.new(0,0,0)
Screen3.Transparency = 0.3
Screen3.Size = Vector3.new(6, 4, 0)
Screen3.CanCollide = false
Screen3.Locked = true
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Dog MonitorAccessory"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = Screen3 -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(180),0) -- Angles
print("Ran with no errors")
Smooth(Screen3)
local Screen3Weld = IT("Weld")
Screen3Weld.Part0 = root
Screen3Weld.Part1 = Screen3
Screen3Weld.C0 = CF(-8, 3, -2) * angles(0.1, 0.9, 0)
Screen3Weld.Parent = Screen3
Screen3.Parent = char
----------------------------------------------------------------------------------
--Credit to Noobygames12 for this Hot gui that I totally stole
local Base = IT("GuiMain")
Base.Parent = plr.PlayerGui
local GUIFrame = IT("Frame")
GUIFrame.Parent = Base
GUIFrame.BackgroundColor3 = Color3.new(255, 255, 255)
GUIFrame.BackgroundTransparency = 1
GUIFrame.BorderColor3 = Color3.new(17, 17, 17)
GUIFrame.Size = UDim2.new(1, 0, 1, 0)
GUIFrame.Position = UDim2.new(0, 0, 0, 0)
local ActualHackerText = Instance.new("TextLabel",GUIFrame)
ActualHackerText.ZIndex = 2
ActualHackerText.Font = "SciFi"
ActualHackerText.BackgroundTransparency = 1
ActualHackerText.BorderSizePixel = 0.65
ActualHackerText.Size = UDim2.new(0.4,0,0.2,0)
ActualHackerText.Position = UDim2.new(0.565, 0, 0.9, 0)
ActualHackerText.TextColor3 = BrickC("Lime green").Color
ActualHackerText.TextStrokeColor3 = BrickC("Really black").Color
ActualHackerText.TextScaled = true
ActualHackerText.TextStrokeTransparency = 0
ActualHackerText.Text = "Hacker X"
ActualHackerText.TextSize = 24
ActualHackerText.Rotation = 1
ActualHackerText.TextXAlignment = "Center"
ActualHackerText.TextYAlignment = "Top"

local FatAssAttacks1 = Instance.new("TextLabel",GUIFrame)
FatAssAttacks1.ZIndex = 2
FatAssAttacks1.Font = "SciFi"
FatAssAttacks1.BackgroundTransparency = 1
FatAssAttacks1.BorderSizePixel = 0.65
FatAssAttacks1.Size = UDim2.new(0.3, 0, 0.1, 0)
FatAssAttacks1.Position = UDim2.new(0.775, 0, 0.7, 0)
FatAssAttacks1.TextColor3 = BrickC("Lime green").Color
FatAssAttacks1.TextStrokeColor3 = BrickC("Really black").Color
FatAssAttacks1.TextScaled = true
FatAssAttacks1.TextStrokeTransparency = 0
FatAssAttacks1.Text = [[
						Q - Relax
						F - Code
						Z - Screen Come / Away
						X - Orbital Strike
						C - EMP
						V - CALAMITY Orb
						]]
FatAssAttacks1.TextSize = 24
FatAssAttacks1.Rotation = 1
FatAssAttacks1.TextXAlignment = "Center"
FatAssAttacks1.TextYAlignment = "Bottom"
-------------------------------------------------------
--End Customization--
-------------------------------------------------------






-------------------------------------------------------
--Start Text Function--
-------------------------------------------------------
function mes(text,texttime)
    if Screen2:FindFirstChild("SurfaceGui")~= nil then
Screen2:FindFirstChild("SurfaceGui"):destroy()
end
local text = text
local SGui = Instance.new("SurfaceGui",Screen2)

SGui.Face = "Back"

SGui.Adornee = Screen2

local hexertextxd = Instance.new("TextBox",SGui)
hexertextxd.Position = UDim2.new(0, 0, 0, 0)
hexertextxd.Size = UDim2.new(0.8, 0, 0.8, 0)
hexertextxd.TextColor3 = Color3.new(0, 1, 0)
hexertextxd.BackgroundTransparency = 1
if Screen == false then
	hexertextxd.TextTransparency = Screen2.Transparency
end
hexertextxd.Font = "Fantasy"
hexertextxd.MultiLine = true
hexertextxd.TextWrapped = true
hexertextxd.TextSize = 34
hexertextxd.TextXAlignment = "Left"
hexertextxd.TextYAlignment = "Top"
hexertextxd.Text = ""
local tm = coroutine.wrap(function()	
for i = 1,string.len(text),1 do
    swait()
	hexertextxd.Text = string.sub(text,texttime,i)
end
wait(3)
for i = 0,6,0.1 do
    swait()
	hexertextxd.TextTransparency = 	hexertextxd.TextTransparency + 0.04
    hexertextxd.Position = UDim2.new(0+0.05*i, 0, 0, 0)
end
SGui:Destroy()
hexertextxd:Destroy()
end)
tm()
end



function mes2(text,texttime)
if Screen3:FindFirstChild("SurfaceGui")~= nil then
	Screen3:FindFirstChild("SurfaceGui"):destroy()
end
local text2 = text
local SGui2 = Instance.new("SurfaceGui",Screen3)
SGui2.Face = "Back"

SGui2.Adornee = Screen3

local hexertextxd2 = Instance.new("TextBox",SGui2)
hexertextxd2.Position = UDim2.new(0, 0, 0, 0)
hexertextxd2.Size = UDim2.new(0.8, 0, 0.8, 0)
hexertextxd2.TextColor3 = Color3.new(0, 1, 0)
hexertextxd2.BackgroundTransparency = 1
hexertextxd2.Font = "Fantasy"
hexertextxd2.MultiLine = true
hexertextxd2.TextWrapped = true
hexertextxd2.TextSize = 34
if Screen == false then
hexertextxd2.TextTransparency = Screen3.Transparency
end
hexertextxd2.TextXAlignment = "Left"
hexertextxd2.TextYAlignment = "Top"
hexertextxd2.Text = "" 
local tm2 =   coroutine.wrap(function()	
for i = 1,string.len(text2),1 do
    swait()
	hexertextxd2.Text = string.sub(text2,1,i)
end
wait(3)
for i = 0,6,0.1 do
    swait()
    hexertextxd2.TextTransparency = 	hexertextxd2.TextTransparency + 0.04
    hexertextxd2.Position = UDim2.new(0+0.05*i, 0, 0, 0)
end
SGui2:Destroy()
hexertextxd2:Destroy()
end)
tm2()
end

function mes3(text,texttime)
    if Screen1:FindFirstChild("SurfaceGui")~= nil then
Screen1:FindFirstChild("SurfaceGui"):destroy()
end
local text3 = text
local SGui3 = Instance.new("SurfaceGui",Screen1)

SGui3.Face = "Back"

SGui3.Adornee = Screen1

local hexertextxd3 = Instance.new("TextBox",SGui3)
hexertextxd3.Position = UDim2.new(0, 0, 0, 0)
hexertextxd3.Size = UDim2.new(0.8, 0, 0.8, 0)
hexertextxd3.TextColor3 = Color3.new(1, 0, 0)
hexertextxd3.BackgroundTransparency = 1
if Screen == false then
	hexertextxd3.TextTransparency = Screen1.Transparency
end
hexertextxd3.Font = "Fantasy"
hexertextxd3.MultiLine = true
hexertextxd3.TextWrapped = true
hexertextxd3.TextSize = 34
hexertextxd3.TextXAlignment = "Left"
hexertextxd3.TextYAlignment = "Top"
hexertextxd3.Text = ""
local tm3 = coroutine.wrap(function()	
for i = 1,string.len(text),1 do
    swait()
	hexertextxd3.Text = string.sub(text,texttime,i)
end
wait(3)
for i = 0,6,0.1 do
    swait()
	hexertextxd3.TextTransparency = 	hexertextxd3.TextTransparency + 0.04
    hexertextxd3.Position = UDim2.new(0+0.05*i, 0, 0, 0)
end
SGui3:Destroy()
hexertextxd3:Destroy()
end)
tm3()
end

-------------------------------------------------------
--End Text Function--
-------------------------------------------------------



-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function AttackTemplate()
	attack = true
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
		neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
	end
	attack = false
end
function Maniac()
	Speed = 0
	Cso("1607788178", hed, 3, 0.9)
	attack = true
	for i = 0, 10, 0.1 do
		swait()
		change = 1.5
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 2)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(0)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 2.5 * Sin(sine / 2)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 2) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 2) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Cos(sine / 2)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.1 * Cos(sine / 2)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(0), Rad(55)), 0.1)
	end
	attack = false
	Speed = 16
end
function ScreenAway()
	attack = true
	Speed = 8
	movelegs = true
	for i = 0, 4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(-55)), 0.1)
	end
  Cso("1184953203", tors, 3, 1)
	for i = 0, 4, 0.1 do
		swait()
		Screen2.Transparency = Screen2.Transparency + 0.03
		Screen3.Transparency = Screen3.Transparency + 0.03
		Screen1.Transparency = Screen1.Transparency + 0.03
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(25)), 0.1)
	end
	Speed = 16
	Screen = false
	movelegs = false
	attack = false
end
function ScreenCome()
	attack = true
	Speed = 8
	movelegs = true
	for i = 0, 4, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(25)), 0.1)
	end
  Cso("1184953775", tors, 3, 1)
	for i = 0, 4, 0.1 do
		swait()
		Screen2.Transparency = Screen2.Transparency - 0.03 
		Screen3.Transparency = Screen3.Transparency - 0.03
		Screen1.Transparency = Screen1.Transparency - 0.03
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(-55)), 0.1)
	end
	Speed = 16
	Screen = true
	movelegs = false
	attack = false
end
function Relax()
	attack = true
	Speed = 0
	Sitt = true
	repeat
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -1.6 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-15), Rad(0), Rad(0)), 0.1)
		neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(25), Rad(0), Rad(5)), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(75), Rad(0), Rad(-5)), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.3* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(75), Rad(0), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.2 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
	until Sitt == false
	Speed = 16
	attack = false
end
function Orb_Strike()
	attack = true
	Speed = 12
	movelegs = true
	    
	mes3([[You : Hey Dekim Call In A Orbital Strike	
		
		Dekim : Rekt, Im Always Above You Ya Know.
	
	
	You : Nice job. Keep doing what your doing.
	
	
	Dekim : Alright.
	
	    ]],1.35)
	
	    
	mes2([[You : Bout to rekt some skids.
	
	
	??? : xd we should do this together sometime
	
	
	You : same
	
	    ]],1.35)
	
	mes("Activating: Orbital Air Strike.",0.05)
  	local CombineVoice = Cso("273957502", Screen3, 1, 1)
  		repeat
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(-55)), 0.1)
		until CombineVoice.Playing == false
		attack = false
		Speed = 16
		movelegs = false
		mes("Orbital Air Strike Launched.",0.05)
		coroutine.resume(coroutine.create(function()
    	Cso("2108801154", char, 7, 0.8)
    	for i = 0, 9 do
			Effects.Meshed(mouse.Hit * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),Vector3.new(),Vector3.new(.0115,.0005,.0115),"","rbxassetid://662585058","",0,false,0.03)
			Aura(1, 1.5, "Add", mouse.Hit * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 5, 5, 45, -0.05, maincolor, 0, "Sphere")
			Aura(2, 1.5, "Add", mouse.Hit * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 5, 5, 45, -0.05, maincolor, 0, "Sphere")
		end
		Magic(5, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
		Magic(10, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
		Magic(1, "Add", mouse.Hit, Vector3.new(1, 100000, 1), 0.5, maincolor, "Sphere")
		Magic(1, "Add", mouse.Hit, Vector3.new(1, 1, 1), 0.75, maincolor, "Sphere")
		CamShake(2, 15)
		for i, v in pairs(FindNearestHead(mouse.Hit.p, 24.5)) do
			if v:FindFirstChild("Head") then
				print("ok")
			end
		end
	end))
end
function Code()
    Sitt = true
    attack = true
    Speed = 0
	Cso("548337197", tors, 7, 1)
    coroutine.resume(coroutine.create(function()
    	for i = 0,2,0.1 do
    	  swait()
    	  Screen2.Transparency = Screen2.Transparency + 0.02
    	  Screen3.Transparency = Screen3.Transparency + 0.02
    	end
    end))
local text = text
local SGui = Instance.new("SurfaceGui",Screen2)
SGui.Face = "Back"
SGui.Adornee = Screen2
local hexertextxd = Instance.new("TextBox",SGui)
hexertextxd.Position = UDim2.new(0, 0, 0, 0)
hexertextxd.Size = UDim2.new(1, 0, 1, 0)
hexertextxd.TextColor3 = Color3.new(0, 1, 0)
hexertextxd.BackgroundTransparency = 1
if Screen == false then
hexertextxd.TextTransparency = Screen2.Transparency
end
hexertextxd.Font = "Code"
hexertextxd.MultiLine = true
hexertextxd.TextWrapped = true
hexertextxd.TextSize = 34
hexertextxd.TextXAlignment = "Center"
hexertextxd.TextYAlignment = "Center"
hexertextxd.Text = ""
local SGui2 = Instance.new("SurfaceGui",Screen3)
SGui2.Face = "Back"
SGui2.Adornee = Screen3
local hexertextxd2 = Instance.new("TextBox",SGui2)
hexertextxd2.Position = UDim2.new(0, 0, 0, 0)
hexertextxd2.Size = UDim2.new(1, 0, 1, 0)
hexertextxd2.TextColor3 = Color3.new(0, 1, 0)
hexertextxd2.TextStrokeColor3 = Color3.new(0,1,0)
hexertextxd2.BackgroundTransparency = 1
hexertextxd2.Font = "Code"
hexertextxd2.MultiLine = true
hexertextxd2.TextWrapped = true
hexertextxd2.TextSize = 34
hexertextxd2.TextTransparency = 0
hexertextxd2.TextXAlignment = "Left"
hexertextxd2.TextYAlignment = "Top"
hexertextxd2.Text =  ""
local SGui3 = Instance.new("SurfaceGui",Screen1)
SGui3.Face = "Back"
SGui3.Adornee = Screen3
local hexertextxd3 = Instance.new("TextBox",SGui3)
hexertextxd3.Position = UDim2.new(0, 0, 0, 0)
hexertextxd3.Size = UDim2.new(1, 0, 1, 0)
hexertextxd3.TextColor3 = Color3.new(0, 1, 0)
hexertextxd3.TextStrokeColor3 = Color3.new(1,0,0)
hexertextxd3.BackgroundTransparency = 1
hexertextxd3.Font = "Code"
hexertextxd3.MultiLine = true
hexertextxd3.TextWrapped = true
hexertextxd3.TextSize = 34
hexertextxd3.TextTransparency = 0
hexertextxd3.TextXAlignment = "Left"
hexertextxd3.TextYAlignment = "Top"
hexertextxd3.Text =  ""
local wordthing = 1
local wordthing2 = 1
local wordthing3 = 1
    while Sitt == true do
        swait()
        if wordthing < #idlecp then
        wordthing = wordthing + 1
        hexertextxd.Text = hexertextxd.Text..RightCP:sub(wordthing2,wordthing2)
        hexertextxd2.Text = hexertextxd2.Text..idlecp:sub(wordthing,wordthing)
		hexertextxd3.Text = hexertextxd2.Text..MainCP:sub(wordthing3,wordthing3)	
        local newline = hexertextxd.Text:find("\n")
		local newline2 = hexertextxd2.Text:find("\n")
		local newline3 = hexertextxd3.Text:find("\n")
		if newline and #hexertextxd.Text > 450 then
		    			hexertextxd.Text = hexertextxd.Text:sub(newline + 1)
		    			end
		if newline2 and #hexertextxd2.Text > 600 then
			hexertextxd2.Text = hexertextxd2.Text:sub(newline2 + 1)
		end
		
		if newline3 and #hexertextxd3.Text > 600 then
			hexertextxd3.Text = hexertextxd3.Text:sub(newline3 + 1)
		end

		if wordthing2 < #RightCP then
		            wordthing2 = wordthing2 + 1 
end
		    
    	else
        wordthing = 1
        end
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(-55)), 0.1)
	end
	for i = 0, 4, 0.1 do
		swait()
    	hexertextxd.TextTransparency = 	hexertextxd.TextTransparency + 0.04
    	hexertextxd.Position = UDim2.new(0, 0, 0-0.05*i, 0)
    	hexertextxd2.TextTransparency = hexertextxd2.TextTransparency + 0.04
    	hexertextxd2.Position = UDim2.new(0+0.05*i, 0, 0, 0)
		hexertextxd3.TextTransparency = hexertextxd3.TextTransparency + 0.04
    	hexertextxd3.Position = UDim2.new(0+0.05*i, 0, 0, 0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(-40)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(40)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(5 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(10 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(0), Rad(25)), 0.1)
	end
    coroutine.resume(coroutine.create(function()
    for i = 0,2,0.1 do
    	swait()
    	Screen2.Transparency = Screen2.Transparency - 0.02
    	Screen3.Transparency = Screen3.Transparency - 0.02
		Screen1.Transparency = Screen1.Transparency - 0.02
    	end
    end))
    attack = false
    Speed = 16
    wordthing = 1
    wordthing2 = 1
    SGui:Destroy()
    SGui2:Destroy()
end
function EMP()
	attack = true
	Speed = 0
	    
	mes3([[Dekim : Ready to EMP.
	
	
	You : Alright tell me when you're re about to hit it.
	
	
	Dekim : Sure thing.
	
	    ]],1.35)


	    
	mes2([[You : Ya Know EMP's Can Be Pretty Useful.
	
	
	??? : I Know xd
	
	
	You : EMP ACTIVATED!
	
	
	??? : :boi:
	    ]],1.35)
	   
	mes3("EMP Over and out.",1.35)

	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(0)), 0.05)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(1 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-1 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0 + 5 * Sin(sine / 20)), Rad(55)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0 - 5 * Sin(sine / 20)), Rad(-55)), 0.1)
	end
	mes([[
		EMP Activated.
		
		
		
		Shatter Before My Command...
	]],.05)
	Magic(5, "Add", root.CFrame * CFrame.new(0, 0, 0), Vector3.new(10, 10, 10), 1, maincolor, "Sphere")
	Magic(3, "Add", root.CFrame * CFrame.new(0, 0, 0), Vector3.new(20, 20, 20), 1, maincolor, "Sphere")
	Magic(1, "Add", root.CFrame * CFrame.new(0, 0, 0), Vector3.new(30, 30, 30), 1, maincolor, "Sphere")
	CamShake(5, 10)
	Cso("285693895", char, 2, 1)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 44.5)) do
		if v:FindFirstChild("Head") then
			v:FindFirstChildOfClass("Humanoid").PlatformStand = true
			Cso("76047008", v:FindFirstChild("Head"), 7, (math.random(45,155)/150)+0.2)
			Eviscerate(v)
		end
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(0)), 0.1)
		neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
		rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(1 - 1 * Cos(sine / 20))), 0.1)
		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-1 - 1 * Cos(sine / 20))), 0.1)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0 + 5 * Sin(sine / 20)), Rad(25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0 - 5 * Sin(sine / 20)), Rad(-25)), 0.1)
	end
	Speed = 16
	attack = false
end
function GLOBAL_PWNAGE()
	attack = true
	Speed = 12
	movelegs = true
	    
	mes3([[NIL : You Wanna know what it feels like to DESTROY EVERYTHING, This Is An Orb of Calamity.
	
	
	You : Oh? Well I Guess I Should Make Use Of it.
	
	
	NIL : IM INJECTING IT NOW!
	
	    ]],1.35)

	    
	mes2([[You : Hey Look Outside
	
	
	??? : WoAH dude thats Pretty Destructive
	
	
	You : This is called a Calamity Orb
	
	
	??? : :thonk:
	    ]],1.35)

	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = BrickC("Really red")
	orb.CanCollide = false
	orb.FormFactor = 3
	orb.Name = "Ring"
	orb.Material = "Neon"
	orb.Size = Vector3.new(1, 1, 1)
	orb.Transparency = 0
	orb.TopSurface = 0
	orb.BottomSurface = 0
	local orbm = Instance.new("SpecialMesh", orb)
	orbm.MeshType = "Sphere"
	orbm.Name = "SizeMesh"
	orbm.Scale = Vector3.new(0, 0, 0)
	local scaled = 0.1
	local posid = 0
	for i = 0, 109, 0.1 do
		swait()
		scaled = scaled + 0.001
		posid = posid - scaled
		orb.CFrame = ra.CFrame * CF(0, -0.1 + posid / 1.05, 0)
		orbm.Scale = orbm.Scale + Vector3.new(scaled, scaled, scaled)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-10), Rad(0), Rad(40)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(125), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
	end
	coroutine.resume(coroutine.create(function()
		orb.Anchored = false
		--CFuncs.Sound.Create("rbxassetid://260433768", root, 1.25, 1)
		mes("CALAMITY ORB COMING IN EVERYTHING WILL BE DESTROYED",0.05)
		local a = Instance.new("Part", workspace)
		a.Name = "Direction"
		a.Anchored = true
		a.BrickColor = BrickC("Crimson")
		a.Material = "Neon"
		a.Transparency = 1
		a.CanCollide = false
		local ray = Ray.new(orb.CFrame.p, (root.CFrame.lookVector - orb.CFrame.p).unit * 500)
		local ignore = orb
		local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		a.BottomSurface = 10
		a.TopSurface = 10
		local distance = (orb.CFrame.p - position).magnitude
		a.Size = Vector3.new(0.1, 0.1, 0.1)
		a.CFrame = CF(orb.CFrame.p, position) * CF(0, 0, 0)
		orb.CFrame = a.CFrame
		a:Destroy()
		local bv = Instance.new("BodyVelocity")
		bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
		bv.velocity = orb.CFrame.lookVector * 125
		bv.Parent = orb
		local hitted = false
		game:GetService("Debris"):AddItem(orb, 15)
		wait()
		local hit = orb.Touched:connect(function(hit)
			if hitted == false then
				hitted = true
				coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
				CFuncs.Sound.Create("rbxassetid://151304356", orb, 5, 1)
					for i, v in pairs(FindNearestHead(orb.CFrame.p, 50000)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
				Magic(1, "Add", orb.CFrame, Vector3.new(orbm.Scale.x, orbm.Scale.y, orbm.Scale.z), 1, BrickC("Really black"), "Sphere")
				Magic(2, "Add", orb.CFrame, Vector3.new(orbm.Scale.x, orbm.Scale.y, orbm.Scale.z), 2, BrickC("Really black"), "Sphere")
				for i = 0, 9 do
					--Aura(1, 2.5, "Add", orb.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 5, 5, 50, -0.05, BrickColor.new("Royal purple"), 0, "Sphere")
					--Aura(2, 5, "Add", orb.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 5, 5, 50, -0.05, BrickColor.new("Royal purple"), 0, "Sphere")
				end
				orb.Anchored = true
				orb.Transparency = 1
				wait(8)
				orb:Destroy()
			end
		end)
	end))
	for i = 0, 2, 0.1 do
		swait()
		hum.CameraOffset = Vector3.new(0, -0.2 + 0.1 * Cos(sine / 20), 0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-5), Rad(0), Rad(40)), 0.2)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(0), Rad(0), Rad(-40)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(79), Rad(0)) * angles(Rad(-10), Rad(0), Rad(-10)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-79), Rad(0)) * angles(Rad(-15), Rad(0), Rad(10)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(45), Rad(-7.5 * Sin(sine / 20)), Rad(40)), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-25), Rad(7.5 * Sin(sine / 20)), Rad(-25)), 0.2)
	end
	attack = false
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if (op1 == false and attack == false) or Sitt == true then
		if key == "q" then
			if Sitt == false then
				Relax()
			elseif Sitt == true then
				Sitt = false
			end
		end
	end
	if (op1 == false and attack == false) or Sitt == true then
		if key == "f" then
			if Sitt == false and Screen == true then
				Code()
			elseif Sitt == true then
				Sitt = false
			end
		end
	end
	if attack == false then
		if key == "t" then
			Maniac()
		elseif key == "z" then
			if Screen == true then
				ScreenAway()
			else
				ScreenCome()
			end
		elseif key == "x" then
			Orb_Strike()
			elseif key == "v" then
			GLOBAL_PWNAGE()		
		elseif key == "c" then
			EMP()
		elseif key == "one" then
			SONG = 2007066385
			Music.TimePosition = 0
			mes("Now playing : Welcome to the Game - Main Menu",0.05)
		elseif key == "two" then
			SONG = 1825107283
			Music.TimePosition = 0
			mes("Now playing : Welcome to the Game 2 - Main Menu",0.05)
		elseif key == "three" then
			SONG = 1366716306
			Music.TimePosition = 0
			mes("Now playing : Watashi no mono - School Day Sane",0.05)
		elseif key == "four" then
			SONG = 170282324
		    Music.TimePosition = 0
			Music.Pitch = 0.85
			mes("10001001 00110110 10001011 01101001 01111110 01111101 10111111 10101001 ",0.05)
			mes2("You: What?",0.05)
		elseif key == "five" then
		    SONG = 1837185092
		    Music.TimePosition = 0
			mes("Now playing : (UNKNOWN ARTIST) - Clubbed",0.05)
		elseif key == "six" then
			SONG = 200602561
		    Music.TimePosition = 0
			mes("Now playing : Aldnoah.Zero - SiTE n0w1",0.05)
		end
	end
end)

 






-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
print("By Creterisk and KillerDarkness0105 Third Screen Edit By InfiniteOneWithdank and a move edit aa")
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
		local Landed = false
		if(hitfloor)then
			WasAir = false
		else
			WasAir = true
		end
		if(WasAir == false)then
			if(InAir == true)then
				LandTick = time()
				Landed = true
			end
		end
		if(time()-LandTick < .3)then
			Landed = true
		end
		if(hitfloor)then
			InAir = false
		else
			InAir = true
		end
		if(not char:FindFirstChildOfClass'Shirt')then
			NewInstance("Shirt",char,{ShirtTemplate='rbxassetid://133708636'})
		else
			char:FindFirstChildOfClass'Shirt'.ShirtTemplate='rbxassetid://133708636'
		end
		if(not char:FindFirstChildOfClass'Pants')then
			NewInstance("Pants",char,{PantsTemplate='rbxassetid://97164626'})
		else
			char:FindFirstChildOfClass'Pants'.PantsTemplate='rbxassetid://97164626'
		end
		local Walking = (math.abs(root.Velocity.x) > 1 or math.abs(root.Velocity.z) > 1)
		local State = (hum.PlatformStand and 'Paralyzed' or hum.Sit and 'Sit' or Landed and 'Land' or not hitfloor and root.Velocity.y < -1 and "Fall" or not hitfloor and root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
		local WALKSPEEDVALUE = 6 / (hum.WalkSpeed / 16)
 		Screen3Weld.C1 = clerp(Screen3Weld.C1, CFrame.new(0-0.5*math.cos(sine/40), 0+.82*math.sin(sine/40),0+1.82*math.cos(sine/120))  * CFrame.Angles(math.rad(0+15*math.cos(sine/40)),math.rad(0+7*math.sin(sine/40))+ torvel / 34,math.rad(0+8*math.cos(sine/40))), 0.1)
 		Screen2Weld.C1 = clerp(Screen2Weld.C1, CFrame.new(0+0.5*math.cos(sine/40), 0+.82*math.sin(sine/40),0-1.82*math.cos(sine/120))  * CFrame.Angles(math.rad(0+15*math.cos(sine/40)),math.rad(0-7*math.sin(sine/40))- torvel / 34,math.rad(0+8*math.cos(sine/40))), 0.1)
		Screen1Weld.C1 = clerp(Screen1Weld.C1, CFrame.new(0+0.5*math.cos(sine/40), 0+.82*math.sin(sine/40),0-1.82*math.cos(sine/120))  * CFrame.Angles(math.rad(0+15*math.cos(sine/40)),math.rad(0-7*math.sin(sine/40))- torvel / 34,math.rad(0+8*math.cos(sine/40))), 0.1)
		ActualHackerText.Rotation = 0 - 2 * math.cos(sine / 24)
		ActualHackerText.Position = UDim2.new(0.6, 0 - 10 * math.cos(sine / 32),0.8, 0 - 10 * math.cos(sine / 45))
		if(State == 'Jump')then
			hum.JumpPower = 55
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -.2 - 0.1 * Cos(sine / 20), -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif(State == 'Fall')then
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(165), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(165), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif(State == 'Land')then
			hum.JumpPower = 0
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(35 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(5)), 0.15)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(-5)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(0), Rad(25 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(0), Rad(-25 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif(State == 'Idle')then
			change = 0.55
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 4 * Sin(sine / 20)), Rad(0 + 1 * Cos(sine / 20)), Rad(0)), 0.1)
				neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) - Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(-3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(1 - 1 * Cos(sine / 20))), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20) + Rad(0 + 2 * Cos(sine / 20)) * Player_Size, 0* Player_Size) * angles(Rad(0 - 6 * Sin(sine / 20)), Rad(3 + 1 * Cos(sine / 20)), Rad(0)) * angles(Rad(0), Rad(0), Rad(-1 - 1 * Cos(sine / 20))), 0.1)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.1 * Sin(sine / 20)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(0), Rad(55)), 0.1)
			end
		elseif(State == 'Walk')then
			change = 0.76
			hum.JumpPower = 55
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.2 - 0.15 * Cos(sine / (WALKSPEEDVALUE / 2))) * angles(Rad(10), Rad(0), Rad(0 - 0.75 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / 75), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-5 + 5 * Sin(sine / (WALKSPEEDVALUE / 2))), Rad(0), Rad(0 - 0.75 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / 13), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
         		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(15), Rad(-55)), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0.6* Player_Size) * angles(Rad(-35), Rad(0), Rad(55)), 0.1)
			elseif attack == true and movelegs == true then
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
         		ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
			end
		end
	end
	hum.Name = "HUM"
	hum.WalkSpeed = Speed
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 2
	Music.Parent = tors
	Music.Playing = true
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
-------------------------------------------------------