loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GelatekWasTaken/Catware/main/Utilities/LoadLibrary.lua"))()
warn("All purpose switcher...")
warn("Edit By Frepix.")
warn("Minor Edit By UndeniableInfinity.")
warn("Please Support The Original Creator Of This Script.")
plr = game.Players.LocalPlayer
char = game.Workspace.non
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
Camera = cam
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
local Booleans = {CamFollow = true, GyroUse = true}
function lerp(object, newCFrame, alpha)
	return object:lerp(newCFrame, alpha)
end

ff = Instance.new("ForceField", game.Players.LocalPlayer.Character)
ff.Visible = false


local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1
local rainbowmode = false
local chaosmode = false
kan = Instance.new("Sound", char)
kan.Volume = 1.98
kan.TimePosition = 0
kan.PlaybackSpeed = 1
kan.Pitch = 1
kan.SoundId = "rbxassetid://415898123"
kan.Name = "wrecked"
kan.Looped = true
kan:Play()
function newTheme(ID, timepos, pitch, vol)
	local kanz = kan
	kanz.PlaybackSpeed = pitch
	kanz.Pitch = pitch
	kanz.SoundId = ID
	kanz.Name = "wrecked"
	kanz.Looped = true
end
function CameraShake(Times, Power, PlayerTarget)
	coroutine.resume(coroutine.create(function()
		FV = Instance.new("BoolValue", PlayerTarget)
		FV.Name = "CameraShake"
		for ShakeNum = 1, Times do
			swait()
			local ef = Power
			if ef >= 1 then
				Humanoid.CameraOffset = Vector3.new(math.random(-ef, ef), math.random(-ef, ef), math.random(-ef, ef))
			else
				ef = Power * 10
				Humanoid.CameraOffset = Vector3.new(math.random(-ef, ef) / 10, math.random(-ef, ef) / 10, math.random(-ef, ef) / 10)
			end
		end
		Humanoid.CameraOffset = Vector3.new(0, 0, 0)
		FV:Destroy()
	end))
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
			cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vec3(0, 0, 0)
	end))
end
function CamShake(Part, Distan, Power, Times)
	local de = Part.Position
	for i, v in pairs(workspace:children()) do
		if v:IsA("Model") and v:findFirstChild("Humanoid") then
			for _, c in pairs(v:children()) do
				if c.ClassName == "Part" and Distan > (c.Position - de).magnitude then
					do
						local Noob = v.Humanoid
						if Noob ~= nil then
							coroutine.resume(coroutine.create(function()
								FV = Instance.new("BoolValue", Noob)
								FV.Name = "CameraShake"
								for ShakeNum = 1, Times do
									swait()
									local ef = Power
									if ef >= 1 then
										Humanoid.CameraOffset = Vector3.new(math.random(-ef, ef), math.random(-ef, ef), math.random(-ef, ef))
									else
										ef = Power * 10
										Humanoid.CameraOffset = Vector3.new(math.random(-ef, ef) / 10, math.random(-ef, ef) / 10, math.random(-ef, ef) / 10)
									end
								end
								Humanoid.CameraOffset = Vector3.new(0, 0, 0)
								FV:Destroy()
							end))
							CameraShake(Times, Power, Noob)
						end
					end
				end
			end
		end
	end
end
function chatfunc(text, color)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("TalkingBillBoard") ~= nil then
			Character:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local naeeym2 = Instance.new("BillboardGui", Character)
		naeeym2.Size = UDim2.new(0, 100, 0, 40)
		naeeym2.StudsOffset = Vector3.new(0, 3, 0)
		naeeym2.Adornee = Character.Head
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SciFi"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = color
		tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local tecks3 = Instance.new("TextLabel", naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "SciFi"
		tecks3.TextSize = 30
		tecks3.TextStrokeTransparency = 0
		tecks3.TextColor3 = Color3.new(0, 0, 0)
		tecks3.TextStrokeColor3 = color
		tecks3.Size = UDim2.new(1, 0, 0.5, 0)
		coroutine.resume(coroutine.create(function()
			while true do
				swait(1)
				if chaosmode == true then
					tecks2.TextColor3 = BrickColor.random().Color
					tecks3.TextStrokeColor3 = BrickColor.random().Color
				end
				tecks2.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
				tecks3.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
				tecks2.Rotation = math.random(-5, 5)
				tecks3.Rotation = math.random(-5, 5)
			end
		end))
		for i = 1, string.len(text) do
			CFuncs.Sound.Create("rbxassetid://274118116", char, 0.25, 0.115)
			tecks2.Text = string.sub(text, 1, i)
			tecks3.Text = string.sub(text, 1, i)
			swait(1)
		end
		wait(1)
		local randomrot = math.random(1, 2)
		if randomrot == 1 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation - 0.75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks2.TextTransparency = tecks2.TextTransparency + 0.04
				tecks3.Rotation = tecks2.Rotation + 0.75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks3.TextTransparency = tecks2.TextTransparency + 0.04
			end
		elseif randomrot == 2 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation + 0.75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks2.TextTransparency = tecks2.TextTransparency + 0.04
				tecks3.Rotation = tecks2.Rotation - 0.75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks3.TextTransparency = tecks2.TextTransparency + 0.04
			end
		end
		naeeym2:Destroy()
	end)
	chat()
end
local Create = LoadLibrary("RbxUtility").Create
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
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end
	},
	LongSound = {
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
				game:GetService("Debris"):AddItem(S, 30)
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
	},
	CreateTemplate = {}
}
function New(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Really black")
local starcolor = BrickColor.new("Really black")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local maincolor = BrickColor.new("Really black")
local m = Instance.new("Model", char)
local m2 = Instance.new("Model", char)
local m3 = Instance.new("Model", char)
local mw1 = Instance.new("Model", char)
local mw2 = Instance.new("Model", char)
local extrawingmod1 = Instance.new("Model", char)
local extrawingmod2 = Instance.new("Model", char)
function CreateParta(parent, transparency, reflectance, material, brickcolor)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = parent
	p.Size = Vector3.new(0.1, 0.1, 0.1)
	p.Transparency = transparency
	p.Reflectance = reflectance
	p.CanCollide = false
	p.Locked = true
	p.BrickColor = brickcolor
	p.Material = material
	return p
end
function CreateMesh(parent, meshtype, x1, y1, z1)
	local mesh = Instance.new("SpecialMesh", parent)
	mesh.MeshType = meshtype
	mesh.Scale = Vector3.new(x1 * 10, y1 * 10, z1 * 10)
	return mesh
end
function CreateSpecialMesh(parent, meshid, x1, y1, z1)
	local mesh = Instance.new("SpecialMesh", parent)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = meshid
	mesh.Scale = Vector3.new(x1, y1, z1)
	return mesh
end
function CreateSpecialGlowMesh(parent, meshid, x1, y1, z1)
	local mesh = Instance.new("SpecialMesh", parent)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = meshid
	mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
	mesh.Scale = Vector3.new(x1, y1, z1)
	mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
	return mesh
end
function CreateWeld(parent, part0, part1, C1X, C1Y, C1Z, C1Xa, C1Ya, C1Za, C0X, C0Y, C0Z, C0Xa, C0Ya, C0Za)
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X, C1Y, C1Z) * CFrame.Angles(C1Xa, C1Ya, C1Za)
	weld.C0 = CFrame.new(C0X, C0Y, C0Z) * CFrame.Angles(C0Xa, C0Ya, C0Za)
	return weld
