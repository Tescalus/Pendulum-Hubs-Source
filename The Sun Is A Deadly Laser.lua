--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
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
local Speed = 16
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
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local CUSTOMANGLES = true

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
	NEWPART:BreakJoints()
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
		NEWSOUND.SoundId = "rbxassetid://"..ID
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

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
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
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
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
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			else
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
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
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
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
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, DIRECTION * Distance), Ignore)
end

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.LightEmission = 0.8
Particle.Rate = 150
Particle.ZOffset = 1
Particle.Rotation = NumberRange.new(-180, 180)

--ParticleEmitter({Speed = 2, RotSpeed = NumberRange.new(-5, 5), Drag = 0, Size1 = 1, Size2 = 0, Lifetime1 = 1, Lifetime2 = 0, Parent = Torso, Emit = 10, Offset = 360, Enabled = false, Color1 = C3(1,1,1), Color2 = C3(1,1,1), Texture = ""})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Color1 = Table.Color1 or C3(1,1,1)
	local Color2 = Table.Color2 or C3(1,1,1)
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	local Texture = Table.Texture or "281983280"
	local RotS = Table.RotSpeed or NumberRange.new(-15, 15)
	local Trans1 = Table.Transparency1 or 0
	local Trans2 = Table.Transparency2 or 0
	PRTCL.Parent = Parent
	PRTCL.RotSpeed = RotS
	PRTCL.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,Trans1),NumberSequenceKeypoint.new(1,Trans2)})
	PRTCL.Texture = "http://www.roblox.com/asset/?id="..Texture
	PRTCL.Color = ColorSequence.new(Color1,Color2)
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

function AttackGyro()
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 15
	GYRO.P = 200000
	GYRO.MaxTorque = VT(0,4000000,0)
	GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		until ATTACK == false
		GYRO:Remove()
	end))
end

--//=================================\\
--||	    GUIS AND MISC
--\\=================================//

local CAMTYPE = Cam.CameraType
Cam.CameraType = Enum.CameraType.Scriptable

local ATTACKS = {2035463713,2035463980,2035464212,2035464495}

local BMUSIC = IT("Sound",RootPart)
local VOLUME = 4.5
local PITCH = 1.15
local SONGID = 904882921
local INTROD = false
local SUN = CreatePart(3, nil, "Neon", 0, 0, BRICKC("New Yeller"), "Sun", VT(17,17,17), true)
MakeForm(SUN,"Ball")
local SUNFLOAT = true
local CUSTOMCAM = true

--//=================================\\
--||			DAMAGING
--\\=================================//

function ApplyAoE(POSITION,RANGE,FLING,KILLME)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then		
						print("hi")
						local HED = CHILD:FindFirstChild("Head")
						if HED and MRANDOM(1,15) == 1 then
							CreateSound(527749592, HED, 4, MRANDOM(9,11)/10, false)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
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
	if KILLME == true then
		print("hi")
		for _, c in pairs(Character:GetChildren()) do
			if c:IsA("BasePart") then
				local bv = Instance.new("BodyVelocity") 
				bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
				bv.velocity = CF(POSITION,c.Position).lookVector*FLING
				bv.Parent = c
				Debris:AddItem(bv,0.05)
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Intro()
	ATTACK = true
	Rooted = true
	Humanoid.WalkSpeed = 0
	Disable_Jump = true
	local INTROSOUND = CreateSound(862484466, Effects, 6, 1, false)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, Head.CFrame * CF(0,0,-4) * ANGLES(RAD(0), RAD(180), RAD(0)), 0.2)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
		until INTROSOUND.TimePosition >= 2.15
		SUN.Parent = Effects
		local CORE = IT("Attachment",SUN)
		SUN.Color = C3(1,85/255,0)
		SUN.CFrame = RootPart.CFrame*CF(0,-14,11)
		local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
		P.LockedToPart = true
		P.Rate = 12
		local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
		P.Rate = 12
		repeat
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,14,11),0.04)
			local HITFLOOR,SUNPOS = Raycast(SUN.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 23, Character)
			if HITFLOOR then
				local DISTANCE = (SUNPOS - SUN.Position).Magnitude
				local SIZE = (23 - DISTANCE)*2
			end
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, Head.CFrame * CF(0,5,-15) * ANGLES(RAD(5), RAD(180), RAD(0)), 0.2)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
		CUSTOMCAM = false
		for i = 1, #ATTACKS do
			local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.65, 0, 0.95-(0.17*i), 0), UD2(0.26, 0, 0.17, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
			local IMAGE = IT("ImageLabel",SKILLFRAME)
			IMAGE.Size = UD2(1,0,1,0)
			IMAGE.Image = "rbxassetid://"..ATTACKS[i]
			IMAGE.BackgroundTransparency = 1
			IMAGE.ImageTransparency = 1
			for i = 1, 10 do
				Swait()
				IMAGE.ImageTransparency = IMAGE.ImageTransparency - 1/10
			end
		end
	end))
	repeat
		Swait()
		INTROSOUND.Parent = Effects
	until INTROSOUND.Playing == false
	INTROSOUND:Destroy()
	ATTACK = false
	Rooted = false
