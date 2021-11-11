power = 500

game:GetService("RunService").Stepped:connect(function()
	game.Players.LocalPlayer.Character.Head.CanCollide = false
	game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
	game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.Torso
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position



game.Players.LocalPlayer.Character["Pal Hair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Kate Hair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Hat1"].Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character["Robloxclassicred"].Handle.Mesh:Destroy()


local Animate = game.Players.LocalPlayer.Character.Animate
HumanDied = false
local count = 1
function Align(Part0, Part1, Position, Angle)
	local AlignPos = Instance.new('AlignPosition', Part1);
	AlignPos.Name = "AliP_" .. count
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge / 9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = true;
	local AlignOri = Instance.new('AlignOrientation', Part1);
	AlignOri.Name = "AliO_" .. count
	AlignOri.MaxAngularVelocity = math.huge / 9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = true;
	local AttachmentA = Instance.new('Attachment', Part1);
	AttachmentA.Name = "Ath_" .. count
	local AttachmentB = Instance.new('Attachment', Part0);
	AttachmentB.Name = "Ath_" .. count
	AttachmentA.Orientation = Angle or Vector3.new(0, 0, 0)
	AttachmentA.Position = Position or Vector3.new(0, 0, 0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	count = count + 1
	spawn(function()
		while wait() do
			Part0.RotVelocity = Vector3.new(0, 0, 0)
			Part0.Velocity = Vector3.new(30, 0, 0)
			Part0.AssemblyLinearVelocity = -Part0.Velocity
		end
	end)

	game:GetService("RunService").Stepped:Connect(function()
		for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = false
			end
			if v:IsA("Accessory") then
				v.Handle.CanCollide = false
			end
		end
	end)
	return {
		AlignPos,
		AlignOri,
		AttachmentA,
		AttachmentB
	}
end
if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
	end)()
end
game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _, v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name], v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _, v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _, w in pairs(v) do
			w.Name = w.Name .. num
			num = num + 1
		end
	end
end
hatnameclone = nil
local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character
local fldr = Instance.new("Folder", game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "Dummy"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then
	CloneChar:FindFirstChildOfClass("Folder"):Destroy()
end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "Dummy"
CloneChar.Humanoid.DisplayDistanceType = "None"
for _, v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then
			v.Handle:FindFirstChildOfClass("Weld"):Destroy()
		end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		coroutine.wrap(function()
			if topacc then
				local allthings = Align(v.Handle, DeadChar.Torso, Vector3.new(0, 1.5, 0) + (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position * -1)), Vector3.new(0, 0, 0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then
						break
					end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0, 1.5, 0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()), 1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X), math.rad(alipos.Attachment1.Rotation.Y), math.rad(alipos.Attachment1.Rotation.Z)), 1)
						end
					end)()
				end
			else
				Align(v.Handle, CloneChar[v.Name].Handle, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
			end
		end)()
	end
end
local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"
if CloneChar.Head:FindFirstChildOfClass("Decal") then
	CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1
end
if DeadChar:FindFirstChild("Animate") then
	DeadChar:FindFirstChild("Animate"):Destroy()
end
local Collider
function UnCollide()
	if HumanDied then
		Collider:Disconnect();
		return
	end
	for _, Parts in next, DeadChar:GetChildren() do
		if Parts:IsA("BasePart") then
			Parts.CanCollide = false
		end
	end
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)
local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied = true
	pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then
			DeadChar:FindFirstChildOfClass("Folder"):Destroy()
		end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)
coroutine.wrap(function()
	while true do
		game:GetService("RunService").RenderStepped:wait()
		if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then
			HumanDied = true
			pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then
					DeadChar:FindFirstChildOfClass("Folder"):Destroy()
				end
			end)
			if resetBindable then
				game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
				resetBindable:Destroy()
			end
			break
		end
	end
end)()


for _, v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
	elseif v:IsA("BasePart") and v.Name == "Head" then
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then
					break
				end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0, 1.5, 0)
			end
		end)()
	end
end
for _, BodyParts in next, CloneChar:GetDescendants() do
	if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
		BodyParts.Transparency = 1
	end
end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid
for _, v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then
			v.Handle:FindFirstChildOfClass("Weld"):Destroy()
		end
		if v.Handle:FindFirstChildOfClass("AccessoryWeld") then
			v.Handle:FindFirstChildOfClass("AccessoryWeld"):Destroy()
		end
		if v.Handle:FindFirstChildOfClass("BodyBackAttachment") then
			v.Handle:FindFirstChildOfClass("BodyBackAttachment"):Destroy()
		end
	end
