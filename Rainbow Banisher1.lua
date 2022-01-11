 --////===============================\\\\--
---/-------------------------------------\---
---|             Made By Auto            |---
---|       Helped Something by XDDAB     |---   
---\-------------------------------------/---
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
local hat = Align(char['Cartoony Rainbow Rifle'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(35),math.rad(70),60)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
warn("Netless Activated!")

local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

Player = game:GetService("Players").LocalPlayer
lplr = game:GetService("Players").LocalPlayer
Character = game.Workspace.non
Mouse = Player:GetMouse()
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Humanoid = Character.Humanoid
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
it = Instance.new
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
vt = Vector3.new
cf = CFrame.new


--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//
local SONG1 = 3522311451
local SONG2 = 3522311451
local BanishMode = 1
local KeepPlayersOutfit = false
local SIZE = 1
local Player_Size = 1
local Jump = 50
local Animation_Speed = 3
local lastbeat = 0
local lastloud = 0
local AntiBullet = true
local PlaybackSound = 0
local Speed = 45
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local faceShadingFolder = IT("Model", Character)
faceShadingFolder.Name = "Face Shading Folder"
local Weapon = IT("Model")
Weapon.Name = "Finding Lost"
local Karma = IT("Model")
Weapon.Name = "Finding Lost"
local KarmaWeapon = IT("Model")
Weapon.Name = "Finding Lost"
local KarmaWeapon2 = IT("Model")
Weapon.Name = "Finding Lost"
local HornFolder = IT("Model", Character)
HornFolder.Name = "Horns"
local BannedSkids = {}
local TOBANISH = {}
local TAIL = {}
local Hue = 0
local qui = Enum.EasingStyle.Quint
local io = Enum.EasingDirection.InOut
local char = game.Workspace.non
local t = char:FindFirstChild("Torso")
local ls = t:FindFirstChild("Left Shoulder")
local rh = t:FindFirstChild("Right Hip")
local lh = t:FindFirstChild("Left Hip")
local hum = char:FindFirstChildOfClass("Humanoid")
local tweens = game:GetService("TweenService")
local rs = t:FindFirstChild("Right Shoulder")
local rut = char.HumanoidRootPart
local rutj = rut.RootJoint
local t = char:FindFirstChild("Torso")
local nec = t.Neck
local MAINRUINCOLOR = BrickColor.Black()
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local targetted = nil
local EQUIPPED = false
local HOLD = false
local furmode = false
local sitting = false
local COMBO = 1
local Rooted = false
local SINE = 0
local rad = math.rad
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local RunService = game:GetService("RunService")
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
pcall(function()
	Character.Animate.Parent = nil
end)
local UNANCHOR = true

function Rainbowify(name)
    coroutine.wrap(function()
	while RunService.Stepped:Wait() do
 		for a = 1,360,1 do wait(.0000000000000000000000001)
 			name.Color = Color3.fromHSV(a/360,1,1)
		end
    end
    end)()
end

function RainbowifyText(name)
    coroutine.wrap(function()
	while RunService.Stepped:Wait() do
 		for a = 1,360,1 do wait(.0000000000000000000000001)
 			name.TextColor3 = Color3.fromHSV(a/360,1,1) 			
			name.TextStrokeColor3 = Color3.fromHSV(a/360,1,1)
		end
    end
    end)()
end

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold
	}

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(7,35,3,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 10000
naeeym2.Adornee = Head
naeeym2.Name = "Name2"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Rainbow King"
tecks2.Font = "Arcade"
tecks2.TextSize = 35
tecks2.TextStrokeTransparency = 0
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
tecks2.TextColor3 = Color3.fromRGB()
coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					tecks2.Font = FONTS[MRANDOM(1, #FONTS)]
					tecks2.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
				end
			end))
spawn(function() RainbowifyText(tecks2) end)

--//=================================\\
--\\=================================//

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//
--//=================================\\
--\\=================================//


--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//
NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local tlerp = function(part,tablee,leinght,easingstyle,easingdirec)
pcall(function()
    local info = TweenInfo.new(
    leinght,
    easingstyle,
    easingdirec,
    0,
    false,
    0
    )
    local lerp = tweens:Create(part,info,tablee)
    lerp:Play()
end)
end

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
		game:service("RunService").Stepped:wait()
	else
		for i = 1, NUMBER do
			game:service("RunService").Stepped:wait()
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

function hasarrived(whom)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("ARRIVAL")~= nil then
				v.PlayerGui:FindFirstChild("ARRIVAL"):destroy()
			end
			local droppingFrame = false
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "ARRIVAL"
			local mainFrame = Instance.new("Frame", scrg)
			mainFrame.Name = "MainFrame"
			mainFrame.BackgroundTransparency = 0
			mainFrame.BorderSizePixel = 5
			mainFrame.Size = UDim2.new(1, 0, -0.013, 100)
			mainFrame.Position = UDim2.new(0, 0, 0.365, 0)
			local TextFrame = Instance.new("TextLabel",mainFrame)
			TextFrame.Name = "TextFrame"
			TextFrame.Font = "Arcade"
			TextFrame.Text = ""
			TextFrame.TextScaled = true
			TextFrame.TextSize = 14
			TextFrame.TextStrokeTransparency = 0
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(1, 0, 0, 92)
			TextFrame.Position = UDim2.new(0, 0, 0, 0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					mainFrame.BackgroundColor3 = C3(0,0,0)
					mainFrame.BorderColor3 = C3(1, 1, 1)
					if(not droppingFrame)then
						mainFrame.Rotation = 0 - 2 * COS(SINE / 24)
					end
					TextFrame.TextColor3 = C3(0,0,0)
					TextFrame.Font = FONTS[MRANDOM(1, #FONTS)]
					TextFrame.TextStrokeColor3 = C3(1, 1, 1)
					TextFrame.TextStrokeTransparency = 0
				end
			end))
			for i = 1,string.len(whom),1 do
				TextFrame.Text = string.sub(whom,1,i)
				wait(0.2)
			end
			wait(2)
			droppingFrame = true
			mainFrame.Rotation = 0
			local vinc2 = 1
			for i = 0, 99 do
				Swait()
				vinc2 = vinc2 + 0.25
				mainFrame.Position = mainFrame.Position + UDim2.new(0,0,0.0005*vinc2,0)
			end
			scrg:Destroy()
		end))
	end
end

function hasarrivedB(whom)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("ARRIVAL")~= nil then
				v.PlayerGui:FindFirstChild("ARRIVAL"):destroy()
			end
			local droppingFrame = false
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "ARRIVAL"
			local mainFrame = Instance.new("Frame", scrg)
			mainFrame.Name = "MainFrame"
			mainFrame.BackgroundTransparency = 1
			mainFrame.BorderSizePixel = 0
			mainFrame.Size = UDim2.new(1, 0, -0.013, 100)
			mainFrame.Position = UDim2.new(0, 0, 0.365, 0)
			local TextFrame = Instance.new("TextLabel",mainFrame)
			TextFrame.Name = "TextFrame"
			TextFrame.Font = "Arcade"
			TextFrame.Text = ""
			TextFrame.TextScaled = true
			TextFrame.TextSize = 9
			TextFrame.TextStrokeTransparency = 1
			TextFrame.BackgroundTransparency = 1
			TextFrame.TextColor3 = C3(1,1,1)
			TextFrame.TextStrokeColor3 = C3(0, 0, 0)
			TextFrame.Size = UDim2.new(1, 0, 0, 92)
			TextFrame.Position = UDim2.new(0, 0, 0, 0)
			spawn(function() RainbowifyText(TextFrame) end)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					mainFrame.BackgroundColor3 = C3(0,0,0)
					mainFrame.BorderColor3 = C3(0, 0, 0)
					if(not droppingFrame)then
						mainFrame.Rotation = 0 - 2 * COS(SINE / 24)
					end
					TextFrame.TextStrokeTransparency = 0
				end
			end))
			for i = 1,string.len(whom),1 do
				TextFrame.Text = string.sub(whom,1,i)
				wait(0.2)
			end
			wait(2)
			droppingFrame = true
			mainFrame.Rotation = 0
			local vinc2 = 1
			for i = 0, 99 do
				Swait()
				vinc2 = vinc2 + 0.25
				mainFrame.Position = mainFrame.Position + UDim2.new(0,0,0.0005*vinc2,0)
			end
			scrg:Destroy()
		end))
	end
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

function turnto(position)
    RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

