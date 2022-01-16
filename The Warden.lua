--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

wait(0.2)

Player = game:GetService("Players").LocalPlayer
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
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://1494340971"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()

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

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 25
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = -math.huge
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
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local PLAYMAINANIM = true
local BOLTSOUNDS = {168586621,168586586,178452241}

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

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
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
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

--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

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
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
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
	print("why breakjoints stop it")
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
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
		if m11 > m00 then
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
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
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
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,2,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.5,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",nil)
PE.LightEmission=.8
PE.Color = ColorSequence.new(BRICKC("Alder").Color,BRICKC("Lavender").Color)
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,1)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=100
PE.VelocitySpread = 10000
PE.Acceleration = Vector3.new(0,85,0)
PE.Drag = 5
PE.Speed = NumberRange.new(0.1,5)
PE.Texture="http://www.roblox.com/asset/?id=1460745664"
PE.ZOffset = 0.5
PE.Name = "PE"
PE.Enabled = false

function Fire(art)
	local PARTICLES = PE:Clone()
	PARTICLES.Parent = art
	PARTICLES.Enabled = true
	return PARTICLES
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat wait(1) until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

local HATWELD = nil
function Pose(WhichPose,Speed,Time,Magic,Gyro,Tors)
	PLAYMAINANIM = false
	if WhichPose == "Cast1" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			if Magic == true then
				WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,1,1)*1.5, Size2 = VT(0,4,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if Gyro ~= nil and Gyro ~= false then
				Gyro.cframe = CF(RootPart.Position,Mouse.Hit.p)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(35)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(-35)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(125), RAD(0), RAD(45)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
	elseif WhichPose == "Cast2" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			if Magic == true then
				WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,1,1)*1.5, Size2 = VT(0,4,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,1,1)*1.5, Size2 = VT(0,4,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if Gyro ~= nil and Gyro ~= false then
				Gyro.cframe = CF(RootPart.Position,Mouse.Hit.p)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(120), RAD(0), RAD(15)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.65 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(120), RAD(0), RAD(-15)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
	elseif WhichPose == "RightArmUp" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			if Magic == true then
				WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(1,1,1)*1.5, Size2 = VT(0,4,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			if Gyro ~= nil and Gyro ~= false then
				Gyro.cframe = CF(RootPart.Position,Mouse.Hit.p)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(15)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(-15)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(125), RAD(0), RAD(25)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
	elseif WhichPose == "Taunt" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(175), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
		HATWELD.Part0 = RightArm
		HATWELD.C0 = CF(0,-1.1,-0.4) * ANGLES(RAD(0), RAD(0), RAD(180)) * ANGLES(RAD(-20), RAD(0), RAD(0))
		CreateSound(221057812,Torso,10,1,false)
		for i=0, Time*2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(145), RAD(0), RAD(45)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(5), RAD(25), RAD(-15)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.65, -0.5) * ANGLES(RAD(175), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
			HATWELD.C0 = Clerp(HATWELD.C0, CF(-0.5,-1.2,-0.3) * ANGLES(RAD(0), RAD(0), RAD(180)) * ANGLES(RAD(35), RAD(0), RAD(35)), Speed / Animation_Speed)
		end
		HATWELD.Part0 = Head
		HATWELD.C0 = CF(0,0.35,0)
	elseif WhichPose == "Prepare key" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			if Gyro ~= nil and Gyro ~= false then
				Gyro.cframe = CF(RootPart.Position,Tors.Position)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(65)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(-65)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.25) * ANGLES(RAD(90), RAD(0), RAD(65)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
	elseif WhichPose == "Turn key" then
		for i=0, Time, 0.1 / Animation_Speed do
			Swait()
			if Gyro ~= nil and Gyro ~= false then
				Gyro.cframe = CF(RootPart.Position,Tors.Position)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(75)), Speed / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(-75)), Speed / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), -0.25) * ANGLES(RAD(90), RAD(0), RAD(75)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * RIGHTSHOULDERC0, Speed / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, Speed / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), Speed / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), Speed / Animation_Speed)
		end
	end
	PLAYMAINANIM = true
end