end
local handlex = CreateParta(mw2, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0, 0, 0)
local handlexweld = CreateWeld(handlex, tors, handlex, 0, -1.5, -1.05, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
	rn = CreateParta(mw2, 0, 0, "Neon", halocolor)
	CreateMesh(rn, "Brick", 0.25, 0.1, 0.1)
	CreateWeld(rn, handlex, rn, 0, 1, 0, math.rad(0), math.rad(0), math.rad(valuaring), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
end

local handle = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local handleweld = CreateWeld(handle, tors, handle, 0, -1.5, -1.05, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing1 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing1weld = CreateWeld(lwing1, handle, lwing1, 3, 0, 0, math.rad(5), math.rad(0), math.rad(12.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing1, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing1, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing1, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing1, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing2 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing2weld = CreateWeld(lwing2, handle, lwing2, 4, 1, 0, math.rad(10), math.rad(0), math.rad(25), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing2, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing2, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing2, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing2, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing3 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing3weld = CreateWeld(lwing3, handle, lwing3, 4.75, 2, 0, math.rad(15), math.rad(0), math.rad(37.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing3, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing3, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing3, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing3, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing4 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing4weld = CreateWeld(lwing4, handle, lwing4, 5.75, 3, 0, math.rad(20), math.rad(0), math.rad(50), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing4, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing4, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing4, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing4, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing5 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing5weld = CreateWeld(lwing5, handle, lwing5, 6.75, 4, 0, math.rad(25), math.rad(0), math.rad(62.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing5, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing5, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing5, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing5, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local lwing6 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local lwing6weld = CreateWeld(lwing6, handle, lwing6, 7.75, 5, 0, math.rad(30), math.rad(0), math.rad(75), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing6, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, lwing6, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, lwing6, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod1, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, lwing6, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing1 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing1weld = CreateWeld(rwing1, handle, rwing1, -3, 0, 0, math.rad(5), math.rad(0), math.rad(-12.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing1, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing1, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing1, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing1, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing2 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing2weld = CreateWeld(rwing2, handle, rwing2, -4, 1, 0, math.rad(10), math.rad(0), math.rad(-25), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing2, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing2, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing2, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing2, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing3 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing3weld = CreateWeld(rwing3, handle, rwing3, -4.75, 2, 0, math.rad(15), math.rad(0), math.rad(-37.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing3, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing3, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing3, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(mw2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing3, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing4 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing4weld = CreateWeld(rwing4, handle, rwing4, -5.75, 3, 0, math.rad(20), math.rad(0), math.rad(-50), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing4, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing4, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing4, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing4, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing5 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing5weld = CreateWeld(rwing5, handle, rwing5, -6.75, 4, 0, math.rad(25), math.rad(0), math.rad(-62.5), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing5, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing5, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing5, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing5, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
local rwing6 = CreateParta(m, 1, 1, "Neon", maincolor)
CreateMesh(handle, "Brick", 0.5, 0.5, 0.5)
local rwing6weld = CreateWeld(rwing6, handle, rwing6, -7.75, 3, 0, math.rad(30), math.rad(0), math.rad(-75), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing6, wed, 0, 0, 0.25, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 0.5)
CreateWeld(wed, rwing6, wed, 0, 0, 0.25, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 0.5, 3)
CreateWeld(wed, rwing6, wed, 0, -0.25, 1.75, math.rad(0), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
wed = CreateParta(extrawingmod2, 0, 0, "Neon", halocolor)
CreateMesh(wed, "Wedge", 0.05, 3, 0.5)
CreateWeld(wed, rwing6, wed, 0, -1.75, 0.25, math.rad(90), math.rad(90), math.rad(90), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m2, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 1.02, 1.02, 1.02)
CreateWeld(ran, larm, ran, 0, 0.15, 0, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 0.9, 0.9, 1.025)
CreateWeld(ran, larm, ran, 0, 0.155, 0, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 1.025, 0.9, 0.9)
CreateWeld(ran, larm, ran, 0, 0.155, -0.025, math.rad(0), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(gan, "Brick", 1.075, 0.1, 1.075)
CreateWeld(gan, larm, gan, 0, 0.5, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(gan, "Brick", 1.075, 0.1, 1.075)
CreateWeld(gan, larm, gan, 0, 0.75, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m2, 0, 0, "Neon", halocolor2)
CreateMesh(gan, "Brick", 1.095, 0.035, 1.095)
CreateWeld(gan, larm, gan, 0, 0.5, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m2, 0, 0, "Neon", halocolor2)
CreateMesh(gan, "Brick", 1.095, 0.035, 1.095)
CreateWeld(gan, larm, gan, 0, 0.75, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gane = CreateParta(m3, 0, 0, "SmoothPlastic", lunacolor2)
CreateMesh(gane, "Brick", 1.0625, 0.2, 1.0625)
CreateWeld(gane, larm, gane, 0, 0.6, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
star = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateSpecialMesh(star, "http://www.roblox.com/asset/?id=45428961", 2.5, 2.5, 2.5)
CreateWeld(star, larm, star, 0, 0.475, 0.6, math.rad(90), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
starl = CreateParta(m3, 0, 0, "SmoothPlastic", starcolor)
CreateSpecialMesh(starl, "http://www.roblox.com/asset/?id=45428961", 1.95, 2.55, 1.95)
CreateWeld(starl, larm, starl, 0, 0.475, 0.6, math.rad(90), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, larm, dotsec, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, larm, dotseca, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, larm, dotsecb, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m2, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 1.02, 1.02, 1.02)
CreateWeld(ran, rarm, ran, 0, 0.15, 0, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 0.9, 0.9, 1.025)
CreateWeld(ran, rarm, ran, 0, 0.155, 0, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
ran = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(ran, "Wedge", 1.025, 0.9, 0.9)
CreateWeld(ran, rarm, ran, 0, 0.155, -0.025, math.rad(0), math.rad(-90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(gan, "Brick", 1.075, 0.1, 1.075)
CreateWeld(gan, rarm, gan, 0, 0.5, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(gan, "Brick", 1.075, 0.1, 1.075)
CreateWeld(gan, rarm, gan, 0, 0.75, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m2, 0, 0, "Neon", halocolor2)
CreateMesh(gan, "Brick", 1.095, 0.035, 1.095)
CreateWeld(gan, rarm, gan, 0, 0.5, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gan = CreateParta(m2, 0, 0, "Neon", halocolor2)
CreateMesh(gan, "Brick", 1.095, 0.035, 1.095)
CreateWeld(gan, rarm, gan, 0, 0.75, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
gane = CreateParta(m3, 0, 0, "SmoothPlastic", lunacolor2)
CreateMesh(gane, "Brick", 1.0625, 0.2, 1.0625)
CreateWeld(gane, rarm, gane, 0, 0.6, 0, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
star = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateSpecialMesh(star, "http://www.roblox.com/asset/?id=45428961", 2.5, 2.5, 2.5)
CreateWeld(star, rarm, star, 0, -0.475, 0.6, math.rad(90), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
starl = CreateParta(m3, 0, 0, "SmoothPlastic", starcolor)
CreateSpecialMesh(starl, "http://www.roblox.com/asset/?id=45428961", 1.95, 2.55, 1.95)
CreateWeld(starl, rarm, starl, 0, -0.475, 0.6, math.rad(90), math.rad(90), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, -0.2, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, -0.4, 0.635, -0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, 0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, -0.2, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsec = CreateParta(m3, 0, 0, "Neon", halocolor)
CreateMesh(dotsec, "Sphere", 0.1, 0.1, 0.15)
CreateWeld(dotsec, rarm, dotsec, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotseca = CreateParta(m, 0, 0, "SmoothPlastic", wepcolor)
CreateMesh(dotseca, "Sphere", 0.2, 0.2, 0.1)
CreateWeld(dotseca, rarm, dotseca, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
dotsecb = CreateParta(m2, 0, 0, "SmoothPlastic", lunacolor)
CreateMesh(dotsecb, "Sphere", 0.15, 0.15, 0.125)
CreateWeld(dotsecb, rarm, dotsecb, -0.4, 0.635, 0.5, math.rad(0), math.rad(0), math.rad(0), 0, 0, 0, math.rad(0), math.rad(0), math.rad(0))
for i, v in pairs(m:GetChildren()) do
	if v:IsA("Part") then
		v.BrickColor = BrickColor.new("Really black")
		v.Material = "Glass"
	end
end
for i, v in pairs(m2:GetChildren()) do
	if v:IsA("Part") then
		v.BrickColor = BrickColor.new("Crimson")
		v.Material = "Granite"
	end
end
for i, v in pairs(m3:GetChildren()) do
	if v:IsA("Part") then
		v.BrickColor = BrickColor.new("Really red")
		v.Material = "Neon"
	end
end
for i, v in pairs(mw2:GetChildren()) do
	if v:IsA("Part") then
		v.BrickColor = BrickColor.new("Really red")
		v.Material = "Neon"
	end
end
for i, v in pairs(mw1:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1
		v.BrickColor = BrickColor.new("Really red")
		v.Material = "Neon"
	end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1
		v.BrickColor = BrickColor.new("White")
		v.Material = "Neon"
	end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1
		v.BrickColor = BrickColor.new("White")
		v.Material = "Neon"
	end
end

FHead = New("Part",char,"FHead",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FHead,"Mesh",{Scale = Vector3.new(1.25999999, 1.5, 1.25999999),})
FHead.Transparency = 1
Weld = New("Weld",FHead,"mot",{Part0 = FHead,Part1 = char.Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
FHead.CanCollide = false



local MAINRUINCOLOR = BrickColor.new("Really red")
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
	Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
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
Player = game:GetService("Players").LocalPlayer
Character = game.Workspace.non
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
local sine = 0
local change = 1
player = nil
local toggleTag = true
local txt = Instance.new("BillboardGui", Head)
txt.Adornee = nil
txt.Name = "NameDetect"
txt.Size = UDim2.new(4, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-8, 5.333333333333333, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(5, 0, 3.5, 0)
text.FontSize = "Size8"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Fantasy"
text.TextStrokeColor3 = Color3.new(1, 0, 0)
text.TextColor3 = Color3.new(0, 0, 0)
text.Text = "Sweet Dreams"
function RecolorTextAndRename(name, col1, col2)
	text.TextStrokeColor3 = col2
	text.TextColor3 = col1
	text.Text = name
end
mouse = Player:GetMouse()
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
local Stats = Instance.new("BoolValue")
Stats.Name = "Stats"
Stats.Parent = Character
local Atk = Instance.new("NumberValue")
Atk.Name = "Damage"
Atk.Parent = Stats
Atk.Value = 0
local Def = Instance.new("NumberValue")
Def.Name = "Defense"
Def.Parent = Stats
Def.Value = 1
local Speed = Instance.new("NumberValue")
Speed.Name = "Speed"
Speed.Parent = Stats
Speed.Value = 1
local Mvmt = Instance.new("NumberValue")
Mvmt.Name = "Movement"
Mvmt.Parent = Stats
Mvmt.Value = 1
local donum = 0
function part(formfactor, parent, reflectance, transparency, brickcolor, name, size)
	local fp = it("Part")
	fp.formFactor = formfactor
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = Torso.Position
	NoOutline(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local mesh = it(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		if meshid ~= "nil" then
			mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end
function weld(parent, part0, part1, c0)
	local weld = it("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0
	return weld
end
local Color1 = Torso.BrickColor
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
	while wait() do
		for i = 0, 50.8 do
			swait()
			g = g + 5
		end
		for i = 0, 50.8 do
			swait()
			r = r - 5
		end
		for i = 0, 50.8 do
			swait()
			b = b + 5
		end
		for i = 0, 50.8 do
			swait()
			g = g - 5
		end
		for i = 0, 50.8 do
			swait()
			r = r + 5
		end
		for i = 0, 50.8 do
			swait()
			b = b - 5
		end
	end
end))
function so(id, par, vol, pit)
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait()
		sou:play()
		game:GetService("Debris"):AddItem(sou, 6)
	end))
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
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / math.sin(theta)
		startInterp = math.sin((t - 1) * theta) * invSinTheta
		finishInterp = math.sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
local CFrameFromTopBack = function(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b = a, b
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = Instance.new("WedgePart", m)
		game:GetService("Debris"):AddItem(w1, 5)
		w1.Material = "SmoothPlastic"
		w1.FormFactor = "Custom"
		w1.BrickColor = BrickColor.new("Really red")
		w1.Transparency = 0
		w1.Reflectance = 0
		w1.Material = "SmoothPlastic"
		w1.CanCollide = false
		local l1 = Instance.new("PointLight", w1)
		l1.Color = Color3.new(170, 0, 0)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Instance.new("SpecialMesh", w1)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
		w1:BreakJoints()
		w1.Anchored = true
		w1.Parent = workspace
		w1.Transparency = 0.7
		table.insert(Effects, {
			w1,
			"Disappear",
			0.01
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Instance.new("WedgePart", m)
		game:GetService("Debris"):AddItem(w2, 5)
		w2.Material = "SmoothPlastic"
		w2.FormFactor = "Custom"
		w2.BrickColor = BrickColor.new("Really red")
		w2.Transparency = 0
		w2.Reflectance = 0
		w2.Material = "SmoothPlastic"
		w2.CanCollide = false
		local l2 = Instance.new("PointLight", w2)
		l2.Color = Color3.new(170, 0, 0)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Instance.new("SpecialMesh", w2)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
		w2:BreakJoints()
		w2.Anchored = true
		w2.Parent = workspace
		w2.Transparency = 0.7
		table.insert(Effects, {
			w2,
			"Disappear",
			0.01
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)

end
function ShowDamage(Pos, Text, Time, Color)
	local Rate = 0.03333333333333333
	local Pos = Pos or Vector3.new(0, 0, 0)
	local Text = Text or ""
	local Time = Time or 2
	local Color = Color or Color3.new(1, 0, 1)
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart
	})
	local TextLabel = Create("TextLabel")({
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui
	})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = Time / Rate
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = Frame / Frames
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if magni >= mag and c.Name ~= Player.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0, "rbxassetid://231917784", 0)
				end
			end
		end
	end
end
function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if magni >= mag and c.Name ~= Player.Name then
					MagicBlock(BrickColor.new("Pastel light blue"), head.CFrame, 5, 5, 5, 1, 1, 1, 0.05)
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0, "rbxassetid://231917784", 0)
				end
			end
		end
	end
end
function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function SkullEffect(brickcolor, cframe, x1, y1, z1, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=4770583", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	CF = prt.CFrame
	coroutine.resume(coroutine.create(function(Part, Mesh, TehCF)
		for i = 0, 1, 0.2 do
			wait()
			Part.CFrame = CF * cf(0, 0, -0.4)
		end
		for i = 0, 1, delay do
			wait()
			Mesh.Scale = Mesh.Scale
		end
		for i = 0, 1, 0.1 do
			wait()
			Part.Transparency = i
		end
		Part.Parent = nil
	end), prt, msh, CF)
end
function MagicBlock(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	prt.CFrame = prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicBlockSteady(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicSphere(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.CFrame = prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicBlockSteady(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicShock(brickcolor, cframe, x1, y1, x3, y3, delay, rottype)
	local prt = part(3, char, 1, 1, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	local dec = decal(prt.Color, "http://www.roblox.com/asset/?id=874580939", "Front", prt)
	local dec2 = decal(prt.Color, "http://www.roblox.com/asset/?id=874580939", "Front", prt)
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, 0.01))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			dec.Transparency = i
			dec2.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, 0)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicShockAlt(brickcolor, cframe, x1, y1, x3, y3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, 0.01))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			prt.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, 0)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicShockAltCircle(brickcolor, cframe, x1, z1, x3, z3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, 1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0.1, 0)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, -0.1, 0)
			end
			prt.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, 0, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end



function MagicShockTrailAlt(brickcolor, cframe, x1, y1, z1, x3, y3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			prt.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, 0)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicShockTrailAlt2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, rottype)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.Material = "Neon"
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		local rtype = rottype
		for i = 0, 1, delay do
			swait()
			if rtype == 1 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, 0.1)
			elseif rtype == 2 then
				prt.CFrame = prt.CFrame * CFrame.Angles(0, 0, -0.1)
			end
			prt.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicBlock2(brickcolor, cframe, Parent, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, char, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = false
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	local wld = weld(prt, prt, Parent, cframe)
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
		for i = 0, 1, delay do
			wait()
			Weld.C0 = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cframe
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh, wld)
end
function MagicBlock3(brickcolor, cframe, Parent, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = false
	prt.CFrame = cframe
	msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	local wld = weld(prt, prt, Parent, euler(0, 0, 0) * cf(0, 0, 0))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
		for i = 0, 1, delay do
			wait()
			Weld.C0 = euler(i * 20, 0, 0)
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh, wld)
end
function MagicCircle2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait()
			Part.CFrame = Part.CFrame
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
			local prt2 = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
			prt2.Anchored = true
			prt2.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh2 = mesh("SpecialMesh", prt2, "Sphere", "", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
			game:GetService("Debris"):AddItem(prt2, 2)
			coroutine.resume(coroutine.create(function(Part, Mesh)
				for i = 0, 1, 0.1 do
					wait()
					Part.CFrame = Part.CFrame * cf(0, 0.5, 0)
				end
				Part.Parent = nil
			end), prt2, msh2)
		end
		for i = 0, 1, delay * 2 do
			wait()
			Part.CFrame = Part.CFrame
			Mesh.Scale = vt(x1 + x3 - (x1 + x3) * i, y1 + y3 - (y1 + y3) * i, z1 + z3 - (z1 + z3) * i)
		end
		Part.Parent = nil
	end), prt, msh)
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, CF, Numbb, randnumb)
		CF = Part.CFrame
		Numbb = 0
		randnumb = math.random() / 10
		rand1 = math.random() / 10
		for i = 0, 1, rand1 do
			wait()
			CF = CF * cf(0, math.random() / 2, 0)
			Part.CFrame = CF * euler(Numbb, 0, 0)
			Part.Transparency = i
			Numbb = Numbb + randnumb
		end
		Part.Parent = nil
	end), prt, CF, Numbb, randnumb)
end
function MagicWaveThing(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1051557", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait()
			Part.CFrame = Part.CFrame * euler(0, 0.7, 0)
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			wait()
			Part.CFrame = Part.CFrame * cf(0, y3 / 2, 0)
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end
function StravEffect(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * cf(x, y, z)
	msh = mesh("SpecialMesh", prt, "FileMesh", "rbxassetid://168892363", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh, ex, why, zee)
		local num = math.random()
		local num2 = math.random(-3, 2) + math.random()
		local numm = 0
		for i = 0, 1, delay * 2 do
			swait()
			Part.CFrame = cframe * euler(0, numm * num * 10, 0) * cf(ex, why, zee) * cf(-i * 10, num2, 0)
			Part.Transparency = i
			numm = numm + 0.01
		end
		Part.Parent = nil
		Mesh.Parent = nil
	end), prt, msh, x, y, z)
end
function dmgstart(dmg, what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end
function dmgstop()
	hitcon:disconnect()
end
function Cloak()
	Face.Parent = nil
	cloaked = true
	for _, v in pairs(Torso.Parent:children()) do
		if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.2 do
					wait()
					v.Transparency = i
				end
				v.Transparency = 1
			end))
		end
		if v.className == "Hat" then
			hatp = v.Handle
			coroutine.resume(coroutine.create(function(derp)
				for i = 0, 1, 0.2 do
					wait()
					derp.Transparency = i
				end
				derp.Transparency = 1
			end), hatp)
		end
	end
	for _, v in pairs(m:children()) do
		if v.className == "Part" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.2 do
					wait()
					v.Transparency = i
				end
				v.Transparency = 1
			end))
		end
	end
end
function UnCloak()
	so("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
	Face.Parent = Head
	cloaked = false
	for _, v in pairs(Torso.Parent:children()) do
		if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					wait()
					v.Transparency = v.Transparency - 0.1
				end
				v.Transparency = 0
			end))
		end
		if v.className == "Hat" then
			hatp = v.Handle
			coroutine.resume(coroutine.create(function(derp)
				for i = 0, 1, 0.1 do
					wait()
					derp.Transparency = derp.Transparency - 0.1
				end
				derp.Transparency = 0
			end), hatp)
		end
	end
	for _, v in pairs(m:children()) do
		if v.className == "Part" and v.Name ~= "hitbox" and v.Name ~= "tip" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					wait()
					v.Transparency = v.Transparency - 0.1
				end
				v.Transparency = 0
			end))
			v.Transparency = 0
		end
	end
end
local origcolor = BrickColor.new("Pastel light blue")
function Explode(rad, par, pitch, vol, mindam, maxdam)
	local expart = Instance.new("Part", char)
	local expart2 = Instance.new("Part", char)
	local rin = Instance.new("Part", char)
	local rin2 = Instance.new("Part", char)
	local partMesh = Instance.new("SpecialMesh", expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh", expart2)
	partMesh2.MeshType = "Sphere"
	local partMesh3 = Instance.new("SpecialMesh", rin)
	partMesh3.MeshType = "Brick"
	local partMesh4 = Instance.new("SpecialMesh", rin2)
	partMesh4.MeshType = "Brick"
	CFuncs.Sound.Create("rbxassetid://165970126", expart, vol, pitch)
	partMesh.Scale = vt(rad, rad, rad)
	expart.Size = vt(1, 1, 1)
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad, rad, rad)
	expart2.Size = vt(1.15, 1.15, 1.15)
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = par.BrickColor
	expart2.CFrame = par.CFrame
	rin.Size = vt(1.15, 1.15, 1.15)
	rin.Transparency = 1
	rin.Anchored = true
	rin.Material = "Neon"
	rin.BrickColor = par.BrickColor
	rin.CFrame = par.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
	rin2.Size = vt(1.15, 1.15, 1.15)
	rin2.Transparency = 1
	rin2.Anchored = true
	rin2.Material = "Neon"
	rin2.BrickColor = par.BrickColor
	rin2.CFrame = par.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
	partMesh3.Scale = vt(0, 1, 0)
	partMesh4.Scale = vt(0, 1, 0)
	local dec2 = Instance.new("Decal", rin)
	dec2.Face = "Top"
	dec2.Texture = "http://www.roblox.com/asset/?id=874580939"
	dec2.Parent = rin
	local dec2b = dec2:Clone()
	dec2b.Face = "Bottom"
	dec2b.Parent = rin
	local dec2a = Instance.new("Decal", rin2)
	dec2a.Face = "Top"
	dec2a.Texture = "http://www.roblox.com/asset/?id=874580939"
	dec2a.Parent = rin2
	local dec2ab = dec2a:Clone()
	dec2ab.Face = "Bottom"
	dec2ab.Parent = rin2
	expart.CanCollide = false
	expart2.CanCollide = false
	rin.CanCollide = false
	rin2.CanCollide = false
	MagniDamage(par, rad * 0, 0, 0, 0, "Normal")
	local value = 1 * rad / 6.5
	for i = 0, 199 do
		partMesh.Scale = partMesh.Scale + vt(value, value, value)
		expart.CFrame = expart.CFrame
		partMesh2.Scale = partMesh2.Scale + vt(value, value, value)
		expart2.CFrame = expart.CFrame
		value = value - 0.035 * rad / 30
		if value < 7.5 then
			partMesh3.Scale = partMesh3.Scale + vt(rad / 5, 0, rad / 5)
			rin.CFrame = rin.CFrame * CFrame.Angles(0, math.rad(1), 0)
			partMesh4.Scale = partMesh4.Scale + vt(rad / 7.5, 0, rad / 7.5)
			rin2.CFrame = rin2.CFrame * CFrame.Angles(0, math.rad(-1), 0)
		end
		if value < 0 then
			dec2.Transparency = dec2.Transparency + 0.025
			dec2a.Transparency = dec2a.Transparency + 0.025
			dec2b.Transparency = dec2b.Transparency + 0.025
			dec2ab.Transparency = dec2ab.Transparency + 0.025
			expart.Transparency = expart.Transparency + 0.025
			expart2.Transparency = expart2.Transparency + 0.025
			rin.Transparency = rin.Transparency + 0.025
			rin2.Transparency = rin2.Transparency + 0.025
		end
		swait()
	end
	game:GetService("Debris"):AddItem(expart, 1)
	game:GetService("Debris"):AddItem(expart2, 1)
	game:GetService("Debris"):AddItem(rin, 1)
	game:GetService("Debris"):AddItem(rin2, 1)
end
function ExplodeShort(rad, par, pitch, vol, mindam, maxdam)
	local expart = Instance.new("Part", char)
	local expart2 = Instance.new("Part", char)
	local partMesh = Instance.new("SpecialMesh", expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh", expart2)
	partMesh2.MeshType = "Sphere"
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=142070127", expart, vol, pitch)
	partMesh.Scale = vt(rad, rad, rad)
	expart.Size = vt(1, 1, 1)
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad, rad, rad)
	expart2.Size = vt(1.15, 1.15, 1.15)
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = par.BrickColor
	expart2.CFrame = par.CFrame
	expart.CanCollide = false
	expart2.CanCollide = false
	MagniDamage(par, rad * 0, 0, 0, 0, "Normal")
	local value = 1 * rad / 6.5
	for i = 0, 75 do
		partMesh.Scale = partMesh.Scale + vt(value, value, value)
		expart.CFrame = expart.CFrame
		partMesh2.Scale = partMesh2.Scale + vt(value, value, value)
		expart2.CFrame = expart.CFrame
		value = value - 0.035 * rad / 5
		if value < 0 then
			value = 0
			expart.Transparency = expart.Transparency + 0.05
			expart2.Transparency = expart2.Transparency + 0.05
		end
		swait()
	end
	game:GetService("Debris"):AddItem(expart, 1)
	game:GetService("Debris"):AddItem(expart2, 1)
end
function AreaDanger(rad, par, mindam, maxdam)
	local expart = Instance.new("Part", char)
	local partMesh = Instance.new("SpecialMesh", expart)
	CFuncs.Sound.Create("rbxassetid://231917784", expart, 1.5, 1.15)
	partMesh.MeshType = "Sphere"
	partMesh.Scale = vt(rad, rad, rad)
	expart.Size = vt(1, 1, 1)
	expart.Transparency = 0.5
	expart.Anchored = true
	expart.Material = "Neon"
	expart.CanCollide = false
	expart.BrickColor = par.BrickColor
	expart.CFrame = par.CFrame
	local value = 1 * rad / 5
	MagicBlock(origcolor, expart.CFrame, 0, 0, 0, rad / 2, rad / 2, rad / 2, 0.1)
	for i = 0, 14 do
		wait()
		partMesh.Scale = partMesh.Scale + vt(value, value, value)
		expart.CFrame = expart.CFrame
		value = value - 0.035 * rad
		if value < 0 then
			value = 0
		end
	end
	wait(0.25)
	CFuncs.Sound.Create("rbxassetid://588738544", expart, 1.5, 1)
	wait(0.5)
	CFuncs.Sound.Create("rbxassetid://588737825", expart, 1.5, 1)
	CFuncs.Sound.Create("rbxassetid://231917784", expart, 1.5, 0.75)
	MagniDamageWithEffect(par, rad, 0, 0, 0, "Normal")
	MagicBlock(origcolor, expart.CFrame, rad * 2, rad * 2, rad * 2, 0.1, 0.1, 0.1, 0.025)
	for i = 0, 14 do
		wait()
		partMesh.Scale = partMesh.Scale + vt(value, value, value)
		expart.CFrame = expart.CFrame
		value = value - 0.035 * rad / 2
	end
	expart.Transparency = 1
	game:GetService("Debris"):AddItem(expart, 5)
end
function Swarmsplosions(negrad, rad, par, mindam, maxdam)
	CFuncs.Sound.Create("rbxassetid://588737825", par, 2.5, 2)
	CFuncs.Sound.Create("rbxassetid://231917784", par, 2.5, 1)
	CFuncs.Sound.Create("rbxassetid://231917744", par, 2.5, 1)
	CFuncs.Sound.Create("rbxassetid://233856106", par, 2.5, 1)
	MagniDamageWithEffect(par, 0, 0, 0, 0, "Normal")
	MagicBlock(origcolor, par.CFrame, 5, 5, 5, 5, 5, 5, 0.025)
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor, par.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 2, 2, 5, -0.01, -0.01, 25, 0.005, math.random(1, 2))
	end
	for i = 0, 24 do
		local expart = Instance.new("Part", char)
		expart.Transparency = 1
		expart.Anchored = true
		expart.CanCollide = false
		expart.CFrame = par.CFrame * CFrame.new(math.random(negrad, rad), math.random(negrad, rad), math.random(negrad, rad))
		CFuncs.Sound.Create("rbxassetid://588737825", expart, 1, 2)
		CFuncs.Sound.Create("rbxassetid://231917784", expart, 1.5, 1.15)
		MagniDamage(expart, rad / 0, 0, 0, 0, "Normal")
		MagicBlock(origcolor, expart.CFrame, rad, rad, rad, 0.1, 0.1, 0.1, 0.025)
		for i = 0, 9 do
			MagicShockTrailAlt2(origcolor, expart.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 2, 2, 5, -0.01, -0.01, 5, 0.05, math.random(1, 2))
		end
		game:GetService("Debris"):AddItem(expart, 2)
		wait(0.1)
	end
end
function EXterPlosion(par)
	CFuncs.Sound.Create("rbxassetid://919941001", par, 10, 1)
	CFuncs.Sound.Create("rbxassetid://138213851", par, 5, 0.85)
	CFuncs.Sound.Create("rbxassetid://157878578", par, 5, 0.2)
	CFuncs.Sound.Create("rbxassetid://233856106", par, 2.5, 1)
	MagniDamageWithEffect(par, 0, 0, 0, 0, "Normal")
	MagicBlock(origcolor, par.CFrame, 5, 5, 5, 5, 5, 5, 0.005)
	MagicBlock(origcolor, par.CFrame, 0, 0, 0, 150, 150, 150, 0.1)
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor, par.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 50, 50, 5, -0.5, -0.5, 500, 0.1, math.random(1, 2))
	end
	for i = 0, 24 do
		MagicShockTrailAlt2(origcolor, par.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 50, 50, 5, -0.25, -0.25, 50, 0.005, math.random(1, 2))
	end
end
function ring(type, pos, scale, value)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = origcolor
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value
			end
			rng.Transparency = rng.Transparency + 0.01
			rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
		end
		rng:Destroy()
	end))
end
function wave(type, pos, scale, value)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = origcolor
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value
			end
			rng.Transparency = rng.Transparency + 0.01
			rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
		end
		rng:Destroy()
	end))
end
function wind(type, pos, scale, value, speed)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = origcolor
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value
			end
			rng.CFrame = rng.CFrame * CFrame.Angles(0, 0.025 * speed, 0)
			rng.Transparency = rng.Transparency + 0.01
			rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
		end
		rng:Destroy()
	end))
end
function groundwind(type, pos, scale, value, speed)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = origcolor
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value
			end
			rng.CFrame = rng.CFrame * CFrame.Angles(0, 0.025 * speed, 0)
			rng.Transparency = rng.Transparency + 0.01
			rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2 / 5, scaler2)
		end
		rng:Destroy()
	end))
end
function CameraManager()
	if TwoD and not CamInterrupt then
		if Humanoid.Health > 0 then
			Camera.CameraSubject = Humanoid
			Camera.CameraType = "Scriptable"
			Humanoid.AutoRotate = false
			if Booleans.GyroUse then
				Directer.MaxTorque = Vec3(0, huge, 0)
			else
				Directer.MaxTorque = Vec3(0, 0, 0)
			end
			if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
				if Booleans.CamFollow then
					CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
					Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
				else
					CPart.Position = RootPart.Position
				end
			else
				local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
				CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
			end
			Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
		else
			Camera.CameraSubject = Humanoid
			Camera.CameraType = "Custom"
			Controller.Disabled = false
		end
	end
end
function sphere(bonuspeed, type, pos, scale, value, color)
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
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	if rainbowmode == true then
		rng.Color = Color3.new(r / 255, g / 255, b / 255)
	end
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if rainbowmode == true then
				rng.Color = Color3.new(r / 255, g / 255, b / 255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			if chaosmode == true then
				rng.BrickColor = BrickColor.random()
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end
function sphereMK(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
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
	rngm.MeshType = "Sphere"
	rngm.Scale = vt(x1, y1, z1)
	if rainbowmode == true then
		rng.Color = Color3.new(r / 255, g / 255, b / 255)
	end
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
			if rainbowmode == true then
				rng.Color = Color3.new(r / 255, g / 255, b / 255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			if chaosmode == true then
				rng.BrickColor = BrickColor.random()
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
function sphereMKCharge(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 1
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = vt(x1, y1, z1)
	if rainbowmode == true then
		rng.Color = Color3.new(r / 255, g / 255, b / 255)
	end
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
			if rainbowmode == true then
				rng.Color = Color3.new(r / 255, g / 255, b / 255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
			if chaosmode == true then
				rng.BrickColor = BrickColor.random()
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency - 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
function dmg(dude)
print("no")
end
function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= Character and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end
function FaceMouse()
	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
function FaceMouse2()
	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
local ModeOfGlitch = 1
local storehumanoidWS = 16
function ExtinctiveHeartbreak()
	local targetted
	if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		targetted = mouse.Target.Parent
	end
	if targetted ~= nil then
		attack = true
		CFuncs.Sound.Create("rbxassetid://847061203", root, 2.5, 1)
		for i = 0, 9 do
			sphereMK(3, 0.25, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1, 1, 10, -0.01, BrickColor.new("Really black"), 0)
		end
		sphere(3, "Add", root.CFrame, vt(0, 0, 0), 0.25, BrickColor.new("Really black"))
		local originalpos = root.CFrame
		RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0, -2, 2)
		for i = 0, 9 do
			sphereMK(3, 0.25, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1, 1, 10, -0.01, BrickColor.new("Really black"), 0)
		end
		hum.WalkSpeed = 0
		targetted.Head.Anchored = true
		sphere(3, "Add", root.CFrame, vt(0, 0, 0), 0.25, BrickColor.new("Really black"))
		for i = 0, 2, 0.1 do
			swait()
			RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.4)
			LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.4)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.4)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(10)), 0.8)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * angles(math.rad(90), math.rad(0), math.rad(60)), 0.4)
		end
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter", targetted:WaitForChild("Torso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(0.5, 0, 0))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 2, 0),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			bld.Acceleration = vt(0, -25, 0)
			bld.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0, 0),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			bld.Speed = NumberRange.new(10, 50)
			bld.EmissionDirection = "Front"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500, 500)
			bld.RotSpeed = NumberRange.new(-500, 500)
		end))
		coroutine.resume(coroutine.create(function()
			bld = Instance.new("ParticleEmitter", targetted:WaitForChild("UpperTorso"))
			bld.LightEmission = 0.1
			bld.Texture = "rbxassetid://284205403"
			bld.Color = ColorSequence.new(Color3.new(0.5, 0, 0))
			bld.Rate = 500
			bld.Lifetime = NumberRange.new(1)
			bld.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 2, 0),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			bld.Acceleration = vt(0, -25, 0)
			bld.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0, 0),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			bld.Speed = NumberRange.new(10, 50)
			bld.EmissionDirection = "Front"
			bld.VelocitySpread = 25
			bld.Rotation = NumberRange.new(-500, 500)
			bld.RotSpeed = NumberRange.new(-500, 500)
		end))
		CameraEnshaking(5, 5)
		game:GetService("Debris"):AddItem(bld, 3)
		print("nullified")
		CFuncs.Sound.Create("rbxassetid://429400881", targetted.Head, 1, 1)
		for i = 0, 1, 0.1 do
			swait()
			RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.8)
			LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.8)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0.25, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.8)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(80)), 0.8)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.8)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.8)
		end
		CFuncs.Sound.Create("rbxassetid://847061203", root, 2.5, 1)
		for i = 0, 9 do
			sphereMK(3, 0.25, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1, 1, 10, -0.01, BrickColor.new("Really black"), 0)
		end
		sphere(3, "Add", root.CFrame, vt(0, 0, 0), 0.25, BrickColor.new("Really black"))
		root.CFrame = originalpos
		for i = 0, 9 do
			sphereMK(3, 0.25, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1, 1, 10, -0.01, BrickColor.new("Really black"), 0)
		end
		sphere(3, "Add", root.CFrame, vt(0, 0, 0), 0.25, BrickColor.new("Really black"))
		bld.Enabled = false
		attack = false
		hum.WalkSpeed = storehumanoidWS
	end