function CreateWave(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, COLOR, "Effect", VT(0,0,0))
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
    mesh.Scale = SIZE
    mesh.Offset = VT(0,0,-SIZE.X/8)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			wave.Color = C3(0,0,0)
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
            end
            wave.Transparency = wave.Transparency + (0.5/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end

function CreateSwirl(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, COLOR, "Effect", VT(0,0,0))
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
    mesh.Scale = SIZE
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			wave.Color = C3(0,0,0)
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
            end
            wave.Transparency = wave.Transparency + (0.5/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end

function killnearest(position,range,maxstrength,direction)
    for i,v in ipairs(workspace:GetChildren()) do
    local body = v:GetChildren()
        for part = 1, #body do
            if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
                if(body[part].Position - position).Magnitude < range then
                    if v.ClassName == "Model" then
                        --v:BreakJoints()
                    end
                    local POS = position
                    coroutine.resume(coroutine.create(function()
                        body[part].Anchored = true
                        body[part].Parent = Effects
                        --body[part].CanCollide = true
                        local SIZE = body[part].Size
                        body[part].Material = "Neon"
                        CFuncs["Sound"].Create("rbxassetid://62339698", workspace, 10, 0.3)
                        for i = 1, 75 do
                            Swait()
                            body[part].Color = C3(255/255, 255/255, 255/255)
                            body[part].Size = VT(SIZE.X+MRANDOM(-2,2),SIZE.Y+MRANDOM(-2,2),SIZE.Z+MRANDOM(-2,2))
                        end
                        coroutine.resume(coroutine.create(function()
                            while true do
                                Swait()
                                body[part].Color = C3(255/255, 255/255, 255/255)
                                body[part].Size = VT(SIZE.X+MRANDOM(-2,2),SIZE.Y+MRANDOM(-2,2),SIZE.Z+MRANDOM(-2,2))
                            end
                        end))
                        body[part].Anchored = false
                        body[part].Velocity = direction.lookVector*maxstrength
                    end))
                end
            end
        end
        if v.ClassName == "Part" then
            if v.Anchored == false and (v.Position - position).Magnitude < range then
                local POS = position
                coroutine.resume(coroutine.create(function()
                    v.Anchored = true
                    v.Parent = Effects
                    local SIZE = v.Size
                    v.Material = "Neon"
                    CreateSound("952306739", v, 2, MRANDOM(7, 12) / 10)
                    for i = 1, 75 do
                        Swait()
                        v.Color = C3(MRANDOM(0,100)/100,MRANDOM(0,100)/100,MRANDOM(0,100)/100)
                        v.Size = VT(SIZE.X+MRANDOM(-2,2),SIZE.Y+MRANDOM(-2,2),SIZE.Z+MRANDOM(-2,2))
                    end
                    coroutine.resume(coroutine.create(function()
                        while true do
                            Swait()
                            v.Color = C3(MRANDOM(0,100)/100,MRANDOM(0,100)/100,MRANDOM(0,100)/100)
                            v.Size = VT(SIZE.X+MRANDOM(-2,2),SIZE.Y+MRANDOM(-2,2),SIZE.Z+MRANDOM(-2,2))
                        end
                    end))
                    v.Anchored = false
                    v.Velocity = direction.lookVector*maxstrength
                end))
            end
        end
    end
end
 

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, COLOR, "Effect", VT(1,1,1), true)
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "Sphere"
    mesh.Scale = SIZE
    mesh.Offset = VT(0,0,0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
			wave.Color = C3(0,0,0)
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end

function SpliceSlice(KIND, SIZE, WAIT, CFRAME, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1, 1, 1), true)
	local mesh
	if KIND == "Base" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0, SIZE / 10, SIZE / 10), VT(0, 0, 0))
	elseif KIND == "Thin" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662586858", "", VT(SIZE / 10, 0, SIZE / 10), VT(0, 0, 0))
	elseif KIND == "Round" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662585058", "", VT(SIZE / 10, 0, SIZE / 10), VT(0, 0, 0))
	end
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW / 10
			wave.Color = C3(0,0,0)
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function AddChildrenToTable(FROM, PARENT, DIST, TABLE)
	for _, c in pairs(PARENT:GetChildren()) do
		if c.ClassName == "Model" then
			if c ~= Character and c:FindFirstChildOfClass("Humanoid") and (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")) then
				local HUMANOID = c:FindFirstChildOfClass("Humanoid")
				local TORSO = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
				if DIST > (TORSO.Position - FROM).Magnitude then
					table.insert(TABLE, c)
				end
				AddChildrenToTable(FROM, c, DIST, TABLE)
			elseif c.ClassName == "Folder" then
				AddChildrenToTable(FROM, c, DIST, TABLE)
			end
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
 
function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, COLOR, "Effect", VT(1,1,1), true)
    local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale * GROW
			wave.Color = C3(0,0,0)
            wave.Transparency = wave.Transparency + (0.5/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end

function CreateWave2(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, COLOR, "Effect", VT(0,0,0))
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
    mesh.Scale = SIZE
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
			wave.Color = C3(0,0,0)
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
            end
            wave.Transparency = wave.Transparency + (0.5/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
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

Debris = game:GetService("Debris")

function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25+c.Transparency
				FADER:BreakJoints()
				FADER.Material = "Neon"
				if FADER.Name == "Head" then
					FADER:ClearAllChildren()
					FADER.Size = VT(1,1,1)
				end
				FADER.CanCollide = false
			end
		end
		local TRANS = 0.75/TIMER
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

function Chunks(PART)
	for i = 1, MRANDOM(3,5) do
		coroutine.resume(coroutine.create(function()
			local CHUNK = CreatePart(3, workspace, PART.Material, 0, PART.Transparency, PART.BrickColor, "Chunk", VT(0.3,0.3,0.3)*MRANDOM(7,13)/10, false)
			CHUNK.CFrame = PART.CFrame*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			local CFRAME = PART.CFrame*CF(MRANDOM(-4,4)/2,MRANDOM(-4,4)/2,-6)
			CHUNK.Velocity = CF(PART.Position,CFRAME.p).lookVector*MRANDOM(15,65)
			wait(0.1)
			--CHUNK.CanCollide = true
			wait(MRANDOM(15,25)/5)
			for i = 1, 25 do
				Swait()
				CHUNK.Transparency = CHUNK.Transparency + 1/25
			end
			CHUNK:remove()
		end))
	end
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local function ToMesh(Part)
	local Mesh=Instance.new("SpecialMesh",Part)
	if Part.Shape==Enum.PartType.Block then Mesh.MeshType="Brick"elseif Part.Shape==Enum.PartType.Ball then Mesh.MeshType="Sphere"elseif Part.Shape==Enum.PartType.Cylinder then Mesh.MeshType="Cylinder"end
	Mesh.Scale=Part.Size*20 Part.Size=Vector3.new()
	return Mesh
end
local function GHK(char)
local Players=game:service("Players")
local soidk=Players:FindFirstChild(tostring(char))
if soidk~=nil then if soidk.Character and soidk~=Player and tostring(soidk)~="CKBackup"then-- print("hit : "..tostring(soidk))
	if soidk.Character:FindFirstChild("HumanoidRootPart")then
	local p=Instance.new("Part")p.Size=Vector3.new(8,8,8)p.Material="Neon"p.Color=Color3.new(1)local m=ToMesh(p)p.Anchored=true p.CanCollide=false p.CFrame=soidk.Character.HumanoidRootPart.CFrame p.Parent=workspace m.MeshType="Sphere"
	p.CFrame=p.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),0)spawn(function()for i=0,1,.05 do if p.Parent then m.Scale=m.Scale+Vector3.new(25,25,25)p.Transparency=i swait()end end p:Destroy()end)
	for i=1,3 do local p=Instance.new("Part")p.Size=Vector3.new(8,8,8)p.Material="Neon"p.Color=Color3.new(1)local m=ToMesh(p)p.Anchored=true p.CanCollide=false p.CFrame=soidk.Character.HumanoidRootPart.CFrame p.Parent=workspace m.MeshType="Sphere"
	p.CFrame=p.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),0)spawn(function()for i=0,1,.01 do if p.Parent then m.Scale=m.Scale+Vector3.new(25,-1,-1)p.Transparency=i swait()end end p:Destroy()end)	
	end
	end spawn(function()swait(20)soidk.Character:Destroy()end)
end
end return soidk end

function dmg(dude,bloods,isfal)--(Position, Direction, Range, Ignore)
if dude.Name ~= Character then
dude:FindFirstChildOfClass("Humanoid").PlatformStand = true
if dude:FindFirstChild("Head")then local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)end
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"local spd=20 local spr=math.random(20,30)if not isfal then GHK(dude)end
if dude:FindFirstChild("Head")then
if bloods~=nil then spr=bloods end
for i = 1, spr do
--[[local blo = Instance.new("Part",workspace) --classic
blo.Size = Vector3.new(.6,.2,.6)
blo.Material = "SmoothPlastic"
blo.BrickColor = BrickColor.new("Crimson")
--blo.Position = dude.Head.Position
blo.CFrame = dude.Head.CFrame
game:GetService("Debris"):AddItem(blo,30)]]
local bs=Instance.new("Part")bs.CFrame=dude.Head.CFrame bs.Size=Vector3.new()bs.CanCollide=false bs.Shape="Ball"bs.BrickColor=BrickColor.new("Crimson")
local m=Instance.new("SpecialMesh",bs)m.MeshType="Sphere"m.Scale=Vector3.new(.5,.5,.5)*20
bs.Velocity=Vector3.new(math.random(-spd,spd),math.random(30,50),math.random(-spd,spd))bs.Parent=workspace
spawn(function()swait(3)local hit=nil bs.Name="Blood"
for i=1,100 do
if hit==nil then
swait()local h,p =workspace:FindPartOnRayWithIgnoreList(Ray.new(bs.CFrame.p,(bs.CFrame.p-bs.CFrame*CFrame.new(0,0,1).p).unit*2),{Character,dude,bs},false,true) --rayCast(bs.CFrame.p,bs.CFrame.lookVector,3,bs)
if h~=nil then hit=p end
end
end
if hit==nil then hit=bs.Position end
bs:Destroy()local bl=Instance.new("Part",workspace)bl.Anchored=true bl.CanCollide=false bl.CFrame=CFrame.new(hit)bl.Color=bs.Color bl.Material="Neon"
bl.Size=Vector3.new(1,.1,1)local sm=Instance.new("SpecialMesh",bl)sm.MeshType="Sphere"swait(250)for i=0,1,.05 do if bl.Parent then bl.Transparency=i swait()end end bl:Destroy()
end)
end
end
end
end

function mdmg(Part, Magnitude,Spread)--, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    --local buddy
	for _, c in pairs(workspace:children()) do
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("HumanoidRootPart")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
				if c.Name ~= Character then
				if c.Name ~= "tomonaoboys" then
			local asd = Instance.new("ParticleEmitter",c.HumanoidRootPart)
			asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			asd.LightEmission = .1
			asd.Size = NumberSequence.new(0.2)
			asd.Texture = "http://www.roblox.com/asset/?ID=771221224"
			asd.ZOffset = .9
			asd.Acceleration = Vector3.new(0, -5, 0)
			asd.LockedToPart = false
			asd.EmissionDirection = "Back"
			asd.Lifetime = NumberRange.new(1, 2)
			asd.Rate = 1000
			asd.Rotation = NumberRange.new(-10000, 10000)
			asd.RotSpeed = NumberRange.new(-100, 100)
			asd.Speed = NumberRange.new(6)
			asd.VelocitySpread = 1000000
			asd.Enabled=true
					--Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
					if Spread==nil then Spread=1 end
					dmg(c,Spread)
					coroutine.wrap(function()
					wait(.2)
					asd.Enabled = false
					wait(2)
					asd:Remove()
					end)()
				       else		
   		Effects.Sphere.Create(BrickColor.new("Bright red"), c.HumanoidRootPart.CFrame, 30, 30, 30, .5, .5, .5, 0.04)

					end
				end
			end
			end
		end
		if c:FindFirstChild("Torso")then
			if (Part.Position-c.Torso.Position).magnitude<=Magnitude then
			GHK(c)
			end
		end
	end
