loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
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
local sick = Instance.new("Sound",Torso)

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
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 45
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
ANIMATOR:Destroy()
local UNANCHOR = true
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}



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


function Clerp(a, b, t)
    return a:lerp(b,t)
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
		NEWSOUND.EmitterSize = 5*VOLUME
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
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
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
				repeat Swait() until SOUND.Playing == false
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

function WACKYEFFECT2(Table)
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
	local ISCHAOS = (Table.Chaos or false)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC"a", "Effect", VT(1,1,1), true)
		EFFECT.Color = COLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		
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
				if ISCHAOS == true then
				EFFECT.Color = BrickColor.Random().Color
				end
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

function WACKYEFFECT2(Table)
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
						EFFECT.Orientation = ORI
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
						EFFECT.Orientation = ORI
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
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function Gyro(PARENT)
	local GYRO = IT("BodyGyro",PARENT)
	GYRO.D = 750
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000000,0)
	return GYRO
end

function POSITION(PARENT)
	local grav = Instance.new("BodyPosition",PARENT)
	grav.D = 15
	grav.P = 20000
	grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	return grav
end

function FacialShadow()
	local SHADOWS = {}
	for i = 1, 16 do
		local FACE = CreatePart(3, Effects, "Fabric", 0, 0+(i-1)/16.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
		FACE.Color = C3(0,0,0)
		Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
		CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/25,0), CF(0, 0, 0))
		table.insert(SHADOWS,FACE)
	end
	local UNDO = function()
		for i = 1, #SHADOWS do
			SHADOWS[i]:remove()
		end
	end
	return UNDO
end

function GetRoot(MODEL,ROOT)
	if ROOT == true then
		return MODEL:FindFirstChild("HumanoidRootPart") or MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	else
		return MODEL:FindFirstChild("Torso") or MODEL:FindFirstChild("UpperTorso")
	end
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function SHAKECAM(POSITION,RANGE,INTENSITY,TIME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
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
end

--Lightning({Material = "Neon", FadeIn = false, Color = C3(1,1,1), Start = Torso.Position, End = Mouse.Hit.p, SegmentL = 2, Thickness = 0.1, DoesFade = false, Ignore = Character, MaxDist = 400, Branches = false, FadeTime = 15, Thicken = false})
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
	local Thicken = Table.Thicken or false
	local FadeTime = Table.FadeTime or 15
	local FadeIn = Table.FadeIn or false
	local Material = Table.Material or "Neon"
	local HIT,HITPOS = CastProperRay(StartPos, EndPos, MaxDist, Parent)
	local DISTANCE = math.ceil((StartPos - HITPOS).Magnitude/((SegmentLength/SegmentLength)/1.5))
	local LIGHTNINGMODEL = IT("Model",Effects)
	LIGHTNINGMODEL.Name = "Lightning"
	local LastBolt = nil
	for E = 1, DISTANCE do
		local ExtraSize = 0
		if Thicken == true then
			ExtraSize = (DISTANCE-E)/15
		end
		local TRANSPARENCY = 0
		if FadeIn == true then
			TRANSPARENCY = 1-(E/(DISTANCE/1.5))
			if TRANSPARENCY < 0 then
				TRANSPARENCY = 0
			end
		end
		local PART = CreatePart(3, LIGHTNINGMODEL, Material, 0, TRANSPARENCY, BRICKC("Pearl"), "LightningPart"..E, VT(Thickness+ExtraSize,SegmentLength,Thickness+ExtraSize))
		PART.Color = Color
		--MakeForm(PART,"Cyl")
		if LastBolt == nil then
			PART.CFrame = CF(StartPos,HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
		else
			PART.CFrame = CF(LastBolt.CFrame*CF(0,-LastBolt.Size.Y/2,0).p,CF(HITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,DISTANCE-E).p)*ANGLES(RAD(90),RAD(0),RAD(0))*CF(0,-PART.Size.Y/2,0)
		end
		LastBolt = PART
		if Branches == true and E < (DISTANCE-5) then
			local CHOICE = MRANDOM(1,7+((DISTANCE-E)*2))
			if CHOICE == 1 then
				local LASTBRANCH = nil
				for i = 1, MRANDOM(2,5) do
					local ExtraSize2 = 0
					if Thicken == true then
						ExtraSize = ((DISTANCE-E)/25)/i
					end
					local PART = CreatePart(3, LIGHTNINGMODEL, Material, 0, TRANSPARENCY, BRICKC("Pearl"), "Branch"..E.."-"..i, VT(Thickness+ExtraSize2,SegmentLength,Thickness+ExtraSize2))
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
			for i = 1, FadeTime do
				Swait()
				for _, c in pairs(LIGHTNINGMODEL:GetChildren()) do
					if c.ClassName == "Part" then
						c.Transparency = c.Transparency + (i/FadeTime)/10
					end
				end
			end
			LIGHTNINGMODEL:remove()
		end))
	elseif Dissapear == false then
		Debris:AddItem(LIGHTNINGMODEL,0.1)
	end
	return {Hit = HIT,Pos = HITPOS,End = LastBolt.CFrame*CF(0,0,-LastBolt.Size.Z).p,LastBolt = LastBolt,Model = LIGHTNINGMODEL}
end


--weap
local SONG = 590141342

local shotgunact = false
local gunact = true

for _, c in pairs(Character:GetChildren()) do
	if c and c.Parent then
		if c.ClassName == "Accessory" then
			local ACCESSORY = c
			local HANDLE = c.Handle
			HANDLE.Parent = Character
			if c then
				if HANDLE:FindFirstChild("HatAttachment") or HANDLE:FindFirstChild("HairAttachment") then
					local WLD = weldBetween(Head,HANDLE)
				elseif HANDLE:FindFirstChild("FaceFrontAttachment") then
					HANDLE:remove()
				else
					local WLD = weldBetween(Torso,HANDLE)
				end
			end
			ACCESSORY:remove()
		end
	end
end


local Gun = Instance.new("Model")
Gun.Name = "Gun"
Gun.WorldPivot = CFrame.new(-20.800003051757812, 29.575929641723633, 57.537864685058594, 1, 0, 0, 0, 0, 1, 0, -1, 0)

local BarrelPart = Instance.new("UnionOperation")
BarrelPart.Name = "BarrelPart"
BarrelPart.Anchored = true
BarrelPart.CanCollide = false
BarrelPart.Color = Color3.fromRGB(0, 0, 0)
BarrelPart.Massless = true
BarrelPart.Material = Enum.Material.Glass
BarrelPart.Reflectance = 0.05
BarrelPart.Size = Vector3.new(1.2693525552749634, 0.1785305291414261, 0.2078147977590561)
BarrelPart.CFrame = CFrame.new(-20.800003051757812, 28.693756103515625, 57.02811813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
BarrelPart.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart.UsePartColor = true
BarrelPart.Parent = Gun

local Frizzen = Instance.new("UnionOperation")
Frizzen.Name = "Frizzen"
Frizzen.Anchored = true
Frizzen.CanCollide = false
Frizzen.Color = Color3.fromRGB(0, 0, 0)
Frizzen.Massless = true
Frizzen.Material = Enum.Material.Glass
Frizzen.Reflectance = 0.05
Frizzen.Size = Vector3.new(0.5735503435134888, 0.5735503435134888, 0.5023798942565918)
Frizzen.CFrame = CFrame.new(-20.800003051757812, 29.818756103515625, 57.07499694824219, 1, 0, 0, 0, -1, 0, 0, 0, -1)
Frizzen.CollisionFidelity = Enum.CollisionFidelity.Default
Frizzen.UsePartColor = true
Frizzen.Parent = Gun

local Emitter = Instance.new("Part")
Emitter.Name = "Emitter"
Emitter.Anchored = true
Emitter.BottomSurface = Enum.SurfaceType.Smooth
Emitter.CanCollide = false
Emitter.TopSurface = Enum.SurfaceType.Smooth
Emitter.Transparency = 1
Emitter.Massless = true
Emitter.Size = Vector3.new(0.10466247797012329, 0.10466247797012329, 0.10466247797012329)
Emitter.CFrame = CFrame.new(-20.800003051757812, 27.818756103515625, 56.94999694824219, 0, 0, -1, 0.09113702923059464, -0.9958383440971375, 0, -0.9958383440971375, -0.09113702178001404, 0)
Emitter.Parent = Gun

local Fire = Instance.new("ParticleEmitter")
Fire.Name = "Fire"
Fire.Lifetime = NumberRange.new(0.5, 0.5)
Fire.LockedToPart = true
Fire.LightEmission = 0.8
Fire.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(121, 0, 0)), ColorSequenceKeypoint.new(0.2778702, Color3.fromRGB(121, 0, 0)), ColorSequenceKeypoint.new(0.7820299, Color3.fromRGB(77, 56, 56)), ColorSequenceKeypoint.new(1, Color3.fromRGB(77, 56, 56))})
Fire.Drag = 10
Fire.Speed = NumberRange.new(0.5, 1)
Fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.4, 0.075), NumberSequenceKeypoint.new(1, 0)})
Fire.Acceleration = Vector3.new(5, 0, 0)
Fire.RotSpeed = NumberRange.new(-250, 250)
Fire.Rate = 350
Fire.Texture = "rbxassetid://296874871"
Fire.Rotation = NumberRange.new(-360, 360)
Fire.Parent = Emitter

local Part = Instance.new("Part")
Part.Name = "6"
Part.Anchored = true
Part.CanCollide = false
Part.Color = Color3.fromRGB(255, 0, 0)
Part.Massless = true
Part.Material = Enum.Material.Neon
Part.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 56.90311813354492, 1, 6.889000037091364e-09, 0.00008299999899463728, 0, 1, -0.00008299999899463728, -0.00008299999899463728, 0.00008299999899463728, 1)
Part.formFactor = Enum.FormFactor.Custom
Part.Parent = Gun

local Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh.Parent = Part

local Part1 = Instance.new("Part")
Part1.Name = "5"
Part1.Anchored = true
Part1.CanCollide = false
Part1.Color = Color3.fromRGB(255, 0, 0)
Part1.Massless = true
Part1.Material = Enum.Material.Neon
Part1.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part1.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 56.98124694824219, 1, 7.885000208318615e-09, 0.00008299999899463728, 0, 1, -0.00009500000305706635, -0.00008299999899463728, 0.00009500000305706635, 1)
Part1.formFactor = Enum.FormFactor.Custom
Part1.Parent = Gun

local Mesh1 = Instance.new("CylinderMesh")
Mesh1.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh1.Parent = Part1

local Part2 = Instance.new("Part")
Part2.Name = "4"
Part2.Anchored = true
Part2.CanCollide = false
Part2.Color = Color3.fromRGB(255, 0, 0)
Part2.Massless = true
Part2.Material = Enum.Material.Neon
Part2.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part2.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 57.15311813354492, 1, 7.885000208318615e-09, 0.00008299999899463728, 0, 1, -0.00009500000305706635, -0.00008299999899463728, 0.00009500000305706635, 1)
Part2.formFactor = Enum.FormFactor.Custom
Part2.Parent = Gun

local Mesh2 = Instance.new("CylinderMesh")
Mesh2.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh2.Parent = Part2

local Part3 = Instance.new("Part")
Part3.Name = "3"
Part3.Anchored = true
Part3.CanCollide = false
Part3.Color = Color3.fromRGB(255, 0, 0)
Part3.Massless = true
Part3.Material = Enum.Material.Neon
Part3.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part3.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 57.24687194824219, 1, 6.889000037091364e-09, 0.00008299999899463728, 0, 1, -0.00008299999899463728, -0.00008299999899463728, 0.00008299999899463728, 1)
Part3.formFactor = Enum.FormFactor.Custom
Part3.Parent = Gun

local Mesh3 = Instance.new("CylinderMesh")
Mesh3.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh3.Parent = Part3

local Part4 = Instance.new("Part")
Part4.Name = "2"
Part4.Anchored = true
Part4.CanCollide = false
Part4.Color = Color3.fromRGB(255, 0, 0)
Part4.Massless = true
Part4.Material = Enum.Material.Neon
Part4.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part4.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 57.15311813354492, 1, 7.137999968875874e-09, 0.00008299999899463728, 0, 1, -0.00008600000001024455, -0.00008299999899463728, 0.00008600000001024455, 1)
Part4.formFactor = Enum.FormFactor.Custom
Part4.Parent = Gun

local Mesh4 = Instance.new("CylinderMesh")
Mesh4.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh4.Parent = Part4

local Part5 = Instance.new("Part")
Part5.Name = "1"
Part5.Anchored = true
Part5.CanCollide = false
Part5.Color = Color3.fromRGB(255, 0, 0)
Part5.Massless = true
Part5.Material = Enum.Material.Neon
Part5.Size = Vector3.new(0.41864991188049316, 0.41864991188049316, 0.4186500906944275)
Part5.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 56.98124694824219, 1, 6.805999763770387e-09, 0.00008299999899463728, 0, 1, -0.00008199999865610152, -0.00008299999899463728, 0.00008199999865610152, 1)
Part5.formFactor = Enum.FormFactor.Custom
Part5.Parent = Gun