end
function PureBomb()
	attack = true
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = BrickColor.new("Toothpaste")
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
	orbm.Scale = vt(0, 0, 0)
	local scaled = 0.1
	local posid = 0
	CFuncs.Sound.Create("rbxassetid://136007472", orb, 1, 1)
	for i = 0, 5, 0.1 do
		swait()
		scaled = scaled - 0.001
		posid = posid - scaled
		orb.CFrame = rarm.CFrame * CFrame.new(0, -0.1 + posid / 1.05, 0)
		orbm.Scale = orbm.Scale + vt(scaled, scaled, scaled)
		sphereMKCharge(5, -0.25, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, BrickColor.new("Toothpaste"), 10)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-2 - 1 * math.cos(sine / 32))), 0.1)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3 + 1 * math.cos(sine / 32)), math.rad(0), math.rad(-10)), 0.1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(180), math.rad(20), math.rad(0)), 0.1)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30 + 5 * math.cos(sine / 30)), math.rad(-20)), 0.1)
	end
	for i = 0, 2, 0.1 do
		swait()
		orb.CFrame = rarm.CFrame * CFrame.new(0, -0.1 + posid / 1.05, 0)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-2 - 1 * math.cos(sine / 32))), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3 + 1 * math.cos(sine / 32)), math.rad(0), math.rad(-10)), 0.4)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(220), math.rad(20), math.rad(0)), 0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30 + 5 * math.cos(sine / 30)), math.rad(-20)), 0.4)
	end
	coroutine.resume(coroutine.create(function()
		orb.Anchored = false
		CFuncs.Sound.Create("rbxassetid://260433768", root, 1.25, 1)
		local a = Instance.new("Part", workspace)
		a.Name = "Direction"
		a.Anchored = true
		a.BrickColor = bc("Bright red")
		a.Material = "Neon"
		a.Transparency = 1
		a.CanCollide = false
		local ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 500)
		local ignore = orb
		local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		a.BottomSurface = 10
		a.TopSurface = 10
		local distance = (orb.CFrame.p - position).magnitude
		a.Size = Vector3.new(0.1, 0.1, 0.1)
		a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
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
				CameraEnshaking(10, 2.5)
				CFuncs.Sound.Create("rbxassetid://151304356", orb, 5, 1)
				MagniDamage(orb, 0, 0, 0, 0, "Normal")
				sphere(1, "Add", orb.CFrame, vt(orbm.Scale.x, orbm.Scale.y, orbm.Scale.z), 1, BrickColor.new("Toothpaste"))
				sphere(2, "Add", orb.CFrame, vt(orbm.Scale.x, orbm.Scale.y, orbm.Scale.z), 2, BrickColor.new("Toothpaste"))
				for i = 0, 9 do
					sphereMK(1, 2.5, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 5, 5, 50, -0.05, BrickColor.new("Toothpaste"), 0)
					sphereMK(2, 5, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 5, 5, 50, -0.05, BrickColor.new("Toothpaste"), 0)
				end
				orb.Anchored = true
				orb.Transparency = 1
				wait(8)
				orb:Destroy()
			end
		end)
	end))
	for i = 0, 1, 0.1 do
		swait()
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-2 - 1 * math.cos(sine / 32))), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-3 + 1 * math.cos(sine / 32)), math.rad(0), math.rad(-10)), 0.4)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.4)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(60), math.rad(20), math.rad(50)), 0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30 + 5 * math.cos(sine / 30)), math.rad(-20)), 0.4)
	end
	attack = false