end
workspace.FallenPartsDestroyHeight = 0 / 0
local char = workspace[game.Players.LocalPlayer.Name]
local v = char.Torso
for _, v in pairs(v:GetChildren()) do
	if v:IsA("Attachment") and not string.find(v.Name:lower(), "attachment") then
		v:Destroy()
	end
end

local c = char.Dummy.Dummy.Torso
local ath = Instance.new("Attachment", c)
ath.Name = "nil"

local char = workspace[game.Players.LocalPlayer.Name]
for i, hat1 in pairs(char:GetChildren()) do
	if hat1.ClassName == "Accessory" then
		workspace.FallenPartsDestroyHeight = 0 / 0
		local v = hat1.Handle
		for _, v in pairs(v:GetChildren()) do
			if v:IsA("Attachment") and not string.find(v.Name:lower(), "attachment") then
				v:Destroy()
			end
		end
		for i, hat2 in pairs(char.Dummy.Dummy:GetChildren()) do
			if hat2.Name == hat1.Name then
				local c = hat2.Handle
				local ath = Instance.new("Attachment", c)
				ath.Name = "nil"
				coroutine.wrap(function()
					local con
					local function tpmeyes()
						v.CanCollide = false
						v.CFrame = c.CFrame
					end
					con = game["Run Service"].Heartbeat:connect(tpmeyes)
				end)()
			end
		end
	end
end
local e = Animate:Clone()
e.Parent = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()

plr.Character.Torso.BodyThrust:Destroy()
plr.Character["BackGun"].Handle.AccessoryWeld:Destroy()

local sex = Instance.new("Weld")
sex.Parent = plr.Character["Right Arm"]
sex.Part0 = plr.Character["BackGun"].Handle
sex.Part1 = plr.Character["Right Arm"]
sex.C1 = CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(45))

plr.Character["Pal Hair"].Handle.AccessoryWeld:Destroy()

local weld = Instance.new("Weld")
weld.Parent = plr.Character["Left Leg"]
weld.Part0 = plr.Character["Pal Hair"].Handle
weld.Part1 = plr.Character["Left Leg"]
weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["Pink Hair"].Handle.AccessoryWeld:Destroy()

local fasf = Instance.new("Weld")
fasf.Parent = plr.Character["Right Leg"]
fasf.Part0 = plr.Character["Pink Hair"].Handle
fasf.Part1 = plr.Character["Right Leg"]
fasf.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["LavanderHair"].Handle.AccessoryWeld:Destroy()

local nas = Instance.new("Weld")
nas.Parent = plr.Character["Left Arm"]
nas.Part0 = plr.Character["LavanderHair"].Handle
nas.Part1 = plr.Character["Left Arm"]
nas.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["Kate Hair"].Handle.AccessoryWeld:Destroy()

local asd = Instance.new("Weld")
asd.Parent = plr.Character["Right Arm"]
asd.Part0 = plr.Character["Kate Hair"].Handle
asd.Part1 = plr.Character["Right Arm"]
asd.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["Hat1"].Handle.AccessoryWeld:Destroy()