end

function sphereMK(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
	local chaosmode = true
	hum = char.Humanoid
	local storehumanoidWS = 16
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
			if chaosmode == true then
				rng.BrickColor = BrickColor.Black()
			end
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function sphere(bonuspeed, type, pos, scale, value, color)
    local chaosmode = true
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
			if chaosmode == true then
				rng.BrickColor = BrickColor.Black()
			end
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

local function Create(Type)
    local NewInstance = Instance.new(Type)
    return function(Properties)
        for i,v in pairs(Properties) do
            NewInstance[i] = v
        end
        return NewInstance
    end
end

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
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

	["LongSound"] = {
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
				game:GetService("Debris"):AddItem(S, 60)
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

	CreateTemplate = {
	
	};
}

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = MRANDOM(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
Swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,RAD(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,RAD(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", Effects)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
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
        rngm.MeshType = "Brick"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
Swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
	local type = type
	local rng = Instance.new("Part", Effects)
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
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1*value
		scaler2b = 1*value2
		scaler2c = 1*value3
	elseif type == "Divide" then
		scaler2 = 1/value
		scaler2b = 1/value2
		scaler2c = 1/value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			Swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
				scaler2b = scaler2b - 0.01*value/bonuspeed
				scaler2c = scaler2c - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
				scaler2b = scaler2b - 0.01/value*bonuspeed
				scaler2c = scaler2c - 0.01/value*bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end

function ManualDamage(Humanoid,Damage,TorsoPart)
	if true then return end
end

function ManualAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
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

function dmj(dude)
local targetted
if dude.Name ~= Character then
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
--[[local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"]]--
local ds = coroutine.wrap(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Name = "DEMINISHED"
CFuncs["Sound"].Create("rbxassetid://763718160", v, 0.75, 0.6)
CFuncs["Sound"].Create("rbxassetid://782353443", v, 1, 0.5)
for i = 0, 1 do
sphere2(1,"Add",v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,10,-0.01,BrickColor.new("Really black"),BrickColor.new("Really black").Color)
end
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.25, 0.215)
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
print("yes")
end
if v:IsA("Humanoid") then
print("yes")
end
if v:IsA("CharacterMesh") then
print("yes")
end
if v:IsA("Model") then
print("yes")
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
print("yes")
end
end
coroutine.resume(coroutine.create(function()
v.Material = "Neon"
v.CanCollide = false
v.Anchored = false
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 1
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(BrickColor.new("Really black").Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
        local sbs = Instance.new("BodyPosition", v)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
        sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2))
v.Color = BrickColor.new("Really black").Color
coroutine.resume(coroutine.create(function()
for i = 0, 4 do
slash(math.random(10,50)/10,3,true,"Round","Add","Out",v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.0025,0.01),math.random(10,100)/2500,BrickColor.new("White"))
end
block(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,BrickColor.new("Really black"),BrickColor.new("Really black").Color)
CFuncs["Sound"].Create("rbxassetid://782353117", v, 0.25, 0.7)
CFuncs["Sound"].Create("rbxassetid://1192402877", workspace, 3, 0.25)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
wait(4)
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
swait()
end
end))
end))
end))
end
end
end))
end)
ds()
end
end


local function FindHumanoid(Part)local humanoid=nil if Part.Parent then if Part.Parent~=Player.Character and Part.Parent:FindFirstChildOfClass("Humanoid")~=nil then humanoid=Part.Parent:FindFirstChildOfClass("Humanoid")else if Part.Parent.Parent then if Part.Parent.Parent:FindFirstChildOfClass("Humanoid")and Part.Parent.Parent~=Player.Character then humanoid=Part.Parent.Parent:FindFirstChildOfClass("Humanoid")end end end end if humanoid==Humanoid then humanoid=nil end return humanoid end  
function CreateBeam(Parent,isReversed)local p=Instance.new("Beam",Parent)local a0=Instance.new("Attachment",Parent)local a1=Instance.new("Attachment",Parent)if isReversed then p.Attachment0=a1 p.Attachment1=a0 else p.Attachment0=a0 p.Attachment1=a1 end return a0,a1,p end
function CTE(Part)Part.Size=Vector3.new()Part.Transparency=1 Part.CanCollide=false Part.Anchored=true local j=Instance.new("BodyVelocity",Part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=Vector3.new(0,0,0)end
function RingE(pos,siz,tim,dsiz,seg,wid,z,col,w)local IDK=.7
	local p=Instance.new("Part",workspace)if col==nil then col=ColorSequence.new(Color3.new())end if z==nil then z=0 end
	CTE(p)p.CFrame=pos
	local a0,a1,b=CreateBeam(p)a0.Position=Vector3.new(0,0,-dsiz)a1.Position=-a0.Position b.Texture="rbxassetid://1251856844"b.Color=col
	local b2=Instance.new("Beam",b.Parent)b2.Attachment0=a1 b2.Attachment1=a0 b2.Texture="rbxassetid://1251856844"b2.Color=col
	b.CurveSize0=math.abs(a0.Position.Z)*2 *IDK b.CurveSize1=math.abs(a0.Position.Z)*2 *IDK b2.CurveSize0=-math.abs(a0.Position.Z)*2 *IDK b2.CurveSize1=math.abs(a0.Position.Z)*2 *IDK
	b.Segments=seg b2.Segments=seg b.ZOffset=z b2.ZOffset=z b.Width0=wid b.Width1=wid b2.Width0=wid b2.Width1=wid spawn(function()
	for i=1,tim do if p.Parent then
		a0.Position=a0.Position-Vector3.new(0,0,siz)a1.Position=a1.Position+Vector3.new(0,0,siz)b.CurveSize0=(a1.Position.Z*2)*IDK b.CurveSize1=-(a1.Position.Z*2)*IDK
		b2.CurveSize0=-(a1.Position.Z*2)*IDK b2.CurveSize1=(a1.Position.Z*2)*IDK
		if w~=nil then b.Width0=b.Width0+w b.Width1=b.Width0 b2.Width0=b.Width0 b2.Width1=b.Width0 end b.Transparency=NumberSequence.new(i/tim)b2.Transparency=NumberSequence.new(i/tim)swait()
		end end p:Destroy()
	end)
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
				--DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

--//=================================\\
--||	    GUIS AND MISC
--\\=================================//

local SKILLTEXTCOLOR = C3(1,0,0)
local SKILLFONT = "Antique"
local SKILLTEXTSIZE = 7

local ATTACKS = {"Z - Neckless","C - Brave Speed","G - Slashed","V - Dirtface"}

local GUIS = {}
local WEAPONGUI = IT("ScreenGui")
WEAPONGUI.Name = "[M U R D E R]"
for i = 1, #ATTACKS do
	local SKILLFRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.74, 0, 0.97-(0.02*i), 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill Frame")
	local SKILLTEXT = CreateLabel(SKILLFRAME, "["..ATTACKS[i].."]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Skill text")
	SKILLTEXT.TextXAlignment = "Right"
	table.insert(GUIS,SKILLTEXT)
end

local sick = IT("Sound", Torso)
sick.SoundId = "rbxassetid://"..SONG1
sick.TimePosition = 0
sick.Looped = true
sick.Pitch = 1
sick.Volume = 10
sick:Play()

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
	end
end

warn("All your friends are dead.")
warn("You're the only one left...")
warn("YOU NEED TO AVENGE THEM =)")

--//=================================\\
--||			DAMAGING
--\\=================================//

function ApplyDamage(Humanoid,Damage,OneShot)
	Damage = Damage * DAMAGEMULTIPLIER
	local DEAD = false
	if DEAD == true then
		local PARTS = {}
		for index, CHILD in pairs(Humanoid.Parent:GetChildren()) do
			if CHILD:IsA("BasePart") then
				table.insert(PARTS,CHILD)
			end
		end
		coroutine.resume(coroutine.create(function()
			wait(2)
			repeat
				Swait()
				local PIECE = nil
				if MRANDOM(1,5) == 1 then
					for E = 1, #PARTS do
						if MRANDOM(1,5) == 1 then
							PIECE = PARTS[E]
							table.remove(PARTS,E)
							break
						end
					end
				end
				if PIECE ~= nil then
					if PIECE.Name == "Head" then
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z), Size2 = (VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z))*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0.4,0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					else
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = PIECE.Size, Size2 = PIECE.Size*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0.4,0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					end
					PIECE:Remove()
				end
			until #PARTS == 0
		end))
	end
end

--//=================================\\
--||         WEAPON CREATION
--\\=================================//
function Rainbowify(HighRanksCrest)
    while RunService.Stepped:Wait() do
        for hue = 0, 1, 0.06 do
            HighRanksCrest.Color = Color3.fromHSV(hue,1,1)
            wait(0.001)
        end
    end
end
local HighRanksCrest = Instance.new("Part", Character)
HighRanksCrest.Name = "HighRanksCrest"
HighRanksCrest.CanCollide = false
HighRanksCrest.BrickColor = BrickColor.new("Institutional white")
HighRanksCrest.Transparency = 0
HighRanksCrest.Material = "Neon"
HighRanksCrest.Size = Vector3.new(1, 1, 2)
--HighRanksCrest.TopSurface = Enum.SurfaceType.Neon
--HighRanksCrest.BottomSurface = Enum.SurfaceType.Neon
 
local Weld = Instance.new("Weld", HighRanksCrest)
Weld.Part0 = Torso
Weld.Part1 = HighRanksCrest
Weld.C1 = CFrame.new(0, -2.5, -1.75)
Weld.C0 = CFrame.Angles(math.rad(0),math.rad(0),0)
 
local M2 = Instance.new("SpecialMesh")
M2.Parent = HighRanksCrest
M2.MeshId = "http://www.roblox.com/asset/?id=4758429875"
--M2.Material = Enum.Material.Neon
M2.TextureId = "http://www.roblox.com/asset/?id=4773903172"
M2.Scale = Vector3.new(1.5, 1.5, 1.5)
spawn(function() Rainbowify(HighRanksCrest) end)