end
function ChaosGroundStrike()
	attack = true
	for i = 0, 2, 0.1 do
		swait()
		RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-20)), 0.2)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(20)), 0.2)
	end
	CFuncs.Sound.Create("rbxassetid://438666141", root, 7.5, 1)
	CFuncs.Sound.Create("rbxassetid://1208650519", root, 7.5, 1)
	CameraEnshaking(4, 12)
	for i, v in pairs(FindNearestHead(Torso.CFrame.p, 52.5)) do
		if v:FindFirstChild("Head") then
			dmg(v)
		end
	end
	sphere(5, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(0, 0, 0), 1, BrickColor.random())
	sphere(10, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(0, 0, 0), 2, BrickColor.random())
	sphere(1, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(100, 0.1, 100), 0.01, BrickColor.random())
	for i = 0, 2, 0.1 do
		swait()
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.4)
	end
	attack = false
end
function ChaosBegone()
	attack = true
	chatfunc("WHY WONT YOU PEOPLE...", BrickColor.random().Color)
	for i = 0, 10, 0.1 do
		swait()
		RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(-20)), 0.2)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(140), math.rad(0), math.rad(20)), 0.2)
	end
	chatfunc("DIE!!", BrickColor.random().Color)
	CFuncs.Sound.Create("rbxassetid://438666141", char, 7.5, 1)
	CFuncs.Sound.Create("rbxassetid://1208650519", char, 7.5, 1)
	CameraEnshaking(5, 25)
	for i, v in pairs(FindNearestHead(Torso.CFrame.p, 1234567890)) do
		if v:FindFirstChild("Head") then
			dmg(v)
		end
	end
	sphere(5, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(0, 0, 0), 1000, BrickColor.random())
	sphere(10, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(0, 0, 0), 2000, BrickColor.random())
	sphere(1, "Add", root.CFrame * CFrame.new(0, -2.9, 0), vt(100000, 0.1, 100000), 0.01, BrickColor.random())
	for i = 0, 3, 0.1 do
		swait()
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-525, 525), -5, math.random(-525, 525)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-525, 525), -5, math.random(-525, 525)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-525, 525), -5, math.random(-525, 525)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		sphereMK(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-525, 525), -5, math.random(-525, 525)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.4)
	end
	attack = false