--Lightning({Color = C3(1,1,1), Start = Torso.Position, End = Mouse.Hit.p, SegmentL = 2, Thickness = 0.1, DoesFade = false, Ignore = Character, MaxDist = 400, Branches = false})
function Lightning(Table)
	local Color = Table.Color or C3(1,1,1)
	local StartPos = Table.Start or Torso.Position
	local EndPos = Table.End or Mouse.Hit.p
	local SegmentLength = Table.SegmentL or 2
	local Thickness = Table.Thickness or 0.1
	local Dissapear = Table.DoesFade or false
	local Parent = Table.Ignore or Character
	local MaxDist = Table.MaxDist or 400
	local Branches = Table.Branches or false
	local HIT,HITPOS = CastProperRay(StartPos, EndPos, MaxDist, Parent)
	local DISTANCE = math.ceil((StartPos - HITPOS).Magnitude/SegmentLength)
	local LIGHTNINGMODEL = IT("Model",Effects)
	LIGHTNINGMODEL.Name = "Lightning"
	local LastBolt = nil
	for E = 1, DISTANCE do
		local ExtraSize = (DISTANCE-E)/15
		local PART = CreatePart(3, LIGHTNINGMODEL, "Neon", 0, 0, BRICKC("Pearl"), "LightningPart"..E, VT(Thickness+ExtraSize,SegmentLength,Thickness+ExtraSize))
		PART.Color = Color
		MakeForm(PART,"Cyl")
		if LastBolt == nil then
			PART.CFrame = CF(StartPos,HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
		else
			PART.CFrame = CF(LastBolt.CFrame*CF(0,-LastBolt.Size.Y/2,0).p,CF(HITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,SegmentLength/3+(DISTANCE-E)).p)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
		end
		LastBolt = PART
		if Branches == true then
			local CHOICE = MRANDOM(1,7+((DISTANCE-E)*2))
			if CHOICE == 1 then
				local LASTBRANCH = nil
				for i = 1, MRANDOM(2,5) do
					local ExtraSize2 = ((DISTANCE-E)/25)/i
					local PART = CreatePart(3, LIGHTNINGMODEL, "Neon", 0, 0, BRICKC("Pearl"), "Branch"..E.."-"..i, VT(Thickness+ExtraSize2,SegmentLength,Thickness+ExtraSize2))
					PART.Color = Color
					MakeForm(PART,"Cyl")
					if LASTBRANCH == nil then
						PART.CFrame = CF(LastBolt.CFrame*CF(0,-LastBolt.Size.Y/2,0).p,LastBolt.CFrame*CF(0,-LastBolt.Size.Y/2,0)*ANGLES(RAD(0),RAD(0),RAD(MRANDOM(0,360)))*CF(0,Thickness*7,0)*CF(0,0,-1).p)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
					else
						PART.CFrame = CF(LASTBRANCH.CFrame*CF(0,-LASTBRANCH.Size.Y/2,0).p,LASTBRANCH.CFrame*CF(0,-LASTBRANCH.Size.Y/2,0)*ANGLES(RAD(0),RAD(0),RAD(MRANDOM(0,360)))*CF(0,Thickness*3,0)*CF(0,0,-1).p)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
					end
					LASTBRANCH = PART
				end
			end
		end
	end
	if Dissapear == true then
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				Swait()
				for _, c in pairs(LIGHTNINGMODEL:GetChildren()) do
					if c.ClassName == "Part" then
						c.Transparency = i/10
					end
				end
			end
			LIGHTNINGMODEL:remove()
		end))
	elseif Dissapear == false then
		Debris:AddItem(LIGHTNINGMODEL,0.1)
	end
	return {End = LastBolt.CFrame*CF(0,0,-LastBolt.Size.Z/2).p,LastBolt = LastBolt,Model = LIGHTNINGMODEL}
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

for i = 1, 15 do
	local FACE = CreatePart(3, Character, "Fabric", 0, 0+(i-1)/15.2, "Dark stone grey", "FaceGradient", VT(1.01,0.58,1.01),false)
	FACE.Color = C3(0,0,0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/35,0), CF(0, 0, 0))
