--[[ Please note that some damage functions may cause inconsistant damage between players and must be fixed manually using the DamageRemote I've turned into a comment.
 	Don't worry about this if you don't know how as it normally doesn't matter.																						--]]
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
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
wait(0.2)
local Player = game:GetService("Players").LocalPlayer
local lplr = game:GetService("Players").LocalPlayer
local mouse = Player:GetMouse()
local char = workspace.non
local PlayerGui = Player.PlayerGui
local Cam = workspace.CurrentCamera
local Backpack = Player.Backpack
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
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Really black")

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
local cam = game.Workspace.CurrentCamera
local CF = CFrame.new
local angles = CFrame.Angles
local attack = false
local Euler = CFrame.fromEulerAnglesXYZ
local Rad = math.rad
local IT = Instance.new
local BrickC = BrickColor.new
local Cos = math.cos
local Acos = math.acos
local Sin = math.sin
local Asin = math.asin
local Abs = math.abs
local Mrandom = math.random
local Floor = math.floor
local Vt = Vector3.new
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
local necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local RW = Instance.new("Weld") 
local LW = Instance.new("Weld")
local RH = tors["Right Hip"]
local LH = tors["Left Hip"]
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
local Effects = {}
local joyemoji = Instance.new('ParticleEmitter', tors)
joyemoji.VelocitySpread = 2000
joyemoji.Lifetime = NumberRange.new(1)
joyemoji.Speed = NumberRange.new(40)
joy= {}
for i=0, 19 do
  joy[#joy+ 1] = NumberSequenceKeypoint.new(i/19, math.random(1, 1))
end
joyemoji.Size = NumberSequence.new(joy)
joyemoji.Rate = 0
joyemoji.LockedToPart = false
joyemoji.LightEmission = 0
joyemoji.Texture = "rbxassetid://73623723"
joyemoji.Color = ColorSequence.new(BrickColor.new("Institutional white").Color)

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
FELOADLIBRARY = {}
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
local Create = FELOADLIBRARY.Create

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
	
         --hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         --hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
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
	if dude.Name ~= char then
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			--dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Part") or v:IsA("MeshPart") then
						coroutine.resume(coroutine.create(function()
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", reye)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							coroutine.resume(coroutine.create(function()
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
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
PartEmmit1.Texture = "rbxassetid://569507414"
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

BTAUNT = Instance.new("Sound", hed)
BTAUNT.SoundId = "http://www.roblox.com/asset/?id=1278102150"
BTAUNT.Volume = 19
BTAUNT.Pitch = 1
BTAUNT.Looped = true

BTAUNT2 = Instance.new("Sound", hed)
BTAUNT2.Parent = hed
BTAUNT2.SoundId = "http://www.roblox.com/asset/?id=957602352"
BTAUNT2.Volume = 20
BTAUNT2.Pitch = 1
BTAUNT2.Looped = true

BTAUNT3 = Instance.new("Sound", char)
BTAUNT3.SoundId = "http://www.roblox.com/asset/?id=1090127517"
BTAUNT3.Volume = 2
BTAUNT3.Pitch = 1
BTAUNT3.Looped = true

BTAUNT4 = Instance.new("Sound", tors)
BTAUNT4.SoundId = "http://www.roblox.com/asset/?id=2658538628"
BTAUNT4.Volume = 10
BTAUNT4.Pitch = 3
BTAUNT4.Looped = true

BTAUNT5 = Instance.new("Sound", tors)
BTAUNT5.SoundId = "http://www.roblox.com/asset/?id=1470848774"
BTAUNT5.Volume = 5
BTAUNT5.Pitch = 1
BTAUNT5.Looped = true

TEST = Instance.new("Sound", tors)
TEST.SoundId = "http://www.roblox.com/asset/?id=636494529"
TEST.Volume = 25
TEST.Pitch = 1
TEST.Looped = false
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vt(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.BrickColor = BrickC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = tors.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function MakeForm(PART,TYPE)
	local MSH = nil
	if TYPE == "Cyl" then
		MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	elseif TYPE == "Block" then
		MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Brick"
	end
	return MSH
end

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


function Sink(position,radius)
	for i,v in ipairs(workspace:GetChildren()) do
	if v:FindFirstChild("Hit2By"..plr.Name) == nil then
		local body = v:GetChildren()
			for part = 1, #body do
				if(v:FindFirstChild("Hit2By"..plr.Name) == nil and (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= char) then
					if(body[part].Position - position).Magnitude < radius then
						if v.ClassName == "Model" then
							v:FindFirstChildOfClass("Humanoid").Name = "Humanoid"
							if v:FindFirstChild("Humanoid") then
								local defence = Instance.new("BoolValue",v)
								defence.Name = ("Hit2By"..plr.Name)
								if v.Humanoid.Health ~= 0 then
									local TORS = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
									if TORS ~= nil then
										local HITFLOOR2, HITPOS2 = Raycast(TORS.Position, (CF(TORS.Position, TORS.Position + Vector3.new(0, -1, 0))).lookVector, 25 * TORS.Size.Y/2, v)
										coroutine.resume(coroutine.create(function()
											if HITFLOOR2 ~= nil then
												TORS.Anchored = true
												local Hole2 = CreatePart(3, EffectModel, "Neon", 0, 0, "Really black", "Hole", Vector3.new(TORS.Size.X*4,0,TORS.Size.X*4))
												Hole2.Color = Color3.new(0,0,0)
												local MESH = MakeForm(Hole2,"Cyl")
												MESH.Scale = Vector3.new(0,1,0)
												Hole2.CFrame = CF(HITPOS2)
												for i = 1, 10 do
													swait()
													MESH.Scale = MESH.Scale + Vector3.new(0.1,0,0.1)
												end
												--Cso("160440683", v:FindFirstChild("Head"), 10, .8)
												Cso("154955269", v:FindFirstChild("Head"), 10, 1)
												repeat
													swait()
													TORS.CFrame = TORS.CFrame * CF(0,-0.1,0)
													--MESH.Scale = MESH.Scale + Vector3.new(0,1.6,0)
												until TORS.Position.Y<position.Y-4
												v:remove()
												for i = 1, 10 do
													swait()
													MESH.Scale = MESH.Scale - Vector3.new(0.1,0,0.1)
												end
												Hole2:remove()
											end
										end))
									end
								end
							end
						end
						--body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
					end
				end
			end
		end	
	end
end
function Trail(Part)
	local TRAIL = Part:Clone()
	TRAIL.CanCollide = false
	TRAIL.Anchored = true
	TRAIL.Parent = EffectModel
	TRAIL.Name = "Trail"
	local TRANS = Part.Transparency
	coroutine.resume(coroutine.create(function()
		for i = 1, 20 do
			swait()
			TRAIL.Transparency = TRAIL.Transparency + ((1-TRANS)/20)
		end
		TRAIL:remove()
	end))
end
function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}


function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = Instance.new("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
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
hum.WalkSpeed = 20
hum.JumpPower = 57
----------------------------------------------------------------------------------
local Hole = CreatePart(3, EffectModel, "Neon", 0, 0, "Really black", "Hole", Vector3.new(5,0,5))
local MESH = MakeForm(Hole,"Cyl")


local BODY = {}
for _, c in pairs(char:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= root and c ~= tors and c ~= hed and c ~= ra and c ~= la and c ~= rl and c ~= ll then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	end
end
for e = 1, #BODY do
	if BODY[e] ~= nil then
		do
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= root then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
			end
			--[[PART.AncestryChanged:Connect(function()
				PART.Parent = PARENT
			end)--]]
		end
	end
end
function refit()
	coroutine.resume(coroutine.create(function()
	wait()
	hum.Died:connect(refit)
	end))
	char.Parent = workspace
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			local SIZE = STUFF[6]
			local NAME = STUFF[7]
			if PART.ClassName == "Part" and PART:IsA("BasePart") and PART ~= root then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
				PART.Name = NAME
			end
			if PART.Parent ~= PARENT then
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					hum:remove()
				end
				PART.Parent = PARENT
				if PART.Name == "Head" or PART.Name == "Neck" or PART.Name == "Torso" then
					hum = Instance.new("Humanoid",char)
				end
			end
		end
	end
end
local Regen = {}
for e = 1, #Regen do
	if Regen[e] ~= nil then
		local STUFF = Regen[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= BODY.root then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		--[[PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)--]]
	end
end
function Refit()
	coroutine.resume(coroutine.create(function()
	wait()
	hum.Died:connect(Refit)	
	end))
	for i = 1,#Regen do
		local E = Regen[i]
		local PART = E[1]
		local PARENT = E[2]
		local COLOR = E[3]
		local SIZE = E[4]
		local MATERIAL = E[5]
		if PART:IsA("BasePart") and PART.Parent ~= PARENT then
			PART.Color = COLOR
			PART.Size = SIZE
			PART.Material = MATERIAL
		end
		if PART.Parent ~= PARENT then
			hum.Parent = nil
			PART.Parent = PARENT
			hum.Parent = char
		end
	end
	hum.Parent = char
end
function Parents()
    rootj.Parent = root
    neck.Parent = tors
    RW.Parent = tors
    LW.Parent = tors
    RH.Parent = tors
    LH.Parent = tors
    root.Parent = char
    la.Parent = char
    ra.Parent = char
    rl.Parent = char
    ll.Parent = char
    tors.Parent = char
    hed.Parent = char
end
local States = {
	"FallingDown";
	"PlatformStanding";
	"Physics";
	"Swimming";
	"Dead";
	"Ragdoll";
	"Seated";
}
for i,v in pairs(States) do
	hum:SetStateEnabled(v,false)
end

hum.Died:connect(function()
	refit()
	Refit()
	Parents()
end)
-------------------------------------------------------
--End Customization--
-------------------------------------------------------
local Blobby = Instance.new("Part", char)
Blobby.Name = "Blob"
Blobby.CanCollide = false
Blobby.BrickColor = BrickColor.new("Deep orange")
Blobby.Transparency = 0
Blobby.Material = "Neon"
Blobby.Size = Vector3.new(1, 1, 2)
Blobby.TopSurface = Enum.SurfaceType.Smooth
Blobby.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Blobby)
Weld.Part0 = ra
Weld.Part1 = Blobby
Weld.C1 = CFrame.new(0, 1, 0.4)
Weld.C0 = CFrame.Angles(Rad(0),0,0)

local M2 = Instance.new("SpecialMesh")
M2.Parent = Blobby
M2.MeshId = "rbxassetid://0"
M2.TextureId = "rbxassetid://749019427"
M2.Scale = Vector3.new(0.08, 0.08, 0.08)

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


-------------------------------------------------------

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
tecks2.Font = "Cartoon"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new('Institutional white').Color
tecks2.TextStrokeColor3 = BrickColor.new('Really black').Color
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
textfag = tecks2
tecks2.Text = ":joy:"
BTAUNT2:Play()
coroutine.resume(coroutine.create(function()
    while textfag ~= nil do
        swait()
        textfag.Position = UDim2.new(math.random(-0.2,0.2),math.random(-3,9),.05,math.random(-10,10))  
        textfag.Rotation = math.random(-1.8,1.8)
    end
end))

BTAUNT4 = Instance.new("Sound", char)
BTAUNT4.SoundId = "http://www.roblox.com/asset/?id=2658538628"
BTAUNT4.Volume = 10
BTAUNT4.Pitch = 1
BTAUNT4.Parent = hed
BTAUNT4.Looped = false

BTAUNT7 = Instance.new("Sound", char)
BTAUNT7.SoundId = "http://www.roblox.com/asset/?id=2770017501"
BTAUNT7.Volume = 1.5
BTAUNT7.Pitch = 1
BTAUNT7.Parent = char
BTAUNT7.Looped = false

BTAUNT6 = Instance.new("Sound", char)
BTAUNT6.SoundId = "http://www.roblox.com/asset/?id=2675983782"
BTAUNT6.Volume = 10
BTAUNT6.Pitch = 1
BTAUNT6.Parent = hed
BTAUNT6.Looped = false

BTAUNT5 = Instance.new("Sound", char)
BTAUNT5.SoundId = "http://www.roblox.com/asset/?id=468944969"
BTAUNT5.Volume = 3.5
BTAUNT5.Pitch = 1
BTAUNT5.Parent = hed
BTAUNT5.Looped = false

BTAUNT3 = Instance.new("Sound", char)
BTAUNT3.SoundId = "http://www.roblox.com/asset/?id=4565988898"
BTAUNT3.Volume = 2
BTAUNT3.Pitch = 1
BTAUNT3.Parent = hed
BTAUNT3.Looped = false

function muda()
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
end
function roadroller()
attack = true
BTAUNT2:Stop()
BTAUNT7:Play()
local Container = Instance.new("Part", char)
Container.Name = "Blob"
Container.CanCollide = false
Container.BrickColor = BrickColor.new("Deep orange")
Container.Transparency = 0
Container.Material = "Neon"
Container.Size = Vector3.new(1, 1, 2)
Container.TopSurface = Enum.SurfaceType.Smooth
Container.BottomSurface = Enum.SurfaceType.Smooth

local aWeld = Instance.new("Weld", Container)
aWeld.Part0 = tors
aWeld.Part1 = Container
aWeld.C1 = CFrame.new(0, 10, 0)
aWeld.C0 = CFrame.Angles(Rad(0),0,0)

local M2 = Instance.new("SpecialMesh")
M2.Parent = Container
M2.MeshId = "rbxassetid://489989415"
M2.TextureId = "rbxassetid://489989506"
M2.Scale = Vector3.new(1, 1, 1)
for i = 0,67,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 220* Player_Size) * angles(Rad(0 - 0 * Sin(sine / 1.5)), Rad(0 + 0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,40,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, -6, 0 + ((1* Player_Size) - 1)) * angles(Rad(90), Rad(0), Rad(0)), 1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(90 - 0 * Sin(sine / 1.5)), Rad(0 + 0 * Cos(sine / 1.5)), Rad(0)), 0.15)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,46,0.1 do
swait()
change = 1
root.Anchored = true
aWeld.Part0 = root
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
Container.Size = Vector3.new(15, 5, 5)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(20), Rad(0)), 0.05)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
Container.CanCollide = true
for i = 0,0.1,0.1 do
swait()
change = 1
root.Anchored = false
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0.4, 0.3 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0.6 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.6, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, -1, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(1, 0, 0.1 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.5, 0.1, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.4, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.4, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, -0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 1, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.8		, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.8, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.7, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0.5, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0.9 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 1, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0.8, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,0.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-20)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(60)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, -3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 3* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.3, 0, 0.5 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.1, .6, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
muda()
                     aWeld.C1 = clerp(aWeld.C1, CF(.6, -0.4, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
for i = 0,20.1,0.1 do
swait()
change = 1
                     aWeld.C1 = clerp(aWeld.C1, CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-30)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(-30)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0.5* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(-90 + 0* Cos(sine / 12))), 0.6)
end
 	for i, v in pairs(FindNearestHead(Container.CFrame.p, 19.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
Cso("1744093986", v, 10, 1)
		end
	end
				for i = 0, 9 do
				Magic(0.5, "Add", Container.CFrame, Vector3.new(60,80,50), 2, BrickC("Deep orange"), "Sphere")
				Magic(2, "Add", Container.CFrame, Vector3.new(60,80,50), 2, BrickC("Dark orange"), "Sphere")
					Aura(3, 5.5, "Add", Container.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 5, 5, 50, -0.05, BrickC("Deep orange"), 0, "Sphere")
change = 1
				end
for i = 0,20.1,0.1 do
swait()
                     aWeld.C1 = clerp(aWeld.C1, CF(0 + 0.5* Player_Size * Sin(sine / 1.2), 0 + 0.5* Player_Size * Sin(sine / 1.2), 0 + 0.5* Player_Size * Sin(sine / 1.2) + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 1)
aWeld.Part0 = root
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(-30)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0* Player_Size * Sin(sine / 1.2)* Player_Size, 7* Player_Size) * angles(Rad(70 - 0 * Sin(sine / 1.5)), Rad(0), Rad(30)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(70)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0.5* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
BTAUNT7:Stop()
BTAUNT2:Play()
Container:Remove()
tecks2.Text = ":joy:"
change = 1.7
attack = false
end

function bruhmoment()
attack = true
BTAUNT3:Play()
while BTAUNT3.Playing == true do
tecks2.Text = "He spittin facts"
for i = 0,7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 90 * Sin(sine / 5)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0.5* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0.3* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0.3* Player_Size * Sin(sine / 1.2)) * angles(Rad(0), Rad(0), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
end
if BTAUNT3.Playing == false then
tecks2.Text = ":joy:"
change = 1.7
attack = false
end
end

function when()
attack = true
BTAUNT5:Play()
while BTAUNT5.Playing == true do
for i = 0,0.5,0.1 do
swait()
change = 2
BTAUNT5.Pitch = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
BTAUNT5:Stop()
for i = 0,0.5,0.1 do
swait()
change = 2
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0 + 0.2 * Player_Size * Sin(sine / 3.5),0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.2 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(30)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
end
if BTAUNT5.Playing == false then
tecks2.Text = "Touture Dance"
change = 1.7
attack = false
end
end
function isthatajojoreference()
attack = true
BTAUNT2:Stop()
BTAUNT6:Play()
for i = 0,7.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,5.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(170), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(127), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
print("1!")
for i = 0,7.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,5.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(170), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(127), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
print("2!")
for i = 0,4.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,5.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(170), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(127), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
print("3!")
for i = 0,5.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(120), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,5.5,0.1 do
swait()
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0,0.4,-0.5) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(170), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(127), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
print("4!")
while BTAUNT6.Playing == true do
for i = 0,2.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0,0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(75), Rad(-0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, -0.1 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(130 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.4* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,0.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0.5,0,0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(75), Rad(-0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, -0.15 - 0 * Cos(sine / 12)* Player_Size, -0.3* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(120 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.8* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 + 0 * Sin(sine / 12)), Rad(0), Rad(60)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-1,-1,-0.2) * angles(Rad(10), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5  * Player_Size) * angles(Rad(0), Rad(97), Rad(10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5 * Player_Size) * angles(Rad(0), Rad(-97), Rad(-10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(170 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.8* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,0.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 + 0 * Sin(sine / 12)), Rad(0), Rad(60)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-0.5,-1,-0.2) * angles(Rad(10), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5  * Player_Size) * angles(Rad(0), Rad(97), Rad(10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5 * Player_Size) * angles(Rad(0), Rad(-97), Rad(-10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, -0.15 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(120 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.8* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-1,0,0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0  * Player_Size) * angles(Rad(0), Rad(75), Rad(-0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), 0 * Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, -0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(130 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.8* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 + 0 * Sin(sine / 12)), Rad(0), Rad(60)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-2,-1,-0.2) * angles(Rad(10), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5  * Player_Size) * angles(Rad(0), Rad(97), Rad(10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.5 * Player_Size) * angles(Rad(0), Rad(-97), Rad(-10)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(170 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.8* Player_Size, 0.25 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-2,0.4,-0.5) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -0.6 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(30)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -0.6 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(150), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(150), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-2,0.4,-0.5) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(0), Rad(85), Rad(-30)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(30)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 0.6)
end
for i = 0,3.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-30 + 0 * Sin(sine / 12)), Rad(0), Rad(-40)), 0.1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-2,0.4,-0.1) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1.5 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(-40), Rad(85), Rad(30)) * angles(Rad(30 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(20 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(0.8* Player_Size, -0.5 - 0 * Cos(sine / 12)* Player_Size, -0.8* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(-50 + 0* Cos(sine / 12))), 0.1)
				LW.C0 = clerp(LW.C0, CF(0.2* Player_Size, 0.65 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(120 + 0* Cos(sine / 12))), 0.1)
end
for i = 0,0.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-2,0.4,0.8) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-50)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.2,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(-1,0.4,0.8) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-100)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0.4,0.2) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-150)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0.4,0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(10)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(.8,0.4,-0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.2* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-30 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-130 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(30)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1,0.4,-0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15  * Player_Size) * angles(Rad(0), Rad(95), Rad(0)) * angles(Rad(-23 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15 * Player_Size) * angles(Rad(0), Rad(-95), Rad(0)) * angles(Rad(-23 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.2* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-30 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-60 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(10)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.15 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-30 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-130 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-40 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(20), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.7)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(20)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-20)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-40 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,0.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.35 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-40 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.35 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(-0)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-40 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,1,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-30 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(30 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,0.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.2,0.4,-0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.35 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-40 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.35 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2.7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.8,0.4,-0) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(-0)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-40 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.85 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(40 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,2,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 0.5)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.2,0.4,-0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55  * Player_Size) * angles(Rad(0), Rad(85), Rad(30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1* Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.55 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(-13 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(-30 + 0* Cos(sine / 12))), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.15 - 0 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(30 + 0* Cos(sine / 12))), 0.5)
end
for i = 0,3.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-30 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 0.1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1.5,0.4,-0) * angles(Rad(30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1.5 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75  * Player_Size) * angles(Rad(-40), Rad(85), Rad(30)) * angles(Rad(30 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0.75 * Player_Size) * angles(Rad(0), Rad(-85), Rad(-30)) * angles(Rad(20 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CF(0.8* Player_Size, -0.5 - 0 * Cos(sine / 12)* Player_Size, -0.8* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(-50 + 0* Cos(sine / 12))), 0.1)
				LW.C0 = clerp(LW.C0, CF(0.2* Player_Size, 0.65 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(60), Rad(0+ 0* Sin(sine / 20)), Rad(120 + 0* Cos(sine / 12))), 0.1)
end
for i = 0,0.5,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(1,0.4,0.8) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-50)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.2,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0.5,0.4,0.8) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-100)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0.4,0.2) * angles(Rad(0), Rad(0 * Cos(sine / 1.5)), Rad(-150)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,0.4,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(40)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,0.4,0) * angles(Rad(-30), Rad(0 * Cos(sine / 1.5)), Rad(0)), 0.6)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0  * Player_Size) * angles(Rad(0), Rad(85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 3.5), -0 * Player_Size) * angles(Rad(0), Rad(-85), Rad(0)) * angles(Rad(-3 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.45 - 0 * Cos(sine / 12)* Player_Size, -0* Player_Size) * angles(Rad(0), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
end
BTAUNT2:Play()
attack = false
end


function discord()
attack = true
BTAUNT2:Stop()
tecks2.Text = "car noises"
hum.WalkSpeed = 100
BTAUNT4:Play()
la.Transparency = 1
ra.Transparency = 1
for i = 0,17,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, -0.6, -1.5 + ((1* Player_Size) - 1)) * angles(Rad(90 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,-2.6,-2) * angles(Rad(-90), Rad(0 + 10 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1.8 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0.7  * Player_Size) * angles(Rad(0), Rad(90), Rad(-180)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1.8 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0.7 * Player_Size) * angles(Rad(0), Rad(-90), Rad(180)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(0* Player_Size, -1.55 - 0 * Cos(sine / 12)* Player_Size, -0.7* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-0* Player_Size, -2.55 - 0 * Cos(sine / 12)* Player_Size, -0.7* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
for i = 0,97,0.05 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, -0.6, -1.5 + ((1* Player_Size) - 1)) * angles(Rad(90 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0,-2.6,-2) * angles(Rad(-90), Rad(0 + 10 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1.8 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0.7  * Player_Size) * angles(Rad(0), Rad(90), Rad(-180)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1.8 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0.7 * Player_Size) * angles(Rad(0), Rad(-90), Rad(180)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(0* Player_Size, -1.55 - 0 * Cos(sine / 12)* Player_Size, -0.7* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-0* Player_Size, -2.55 - 0 * Cos(sine / 12)* Player_Size, -0.7* Player_Size) * angles(Rad(90), Rad(0+ 0* Sin(sine / 20)), Rad(0 + 0* Cos(sine / 12))), 1)
end
BTAUNT4:Stop()
hum.WalkSpeed = 20
la.Transparency = 0
ra.Transparency = 0
tecks2.Text = ":joy:"
BTAUNT2:Play()
change = 1.7
attack = false
end

function E()
attack = true
                     Cso("1937272483", hed, 10, 1)
tecks2.Text = "E"
for i = 0,7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0.5* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0.3* Player_Size * Sin(sine / 1.2)* Player_Size, 0.8 + 0.3* Player_Size * Sin(sine / 1.2)) * angles(Rad(0 - 10 * Sin(sine / 1.5)), Rad(0 + 10 * Cos(sine / 1.5)), Rad(0)), 1)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(90 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(-90 + 0* Cos(sine / 12))), 1)
end
tecks2.Text = ":joy:"
change = 1.7
attack = false
end




function bruh()
attack = true
                     Cso("4615152991", hed, 10, 1)
tecks2.Text = "me going to the poop dimension"
for i = 0,7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0.5* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0.3* Player_Size * Sin(sine / 1.2)* Player_Size, 0.8 + 0.3* Player_Size * Sin(sine / 1.2)) * angles(Rad(-70 - 10 * Sin(sine / 1.5)), Rad(0 + 10 * Cos(sine / 1.5)), Rad(0)), 0.11)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-50)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(50)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-70), Rad(0+ 0* Sin(sine / 20)), Rad(20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-70), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
end
for i = 0,7,0.1 do
swait()
change = 1
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 + 0 * Sin(sine / 12)), Rad(0), Rad(0)), 1)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0 + 0.5* Player_Size * Sin(sine / 1.2)* Player_Size, 0 + 0.3* Player_Size * Sin(sine / 1.2)* Player_Size, 45.8 + 0* Player_Size * Sin(sine / 1.2)) * angles(Rad(-70 - 10 * Sin(sine / 1.5)), Rad(0 + 10 * Cos(sine / 1.5)), Rad(0)), 0.03)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0  * Player_Size) * angles(Rad(0), Rad(90), Rad(-50)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0 * Player_Size * Sin(sine / 12), 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(50)) * angles(Rad(0 - 0 * Cos(sine / 12)), Rad(0), Rad(0)), 1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-70), Rad(0+ 0* Sin(sine / 20)), Rad(20 + 0* Cos(sine / 12))), 1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(-70), Rad(0+ 0* Sin(sine / 20)), Rad(-20 + 0* Cos(sine / 12))), 1)
end
tecks2.Text = ":joy:"
change = 1.7
attack = false
end
local Head1 = Instance.new("Part", char)
Head1.Name = "Blob"
Head1.CanCollide = false
Head1.BrickColor = BrickColor.new("Really black")
Head1.Transparency = 1
Head1.Material = "Plastic"
Head1.Size = Vector3.new(1, 1, 1)
Head1.TopSurface = Enum.SurfaceType.Smooth
Head1.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Head1)
Weld.Part0 = tors
Weld.Part1 = Head1
Weld.C1 = CFrame.new(0, 0, 0)
Weld.C0 = CFrame.Angles(Rad(0),0,0)