end
function orb_spawn_norm(positted, timer, color, MagniBoost, min, max, volEx, ShakePower, volSummon)
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	orb.BrickColor = color
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
	orb.CFrame = positted
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(1, 1, 1)
	CFuncs.Sound.Create("rbxassetid://183763506", orb, volSummon, 1)
	sphere(2.5, "Add", orb.CFrame, vt(1, 1, 1), 0.05, orb.BrickColor)
	coroutine.resume(coroutine.create(function()
		wait(timer)
		CameraEnshaking(3, ShakePower)
		orb.Transparency = 1
		MagniDamage(orb, 0 * MagniBoost, 0, 0, 0, "Normal")
		sphere(5, "Add", orb.CFrame, vt(1, 1, 1), 0.1 * MagniBoost, orb.BrickColor)
		CFuncs.Sound.Create("rbxassetid://192410089", orb, volEx, 0.7)
		wait(3)
		orb:Destroy()
	end))
end
function orb_spawn(positted, timer)
	local randomcol = math.random(1, 2)
	local orb = Instance.new("Part", char)
	orb.Anchored = true
	if randomcol == 1 then
		orb.BrickColor = BrickColor.new("White")
	elseif randomcol == 2 then
		orb.BrickColor = BrickColor.new("Really black")
	end
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
	orb.CFrame = positted
	orbm.Name = "SizeMesh"
	orbm.Scale = vt(1, 1, 1)
	CFuncs.Sound.Create("rbxassetid://183763506", orb, 1.5, 1)
	sphere(2.5, "Add", orb.CFrame, vt(1, 1, 1), 0.025, orb.BrickColor)
	for i = 0, 2 do
		sphereMK(5, 0.15, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 1.5, 1.5, 7.5, -0.015, orb.BrickColor, 0)
	end
	coroutine.resume(coroutine.create(function()
		wait(timer)
		CameraEnshaking(3, 2)
		orb.Transparency = 1
		MagniDamage(orb, 0, 0, 0, 0, "Normal")
		sphere(5, "Add", orb.CFrame, vt(1, 1, 1), 0.5, orb.BrickColor)
		for i = 0, 4 do
			sphereMK(5, 0.65, "Add", orb.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 2.5, 2.5, 15, -0.025, orb.BrickColor, 0)
		end
		CFuncs.Sound.Create("rbxassetid://192410089", orb, 2, 0.7)
		wait(3)
		orb:Destroy()
	end))
end
function scattercorrupt()
	attack = true
	local rot = 0
	local randomrotations = math.random(1, 2)
	local lookv = 2.5
	local power = 5
	sphere(1, "Add", root.CFrame, vt(1, 100000, 1), 0.5, BrickColor.new("Royal purple"))
	sphere(1, "Add", root.CFrame, vt(1, 1, 1), 0.75, BrickColor.new("Royal purple"))
	for i = 0, 9 do
		sphereMK(1, 1.5, "Add", root.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 10, 10, 45, -0.1, BrickColor.new("Royal purple"), 0)
	end
	CFuncs.Sound.Create("rbxassetid://180204650", char, 2.5, 0.6)
	CFuncs.Sound.Create("rbxassetid://233856079", char, 1, 0.5)
	CFuncs.Sound.Create("rbxassetid://1208650519", char, 2.5, 1)
	CFuncs.Sound.Create("rbxassetid://239000203", char, 0.5, 0.75)
	CFuncs.Sound.Create("rbxassetid://579687077", char, 0.5, 0.5)
	local hite = Instance.new("Part", char)
	hite.Anchored = true
	hite.CanCollide = false
	hite.FormFactor = 3
	hite.Name = "Ring"
	hite.Material = "Neon"
	hite.Size = Vector3.new(1, 1, 1)
	hite.Transparency = 1
	hite.TopSurface = 0
	hite.BottomSurface = 0
	hite.CFrame = root.CFrame * CFrame.new(0, -2.5, 0)
	local rem = Instance.new("Part", char)
	rem.Anchored = true
	rem.CanCollide = false
	rem.FormFactor = 3
	rem.Name = "Ring"
	rem.Material = "Neon"
	rem.Size = Vector3.new(1, 1, 1)
	rem.Transparency = 1
	rem.TopSurface = 0
	rem.BottomSurface = 0
	rem.CFrame = hite.CFrame
	local rem2 = rem:Clone()
	rem2.Parent = char
	rem2.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(90), 0)
	local rem3 = rem:Clone()
	rem3.Parent = char
	rem3.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(180), 0)
	local rem4 = rem:Clone()
	rem4.Parent = char
	rem4.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(270), 0)
	hite:Destroy()
	coroutine.resume(coroutine.create(function()
		for i = 0, 24 do
			swait(1)
			if randomrotations == 1 then
				rot = rot + 1
			elseif randomrotations == 2 then
				rot = rot - 1
			end
			power = power + 0.5
			lookv = lookv + 7.5
			rem.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(rot), 0)
			rem2.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(90), 0)
			rem3.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(180), 0)
			rem4.CFrame = rem.CFrame * CFrame.Angles(0, math.rad(270), 0)
			orb_spawn_norm(rem.CFrame + rem.CFrame.lookVector * lookv, 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(rem2.CFrame + rem2.CFrame.lookVector * lookv, 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(rem3.CFrame + rem3.CFrame.lookVector * lookv, 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
			orb_spawn_norm(rem4.CFrame + rem4.CFrame.lookVector * lookv, 3, BrickColor.new("Royal purple"), power, 25, 75, 10, power / 5, 7.5)
		end
	end))
	attack = false
end
function yinyangi()
	attack = true
	for i = 0, 2, 0.1 do
		swait()
		RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.2)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.2)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
	end
	local bv = Instance.new("BodyVelocity")
	bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
	bv.velocity = root.CFrame.lookVector * 175
	bv.Parent = root
	for Rotations = 0, 9 do
		for i = 0, 1, 0.5 do
			swait()
			bv.velocity = root.CFrame.lookVector * 175
			RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.5)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.5)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
		end
		orb_spawn(rarm.CFrame * CFrame.new(0, -1, 0), 2.5)
		for i = 0, 1, 0.5 do
			swait()
			bv.velocity = root.CFrame.lookVector * 175
			RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.5)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.5)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(90), math.rad(0), math.rad(180)), 0.5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
		end
		orb_spawn(rarm.CFrame * CFrame.new(0, -1, 0), 2.5)
		for i = 0, 1, 0.5 do
			swait()
			bv.velocity = root.CFrame.lookVector * 175
			RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.5)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.5)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(90), math.rad(0), math.rad(270)), 0.5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
		end
		orb_spawn(rarm.CFrame * CFrame.new(0, -1, 0), 2.5)
		for i = 0, 1, 0.5 do
			swait()
			bv.velocity = root.CFrame.lookVector * 175
			RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.5)
			LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.5)
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(90), math.rad(0), math.rad(360)), 0.5)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
			RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
			LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
		end
		orb_spawn(rarm.CFrame * CFrame.new(0, -1, 0), 2.5)
	end
	bv:Destroy()
	attack = false