local Mesh5 = Instance.new("CylinderMesh")
Mesh5.Scale = Vector3.new(0.30000001192092896, 0.8999999761581421, 0.30000001192092896)
Mesh5.Parent = Part5

local Gear1 = Instance.new("MeshPart")
Gear1.Name = "Gear1"
Gear1.Anchored = true
Gear1.CanCollide = false
Gear1.Color = Color3.fromRGB(0, 0, 0)
Gear1.Massless = true
Gear1.Material = Enum.Material.Glass
Gear1.Reflectance = 0.05
Gear1.Size = Vector3.new(0.648907482624054, 0.648907482624054, 0.10466247797012329)
Gear1.CFrame = CFrame.new(-20.800003051757812, 29.225006103515625, 56.90311813354492, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Gear1.CollisionFidelity = Enum.CollisionFidelity.Default
Gear1.Parent = Gun

local gw = Instance.new("Weld")
gw.Name = "gw"
gw.C1 = CFrame.new(0, 0, 0.00048804283142089844)
gw.Parent = Gear1

local Union = Instance.new("UnionOperation")
Union.Anchored = true
Union.CanCollide = false
Union.Color = Color3.fromRGB(0, 0, 0)
Union.Massless = true
Union.Material = Enum.Material.Glass
Union.Reflectance = 0.05
Union.Size = Vector3.new(0.20219968259334564, 0.10466247797012329, 0.10466247797012329)
Union.CFrame = CFrame.new(-20.800003051757812, 30.318756103515625, 57.34061813354492, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Union.UsePartColor = true
Union.Parent = Gun

local Lid = Instance.new("UnionOperation")
Lid.Name = "Lid"
Lid.Anchored = true
Lid.CanCollide = false
Lid.Color = Color3.fromRGB(0, 0, 0)
Lid.Massless = true
Lid.Material = Enum.Material.Glass
Lid.Reflectance = 0.05
Lid.Size = Vector3.new(0.22769799828529358, 0.19996172189712524, 0.1676921546459198)
Lid.CFrame = CFrame.new(-20.800003051757812, 30.225006103515625, 56.96561813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Lid.CollisionFidelity = Enum.CollisionFidelity.Default
Lid.UsePartColor = true
Lid.Parent = Gun

local Union1 = Instance.new("UnionOperation")
Union1.Anchored = true
Union1.CanCollide = false
Union1.Color = Color3.fromRGB(0, 0, 0)
Union1.Massless = true
Union1.Material = Enum.Material.Glass
Union1.Reflectance = 0.05
Union1.Size = Vector3.new(0.26308390498161316, 0.47741013765335083, 0.47741013765335083)
Union1.CFrame = CFrame.new(-20.800003051757812, 30.225006103515625, 57.05937194824219, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Union1.CollisionFidelity = Enum.CollisionFidelity.Default
Union1.UsePartColor = true
Union1.Parent = Gun

local Gear2 = Instance.new("MeshPart")
Gear2.Name = "Gear2"
Gear2.Anchored = true
Gear2.CanCollide = false
Gear2.Color = Color3.fromRGB(255, 0, 0)
Gear2.Massless = true
Gear2.Material = Enum.Material.Neon
Gear2.Size = Vector3.new(0.5651773810386658, 0.5651773810386658, 0.15699371695518494)
Gear2.CFrame = CFrame.new(-20.800003051757812, 29.225006103515625, 56.90311813354492, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Gear2.CollisionFidelity = Enum.CollisionFidelity.Default
Gear2.Parent = Gun

local gw1 = Instance.new("Weld")
gw1.Name = "gw"
gw1.C1 = CFrame.new(0, 0, -0.00048804283142089844)
gw1.Parent = Gear2

local Handle = Instance.new("UnionOperation")
Handle.Name = "Handle"
Handle.Anchored = true
Handle.CanCollide = false
Handle.Color = Color3.fromRGB(0, 0, 0)
Handle.Massless = true
Handle.Material = Enum.Material.Glass
Handle.Reflectance = 0.05
Handle.Size = Vector3.new(0.2280482053756714, 1.0933927297592163, 1.079803228378296)
Handle.CFrame = CFrame.new(-20.800003051757812, 30.85000991821289, 57.85624694824219, 1, 0, 0, 0, -0.00013899999612476677, 1, 0, -1, -0.00013899999612476677)
Handle.CollisionFidelity = Enum.CollisionFidelity.Default
Handle.UsePartColor = true
Handle.Parent = Gun

local Weld = Instance.new("Weld")
Weld.C1 = CFrame.new(-2.132976531982422, -0.8301315307617188, 0.0015649795532226562, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld.Parent = Handle

local Weld1 = Instance.new("Weld")
Weld1.C1 = CFrame.new(-2.3126416206359863, -0.8279571533203125, -0.040465354919433594, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld1.Parent = Handle

local Weld2 = Instance.new("Weld")
Weld2.C1 = CFrame.new(-0.0012483596801757812, -1.1143951416015625, 2.8321034908294678, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld2.Parent = Handle

local Weld3 = Instance.new("Weld")
Weld3.C1 = CFrame.new(-1.9082674980163574, -0.8279571533203125, -0.040465354919433594, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld3.Parent = Handle

local Weld4 = Instance.new("Weld")
Weld4.C1 = CFrame.new(-2.369983434677124, -0.9576492309570312, -0.00095367431640625, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld4.Parent = Handle

local Weld5 = Instance.new("Weld")
Weld5.C1 = CFrame.new(-2.27046537399292, -0.9570770263671875, -0.0012979507446289062, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld5.Parent = Handle

local Weld6 = Instance.new("Weld")
Weld6.C1 = CFrame.new(-0.0013980865478515625, -1.0177264213562012, -0.7874908447265625, 1, 0, 0, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677)
Weld6.Parent = Handle

local Weld7 = Instance.new("Weld")
Weld7.C1 = CFrame.new(-0.6318511962890625, -3.1005520820617676, 0.00031185150146484375, 0, 0.9958256483078003, 0.09127545356750488, 0, 0.09127544611692429, -0.9958256483078003, -1, -0, 0)
Weld7.Parent = Handle

local Weld8 = Instance.new("Weld")
Weld8.C1 = CFrame.new(-0.9544601440429688, -2.998265027999878, 0.00031185150146484375, 4.371138828673793e-08, 1, 0.0001390874240314588, 3.82137093032941e-15, 0.0001390874240314588, -1, -1, 4.371138828673793e-08, 6.075882852396575e-12)
Weld8.Parent = Handle

local Weld9 = Instance.new("Weld")
Weld9.C1 = CFrame.new(-0.0012979507446289062, -0.8514175415039062, 0.49007749557495117, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld9.Parent = Handle

local Weld10 = Instance.new("Weld")
Weld10.C1 = CFrame.new(-0.6260483264923096, -0.8959197998046875, 0.150360107421875, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld10.Parent = Handle

local Weld11 = Instance.new("Weld")
Weld11.C1 = CFrame.new(-1.0938374996185303, -0.8194961547851562, -0.0012483596801757812, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld11.Parent = Handle

local Weld12 = Instance.new("Weld")
Weld12.C1 = CFrame.new(-0.0011014938354492188, -0.527923583984375, 0.5264015197753906, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld12.Parent = Handle

local Weld13 = Instance.new("Weld")
Weld13.C1 = CFrame.new(-0.0012483596801757812, 0.0569610595703125, 0.0723876953125, 1, 0, 0, 0, 0.429893434047699, 0.9028796553611755, 0, -0.9028796553611755, 0.429893434047699)
Weld13.Parent = Handle

local Weld14 = Instance.new("Weld")
Weld14.C1 = CFrame.new(-0.6187553405761719, -0.8058700561523438, -0.0012483596801757812, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld14.Parent = Handle

local Weld15 = Instance.new("Weld")
Weld15.C1 = CFrame.new(0.0012483596801757812, -0.23583221435546875, -0.7845954895019531, -1, -0, 0, 0, 1, 0.00013899999612476677, 0, 0.00013899999612476677, -1)
Weld15.Parent = Handle

local Weld16 = Instance.new("Weld")
Weld16.C1 = CFrame.new(-0.0012483596801757812, -1.044158935546875, 1.0573153495788574, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld16.Parent = Handle

local Weld17 = Instance.new("Weld")
Weld17.C1 = CFrame.new(0.0012483596801757812, 0.5469818115234375, 0.933185338973999, -1, -0, 0, 0, -1, -0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld17.Parent = Handle

local Weld18 = Instance.new("Weld")
Weld18.C1 = CFrame.new(-1.3746604919433594, -0.9290542602539062, -0.0012483596801757812, 0, 0.00013899999612476677, -1, 0, 1, 0.00013899999612476677, 1, 0, 0)
Weld18.Parent = Handle

local Weld19 = Instance.new("Weld")
Weld19.C1 = CFrame.new(-0.0011014938354492188, -0.43527984619140625, 0.720165491104126, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld19.Parent = Handle

local Weld20 = Instance.new("Weld")
Weld20.C1 = CFrame.new(0.3106689453125, -0.0011014938354492188, -1.2307701110839844, 0, 0.7437866926193237, 0.6684170961380005, 1, 0, 0, 0, 0.6684170961380005, -0.7437866926193237)
Weld20.Parent = Handle

local Weld21 = Instance.new("Weld")
Weld21.C1 = CFrame.new(0.14589500427246094, 1.092353105545044, 0.8724899291992188, 1, 0.00008299999899463728, 1.1536999799943715e-08, 6.805999763770387e-09, -0.0002209999947808683, 1, 0.00008299999899463728, -1, -0.0002209999947808683)
Weld21.Parent = Handle

local Weld22 = Instance.new("Weld")
Weld22.C1 = CFrame.new(0.1460561752319336, 1.0922120809555054, 0.7050323486328125, 1, 0.00008299999899463728, 1.1536999799943715e-08, 7.137999968875874e-09, -0.00022499999613501132, 1, 0.00008299999899463728, -1, -0.00022499999613501132)
Weld22.Parent = Handle

local Weld23 = Instance.new("Weld")
Weld23.C1 = CFrame.new(-0.011345863342285156, 1.0923402309417725, 0.621307373046875, 1, 0.00008299999899463728, 1.1536999799943715e-08, 6.889000037091364e-09, -0.00022200000239536166, 1, 0.00008299999899463728, -1, -0.00022200000239536166)
Weld23.Parent = Handle

local Weld24 = Instance.new("Weld")
Weld24.C1 = CFrame.new(-0.1468210220336914, 1.0921655893325806, 0.7049942016601562, 1, 0.00008299999899463728, 1.1536999799943715e-08, 7.885000208318615e-09, -0.00023400000645779073, 1, 0.00008299999899463728, -1, -0.00023400000645779073)
Weld24.Parent = Handle

local Weld25 = Instance.new("Weld")
Weld25.C1 = CFrame.new(-0.14678478240966797, 1.0921505689620972, 0.8724365234375, 1, 0.00008299999899463728, 1.1536999799943715e-08, 7.885000208318615e-09, -0.00023400000645779073, 1, 0.00008299999899463728, -1, -0.00023400000645779073)
Weld25.Parent = Handle

local Weld26 = Instance.new("Weld")
Weld26.C1 = CFrame.new(-0.011323928833007812, 1.092337965965271, 0.9562606811523438, 1, 0.00008299999899463728, 1.1536999799943715e-08, 6.889000037091364e-09, -0.00022200000239536166, 1, 0.00008299999899463728, -1, -0.00022200000239536166)
Weld26.Parent = Handle

local Weld27 = Instance.new("Weld")
Weld27.C1 = CFrame.new(-0.00031185150146484375, -0.9565200805664062, 1.6062123775482178, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld27.Parent = Handle

local Weld28 = Instance.new("Weld")
Weld28.C1 = CFrame.new(-0.00031185150146484375, -0.9565200805664062, 1.6067004203796387, 1, 0, 0, 0, 1, 0.00013899999612476677, 0, -0.00013899999612476677, 1)
Weld28.Parent = Handle

local Hammer = Instance.new("UnionOperation")
Hammer.Name = "Hammer"
Hammer.Anchored = true
Hammer.CanCollide = false
Hammer.Color = Color3.fromRGB(0, 0, 0)
Hammer.Massless = true
Hammer.Material = Enum.Material.Glass
Hammer.Reflectance = 0.05
Hammer.Size = Vector3.new(0.11239518970251083, 0.511037290096283, 0.4997677206993103)
Hammer.CFrame = CFrame.new(-20.800003051757812, 30.350006103515625, 57.01249694824219, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Hammer.CollisionFidelity = Enum.CollisionFidelity.Default
Hammer.UsePartColor = true
Hammer.Parent = Gun

local Union2 = Instance.new("UnionOperation")
Union2.Anchored = true
Union2.CanCollide = false
Union2.Color = Color3.fromRGB(0, 0, 0)
Union2.Massless = true
Union2.Material = Enum.Material.Glass
Union2.Reflectance = 0.05
Union2.Size = Vector3.new(0.19097909331321716, 0.6271149516105652, 1.1901227235794067)
Union2.CFrame = CFrame.new(-20.800003051757812, 30.75625991821289, 57.82499694824219, 1, 0, 0, 0, 0.9028198719024658, 0.43001893162727356, 0, -0.43001893162727356, 0.9028198719024658)
Union2.CollisionFidelity = Enum.CollisionFidelity.Default
Union2.UsePartColor = true
Union2.Parent = Gun

local Union3 = Instance.new("UnionOperation")
Union3.Anchored = true
Union3.CanCollide = false
Union3.Color = Color3.fromRGB(0, 0, 0)
Union3.Massless = true
Union3.Material = Enum.Material.Glass
Union3.Reflectance = 0.05
Union3.Size = Vector3.new(0.16849851608276367, 0.3654698133468628, 0.6515485644340515)
Union3.CFrame = CFrame.new(-20.800003051757812, 30.068756103515625, 57.62187194824219, -1, 0, -0, 0, 0, -1, 0, -1, -0)
Union3.CollisionFidelity = Enum.CollisionFidelity.Default
Union3.UsePartColor = true
Union3.Parent = Gun

local Union4 = Instance.new("UnionOperation")
Union4.Anchored = true
Union4.CanCollide = false
Union4.Color = Color3.fromRGB(0, 0, 0)
Union4.Massless = true
Union4.Material = Enum.Material.Glass
Union4.Reflectance = 0.05
Union4.Size = Vector3.new(0.2246798574924469, 0.10671592503786087, 0.881804883480072)
Union4.CFrame = CFrame.new(-20.800003051757812, 29.787506103515625, 56.80937194824219, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Union4.CollisionFidelity = Enum.CollisionFidelity.Default
Union4.UsePartColor = true
Union4.Parent = Gun

local Union5 = Instance.new("UnionOperation")
Union5.Anchored = true
Union5.CanCollide = false
Union5.Color = Color3.fromRGB(0, 0, 0)
Union5.Massless = true
Union5.Material = Enum.Material.Glass
Union5.Reflectance = 0.05
Union5.Size = Vector3.new(0.20220611989498138, 0.5507643222808838, 1.1299151182174683)
Union5.CFrame = CFrame.new(-20.800003051757812, 29.912506103515625, 57.30937194824219, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Union5.CollisionFidelity = Enum.CollisionFidelity.Default
Union5.UsePartColor = true
Union5.Parent = Gun

local Union6 = Instance.new("UnionOperation")
Union6.Anchored = true
Union6.CanCollide = false
Union6.Color = Color3.fromRGB(0, 0, 0)
Union6.Massless = true
Union6.Material = Enum.Material.Glass
Union6.Reflectance = 0.05
Union6.Size = Vector3.new(0.2022022306919098, 0.10466247797012329, 0.10466247797012329)
Union6.CFrame = CFrame.new(-20.800003051757812, 30.131256103515625, 57.41874694824219, 1, 0, -0, 0, 0, 1, 0, -1, 0)
Union6.UsePartColor = true
Union6.Parent = Gun

local Union7 = Instance.new("UnionOperation")
Union7.Anchored = true
Union7.CanCollide = false
Union7.Color = Color3.fromRGB(0, 0, 0)
Union7.Massless = true
Union7.Material = Enum.Material.Glass
Union7.Reflectance = 0.05
Union7.Size = Vector3.new(0.2471085786819458, 0.2246633768081665, 0.28082939982414246)
Union7.CFrame = CFrame.new(-20.800003051757812, 29.475006103515625, 56.91874694824219, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Union7.CollisionFidelity = Enum.CollisionFidelity.Default
Union7.UsePartColor = true
Union7.Parent = Gun

local Union8 = Instance.new("UnionOperation")
Union8.Anchored = true
Union8.CanCollide = false
Union8.Color = Color3.fromRGB(0, 0, 0)
Union8.Massless = true
Union8.Material = Enum.Material.Glass
Union8.Reflectance = 0.05
Union8.Size = Vector3.new(0.8088696002960205, 0.14041469991207123, 0.19656535983085632)
Union8.CFrame = CFrame.new(-20.800003051757812, 29.756256103515625, 57.04374694824219, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Union8.CollisionFidelity = Enum.CollisionFidelity.Default
Union8.UsePartColor = true
Union8.Parent = Gun

local Union9 = Instance.new("UnionOperation")
Union9.Anchored = true
Union9.CanCollide = false
Union9.Color = Color3.fromRGB(0, 0, 0)
Union9.Massless = true
Union9.Material = Enum.Material.Glass
Union9.Reflectance = 0.05
Union9.Size = Vector3.new(0.3306673467159271, 0.20219968259334564, 0.7090525031089783)
Union9.CFrame = CFrame.new(-20.800003051757812, 29.725006103515625, 57.27811813354492, 0, 1, 0, 0.6683136820793152, 0, -0.7438796162605286, -0.7438796162605286, 0, -0.6683136820793152)
Union9.CollisionFidelity = Enum.CollisionFidelity.Default
Union9.UsePartColor = true
Union9.Parent = Gun

local BarrelPart1 = Instance.new("UnionOperation")
BarrelPart1.Name = "BarrelPart"
BarrelPart1.Anchored = true
BarrelPart1.CanCollide = false
BarrelPart1.Color = Color3.fromRGB(0, 0, 0)
BarrelPart1.Massless = true
BarrelPart1.Material = Enum.Material.Glass
BarrelPart1.Reflectance = 0.05
BarrelPart1.Size = Vector3.new(1.5445626974105835, 0.2246636152267456, 0.2246660739183426)
BarrelPart1.CFrame = CFrame.new(-20.800003051757812, 28.568756103515625, 56.90311813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
BarrelPart1.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart1.UsePartColor = true
BarrelPart1.Parent = Gun

local BarrelPart2 = Instance.new("UnionOperation")
BarrelPart2.Name = "BarrelPart"
BarrelPart2.Anchored = true
BarrelPart2.CanCollide = false
BarrelPart2.Color = Color3.fromRGB(0, 0, 0)
BarrelPart2.Massless = true
BarrelPart2.Material = Enum.Material.Glass
BarrelPart2.Reflectance = 0.05
BarrelPart2.Size = Vector3.new(1.3352376222610474, 0.19421634078025818, 0.1942184865474701)
BarrelPart2.CFrame = CFrame.new(-20.800003051757812, 28.475006103515625, 56.90311813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
BarrelPart2.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart2.UsePartColor = true
BarrelPart2.Parent = Gun

local BarrelPart3 = Instance.new("UnionOperation")
BarrelPart3.Name = "BarrelPart"
BarrelPart3.Anchored = true
BarrelPart3.CanCollide = false
BarrelPart3.Color = Color3.fromRGB(0, 0, 0)
BarrelPart3.Massless = true
BarrelPart3.Material = Enum.Material.Glass
BarrelPart3.Reflectance = 0.05
BarrelPart3.Size = Vector3.new(0.31453999876976013, 0.10466247797012329, 0.10466247797012329)
BarrelPart3.CFrame = CFrame.new(-20.800003051757812, 28.943756103515625, 57.02811813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
BarrelPart3.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart3.UsePartColor = true
BarrelPart3.Parent = Gun

local BarrelPart4 = Instance.new("UnionOperation")
BarrelPart4.Name = "BarrelPart"
BarrelPart4.Anchored = true
BarrelPart4.CanCollide = false
BarrelPart4.Color = Color3.fromRGB(0, 0, 0)
BarrelPart4.Massless = true
BarrelPart4.Material = Enum.Material.Glass
BarrelPart4.Reflectance = 0.05
BarrelPart4.Size = Vector3.new(0.10466247797012329, 0.10466247797012329, 0.17411735653877258)
BarrelPart4.CFrame = CFrame.new(-20.800003051757812, 28.006256103515625, 56.74687194824219, 1, 0, -0, 0, 0, 1, 0, -1, 0)
BarrelPart4.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart4.UsePartColor = true
BarrelPart4.Parent = Gun

local BarrelPart5 = Instance.new("UnionOperation")
BarrelPart5.Name = "BarrelPart"
BarrelPart5.Anchored = true
BarrelPart5.CanCollide = false
BarrelPart5.Color = Color3.fromRGB(0, 0, 0)
BarrelPart5.Massless = true
BarrelPart5.Material = Enum.Material.Glass
BarrelPart5.Reflectance = 0.05
BarrelPart5.Size = Vector3.new(0.46057236194610596, 0.10466247797012329, 0.10466247797012329)
BarrelPart5.CFrame = CFrame.new(-20.800003051757812, 28.537506103515625, 57.02811813354492, 0, 0, 1, -1, 0, 0, 0, -1, 0)
BarrelPart5.CollisionFidelity = Enum.CollisionFidelity.Default
BarrelPart5.UsePartColor = true
BarrelPart5.Parent = Gun

local Hole = Instance.new("Part")
Hole.Name = "Hole"
Hole.Anchored = true
Hole.BottomSurface = Enum.SurfaceType.Smooth
Hole.CanCollide = false
Hole.TopSurface = Enum.SurfaceType.Smooth
Hole.Transparency = 1
Hole.Massless = true
Hole.Size = Vector3.new(0.10466247797012329, 0.10466247797012329, 0.10466247797012329)
Hole.CFrame = CFrame.new(-20.800003051757812, 27.850006103515625, 56.90311813354492, 4.371138828673793e-08, 3.82137093032941e-15, -1, 8.742277657347586e-08, -1, 0, -1, -8.742277657347586e-08, -4.371138828673793e-08)
Hole.Parent = Gun

gw.Part1 = Gear2
gw.Part0 = Gear1

gw1.Part1 = Gear1
gw1.Part0 = Gear2

Weld.Part1 = BarrelPart
Weld.Part0 = Handle

Weld1.Part1 = BarrelPart5
Weld1.Part0 = Handle

Weld2.Part1 = BarrelPart4
Weld2.Part0 = Handle

Weld3.Part1 = BarrelPart3
Weld3.Part0 = Handle

Weld4.Part1 = BarrelPart2
Weld4.Part0 = Handle

Weld5.Part1 = BarrelPart1
Weld5.Part0 = Handle

Weld6.Part1 = Frizzen
Weld6.Part0 = Handle

Weld7.Part1 = Emitter
Weld7.Part0 = Handle

Weld8.Part1 = Hole
Weld8.Part0 = Handle

Weld9.Part1 = Hammer
Weld9.Part0 = Handle

Weld10.Part1 = Lid
Weld10.Part0 = Handle

Weld11.Part1 = Union8
Weld11.Part0 = Handle

Weld12.Part1 = Union
Weld12.Part0 = Handle

Weld13.Part1 = Union2
Weld13.Part0 = Handle

Weld14.Part1 = Union1
Weld14.Part0 = Handle

Weld15.Part1 = Union3
Weld15.Part0 = Handle

Weld16.Part1 = Union4
Weld16.Part0 = Handle

Weld17.Part1 = Union5
Weld17.Part0 = Handle

Weld18.Part1 = Union7
Weld18.Part0 = Handle

Weld19.Part1 = Union6
Weld19.Part0 = Handle

Weld20.Part1 = Union9
Weld20.Part0 = Handle

Weld21.Part1 = Part5
Weld21.Part0 = Handle

Weld22.Part1 = Part4
Weld22.Part0 = Handle

Weld23.Part1 = Part3
Weld23.Part0 = Handle

Weld24.Part1 = Part2
Weld24.Part0 = Handle

Weld25.Part1 = Part1
Weld25.Part0 = Handle

Weld26.Part1 = Part
Weld26.Part0 = Handle

Weld27.Part1 = Gear1
Weld27.Part0 = Handle

Weld28.Part1 = Gear2
Weld28.Part0 = Handle


for i,v in pairs(Gun:GetChildren()) do
	v.Anchored = false
end
local hole = Gun.Hole
local gunw = CreateWeldOrSnapOrMotor("Weld",LeftArm,Gun.Handle,LeftArm,CF(0,0,.5) * ANGLES(RAD(90),0,0),CF(0,0,0))
Gun.Parent = Character
local BShot = Instance.new("Model")
BShot.Name = "BShot"
BShot.WorldPivot = CFrame.new(-17.800003051757812, 30.843547821044922, 57.89726257324219, 1, 0, 1.0658141036401503e-14, 0, 1, 0, -1.0658141036401503e-14, 0, 1)

local Reciever = Instance.new("UnionOperation")
Reciever.Name = "Reciever"
Reciever.Anchored = true
Reciever.CanCollide = false
Reciever.Color = Color3.fromRGB(0, 0, 0)
Reciever.Material = Enum.Material.Glass
Reciever.Size = Vector3.new(0.9119047522544861, 0.664977490901947, 0.13733524084091187)
Reciever.CFrame = CFrame.new(-17.800003051757812, 30.56875991821289, 57.52811813354492, 0, 0, 1, 0.26503613591194153, -0.9642385840415955, 0, 0.9642385840415955, 0.26503613591194153, 0)
Reciever.CollisionFidelity = Enum.CollisionFidelity.Default
Reciever.UsePartColor = true
Reciever.Parent = BShot

local Barrel = Instance.new("UnionOperation")
Barrel.Name = "Barrel"
Barrel.Anchored = true
Barrel.CanCollide = false
Barrel.Color = Color3.fromRGB(0, 0, 0)
Barrel.Material = Enum.Material.Glass
Barrel.Size = Vector3.new(2.2199313640594482, 0.1222144365310669, 0.10711697489023209)
Barrel.CFrame = CFrame.new(-17.800003051757812, 30.287506103515625, 59.02811813354492, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Barrel.CollisionFidelity = Enum.CollisionFidelity.Default
Barrel.UsePartColor = true
Barrel.Parent = BShot

local Handguard = Instance.new("UnionOperation")
Handguard.Name = "Handguard"
Handguard.Anchored = true
Handguard.CanCollide = false
Handguard.Color = Color3.fromRGB(0, 0, 0)
Handguard.Material = Enum.Material.Glass
Handguard.Size = Vector3.new(1.2915854454040527, 0.22369618713855743, 0.1385815143585205)
Handguard.CFrame = CFrame.new(-17.800003051757812, 30.443756103515625, 58.60624694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Handguard.CollisionFidelity = Enum.CollisionFidelity.Default
Handguard.UsePartColor = true
Handguard.Parent = BShot

local Mag = Instance.new("UnionOperation")
Mag.Name = "Mag"
Mag.Anchored = true
Mag.CanCollide = false
Mag.Color = Color3.fromRGB(196, 40, 28)
Mag.Material = Enum.Material.Metal
Mag.Size = Vector3.new(0.07286165654659271, 0.2307862788438797, 0.07286931574344635)
Mag.CFrame = CFrame.new(-17.800003051757812, 30.443756103515625, 57.69999694824219, -1, 0, 0, 0, -0.09763404726982117, 0.9952224493026733, 0, 0.9952224493026733, 0.09763404726982117)
Mag.CollisionFidelity = Enum.CollisionFidelity.Default
Mag.UsePartColor = true
Mag.Parent = BShot

local Bolt = Instance.new("UnionOperation")
Bolt.Name = "Bolt"
Bolt.Anchored = true
Bolt.CanCollide = false
Bolt.Color = Color3.fromRGB(255, 0, 0)
Bolt.Material = Enum.Material.Neon
Bolt.Size = Vector3.new(0.11624973267316818, 0.4296667277812958, 0.13001686334609985)
Bolt.CFrame = CFrame.new(-17.800003051757812, 30.475006103515625, 57.59061813354492, 0, 0, -1, -0.9952239990234375, -0.0976179987192154, 0, -0.0976179987192154, 0.9952239990234375, 0)
Bolt.CollisionFidelity = Enum.CollisionFidelity.Default
Bolt.UsePartColor = true
Bolt.Parent = BShot

local Handle = Instance.new("UnionOperation")
Handle.Name = "Handle"
Handle.Anchored = true
Handle.CanCollide = false
Handle.Color = Color3.fromRGB(0, 0, 0)
Handle.Material = Enum.Material.Glass
Handle.Size = Vector3.new(0.656165361404419, 1.4689078330993652, 0.13884586095809937)
Handle.CFrame = CFrame.new(-17.800003051757812, 30.94375991821289, 56.41874694824219, 0, 0, 1, 0.9952239990234375, -0.0976179987192154, 0, 0.0976179987192154, 0.9952239990234375, 0)
Handle.CollisionFidelity = Enum.CollisionFidelity.Default
Handle.UsePartColor = true
Handle.Parent = BShot

local Union = Instance.new("UnionOperation")
Union.Anchored = true
Union.CanCollide = false
Union.Color = Color3.fromRGB(0, 0, 0)
Union.Material = Enum.Material.Glass
Union.Size = Vector3.new(0.9949378967285156, 0.10711658000946045, 0.1071014404296875)
Union.CFrame = CFrame.new(-17.800003051757812, 30.318756103515625, 59.54374694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Union.CollisionFidelity = Enum.CollisionFidelity.Default
Union.UsePartColor = true
Union.Parent = BShot

local Hole = Instance.new("Part")
Hole.Name = "Hole"
Hole.Anchored = true
Hole.BottomSurface = Enum.SurfaceType.Smooth
Hole.CanCollide = false
Hole.TopSurface = Enum.SurfaceType.Smooth
Hole.Color = Color3.fromRGB(255, 0, 0)
Hole.Material = Enum.Material.Neon
Hole.Size = Vector3.new(0.10999996960163116, 0.10599999874830246, 0.10599999874830246)
Hole.CFrame = CFrame.new(-17.800003051757812, 30.193756103515625, 60.07499694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Hole.Shape = Enum.PartType.Cylinder
Hole.Parent = BShot

local RedPartThing = Instance.new("Part")
RedPartThing.Name = "RedPartThing"
RedPartThing.Anchored = true
RedPartThing.BottomSurface = Enum.SurfaceType.Smooth
RedPartThing.CanCollide = false
RedPartThing.TopSurface = Enum.SurfaceType.Smooth
RedPartThing.Color = Color3.fromRGB(255, 0, 0)
RedPartThing.Material = Enum.Material.Neon
RedPartThing.Size = Vector3.new(0.9950000047683716, 0.10599999874830246, 0.10599999874830246)
RedPartThing.CFrame = CFrame.new(-17.800003051757812, 30.318756103515625, 59.54374694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
RedPartThing.Shape = Enum.PartType.Cylinder
RedPartThing.Parent = BShot

local Union1 = Instance.new("UnionOperation")
Union1.Anchored = true
Union1.CanCollide = false
Union1.Color = Color3.fromRGB(255, 0, 0)
Union1.Material = Enum.Material.Neon
Union1.Size = Vector3.new(0.4194142818450928, 1.386840581893921, 0.1471271514892578)
Union1.CFrame = CFrame.new(-17.800003051757812, 30.94375991821289, 56.46561813354492, 0, 0, 1, 0.9952239990234375, -0.0976179987192154, 0, 0.0976179987192154, 0.9952239990234375, 0)
Union1.CollisionFidelity = Enum.CollisionFidelity.Default
Union1.UsePartColor = true
Union1.Parent = BShot

local Detail = Instance.new("UnionOperation")
Detail.Name = "Detail"
Detail.Anchored = true
Detail.CanCollide = false
Detail.Color = Color3.fromRGB(255, 0, 0)
Detail.Material = Enum.Material.Neon
Detail.Size = Vector3.new(0.9415857791900635, 0.16307803988456726, 0.10102799534797668)
Detail.CFrame = CFrame.new(-17.800003051757812, 30.443756103515625, 58.57499694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Detail.CollisionFidelity = Enum.CollisionFidelity.Default
Detail.UsePartColor = true
Detail.Parent = BShot

local Detail1 = Instance.new("UnionOperation")
Detail1.Name = "Detail"
Detail1.Anchored = true
Detail1.CanCollide = false
Detail1.Color = Color3.fromRGB(255, 0, 0)
Detail1.Material = Enum.Material.Neon
Detail1.Size = Vector3.new(0.9415857791900635, 0.16307803988456726, 0.10102799534797668)
Detail1.CFrame = CFrame.new(-17.800003051757812, 30.443756103515625, 58.57499694824219, 0, 0, -1, 0.09761998057365417, -0.9952237606048584, 0, -0.9952237606048584, -0.09761998057365417, 0)
Detail1.CollisionFidelity = Enum.CollisionFidelity.Default
Detail1.UsePartColor = true
Detail1.Parent = BShot

local Part = Instance.new("Part")
Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.CanCollide = false
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Color = Color3.fromRGB(255, 0, 0)
Part.Material = Enum.Material.Neon
Part.Size = Vector3.new(0.20000001788139343, 0.05000000074505806, 0.05000000074505806)
Part.CFrame = CFrame.new(-17.800003051757812, 30.50625991821289, 57.48124694824219, 0, 0, 1, -0.7407803535461426, -0.6717473268508911, 0, 0.6717473268508911, -0.7407803535461426, 0)
Part.Parent = BShot

local Part1 = Instance.new("Part")
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.fromRGB(255, 0, 0)
Part1.Material = Enum.Material.Neon
Part1.Size = Vector3.new(0.20000001788139343, 0.05000000074505806, 0.05000000074505806)
Part1.CFrame = CFrame.new(-17.800003051757812, 30.50625991821289, 57.48124694824219, 0, 0, 1, -0.8115348815917969, 0.5843039155006409, 0, -0.5843039155006409, -0.8115348815917969, 0)
Part1.Parent = BShot

local Part2 = Instance.new("Part")
Part2.Anchored = true
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.CanCollide = false
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.fromRGB(255, 0, 0)
Part2.Material = Enum.Material.Neon
Part2.Size = Vector3.new(0.7899998426437378, 0.05000000074505806, 0.05000000074505806)
Part2.CFrame = CFrame.new(-17.800003051757812, 30.50625991821289, 57.48124694824219, 0, 0, 1, -0.1285950243473053, -0.9916972517967224, 0, 0.9916972517967224, -0.1285950243473053, 0)
Part2.Parent = BShot

local Main = Instance.new("Part")
Main.Name = "Main"
Main.Anchored = true
Main.CanCollide = false
Main.Transparency = 1
Main.Size = Vector3.new(1, 1, 1)
Main.CFrame = CFrame.new(-17.800003051757812, 31.06875991821289, 57.88749694824219, 1, 0, 1.0658141036401503e-14, 0, 1, 0, -1.0658141036401503e-14, 0, 1)
Main.formFactor = Enum.FormFactor.Symmetric
Main.Parent = BShot

local Weld = Instance.new("Weld")
Weld.C1 = CFrame.new(1.210235595703125, -0.6916065216064453, -0.007680416107177734, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld.Parent = Main

local Weld1 = Instance.new("Weld")
Weld1.C1 = CFrame.new(-0.6488962173461914, 0.23323822021484375, 0.05100536346435547, 1.0404264509802181e-15, -0.9952239990234375, -0.0976179987192154, -1.0607237744403308e-14, -0.0976179987192154, 0.9952239990234375, -1, 0, -1.0658141036401503e-14)
Weld1.Parent = Main

local Weld2 = Instance.new("Weld")
Weld2.C1 = CFrame.new(0.7424468994140625, -0.5561494827270508, 0.015955448150634766, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld2.Parent = Main

local Weld3 = Instance.new("Weld")
Weld3.C1 = CFrame.new(0.7424468994140625, -0.5561494827270508, -0.04771137237548828, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld3.Parent = Main

local Weld4 = Instance.new("Weld")
Weld4.C1 = CFrame.new(0.7766952514648438, -0.5561428070068359, -0.007046699523925781, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld4.Parent = Main

local Weld5 = Instance.new("Weld")
Weld5.C1 = CFrame.new(0.2744169235229492, 1.4535140991210938, 0.007039546966552734, -1.0404264509802181e-15, 0.9952239990234375, 0.0976179987192154, -1.0607237744403308e-14, -0.0976179987192154, 0.9952239990234375, 1, 0, 1.0658141036401503e-14)
Weld5.Parent = Main

local Weld6 = Instance.new("Weld")
Weld6.C1 = CFrame.new(-0.009846687316894531, 0.132080078125, 0.6583890914916992, -1, 0, -1.0658141036401503e-14, -1.0607220803744363e-14, -0.09763404726982117, 0.9952224493026733, -1.040597445756445e-15, 0.9952224493026733, 0.09763404726982117)
Weld6.Parent = Main

local Weld7 = Instance.new("Weld")
Weld7.C1 = CFrame.new(0.49059295654296875, -0.4111480712890625, 0.007115364074707031, -1.0276990609697171e-14, 0.26503613591194153, 0.9642385840415955, -2.8247926221714684e-15, -0.9642385840415955, 0.26503613591194153, 1, 0, 1.0658141036401503e-14)
Weld7.Parent = Main

local Weld8 = Instance.new("Weld")
Weld8.C1 = CFrame.new(1.7220916748046875, -0.5840873718261719, -0.007680416107177734, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld8.Parent = Main

local Weld9 = Instance.new("Weld")
Weld9.C1 = CFrame.new(0.2744455337524414, 1.4124603271484375, 0.005986690521240234, -1.0404264509802181e-15, 0.9952239990234375, 0.0976179987192154, -1.0607237744403308e-14, -0.0976179987192154, 0.9952239990234375, 1, 0, 1.0658141036401503e-14)
Weld9.Parent = Main

local Weld10 = Instance.new("Weld")
Weld10.C1 = CFrame.new(-0.14455413818359375, -0.6827850341796875, 0.05289268493652344, -7.15957817391897e-15, -0.7407803535461426, 0.6717473268508911, 7.895341485090156e-15, -0.6717473268508911, -0.7407803535461426, 1, 0, 1.0658141036401503e-14)
Weld10.Parent = Main

local Weld11 = Instance.new("Weld")
Weld11.C1 = CFrame.new(-0.6979255676269531, -0.00110626220703125, 0.05289268493652344, 6.2275937512856934e-15, -0.8115348815917969, -0.5843039155006409, 8.649453223964765e-15, 0.5843039155006409, -0.8115348815917969, 1, 0, 1.0658141036401503e-14)
Weld11.Parent = Main

local Weld12 = Instance.new("Weld")
Weld12.C1 = CFrame.new(0.33753204345703125, -0.6135969161987305, 0.05289268493652344, -1.0569648963303004e-14, -0.1285950243473053, 0.9916972517967224, 1.370583906073065e-15, -0.9916972517967224, -0.1285950243473053, 1, 0, 1.0658141036401503e-14)
Weld12.Parent = Main

local Weld13 = Instance.new("Weld")
Weld13.C1 = CFrame.new(1.7208709716796875, -0.5840892791748047, -0.007680416107177734, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld13.Parent = Main

local Weld14 = Instance.new("Weld")
Weld14.C1 = CFrame.new(2.264007568359375, -0.6840839385986328, -0.007680416107177734, 1.0607235203304467e-14, 0.09761998057365417, -0.9952237606048584, 1.040447520924781e-15, -0.9952237606048584, -0.09761998057365417, -1, 0, -1.0658141036401503e-14)
Weld14.Parent = Main

Weld.Part1 = Barrel
Weld.Part0 = Main

Weld1.Part1 = Bolt
Weld1.Part0 = Main

Weld2.Part1 = Detail
Weld2.Part0 = Main

Weld3.Part1 = Detail1
Weld3.Part0 = Main

Weld4.Part1 = Handguard
Weld4.Part0 = Main

Weld5.Part1 = Handle
Weld5.Part0 = Main

Weld6.Part1 = Mag
Weld6.Part0 = Main

Weld7.Part1 = Reciever
Weld7.Part0 = Main

Weld8.Part1 = Union
Weld8.Part0 = Main

Weld9.Part1 = Union1
Weld9.Part0 = Main

Weld10.Part1 = Part
Weld10.Part0 = Main

Weld11.Part1 = Part1
Weld11.Part0 = Main

Weld12.Part1 = Part2
Weld12.Part0 = Main

Weld13.Part1 = RedPartThing
Weld13.Part0 = Main

Weld14.Part1 = Hole
Weld14.Part0 = Main


local shotgun = BShot
for i,v in pairs(shotgun:GetChildren()) do
	v.Anchored = false
end
local sgw = CreateWeldOrSnapOrMotor("Weld",RightArm,shotgun.Main,RightArm,CF(0,.4,0),CF(0,0,0))
shotgun.Parent = nil
local FShot = Instance.new("Model")
FShot.Name = "FShot"
FShot.WorldPivot = CFrame.new(-18.845691680908203, 31.568527221679688, 57.94400405883789, 1, 0, 1.0658141036401503e-14, 0, 1, 0, -1.0658141036401503e-14, 0, 1)

local Reciever = Instance.new("UnionOperation")
Reciever.Name = "Reciever"
Reciever.Anchored = true
Reciever.CanCollide = false
Reciever.Color = Color3.fromRGB(0, 0, 0)
Reciever.Massless = true
Reciever.Material = Enum.Material.Glass
Reciever.Size = Vector3.new(0.9119047522544861, 0.664977490901947, 0.13733524084091187)
Reciever.CFrame = CFrame.new(-18.800003051757812, 31.47500991821289, 58.40311813354492, -0.926012396812439, 0.3774932026863098, 0, 0.3774931728839874, 0.926012396812439, 0, 0, 0, -1)
Reciever.CollisionFidelity = Enum.CollisionFidelity.Default
Reciever.UsePartColor = true
Reciever.Parent = FShot

local Barrel = Instance.new("UnionOperation")
Barrel.Name = "Barrel"
Barrel.Anchored = true
Barrel.CanCollide = false
Barrel.Color = Color3.fromRGB(0, 0, 0)
Barrel.Massless = true
Barrel.Material = Enum.Material.Glass
Barrel.Size = Vector3.new(2.2199313640594482, 0.1222144365310669, 0.10711697489023209)
Barrel.CFrame = CFrame.new(-19.800003051757812, 32.60000991821289, 58.40311813354492, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
Barrel.CollisionFidelity = Enum.CollisionFidelity.Default
Barrel.UsePartColor = true
Barrel.Parent = FShot

local Handguard = Instance.new("UnionOperation")
Handguard.Name = "Handguard"
Handguard.Anchored = true
Handguard.CanCollide = false
Handguard.Color = Color3.fromRGB(0, 0, 0)
Handguard.Massless = true
Handguard.Material = Enum.Material.Glass
Handguard.Size = Vector3.new(1.2915854454040527, 0.22369618713855743, 0.1385815143585205)
Handguard.CFrame = CFrame.new(-19.800003051757812, 32.22500991821289, 58.40311813354492, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
Handguard.CollisionFidelity = Enum.CollisionFidelity.Default
Handguard.UsePartColor = true
Handguard.Parent = FShot

local Mag = Instance.new("UnionOperation")
Mag.Name = "Mag"
Mag.Anchored = true
Mag.CanCollide = false
Mag.Color = Color3.fromRGB(196, 40, 28)
Mag.Massless = true
Mag.Material = Enum.Material.Metal
Mag.Size = Vector3.new(0.07286165654659271, 0.2307862788438797, 0.07286931574344635)
Mag.CFrame = CFrame.new(-18.800003051757812, 31.66250991821289, 58.40311813354492, 0, -0.729560911655426, -0.683915913105011, 0, 0.683915913105011, -0.729560911655426, 1, 0, 0)
Mag.CollisionFidelity = Enum.CollisionFidelity.Default
Mag.UsePartColor = true
Mag.Parent = FShot

local Bolt = Instance.new("UnionOperation")
Bolt.Name = "Bolt"
Bolt.Anchored = true
Bolt.CanCollide = false
Bolt.Color = Color3.fromRGB(255, 0, 0)
Bolt.Massless = true
Bolt.Material = Enum.Material.Neon
Bolt.Size = Vector3.new(0.11624973267316818, 0.4296667277812958, 0.13001686334609985)
Bolt.CFrame = CFrame.new(-18.800003051757812, 31.60000991821289, 58.35624694824219, 0.6839039921760559, -0.7295719981193542, 0, 0.7295719981193542, 0.6839039921760559, 0, 0, 0, 1)
Bolt.CollisionFidelity = Enum.CollisionFidelity.Default
Bolt.UsePartColor = true
Bolt.Parent = FShot

local Handle = Instance.new("UnionOperation")
Handle.Name = "Handle"
Handle.Anchored = true
Handle.CanCollide = false
Handle.Color = Color3.fromRGB(0, 0, 0)
Handle.Massless = true
Handle.Material = Enum.Material.Glass
Handle.Size = Vector3.new(0.656165361404419, 1.4689078330993652, 0.13884586095809937)
Handle.CFrame = CFrame.new(-17.800003051757812, 30.475006103515625, 58.40311813354492, -0.6839039921760559, -0.7295719981193542, 0, -0.7295719981193542, 0.6839039921760559, 0, 0, 0, -1)
Handle.CollisionFidelity = Enum.CollisionFidelity.Default
Handle.UsePartColor = true
Handle.Parent = FShot

local Union = Instance.new("UnionOperation")
Union.Anchored = true
Union.CanCollide = false
Union.Color = Color3.fromRGB(0, 0, 0)
Union.Massless = true
Union.Material = Enum.Material.Glass
Union.Size = Vector3.new(0.9949378967285156, 0.10711658000946045, 0.1071014404296875)
Union.CFrame = CFrame.new(-19.800003051757812, 32.88125991821289, 58.40311813354492, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
Union.CollisionFidelity = Enum.CollisionFidelity.Default
Union.UsePartColor = true
Union.Parent = FShot

local RedPartThing = Instance.new("Part")
RedPartThing.Name = "RedPartThing"
RedPartThing.Anchored = true
RedPartThing.BottomSurface = Enum.SurfaceType.Smooth
RedPartThing.CanCollide = false
RedPartThing.TopSurface = Enum.SurfaceType.Smooth
RedPartThing.Color = Color3.fromRGB(255, 0, 0)
RedPartThing.Massless = true
RedPartThing.Material = Enum.Material.Neon
RedPartThing.Size = Vector3.new(0.9950000047683716, 0.10599999874830246, 0.10599999874830246)
RedPartThing.CFrame = CFrame.new(-19.800003051757812, 33.00625991821289, 58.40311813354492, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
RedPartThing.Shape = Enum.PartType.Cylinder
RedPartThing.Parent = FShot

local RedPartThing1 = Instance.new("Part")
RedPartThing1.Name = "RedPartThing"
RedPartThing1.Anchored = true
RedPartThing1.BottomSurface = Enum.SurfaceType.Smooth
RedPartThing1.CanCollide = false
RedPartThing1.TopSurface = Enum.SurfaceType.Smooth
RedPartThing1.Color = Color3.fromRGB(255, 0, 0)
RedPartThing1.Massless = true
RedPartThing1.Material = Enum.Material.Neon
RedPartThing1.Size = Vector3.new(0.9950000047683716, 0.10599999874830246, 0.10599999874830246)
RedPartThing1.CFrame = CFrame.new(-19.800003051757812, 32.88125991821289, 58.40311813354492, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
RedPartThing1.Shape = Enum.PartType.Cylinder
RedPartThing1.Parent = FShot

local Union1 = Instance.new("UnionOperation")
Union1.Anchored = true
Union1.CanCollide = false
Union1.Color = Color3.fromRGB(255, 0, 0)
Union1.Massless = true
Union1.Material = Enum.Material.Neon
Union1.Size = Vector3.new(0.4194142818450928, 1.386840581893921, 0.1471271514892578)
Union1.CFrame = CFrame.new(-17.800003051757812, 30.50625991821289, 58.40311813354492, -0.6839039921760559, -0.7295719981193542, 0, -0.7295719981193542, 0.6839039921760559, 0, 0, 0, -1)
Union1.CollisionFidelity = Enum.CollisionFidelity.Default
Union1.UsePartColor = true
Union1.Parent = FShot

local Detail = Instance.new("UnionOperation")
Detail.Name = "Detail"
Detail.Anchored = true
Detail.CanCollide = false
Detail.Color = Color3.fromRGB(255, 0, 0)
Detail.Massless = true
Detail.Material = Enum.Material.Neon
Detail.Size = Vector3.new(0.9415857791900635, 0.16307803988456726, 0.10102799534797668)
Detail.CFrame = CFrame.new(-19.800003051757812, 32.19375991821289, 58.38749694824219, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
Detail.CollisionFidelity = Enum.CollisionFidelity.Default
Detail.UsePartColor = true
Detail.Parent = FShot

local Detail1 = Instance.new("UnionOperation")
Detail1.Name = "Detail"
Detail1.Anchored = true
Detail1.CanCollide = false
Detail1.Color = Color3.fromRGB(255, 0, 0)
Detail1.Massless = true
Detail1.Material = Enum.Material.Neon
Detail1.Size = Vector3.new(0.9415857791900635, 0.16307803988456726, 0.10102799534797668)
Detail1.CFrame = CFrame.new(-19.800003051757812, 32.19375991821289, 58.44999694824219, 0.7295710444450378, 0.6839050650596619, 0, -0.6839050650596619, 0.7295710444450378, 0, 0, 0, 1)
Detail1.CollisionFidelity = Enum.CollisionFidelity.Default
Detail1.UsePartColor = true
Detail1.Parent = FShot

local Part = Instance.new("Part")
Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.CanCollide = false
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Color = Color3.fromRGB(255, 0, 0)
Part.Massless = true
Part.Material = Enum.Material.Neon
Part.Size = Vector3.new(0.20000001788139343, 0.05000000074505806, 0.05000000074505806)
Part.CFrame = CFrame.new(-18.800003051757812, 31.47500991821289, 58.44999694824219, -0.081138975918293, 0.9967027902603149, 0, 0.9967027902603149, 0.081138975918293, 0, 0, 0, -1)
Part.Parent = FShot

local Part1 = Instance.new("Part")
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.CanCollide = false
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.fromRGB(255, 0, 0)
Part1.Massless = true
Part1.Material = Enum.Material.Neon
Part1.Size = Vector3.new(0.20000001788139343, 0.05000000074505806, 0.05000000074505806)
Part1.CFrame = CFrame.new(-18.800003051757812, 31.47500991821289, 58.44999694824219, 0.9578298926353455, 0.28733596205711365, 0, 0.28733596205711365, -0.9578298926353455, 0, 0, 0, -1)
Part1.Parent = FShot

local Part2 = Instance.new("Part")
Part2.Anchored = true
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.CanCollide = false
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.fromRGB(255, 0, 0)
Part2.Massless = true
Part2.Material = Enum.Material.Neon
Part2.Size = Vector3.new(0.7899998426437378, 0.05000000074505806, 0.05000000074505806)
Part2.CFrame = CFrame.new(-18.800003051757812, 31.47500991821289, 58.44999694824219, -0.7078938484191895, 0.7063187956809998, 0, 0.7063187956809998, 0.7078938484191895, 0, 0, 0, -1)
Part2.Parent = FShot

local Main = Instance.new("Part")
Main.Name = "Main"
Main.RightParamB = 0
Main.Anchored = true
Main.CanCollide = false
Main.Transparency = 1
Main.RightParamA = 0
Main.Massless = true
Main.RightSurface = Enum.SurfaceType.Weld
Main.Size = Vector3.new(2, 2, 1)
Main.CFrame = CFrame.new(-18.800003051757812, 31.56875991821289, 57.88749694824219, 1, 0, 1.0658141036401503e-14, 0, 1, 0, -1.0658141036401503e-14, 0, 1)
Main.LeftSurface = Enum.SurfaceType.Weld
Main.LeftParamB = 0
Main.LeftParamA = 0
Main.formFactor = Enum.FormFactor.Symmetric
Main.Parent = FShot

local Weld = Instance.new("Weld")
Weld.C1 = CFrame.new(1.2679643630981445, -0.2548956871032715, -0.5142593383789062, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld.Parent = Main

local Weld1 = Instance.new("Weld")
Weld1.C1 = CFrame.new(-0.21221375465393066, 0.17549896240234375, -0.45557403564453125, 0.6839039921760559, 0.7295719981193542, 7.28914541572867e-15, -0.7295719981193542, 0.6839039921760559, -7.775881040407093e-15, -1.0658141036401503e-14, 0, 1)
Weld1.Parent = Main

local Weld2 = Instance.new("Weld")
Weld2.C1 = CFrame.new(0.8001527786254883, -0.11940908432006836, -0.554290771484375, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld2.Parent = Main

local Weld3 = Instance.new("Weld")
Weld3.C1 = CFrame.new(0.8001527786254883, -0.11940908432006836, -0.49062347412109375, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld3.Parent = Main

local Weld4 = Instance.new("Weld")
Weld4.C1 = CFrame.new(0.8344020843505859, -0.11941123008728027, -0.5136260986328125, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld4.Parent = Main

local Weld5 = Instance.new("Weld")
Weld5.C1 = CFrame.new(-0.16231369972229004, 1.3958086967468262, 0.5136184692382812, -0.6839039921760559, -0.7295719981193542, -7.28914541572867e-15, -0.7295719981193542, 0.6839039921760559, -7.775881040407093e-15, 1.0658141036401503e-14, 0, -1)
Weld5.Parent = Main

local Weld6 = Instance.new("Weld")
Weld6.C1 = CFrame.new(-0.5164260864257812, 0.07445144653320312, 0.22164463996887207, -1.0658141036401503e-14, 0, 1, -0.729560911655426, 0.683915913105011, -7.775763302827424e-15, -0.683915913105011, -0.729560911655426, -7.289272470670759e-15)
Weld6.Parent = Main

local Weld7 = Instance.new("Weld")
Weld7.C1 = CFrame.new(0.2803335189819336, -0.024009227752685547, 0.513702392578125, -0.926012396812439, 0.3774931728839874, -9.869570303166694e-15, 0.3774932026863098, 0.926012396812439, 4.0233760062718255e-15, 1.0658141036401503e-14, 0, -1)
Weld7.Parent = Main

local Weld8 = Instance.new("Weld")
Weld8.C1 = CFrame.new(1.779850959777832, -0.14738678932189941, -0.5142593383789062, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld8.Parent = Main

local Weld9 = Instance.new("Weld")
Weld9.C1 = CFrame.new(-0.16230320930480957, 1.3547744750976562, 0.5125656127929688, -0.6839039921760559, -0.7295719981193542, -7.28914541572867e-15, -0.7295719981193542, 0.6839039921760559, -7.775881040407093e-15, 1.0658141036401503e-14, 0, -1)
Weld9.Parent = Main

local Weld10 = Instance.new("Weld")
Weld10.C1 = CFrame.new(0.10598945617675781, -0.3204612731933594, 0.5594711303710938, -0.081138975918293, 0.9967027902603149, -8.647906753561315e-16, 0.9967027902603149, 0.081138975918293, 1.0622999333485816e-14, 1.0658141036401503e-14, 0, -1)
Weld10.Parent = Main

local Weld11 = Instance.new("Weld")
Weld11.C1 = CFrame.new(-0.29129743576049805, -0.17052936553955078, 0.5594711303710938, 0.9578298926353455, 0.28733596205711365, 1.0208685872830584e-14, 0.28733596205711365, -0.9578298926353455, 3.0624671025557097e-15, 1.0658141036401503e-14, 0, -1)
Weld11.Parent = Main

local Weld12 = Instance.new("Weld")
Weld12.C1 = CFrame.new(0.29344654083251953, -0.1753072738647461, 0.5594711303710938, -0.7078938484191895, 0.7063187956809998, -7.544832475252748e-15, 0.7063187956809998, 0.7078938484191895, 7.528045129271115e-15, 1.0658141036401503e-14, 0, -1)
Weld12.Parent = Main

local Weld13 = Instance.new("Weld")
Weld13.C1 = CFrame.new(1.8792228698730469, -0.24734807014465332, -0.5142593383789062, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld13.Parent = Main

local Weld14 = Instance.new("Weld")
Weld14.C1 = CFrame.new(1.778604507446289, -0.1473851203918457, -0.5142593383789062, 0.7295710444450378, -0.6839050650596619, 7.775870876011726e-15, 0.6839050650596619, 0.7295710444450378, 7.289156427156985e-15, -1.0658141036401503e-14, 0, 1)
Weld14.Parent = Main

Weld.Part1 = Barrel
Weld.Part0 = Main

Weld1.Part1 = Bolt
Weld1.Part0 = Main

Weld2.Part1 = Detail1
Weld2.Part0 = Main

Weld3.Part1 = Detail
Weld3.Part0 = Main

Weld4.Part1 = Handguard
Weld4.Part0 = Main

Weld5.Part1 = Handle
Weld5.Part0 = Main

Weld6.Part1 = Mag
Weld6.Part0 = Main

Weld7.Part1 = Reciever
Weld7.Part0 = Main

Weld8.Part1 = Union
Weld8.Part0 = Main

Weld9.Part1 = Union1
Weld9.Part0 = Main

Weld10.Part1 = Part
Weld10.Part0 = Main

Weld11.Part1 = Part1
Weld11.Part0 = Main

Weld12.Part1 = Part2
Weld12.Part0 = Main

Weld13.Part1 = RedPartThing
Weld13.Part0 = Main

Weld14.Part1 = RedPartThing1
Weld14.Part0 = Main


local fshot = FShot
for i,v in pairs(fshot:GetChildren()) do
	v.Anchored = false
end
local fsw = CreateWeldOrSnapOrMotor("Weld",Torso,fshot.Main,Torso,CF(0,0,0),CF(0,0,0))
fshot.Parent = Character
local Mask = Instance.new("Model")
Mask.Name = "Mask"
Mask.WorldPivot = CFrame.new(-5.80000114440918, 32.97500991821289, -16.471872329711914, 0, -3.488889532832218e-08, 0.9999998807907104, -1.0194016297759845e-08, 1, 3.4888877564753784e-08, -0.9999998807907104, -1.0194005639618808e-08, 0)

local Middle = Instance.new("Part")
Middle.Name = "Middle"
Middle.Anchored = true
Middle.BottomSurface = Enum.SurfaceType.Smooth
Middle.CanCollide = false
Middle.TopSurface = Enum.SurfaceType.Smooth
Middle.Transparency = 1
Middle.Material = Enum.Material.SmoothPlastic
Middle.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 0.20000000298023224)
Middle.CFrame = CFrame.new(-5.80000114440918, 33.06875991821289, -16.471872329711914, 0, -6.469120705787645e-08, 0.9999998807907104, -1.0194016297759845e-08, 1, 6.469119284702174e-08, -0.9999998807907104, -1.0194014521403005e-08, 0)
Middle.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0, 0)
Middle.formFactor = Enum.FormFactor.Custom
Middle.Parent = Mask

local Weld = Instance.new("Weld")
Weld.C1 = CFrame.new(0, 0.08089780807495117, 0.0359797477722168, 0.9999997615814209, -2.6645352591003757e-15, -6.594630597385519e-16, -1.1546319456101628e-14, 1, 2.980230107141324e-08, -3.556577790166316e-16, -2.9802322387695312e-08, 0.9999997615814209)
Weld.Parent = Middle

local Union = Instance.new("UnionOperation")
Union.Anchored = true
Union.CanCollide = false
Union.Color = Color3.fromRGB(0, 0, 0)
Union.Material = Enum.Material.Metal
Union.Size = Vector3.new(1.2500001192092896, 1.0819052457809448, 1.3220645189285278)
Union.CFrame = CFrame.new(-5.80000114440918, 32.97500991821289, -16.471872329711914, 0, -3.488889532832218e-08, 0.9999998807907104, -1.0194016297759845e-08, 1, 3.4888877564753784e-08, -0.9999998807907104, -1.0194005639618808e-08, 0)
Union.CollisionFidelity = Enum.CollisionFidelity.Default
Union.Parent = Mask

Weld.Part1 = Union
Weld.Part0 = Middle


local mascc = Mask
for i,v in pairs(mascc:GetChildren()) do
	v.Anchored = false
end
local mw = CreateWeldOrSnapOrMotor("Weld",Head,mascc.Middle,Head,CF(0,0,0),CF(0,0,0))
mascc.Parent = Character
local FakeGun = Instance.new("Part")
FakeGun.Name = "FakeGun"

yourmother = Instance.new("Part", FakeGun)
yourmother.Name = "Main"
yourmother.Transparency = 1

local fgun = FakeGun
for i,v in pairs(fgun:GetChildren()) do
	v.Anchored = false
end
local fgunw = CreateWeldOrSnapOrMotor("Weld",Torso,fgun.Main,Torso,CF(0,0,0),CF(0,0,0))
fgun.Parent = nil

local hole2 = shotgun.Hole







--dmg

function poop(MODEL)
	MODEL:BreakJoints()
	for index, CHILD in pairs(MODEL:GetChildren()) do
		if CHILD:IsA("BasePart") and CHILD.Name ~= "HumanoidRootPart" then
			if CHILD.Name == "Head" then
					WACKYEFFECT2({Time = 120, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-30,30)/10,MRANDOM(-30,30)/10,MRANDOM(-30,30)/10), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 35})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT2({Time = 120, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-30,30)/10,MRANDOM(-30,30)/10,MRANDOM(-30,30)/10), RotationY = 0, RotationZ = 0 ,Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT2({Time = 60, EffectType = "Sphere", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude, Size2 = VT(6,6,6)*CHILD.Size.Magnitude, Transparency = 0.6, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 301928691, SoundPitch = 2, SoundVolume = 10, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
				end
			CHILD:remove()
		end
	end
	Debris:AddItem(MODEL,6)
end

function ApplyDamage(Humanoid,Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			poop(Humanoid.Parent)
		end
	else
		poop(Humanoid.Parent)
	end
end

function ApplyAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
print("ok")
end

--attacks

function cs()
if SONG == 590141342 then
SONG = 212377035
elseif SONG == 212377035 then
SONG = 589973177
elseif SONG == 589973177 then
SONG = 1833183591
elseif SONG == 1833183591 then
SONG = 2982966292
elseif SONG == 2982966292 then
SONG = 	616388964
elseif SONG == 616388964 then
SONG = 	1342763538
elseif SONG == 1342763538 then
SONG = 886085413
elseif SONG == 886085413 then
SONG = 3704092097
elseif SONG == 3704092097 then
SONG = 1589396874
elseif SONG == 1589396874 then
SONG = 168159280
elseif SONG == 168159280 then
SONG = 296659202
elseif SONG == 296659202 then
SONG = 608671887
elseif SONG == 608671887 then
SONG = 270719635
elseif SONG == 270719635 then
SONG = 3206925146
elseif SONG == 3206925146 then
SONG = 383141805
elseif SONG == 383141805 then
SONG = 590141342			
end
end

function swshotg()
ATTACK = true
if shotgunact == false then
for i = 0,20 do
local Alpha = .1
Swait()
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-12.2),RAD(-73.3 ),RAD(-4.7)),.1);end
RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.5,0.8,0.6)*ANGLES(RAD(57.3),RAD(56.6),RAD(-61.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-104.3- 4 * SIN(SINE/35)),RAD(5.3),RAD(124.5)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
end	
shotgunact = true
else
for i = 0,20 do
local Alpha = .1
Swait()
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-12.2),RAD(-73.3 ),RAD(-4.7)),.1);end
RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.5,0.8,0.6)*ANGLES(RAD(57.3),RAD(56.6),RAD(-61.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-104.3- 4 * SIN(SINE/35)),RAD(5.3),RAD(124.5)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
end	
shotgunact = false
end
ATTACK = false
end

function swgun()
ATTACK = true
if gunact == true then
for i = 0,20 do	
local Alpha = .1
Swait()
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.8,-0.2)*ANGLES(RAD(-20.1),RAD(-30),RAD(44.7)),Alpha)
RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-139.4)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
end
gunact = false
else
for i = 0,20 do
local Alpha = .1
Swait()
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.8,-0.2)*ANGLES(RAD(-20.1),RAD(-30),RAD(44.7)),Alpha)
RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-139.4)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
end	
gunact = true
end
ATTACK = false	
end

function gunsh()
ATTACK = true
for i = 0,25 do
Swait()
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.3,0)*ANGLES(RAD(-130.8),RAD(-85.3),RAD(151.3)),Alpha)
RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
end
	repeat
		for i=0, 0.25, 0.1 / Animation_Speed do
			Swait()
			  	local Alpha = .1
  	  	local Alpha = .1
	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.1,0)*ANGLES(RAD(-130.8),RAD(-85.3),RAD(103)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
		end
		--coroutine.resume(coroutine.create(function()
		local HIT,POS = CastProperRay(hole.Position,  Mouse.Hit.p, 500, Character)
		local DISTANCE = (POS - hole.Position).Magnitude
		if HIT then	
		ApplyAoE(POS,4,0,0,0,true)
		WACKYEFFECT2({Time = MRANDOM(90,110), EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(7,7,7), Transparency = 0, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 1,Chaos = false,UseBoomerangMath = true, SizeBoomerang = 25})	
		end
		for i = 1,6 do
		WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Round Slash", Size = Vector3.new(0.01,0.01,0.01) * MRANDOM(.5,1.5), Size2 = Vector3.new(0,0,0), Transparency = 0.3, Transparency2 = 1, CFrame = hole.CFrame * ANGLES(RAD(MRANDOM(0,360)), RAD(0), RAD(MRANDOM(60,120))) * CF(0,0,0), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Glass", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(7,8)/10, SoundVolume = 8,UseBoomerangMath = true, SizeBoomerang = 15})
		end
		WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = CF(hole.Position), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 1,Chaos = false,UseBoomerangMath = true, SizeBoomerang = 15})
		WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Box", Size = Vector3.new(0,0,DISTANCE), Size2 = Vector3.new(.6,.6,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(hole.Position,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 419268760, SoundPitch = MRANDOM(9,11)/10, SoundVolume = 8, Chaos = false,UseBoomerangMath = true, SizeBoomerang = 15})
		--Lightning({Material = "Neon", FadeIn = false, Color = C3(1,0,0), Start = hole.Position, End = POS, SegmentL = 2, Thickness = .5, DoesFade = true, Ignore = Character, MaxDist = 5, Branches = true, FadeTime = 150, Thicken = false})
		for i=0, 0.2, 0.1 / Animation_Speed do
		Swait()
		  local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-130.8),RAD(-85.3),RAD(160)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)
	end
	if shotgunact == true then break end
	until HOLD ==  false
ATTACK = false	
end
		
function shotgunsh()
ATTACK = true
CreateSound(1498950813,RightArm,5,0.8,false)
for i = 0,26 do
Swait()
local Alpha = .1
sgw.C1 = sgw.C1:lerp(CF(0,-1,.3)*ANGLES(RAD(90),RAD(0),RAD(0)),.1)
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-12.2),RAD(-73.3 ),RAD(-4.7)),.1);end
RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.4,-0.2)*ANGLES(RAD(-169.7),RAD(83.4),RAD(-105.4)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
end
CreateSound(1835530642,RightArm,7,.7,false)
for i = 1,6 do
local p1 = CF(hole2.Position,Mouse.Hit.p)*CF(0,0,-45).p
local ap = CF(hole2.Position,p1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
local HIT,POS = CastProperRay(hole2.Position,ap,1000,Character)
local DISTANCE = (POS - hole2.Position).Magnitude
if HIT then	
ApplyAoE(POS,4,0,0,0,true)
WACKYEFFECT2({Time = MRANDOM(90,110), EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(7,7,7), Transparency = 0, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 1,Chaos = false,UseBoomerangMath = true, SizeBoomerang = 25})		
end
for i = 1,6 do
WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Round Slash", Size = Vector3.new(0.01,0.01,0.01) * MRANDOM(.5,1.5), Size2 = Vector3.new(0,0,0), Transparency = 0.3, Transparency2 = 1, CFrame = hole2.CFrame * ANGLES(RAD(MRANDOM(0,360)), RAD(0), RAD(MRANDOM(60,120))) * CF(0,0,0), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Glass", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(7,8)/10, SoundVolume = 8,UseBoomerangMath = true, SizeBoomerang = 15})
end
WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Sphere", Size = Vector3.new(0,0,0), Size2 = Vector3.new(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = CF(hole2.Position), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 1,Chaos = false,UseBoomerangMath = true, SizeBoomerang = 15})
WACKYEFFECT2({Time = MRANDOM(60,70), EffectType = "Box", Size = Vector3.new(0,0,DISTANCE), Size2 = Vector3.new(.6,.6,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(hole2.Position,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(9,11)/10, SoundVolume = 8, Chaos = false,UseBoomerangMath = true, SizeBoomerang = 15})
end
for i = 0,35 do
local Alpha = .2
Swait()
sgw.C1 = sgw.C1:lerp(CF(0,-1,.3)*ANGLES(RAD(90),RAD(0),RAD(0)),.1)
RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-12.2),RAD(-73.3 ),RAD(-4.7)),.1);end
RightShoulder.C0 = RightShoulder.C0:lerp(CF(1.1,0.3,-0.1)*ANGLES(RAD(-169.7),RAD(83.4),RAD(-55.3)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
end
ATTACK = false	
end

function magic1()
ATTACK = true
local a = false
for i = 0,35 do
Swait()
local Alpha = .1
RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,1.2+ 0.5 * COS(SINE/35),0)*ANGLES(RAD(-83.2+ 7 * SIN(SINE/35)),RAD(8.3),RAD(-129.6)),Alpha)
LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0)*ANGLES(RAD(-8.3),RAD(-74.4),RAD(-175.8)),Alpha)
RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
Neck.C0 =Neck.C0:lerp(CF(-0.2,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(129.1)),Alpha)
LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
end
local sp = CreatePart(3,Effects,"Neon",0,0,"Really red","magic lol",VT(7.5,7.5,7.5),true)
MakeForm(sp,"Ball")
sp.CFrame = LeftArm.CFrame * CF(0,-3,0)
WACKYEFFECT2({Time = 90, EffectType = "Sphere", Size = VT(.2,.2,.2)*sp.Size.Magnitude, Size2 = VT(15,15,15), Transparency = 0.6, Transparency2 = 1, CFrame = CF(sp.Position) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 203691785, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
coroutine.resume(coroutine.create(function()
repeat
Swait()
WACKYEFFECT2({Time = 30, EffectType = "Ring", Size = Vector3.new(.56,.56,.56), Size2 = Vector3.new(.56,.56,.56), Transparency = 0.3, Transparency2 = 1, CFrame = sp.CFrame * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0,0,0), MoveToPos = nil, RotationX = MRANDOM(-60, 60), RotationY = MRANDOM(-50, 50), RotationZ = MRANDOM(-60, 60), Material = "Neon", Color = Color3.fromRGB(255, 0, 0), SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 80})
until a == true
end))
--swait(.5)
coroutine.resume(coroutine.create(function()	
sp.CFrame = CF(sp.Position,Mouse.Hit.p)
for i = 1,250 do
Swait()
sp.CFrame = sp.CFrame * CF(0,0,-2)
local hit,pos = Raycast(sp.Position,sp.CFrame.lookVector,5,Character)
if hit then break end	
end
ApplyAoE(sp.Position,12,0,0,0,true)
for i = 1,15 do
WACKYEFFECT2({Time = MRANDOM(80,90), EffectType = "Sphere", Size = VT(1,10,1), Size2 = VT(5.5,55,5.5), Transparency = 0, Transparency2 = 1, CFrame = CF(sp.Position) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})	
end
WACKYEFFECT2({Time = 60, EffectType = "Sphere", Size = VT(.2,.2,.2)*sp.Size.Magnitude, Size2 = VT(5,5,5)*sp.Size.Magnitude, Transparency = 0.6, Transparency2 = 1, CFrame = CF(sp.Position) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 231917970, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
sp:Destroy()
a = true 
end))
for i = 0,20 do
Swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0.1,1.2+ 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-82.1+ 7 * SIN(SINE/35)),RAD(-7.2),RAD(137.8)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.5,0.6,-0.9)*ANGLES(RAD(97.5),RAD(-35.9),RAD(60.9)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(2.7)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0.1,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-137.3)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
end
ATTACK = false
end

function magic2()
ATTACK = true
local first = false
local stuck = false
coroutine.resume(coroutine.create(function()
repeat
	Swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1.3,-0.2,0.3)*ANGLES(RAD(-101.3),RAD(-1.8),RAD(-84.9)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1.4,-0.2,0.2)*ANGLES(RAD(-97.5),RAD(-1.2),RAD(92.2)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
until	 first == true
end))
local sp1 = CreatePart(3,nil,"Neon",0,0,"Really red","magic lol",VT(2.89, 2.89, 2.89),true)
MakeForm(sp1,"Ball")
local sp2 = CreatePart(3,nil,"Neon",0,0,"Really red","magic lol",VT(2.89, 2.89, 2.89),true)
MakeForm(sp2,"Ball")
sp1.CFrame = LeftArm.CFrame * CF(0,-1,0)
sp2.CFrame = RightArm.CFrame * CF(0,-1,0)
WACKYEFFECT2({Time = 90, EffectType = "Sphere", Size = VT(.2,.2,.2)*sp1.Size.Magnitude, Size2 = VT(10,10,10), Transparency = 0.6, Transparency2 = 1, CFrame = CF(sp1.Position) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 203691785, SoundPitch = 1, SoundVolume = 10, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
WACKYEFFECT2({Time = 90, EffectType = "Sphere", Size = VT(.2,.2,.2)*sp2.Size.Magnitude, Size2 = VT(10,10,10), Transparency = 0.6, Transparency2 = 1, CFrame = CF(sp2.Position) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})

coroutine.resume(coroutine.create(function()
repeat
Swait()
pcall(function()
sp1.Parent = Effects
sp2.Parent = Effects
end)
sp1.CFrame = LeftArm.CFrame * CF(0,-1,0)
sp2.CFrame = RightArm.CFrame * CF(0,-1,0)
WACKYEFFECT2({Time = 30, EffectType = "Ring", Size = Vector3.new(.2,.2,.2), Size2 = Vector3.new(.2,.2,.2), Transparency = 0.3, Transparency2 = 1, CFrame = sp1.CFrame * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0,0,0), MoveToPos = nil, RotationX = MRANDOM(-60, 60), RotationY = MRANDOM(-50, 50), RotationZ = MRANDOM(-60, 60), Material = "Neon", Color = Color3.fromRGB(255, 0, 0), SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 80})
WACKYEFFECT2({Time = 30, EffectType = "Ring", Size = Vector3.new(.2,.2,.2), Size2 = Vector3.new(.2,.2,.2), Transparency = 0.3, Transparency2 = 1, CFrame = sp2.CFrame * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0,0,0), MoveToPos = nil, RotationX = MRANDOM(-60, 60), RotationY = MRANDOM(-50, 50), RotationZ = MRANDOM(-60, 60), Material = "Neon", Color = Color3.fromRGB(255, 0, 0), SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 80})
until stuck == true
end))
first = true
for i = 0,20 do
Swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.3)*ANGLES(RAD(-64.9+ 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1.3,-0.2,0.3)*ANGLES(RAD(-101.3),RAD(-1.8),RAD(-68.5)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1.4,-0.2,0.3)*ANGLES(RAD(-97.5),RAD(-1.2),RAD(71.5)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1.1,-0.1)*ANGLES(RAD(-24.6),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,-0.2,-0.8)*ANGLES(RAD(-22.1),RAD(84.7),RAD(0)),Alpha)	
end
for i = 1,15 do
WACKYEFFECT2({Time = MRANDOM(80,90), EffectType = "Sphere", Size = VT(1,10,1), Size2 = VT(1.5,15,1.5), Transparency = 0, Transparency2 = 1, CFrame = CF(RootPart.Position) * CF(0,0,-2) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})		
end
WACKYEFFECT2({Time = 120, EffectType = "Sphere", Size = VT(.2,.2,.2)*Torso.Size.Magnitude, Size2 = VT(12,12,12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * CF(0,0,-2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 231917970, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
ApplyAoE(sp1.Position,14,0,0,0,true)
sp1:Destroy()
sp2:Destroy()
stuck = true
for i = 0,26 do
Swait()
  	local Alpha = .2
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.1 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-84.9+ 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1.4,-0.3,-0.3)*ANGLES(RAD(-101.3),RAD(-1.8),RAD(117.1)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1.5,-0.2,-0.2)*ANGLES(RAD(-97.5),RAD(-1.2),RAD(-120.2)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7- 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-0.9,-0.3)*ANGLES(RAD(-4.5),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0.2,-0.6)*ANGLES(RAD(-2),RAD(84.7),RAD(0)),Alpha)	
end
ATTACK = false	
end	

function magic3()
ATTACK = true
local b = false
for i = 0,20 do
	Swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,1.2 + 0.5 * COS(SINE/35),0)*ANGLES(RAD(-82.9+ 7 * SIN(SINE/35)),RAD(8),RAD(-131.9)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5,0)*ANGLES(RAD(-3.9),RAD(-78.7),RAD(3.4)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.9,0.8,0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(170.3)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(-0.2,1,0.1)*ANGLES(RAD(-100.7),RAD(0),RAD(131.4)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7),RAD(84.7),RAD(0)),Alpha)	
end
local sph = CreatePart(3,Effects,"Neon",0,0,"Really red","magic lol",VT(2.31, 2.31, 2.31)*2,true)
MakeForm(sph,"Ball")
sph.CFrame = RightArm.CFrame * CF(0,-3,0)
WACKYEFFECT2({Time = 90, EffectType = "Sphere", Size = VT(.2,.2,.2)*sph.Size.Magnitude, Size2 = VT(5,5,5)*2, Transparency = 0.6, Transparency2 = 1, CFrame = CF(sph.Position) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 203691785, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
coroutine.resume(coroutine.create(function()
repeat
Swait()
sph.CFrame = RightArm.CFrame * CF(0,-3,0)
WACKYEFFECT2({Time = 30, EffectType = "Ring", Size = Vector3.new(.5,.5,.5), Size2 = Vector3.new(.5,.5,.5), Transparency = 0.3, Transparency2 = 1, CFrame = sph.CFrame * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0,0,0), MoveToPos = nil, RotationX = MRANDOM(-60, 60), RotationY = MRANDOM(-50, 50), RotationZ = MRANDOM(-60, 60), Material = "Neon", Color = Color3.fromRGB(255, 0, 0), SoundID = nil, SoundPitch = 1, SoundVolume = 5, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 80})
until b == true
end))
for i = 0,20 do
	Swait()
  	local Alpha = .1
  	RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,1.2 + 0.5 * COS(SINE/35),0.2)*ANGLES(RAD(-67.2+ 7 * SIN(SINE/35)),RAD(8),RAD(-131.9)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.5,0)*ANGLES(RAD(-3.9),RAD(-78.7),RAD(3.4)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.8,-0.2)*ANGLES(RAD(-8.7),RAD(71.8),RAD(-167.5)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(-0.2,1,0.1)*ANGLES(RAD(-100.7),RAD(0),RAD(131.4)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1.1,-0.9,-0.1)*ANGLES(RAD(-88.8),RAD(-77.4),RAD(-68.6)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1.1,-0.4,-0.6)*ANGLES(RAD(49.1),RAD(77.3),RAD(-67.7)),Alpha)	
end
for i = 1,15 do
WACKYEFFECT2({Time = MRANDOM(40,50), EffectType = "Sphere", Size = VT(1,10,1), Size2 = VT(1.5,15,1.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame * CF(1,-3,0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})		
end
WACKYEFFECT2({Time = 40, EffectType = "Sphere", Size = VT(.2,.01,.2)*sph.Size.Magnitude, Size2 = VT(3.5,0.1,3.5)*sph.Size.Magnitude, Transparency = 0.6, Transparency2 = 1, CFrame = RootPart.CFrame * CF(1,-3,0) * ANGLES(RAD(0),RAD(0),RAD(0)) --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 231917970, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
sph:Destroy()
b = true
local hf,hp = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 3.7, Character)
if hf then
coroutine.resume(coroutine.create(function()
for i = 0,6 do
local po = RootPart.CFrame*CF(0,0,-i*22)
local hf2,hp2 = Raycast(po.p+VT(0,1,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 3.7, Character)
if hf then
local ab = CF(hp2) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
WACKYEFFECT2({Time = 120, EffectType = "Sphere", Size = VT(5,10,5), Size2 = VT(30,50,30), Transparency = 0.6, Transparency2 = 1, CFrame = ab --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 231917970, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
WACKYEFFECT2({Time = 120, EffectType = "Sphere", Size = VT(5,10,5), Size2 = VT(15,35,15), Transparency = 0.6, Transparency2 = 1, CFrame = ab --[[* CF(2,-15.3,-3)]], MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(.7,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 35})
WACKYEFFECT2({Time = 50, EffectType = "Wave", Size = VT(5,5,5), Size2 = VT(20.5,2,20.5), Transparency = 0.25, Transparency2 = 1, CFrame = ab, MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = MRANDOM(9,11)/12, SoundVolume = 2})
ApplyAoE(ab.p,15,0,0,0,true)
swait(.1)
end
end		
end))
end
for i = 0,26 do
Swait()
  	local Alpha = .2
  	RootJoint.C0 = RootJoint.C0:lerp(CF(-0.1,-1.2,0.3)*ANGLES(RAD(-108.9),RAD(8),RAD(-131.9)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.9,0.1,0.2)*ANGLES(RAD(-84.3),RAD(-48.5),RAD(-59.8)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1.2,0.1,-0.1)*ANGLES(RAD(-144.2),RAD(53.2),RAD(165.1)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(-0.1,1,0.1)*ANGLES(RAD(-100.7),RAD(0),RAD(144.5)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,0.1,-0.6)*ANGLES(RAD(-10.2),RAD(-86.3),RAD(-9.5)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,-1,-0.9)*ANGLES(RAD(-7.7),RAD(84.7),RAD(-85.1)),Alpha)	
end
ATTACK = false	
end

function tuant()
ATTACK = true
CreateSound(3724749130,Head,8,1,false)
for i = 0,75 do
Swait()
  	local Alpha = .4
  	RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.07 * COS(SINE/5) + 0.5 * COS(SINE/35),0.3)*ANGLES(RAD(-59.8),RAD(0),RAD(-180)),Alpha)
  	LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.4 + 0.1 * SIN(SINE/5),0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(33.8)),Alpha)
  	RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5+ 0.1 * SIN(SINE/5),0)*ANGLES(RAD(-11.3),RAD(74.8),RAD(-20.1)),Alpha)
  	Neck.C0 =Neck.C0:lerp(CF(0,1,-0.1)*ANGLES(RAD(-81),RAD(0),RAD(-180)),Alpha)
  	LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1.2,0.1)*ANGLES(RAD(-29.6),RAD(-86.3),RAD(0)),Alpha)
  	RightHip.C0 = RightHip.C0:lerp(CF(1,-0.4,-0.7)*ANGLES(RAD(-27.1),RAD(84.7),RAD(0)),Alpha)
end
ATTACK = false	
end


--keys
function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
	if shotgunact == true and gunact == true then
	if COMBO == 1 then
	gunsh()
	COMBO = 2
	elseif COMBO == 2 then
	shotgunsh()
	COMBO = 1		
	end
	elseif shotgunact == true and gunact == false then
	shotgunsh()
	elseif shotgunact == false and gunact == true then
	gunsh()		
	end
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "q" and ATTACK == false then
		swshotg()
	end
	
	if Key == "e" and ATTACK == false then
		swgun()
	end

	if Key == "z" and ATTACK == false and shotgunact == false and gunact == false then
	magic1()	
	end
	
	if Key == "x" and ATTACK == false and shotgunact == false and gunact == false then
	magic2()	
	end
	
	if Key == "c" and ATTACK == false and shotgunact == false and gunact == false then
		magic3()	
	end
	
	if Key == "t" and ATTACK == false then
		tuant()
	end
	
	if Key == "m" then
		cs()
	end

	if Key == "]" and ATTACK == false then
		if sick.Parent ~= Character then
			sick = IT("Sound",Torso)
			sick.SoundId = "rbxassetid://"..SONG
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

--if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(0.2),RAD(-84.8),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6,0.1)*ANGLES(RAD(-12.2),RAD(-73.3 ),RAD(-4.7)),.1);end


--loop stuff

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
	SINE = SINE + CHANGE*2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS,NORMAL = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4+Humanoid.HipHeight, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
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
		local Alpha = .1
  		RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-79.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  		if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6 + 0.07 * SIN(SINE/35),0.1)*ANGLES(RAD(0.2 + 5 * COS(SINE/35)),RAD(-84.8 + 2 * SIN(SINE/35)),RAD(-167.4)),Alpha);else LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6 + 0.07 * SIN(SINE/35),0.1)*ANGLES(RAD(-12.2 + 5 * COS(SINE/35)),RAD(-73.3 + 2 * SIN(SINE/35)),RAD(-4.7)),.1);end
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5 + 0.07 * SIN(SINE/35),0)*ANGLES(RAD(-11.3 + 5 * COS(SINE/35)),RAD(74.8 - 2 * SIN(SINE/35)),RAD(2.7)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-100.7 - 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2 - 4 * COS(SINE/35)),RAD(-86.3),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7 - 4 * COS(SINE/35)),RAD(84.7),RAD(0)),Alpha)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
		local Alpha = .1
  		RootJoint.C0 = RootJoint.C0:lerp(CF(0,1.2 + 0.5 * COS(SINE/35),0.1)*ANGLES(RAD(-149.3 + 7 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  		if gunact == true then LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6 + 0.07 * SIN(SINE/35),0.1)*ANGLES(RAD(0.2 + 5 * COS(SINE/35)),RAD(-84.8 + 2 * SIN(SINE/35)),RAD(-167.4)),Alpha)
		else
		LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-1,0.6 + 0.07 * SIN(SINE/35),0.1)*ANGLES(RAD(-12.2 + 5 * COS(SINE/35)),RAD(-73.3 + 2 * SIN(SINE/35)),RAD(-4.7)),.1)
		end
  		RightShoulder.C0 = RightShoulder.C0:lerp(CF(1,0.5 + 0.07 * SIN(SINE/35),0)*ANGLES(RAD(-11.3 + 5 * COS(SINE/35)),RAD(74.8 - 2 * SIN(SINE/35)),RAD(2.7)),Alpha)
  		Neck.C0 =Neck.C0:lerp(CF(0,1,0.1)*ANGLES(RAD(-30.7 - 4 * SIN(SINE/35)),RAD(0),RAD(-180)),Alpha)
  		LeftHip.C0 = LeftHip.C0:lerp(CF(-1,-1,-0.1)*ANGLES(RAD(-10.2 - 4 * COS(SINE/35)),RAD(-86.3),RAD(0)),Alpha)
  		RightHip.C0 = RightHip.C0:lerp(CF(1,0,-0.6)*ANGLES(RAD(-7.7 - 4 * COS(SINE/35)),RAD(84.7),RAD(0)),Alpha)
		end
	end
	if shotgunact == false then
	shotgun.Parent = nil
	fshot.Parent = Character
	else
	shotgun.Parent = Character
	fshot.Parent = nil
	end
	
	if gunact == false then
	Gun.Parent = nil
	fgun.Parent = Character
	else
	Gun.Parent = Character
	fgun.Parent = nil	
	end
	if ATTACK == false then
	sgw.C1 = sgw.C1:lerp(CF(0,0,0),.1)
	gunw.C1 = gunw.C1:lerp(CF(0,0,0),.1)
	end
	
	local CFRAME2 = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(0)) * CF(0, MRANDOM(2,6), MRANDOM(6,10))
	local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),-.6,0).p
	local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -5, 0))).lookVector, 25, Character)
	if MRANDOM(1,15) == 1 then
		WACKYEFFECT2({Time = MRANDOM(50,90), EffectType = "Sphere", Size = VT(.7,.7,.7), Size2 = VT(0,.7,0), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,0,0))*ANGLES(RAD(MRANDOM(0,0)),RAD(MRANDOM(0,0)),RAD(MRANDOM(0,0))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/1.2,0), MRANDOM(-25,25)/12, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0),SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
	end

	
	unanchor()
	Humanoid.MaxHealth = 1e4
	Humanoid.Health = 1e4
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://"..SONG
	sick.Looped = true
	if SONG == 383141805 then
	sick.Pitch = .88
	else
	sick.Pitch = 1
	end
	sick.Volume = 3
	sick.Playing = true
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
