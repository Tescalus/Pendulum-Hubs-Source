Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end
warn("Netless Activated!")
-- FLING BELOW!

power = 65000 -- The lower the number, the more stable the torso is, but less fling power.

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.Torso
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.Torso.Position
--//====================================================\\--
--||               ONLY 90s KIDS REMEMBER
--||              ABYSS EYE BY SHACKLUSTER
--\\====================================================//--

local ToolName = "MeshPartAccessory"

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
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

for _,v in pairs(Character:GetChildren()) do
	if v:IsA("BasePart") then
		v.Anchored = true
	end
end
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
local Speed = 25
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
local FADERS = true

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
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
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

function R_RANDOM(CFRAME,DIST)
	return CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,-DIST)
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

local DECAL = IT("Decal")
function MagicRing()
	local RING = CreatePart(3, Effects, "Granite", 0, 1, "Maroon", "MagicRing", VT(0,0,0),true)
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = DECAL:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = DECAL:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	BOTTOMTEXTURE.Color3 = C3(0,0,0)
	TOPTEXTURE.Color3 = C3(0,0,0)
	return RING,MESH,TOPTEXTURE,BOTTOMTEXTURE
end

function CharacterFade(COLOR,TIMER,MOVEDIRECTION,PARENT)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		if PARENT ~= nil then
			FADE.Parent = PARENT
		end
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" then
				c.CanCollide = false
				local FADER = CreatePart(3, FADE, "Neon", 0, 0.75, BRICKC("Pearl"), c.Name, c.Size, true)
				FADER.CFrame = c.CFrame
				FADER.Color = COLOR
				if FADER.Name == "Head" then
					Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FADER
				elseif FADER.Name == "HumanoidRootPart" then
					FADE.PrimaryPart = FADER
					FADER.Transparency = 1
				end
			end
		end
		local TRANS = 0.25/TIMER
		local DIST = nil
		if MOVEDIRECTION ~= nil then
			DIST = (FADE.PrimaryPart.Position - MOVEDIRECTION).Magnitude
		end
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
			if MOVEDIRECTION ~= nil then
				local ORI = FADE.PrimaryPart.Orientation
				FADE:SetPrimaryPartCFrame(CF(CF(FADE.PrimaryPart.Position,MOVEDIRECTION)*CF(0,0,-DIST/TIMER).p) * ANGLES(RAD(ORI.X), RAD(ORI.Y), RAD(ORI.Z)))
			end
		end
		FADE:remove()
	end))
end

--//=================================\\
--||	    GUIS AND MISC
--\\=================================//

local EYE = CreatePart(3, Character, "Neon", 0, 0, BRICKC("Really black"), "TheEye", VT(0.16,0.16,0.16), true)
MakeForm(EYE,"Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, EYE, CF(-0.15, 0.2, -0.57) * ANGLES(RAD(0), RAD(15), RAD(0)) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local BLADE = CreatePart(3, Effects, "Fabric", 0, 0, BRICKC("Really black"), "Abyssal_Sword", VT(1, 7.6, 1), true)
CreateMesh("SpecialMesh", BLADE, "FileMesh", "93117521", "1015990846", VT(1,1,1), VT(0,0,0))
BLADE.CFrame = RootPart.CFrame * CF(0.4,1,4) * ANGLES(RAD(195), RAD(15), RAD(15))

BLADE.Transparency = 1
local athp = Instance.new("Attachment",BLADE)
local atho = Instance.new("Attachment",BLADE)

if ToolName then
	Character[ToolName].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp
	Character[ToolName].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho
	atho.Rotation = Vector3.new(0,0,-135)
end

local SKILLTEXTCOLOR = C3(0,0,0)
local SKILLFONT = "Fantasy"
local SKILLTEXTSIZE = 4
local SKILLTEXTSIZE2 = 12

local ATTACKS = {"Abyssal Shriek - Z","Abyssal Dash - X","Shadow Cloak - C","Black Blast - V","Nightmare Fall - Q"}

for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.74, 0, 0.97-(0.04*i), 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i].."]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 1, "Skill text")
	SKILLTEXT.TextXAlignment = "Right"
	SKILLTEXT.Rotation = i*3