local add = Instance.new("Weld")
add.Parent = plr.Character["Torso"]
add.Part0 = plr.Character["Hat1"].Handle
add.Part1 = plr.Character["Torso"]
add.C1 = CFrame.new(-0.5,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["Robloxclassicred"].Handle.AccessoryWeld:Destroy()

local adds = Instance.new("Weld")
adds.Parent = plr.Character["Torso"]
adds.Part0 = plr.Character["Robloxclassicred"].Handle
adds.Part1 = plr.Character["Torso"]
adds.C1 = CFrame.new(0.5,0,0)*CFrame.Angles(math.rad(90),0,0)

plr.Character["MediHood"].Handle.AccessoryWeld:Destroy()

local Stem = Instance.new("Weld")
Stem.Parent = plr.Character["Head"]
Stem.Part0 = plr.Character["MediHood"].Handle
Stem.Part1 = plr.Character["Head"]
Stem.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

local plr = game.Players.LocalPlayer
local Mwouse = plr:GetMouse()
local TweenService = game:GetService("TweenService")
FELOADLIBRARY = {}
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
local Create = FELOADLIBRARY.Create
Player = game.Players.LocalPlayer
local objects = game:GetObjects("rbxassetid://7447793348")

objects[1].Parent = game.Players.LocalPlayer.Character 
local script = Player.Character.Folder
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound", RootPart)
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
Animation_Speed = 3
Frame_Speed = 0.016666666666666666
local Speed = 12
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
ANIMATOR:Destroy()
local UNANCHOR = true
local EXTRATRANS = 0
local MUTE = true
local HITPLAYERSOUNDS = {
	"263032172",
	"263032182",
	"263032200",
	"263032221",
	"263032252",
	"263033191"
}
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
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
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
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
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0, 0, 0))
		end
		if MSH ~= nil then
			local MOVESPEED
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude / TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME + 1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH / TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0, 0, -MSH.Scale.X / 8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		elseif PLAYSSOUND == false then
			EFFECT:remove()
		else
			repeat
				Swait()
			until EFFECT:FindFirstChildOfClass("Sound") == nil
			EFFECT:remove()
		end
	end))
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Wedge"
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
function CharacterFade(COLOR, TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model", Effects)
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25 + c.Transparency
				FADER:BreakJoints()
				FADER.Material = "Neon"
				if FADER.Name == "Head" then
					FADER:ClearAllChildren()
					FADER.Size = VT(1, 1, 1)
				end
				if FADER:FindFirstChildOfClass("SpecialMesh") then
					FADER:remove()
				end
				FADER.CanCollide = false
				FADER:ClearAllChildren()
			end
		end
		local TRANS = 0.75 / TIMER
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
		end
		FADE:remove()
	end))
end
function Chatter(Text, Timer)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("SpeechBoard") ~= nil then
			Character:FindFirstChild("SpeechBoard"):destroy()
		end
		local naeeym2 = IT("BillboardGui", Character)
		naeeym2.Size = UD2(0, 100, 0, 40)
		naeeym2.StudsOffset = VT(0, 2, 0)
		naeeym2.Adornee = Character.Head
		naeeym2.Name = "SpeechBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = IT("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "Legacy"
		tecks2.TextSize = 15
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = C3(1, 1, 1)
		tecks2.TextStrokeColor3 = C3(0, 0, 0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local FINISHED = false
		coroutine.resume(coroutine.create(function()
			for i = 1, string.len(Text) do
				if naeeym2.Parent ~= Character then
					FINISHED = true
				end
				CreateSound(418252437, Head, 7, MRANDOM(8, 12) / 15, false)
				tecks2.Text = string.sub(Text, 1, i)
				Swait(Timer)
			end
			FINISHED = true
		end))
		repeat
			wait()
		until FINISHED == true
		wait(1)
		naeeym2.Name = "FadingDialogue"
		for i = 1, 45 do
			Swait()
			naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
			tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
			tecks2.TextStrokeTransparency = tecks2.TextTransparency
		end
		naeeym2:Destroy()
	end)
	chat()
end
function SHAKECAM(POSITION, RANGE, INTENSITY, TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					local CAMSHAKER = script.CamShake:Clone()
					CAMSHAKER.Shake.Value = INTENSITY
					CAMSHAKER.Timer.Value = TIME
					CAMSHAKER.Parent = CHILD
					CAMSHAKER.Disabled = false
				end
			end
		end
	end
end
function CreateFlyingDebree(FLOOR, POSITION, AMOUNT, BLOCKSIZE, SWAIT, STRENGTH, DOES360)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			do
				local DEBREE = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", BLOCKSIZE, false)
				DEBREE.Material = FLOOR.Material
				DEBREE.Color = FLOOR.Color
				DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)))
				if DOES360 == true then
					DEBREE.Velocity = VT(MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH), MRANDOM(-STRENGTH, STRENGTH))
				else
					DEBREE.Velocity = VT(MRANDOM(-STRENGTH, STRENGTH), STRENGTH, MRANDOM(-STRENGTH, STRENGTH))
				end
				coroutine.resume(coroutine.create(function()
					Swait(15)
					DEBREE.Parent = FLOOR.Parent
					DEBREE.CanCollide = true
					Debris:AddItem(DEBREE, SWAIT)
				end))
			end
		end
	end
end
local Decal = IT("Decal")
function SpawnBulletHole(POSITION)
	local O1 = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Bullet hole", VT(0.5, 0, 0.5))
	local decal = Decal:Clone()
	decal.Parent = O1
	decal.Face = "Bottom"
	decal.Texture = "http://www.roblox.com/asset/?id=130624105"
	decal.Transparency = 0.5
	O1.CFrame = POSITION * ANGLES(RAD(0), RAD(MRANDOM(-180, 180)), RAD(0))
	Debris:AddItem(O1, 5)