local M3 = Instance.new("SpecialMesh")
M3.Parent = Head1
M3.MeshType = "Brick"
M3.Scale = Vector3.new(5, 5, 5)
face1 = Instance.new("Decal", Head1)
face1.Face = "Front"
face1.Transparency = 1
face1.Texture = "rbxassetid://153159982"


-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == "e" then
                    E()
		elseif key == "z" then
                    bruh()
		elseif key == "t" then
face1.Transparency = 0
Head1.Transparency = 0
                                         Cso("1747834381", hed, 10, 1)
BTAUNT2:Stop()
wait(19) 
                                         Cso("3173571164", hed, 10, 1)
Head1.Transparency = 1
face1.Transparency = 1
wait(19)
BTAUNT2:Play()
		elseif key == "r" then
                    roadroller()
		elseif key == "x" then
                    bruhmoment()
		elseif key == "c" then
                    discord()
		elseif key == "v" then
                    when()
		elseif key == "f" then
                    isthatajojoreference()
 		end
	end
end)

local FakeVel = Vector3.new(0,0,0)
if lplr == Player then
	spawn(function()
		while true do
			local Positions = {}
			local Speeds = {}
			for i = 1,10 do
				table.insert(Positions, root.CFrame)
				table.insert(Speeds, root.Velocity)
				swait()
			end
		end
	end)