local outer = Instance.new("Part")
outer.Locked = true
outer.CanCollide = false
outer.Shape = Enum.PartType.Cylinder
outer.Size = Vector3.new(0.05, 1, 1)
outer.Material = Enum.Material.Neon
outer.Color = Color3.new(0, 0, 0)
outer.Parent = Character
spawn(function() Rainbowify(outer) end)

local outerm = Instance.new("SpecialMesh")
outerm.MeshType = Enum.MeshType.Cylinder
outerm.Parent = outer

local weld1 = Instance.new("Weld")
weld1.Part0 = outer
weld1.Part1 = Character["HumanoidRootPart"]
weld1.Parent = outer
weld1.C0 = CFrame.new(-2.95, 0, 0) * CFrame.Angles(0, 0, 1.571)
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		outerm.Scale = Vector3.new(0, sick.PlaybackLoudness / 25, sick.PlaybackLoudness / 25)
	end
end))

RightArm.Material = Enum.Material.Plastic -- this script and below rainbowifies the body parts
spawn(function() Rainbowify(RightArm) end)

LeftArm.Material = Enum.Material.Plastic
spawn(function() Rainbowify(LeftArm) end)

Torso.Material = Enum.Material.Neon
spawn(function() Rainbowify(Torso) end)

LeftLeg.Material = Enum.Material.Plastic
spawn(function() Rainbowify(LeftLeg) end)

RightLeg.Material = Enum.Material.Plastic
spawn(function() Rainbowify(RightLeg) end)

Head.Material = Enum.Material.Plastic
spawn(function() Rainbowify(Head) end)

RightArm.Material = Enum.Material.ForceField -- this script and below rainbowifies the body parts
spawn(function() Rainbowify(RightArm) end)

LeftArm.Material = Enum.Material.ForceField
spawn(function() Rainbowify(LeftArm) end)

Torso.Material = Enum.Material.Neon
spawn(function() Rainbowify(Torso) end)

LeftLeg.Material = Enum.Material.ForceField
spawn(function() Rainbowify(LeftLeg) end)

RightLeg.Material = Enum.Material.ForceField
spawn(function() Rainbowify(RightLeg) end)

Head.Material = Enum.Material.ForceField
spawn(function() Rainbowify(Head) end)

function Weld(part0,part1,c0,c1)
	local weld = IT("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF()
	weld.C1 = c1 or CF()
	return weld
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

if Head:FindFirstChildOfClass("Decal") then
	Head:FindFirstChildOfClass("Decal").Texture = "rbxassetid://398671601"
else
	local newFace = Instance.new("Decal", Head)
	newFace.Parent = Head
	newFace.Face = "Front"
	newFace.Texture = "rbxassetid://398671601"
end 

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local all, last = {}, nil
ArmourParts = {}
NeonParts = {}
function scan(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts, v)
      end
      if last then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last, v
        w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
        w.Parent = last
      end
      table.insert(all, v)
      last = v
    end
    scan(v)
  end
end

for i, v in pairs(ArmourParts) do
     v.BrickColor = BrickColor.new("Black")
	 v.Material = Enum.Material.Neon
		end
for i, v in pairs(NeonParts) do
     v.BrickColor = BrickColor.Black()
      	end

for i = 1, 10 do
	local FACE = CreatePart(3, faceShadingFolder, "Neon", 0, 0+(i-1)/10.2, "Dark stone grey", "FaceGradient", VT(1.01,0.65,1.01),false)
	FACE.Color = C3(0,0,0)
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	CreateWeldOrSnapOrMotor("Weld", FACE, Head, FACE, CF(0,0.28-(i-1)/30,0), CF(0, 0, 0))
	spawn(function() Rainbowify(FACE) end)
end

local PRT = CreatePart(3, Character, "Fabric", 0, 0, "Really white", "Scarf", VT(1,1,1),false)
CreateMesh("SpecialMesh", PRT, "FileMesh", "99856331", "", VT(1.1,1,1.1), VT(0,0,0))
PRT.Color = C3(1,1,1)

local PRT = CreatePart(3, Character, "Fabric", 0, 0, "Really white", "Scarf", VT(1,1,1),false)
PRT.Color = C3(1,1,1)
spawn(function() Rainbowify(PRT) end)
CreateWeldOrSnapOrMotor("Weld", Torso, Torso, PRT, CF(0.05,0.4,-0.1) * ANGLES(RAD(-3), RAD(0), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", PRT, "FileMesh", "99856331", "", VT(1.1,1,1.1), VT(0,0,0))
local Eye = CreatePart(3, Character, "Neon", 0, 0, "Really white", "Eye", VT(0.6,0.1,1)/2,false)
MakeForm(Eye,"Ball")
spawn(function() Rainbowify(Eye) end)
CreateWeldOrSnapOrMotor("Weld", Eye, Head, Eye, CF(0,0.2,0) * ANGLES(RAD(0), RAD(-18), RAD(15)), CF(0, 0, 0.4))
Eye:Destroy()
local Eye = CreatePart(3, Character, "Neon", 0, 0, "Really white", "Eye", VT(0.6,0.1,1)/2,false)
MakeForm(Eye,"Ball")
spawn(function() Rainbowify(Eye) end)
Eye:Destroy()

local Particle =IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"
Particle.Color = ColorSequence.new(C3(1,0,0),C3(0.4,0,0))

--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
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
	PRTCL.Parent = Parent
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

-- IdleWeapon(Karma) --
local Handle = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
spawn(function() Rainbowify(Handle) end)
local RightArmGrasp = CreateWeldOrSnapOrMotor("Weld", Handle, RightArm, Handle, CF(0,-1, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0.21, 0))
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
for i = 1, 8 do
	local Piece = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
	spawn(function() Rainbowify(Piece) end)
end
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "ForceField", 0, 0, "Mid gray", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
spawn(function() Rainbowify(Part) end)
local LASTPART = Handle
for i = 1, 10 do
	if LASTPART == Handle then
		local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		spawn(function() Rainbowify(Part) end)
	else
		local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
		spawn(function() Rainbowify(Part) end)
	end
end

local Barrel = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.15,4,0.15),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Barrel, CF(0, -0.6, 1.85) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Barrel) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0.25,2,0.25),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, -0.2, 0), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0,0.1,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, 0.945, 0.1) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
spawn(function() Rainbowify(Part) end)
local Hole = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Eye", VT(0.125,0,0.125),false)
MakeForm(Hole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Hole, CF(0, 2, 0), CF(0, 0, 0))
spawn(function() Rainbowify(Hole) end)
local Part = CreatePart(3, Weapon, "Neon", 0, 0, "Mid gray", "Part", VT(0,0,0),false)
spawn(function() Rainbowify(Part) end)
local GEARWELD = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 4665707228, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
local Part = CreatePart(3, Weapon, "Neon", 0, 0.5, "Mid gray", "Eye", VT(0,0,0),false)
spawn(function() Rainbowify(Part) end)
local GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 4758429875, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(0), RAD(sick.PlaybackLoudness/60 + 0.05))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(0), RAD(-sick.PlaybackLoudness/60 - 0.05))
	end
end))