end
function GetRoot(MODEL, ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end


for _,c in next, Character:children() do
	local p = script:FindFirstChild(c.Name)
	if(p) and p.Name ~= "FakeMouse" then
		print(p.Name)
		p.Parent = Character
		p:SetPrimaryPartCFrame(c.CFrame)
		for _,e in next, p:GetDescendants() do
			if(e:IsA'BasePart')then
				e.CustomPhysicalProperties=PhysicalProperties.new(0,0,0,0,0)
				e.Anchored=false
				weldBetween(c,e,c.CFrame:inverse()*e.CFrame)
				e.CanCollide=false
				e.Locked=true
			end
		end
	end	
end

local GUN = script.Gun:clone()
GUN.Parent = Character
GUN.Anchored=false
local GRAB = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, GUN, CF(0, -1.75, -0.25) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))
local GUNOFFSET = CF(0, 0.525, -1.068)
local HALO = script.Halo:Clone()
HALO.Parent = Character
local HALOWELD = CreateWeldOrSnapOrMotor("Weld", Head, Head, HALO, CF(0, 0, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 1))
for i = 1, 10 do
	local FACE = CreatePart(3, Character, "Fabric", 0, 0 + (i - 1) / 10.2, "Dark stone grey", "FaceGradient", VT(1.01, 0.65, 1.01), false)
	FACE.Color = C3(0, 0, 0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0, 0.28 - (i - 1) / 30, 0), CF(0, 0, 0))
end

local SKILLTEXTCOLOR = C3(1, 1, 1)
local SKILLFONT = "Legacy"
local SKILLTEXTSIZE = 3
local ATTACKS = {
	"Mouse - Fury",
	"Z - Velocity",
	"E - Point Blank",
	"C - Geiser",
	"X - Loose Rage"
}
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.74, 0, 0.97 - 0.02 * i, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "[" .. ATTACKS[i] .. "]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Skill text")
	SKILLTEXT.TextXAlignment = "Right"
end

script.Gun:Destroy()
script.Halo:Destroy()

function ApplyDamage(Humanoid, Damage)
	if Damage > 0 then
		Damage = Damage * DAMAGEMULTIPLIER
		if Humanoid.Health < 2000 then
			if 0 < Humanoid.Health - Damage then
				Humanoid.Health = Humanoid.Health - Damage
			else
				Humanoid.Parent:BreakJoints()
			end
		else
			Humanoid.Parent:BreakJoints()
		end
	end