end

if lplr ~= Player then
	local Last = root.Position
	Mover.OnClientEvent:Connect(function(v, Speed)
		for i,v2 in pairs(v) do
			FakeVel = Speed[i]
			if v[i].p ~= Last then
				if MoverSpeed.Value == "Remote" then
					root.CFrame = v[i]
				end
				Last = v[i].p
				swait()
			end
		end
	end)
	spawn(function()
		while true do
			game:GetService("RunService").RenderStepped:wait()
			FakeRoot = workspace.Terrain:WaitForChild(Player.Name.." char tracker")
			if MoverSpeed.Value == "Smooth" then
				root.CFrame = FakeRoot.CFrame
			end
		end
	end)
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
			Value = Player,
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
			--h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			--h.Health = h.Health - (Damage / 2)
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
	if true then return end
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
print("By XandersAltAccount1")
while true do
	swait()
	sine = sine + change
	local torvel = (FakeVel * Vector3.new(1, 0, 1)).magnitude
	local velderp = FakeVel.y
	if lplr == plr then
		torvel = (root.Velocity * Vt(1, 0, 1)).magnitude
		velderp = root.Velocity.y
	end
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
			change = 1.75
 			if attack == false then
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-10 + 12.5 * Sin(sine / 12)), Rad(0), Rad(0)), 0.3)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.3* Player_Size * Sin(sine / 12)) * angles(Rad(0 - 0 * Sin(sine / 20)), Rad(0 + 0 * Cos(sine / 20)), Rad(0)), 0.35)
				RH.C0 = clerp(RH.C0, CF(1 * Player_Size, -1 * Player_Size - 0.3 * Player_Size * Sin(sine / 12), -0.5  * Player_Size) * angles(Rad(0), Rad(76), Rad(-10)) * angles(Rad(-13 - -7 * Cos(sine / 12)), Rad(0), Rad(0)), 0.35)
				LH.C0 = clerp(LH.C0, CF(-1 * Player_Size, -1 * Player_Size - 0.3 * Player_Size * Sin(sine / 12), -0.5 * Player_Size) * angles(Rad(0), Rad(-76), Rad(10)) * angles(Rad(-13 - -7 * Cos(sine / 12)), Rad(0), Rad(0)), 0.35)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.55 - 0.15 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(10 + -12.5 * Cos(sine / 12))), 0.12)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.55 - 0.15 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(10* Cos(sine / 12)), Rad(0+ 0* Sin(sine / 20)), Rad(-10 + 12.5 * Cos(sine / 12))), 0.12)
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1.3
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0.375 + -0.73 * Sin(sine / 3.5) + -Sin(sine / 3.5) / 1* Player_Size) * angles(Rad(-3 - 32.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(1 * Cos(sine / 7))), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(30 * Sin(sine / 3.5)), Rad(0), Rad(0 * Cos(sine / 7)) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 1 * Cos(sine / 7) / 2* Player_Size, 0.8 * Cos(sine / 7) / 0.7* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2, Rad(90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(-0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 1 * Cos(sine / 7) / 2* Player_Size, -0.8 * Cos(sine / 7) / 0.7* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2, Rad(-90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(137)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)), Rad(0) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-137)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)) ,	Rad(0) + la.RotVelocity.Y / 75), 0.1)
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.13 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(23 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-10), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(20)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 15 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(-20)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(57)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)), Rad(0) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-57)  * Cos(sine / 7) , Rad(10 * Cos(sine / 7)) ,	Rad(0) + la.RotVelocity.Y / 75), 0.1)
			end
		end
	end
	refit()
	Refit()
	Parents()
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
-----------------------------------------------------