end
local HAT1 = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(2,0.2,2),false)
MakeForm(HAT1,"Cyl")
HATWELD = CreateWeldOrSnapOrMotor("Weld", Head, Head, HAT1, CF(0,0.35,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(2.01,0.15,2.01),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT1, HAT1, BELT, CF(0,0,0), CF(0, 0, 0))
local HAT2 = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.3,2.2,1.3),false)
MakeForm(HAT2,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT1, HAT1, HAT2, CF(0,1.1,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.31,0.2,1.31),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,0,0), CF(0, 0, 0))
local GEM = CreatePart(3, Character, "Neon", 0, 0, "Lavender", "Gem", VT(0.25,0.25,0.1),false)
MakeForm(GEM,"Ball")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, GEM, CF(0,0,-BELT.Size.X/2), CF(0, 0, 0))
local GEM = CreatePart(3, Character, "Neon", 0, 0, "Lavender", "Gem", VT(0.25,0.25,0.1),false)
MakeForm(GEM,"Ball")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, GEM, CF(0,0,BELT.Size.X/2), CF(0, 0, 0))
local GEM = CreatePart(3, Character, "Neon", 0, 0, "Lavender", "Gem", VT(0.1,0.25,0.25),false)
MakeForm(GEM,"Ball")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, GEM, CF(-BELT.Size.X/2,0,0), CF(0, 0, 0))
local GEM = CreatePart(3, Character, "Neon", 0, 0, "Lavender", "Gem", VT(0.1,0.25,0.25),false)
MakeForm(GEM,"Ball")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, GEM, CF(BELT.Size.X/2,0,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.31,0.1,1.31),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,0.7,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.31,0.1,1.31),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,-0.7,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.31,0.1,1.31),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,0.35,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.31,0.1,1.31),false)
BELT.Color = C3(15/255,15/255,15/255)
MakeForm(BELT,"Cyl")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,-0.35,0), CF(0, 0, 0))
local BELT = CreatePart(3, Character, "SmoothPlastic", 0, 0, "Really black", "Hat", VT(1.3,0.5,1.3),false)
MakeForm(BELT,"Ball")
CreateWeldOrSnapOrMotor("Weld", HAT2, HAT2, BELT, CF(0,HAT2.Size.Y/2,0), CF(0, 0, 0))
Humanoid.DisplayDistanceType = "None"
local naeeym2 = IT("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "The Warden"
tecks2.Font = "Bodoni"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0.5
tecks2.TextColor3 = C3(0,0,0)
tecks2.TextStrokeColor3 = BRICKC"Lavender".Color
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
local EYE = CreatePart(3, Character, "Neon", 0, 0, "Lilac", "FaceGradient", VT(0.15,0.15,0.15),false)
MakeForm(EYE,"Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, EYE, CF(0.15,0.22,-0.55), CF(0, 0, 0))
local EYE = CreatePart(3, Character, "Neon", 0, 0, "Lilac", "FaceGradient", VT(0.05,0.14,0.05),false)
EYE.Color = C3(0,0,0)
MakeForm(EYE,"Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, EYE, CF(0.15,0.22,-0.6), CF(0, 0, 0))
local top = Instance.new("Shirt")
top.ShirtTemplate = "rbxassetid://676428254"
top.Parent = Character
top.Name = "Cloth"
local bottom = Instance.new("Pants")
bottom.PantsTemplate = "rbxassetid://676428351"
bottom.Parent = Character
bottom.Name = "Cloth"
for _, c in pairs(Character:GetChildren()) do
	if c.ClassName == "Part" and c.Name ~= "FaceGradient" and c.Name ~= "Hat" and c.Name ~= "Gem" then
		c.Material = "Neon"
		if c:FindFirstChildOfClass("ParticleEmitter") then
			c:FindFirstChildOfClass("ParticleEmitter"):remove()
		end
		c.Color = C3(1,1,1)
		if c == Head then
			if c:FindFirstChild("face") then
				c.face:remove()
			end
		end
	elseif c.ClassName == "CharacterMesh" or c.ClassName == "Accessory" or c.ClassName == "Hat" or c.Name == "Body Colors" then
		c:remove()
	elseif (c.ClassName == "Shirt" or c.ClassName == "Pants") and c.Name ~= "Cloth" then
		c:remove()
	end
end
local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil})
	end
end
for e = 1, #BODY do
	if BODY[e] ~= nil then
		local STUFF = BODY[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end
function refit()
	Character.Parent = workspace
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				Humanoid:remove()
				PART.Parent = PARENT
				Humanoid = IT("Humanoid",Character)
			end
		end
	end
end
local SKILLTEXTCOLOR = BRICKC"Lavender".Color
local SKILLFONT = "Bodoni"
local SKILLTEXTSIZE = 7

Humanoid.Died:connect(function()
	refit()
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.75, 2, UD2(0.23, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.75, 2, UD2(0.50, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 0.75, 2, UD2(0.23, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 0.75, 2, UD2(0.50, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 0.75, 2, UD2(0.365, 0, 0.70, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Warden Zap", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Warden Thunder", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Inferno Ring", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Warden Wall", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] Prison Key", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0, "Text 5")

--//=================================\\
--||			DAMAGING
--\\=================================//

function ApplyAoE(POSITION,RANGE,FLING,BURN)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if HUM.Health > 0 and (TORSO.Position - POSITION).Magnitude <= RANGE then
						print("no")
						if FLING ~= 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") and c.Transparency == 0 then
									if BURN == true then
										Fire(c)
									end
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Warden_Zap()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	CreateSound(348663022,RightArm,1.5,2,false)
	Pose("Cast1",0.8,1,true,GYRO)
	local LightningTable = Lightning({Color = SKILLTEXTCOLOR, Start = RightArm.CFrame*CF(0,-1,0).p, End = Mouse.Hit.p, SegmentL = 2, Thickness = 0.2, DoesFade = true, Ignore = Character, MaxDist = 100, Branches = false})
	local Hitpos = LightningTable.End
	ApplyAoE(Hitpos,10,35)
	WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(1,1,1)*15, Transparency = 0, Transparency2 = 1, CFrame = CF(Hitpos)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = BOLTSOUNDS[MRANDOM(1,#BOLTSOUNDS)], SoundPitch = MRANDOM(8,12)/10, SoundVolume = 5})
	for i = 1, 4 do
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(0,45,0), Transparency = 0, Transparency2 = 1, CFrame = CF(Hitpos)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
	Pose("Cast1",0.8,1,true)
	GYRO:remove()
	ATTACK = false
	Rooted = false
end

function Warden_Thunder()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	CreateSound(469345336,Torso,3,2,false)
	Pose("Cast2",1.5,2,true,GYRO)
	coroutine.resume(coroutine.create(function()
		local FRAME = RootPart.CFrame
		for i = 1, 25 do
			local POS = FRAME*CF(MRANDOM(-17,17),0,-i*15)
			local LightningTable = Lightning({Color = SKILLTEXTCOLOR, Start = POS*CF(0,85,0).p, End = POS*CF(0,-15,0).p, SegmentL = 3, Thickness = 0.4, DoesFade = true, Ignore = Character, MaxDist = 400, Branches = true})
			local Hitpos = LightningTable.End
			ApplyAoE(Hitpos,20,15)
			WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(1,1,1)*15, Transparency = 0, Transparency2 = 1, CFrame = CF(Hitpos)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = BOLTSOUNDS[MRANDOM(1,#BOLTSOUNDS)], SoundPitch = MRANDOM(8,12)/10, SoundVolume = 5})
			for i = 1, 4 do
				WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(0,75,0), Transparency = 0, Transparency2 = 1, CFrame = CF(Hitpos)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			wait(0.05)
		end
	end))
	Pose("Cast2",1.5,0.7,true)
	GYRO:remove()
	ATTACK = false
	Rooted = false
end

function Inferno_Ring()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	local FIRE = IT("Model",Effects)
	FIRE.Name = "Fire"
	local MAIN = CreatePart(3, FIRE, "Neon", 0, 1, "Lavender", "Center", VT(0,0,0))
	FIRE.PrimaryPart = MAIN
	local FIRES = {}
	for i = 1, 45 do
		local PRT = CreatePart(3, FIRE, "Neon", 0, 1, "Lavender", "RingPart", VT(3,3,3))
		PRT.CFrame = MAIN.CFrame*ANGLES(RAD(0),RAD((360/45)*i),RAD(0))*CF(0,0,20)
		local F = Fire(PRT)
		table.insert(FIRES,F)
	end
	repeat
		FIRE:SetPrimaryPartCFrame(CF(Mouse.Hit.p))
		Pose("Cast1",1.5,0.01,false,GYRO)
	until HOLD == true
	coroutine.resume(coroutine.create(function()
		for i = 1, 4 do
			ApplyAoE(MAIN.Position,21,-15,true)
			CreateSound(463598785,MAIN,3,1,false)
			for E = 1, #FIRES do
				if FIRES[E] ~= nil then
					FIRES[E].Acceleration = VT(0,300,0)
					FIRES[E].Lifetime=NumberRange.new(0.35,1.5)
				end
			end
			wait(0.3)
		end
		for E = 1, #FIRES do
			if FIRES[E] ~= nil then
				FIRES[E].Enabled = false
			end
		end
		Debris:AddItem(FIRE,5)
	end))
	CreateSound(215395388,RightArm,3,2,false)
	Pose("RightArmUp",1.5,0.5,true)
	GYRO:remove()
	ATTACK = false
	Rooted = false
end

function Warden_Wall()
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 8, Character)
	if HITFLOOR ~= nil then
		if HITFLOOR.Anchored == true then
			local WALL = HITFLOOR:Clone()
			WALL.Size = VT(45,45,5)
			WALL.Parent = Effects
			WALL.Name = "Wall"
			WALL.CFrame = RootPart.CFrame*CF(0,-65/2.1,-5)*ANGLES(RAD(-15),RAD(0),RAD(0))
			CreateSound(130972023,WALL,5,0.8,false)
			ATTACK = true
			Rooted = true
			local HIT = WALL.Touched:Connect(function(hit)
				if hit.Parent ~= Character then
					print("no")
				end
			end)
			coroutine.resume(coroutine.create(function()
				WACKYEFFECT({Time = 35, EffectType = "Box", Size = WALL.Size, Size2 = WALL.Size*2, Transparency = 0, Transparency2 = 1, CFrame = WALL.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				for i = 1, 90 do
					Swait()
					WALL.CFrame = WALL.CFrame*CF(0,0.5,0)
				end
				HIT:disconnect()
				wait(5)
				for i = 1, 46 do
					Swait()
					WALL.CFrame = WALL.CFrame*CF(0,-1,0)
				end
				WALL:remove()
			end))
			Pose("RightArmUp",1.5,1.2,true)
			ATTACK = false
			Rooted = false
		end
	end
end

function Prison_Key()
	if Mouse.Target ~= nil then
		if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local HUM = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			local TORSO = HUM.Parent:FindFirstChild("Torso") or HUM.Parent:FindFirstChild("UpperTorso")
			local GYRO = IT("BodyGyro",RootPart)
			GYRO.D = 750
			GYRO.P = 20000
			GYRO.MaxTorque = VT(0,40000000,0)
			local grav = Instance.new("BodyPosition",TORSO)
			grav.D = 15
			grav.P = 20000
			grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
			grav.position = TORSO.Position
			local GYRO2 = IT("BodyGyro",TORSO)
			GYRO2.D = 750
			GYRO2.P = 20000
			GYRO2.MaxTorque = VT(0,40000000,0)
			GYRO2.cframe = CF(TORSO.Position,RootPart.Position)
			grav.Name = "Jail"
			local LOCKPARTS = {}
			ATTACK = true
			Rooted = false
			local LOCK = IT("Model",Effects)
			LOCK.Name = "Lock"
			local LOCK2 = IT("Model",LOCK)
			LOCK2.Name = "Metal"
			--CREATE LOCK--
				local BASE = CreatePart(3, LOCK, "Glass", 0, 0, "Gold", "Keylock", VT(3, 2.5, 1))
				LOCK.PrimaryPart = BASE
				BASE.CFrame = CF(TORSO.Position,RootPart.Position)*CF(0,0,-4)
				local PRT = CreatePart(3, LOCK, "Glass", 0, 0, "Gold", "Keylock", VT(3, 1, 3))
				PRT.CFrame = BASE.CFrame*CF(0,-1.25,0)*ANGLES(RAD(90),RAD(0),RAD(0))
				MakeForm(PRT,"Cyl")
				local PRT = CreatePart(3, LOCK, "Glass", 0, 0, "White", "Hole", VT(1, 1, 1))
				PRT.Color = C3(0,0,0)
				PRT.CFrame = BASE.CFrame*CF(0,0.3,-0.01)*ANGLES(RAD(90),RAD(0),RAD(0))
				MakeForm(PRT,"Cyl")
				local PRT = CreatePart(3, LOCK, "Glass", 0, 0, "White", "Hole", VT(0.5, 1, 1))
				PRT.Color = C3(0,0,0)
				PRT.CFrame = BASE.CFrame*CF(0,-0.2,-0.01)
				for i = 1, 45 do
					local PRT = CreatePart(3, LOCK2, "Glass", 0, 0, "Grey", "Keylock", VT(0.5, 0.5, 0.5))
					PRT.CFrame = BASE.CFrame*CF(0,2,0)*ANGLES(RAD(0),RAD(0),RAD(-90+(360/90*i)))*CF(0,1,0)
				end
				local PRT = CreatePart(3, LOCK2, "Glass", 0, 0, "Grey", "Keylock", VT(0.5, 0.5, 0.5))
				PRT.CFrame = BASE.CFrame*CF(0,1.5,0)*ANGLES(RAD(0),RAD(0),RAD(90))*CF(0,1,0)
				LOCK2.PrimaryPart = PRT
			---------------
			local CHILDREN = LOCK:GetDescendants()
			for index, CHILD in pairs(CHILDREN) do
				if CHILD:IsA("BasePart") then
					CHILD.Transparency = 1
				end
			end
			for i = 1, 75 do
				LOCK:SetPrimaryPartCFrame(CF(TORSO.Position,RootPart.Position)*CF(0,0,-4))
				Swait()
				GYRO2.cframe = CF(TORSO.Position,RootPart.Position)
				GYRO.cframe = CF(RootPart.Position,TORSO.Position)
				local CHILDREN = LOCK:GetDescendants()
				for index, CHILD in pairs(CHILDREN) do
					if CHILD:IsA("BasePart") then
						CHILD.Transparency = CHILD.Transparency - 1/75
					end
				end
			end
			HUM.DisplayDistanceType = "None"
			local KEY = IT("Model",Effects)
			KEY.Name = "Key"
			--CREATE KEY--
				local KBASE = CreatePart(3, KEY, "Neon", 0, 0, "Lavender", "KeyBase", VT(0.1, 1, 0.1),false)
				KEY.PrimaryPart = KBASE
				KBASE.CFrame = RightArm.CFrame*CF(0,-2.1,0)*ANGLES(RAD(0),RAD(90),RAD(0))
				local WLD = weldBetween(RightArm,KBASE)
				for i = 1, 45 do
					local PRT = CreatePart(3, KEY, "Neon", 0, 0, "Lavender", "Key", VT(0.1, 0.1, 0.1),false)
					PRT.CFrame = KBASE.CFrame*CF(0,0.8,0)*ANGLES(RAD(0),RAD(0),RAD((360/45*i)))*CF(0,0.25,0)
					weldBetween(KBASE,PRT)
				end
				local PRT = CreatePart(3, KEY, "Neon", 0, 0, "Lavender", "Key", VT(0.3, 0.1, 0.1),false)
				PRT.CFrame = KBASE.CFrame*CF(-0.15,-0.45,0)
				weldBetween(KBASE,PRT)
				local PRT = CreatePart(3, KEY, "Neon", 0, 0, "Lavender", "Key", VT(0.3, 0.1, 0.1),false)
				PRT.CFrame = KBASE.CFrame*CF(-0.15,-0.25,0)
				weldBetween(KBASE,PRT)
			--------------
			Rooted = true
			Pose("Prepare key",1.5,1.2,false,GYRO,TORSO)
			coroutine.resume(coroutine.create(function()
				for i = 1, 10 do
					Swait()
					GYRO2.cframe = CF(TORSO.Position,RootPart.Position)
					GYRO.cframe = CF(RootPart.Position,TORSO.Position)
				end
				CreateSound(1149318312,BASE,5,1,false)
				CreateSound(160772554,BASE,3,1,false)
				LOCK2:SetPrimaryPartCFrame(BASE.CFrame*CF(0,0.8,0)*ANGLES(RAD(0),RAD(0),RAD(90))*CF(0,1,0))
				for i = 1, 4 do
					WACKYEFFECT({Time = 35, EffectType = "Crystal", Size = VT(1,1,1), Size2 = VT(0,15,0), Transparency = 0, Transparency2 = 1, CFrame = BASE.CFrame*CF(1,1.45,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				end
				WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(1,1,1)*25, Transparency = 0, Transparency2 = 1, CFrame = TORSO.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Lavender".Color, SoundID = nil, SoundPitch = MRANDOM(8,12)/10, SoundVolume = 5})
				wait(1)
				TORSO.Parent.Parent = LOCK
				for i = 1, 75 do
					Swait()
					local CHILDREN = KEY:GetDescendants()
					for index, CHILD in pairs(CHILDREN) do
						if CHILD:IsA("BasePart") then
							CHILD.Transparency = i/25
						end
					end
					local CHILDREN = LOCK:GetDescendants()
					for index, CHILD in pairs(CHILDREN) do
						if CHILD:IsA("BasePart") and CHILD.Name ~= "HumanoidRootPart" then
							CHILD.Transparency = CHILD.Transparency + 1/75
						elseif CHILD.ClassName == "Decal" then
							CHILD.Transparency = CHILD.Transparency + 1/75
						end
					end
				end
				TORSO.Parent:ClearAllChildren()
				KEY:remove()
				LOCK:remove()
			end))
			Pose("Turn key",0.8,1.2,false,GYRO,TORSO)
			GYRO:remove()
			ATTACK = false
			Rooted = false
		end
	end
end

function Hat()
	ATTACK = true
	Rooted = false
	Pose("Taunt",0.4,1.2,false)
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		Warden_Zap()
	end

	if Key == "b" and ATTACK == false then
		Warden_Thunder()
	end

	if Key == "c" and ATTACK == false then
		Inferno_Ring()
	end

	if Key == "v" and ATTACK == false then
		Warden_Wall()
	end

	if Key == "x" and ATTACK == false then
		Prison_Key()
	end

	if Key == "t" and ATTACK == false then
		Hat()
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

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

while true do
	Swait()
	script.Parent = WEAPONGUI
	Humanoid.Parent = Character
	if Humanoid then
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()
	end
	if ANIMATE.Parent == Character then
		ANIMATE:Destroy()
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	Humanoid.HipHeight = 1
	Humanoid.Name = "Warden"
	Humanoid.PlatformStand = false
	if PLAYMAINANIM == true then
		if TORSOVELOCITY < 1 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif TORSOVELOCITY > 1 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 6.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-35), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5 + 0.15 * COS(SINE / 12) - 0.05 * COS(SINE / 12), 0.5) * ANGLES(RAD(-35), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(10)), 0.15 / Animation_Speed)
		end
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
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" and c.Name ~= "Eye" then
			c.Material = "Neon"
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			c.Color = C3(1,1,1)
			if c == Head then
				if c:FindFirstChild("face") then
					c.face:remove()
				end
			end
		elseif c.ClassName == "print" or c.ClassName == "print" or c.ClassName == "print" or c.Name == "print" then
			print("hi")
		elseif (c.ClassName == "Shirt" or c.ClassName == "Pants") and c.Name ~= "Cloth" then
			print("hi")
		end
	end
	sick.SoundId = "rbxassetid://1494340971"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 3
	sick:Resume()
	sick.Parent = Torso
	refit()
	if Head:FindFirstChildOfClass("Sound") then
		Head:FindFirstChildOfClass("Sound"):remove()
	end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--