end
function ApplyAoE(POSITION, RANGE, MINDMG, MAXDMG, FLING, INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if INSTAKILL == true then
						CHILD:BreakJoints()
					else
						local DMG = MRANDOM(MINDMG, MAXDMG)
						ApplyDamage(HUM, DMG)
					end
					if FLING ~= 0 then
						for _, c in pairs(CHILD:GetChildren()) do
							if c:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity")
								bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
								bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
								bv.Parent = c
								Debris:AddItem(bv, 0.05)
							end
						end
					end
				end
			end
		end
	end
end
function Fury()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 2
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0, 4000000, 0)
	local TEXTS = {
		"Let's see you take this!",
		"Fall down!",
		"I'll end you!"
	}
	Chatter(TEXTS[MRANDOM(1, #TEXTS)], 0)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position, Mouse.Hit.p)
		until ATTACK == false
		GYRO:Remove()
	end))
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		GRAB.C1 = Clerp(GRAB.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(55), RAD(0)) * CF(-1.7, 0, -0.4) * CF(1.3, 0, 0), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.2, -0.1) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(55)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local FIRING = true
	local SHOOTING = false
	local TIMER = 70
	CreateSound(1498950813, GUN, 6, 1, false)
	local MOUSE = Mouse.Button1Down:connect(function(NEWKEY)
		if SHOOTING == false then
			HOLD = true
			repeat
				SHOOTING = true
				local GUNPOS = GUN.CFrame * GUNOFFSET.p
				local HIT, POS, NORMAL = CastProperRay(GUNPOS, Mouse.Hit.p, 1000, Character)
				local DISTANCE = (POS - GUNPOS).Magnitude
				if HIT then
					if HIT.Parent:FindFirstChildOfClass("Humanoid") then
						if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
							CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], HIT, 10, 1, false)
							CreateFlyingDebree(HIT, CF(POS), 7, VT(0.1, 0.1, 0.1), 5, 35, true)
							function swait()
								game:GetService('RunService').Heartbeat:wait()
							end
							sex = Mouse.Hit.p
							swait()
							for i = 0, 10,1 do
								swait()
								v.Position = sex
							end
						end
					elseif HIT.Anchored == true then
						CreateFlyingDebree(HIT, CF(POS), 7, VT(0.2, 0.2, 0.2), 5, 35, true)
						SpawnBulletHole(CF(POS, POS + NORMAL) * ANGLES(RAD(90), RAD(0), RAD(0)))
					end
				end
				TIMER = 55
				SHAKECAM(GUNPOS, 8, 1, 3)
				SHAKECAM(POS, 10, 2, 3)
				WACKYEFFECT({
					Time = 6,
					EffectType = "Block",
					Size = VT(0.4, 0.4, 0.4),
					Size2 = VT(1, 1, 1),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = CF(GUNPOS),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = C3(1, 1, 0),
					SoundID = 330704232,
					SoundPitch = 1,
					SoundVolume = 1
				})
				WACKYEFFECT({
					Time = 6,
					EffectType = "Box",
					Size = VT(0.3, 0.3, DISTANCE),
					Size2 = VT(0, 0, DISTANCE),
					Transparency = 0,
					Transparency2 = 1,
					CFrame = CF(GUNPOS, POS) * CF(0, 0, -DISTANCE / 2),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = C3(1, 1, 0),
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
				for i = 0, 0.2, 0.1 / Animation_Speed do
					Swait()
					GRAB.C1 = Clerp(GRAB.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(55), RAD(0)) * CF(-1.7, 0, -0.4) * CF(1.3, 0, 0), 0.2)
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.1, -0.05) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.6) * ANGLES(RAD(115), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.6) * ANGLES(RAD(115), RAD(0), RAD(55)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(12.5), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-2), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i = 0, 0.05, 0.1 / Animation_Speed do
					Swait()
					GRAB.C1 = Clerp(GRAB.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(55), RAD(0)) * CF(-1.7, 0, -0.4) * CF(1.3, 0, 0), 0.2)
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.2, -0.1) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(55)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			until HOLD == false
			SHOOTING = false
		end
	end)
	repeat
		Swait()
		if SHOOTING == false then
			TIMER = TIMER - 1
			if TIMER <= 0 then
				FIRING = false
			end
			GRAB.C1 = Clerp(GRAB.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(55), RAD(0)) * CF(-1.7, 0, -0.4) * CF(1.3, 0, 0), 0.2)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0.2, -0.1) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.6) * ANGLES(RAD(110), RAD(0), RAD(55)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until FIRING == false and SHOOTING == false
	MOUSE:Disconnect()
	ATTACK = false
	Rooted = false
end
function Velocity()
	ATTACK = true
	Rooted = true
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(10), RAD(0), RAD(-45)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-10), RAD(0), RAD(45)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.1, 0.5, -0.6) * ANGLES(RAD(0), RAD(0), RAD(90)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.95, 0) * ANGLES(RAD(10), RAD(-35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	local SOUND = CreateSound(235097614, Torso, 6, 2, false)
	UNANCHOR = false
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		CharacterFade(C3(0.12, 0.12, 0.12), 25)
		RootPart.CFrame = Clerp(RootPart.CFrame, RootPart.CFrame, 0.07) * CF(0, 0, -4)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-5), RAD(-80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	repeat
		Swait()
		CharacterFade(C3(0.12, 0.12, 0.12), 25)
		RootPart.CFrame = Clerp(RootPart.CFrame, CF(RootPart.Position, VT(Mouse.Hit.p.X, RootPart.Position.Y, Mouse.Hit.p.Z)), 0.07) * CF(0, 0, -4)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-5), RAD(-80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	until KEYHOLD == false or SOUND.Playing == false
	UNANCHOR = true
	ATTACK = false
	Rooted = false
end
function PointBlank()
	ATTACK = true
	Rooted = true
	local HIT, HUMAN, ROOT
	WACKYEFFECT({
		Time = 25,
		EffectType = "Wave",
		Size = VT(4, 0.2, 4),
		Size2 = VT(5, 0, 5),
		Transparency = 0.6,
		Transparency2 = 1,
		CFrame = RootPart.CFrame * CF(0, -3.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(0)),
		MoveToPos = nil,
		RotationX = 0,
		RotationY = 0,
		RotationZ = 0,
		Material = "Neon",
		Color = C3(1, 1, 1),
		SoundID = nil,
		SoundPitch = nil,
		SoundVolume = nil
	})
	CreateSound(235097614, Torso, 6, 3, false)
	for i = 0, 0.75, 0.1 / Animation_Speed do
		Swait()
		if HIT ~= nil then
			break
		end
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = GetRoot(CHILD, false)
					if TORSO and 0 < HUM.Health and 5 >= (TORSO.Position - RootPart.CFrame * CF(0, 0, -2).p).Magnitude then
						ROOT = TORSO
						HUMAN = HUM
						HIT = CHILD
					end
				end
			end
		end
		RootPart.CFrame = Clerp(RootPart.CFrame, RootPart.CFrame, 0.07) * CF(0, 0, -1.5)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(135), RAD(0), RAD(12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-5), RAD(-80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if HIT then
		do
			local DEAD = false
			CreateSound(260411131, Torso, 6, 1, false)
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					ROOT.CFrame = LeftArm.CFrame * CF(0, -(1 + ROOT.Size.Z / 2), 0) * ANGLES(RAD(-90), RAD(180), RAD(0))
					ROOT.Velocity = VT(0, 0, 0)
				until DEAD == true
			end))
			local TEXTS = {
				"Gotcha!",
				"I've got you!",
				"I'll end you!",
				"Die!"
			}
			Chatter(TEXTS[MRANDOM(1, #TEXTS)], 0)
			for i = 1, 25 do
				Swait()
				RootPart.CFrame = Clerp(RootPart.CFrame, RootPart.CFrame, 0.07) * CF(0, 0, -(1.5 - 0.06 * i))
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(10), RAD(0), RAD(-45)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-30), RAD(0), RAD(45)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.6) * ANGLES(RAD(130), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.95, 0) * ANGLES(RAD(10), RAD(-35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			for i = 0, 0.5, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(10), RAD(0), RAD(-45)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-30), RAD(0), RAD(45)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0.6) * ANGLES(RAD(120), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.6) * ANGLES(RAD(130), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.95, 0) * ANGLES(RAD(10), RAD(-35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			DEAD = true
			local GUNPOS = GUN.CFrame * GUNOFFSET.p
			local HIT, POS, NORMAL = CastProperRay(GUNPOS, ROOT.Position, 1000, Character)
			local DISTANCE = (POS - GUNPOS).Magnitude
			SHAKECAM(GUNPOS, 12, 3, 12)
			WACKYEFFECT({
				Time = 6,
				EffectType = "Block",
				Size = VT(0.4, 0.4, 0.4),
				Size2 = VT(1, 1, 1),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(GUNPOS),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(1, 1, 0),
				SoundID = 330704232,
				SoundPitch = 1,
				SoundVolume = 3
			})
			WACKYEFFECT({
				Time = 6,
				EffectType = "Box",
				Size = VT(0.3, 0.3, DISTANCE),
				Size2 = VT(0, 0, DISTANCE),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(GUNPOS, POS) * CF(0, 0, -DISTANCE / 2),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(1, 1, 0),
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
			ROOT.Parent:BreakJoints()
			CreateFlyingDebree(ROOT, CF(POS), 10, VT(0.5, 0.5, 0.5), 5, 35, true)
			CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], ROOT, 10, 1, false)
			for i = 0, 0.2, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(10), RAD(0), RAD(-45)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-30), RAD(0), RAD(45)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0.6) * ANGLES(RAD(150), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.6) * ANGLES(RAD(130), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.95, 0) * ANGLES(RAD(10), RAD(-35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			for i = 0, 0.75, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(10), RAD(0), RAD(-45)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-30), RAD(0), RAD(45)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, 0.6) * ANGLES(RAD(120), RAD(0), RAD(-55)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.6) * ANGLES(RAD(130), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.95, 0) * ANGLES(RAD(10), RAD(-35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		end
	end
	ATTACK = false
	Rooted = false
end
function Geiser()
	local HIT = Mouse.Target
	local BULLETORIGIN = Mouse.Hit.p
	local HITFLOOR, HITPOS = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
	if HIT and HIT.Anchored == true and HITFLOOR then
		ATTACK = true
		Rooted = true
		for i = 0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(30), RAD(0), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		while true do
			for i = 0, 0.2, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(30), RAD(0), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			do
				local HIT = Mouse.Target
				if HIT and HIT.Anchored == true then
					local GUNPOS = GUN.CFrame * GUNOFFSET.p
					local HITFLOOR, POS = Raycast(GUNPOS, GUN.CFrame.lookVector, 25, Character)
					local DISTANCE = (POS - GUNPOS).Magnitude
					SHAKECAM(GUNPOS, 12, 3, 12)
					WACKYEFFECT({
						Time = 6,
						EffectType = "Block",
						Size = VT(0.4, 0.4, 0.4),
						Size2 = VT(1, 1, 1),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(GUNPOS),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(1, 1, 0),
						SoundID = 330704232,
						SoundPitch = 1,
						SoundVolume = 3
					})
					WACKYEFFECT({
						Time = 6,
						EffectType = "Box",
						Size = VT(0.3, 0.3, DISTANCE),
						Size2 = VT(0, 0, DISTANCE),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(GUNPOS, POS) * CF(0, 0, -DISTANCE / 2),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(1, 1, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
					coroutine.resume(coroutine.create(function()
						wait(0.1)
						local AREA = CF(BULLETORIGIN)
						local AIM = AREA * CF(0, 370, 0) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, 45).p
						local DISTANCE = (AREA.p - AIM).Magnitude
						ApplyAoE(AREA.p + VT(0, 2, 0), 5, 80, 99, 45, false)
						SHAKECAM(AREA.p, 20, 4, 12)
						CreateFlyingDebree(HIT, CF(BULLETORIGIN), 20, VT(0.5, 0.5, 0.5), 5, 35, true)
						WACKYEFFECT({
							Time = 13,
							EffectType = "Block",
							Size = VT(0.4, 0.4, 0.4),
							Size2 = VT(3, 3, 3),
							Transparency = 0,
							Transparency2 = 1,
							CFrame = CF(AREA.p),
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(1, 1, 0),
							SoundID = 330704232,
							SoundPitch = 0.7,
							SoundVolume = 3
						})
						WACKYEFFECT({
							Time = 13,
							EffectType = "Box",
							Size = VT(0.9, 0.9, DISTANCE),
							Size2 = VT(0, 0, DISTANCE),
							Transparency = 0,
							Transparency2 = 1,
							CFrame = CF(AREA.p, AIM) * CF(0, 0, -DISTANCE / 2),
							MoveToPos = nil,
							RotationX = 0,
							RotationY = 0,
							RotationZ = 0,
							Material = "Neon",
							Color = C3(1, 1, 0),
							SoundID = nil,
							SoundPitch = nil,
							SoundVolume = nil
						})
					end))
					BULLETORIGIN = Mouse.Hit.p
					for i = 0, 0.1, 0.1 / Animation_Speed do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
				end
				if KEYHOLD == false then
					break
				end
			end
		end
		for i = 0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(50), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(35), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		ATTACK = false
		Rooted = false
	end
end
function LooseRage()
	local HITFLOOR, HITPOS = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = true
		CreateSound(278641993, Torso, 6, 1, false)
		ApplyAoE(RootPart.Position + VT(0, 10, 0), 70, 0, 0, -100, false)
		for i = 1, 3 do
			WACKYEFFECT({
				Time = 20,
				EffectType = "Sphere",
				Size = VT(5 * i, 5 * i, 5 * i),
				Size2 = VT(0, 0, 0),
				Transparency = 0.6,
				Transparency2 = 1,
				CFrame = CF(RootPart.Position),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = C3(0, 0, 0),
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		do
			local WAVES = true
			for i = 0, 1, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.1, -0.1) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.3) * ANGLES(RAD(75), RAD(0), RAD(-32)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5, -0.3) * ANGLES(RAD(75), RAD(0), RAD(32)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			end
			CreateSound(288641686, Torso, 10, 0.7, false)
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.1, -0.1) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-75), RAD(0), RAD(32)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-75), RAD(0), RAD(-32)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					local HITFLOOR, HITPOS = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
					WACKYEFFECT({
						Time = 35,
						EffectType = "Wave",
						Size = VT(1, 1 + 1 * SIN(SINE / 6), 1),
						Size2 = VT(40, 3, 40),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(HITPOS) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Fabric",
						Color = C3(0, 0, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
					WACKYEFFECT({
						Time = 20,
						EffectType = "Sphere",
						Size = VT(6 + 1 * SIN(SINE / 6), 6 + 1 * SIN(SINE / 6), 6 + 1 * SIN(SINE / 6)),
						Size2 = VT(0, 25, 0),
						Transparency = 0.9,
						Transparency2 = 1,
						CFrame = CF(RootPart.Position),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(0, 0, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				until WAVES == false
				coroutine.resume(coroutine.create(function()
					DAMAGEMULTIPLIER = DAMAGEMULTIPLIER + 0.5
					wait(20)
					DAMAGEMULTIPLIER = DAMAGEMULTIPLIER - 0.5
				end))
			end))
			wait(0.3)
			for i = 1, 200 do
				Swait()
				if MRANDOM(1, 3) == 1 then
					local AREA = CF(RootPart.Position - VT(0, 3.4, 0)) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * CF(0, 0, MRANDOM(5, 25))
					local AIM = AREA * CF(0, 370, 0) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, 45).p
					local DISTANCE = (AREA.p - AIM).Magnitude
					ApplyAoE(AREA.p + VT(0, 2, 0), 7, 80, 99, -2, false)
					SHAKECAM(AREA.p, 20, 4, 12)
					WACKYEFFECT({
						Time = 13,
						EffectType = "Block",
						Size = VT(0.4, 0.4, 0.4),
						Size2 = VT(3, 3, 3),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(AREA.p),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(1, 1, 0),
						SoundID = 330704232,
						SoundPitch = 0.7,
						SoundVolume = 3
					})
					WACKYEFFECT({
						Time = 13,
						EffectType = "Box",
						Size = VT(0.9, 0.9, DISTANCE),
						Size2 = VT(0, 0, DISTANCE),
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(AREA.p, AIM) * CF(0, 0, -DISTANCE / 2),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = C3(1, 1, 0),
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				end
			end
			WAVES = false
			ATTACK = false
			Rooted = false
		end
	end
end
function Joy()
	ATTACK = true
	Rooted = true
	local LOOP = true
	KEY = Mouse.KeyDown:connect(function(NEWKEY)
		if NEWKEY == "t" then
			KEY:Disconnect()
			LOOP = false
		end
	end)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.75, 0) * ANGLES(RAD(170 - 15 * SIN(SINE / 6)), RAD(0), RAD(12 - 15 * COS(SINE / 6))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		until LOOP == false
	end))
	repeat
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.85, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.3) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0.1) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.1, -0.3) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.85, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.3) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0.1) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.1, -0.3) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.1, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until LOOP == false
	ATTACK = false
	Rooted = false
end
function MouseDown(Mouse)
	if ATTACK == false then
		Fury()
	end
end
function MouseUp(Mouse)
	HOLD = false
end
function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		Velocity()
	end

	if Key == "c" and ATTACK == false then
		Geiser()
	end
	if Key == "x" and ATTACK == false then
		LooseRage()
	end
	if Key == "t" and ATTACK == false then
		Joy()
	end
	if Key == "m" and ATTACK == false then
		if MUTE == false then
			sick:Play()
			MUTE = true
		else
			MUTE = false
		end
	end
end
function KeyUp(Key)
	KEYHOLD = false
end
Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)
function unanchor()
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA("BasePart") and c ~= RootPart then
			c.Anchored = false
		end
	end
	if UNANCHOR == true then
		RootPart.Anchored = false
	else
		RootPart.Anchored = true
	end