end
function Wip()
	attack = true
	local rngb = Instance.new("Part", char)
	rngb.Anchored = true
	rngb.BrickColor = origcolor
	rngb.CanCollide = false
	rngb.FormFactor = 3
	rngb.Name = "Ring"
	rngb.Material = "Neon"
	rngb.Size = Vector3.new(1, 0.05, 1)
	rngb.Transparency = 1
	rngb.TopSurface = 0
	rngb.BottomSurface = 0
	local rngmb = Instance.new("SpecialMesh", rngb)
	rngmb.MeshType = "Brick"
	rngmb.Name = "SizeMesh"
	rngmb.Scale = vt(0, 1, 0)
	local orb = rngb:Clone()
	orb.Parent = char
	orb.Transparency = 0
	orb.BrickColor = BrickColor.new("White")
	orb.Size = vt(1, 1, 1)
	local orbmish = orb.SizeMesh
	orbmish.Scale = vt(0, 0, 0)
	orbmish.MeshType = "Sphere"
	local orbe = rngb:Clone()
	orbe.Parent = char
	orbe.Transparency = 0.5
	orbe.BrickColor = BrickColor.new("New Yeller")
	orbe.Size = vt(1, 1, 1)
	local orbmish2 = orbe.SizeMesh
	orbmish2.Scale = vt(0, 0, 0)
	orbmish2.MeshType = "Sphere"
	orbe.Color = Color3.new(r / 255, g / 255, b / 255)
	rngb:Destroy()
	for i = 0, 5, 0.1 do
		swait()
		if rainbowmode == true then
			orbe.Color = Color3.new(r / 255, g / 255, b / 255)
		end
		orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 11.5
		orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 11.5
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-0.5), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(10), math.rad(0)), 0.3)
		RootPart.CFrame = FaceMouse()[1]
	end
	orbe.Transparency = 1
	orb.Transparency = 1
	orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 5
	CFuncs.Sound.Create("rbxassetid://294188875", char, 1, 1)
	local a = Instance.new("Part", Character)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = bc("White")
	a.Material = "Neon"
	a.Transparency = 0
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = Instance.new("Part", Character)
	a2.Name = "Direction"
	a2.Anchored = true
	a2.BrickColor = bc("New Yeller")
	a2.Color = Color3.new(r / 255, g / 255, b / 255)
	a2.Material = "Neon"
	a2.Transparency = 0.5
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = Instance.new("Part", Character)
	ba.Name = "HitDirect"
	ba.Anchored = true
	ba.BrickColor = bc("Really black")
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
	a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
	a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
	game:GetService("Debris"):AddItem(a, 20)
	game:GetService("Debris"):AddItem(a2, 20)
	game:GetService("Debris"):AddItem(ba, 20)
	local msh = Instance.new("SpecialMesh", a)
	msh.MeshType = "Cylinder"
	msh.Scale = vt(1, 25, 25)
	local msh2 = Instance.new("SpecialMesh", a2)
	msh2.MeshType = "Cylinder"
	msh2.Scale = vt(1, 30, 30)
	for i = 0, 10, 0.1 do
		swait()
		CameraEnshaking(1, 5)
		a2.Color = Color3.new(r / 255, g / 255, b / 255)
		orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (orb.CFrame.p - position).magnitude
		if typrot == 1 then
			rotation = rotation + 2.5
		elseif typrot == 2 then
			rotation = rotation - 2.5
		end
		RootPart.CFrame = FaceMouse()[1]
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
		a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
		a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
		msh.Scale = msh.Scale - vt(0, 0.25, 0.25)
		msh2.Scale = msh2.Scale - vt(0, 0.3, 0.3)
		sphereMK(5, 1.5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 15, 15, 25, -0.15, MAINRUINCOLOR, 0)
		sphereMK(5, 1.5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 15, 15, 25, -0.15, MAINRUINCOLOR, 0)
		MagniDamage(ba, 0, 0, 0, 0, "Normal")
	end
	a:Destroy()
	a2:Destroy()
	ba:Destroy()
	orb:Destroy()
	orbe:Destroy()
	attack = false
end
function UniversalSpark()
	attack = true
	local rngb = Instance.new("Part", char)
	rngb.Anchored = true
	rngb.BrickColor = origcolor
	rngb.CanCollide = false
	rngb.FormFactor = 3
	rngb.Name = "Ring"
	rngb.Material = "Neon"
	rngb.Size = Vector3.new(1, 0.05, 1)
	rngb.Transparency = 1
	rngb.TopSurface = 0
	rngb.BottomSurface = 0
	local rngmb = Instance.new("SpecialMesh", rngb)
	rngmb.MeshType = "Brick"
	rngmb.Name = "SizeMesh"
	rngmb.Scale = vt(0, 1, 0)
	local orb = rngb:Clone()
	orb.Parent = char
	orb.Transparency = 0
	orb.BrickColor = BrickColor.new("White")
	orb.Size = vt(1, 1, 1)
	local orbmish = orb.SizeMesh
	orbmish.Scale = vt(0, 0, 0)
	orbmish.MeshType = "Sphere"
	local orbe = rngb:Clone()
	orbe.Parent = char
	orbe.Transparency = 0.5
	orbe.BrickColor = BrickColor.new("New Yeller")
	orbe.Size = vt(1, 1, 1)
	local orbmish2 = orbe.SizeMesh
	orbmish2.Scale = vt(0, 0, 0)
	orbmish2.MeshType = "Sphere"
	orbe.Color = Color3.new(r / 255, g / 255, b / 255)
	rngb:Destroy()
	for i = 0, 5, 0.1 do
		swait()
		if rainbowmode == true then
			orbe.Color = Color3.new(r / 255, g / 255, b / 255)
		end
		orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 11.5
		orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 11.5
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-0.5), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(10), math.rad(0)), 0.3)
		RootPart.CFrame = FaceMouse()[1]
	end
	orbe.Transparency = 1
	orb.Transparency = 1
	orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 5
	CFuncs.Sound.Create("rbxassetid://294188875", char, 1, 1)
	CFuncs.Sound.Create("rbxassetid://741272936", char, 0.75, 1)
	CFuncs.Sound.Create("rbxassetid://1192402877", char, 1, 1)
	CFuncs.Sound.Create("rbxassetid://1208650519", char, 0.75, 1)
	CFuncs.Sound.Create("rbxassetid://164881112", char, 0.75, 1)
	CFuncs.Sound.Create("rbxassetid://429123896", char, 1, 0.85)
	CFuncs.Sound.Create("rbxassetid://164178927", char, 1, 1)
	local xd = Instance.new("Sound", char)
	xd.SoundId = "rbxassetid://445796828"
	xd.Pitch = 0.75
	xd.Looped = true
	xd.Volume = 1.25
	xd:Play()
	local a = Instance.new("Part", Character)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = bc("Alder")
	a.Color = MAINRUINCOLOR.Color
	a.Material = "Neon"
	a.Transparency = 0.5
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = Instance.new("Part", Character)
	a2.Name = "Direction"
	a2.Anchored = true
	a2.BrickColor = bc("New Yeller")
	a2.Color = MAINRUINCOLOR.Color
	a2.Material = "Neon"
	a2.Transparency = 0.5
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = Instance.new("Part", Character)
	ba.Name = "HitDirect"
	ba.Anchored = true
	ba.BrickColor = bc("Really black")
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (orb.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
	a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
	a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
	game:GetService("Debris"):AddItem(a, 60)
	game:GetService("Debris"):AddItem(a2, 60)
	game:GetService("Debris"):AddItem(ba, 60)
	local outerscale = 0
	local msh = Instance.new("SpecialMesh", a)
	msh.MeshType = "Cylinder"
	msh.Scale = vt(1, 0, 0)
	local msh2 = Instance.new("SpecialMesh", a2)
	msh2.MeshType = "Cylinder"
	msh2.Scale = vt(1, 0, 0)
	for i = 0, 2, 0.1 do
		swait()
		CameraEnshaking(1, 1)
		msh2.Scale = msh2.Scale + vt(0, outerscale * 20, outerscale * 20)
		msh.Scale = msh.Scale + vt(0, outerscale * 15, outerscale * 15)
		outerscale = outerscale - 0.015
		orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (orb.CFrame.p - position).magnitude
		if typrot == 1 then
			rotation = rotation + 2.5
		elseif typrot == 2 then
			rotation = rotation - 2.5
		end
		RootPart.CFrame = FaceMouse()[1]
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
		a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
		a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
		sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
		sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
		MagniDamage(ba, 0, 0, 0, 0, "Normal")
	end
	for z = 0, 2 do
		for i = 0, 4, 0.1 do
			swait()
			CameraEnshaking(1, 1)
			msh2.Scale = msh2.Scale + vt(0, outerscale, outerscale)
			msh.Scale = msh.Scale - vt(0, outerscale, outerscale)
			outerscale = outerscale + 0.015
			orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
			orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
			ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
			hit, position, normal = workspace:FindPartOnRay(ray, ignore)
			distance = (orb.CFrame.p - position).magnitude
			if typrot == 1 then
				rotation = rotation + 2.5
			elseif typrot == 2 then
				rotation = rotation - 2.5
			end
			RootPart.CFrame = FaceMouse()[1]
			a.Size = Vector3.new(distance, 1, 1)
			a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
			a2.Size = Vector3.new(distance, 1, 1)
			a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
			ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
			a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
			a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
			sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
			sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
			MagniDamage(ba, 0, 0, 0, 0, "Normal")
		end
		for i = 0, 4, 0.1 do
			swait()
			CameraEnshaking(1, 1)
			msh2.Scale = msh2.Scale + vt(0, outerscale, outerscale)
			msh.Scale = msh.Scale - vt(0, outerscale, outerscale)
			outerscale = outerscale - 0.015
			orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
			orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
			ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
			hit, position, normal = workspace:FindPartOnRay(ray, ignore)
			distance = (orb.CFrame.p - position).magnitude
			if typrot == 1 then
				rotation = rotation + 2.5
			elseif typrot == 2 then
				rotation = rotation - 2.5
			end
			RootPart.CFrame = FaceMouse()[1]
			a.Size = Vector3.new(distance, 1, 1)
			a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
			a2.Size = Vector3.new(distance, 1, 1)
			a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
			ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
			a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
			a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
			sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
			sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
			MagniDamage(ba, 0, 0, 0, 0, "Normal")
		end
	end
	for i = 0, 4, 0.1 do
		swait()
		CameraEnshaking(1, 1)
		msh2.Scale = msh2.Scale + vt(0, outerscale, outerscale)
		msh.Scale = msh.Scale - vt(0, outerscale, outerscale)
		xd.Volume = xd.Volume - 0.025
		a.Transparency = a.Transparency + 0.025
		a2.Transparency = a2.Transparency + 0.025
		outerscale = outerscale - 0.015
		orb.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		orbe.CFrame = root.CFrame * CFrame.new(0, 0.5, 0) + root.CFrame.lookVector * 4
		ray = Ray.new(orb.CFrame.p, (mouse.Hit.p - orb.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (orb.CFrame.p - position).magnitude
		if typrot == 1 then
			rotation = rotation + 2.5
		elseif typrot == 2 then
			rotation = rotation - 2.5
		end
		RootPart.CFrame = FaceMouse()[1]
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
		ba.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, -distance)
		a.CFrame = a.CFrame * CFrame.Angles(0, math.rad(90), 0)
		a2.CFrame = a2.CFrame * CFrame.Angles(0, math.rad(90), 0)
		sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
		sphereMK(5, 5, "Add", ba.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 75, 75, 225, -0.75, MAINRUINCOLOR, 0)
		MagniDamage(ba, 0, 0, 0, 0, "Normal")
	end
	xd:Destroy()
	a:Destroy()
	a2:Destroy()
	ba:Destroy()
	orb:Destroy()
	orbe:Destroy()
	attack = false
end
function resetmode()
	rainbowmode = false
	chaosmode = false
	RecolorTextAndRename("Singularity", Color3.new(0, 0, 0), Color3.new(1, 0, 0))
	ModeOfGlitch = 1
	storehumanoidWS = 16
	for i, v in pairs(mw2:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really red")
			v.Material = "Neon"
		end
	end
	for i, v in pairs(mw1:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 1
			v.BrickColor = BrickColor.new("Really red")
			v.Material = "Neon"
		end
	end
	MAINRUINCOLOR = BrickColor.new("Really red")
	hum.WalkSpeed = 16
	newTheme("rbxassetid://415898123", 0, 1, 10)
	for i, v in pairs(m:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really black")
			v.Material = "Glass"
		end
	end
	for i, v in pairs(m2:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Crimson")
			v.Material = "Granite"
		end
	end
	for i, v in pairs(m3:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Really red")
			v.Material = "Neon"
		end
	end
	for i, v in pairs(extrawingmod1:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 1
			v.BrickColor = BrickColor.new("White")
			v.Material = "Neon"
		end
	end
	for i, v in pairs(extrawingmod2:GetChildren()) do
		if v:IsA("Part") then
			v.Transparency = 1
			v.BrickColor = BrickColor.new("White")
			v.Material = "Neon"
		end
	end
end
function attackone()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(40)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.2)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), -0.75) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.2)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.2)
	end
	CFuncs.Sound.Create("rbxassetid://200632136", root, 1, 1.1)
	local hitb = Instance.new("Part", char)
	hitb.Anchored = true
	hitb.CanCollide = false
	hitb.FormFactor = 3
	hitb.Name = "Ring"
	hitb.Material = "Neon"
	hitb.Size = Vector3.new(1, 1, 1)
	hitb.Transparency = 1
	hitb.TopSurface = 0
	hitb.BottomSurface = 0
	hitb.CFrame = root.CFrame + root.CFrame.lookVector * 2
	MagniDamage(hitb, 0, 0, 0, 0, "Normal")
	hitb:Destroy()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(70)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(-70)), 0.4)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.4)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.4)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), -0.75) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-40)), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.4)
	end
	attack = false