end
function DeadlyLaser()
	CreateSound(811841430, SUN, 8, MRANDOM(7,13)/10, false)
	local HIT,POS = CastProperRay(SUN.Position,Mouse.Hit.p,1000,Character)
	local BEAM = CreatePart(3, Effects, "Neon", 0, 0, BRICKC("Gold"), "Beam", VT(0,0,0), true)
	BEAM.Color = SUN.Color
	MakeForm(BEAM,"Cyl")
	local DIST = (SUN.Position - POS).Magnitude
	BEAM.Size = VT(0,DIST,0)
	BEAM.CFrame = CF(SUN.Position,POS)*CF(0,0,-DIST/2) * ANGLES(RAD(90), RAD(0), RAD(0))
	if HIT ~= nil then
		if HIT.Parent.ClassName == "Model" then
			if HIT.Parent:FindFirstChildOfClass("Humanoid") then
				if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
					local HED = HIT.Parent:FindFirstChild("Head")
					if HED and MRANDOM(1,15) == 1 then
						CreateSound(527749592, HED, 4, MRANDOM(9,11)/10, false)
					end
					print("hi")
				end
			end
		end
	end
	for i = 1, 15 do
		Swait()
		BEAM.Size = BEAM.Size + VT(0.25,0,0.25)
		BEAM.Transparency = BEAM.Transparency + 1/15
	end
	BEAM:remove()