local LASTPART = Torso
for i = 1, 45 do
	local MATH = 1 - i / 60
	if LASTPART == Torso then
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "New Yeller", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, -0.75, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		spawn(function() Rainbowify(Tail) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" or BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Tail.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "2" then
		Tail.Color = BrickColor
		elseif BanishMode == "3" or BanishMode == "3" then
		Tail.Color = BrickColor.Random().Color
		elseif BanishMode == "324" or BanishMode == '324' then
		Tail.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "666" then
		Tail.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == '555' or BanishMode == '555' or BanishMode == '555' then
		Tail.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == '1555' or BanishMode == '1555' or BanishMode == '1555' then
		Tail.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "900" then
		Tail.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == '777' or BanishMode == '777' then
		Tail.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == '1444' then
		Tail.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == '1444' then
		Tail.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == '777' or BanishMode == '777' or BanishMode == '777' then
		Tail.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
		table.insert(TAIL, WLD)
   else
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "New Yeller", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, Tail.Size.Y / 2, 0) * ANGLES(RAD(-1.2), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		spawn(function() Rainbowify(Tail) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" or BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Tail.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "2" then
		Tail.Color = BrickColor
		elseif BanishMode == "3" or BanishMode == "3" then
		Tail.Color = BrickColor.Random().Color
		elseif BanishMode == "324" or BanishMode == '324' then
		Tail.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "666" then
		Tail.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == '555' or BanishMode == '555' or BanishMode == '555' then
		Tail.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == '1555' or BanishMode == '1555' or BanishMode == '1555' then
		Tail.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "900" then
		Tail.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == '777' or BanishMode == '777' then
		Tail.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == '1444' then
		Tail.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == '1444' then
		Tail.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == '777' or BanishMode == '777' or BanishMode == '777' then
		Tail.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
		table.insert(TAIL, WLD)
	end
end

ParticleEmitter({Speed = 0.2, Drag = 0, Size1 = 0.1, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.5, Parent = Hole, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})
--ParticleEmitter({Speed = 0.5, Drag = 0, Size1 = 0.2, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.7, Parent = Dangle, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})

local LASTPART = Head
for i = 1, 40 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
        spawn(function() Rainbowify(Horn) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Relaxed" then
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Insanity" or BanishMode == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif BanishMode == "Vis" or BanishMode == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == 'nebula' or BanishMode == 'edgialization' or BanishMode == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == 'Rev' or BanishMode == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == 'uncolored' or BanishMode == 'unknown' or BanishMode == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
        spawn(function() Rainbowify(Horn) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Relaxed" then
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Insanity" or BanishMode == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif BanishMode == "Vis" or BanishMode == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == 'nebula' or BanishMode == 'edgialization' or BanishMode == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == 'Rev' or BanishMode == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == 'uncolored' or BanishMode == 'unknown' or BanishMode == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	end
end
local LASTPART = Head
for i = 1, 40 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
        spawn(function() Rainbowify(Horn) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Relaxed" then
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Insanity" or BanishMode == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif BanishMode == "Vis" or BanishMode == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == 'nebula' or BanishMode == 'edgialization' or BanishMode == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == 'Rev' or BanishMode == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == 'uncolored' or BanishMode == 'unknown' or BanishMode == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
        spawn(function() Rainbowify(Horn) end)
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if BanishMode == "1" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif BanishMode == "Relaxed" then
		Horn.Color = BrickColor.Random().color
		elseif BanishMode == "Insanity" or BanishMode == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif BanishMode == "Vis" or BanishMode == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif BanishMode == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif BanishMode == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif BanishMode == 'nebula' or BanishMode == 'edgialization' or BanishMode == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif BanishMode == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif BanishMode == 'Rev' or BanishMode == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif BanishMode == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif BanishMode == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif BanishMode == 'uncolored' or BanishMode == 'unknown' or BanishMode == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	end
end
	
for _, b in pairs(Karma:GetChildren()) do
	if b.ClassName == "Part" then
		b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

for _, b in pairs(Weapon:GetChildren()) do
	if b.ClassName == "Part" then
		b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(KarmaWeapon2:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Neon"
				c.Color = BrickColor.Black().Color
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Material = "Neon"
				c.Color = C3(0,0,0)
				spawn(function() Rainbowify(c) end)
			end
		end
		for _, c in pairs(KarmaWeapon:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Neon"
				c.Color = BrickColor.Black().Color
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Material = "Neon"
				c.Color = C3(0,0,0)
				spawn(function() Rainbowify(c) end)
			end
		end
	end
end))

Weapon.Parent = Character


--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://342199418"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.9,0,0)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://342199418"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(.9,0,0)

function CreatePartC(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, COLOR3, NAME, SIZE, ANCHOR)
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
    NEWPART.Color = COLOR3
    NEWPART.Name = NAME
    NEWPART.Size = SIZE
    NEWPART.Position = Torso.Position
    NEWPART.Material = MATERIAL
    NEWPART:BreakJoints()
    NEWPART.Parent = PARENT
    return NEWPART
end


function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", VT(0,0,0))
	spawn(function() Rainbowify(TRAIL) end)
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.01
		end
		wait(4.2)
		TRAIL:remove()
	end))
end



function printbye(Name)
	local MESSAGES = {"GET DUNK ON!!!!!!, ", "IDIOT, ", "STUPID, ", "Chill, ", "BEGONE, ", "STAAAAAAAAAAFFFFFFFFFFF, ", "Try it again, ", "Welcome to my special hecc, ", "Dont come back please, ", "You are bad ","Don't try that ever again, "}
	chatfunc(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end

function ApplyAoE(POSITION,RANGE,ISBANISH)
    if true then return end
end

function BanishBullet()
	if Weapon.Parent == Character then
	ATTACK = true
	Rooted = false
	for i=0, 0.01, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		CreateSound(904440937, Character, 10, 1, false)
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
	end
end

function BanBullet()
	if Weapon.Parent == Character then
	ATTACK = true
	Rooted = false
	for i=0, 0.01, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		CreateSound(904440937, Character, 10, 1, false)
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
	end
end

function RespawnBullet()
    if Weapon.Parent == Character then
	ATTACK = true
	Rooted = false
	for i=0, 0.01, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		CreateSound(664046210, Character, 10, 1, false)
		for i=0, 0.01, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
	end
end


function Rush()
    local ORIGIN = RootPart.Position
    CreateWave2(VT(1,1,1),65,CF(RootPart.Position)*CF(0,-3,0),false,2,"Pearl",VT(0.2,1,0.2))
    CreateWave2(VT(1,1,1),65,CF(RootPart.Position)*CF(0,-3,0),false,2,"Pearl",VT(0.2,1,0.2))
    spawn(function() Rainbowify(ORIGIN) end)
    local SOUNDPART = CreatePart(3, Effects, "Neon", 0, 1, "Pearl", "Sound", VT(0,0,0))
    SOUNDPART.CFrame = RootPart.CFrame
    Debris:AddItem(SOUNDPART,5)
    CreateSound("1295446488", SOUNDPART, 2, 1)
    RootPart.CFrame = CF(Mouse.Hit.p+VT(0,3,0),VT(ORIGIN.X,Mouse.Hit.p.Y,ORIGIN.Z))
    Swait()
    CreateWave2(VT(1,1,1),65,CF(RootPart.Position)*CF(0,-3,0),false,2,"Pearl",VT(0.2,1,0.2))
    CreateWave2(VT(1,1,1),65,CF(RootPart.Position)*CF(0,-3,0),false,2,"Pearl",VT(0.2,1,0.2))
    spawn(function() Rainbowify(SOUNDPART) end)
    local SOUNDPART = CreatePart(3, Effects, "Neon", 0, 1, "Pearl", "Sound", VT(0,0,0))
    SOUNDPART.CFrame = RootPart.CFrame
    Debris:AddItem(SOUNDPART,5)
    CreateSound("1295446488", SOUNDPART, 2, 1)
    if MRANDOM(1,8) == 1 then
        ATTACK = true
        Rooted = true
        local FRUITSTABLE = {
            {MeshId = "16190555", TextureId = "16190577", Color = BrickColor.Black()},
            {MeshId = "119574562", TextureId = "64374853", Color = BrickColor.Black()},
            {MeshId = "24394186", TextureId = "24394178", Color = BrickColor.Black()}
        }
        local FRUIT = FRUITSTABLE[MRANDOM(1, #FRUITSTABLE)]
        local FRUITMODEL = CreatePart(3, Effects, "Neon", 0, 0, FRUIT.Color, "Fruit", VT(0,0,0),false)
        CreateMesh("SpecialMesh", FRUITMODEL, "FileMesh", FRUIT.MeshId, FRUIT.TextureId, VT(2,2,2), VT(0,0,0))
        FRUITMODEL.CFrame = RightArm.CFrame * CF(0,-1.5,0)
        weldBetween(RightArm,FRUITMODEL)
        for i=0, 4, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(190), RAD(-145)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        end
        CreateSound("414517163", RightArm, 10, MRANDOM(7, 12) / 10)
        FRUITMODEL:remove()
        for i = 1, 15 do
            Slice(0.1,15,RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(MRANDOM(-180,180)), RAD(MRANDOM(-180,180)), RAD(MRANDOM(-180,180))),FRUIT.Color, 1 + MRANDOM(1,10)/15)
        end
        for i=0, 0.5, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(190), RAD(-175)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        end
        ATTACK = false
        Rooted = false
    end
end

function CreateParta(parent,transparency,reflectance,material,brickcolor)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = parent
	p.Size = Vector3.new(0.1,0.1,0.1)
	p.Transparency = transparency
	p.Reflectance = reflectance
	p.CanCollide = false
	p.Locked = true
	p.BrickColor = brickcolor
	p.Material = material
	return p
end

function FireArc(Part, ToLocation, AmountOfTime, Height, DoesCourontine)
	if DoesCourontine == false then
		local Direction = CF(Part.Position, ToLocation)
		local Distance = (Part.Position - ToLocation).magnitude
		for i = 1, AmountOfTime do
			Swait()
			Part.CFrame = Direction * CF(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
			Direction = Part.CFrame
		end
		Part:remove()
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CF(Part.Position, ToLocation)
			local Distance = (Part.Position - ToLocation).magnitude
			for i = 1, AmountOfTime do
				Swait()
				Part.CFrame = Direction * CF(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
				Direction = Part.CFrame
			end
			Part:remove()
		end))
	end
end

 function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,35,0,18)
	Bill.StudsOffset = Vector3.new(0,4.5,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Arcade"
	Hehe.TextSize = 45
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			wait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
		end
	end))
	spawn(function() RainbowifyText(Hehe) end)
	for i = 1,string.len(text),1 do
		wait()
		Hehe.Text = string.sub(text,1,i)
	end
	wait(3)
	for i = 0, 5, .025 do
		wait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end


function warnedpeople(text)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Spinny")~= nil then
				v.PlayerGui:FindFirstChild("Spinny"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Spinny"
			local wobble = Instance.new("Frame",scrg)
			wobble.Name = "Wobble"
			wobble.BackgroundTransparency = 0.5
			wobble.Size = UDim2.new(1.1,0,1.1,0)
			wobble.Position = UDim2.new(-0.08,0,0.943,0)
			local wobble2 = Instance.new("Frame",scrg)
			wobble2.Name = "wobble2"
			wobble2.BackgroundTransparency = 0.5
			wobble2.Size = UDim2.new(1.1,0,0.09,0)
			wobble2.Position = UDim2.new(-0.08,0,0.878,0)
			local Visuals = Instance.new("Frame",scrg)
			Visuals.Name = "Visuals"
			Visuals.BackgroundTransparency = 0.3
			Visuals.Size = UDim2.new(0,100,0,100)
			Visuals.Position = UDim2.new(0.462,0,0.826,0)
			local glow = Instance.new("ImageLabel",scrg)
			glow.Name = "glow"
			glow.BackgroundTransparency = 1
			glow.ImageTransparency = 0
			glow.Image = "rbxassetid://2344870656"
			glow.Size = UDim2.new(0,0,0,0)
			glow.Position = UDim2.new(0.026,0,-0.235,0)
			local Visuals2 = Instance.new("Frame",scrg)
			Visuals2.Name = "Visuals2"
			Visuals2.BackgroundTransparency = 0.3
			Visuals2.Size = UDim2.new(0,50,0,50)
			Visuals2.Position = UDim2.new(0.48,0,0.867,0)
			local TextFrame = Instance.new("TextLabel",scrg)
			TextFrame.Name = "Farmer"
			TextFrame.Font = "Arcade"
			TextFrame.Text = text
			TextFrame.TextScaled = true
			TextFrame.TextSize = 60
			TextFrame.TextColor3 = C3(1,1,1)
			TextFrame.TextStrokeColor3 = C3(0, 0, 0)
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(0.8,0,0,42)
			TextFrame.Position = UDim2.new(0.11,0,0.867,0)
			spawn(function() RainbowifyText(TextFrame) end)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					TextFrame.TextStrokeTransparency = 0
					TextFrame.Rotation = 0 + MRANDOM(-3, 3)
					TextFrame.Position = UDim2.new(0.11, 0 + MRANDOM(-3, 3), 0.867, 0 + MRANDOM(-3, 3))
					TextFrame.Font = Enum.Font.Arcade
					glow.ImageColor3 = C3(0, 0, 0)
					wobble.Rotation = 0 - 2 * COS(SINE / 24)
					wobble2.Rotation = 0 - 2 * COS(SINE / 30)
					wobble2.BackgroundColor3 = C3(0,0,0)
					wobble2.BorderColor3 = C3(0,0,0)
					wobble2.BorderSizePixel = 4
					Visuals.Rotation = Visuals.Rotation + MRANDOM(-5, 5)
					Visuals2.Rotation = Visuals2.Rotation + MRANDOM(-10, 10)
					Visuals.BackgroundColor3 = C3(0,0,0)
					Visuals.BorderColor3 = C3(0,0,0)
					Visuals2.BackgroundColor3 = C3(0,0,0)
					Visuals2.BorderColor3 = C3(0,0,0)
					wobble.BackgroundColor3 = C3(0,0,0)
					wobble.BorderColor3 = C3(0,0,0)
					wobble.BorderSizePixel = 5
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i = 0, 205 do
					Swait()
				end
				scrg:Destroy()
			end))
		end))
	end