end
function attacktwo()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.2)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), -0.75) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.2)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.2)
	end
	CFuncs.Sound.Create("rbxassetid://200632136", root, 1, 1)
	local hitb = Instance.new("Part", char)
	hitb.Anchored = true
	hitb.CanCollide = false
	hitb.FormFactor = 3
	hitb.Name = "Ring"
	hitb.Material = "Neon"
	hitb.Size = Vector3.new(1, 1, 1)
	hitb.Transparency = 1
	hitb.TopSurface = 0
	hitb.BottomSurface = 0
	hitb.CFrame = root.CFrame + root.CFrame.lookVector * 2
	MagniDamage(hitb, 0, 0, 0, 0, "Normal")
	hitb:Destroy()
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(-70)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(70)), 0.4)
		RW.C0 = clerp(RW.C0, CFrame.new(1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.4)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.45, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.4)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-40)), 0.4)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.4)
	end
	attack = false
end
function attackthree()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(-80)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(80)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-0.5), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(10), math.rad(0)), 0.3)
	end
	local distlook = 5
	for i = 0, 4 do
		swait(2)
		CameraEnshaking(2, 3)
		local hite = Instance.new("Part", char)
		hite.Anchored = true
		hite.CanCollide = false
		hite.FormFactor = 3
		hite.Name = "Ring"
		hite.Material = "Neon"
		hite.Size = Vector3.new(1, 1, 1)
		hite.Transparency = 1
		hite.TopSurface = 0
		hite.BottomSurface = 0
		hite.CFrame = root.CFrame + root.CFrame.lookVector * distlook
		sphere(3, "Add", hite.CFrame, vt(0, 0, 0), 0.15, MAINRUINCOLOR)
		sphere(6, "Add", hite.CFrame, vt(0, 0, 0), 0.3, MAINRUINCOLOR)
		MagniDamage(hite, 0, 0, 0, 0, "Normal")
		for i = 0, 2 do
			sphereMK(2, 0.2, "Add", rarm.CFrame * CFrame.Angles(math.rad(-90 + math.random(-20, 20)), math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 0)
			sphereMK(3, 0.2, "Add", hite.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 0)
			sphereMK(6, 0.35, "Add", hite.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360))), 0.5, 0.5, 5, -0.005, MAINRUINCOLOR, 0)
		end
		CFuncs.Sound.Create("rbxassetid://183763506", hite, 2.5, 1)
		CFuncs.Sound.Create("rbxassetid://178452221", hite, 0.25, 0.6)
		game:GetService("Debris"):AddItem(hite, 5)
		distlook = distlook + 10
	end
	attack = false
end
local attacktype = 1
mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 1
		attackthree()
	elseif attack == false and attacktype == 4 then
		attacktype = 1
	end
end)
mouse.KeyDown:connect(function(k)
	if k == "q" and attack == false and ModeOfGlitch ~= 2 then
		ModeOfGlitch = 2
		storehumanoidWS = 16
		hum.WalkSpeed = 16
		rainbowmode = false
		chaosmode = false
		RecolorTextAndRename("Purity", Color3.new(1, 1, 1), Color3.new(0, 1, 1))
		newTheme("rbxassetid://1119453744", 20.25, 1, 1)
		MAINRUINCOLOR = BrickColor.new("Toothpaste")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Pastel light blue")
				v.Material = "Glass"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Toothpaste")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
	elseif k == "q" and attack == false and ModeOfGlitch == 2 then
		resetmode()
	end
	if k == "e" and attack == false and ModeOfGlitch ~= 3 then
		ModeOfGlitch = 3
		storehumanoidWS = 16
		hum.WalkSpeed = 16
		rainbowmode = false
		chaosmode = false
		RecolorTextAndRename("Corruption", Color3.new(0, 0, 0), Color3.new(0.35, 0, 1))
		newTheme("rbxassetid://1509634377", 58.15, 1,2)
		MAINRUINCOLOR = BrickColor.new("Royal purple")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Black")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Dark indigo")
				v.Material = "Glass"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Royal purple")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
	elseif k == "e" and attack == false and ModeOfGlitch == 3 then
		resetmode()
	end
	if k == "r" and attack == false and ModeOfGlitch ~= 4 then
		ModeOfGlitch = 4
		storehumanoidWS = 16
		hum.WalkSpeed = 16
		rainbowmode = false
		chaosmode = true
		RecolorTextAndRename("HATRED", Color3.new(0, 0, 0), BrickColor.random().Color)
		newTheme("rbxassetid://415898123", 0, 1, 10)
		MAINRUINCOLOR = BrickColor.new("Black")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0.75
				v.BrickColor = BrickColor.random()
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Black")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.random()
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Black")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
	elseif k == "r" and attack == false and ModeOfGlitch == 4 then
		resetmode()
	end
	if k == "t" and attack == false and ModeOfGlitch ~= 5 then
		ModeOfGlitch = 5
		
		storehumanoidWS = 16
		hum.WalkSpeed = 16
		rainbowmode = false
		chaosmode = false
		RecolorTextAndRename("Solitude", Color3.new(0, 0, 0), Color3.new(255, 255, 255))
		newTheme("rbxassetid://723652641", 10, 1, 3.2)
   ModeOfGlitch = 1		
		MAINRUINCOLOR = BrickColor.new("Really black")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Really black")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Really black")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Really black")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
	elseif k == "t" and attack == false and ModeOfGlitch == 5 then
		resetmode()
	end
	if k == "y" and attack == false and ModeOfGlitch ~= 6 then
		ModeOfGlitch = 6
		storehumanoidWS = 75
		hum.WalkSpeed = 75
		rainbowmode = false
		chaosmode = false
		RecolorTextAndRename("Equality", Color3.new(0, 0, 0), Color3.new(1, 1, 1))
		newTheme("rbxassetid://519067542", 0, 1, 1)
		MAINRUINCOLOR = BrickColor.new("Really black")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.BrickColor = BrickColor.new("Really black")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("Really black")
				v.Material = "Ice"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		
		
	elseif k == "y" and attack == false and ModeOfGlitch == 6 then
		resetmode()
	end
	if k == "u" and attack == false and ModeOfGlitch ~= 6127843 then
		ModeOfGlitch = 6127843
		storehumanoidWS = 50
		hum.WalkSpeed = 50
		rainbowmode = true
		chaosmode = false
		RecolorTextAndRename("StarLight", Color3.new(1, 1, 1), Color3.new(1, 1, 1))
		newTheme("rbxassetid://147930134", 0, 1, 1)
		MAINRUINCOLOR = BrickColor.new("White")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
			end
		end
	elseif k == "u" and attack == false and ModeOfGlitch == 6127843 then
		resetmode()
	end
	if k == "p" and attack == false and ModeOfGlitch ~= 1000000 then
		ModeOfGlitch = 1000000
		storehumanoidWS = 100
		hum.WalkSpeed = 100
		rainbowmode = false
		chaosmode = false
		RecolorTextAndRename("True Starlight", Color3.new(0.25, 0, 1), Color3.new(0.5, 0, 1))
		newTheme("rbxassetid://614032233", 0, 1, 1)
		MAINRUINCOLOR = BrickColor.new("Bright violet")
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.BrickColor = MAINRUINCOLOR
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(0.5, 0, 1)
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(0.25, 0, 1)
				v.Material = "Neon"
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(0.45, 0, 1)
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.Color = Color3.new(0.25, 0, 1)
				v.Material = "Neon"
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
				v.Color = Color3.new(0.5, 0, 1)
				v.Material = "Neon"
			end
		end
	elseif k == "p" and attack == false and ModeOfGlitch == 1000000 then
		resetmode()
	end
	if k == "l" and toggleTag == false then
		toggleTag = true
		text.TextTransparency = 0
		text.TextStrokeTransparency = 0
	elseif k == "l" and toggleTag == true then
		toggleTag = false
		text.TextTransparency = 1
		text.TextStrokeTransparency = 1
	end
	if k == "z" and attack == false and ModeOfGlitch == 1 then
		ExtinctiveHeartbreak()
	elseif k == "z" and attack == false and ModeOfGlitch == 2 then
		PureBomb()
	elseif k == "z" and attack == false and ModeOfGlitch == 3 then
		scattercorrupt()
	elseif k == "z" and attack == false and ModeOfGlitch == 4 then
		ChaosGroundStrike()
	elseif k == "z" and attack == false and ModeOfGlitch == 5 then
	elseif k == "z" and attack == false and ModeOfGlitch == 1000000 then
		UniversalSpark()
    elseif k == "l" and attack == false and ModeOfGlitch == 1000000 then
        scattercorrupt()
        wait(1)
        yinyangi()
    elseif k == "l" and attack == false and ModeOfGlitch == 5 then
        scattercorrupt()
        scattercorrupt()
	elseif k == "z" and attack == false and ModeOfGlitch == 6 then
		yinyangi()
	elseif k == "z" and attack == false and ModeOfGlitch == 6127843 then
		Wip()
	end
	if k == "l" and attack == false and ModeOfGlitch == 4 then
		ChaosBegone()
	end
end)
coroutine.resume(coroutine.create(function()
	while true do
		swait(2)
		if rainbowmode == true or ModeOfGlitch == 6 then
			sphereMK(5, 0.15, "Add", root.CFrame * CFrame.new(math.random(-5, 5), -6, math.random(-5, 5)) * CFrame.Angles(math.rad(90), 0, 0), 1.5, 1.5, 10, -0.015, MAINRUINCOLOR, 0)
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while true do
		swait(0.5)
		if ModeOfGlitch == 1000000 then
			sphereMK(5, 0.5, "Add", root.CFrame * CFrame.new(math.random(-25, 25), -10, math.random(-25, 25)) * CFrame.Angles(math.rad(90 + math.random(-15, 15)), math.rad(math.random(-15, 15)), 0), 1, 1, 15, -0.01, MAINRUINCOLOR, 0)
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while true do
		swait(2)
		if chaosmode == true then
			RecolorTextAndRename("HATRED", Color3.new(0, 0, 0), BrickColor.random().Color)
			for i, v in pairs(mw1:GetChildren()) do
				if v:IsA("Part") then
					v.Transparency = 0.75
					v.BrickColor = BrickColor.random()
					v.Material = "Neon"
				end
			end
			for i, v in pairs(m2:GetChildren()) do
				if v:IsA("Part") then
					v.BrickColor = BrickColor.random()
					v.Material = "Neon"
				end
			end
		end
	end
end))