end
function SolarFlares()
	ATTACK = true
	Rooted = true
	SUNFLOAT = false
	CUSTOMCAM = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		if CUSTOMANGLES == true then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
		end
		SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),0),0.035)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local CFRAME = RootPart.CFrame * ANGLES(RAD(-90), RAD(0), RAD(0))*CF(0,0,125)
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, CFRAME, 0.1)
			end
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),0),0.035)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(90), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(90), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
	end))
	AttackGyro()
	wait(0.2)
	for i = 1, 15 do
		Swait()
		coroutine.resume(coroutine.create(function()
			local SPEED = MRANDOM(5,32)/10
			local FLARE = CreatePart(3, Effects, "Neon", 0, 0, SUN.BrickColor, "Sun", VT(5,5,5), true)
			FLARE.Color = C3(1,85/255,0)
			MakeForm(FLARE,"Ball")
			CreateSound(463598785, FLARE, 1.2, MRANDOM(7,13)/8, false)
			FLARE.CFrame = CF(SUN.Position,Mouse.Hit.p) * ANGLES(RAD(MRANDOM(-5,5)*2), RAD(MRANDOM(-5,5)*2), RAD(0))
			local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
			for i = 1, 500 do
				Swait()
				P.Enabled = true
				local HIT,HITPOS = Raycast(FLARE.Position, FLARE.CFrame.lookVector, FLARE.Size.Z/2, Character)
				if HIT then
					break
				else
					FLARE.CFrame = FLARE.CFrame*CF(0,0,-SPEED)
					if MRANDOM(1,3) == 1 then
						WACKYEFFECT({Time = 25, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(0.025,0,0.025), Transparency = 0.85, Transparency2 = 1, CFrame = FLARE.CFrame*CF(0,0,-FLARE.Size.X/1.5) * ANGLES(RAD(90), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
					end
				end
			end
			CreateSound(165970126, FLARE, 0.8, MRANDOM(7,13)/8, false)
			CreateSound(174580476, FLARE, 1.6, MRANDOM(7,13)/10, false)
			P.Enabled = false
			ApplyAoE(FLARE.Position,14,125)
			Debris:AddItem(FLARE,5)
			FLARE.Transparency = 1
			WACKYEFFECT({EffectType = "Sphere", Size = FLARE.Size, Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(FLARE.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FLARE.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
			ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
		end))
	end
	wait(0.1)
	CUSTOMCAM = false
	SUNFLOAT = true
	ATTACK = false
	Rooted = false
end
function SolarSmash()
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	if HITFLOOR then
		ATTACK = true
		Rooted = false
		CUSTOMCAM = true
		SUNFLOAT = false
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			if CUSTOMANGLES == true then
				Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
			end
			SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,18 + 4 * SIN(SINE / 12),6),0.035)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-75), RAD(0), RAD(0))*CF(0,6,65), 0.1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(35), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.45 + 0.05 * SIN(SINE / 12), -0.45) * ANGLES(RAD(35), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		local CFRAME = RootPart.CFrame*CF(0,-2,-17)
		for i = 1, 10 do
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,CFRAME, 0.25)
		end
		ApplyAoE(SUN.Position,65,225)
		ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
		for i = 1, 8 do
			WACKYEFFECT({Time = 30+(i*25), EffectType = "Wave", Size = VT(15,0,15), Size2 = VT(120,0,120), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUN.Position-VT(0,5,0)) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
		end
		for i = 1, 5 do
			WACKYEFFECT({Time = 50+(i*25), EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(1.5,0,1.5), Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position-VT(0,5,0)) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0.1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
		end
		WACKYEFFECT({Time = 75, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*6, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = 168513088, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*5.5, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = 201858144, SoundPitch = 1, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = CF(CFRAME.p-VT(0,12,0),RootPart.Position).lookVector*125
		bv.Parent = RootPart
		Debris:AddItem(bv,0.02)
		CUSTOMCAM = false
		for i = 1, 5 do
			Swait()
			SUN.CFrame = Clerp(SUN.CFrame,CFRAME, 0.1)
		end
		SUNFLOAT = true
		ATTACK = false
		Rooted = false
	end
end
function SolarEruption()
	ATTACK = true
	Rooted = true
	CUSTOMCAM = true
	local ANIMA = "HoldUp"
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if ANIMA == "HoldUp" then
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-45), RAD(0), RAD(0))*CF(0,0,65), 0.1)
				end
				SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,28 + 4 * SIN(SINE / 12),6),0.035)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.85 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160 + 3 * SIN(SINE / 12)), RAD(5), RAD(-15 + 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif ANIMA == "Fire" then
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(0,135,0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.2)
				end
				SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,35,0),0.2)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.65 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(5), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.65 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(170), RAD(-5), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-25), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		until ATTACK == false
	end))
	CreateSound(201858045, SUN, 1.8, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 3, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 2.5, MRANDOM(7,13)/10, false)
	for i = 1, 150 do
		Swait()
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(85,0,85), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.8, CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0.95, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	wait(0.1)
	UNANCHOR = false
	ANIMA = "Fire"
	wait(0.4)
	ApplyAoE(SUN.Position,25,75)
	WACKYEFFECT({Time = 45, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*4, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 3})
	WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = SUN.Size, Size2 = SUN.Size*3.5, Transparency = 0, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = 401056199, SoundPitch = 1, SoundVolume = 7, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	coroutine.resume(coroutine.create(function()
		for i = 1, 32 do
			Swait()
			coroutine.resume(coroutine.create(function()
				local FLARE = CreatePart(3, Effects, "Neon", 0, 0, SUN.BrickColor, "Sun", VT(5,5,5), false)
				FLARE.CanCollide = true
				FLARE.Color = C3(1,85/255,0)
				MakeForm(FLARE,"Ball")
				Debris:AddItem(FLARE,10)
				CreateSound(463598785, FLARE, 1.2, MRANDOM(7,13)/8, false)
				local P = ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
				FLARE.CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				FLARE.Velocity = CF(SUN.Position,CF(SUN.Position)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(-60,60),25,MRANDOM(-60,60)).p).lookVector*MRANDOM(25,250)
				TOUCH = FLARE.Touched:Connect(function(TOC)
					if TOC.Parent ~= Character and TOC.Parent.Parent ~= Character then
						FLARE.Anchored = true
						FLARE:ClearAllChildren()
						CreateSound(165970126, FLARE, 0.8, MRANDOM(7,13)/8, false)
						CreateSound(174580476, FLARE, 1.6, MRANDOM(7,13)/10, false)
						FLARE.CanCollide = false
						ApplyAoE(FLARE.Position,14,125)
						FLARE.Transparency = 1
						WACKYEFFECT({EffectType = "Sphere", Size = FLARE.Size, Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(FLARE.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = FLARE.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
						ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 1, Acel = VT(0,0,0), RotSpeed = NumberRange.new(-5, 5), Drag = 0.1, Size1 = 3, Size2 = 5, Lifetime1 = 0.1, Lifetime2 = 0.2, Parent = CORE, Emit = 10, Offset = 180, Enabled = true, Color1 = C3(1,85/255,0), Color2 = C3(1,85/255,0), Texture = 296874871})
						TOUCH:Disconnect()
					end
				end)
			end))
		end
	end))
	wait(1.5)
	UNANCHOR = true
	CUSTOMCAM = false
	ATTACK = false
	Rooted = false