end

function warnedpeople2(text)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Spinny")~= nil then
				v.PlayerGui:FindFirstChild("Spinny"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Spinny"
			local wobble = Instance.new("Frame",scrg)
			wobble.Name = "Wobble"
			wobble.BackgroundTransparency = 0.5
			wobble.Size = UDim2.new(1.1,0,1.1,0)
			wobble.Position = UDim2.new(-0.08,0,0.943,0)
			local wobble2 = Instance.new("Frame",scrg)
			wobble2.Name = "wobble2"
			wobble2.BackgroundTransparency = 0.5
			wobble2.Size = UDim2.new(1.1,0,0.09,0)
			wobble2.Position = UDim2.new(-0.08,0,0.878,0)
			local Visuals = Instance.new("Frame",scrg)
			Visuals.Name = "Visuals"
			Visuals.BackgroundTransparency = 0.3
			Visuals.Size = UDim2.new(0,100,0,100)
			Visuals.Position = UDim2.new(0.462,0,0.826,0)
			local glow = Instance.new("ImageLabel",scrg)
			glow.Name = "glow"
			glow.BackgroundTransparency = 1
			glow.ImageTransparency = 0
			glow.Image = "rbxassetid://2344870656"
			glow.Size = UDim2.new(0,0,0,0)
			glow.Position = UDim2.new(0.026,0,-0.235,0)
			local Visuals2 = Instance.new("Frame",scrg)
			Visuals2.Name = "Visuals2"
			Visuals2.BackgroundTransparency = 0.3
			Visuals2.Size = UDim2.new(0,50,0,50)
			Visuals2.Position = UDim2.new(0.48,0,0.867,0)
			local TextFrame = Instance.new("TextLabel",scrg)
			TextFrame.Name = "Farmer"
			TextFrame.Font = "Arcade"
			TextFrame.Text = text
			TextFrame.TextScaled = true
			TextFrame.TextSize = 60
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(0.8,0,0,42)
			TextFrame.Position = UDim2.new(0.11,0,0.867,0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					TextFrame.TextColor3 = C3(1,0,0)
					TextFrame.TextStrokeColor3 = C3(0, 0, 0)
					TextFrame.TextStrokeTransparency = 0
					TextFrame.Rotation = 0 + MRANDOM(-3, 3)
					TextFrame.Position = UDim2.new(0.11, 0 + MRANDOM(-3, 3), 0.867, 0 + MRANDOM(-3, 3))
					TextFrame.Font = Enum.Font.Fantasy
					glow.ImageColor3 = C3(0, 0, 0)
					wobble.Rotation = 0 - 2 * COS(SINE / 24)
					wobble2.Rotation = 0 - 2 * COS(SINE / 30)
					wobble2.BackgroundColor3 = C3(0,0,0)
					wobble2.BorderColor3 = C3(1,0,0)
					wobble2.BorderSizePixel = 5
					Visuals.Rotation = Visuals.Rotation + MRANDOM(-5, 5)
					Visuals2.Rotation = Visuals2.Rotation + MRANDOM(-10, 10)
					Visuals.BackgroundColor3 = C3(0,0,0)
					Visuals.BorderColor3 = C3(1,0,0)
					Visuals2.BackgroundColor3 = C3(0,0,0)
					Visuals2.BorderColor3 = C3(1,0,0)
					wobble.BackgroundColor3 = C3(0,0,0)
					wobble.BorderColor3 = C3(1,0,0)
					wobble.BorderSizePixel = 5
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i = 0, 205 do
					Swait()
				end
				scrg:Destroy()
			end))
		end))
	end
end

function warnedpeopleB(text)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Spinny")~= nil then
				v.PlayerGui:FindFirstChild("Spinny"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Spinny"
			local wobble = Instance.new("Frame",scrg)
			wobble.Name = "Wobble"
			wobble.BackgroundTransparency = 1
			wobble.Size = UDim2.new(1.1,0,1.1,0)
			wobble.Position = UDim2.new(-0.08,0,0.943,0)
			local wobble2 = Instance.new("Frame",scrg)
			wobble2.Name = "wobble2"
			wobble2.BackgroundTransparency = 1
			wobble2.Size = UDim2.new(1.1,0,0.09,0)
			wobble2.Position = UDim2.new(-0.08,0,0.878,0)
			local Visuals = Instance.new("Frame",scrg)
			Visuals.Name = "Visuals"
			Visuals.BackgroundTransparency = 1
			Visuals.Size = UDim2.new(0,100,0,100)
			Visuals.Position = UDim2.new(0.462,0,0.826,0)
			local glow = Instance.new("ImageLabel",scrg)
			glow.Name = "glow"
			glow.BackgroundTransparency = 1
			glow.ImageTransparency = 0
			glow.Image = "rbxassetid://2344870656"
			glow.Size = UDim2.new(0,0,0,0)
			glow.Position = UDim2.new(0.026,0,-0.235,0)
			local Visuals2 = Instance.new("Frame",scrg)
			Visuals2.Name = "Visuals2"
			Visuals2.BackgroundTransparency = 1
			Visuals2.Size = UDim2.new(0,50,0,50)
			Visuals2.Position = UDim2.new(0.48,0,0.867,0)
			local TextFrame = Instance.new("TextLabel",scrg)
			TextFrame.Name = "Farmer"
			TextFrame.Font = "Arcade"
			TextFrame.Text = text
			TextFrame.TextScaled = true
			TextFrame.TextSize = 60
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(0.8,0,0,42)
			TextFrame.Position = UDim2.new(0.11,0,0.867,0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					TextFrame.TextColor3 = C3(1,1,1)
					TextFrame.TextStrokeColor3 = C3(0, 0, 0)
					TextFrame.TextStrokeTransparency = 0
					TextFrame.Rotation = 0 + MRANDOM(-3, 3)
					TextFrame.Position = UDim2.new(0.11, 0 + MRANDOM(-3, 3), 0.867, 0 + MRANDOM(-3, 3))
					TextFrame.Font = Enum.Font.Arcade
					glow.ImageColor3 = C3(0, 0, 0)
					wobble.Rotation = 0 - 2 * COS(SINE / 24)
					wobble2.Rotation = 0 - 2 * COS(SINE / 30)
					wobble2.BackgroundColor3 = C3(0,0,0)
					wobble2.BorderColor3 = C3(0,0,0)
					wobble2.BorderSizePixel = 0
					Visuals.Rotation = Visuals.Rotation + MRANDOM(-5, 5)
					Visuals2.Rotation = Visuals2.Rotation + MRANDOM(-10, 10)
					Visuals.BackgroundColor3 = C3(0,0,0)
					Visuals.BorderColor3 = C3(0,0,0)
					Visuals2.BackgroundColor3 = C3(0,0,0)
					Visuals2.BorderColor3 = C3(0,0,0)
					wobble.BackgroundColor3 = C3(0,0,0)
					wobble.BorderColor3 = C3(0,0,0)
					wobble.BorderSizePixel = 0
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i = 0, 205 do
					Swait()
				end
				scrg:Destroy()
			end))
		end))
	end
end