Humanoid.Animator.Parent = nil
idleanim = 0.4
while true do
	if rainbowmode == true then
		RecolorTextAndRename("StarLight", Color3.new(r / 255, g / 255, b / 255), Color3.new(r / 500, g / 500, b / 500))
		MAINRUINCOLOR = BrickColor.new("White")
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r / 255, g / 255, b / 255)
			end
		end
		for i, v in pairs(m2:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r / 255, g / 255, b / 255)
			end
		end
		for i, v in pairs(m3:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r / 255, g / 255, b / 255)
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r / 255, g / 255, b / 255)
				v.Material = "Neon"
			end
		end
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r / 255, g / 255, b / 255)
				v.Material = "Neon"
			end
		end
	end
	CameraManager()
	swait()
	lwing1weld.C1 = clerp(lwing1weld.C1, cf(2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(5 + 10 * math.cos(sine / 32)), math.rad(0), math.rad(12.5 + 5 * math.cos(sine / 32))), 0.3)
	lwing2weld.C1 = clerp(lwing2weld.C1, cf(3, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(10 + 15 * math.cos(sine / 32)), math.rad(0), math.rad(25 + 7.5 * math.cos(sine / 32))), 0.3)
	lwing3weld.C1 = clerp(lwing3weld.C1, cf(3.75, 2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(15 + 20 * math.cos(sine / 32)), math.rad(0), math.rad(37.5 + 10 * math.cos(sine / 32))), 0.3)
	lwing4weld.C1 = clerp(lwing4weld.C1, cf(4.75, 3, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(20 + 25 * math.cos(sine / 32)), math.rad(0), math.rad(50 + 12.5 * math.cos(sine / 32))), 0.3)
	lwing5weld.C1 = clerp(lwing5weld.C1, cf(5.75, 4, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(25 + 30 * math.cos(sine / 32)), math.rad(0), math.rad(62.5 + 15 * math.cos(sine / 32))), 0.3)
	lwing6weld.C1 = clerp(lwing6weld.C1, cf(6.75, 5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(30 + 35 * math.cos(sine / 32)), math.rad(0), math.rad(75 + 17.5 * math.cos(sine / 32))), 0.3)
	rwing1weld.C1 = clerp(rwing1weld.C1, cf(-2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(5 + 10 * math.cos(sine / 32)), math.rad(0), math.rad(-12.5 - 5 * math.cos(sine / 32))), 0.3)
	rwing2weld.C1 = clerp(rwing2weld.C1, cf(-3, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(10 + 15 * math.cos(sine / 32)), math.rad(0), math.rad(-25 - 7.5 * math.cos(sine / 32))), 0.3)
	rwing3weld.C1 = clerp(rwing3weld.C1, cf(-3.75, 2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(15 + 20 * math.cos(sine / 32)), math.rad(0), math.rad(-37.5 - 10 * math.cos(sine / 32))), 0.3)
	rwing4weld.C1 = clerp(rwing4weld.C1, cf(-4.75, 3, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(20 + 25 * math.cos(sine / 32)), math.rad(0), math.rad(-50 - 12.5 * math.cos(sine / 32))), 0.3)
	rwing5weld.C1 = clerp(rwing5weld.C1, cf(-5.75, 4, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(25 + 30 * math.cos(sine / 32)), math.rad(0), math.rad(-62.5 - 15 * math.cos(sine / 32))), 0.3)
	rwing6weld.C1 = clerp(rwing6weld.C1, cf(-6.75, 5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) * angles(math.rad(30 + 35 * math.cos(sine / 32)), math.rad(0), math.rad(-75 - 17.5 * math.cos(sine / 32))), 0.3)
	sine = sine + change
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if not (idle >= 500) or attack == false then
		end
		if RootPart.Velocity.y > 1 and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.1)
				LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.1)
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 25)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, cf(1.45, 0.5 + 0.1 * math.cos(sine / 25), 0) * angles(math.rad(-5), math.rad(0), math.rad(25)), 0.1)
				LW.C0 = clerp(LW.C0, cf(-1.45, 0.5 + 0.1 * math.cos(sine / 25), 0) * angles(math.rad(-5), math.rad(0), math.rad(-25)), 0.1)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.1)
				LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.1)
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, cf(1.45, 0.5 + 0.1 * math.cos(sine / 25), 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.1)
				LW.C0 = clerp(LW.C0, cf(-1.45, 0.5 + 0.1 * math.cos(sine / 25), 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				if ModeOfGlitch == 1 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10 - 2.5 * math.cos(sine / 32)), math.rad(-20), math.rad(0)), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.1 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(-10 + 2.5 * math.cos(sine / 32))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.1 * math.cos(sine / 32)) * angles(math.rad(10 - 2 * math.cos(sine / 32)), math.rad(0), math.rad(20)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(25 - 2.5 * math.cos(sine / 32)), math.rad(0 - 5 * math.cos(sine / 0.25)), math.rad(-20 - 5 * math.cos(sine / 0.465))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10), math.rad(-20), math.rad(30 + 2.5 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(25)), 0.1)
				elseif ModeOfGlitch == 2 or ModeOfGlitch == 6127843 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(0)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(15 - 2.5 * math.cos(sine / 28)), math.rad(0), math.rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, cf(0.85, 0.5 + 0.1 * math.cos(sine / 28), -0.65) * angles(math.rad(30 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(-100 - 2.5 * math.cos(sine / 28))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-0.85, 0.5 + 0.1 * math.cos(sine / 28), -0.65) * angles(math.rad(40 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(90 + 2.5 * math.cos(sine / 28))), 0.1)
				elseif ModeOfGlitch == 3 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 - 1 * math.cos(sine / 34))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(-20)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(25 - 2.5 * math.cos(sine / 28)), math.rad(0), math.rad(20)), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10), math.rad(-20), math.rad(30 + 2.5 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.75, 0) * angles(math.rad(170), math.rad(-20), math.rad(20)), 0.1)
				elseif ModeOfGlitch == 4 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.025 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-1.5), math.rad(0), math.rad(20)), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.025 * math.cos(sine / 32), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-1.5), math.rad(0), math.rad(-20)), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.025 * math.cos(sine / 32)) * angles(math.rad(20 - 0.5 * math.cos(sine / 32)), math.rad(0), math.rad(0)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30 - 5 * math.cos(sine / 0.5265)), math.rad(0 - 5 * math.cos(sine / 0.25)), math.rad(0 - 5 * math.cos(sine / 0.465))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10 + 2.5 * math.cos(sine / 0.252)), math.rad(0 + 2.5 * math.cos(sine / 0.123)), math.rad(5 + 2.5 * math.cos(sine / 0.6))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(10 + 2.5 * math.cos(sine / 0.568)), math.rad(0 + 2.5 * math.cos(sine / 0.664)), math.rad(-5 + 2.5 * math.cos(sine / 0.23))), 0.1)
				elseif ModeOfGlitch == 5 then
					RH.C0 = clerp(RH.C0, cf(1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1 - 0.05 * math.cos(sine / 28), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0 + 1 * math.cos(sine / 34))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 + 0.05 * math.cos(sine / 28)) * angles(math.rad(0 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(0)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5 - 2.5 * math.cos(sine / 28)), math.rad(0), math.rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, cf(1, 0.5 + 0.1 * math.cos(sine / 28), 0.45) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1, 0.5 + 0.1 * math.cos(sine / 28), 0.45) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.1)
				elseif ModeOfGlitch == 6 or ModeOfGlitch == 1000000 then
					RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-10)), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(10)), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(0 - 1 * math.cos(sine / 34)), math.rad(0), math.rad(0)), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(15), math.rad(0), math.rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20 + 2.5 * math.cos(sine / 28))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20 - 2.5 * math.cos(sine / 28))), 0.1)
				end
			end
		elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				if ModeOfGlitch == 1 then
					RH.C0 = clerp(RH.C0, cf(1, -0.85, -0.15 - 0.15 * math.cos(sine / 4)) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 8)), math.rad(0 + 25 * math.cos(sine / 8))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -0.85, -0.15 + 0.15 * math.cos(sine / 4)) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 8)), math.rad(0 + 25 * math.cos(sine / 8))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.15 - 0.1 * math.cos(sine / 4)) * angles(math.rad(5), math.rad(0), math.rad(0 - 5 * math.cos(sine / 8))), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(25 - 5 * math.cos(sine / 0.325)), math.rad(0 - 5 * math.cos(sine / 0.25)), math.rad(0 + 5 * math.cos(sine / 8))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0 - 45 * math.cos(sine / 8)), math.rad(0), math.rad(10 - 10 * math.cos(sine / 4))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(25)), 0.1)
				elseif ModeOfGlitch == 4 then
					RH.C0 = clerp(RH.C0, cf(1, -0.85, -0.15 - 0.15 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 12)), math.rad(5 + 25 * math.cos(sine / 12))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -0.85, -0.15 + 0.15 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 12)), math.rad(-5 + 25 * math.cos(sine / 12))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.15 - 0.1 * math.cos(sine / 8)) * angles(math.rad(12.5), math.rad(0), math.rad(0 - 5 * math.cos(sine / 12))), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(30 - 5 * math.cos(sine / 0.5265)), math.rad(0 - 5 * math.cos(sine / 0.25)), math.rad(0 - 5 * math.cos(sine / 0.465))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(10 - 15 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 0.123)), math.rad(5 + 2.5 * math.cos(sine / 0.6))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(10 + 15 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 0.664)), math.rad(-5 + 2.5 * math.cos(sine / 0.23))), 0.1)
				elseif ModeOfGlitch ~= 1 or ModeOfGlitch ~= 4 then
					RH.C0 = clerp(RH.C0, cf(1, -0.85, -0.15 - 0.15 * math.cos(sine / 4)) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 8)), math.rad(0 + 25 * math.cos(sine / 8))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -0.85, -0.15 + 0.15 * math.cos(sine / 4)) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0 + 5 * math.cos(sine / 8)), math.rad(0 + 25 * math.cos(sine / 8))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.15 - 0.1 * math.cos(sine / 4)) * angles(math.rad(5), math.rad(0), math.rad(0 - 5 * math.cos(sine / 8))), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10 + 2.5 * math.cos(sine / 100)), math.rad(0), math.rad(0 + 5 * math.cos(sine / 8))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0 - 45 * math.cos(sine / 8)), math.rad(0), math.rad(10 - 10 * math.cos(sine / 4))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0 + 45 * math.cos(sine / 8)), math.rad(0), math.rad(-10 + 10 * math.cos(sine / 4))), 0.1)
				end
			end
		elseif torvel >= 22 and hitfloor ~= nil then
			Anim = "Run"
			if attack == false then
				if ModeOfGlitch ~= 6 and ModeOfGlitch ~= 1000000 then
					RH.C0 = clerp(RH.C0, cf(1, -0.75 - 0.25 * math.cos(sine / 3), -0.25 - 0.25 * math.cos(sine / 3)) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 + 95 * math.cos(sine / 6))), 0.1)
					LH.C0 = clerp(LH.C0, cf(-1, -0.75 + 0.25 * math.cos(sine / 3), -0.25 + 0.25 * math.cos(sine / 3)) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0 + 95 * math.cos(sine / 6))), 0.1)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.125 + 0.125 * math.cos(sine / 3)) * angles(math.rad(20), math.rad(0), math.rad(0 - 15 * math.cos(sine / 6))), 0.1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10 + 2.5 * math.cos(sine / 100)), math.rad(0), math.rad(0 + 15 * math.cos(sine / 6))), 0.1)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(0 - 155 * math.cos(sine / 6)), math.rad(0), math.rad(5 - 10 * math.cos(sine / 3))), 0.1)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(0 + 155 * math.cos(sine / 6)), math.rad(0), math.rad(-5 + 10 * math.cos(sine / 3))), 0.1)
				elseif ModeOfGlitch == 6 or ModeOfGlitch == 1000000 then
					RH.C0 = clerp(RH.C0, cf(1, -0.25, -0.5) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(-20)), 0.2)
					LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(20)), 0.2)
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
					RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30 + 2.5 * math.cos(sine / 28))), 0.2)
					LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30 - 2.5 * math.cos(sine / 28))), 0.2)
				end
			end
		end
	end
end