end
function Nebula()
	ATTACK = true
	Rooted = false
	CUSTOMCAM = true
	local DEAD = false
	coroutine.resume(coroutine.create(function()
		while true do
			Swait()
			if DEAD == false then
				if CUSTOMANGLES == true then
					Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(0,435,0) * ANGLES(RAD(-90), RAD(0), RAD(0)), 0.01)
				end
				SUN.CFrame = Clerp(SUN.CFrame,RootPart.CFrame*CF(0,35,0),0.2)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.85 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160), RAD(5), RAD(-15)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end))
	wait(1)
	CreateSound(201858045, SUN, 1.8, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 3, MRANDOM(7,13)/10, false)
	CreateSound(278641993, SUN, 2.5, MRANDOM(7,13)/10, false)
	for i = 1, 250 do
		Swait()
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(2,0,2), Size2 = VT(32,2.5,32), Transparency = 0.75, Transparency2 = 1, CFrame = CF(RootPart.CFrame*CF(0,-4,0).p) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
		WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(85,0,85), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.8, CFrame = CF(SUN.Position)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(45,45,45), Size2 = VT(0,0,0), Transparency = 0.95, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	wait(1)
	for i = 1, 3 do
		wait(0.65)
		WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = SUN.Size, Size2 = VT(250,250,250), Transparency = 0.5, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SUN.Color, SoundID = 852135845, SoundPitch = 1-(i/10), SoundVolume = 5, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	wait(0.65)
	ApplyAoE(SUN.Position,9999999999999999,125,true)
	SUN:ClearAllChildren()
	SUN.Transparency = 1
	CreateSound(385545047, Effects, 2.5, 1.4, false)
	CreateSound(385545047, Effects, 2.5, 1, false)
	CreateSound(435742675, Effects, 2.5, 1.5, false)
	CreateSound(231917744, Effects, 2.5, 1.5, false)
	CreateSound(401056199, Effects, 2.5, 1, false)
	ParticleEmitter({Transparency1 = 1, Transparency2 = 1, Speed = 25, Acel = VT(0,0,0), RotSpeed = NumberRange.new(5, 5), Drag = -1, Size1 = 5, Size2 = 6, Lifetime1 = 0.1, Lifetime2 = 1, Parent = SUN, Emit = 20, Offset = 180, Enabled = false, Color1 = C3(1,85/255,0), Color2 = BRICKC"Royal purple".Color, Texture = 296874871})
	for i = 1, 3 do
		WACKYEFFECT({Time = 175, EffectType = "Sphere", Size = SUN.Size, Size2 = VT(250,250,250)+(VT(i,i,i)*180), Transparency = 0.5, Transparency2 = 1, CFrame = CF(SUN.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Royal purple".Color, SoundID = nil, SoundPitch = 1-(i/10), SoundVolume = 5, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
	end
	for i = 1, 15 do
		WACKYEFFECT({Time = 100+(i*35), EffectType = "Wave", Size = VT(15,0,15), Size2 = VT(120,5,120)+(VT(i,0,i)*70), Transparency = 0.6, Transparency2 = 1, CFrame = CF(SUN.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Pink".Color, SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
	end
	DEAD = true
	Cam.CameraType = CAMTYPE
	Cam.CameraSubject = Humanoid
	INTROD = false
end
function Taunt()
	ATTACK = true
	Rooted = true
	CUSTOMCAM = true
	CreateSound(160212768, Head, 10, 1, false)
	for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		if CUSTOMANGLES == true then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * CF(7,1.5,6) * ANGLES(RAD(-4), RAD(15), RAD(0)), 0.2)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5 + 0.05 * SIN(SINE / 12), -0.3) * ANGLES(RAD(90), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	CUSTOMCAM = false
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
		DeadlyLaser()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		SolarFlares()
	end

	if Key == "c" and ATTACK == false then
		SolarSmash()
	end

	if Key == "v" and ATTACK == false then
		SolarEruption()
	end

	if Key == "x" and ATTACK == false then
		Nebula()
	end

	if Key == "t" and ATTACK == false then
		Taunt()
	end

	if Key == "q" and ATTACK == false then
		if CUSTOMANGLES == true then
			CUSTOMANGLES = false
			Cam.CameraSubject = Humanoid
		else
			CUSTOMANGLES = true
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

--//=================================\\
--\\=================================//

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
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0.1 * COS(SINE / (WALKSPEEDVALUE/2))) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.25 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10+50 * COS(SINE / WALKSPEEDVALUE))), 0.6 / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.7 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(35)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(5), RAD(0), RAD(-15-7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(15+7 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(105), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
	end
	unanchor()
	if INTROD == true then
		if SUNFLOAT == true then
			SUN.CFrame = Clerp(SUN.CFrame,Torso.CFrame*CF(0,14 + 4 * SIN(SINE / 12),11),0.035)
		end
		local HITFLOOR,SUNPOS = Raycast(SUN.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 23, Character)
		if HITFLOOR then
			local DISTANCE = (SUNPOS - SUN.Position).Magnitude
			local SIZE = (23 - DISTANCE)*2
		end
	end
	Humanoid.MaxHealth = 500
	Humanoid.Health = 500
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	BMUSIC.SoundId = "rbxassetid://"..SONGID
	BMUSIC.Looped = true
	BMUSIC.Pitch = PITCH
	BMUSIC.Volume = VOLUME
	BMUSIC.Playing = INTROD
	if BMUSIC.Parent ~= RootPart then
		BMUSIC = IT("Sound",RootPart)
	end
	Humanoid.Name = "THE_SUN_IS_A_DEADLY_LASER"
	if INTROD == false and ATTACK == false then
		Intro()
		INTROD = true
	end
	local VELOC = -RootPart.RotVelocity.Y
	if VELOC < -35 then
		VELOC = -35
	elseif VELOC > 35 then
		VELOC = 35
	end
	if CUSTOMANGLES == true then
		Cam.CameraType = Enum.CameraType.Scriptable
		if CUSTOMCAM == false then
			Cam.CFrame = Clerp(Cam.CFrame, RootPart.CFrame * ANGLES(RAD(-5), RAD(0), RAD(VELOC)) * CF(12,7,25), 0.15)
		end
	else
		Cam.CameraType = CAMTYPE
	end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--