--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function KeyDown(Key)
	KEYHOLD = true
	if Key == "f" and ATTACK == false then
		TOBANISH = {}
		BannedSkids = {}
		warnedpeople("I SPARE YOU.")
	end
	
    if Key == "e" and ATTACK == false then
		BanishBullet()
    end

    if Key == "r" and ATTACK == false then
		BanBullet()
    end

    if Key == "t" and ATTACK == false then
		RespawnBullet()
    end
	
	if Key == "y" and ATTACK == false then
		SONG1 = 3164389653
		sick.TimePosition = 0
		Speed = 16
		Weapon.Parent = Character
		BanishMode = 666
		Jump = 50
		tecks2.Text = "C H A O S"
	end
	
	if Key == "j" and ATTACK == false then
		SONG1 = 3522311451
		sick.TimePosition = 0
		Speed = 16
		Weapon.Parent = Character
		BanishMode = 1
		Jump = 50
		tecks2.Text = "Rainbow King"
	end
	
	if Key == "p" and ATTACK == false then
		chatfunc("aa")
        SONG1 = 1076825525
        sick.TimePosition = 0
		Speed = 12
		Jump = 40
		Weapon.Parent = nil
		BanishMode = 324
		tecks2.Text = "Visulizer meme"
	end
	
	if Key == "u" and ATTACK == false then
		chatfunc("eRrOr")
		SONG1 = 1252518733
		sick.TimePosition = 0
		Speed = 45
		Weapon.Parent = Character
		BanishMode = 3
		Jump = 50
		tecks2.Text = "Demonvirus"
	end
	
	if Key == "m" and ATTACK == false and BanishMode == 3 then
		SONG1 = 803373182
		BanishMode = 1444
		Weapon.Parent = nil
		Speed = 0
		Jump = 0
		sick.TimePosition = 0
		tecks2.Text = "????????"
		chatfunc("You REALLY THINK ME IDIOT?..")
		wait(3)
		chatfunc("YOU IDIOT!")
		Speed = 30
		Weapon.Parent = Character
		BanishMode = 900
		Jump = 100
		tecks2.Text = "Nayer"
	end
	
	if Key == "h" and ATTACK == false then 
		SONG1 = 4565857495
		sick.TimePosition = 0
		Speed = 27
		Weapon.Parent = Character
		BanishMode = 2
		Jump = 50
		tecks2.Text = "BYE BYE"
	end
	
	if Key == "m" and ATTACK == false and BanishMode == 2 then
		SONG1 = 644312180
		BanishMode = 1444
		Speed = 0
		Jump = 0
		Weapon.Parent = nil
		wait(1)
		chatfunc(".....")
		wait(1)
		chatfunc("I AM........")
		wait(2)
		chatfunc("THE.....")
		wait(3)
		chatfunc("MAN.......")	
		wait(2)
		chatfunc("BEHIND......")
		wait(2.5)
		chatfunc("I AM THE MAN BEHIND SLAUGHTER....")
		wait(3)
		warnedpeople("..")
		tecks2.Text = "THE PURPLE"
		SONG1 = 579860060
		sick.TimePosition = 0
		Speed = 30
		Jump = 150
		Weapon.Parent = Character
		BanishMode = 1555
	end
	
	if Key == "m" and ATTACK == false and BanishMode == 666 then
		SONG1 = 1846379515
		Speed = 0
		Jump = 0
		BanishMode = 1444
		Weapon.Parent = nil
	    sick.TimePosition = 36.9
		wait(2)
	chatfunc(".")
		wait(2)
	chatfunc(".")
		wait(2)
	chatfunc(".")
		wait(2)
	chatfunc(".")
		wait(3)
	chatfunc("YOU CAN'T KILL ME!")
	Weapon.Parent = Character
	BanishMode = 555
	Speed = 45
	Jump = 100
	tecks2.Text = "THE K A R M A"
	end
	
	if Key == "1" and ATTACK == false then
		SONG1 = 4635529033
		Speed = 0
		Jump = 0
		Weapon.Parent = nil
		BanishMode = nil
		game.Lighting.FogColor = Color3.fromRGB(0,0,0)
		game.Lighting.FogEnd = 0
		game.Lighting.TimeOfDay = 0
		warnedpeople("You know If A Meme Came")
		wait(3.5)
		warnedpeople(".")
		wait(1.5)
		warnedpeople("...")
		wait(1.5)
		warnedpeople("MINECRAFT IS HERE")
		wait(1.5)
		warnedpeople("MINECRAFT LET'S GET THE MEME STARTED")
		wait(2.7)
		SONG1 = 0
		hasarrivedB("YEAH MEME MINECRAFT STARTED")
		wait(9)
		game.Lighting.FogEnd = 100000
		game.Lighting.TimeOfDay = 14
		SONG1 = 4635529033
		BanishMode = 777
		Weapon.Parent = Character
		Speed = 25
		Jump = 75
		tecks2.Text = "M I N E C R A F T"
	end
	
    if Key == "2" and ATTACK == false then
		SONG1 = 512529104
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 123
		Jump = 50
		tecks2.Text = "Mizared Ink"
	end
	   if Key == "3" and ATTACK == false then
		SONG1 = 543303041
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 222
		Jump = 50
		tecks2.Text = "Tackery"
	end
	if Key == "l" and ATTACK == false then
		SONG1 = 803936798
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 232
		Jump = 50
		tecks2.Text = "DEMONIC LORD"
	end
	if Key == "k" and ATTACK == false then
		SONG1 = 424026286
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 233
		Jump = 50
		tecks2.Text = "Chara?"
	end
	if Key == "4" and ATTACK == false then
		SONG1 = 580288014
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 211
		Jump = 50
		tecks2.Text = "榜样罗布"
	end
	if Key == "5" and ATTACK == false then
		SONG1 = 2962282638
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 215
		Jump = 50
		tecks2.Text = "Castler"
	end
	if Key == "g" and ATTACK == false then
		SONG1 = 3018974408
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 335
		Jump = 50
		tecks2.Text = "In The END"
	end	
	if Key == "6" and ATTACK == false then
		SONG1 = 1138145518
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 210
		Jump = 50
		tecks2.Text = "INSANITY"
	end
	if Key == "7" and ATTACK == false then
		SONG1 = 598987226
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 111
		Jump = 50
		tecks2.Text = "Aderdyz"
	end
	if Key == "8" and ATTACK == false then
		SONG1 = 1117664978
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 133
		Jump = 50
		tecks2.Text = "Striking The Demon"
	end
	if Key == "9" and ATTACK == false then
		SONG1 = 989524429
		Speed = 0
		Jump = 0
		BanishMode = 1
		Weapon.Parent = nil
	    sick.TimePosition = 36.9
	chatfunc(".")
		wait(2)
	chatfunc("....")
		wait(1)
	warnedpeople("I TOLD YOU")
         wait(5)
	Weapon.Parent = Character
	BanishMode = 116
	Speed = 45
	Jump = 100
	tecks2.Text = "Slient"
	end
   if Key == "0" and ATTACK == false then
		SONG1 = 2371543268
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 128
		Jump = 50
		tecks2.Text = "Rainbow Killer"
	end

	if Key == "b" and ATTACK == false and BanishMode == 128 then
		SONG1 = 1287900759
		sick.TimePosition = 0
		Speed = 20
		Weapon.Parent = Character
		BanishMode = 821
		Jump = 50
		tecks2.Text = "Rainbow Abeus"
	end
	
    if Key == "q" and ATTACK == false then
		Rush()
    end
end

function KeyUp(Key)
	KEYHOLD = false