end
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and Disable_Jump == true then
		Humanoid.Jump = false
	end
end)

while true do
	Swait()
	ANIMATE.Parent = nil
	for _, v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop()
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.05 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE * 2), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
	elseif ANIM ~= "Walk" or TORSOVELOCITY < 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-8 - 3 * SIN(SINE / 12)), RAD(-10), RAD(5 + 3 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-8 - 3 * SIN(SINE / 12)), RAD(10), RAD(-5 - 3 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.25 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(30 * COS(SINE / WALKSPEEDVALUE)), RAD(-10), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.25 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-30 * COS(SINE / WALKSPEEDVALUE)), RAD(10), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		end
	end
	HALOWELD.C0 = Clerp(HALOWELD.C0, CF(0, 0, 0) * ANGLES(RAD(90 - 12 * SIN(SINE / 12)), RAD(-12 * COS(SINE / 12)), RAD(0)), 0.2)
	if ATTACK == false then
		GRAB.C1 = Clerp(GRAB.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2)
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	Humanoid.Name = "Fallen Anger"
	if sick.Parent ~= RootPart then
		sick = IT("Sound", RootPart)
	end
	sick.SoundId = "rbxassetid://172056286"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 4
	sick.Playing = MUTE
	if Head:FindFirstChild("face") then
		Head.face.Texture = "rbxassetid://210559531"
	end
end