end

local BMUSIC = IT("Sound",RootPart)
local VOLUME = 5
local PITCH = 1
local SONGID = 1074563286
local A = IT("Attachment",Torso)

coroutine.resume(coroutine.create(function()
	while wait(1) do
		if FADERS == true then
			coroutine.resume(coroutine.create(function()
				local R,M,T,B = MagicRing()
				R.Anchored = false
				CreateWeldOrSnapOrMotor("Weld", EYE, EYE, R, CF(0,0,0), CF(0, 0, 0))
				local R2,M2,T2,B2 = MagicRing()
				R2.Anchored = false
				CreateWeldOrSnapOrMotor("Weld", EYE, EYE, R2, CF(0,0,0), CF(0, 0, 0))
				for i = 1, 35 do
					Swait()
					M.Scale = M.Scale + VT(1,0,1)*1.2
					T.Transparency = i/35
					B.Transparency = i/35
					M2.Scale = M2.Scale + VT(1,0,1)*0.6
					T2.Transparency = i/35
					B2.Transparency = i/35
				end
				R:Remove()
				R2:Remove()
			end))
		end
	end
end))

--//=================================\\
--||			DAMAGING
--\\=================================//

function ApplyDamage(Humanoid,Damage)
	return true
end

function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
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
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Melee()
	ATTACK = true
	BLADE.CanCollide = true
	Rooted = false
	EQUIPPED = true
	local HIT = function()
		local HITS = {}
		local TOUCH = BLADE.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ApplyDamage(HUM,MRANDOM(15,25))
					end
				end
			end
		end)
		return TOUCH
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		CreateSound(1489705211,BLADE,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(35)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 0.9 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.75, 0) * ANGLES(RAD(160), RAD(0), RAD(-5)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		CreateSound(1489705211,BLADE,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.25, -0.5) * ANGLES(RAD(85), RAD(0), RAD(-5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		TOUCHED:Disconnect()
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.25, -0.5) * ANGLES(RAD(85), RAD(0), RAD(-5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RootPart.CFrame*CF(4,0.3,0) * ANGLES(RAD(195), RAD(-25), RAD(15)),0.4)
		end
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	BLADE.CanCollide = false
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end
function AbyssalShriek()
	if ANIM ~= "Fall" and ANIM ~= "Jump" then
		ATTACK = true
		Rooted = true
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(15)), 1 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(-15+MRANDOM(-5,5)), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(15+MRANDOM(-5,5)), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.1) * ANGLES(RAD(0), RAD(85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(-12)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.1) * ANGLES(RAD(0), RAD(-85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(12)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position+VT(0,1.5,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		CreateSound(199978176,Head,5,1,false)
		for i = 1, 60 do
			Swait()
			ApplyAoE(RootPart.Position,17,1,1,0,false)
			local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
			if HITFLOOR then
				WACKYEFFECT({Time = 15, EffectType = "Wave", Size = VT(20,1,20), Size2 = VT(25+MRANDOM(0,8),7,25+MRANDOM(0,8)), Transparency = 0.95, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
			local SIZE = VT(1,3,1)
			WACKYEFFECT({EffectType = "Sphere", Size = VT(0,0,0), Size2 = SIZE*MRANDOM(10,65)/10, Transparency = 0.5, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0))*CF(0,MRANDOM(1,17),MRANDOM(0,12)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 5})
		end
		wait(0.2)
		ATTACK = false
		Rooted = false
	end
end
function AbyssalDash()
	ATTACK = true
	Rooted = true
	UNANCHOR = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(15)), 1 / Animation_Speed)
	end
	CreateSound(1177785010,Torso,2,1,false)
	CreateSound(971125740,Torso,5,1,false)
	WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 331666014, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
	for index, CHILD in pairs(Character:GetChildren()) do
		if CHILD:IsA("BasePart") then
			CHILD.Transparency = CHILD.Transparency + 1
		elseif CHILD:IsA("Accessory") then
			CHILD.Handle.Transparency = CHILD.Handle.Transparency + 1
		end
	end
	local HITS = {}
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO then
						if (TORSO.Position - RootPart.Position).Magnitude <= 25 then
							local PASS = true
							for E = 1, #HITS do
								if HITS[E] == CHILD then
									PASS = false
								end
							end
							if PASS == true then
								local DMG = MRANDOM(25,45)
								ApplyDamage(HUM,DMG)
								table.insert(HITS,CHILD)
							end
						end
					end
				end
			end
		end	
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(25,0,25), Transparency = 0.8, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,-6) * ANGLES(RAD(-90), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		for i = 1, 2 do
			RootPart.CFrame = RootPart.CFrame*CF(0,0,-1)
			CharacterFade(C3(0,0,0),25,R_RANDOM(Torso.CFrame,1.25).p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(65), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(-25), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(-25), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	for index, CHILD in pairs(Character:GetChildren()) do
		if CHILD:IsA("BasePart") then
			CHILD.Transparency = CHILD.Transparency - 1
		elseif CHILD:IsA("Accessory") then
			CHILD.Handle.Transparency = CHILD.Handle.Transparency - 1
		end
	end
	for i=1, 25 do
		Swait()
		RootPart.CFrame = RootPart.CFrame*CF(0,0,-((25-i)/25))
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-35), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-35), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-45)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-25), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	UNANCHOR = true
	ATTACK = false
	Rooted = false
end
function ShadowCloak()
	if ANIM ~= "Fall" and ANIM ~= "Jump" then
		ATTACK = true
		Rooted = false
		UNANCHOR = false
		FADERS = false
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				for i=1, 25 do
					Swait()
					RootPart.CFrame = RootPart.CFrame*CF(0,(25-i)/25,0)
				end
			end))
			repeat
				Swait()
				BLADE.Transparency = Torso.Transparency
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(-15+MRANDOM(-5,5)), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(15+MRANDOM(-5,5)), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.1) * ANGLES(RAD(0), RAD(85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(-12)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.1) * ANGLES(RAD(0), RAD(-85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(12)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,1,25), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position-VT(0,3.5,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 814168787, SoundPitch = 0.6, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 12})
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,1,25), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position-VT(0,3.5,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 814168787, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
		for i = 1, 50 do
			Swait()
			CharacterFade(C3(0,0,0),12,R_RANDOM(Torso.CFrame,1.25).p)
			for index, CHILD in pairs(Character:GetChildren()) do
				if CHILD:IsA("BasePart") then
					CHILD.Transparency = CHILD.Transparency + 1/50
				elseif CHILD:IsA("Accessory") then
					CHILD.Handle.Transparency = CHILD.Handle.Transparency + 1/50
				end
			end
		end
		for i = 1, 25 do
			Swait()
			CharacterFade(C3(0,0,0),12,R_RANDOM(Torso.CFrame,1.25).p)
		end
		RootPart.CFrame = CF(Mouse.Hit.p+VT(0,12,0)) * ANGLES(RAD(0), RAD(RootPart.Orientation.Y), RAD(0))
		for i = 1, 5 do
			WACKYEFFECT({Time = 50, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(0.3,0,0.3), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
		end
		ApplyAoE(Torso.Position,15,12,22,150,false)
		CreateSound(331666014,Torso,5,1,false)
		for i = 1, 12 do
			Swait()
			CharacterFade(C3(0,0,0),12,R_RANDOM(Torso.CFrame,1.25).p)
		end
		for i = 1, 50 do
			Swait()
			CharacterFade(C3(0,0,0),12,R_RANDOM(Torso.CFrame,1.25).p)
			for index, CHILD in pairs(Character:GetChildren()) do
				if CHILD:IsA("BasePart") then
					CHILD.Transparency = CHILD.Transparency - 1/50
				elseif CHILD:IsA("Accessory") then
					CHILD.Handle.Transparency = CHILD.Handle.Transparency - 1/50
				end
			end
		end
		UNANCHOR = true
		ATTACK = false
		Rooted = false
		FADERS = true
	end
end
function BlackBlast()
	if ANIM ~= "Fall" and ANIM ~= "Jump" then
		ATTACK = true
		Rooted = true
		local GYRO = IT("BodyGyro",RootPart)
		GYRO.D = 25
		GYRO.P = 20000
		GYRO.MaxTorque = VT(0,4000000,0)
		GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
		CreateSound(429459101,Torso,5,1.5,false)
		local GYROING = true
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				GYRO.CFrame = CF(RootPart.Position,Mouse.Hit.p)
			until GYROING == false
			GYRO:Remove()
		end))
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-15)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(15)), 1 / Animation_Speed)
		end
		for i = 1, 13 do
			WACKYEFFECT({Time = 55, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(i,0,i)*2, Transparency = 0.8, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,7.5-i) * ANGLES(RAD(-90), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		end
		CreateSound(1368637781,Torso,5,1.5,false)
		WACKYEFFECT({Time = 65, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(12,12,12), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 331666014, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
		for index, CHILD in pairs(Character:GetChildren()) do
			if CHILD:IsA("BasePart") then
				CHILD.Transparency = CHILD.Transparency + 1
			elseif CHILD:IsA("Accessory") then
				CHILD.Handle.Transparency = CHILD.Handle.Transparency + 1
			end
		end
		GYROING = false
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				for i=1, 25 do
					Swait()
					RootPart.CFrame = RootPart.CFrame*CF(0,0,(25-i)/25)
				end
			end))
			repeat
				Swait()
				CharacterFade(C3(0,0,0),12,R_RANDOM(Torso.CFrame,1.25).p)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(MRANDOM(-5,5)), RAD(MRANDOM(-5,5))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(-15+MRANDOM(-5,5)), RAD(35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25+MRANDOM(-5,5)), RAD(15+MRANDOM(-5,5)), RAD(-35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.1) * ANGLES(RAD(0), RAD(85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(-12)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.1) * ANGLES(RAD(0), RAD(-85), RAD(MRANDOM(-5,5))) * ANGLES(RAD(-1), RAD(0), RAD(12)), 1 / Animation_Speed)
			until ATTACK == false
		end))
		coroutine.resume(coroutine.create(function()
			local BULLETCFRAME = RootPart.CFrame
			local EXPLODED = false
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(15,15,15), Size2 = VT(10,10,10), Transparency = 0.3, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
					WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(15,15,15), Size2 = VT(25,25,25), Transparency = 0.8, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
				until EXPLODED == true
			end))
			for i=1, 50 do
				Swait()
				BULLETCFRAME = BULLETCFRAME*CF(0,0,-((50-i)/15))
				local RAY,HIT,NORM = Raycast(BULLETCFRAME.p,BULLETCFRAME.lookVector,7,Character)
				if RAY then
					ApplyAoE(BULLETCFRAME.p,25,12,54,350,false)
					WACKYEFFECT({Time = 45, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,0,160), Transparency = 0.6, Transparency2 = 1, CFrame = CF(HIT,HIT+NORM) * ANGLES(RAD(-90), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 765590102, SoundPitch = MRANDOM(9,11)/10, SoundVolume = 10})
					break
				end
			end
			wait(0.5)
			WACKYEFFECT({Time = 85, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(75,75,75), Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 401056199, SoundPitch = 0.7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
			WACKYEFFECT({Time = 85, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(50,50,50), Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 401056199, SoundPitch = 1, SoundVolume = 10, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
			for E = 1, 3 do
				for i = 1, 5 do
					WACKYEFFECT({Time = 50, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(E,0,E)/2, Transparency = 0, Transparency2 = 1, CFrame = CF(BULLETCFRAME.p) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
				end
			end
			ApplyAoE(BULLETCFRAME.p,125,25,75,250,false)
			EXPLODED = true
			for i = 1, 15 do
				Swait()
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,0,160), Transparency = 0.6, Transparency2 = 1, CFrame = BULLETCFRAME * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 1, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2})
			end
		end))
		wait(0.5)
		for index, CHILD in pairs(Character:GetChildren()) do
			if CHILD:IsA("BasePart") then
				CHILD.Transparency = CHILD.Transparency - 1
			elseif CHILD:IsA("Accessory") then
				CHILD.Handle.Transparency = CHILD.Handle.Transparency - 1
			end
		end
		ATTACK = false
		Rooted = false
	end
end
function NightmareFall()
	if ANIM ~= "Fall" and ANIM ~= "Jump" and DAMAGEMULTIPLIER == 1 then
		ATTACK = true
		Rooted = true
		EQUIPPED = true
		CreateSound(160740121,Head,10,1,false)
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.4 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(120), RAD(0), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.15 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(140), RAD(0), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
		end
		local SIZE = 0
		local POS = RootPart.Position+VT(0,150,0)
		local BLOWN = false
		coroutine.resume(coroutine.create(function()
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					if SIZE > 0 then
						WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(SIZE,SIZE,SIZE)*2.5, Transparency = 0.3, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
						WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(SIZE,SIZE,SIZE)*3, Transparency = 0.8, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
					end
				until BLOWN == true
			end))
			repeat
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(-5), RAD(12), RAD(25)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(-15)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.75, 0) * ANGLES(RAD(180), RAD(15), RAD(17)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35, -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
				BLADE.CFrame = Clerp(BLADE.CFrame,RightArm.CFrame*CF(0,-8,0) * ANGLES(RAD(180), RAD(90), RAD(0)),0.4)
			until ATTACK == false
		end))
		wait(0.2)
		for i = 1, 15 do
			wait(MRANDOM(2,6)/45)
			coroutine.resume(coroutine.create(function()
				local CFRAME = CF(BLADE.Position,POS) * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(-90,90)))
				local HEIGHT = 45/5
				local DISTANCE = (BLADE.Position - POS).Magnitude
				for i = 1, 45 do
					Swait()
					CFRAME = CFRAME * CF(0,(HEIGHT-(i/2.575))/45,-DISTANCE/45)
					WACKYEFFECT({Time = 15, EffectType = "Block", Size = VT(3,3,3), Size2 = VT(0,0,0), Transparency = 0.3, Transparency2 = 1, CFrame = CFRAME, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 0})
				end
				SIZE = SIZE + 1
			end))
		end
		wait(2.5)
		BLOWN = true
		WACKYEFFECT({Time = 85, EffectType = "Sphere", Size = VT(25,25,25), Size2 = VT(150,50,150), Transparency = 0, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 401056199, SoundPitch = 0.4, SoundVolume = 10, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
		for E = 1, 5 do
			for i = 1, 5 do
				WACKYEFFECT({Time = 50+(E*4), EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(E,0,E)/2, Transparency = 0, Transparency2 = 1, CFrame = CF(POS) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
			end
		end
		CreateSound(288641686,Effects,5,1,false)
		CreateSound(592877506,Effects,5,1,false)
		local HITS = {}
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO then
						if (TORSO.Position - RootPart.Position).Magnitude <= 175 then
							local PASS = true
							for E = 1, #HITS do
								if HITS[E] == CHILD then
									PASS = false
								end
							end
							if PASS == true then
								table.insert(HITS,CHILD)
							end
						end
					end
				end
			end
		end	
		if #HITS > 0 then
			local DONE = false
			local HUMS = {}
			coroutine.resume(coroutine.create(function()
				for E = 1, #HITS do
					local HUM = HITS[E]:FindFirstChildOfClass("Humanoid")
					table.insert(HUMS,HUM)
					local TORSO = HITS[E]:FindFirstChild("Torso") or HITS[E]:FindFirstChild("UpperTorso")
					local grav = Instance.new("BodyPosition",TORSO)
					grav.D = 850
					grav.P = 4000
					grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
					grav.Position = TORSO.Position+VT(0,35,0)
					CreateSound(592877506,TORSO,5,0.5,false)
					if TORSO then
						coroutine.resume(coroutine.create(function()
							local B = IT("Attachment",TORSO)
							local ChainLink = IT("Beam",Torso)
							ChainLink.Texture = "rbxassetid://73042633"
							ChainLink.Color = ColorSequence.new(C3(0,0,0))
							ChainLink.TextureSpeed = -1
							ChainLink.FaceCamera = true
							ChainLink.Width0 = 3
							ChainLink.Width1 = 3
							ChainLink.TextureLength = 3
							ChainLink.Attachment0 = A
							ChainLink.Attachment1 = B
							ChainLink.CurveSize0 = 0
							ChainLink.CurveSize1 = 0
							ChainLink.FaceCamera = true
							ChainLink.TextureMode = "Static"
							ChainLink.Transparency = NumberSequence.new(0)
							repeat
								Swait()
								WACKYEFFECT({Time = 5, EffectType = "Block", Size = VT(2,2,2)*TORSO.Size.Z, Size2 = VT(0,0,0), Transparency = 0.6, Transparency2 = 1, CFrame = CF(TORSO.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
							until DONE == true or HUM.Health < 1
							B:Remove()
							ChainLink:Remove()
							grav:Remove()
							if HUM.Health < 1 then
								for E = 1, 2 do
									for i = 1, 3 do
										WACKYEFFECT({Time = 15, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(E,0,E)/6, Transparency = 0, Transparency2 = 1, CFrame = CF(TORSO.Position) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
									end
								end
								WACKYEFFECT({Time = 5, EffectType = "Block", Size = VT(2,2,2)*TORSO.Size.Z, Size2 = VT(6,6,6)*TORSO.Size.Z, Transparency = 0.6, Transparency2 = 1, CFrame = CF(TORSO.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 160772554, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
								for _, c in pairs(HITS[E]:GetChildren()) do
									if c:IsA("BasePart") or c:IsA("Accessory") then
										c:remove()
									end
								end
								local BONES = {
								Skull = {MeshId = 36869983,Size = VT(0.7,0.7,0.7)},
								Ribs = {MeshId = 546760032,Size = VT(2.18, 1.884, 1.105)}
								}
								local SELECTABLEBONES = {
								{MeshId = 546760045,Size = VT(0.468, 1.12, 0.346)},
								{MeshId = 546760042,Size = VT(0.366, 0.991, 0.365)},
								{MeshId = 546760029,Size = VT(0.441, 0.799, 0.347)},
								{MeshId = 546760030,Size = VT(0.605, 0.843, 0.4)}
								}
								for i = 1, 9 do
									local CHOSENPIECE = nil
									if i == 1 then
										CHOSENPIECE = BONES.Skull
									elseif i == 2 then
										CHOSENPIECE = BONES.Ribs
									else
										CHOSENPIECE = SELECTABLEBONES[MRANDOM(1,#SELECTABLEBONES)]
									end
									local BONE = CreatePart(3, HITS[E], "Neon", 0, 0, BRICKC("Salmon"), "RIP", CHOSENPIECE.Size, false)
									BONE.CanCollide = true
									BONE.CFrame = TORSO.CFrame*CF(MRANDOM(-10,10)/30,MRANDOM(-10,10)/30,MRANDOM(-10,10)/30)
									if CHOSENPIECE.MeshId == 36869983 then
										CreateMesh("SpecialMesh", BONE, "FileMesh", CHOSENPIECE.MeshId, "", VT(1,1,1)/1.5, VT(0,0,0))
									else
										CreateMesh("SpecialMesh", BONE, "FileMesh", CHOSENPIECE.MeshId, "", VT(1,1,1), VT(0,0,0))
									end
								end
							end
						end))
					end
				end
				wait(1)
				for i = 1, 250 do
					Swait()
					for E = 1, #HUMS do
						if HUMS[E] then
							if HUMS[E].Health > 0 then
								DAMAGEMULTIPLIER = DAMAGEMULTIPLIER + 0.0025
								WACKYEFFECT({Time = 10, EffectType = "Round Slash", Size = VT(0,0,0), Size2 = VT(1.5,0,1.5)/20, Transparency = 0.9, Transparency2 = 1, CFrame = CF(Torso.Position) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 10})
							end
						end
					end
				end
				local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0, 0, 0, 0), UD2(1, 0, 1, 0), C3(0,0,0), C3(0, 0, 0), "OWEXTRADAMAGE")
				local SKILLTEXT = CreateLabel(SKILLFRAME, "!You have increased damage!", SKILLTEXTCOLOR, SKILLTEXTSIZE2, SKILLFONT, 1, 2, 1, "AAAA")
				coroutine.resume(coroutine.create(function()
					CreateSound(743521450,Cam,5,0.6,false)
					for E = 1, 75 do
						Swait()
						SKILLTEXT.TextTransparency = SKILLTEXT.TextTransparency - 1/75
					end
					wait(4)
					for E = 1, 25 do
						Swait()
						SKILLTEXT.TextTransparency = SKILLTEXT.TextTransparency + 1/25
					end
					SKILLFRAME:Remove()
				end))
				DONE = true
				for i = 1, 50 do
					wait(0.5)
					for i = 1, 3 do
						WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(DAMAGEMULTIPLIER-1,0.1,DAMAGEMULTIPLIER-1)*1.5, Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.CFrame*CF(0,-3.25,0).p) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)), MoveToPos = nil, RotationX = 1, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = MRANDOM(9,11)/2, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 22})
					end
				end
				DAMAGEMULTIPLIER = 1
			end))
			wait(0.2)
		end
		wait(0.4)
		EQUIPPED = false
		ATTACK = false
		Rooted = false
	end
end
function Laugh()
	ATTACK = true
	Rooted = true
	CreateSound(160740121,Head,10,1,false)
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.6 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.45 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i=1, 185 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1 + 0.05 * SIN(SINE/2)) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.55 + 0.15 * SIN(SINE/2), -0.7) * ANGLES(RAD(3 + 3 * SIN(SINE/2)), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.4 + 0.15 * SIN(SINE/2), -0.6) * ANGLES(RAD(3 + 3 * SIN(SINE/2)), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
		Melee()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		AbyssalShriek()
	end

	if Key == "x" and ATTACK == false then
		AbyssalDash()
	end

	if Key == "c" and ATTACK == false then
		ShadowCloak()
	end

	if Key == "v" and ATTACK == false then
		BlackBlast()
	end

	if Key == "q" and ATTACK == false then
		NightmareFall()
	end

	if Key == "t" and ATTACK == false then
		Laugh()
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
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
	local WALKSPEEDVALUE = 8 / (Humanoid.WalkSpeed / 16)
	Humanoid.HipHeight = 1
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-25)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.6 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(-35)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(-15), RAD(-70), RAD(0)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	end
	if EQUIPPED == false then
		if TORSOVELOCITY > 1 then
			BLADE.CFrame = Clerp(BLADE.CFrame,RootPart.CFrame * CF(0.2,1.5 + 0.15 * SIN(SINE / 12),4) * ANGLES(RAD(195), RAD(15), RAD(15)),0.04)
		else
			BLADE.CFrame = Clerp(BLADE.CFrame,RootPart.CFrame * CF(1,1.5 + 0.15 * SIN(SINE / 12),4) * ANGLES(RAD(195), RAD(-25), RAD(15)),0.1)
		end
	end
	if ANIM ~= "Walk" and FADERS == true then
		if MRANDOM(1,7) == 1 then
			CharacterFade(C3(0,0,0),65,R_RANDOM(Torso.CFrame,0.5).p)
		end
	end
	unanchor()
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed+(DAMAGEMULTIPLIER/5)
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	BMUSIC.SoundId = "rbxassetid://"..SONGID
	BMUSIC.Looped = true
	BMUSIC.Pitch = PITCH
	BMUSIC.Volume = VOLUME
	BMUSIC.Playing = true
	if BMUSIC.Parent ~= RootPart then
		BMUSIC = IT("Sound",RootPart)
	end
	if Head:FindFirstChild("face") then
		Head:FindFirstChild("face"):remove()
	end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--