end
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
for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(3.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		end
	end
--//=================================\\
--||          Compatibility
--\\=================================//

local sine = SINE
local Sine = SINE
local angles = ANGLES
local RH = RightHip
local LH = LeftHip
local LW = LeftShoulder
local RW = RightShoulder
local head = Head
local RootCF = ROOTC0
local necko = NECKC0
local NK = Neck
local RJ = RootJoint
local LS = LeftShoulder
local RS = RightShoulder
local clerp = Clerp
local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0
local CFA = CFrame.Angles
local CFN = CFrame.new
--//=================================\\
--\\=================================//


local ActualVelocity = Vector3.new(0,0,0)
local clerp = Clerp

coroutine.wrap(function()
while true do
	Swait()
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(3.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		end
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (ActualVelocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = ActualVelocity.y
	if lplr == Player then
		TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
		TORSOVERTICALVELOCITY = RootPart.Velocity.y
	end
	Player_Size = 1
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
		    RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false and BanishMode == 1 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 3 then
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(0 - 55 * SIN(SINE / 0.5)), RAD(0 - 22 * SIN(SINE / 1)), RAD(-15)), 1 / Animation_Speed)
					    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(MRANDOM(-25,25)), RAD(0), RAD(0)), 1 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 2 then
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0*SIZE, 0*SIZE, 0*SIZE + ((1*SIZE) - 1)) * ANGLES(RAD(20 + MRANDOM(-24,24)), RAD(0 + MRANDOM(-24,24)), RAD(0 + MRANDOM(-24,24))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(180 + MRANDOM(-24,24)), RAD(0 + MRANDOM(-24,24)), RAD(-25 + MRANDOM(-24,24))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(180 + MRANDOM(-24,24)), RAD(0 + MRANDOM(-24,24)), RAD(25 + MRANDOM(-24,24))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(85 + MRANDOM(-24,24)), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-85 + MRANDOM(-24,24)), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 666 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(-25 - 3 * SIN(SINE / 12)), RAD(0), RAD(-25)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(23 - 3 * SIN(SINE / 12)), RAD(0), RAD(30)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1*SIZE, 0.2*SIZE, -0.5*SIZE) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE - 0.05*SIZE * COS(SINE / 12), -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 777 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0 - 360.45 * COS(SINE / 2))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5*SIZE, 0.5*SIZE, 0.02*SIZE) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0.02*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 1 / Animation_Speed)					
		elseif ATTACK == false and BanishMode == 555 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0*SIZE + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(0 - 10 * COS(SINE / 13) + MRANDOM(-6,6))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.4*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(180 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(-35 + MRANDOM(-6,6))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(-15 + MRANDOM(-6,6))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 1 / Animation_Speed)									
		elseif ATTACK == false and BanishMode == 1444 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 1555 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(-25 - 3 * SIN(SINE / 12)), RAD(0), RAD(-25)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(23 - 3 * SIN(SINE / 12)), RAD(0), RAD(30)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-40), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE - 0.05*SIZE * COS(SINE / 12), -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 900 then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 15)), RAD(0), RAD(20)), 3 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0- 0.1 * COS(SINE / 30), 0 + 0.1 * COS(SINE / 15)) * ANGLES(RAD(0+ 5 * COS(SINE / 30)), RAD(0), RAD(-20)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0= Clerp(LeftShoulder.C0,cf(-0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(SINE / 28))),.1)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-4+2.5 * COS(SINE / 30)), RAD(0), RAD(0+ 5 * COS(SINE / 30))), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 15), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-4-2.5 * COS(SINE / 30)), RAD(0), RAD(0- 5 * COS(SINE / 30))), 1 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 324 then
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0.05*SIZE * COS(SINE / 12), 0*SIZE, 0*SIZE + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(10 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-40), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE + 0.05 * COS(SINE / 12), -1*SIZE - 0.05 * SIN(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE + 0.05 * COS(SINE / 12), -1*SIZE - 0.05 * SIN(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        elseif ATTACK == false and BanishMode == 123 then
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(5 - 4 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35*SIZE, 0.65*SIZE, 0*SIZE) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.5*SIZE) * ANGLES(RAD(-35), RAD(25 - 2.5 * SIN(SINE / 12)), RAD(55 - 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
 elseif ATTACK == false and BanishMode == 222 then
          RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(-17.58)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.2*SIZE) - 1)) * ANGLES(RAD(25 - 4 * SIN(SINE / 12)), RAD(0), RAD(15 - 3)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.9*SIZE, 0.5*SIZE + 0.05*SIZE * SIN(SINE / 12), -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(9.71), RAD(3.14 - -2.5 * SIN(SINE / 12)), RAD(0.2 - -2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
elseif ATTACK == false and BanishMode == 232 then
          Neck.C0=Clerp(Neck.C0,necko*angles(math.rad(30*SIZE + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),1)
RH.C0=Clerp(RH.C0,cf(1*SIZE,-0.05*SIZE,-0.75*SIZE)*angles(math.rad(0),math.rad(90),math.rad(30))*angles(math.rad(0),math.rad(0),math.rad(30)),.1)
LH.C0=Clerp(LH.C0,cf(-1*SIZE,-0.5*SIZE,-0.25*SIZE)*angles(math.rad(30),math.rad(-99),math.rad(-30))*angles(math.rad(-21),math.rad(0),math.rad(-30)),.1)
RootJoint.C0=Clerp(RootJoint.C0,RootCF*cf(0,0*SIZE,-1.9 + 0.1 *SIZE* math.cos(sine / 28))*angles(math.rad(20 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
Neck.C0=Clerp(Neck.C0,necko*angles(math.rad(55),math.rad(0),math.rad(0)),.1)
RW.C0=Clerp(RW.C0,cf(0.75*SIZE,0.5*SIZE,-0.25*SIZE)*angles(math.rad(140),math.rad(0),math.rad(-20 + 2.5 * math.cos(sine / 28))),.1)
LW.C0=Clerp(LW.C0,cf(-0.75*SIZE,0.5*SIZE,-0.25*SIZE)*angles(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(sine / 28))),.1)
elseif ATTACK == false and BanishMode == 233 then
         RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160 + 4 * COS(SINE / 62)), RAD(0), RAD(15 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-15 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-17 + 9.4 * COS(SINE / 26)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-22 + 10.8 * COS(SINE / 32)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
elseif ATTACK == false and BanishMode == 211 then
		   WACKYEFFECT({EffectType = "Sphere", Size = VT(3,3,3)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RightHip.C0 = Clerp(RightHip.C0,CF(1,-0.5 - 0.05 * COS(SINE / 22),-0.5)*ANGLES(RAD(0),RAD(90),RAD(0))*ANGLES(RAD(-3),RAD(0 - 1 * COS(SINE / 56)),RAD(0 - 2 * COS(SINE / 32))), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0,CF(-1,-1 - 0.05 * COS(SINE / 22),0)*ANGLES(RAD(0),RAD(-90),RAD(0))*ANGLES(RAD(-3),RAD(0 - 1 * COS(SINE / 56)),RAD(0 + 2 * COS(SINE / 32))), 0.2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
		 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(.95, 0.5, 0.3) * ANGLES(RAD(-20), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 , 0.5 , 0 ) * ANGLES(RAD(0 +180*SIN(sick.PlaybackLoudness/300)), RAD(0), RAD(0 )) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 215 then
		   WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(6,6,6), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(4,4,4), Size2 = VT(0,5,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),-2.5,MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({Time = 30, EffectType = "Crystal", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.3 * COS(SINE / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(-43)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(43)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 335 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0-5*SIN(sine/24)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0-5*SIN(sine/24)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0-5*SIN(sine/24)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
        elseif ATTACK == false and BanishMode == 210 then
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed*3)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)
			if MRANDOM(1,7) == 1 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
			end					
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.35, 0) * ANGLES(RAD(90), RAD(25), RAD(45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, -0.1 * Player_Size) * ANGLES(RAD(95), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3 - 0.1 * COS(SINE / 24), -1 - 0.1 * COS(SINE / 24)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.2, 0.2 - 0.1 * COS(SINE / 24), -0.4 - 0.1 * COS(SINE / 24)) * ANGLES(RAD(45), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
       elseif ATTACK == false and BanishMode == 111 then
		 RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(-17.58)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.2*SIZE) - 1)) * ANGLES(RAD(25 - 4 * SIN(SINE / 12)), RAD(0), RAD(15 - 3)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.9*SIZE, 0.5*SIZE + 0.05*SIZE * SIN(SINE / 12), -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(9.71), RAD(3.14 - -2.5 * SIN(SINE / 12)), RAD(0.2 - -2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 133 then
		 	RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), 0, 0+sick.PlaybackLoudness/1800) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(0 - 10 * COS(SINE / 20) + MRANDOM(-6,6))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.55, 0) * ANGLES(RAD(180 - 5 * COS(SINE / 15)), RAD(0 - 5*SIN(sick.PlaybackLoudness/500)), RAD(-5 + sick.PlaybackLoudness/545)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.45, 0.5, 0) * ANGLES(RAD(5 + MRANDOM(-6,6)), RAD(0 + MRANDOM(-6,6)), RAD(-15 + MRANDOM(-6,6))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), -1-sick.PlaybackLoudness/1800, -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 - 0.05 * COS(SINE / 20) + 0.05 * SIN(SINE / 20), -1-sick.PlaybackLoudness/1800, -0.03) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 1 / Animation_Speed)
   elseif ATTACK == false and BanishMode == 116 then
		 	RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0 + 2.5 *COS(SINE / 12)), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
   elseif ATTACK == false and BanishMode == 128 then
		 RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		     		elseif ATTACK == false and BanishMode == 821 then
            Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(0,math.rad(-25),0)*ANGLES(math.rad(0 - 25 * math.cos(SINE / 0.1164)),math.rad(0 - 30 * math.cos(SINE / 0.25)),math.rad(0 - 30 * math.cos(SINE / 0.465))),.1)
		    RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, -0.35 - 0.05 * COS(SINE / 12), -0.65 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(45 + 2 * COS(SINE / 12)), RAD(10), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120), RAD(35), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.25 - 0.05 * SIN(SINE / 12), -0.85) * ANGLES(RAD(45), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-20), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	   elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil and Rooted == false then
        ANIM = "Walk"
		if ATTACK == false and BanishMode == 1 then
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 3 then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+0.5*COS(SINE / 12))*ANGLES(RAD(25+2.5*COS(SINE / 12)),RAD(0-RootPart.RotVelocity.y),RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(0 - 55 * SIN(SINE / 0.5)), RAD(0 - 22 * SIN(SINE / 1)), RAD(-15)), 1 / Animation_Speed)
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-90-10*math.cos(SINE/7)), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-90-10*math.cos(SINE/7)), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-2.5*math.cos(SINE/7)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*math.cos(SINE/7), -0.5) * ANGLES(RAD(-25-2.5*math.cos(SINE/7)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 2 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.05) * ANGLES(RAD(0), RAD(0), RAD(-15 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(10 * COS(SINE / (WALKSPEEDVALUE)))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(100 + 2 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(70 * SIN(SINE / WALKSPEEDVALUE)), RAD(5), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-10)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 666 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-45), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.3*SIZE) * ANGLES(RAD(-40), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE - 0.05*SIZE * COS(SINE / 12), -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 777 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 555 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 1555 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(10 * COS(SINE / WALKSPEEDVALUE))), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 - 0.1 * COS(SINE / 3) + ((1) - 1)) * ANGLES(RAD(30 - 2.5 * SIN(SINE / 12)), RAD(7 * COS(SINE / 24)), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.9, 0.5 + 0.05 * SIN(SINE / 12), -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5 * SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 900 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(3), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
			LeftShoulder.C0=Clerp(LeftShoulder.C0,cf(-0.75,0.5,-0.25)*ANGLES(math.rad(140),math.rad(0),math.rad(20 - 2.5 * math.cos(SINE / 28))),.1)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 324 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE, 0*SIZE, -0.1*SIZE) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(15 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 1/ Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25*SIZE, 0.5*SIZE, 0.5*SIZE) * ANGLES(RAD(-35), RAD(-25 + 2.5 * SIN(SINE / WALKSPEEDVALUE)), RAD(-55 + 2.5 * SIN(SINE / WALKSPEEDVALUE))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25*SIZE, 0.5*SIZE, 0.5*SIZE) * ANGLES(RAD(-35), RAD(25 - 2.5 * SIN(SINE / WALKSPEEDVALUE)), RAD(55 - 2.5 * SIN(SINE / WALKSPEEDVALUE))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE , -1*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
    elseif ATTACK == false and BanishMode == 128 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.03) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
		elseif ATTACK == false and BanishMode == 821 then
		     Torso.Neck.C0=Clerp(Torso.Neck.C0,NECKC0*ANGLES(0,math.rad(-25),0)*ANGLES(math.rad(0 - 25 * math.cos(SINE / 0.1164)),math.rad(0 - 30 * math.cos(SINE / 0.25)),math.rad(0 - 30 * math.cos(SINE / 0.465))),.1)
		    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(5))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)

		end
	end
	unanchor()
	for _, c in pairs(HornFolder:GetChildren()) do
		c.Color = C3(0,0,0)
	end
	for _, c in pairs(faceShadingFolder:GetChildren()) do
		c.Color = C3(0,0,0)
	end
	for i, v in pairs(NeonParts) do
		v.Color = BrickColor.Black().Color
	end
	for i, v in pairs(ArmourParts) do
		v.Color = C3(0,0,0)
	end
	for _, c in pairs(Character:GetChildren()) do
		if c:IsA('CharacterMesh') then
			c:Destroy()
		end
	end
	Humanoid.MaxHealth = math.huge
	Humanoid.Health = math.huge
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://"..SONG1
	sick.Looped = true
	Humanoid.JumpPower = Jump
	Humanoid.UseJumpPower = true
	Head.Parent = Character
	Torso.Parent = Character
	RightArm.Parent = Character
	LeftArm.Parent = Character
	LeftLeg.Parent = Character
	RightLeg.Parent = Character
	Head.Transparency = 0
	Torso.Transparency = 0
	RightArm.Transparency = 0
	LeftArm.Transparency = 0
	LeftLeg.Transparency = 0
	RightLeg.Transparency = 0
	Head.Locked = true
	Torso.Locked = true
	RightArm.Locked = true
	LeftArm.Locked = true
	LeftLeg.Locked = true
	RightLeg.Locked = true
end
end)()

--//=================================\\
--\\=================================//

--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
faceShadingFolder:Destroy()
