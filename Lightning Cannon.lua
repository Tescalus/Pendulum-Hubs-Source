
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
local LoadLibrary = game:GetObjects("rbxassetid://8299466510")[1]

	
function Align(Part0, Part1, Position, Angle)
	if Part0:FindFirstChild("Attachment") then
		Part0:FindFirstChild("Attachment"):Remove()
	end
    local AlignPosition = Instance.new("AlignPosition",Part0)
    local AlignOrientation = Instance.new("AlignOrientation",Part0)
    
    local Attachment1 = Instance.new("Attachment", Part0)
    local Attachment2 = Instance.new("Attachment", Part1)

    AlignPosition.Attachment0 = Attachment1
    AlignPosition.Attachment1 = Attachment2
    
    AlignOrientation.Attachment0 = Attachment1
    AlignOrientation.Attachment1 = Attachment2
    
    Attachment2.Position = Position or Vector3.new(0,0,0)
    Attachment2.Orientation = Angle or Vector3.new(0,0,0)
    
    AlignOrientation.MaxTorque = math.huge
    AlignOrientation.MaxAngularVelocity = math.huge
    AlignOrientation.PrimaryAxisOnly = false 
    AlignOrientation.Responsiveness = 200
    AlignOrientation.RigidityEnabled = false
    AlignOrientation.ReactionTorqueEnabled = false
    AlignPosition.MaxForce = math.huge
    AlignPosition.MaxVelocity = math.huge
    AlignPosition.ReactionForceEnabled = false
    AlignPosition.Responsiveness = 200
    AlignPosition.ApplyAtCenterOfMass = true
    AlignPosition.RigidityEnabled = true
    game:GetService("RunService").Heartbeat:Connect(function()
        Part0.Velocity = Vector3.new(-29.99,0,0)
    end)
    if Part0.Parent:IsA("Accessory") then
    	Part0:BreakJoints()
    end
end
local stopeverything = false
KEYHOLD = false
stupidaudios = {6136889498,6292270197,5127063380,5747795632,6231908115,1845756489,5971920694,35930009,2681542649,290182215,3223632353,6332608471,4568024466,6174456295,844654533,2740998756,6372483829,1431922590,853707984,227499602,1245089023,272106829,169803200,3208758673,4538419460,3337479905,2952541965,516046413,328792905,4218637880,3237542680}
s = script
Script = script
SCRIPT = script
scrpt = script
Scrpt = script
SCRPT = script
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
SQRT = math.sqrt
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
HUGE = math.huge
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
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
local function randomstring()
	
	local length = MRANDOM(10,20)
	local array = {}
	for i = 1,length do
		array[i] = string.char(MRANDOM(14,126))
	end
	return table.concat(array)
	
end
function otherrandomstring(length)
	local array = {}
	for i = 1,length do
		array[i] = string.char(MRANDOM(14,255))
	end
	return table.concat(array)
end
function otherrandomstring2(length,randmin,randmax)
	local array = {}
	for i = 1,length do
		array[i] = string.char(MRANDOM(randmin,randmax))
	end
	return table.concat(array)
end
function minutes(num)
	return num*60
end
local lplr = game:GetService("Players").LocalPlayer
local Player = lplr
local PLAYER = Player
local sine = 0
local NeckSnap = false
local USERNAME = lplr.Name
local peoplez = {1191576743,1823895019,87867914,1308783007,112192467,732341111,115130006,1710676584,1442214824,1615916525,1442218084,1673231425,1310685079,1087181414,984151503,1442167487,1587587028,1441994738,1129585258,1129586211,275036820,1087264812,1087241085,1318469264,1622394251,663322373,1664828681,930999813,1442217078,1442208195,1340979865,1444403544,1664860157,1442285617,1442213697,1442218738,1442229346,1442213021,1124518548,1129587486,1186716325}
local owner = {0,1823895019,0,1308783007,0,0,0,1710676584,1442214824,1615916525,1442218084,1673231425,1310685079,1087181414,984151503,1442167487,1587587028,1441994738,1129585258,1129586211,275036820,1087264812,1087241085,1318469264,1622394251,663322373,1664828681,930999813,1442217078,1442208195,1340979865,1444403544,1664860157,1442285617,1442213697,1442218738,1442229346,1442213021,1124518548,1129587486,1186716325}
local isowner = false
local rickrolling = false
local Player = game:GetService("Players").LocalPlayer
local USERID = lplr.UserId
local taunt = {Value = "None"}
local songid = {Value = "rbxassetid://3247404955"}
local attack = false
local walkspeed = 50
local TauntRemote = {}
local SongSync = {Value = 0}
local ISFLYING = false
local antivoid = nil

local Character = game.Workspace.non
local Mouse,mouse,MOUSE,m,M = lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse()

local S = 1
local eeeblock = Instance.new("Part")
local Humanoid = Character.Humanoid
Humanoid.Animator:Destroy()
--Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Effects = nil
local Eyes = nil
local Replica = game:GetObjects("rbxassetid://7921736307")[1]
local GUN = Replica.MegaGunnModel
for i,v in pairs(GUN:GetChildren()) do
	--if v:IsA("BasePart") or v:IsA("MeshPart") then
		--v.Transparency = 1
	--end
end
GUN.Parent = Character
local GunJoint = GUN.Joint.Weld
GUN.Joint.Weld.Part0 = RightArm
Align(game.Players.LocalPlayer.Character["Starslayer Railgun"].Handle, GUN.Base, Vector3.new(1.2, 0.5, 0), Vector3.new(-0, -180, 3))
-- -gh 4623059912
--GUN.Joint.Weld.Part1 = GUN.Joint
local Hole = GUN.Hole
local Holetwo = GUN.Hole2
local shade = Character["Torso"].Color
local alreadyfixing = false
local Effects = Instance.new("Folder")
Effects.Parent = Character
local eeeblock = Instance.new("Part")
eeeblock.Name = randomstring()
eeeblock.CanCollide = false
eeeblock.Transparency = 1
eeeblock.CFrame = Torso.CFrame
eeeblock.Parent = Character
local eee = Instance.new("Sound",eeeblock)
eee.Volume = 1
eee.Pitch = 1
eee.SoundId = songid.Value
eee:Play()
eee.Name = randomstring()
eee.Looped = true
eee.TimePosition = SongSync.Value
eee.DescendantAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	if v:IsA("SoundEffect") then
		v.Enabled = false
		v:GetPropertyChangedSignal("Enabled"):Connect(function()
			if stopeverything then wait(math.huge) end
			if v.Enabled ~= false then
				v.Enabled = false
			end
		end)
	end
	game:GetService("Debris"):AddItem(v,.01)
end)
function TauntRemote:FireServer(Name, ID)
	taunt.Value = Name
	if songid.Value ~= "rbxassetid://"..ID then
		songid.Value = "rbxassetid://"..ID
		SongSync.Value = 0
		eee.Volume = 1
		eee.Pitch = 1
		eee.SoundId = songid.Value
		eee.TimePosition = SongSync.Value
	end
end
function chatfunc(textt,glitchy)
	local text = string.gsub(textt,"​","")
	local chat = coroutine.wrap(function()
		local oldthing = eeeblock:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",eeeblock)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
		sayingstuff.StudsOffset = Vector3.new(0,5,0)
		sayingstuff.Adornee = eeeblock
		sayingstuff.Name = "TalkingBillBoard"
		local sayingstuff2 = Instance.new("TextLabel",sayingstuff)
		sayingstuff2.BackgroundTransparency = 1
		sayingstuff2.BorderSizePixel = 0
		sayingstuff2.Text = ""
		sayingstuff2.Font = "Code"
		sayingstuff2.TextScaled = true
		sayingstuff2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything do
				local hBRUH,sBRUH,vBRUH = Color3.toHSV(GUN.NeonParts.Color)
				sayingstuff2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		sayingstuff2.TextStrokeColor3 = shade
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Code"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything do
				sayingstuff3.TextColor3 = GUN.NeonParts.Color
				swait()
			end
		end))
		sayingstuff3.TextStrokeColor3 = shade
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff ~= nil do
				swait()
				if glitchy then
					local fonts = {"Antique","Arcade","Arial","ArialBold","Bodoni","Cartoon","Code","Fantasy","Garamond","Gotham","GothamBlack","GothamBold","GothamSemibold","Highway","SciFi","SourceSans","SourceSansBold","SourceSansItalic","SourceSansLight","SourceSansSemibold"}
					local randomfont = fonts[math.random(1,#fonts)]
					sayingstuff2.Font = randomfont
					sayingstuff3.Font = randomfont
				end
				sayingstuff2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			end
		end))
		for i = 1,string.len(text) do
			swait(2)
			sayingstuff2.Text = string.sub(text,1,i)
			sayingstuff3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			sayingstuff2.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			sayingstuff3.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			sayingstuff2.Rotation = sayingstuff2.Rotation + math.random(-2,2)
			sayingstuff3.Rotation = sayingstuff3.Rotation + math.random(-2,2)
			sayingstuff2.TextStrokeTransparency = i/50
			sayingstuff2.TextTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextStrokeTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextTransparency = sayingstuff2.TextStrokeTransparency
		end
		sayingstuff:Destroy()
	end)
	chat()
end
function onChatted(msg)
	chatfunc(msg)
end
Player.Chatted:connect(onChatted)
local ROOTC0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local NECKC0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local BG = nil
local BV = nil
local soundfixing = false
local fixinggui = false
local gui = nil
local exitbutton = nil
local restartingscript = false
local Anim = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).Magnitude 
local doe = 0
Humanoid.WalkSpeed = walkspeed
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
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
			local recip = 0.5/s
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5/s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5/s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end

function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end
function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a,b,t)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end

ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
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

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function Swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end

SWAIT = Swait

function mdmg()
	return
end

function CreateConnection(TYPE,PARENT,PART0,PART1,C0,C1)
	if stopeverything then wait(math.huge) end
	local NEWWELD = Instance.new(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end	

function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = randomstring()
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
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
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat if stopeverything then wait(math.huge) end Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

local function weldBetween(a,b)
	local weldd = Instance.new("Weld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = b
	return weldd
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 		


function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
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
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
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
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
	local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1,Times do
		local li = Instance.new("Part",Effects)
		li.Name = randomstring()
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1,0.1,magz/Times)
		local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
		local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).Magnitude
			li.Size = Vector3.new(0.1,0.1,magz2)
			li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
		else
			li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
		end
		curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
		li:Destroy()
		Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
	end
end

function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
	if DoesCourontine == false then
		local Direction = CFrame.new(Part.Position,ToLocation)
		local Distance = (Part.Position - ToLocation).Magnitude
		for i = 1,AmountOfTime do
			swait()
			Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
			Direction = Part.CFrame
		end
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CFrame.new(Part.Position,ToLocation)
			local Distance = (Part.Position - ToLocation).Magnitude
			for i = 1,AmountOfTime do
				swait()
				Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
				Direction = Part.CFrame
			end
		end))
	end
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function AttackGyro()
	local GYRO = Instance.new("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,4000000,0)
	GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then wait(math.huge) end
			swait()
			GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
		until attack == false
		GYRO:Destroy()
	end))
end
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		for i = 0,1,(1/60) do
			swait()
			if not alreadyfixing then
				GUN.NeonParts.Color = Color3.fromHSV(i,1,1)
				if taunt.Value == "iNSaNiTY" then
					GUN.NeonParts.Color = Color3.fromHSV(math.random(0,19)/20,1,1)
				elseif taunt.Value == "Err0r" then
					GUN.NeonParts.Color = Color3.fromRGB(0,math.clamp(eee.PlaybackLoudness-255,0,255),0)
				elseif taunt.Value == "FAST BOIII" then
					GUN.NeonParts.Color = Color3.fromRGB(0,0,math.clamp(eee.PlaybackLoudness-191,0,255))
				elseif taunt.Value == "Glitch" then
					GUN.NeonParts.Color = Color3.fromHSV(i,1,math.clamp((eee.PlaybackLoudness/255)-.5,0,1))
				elseif taunt.Value == "Alastor" then
					GUN.NeonParts.Color = Color3.new(eee.PlaybackLoudness/500,0,0)
				elseif taunt.Value == "kArmA" then
					GUN.NeonParts.Color = Color3.new(1,1,1)
				elseif taunt.Value == "petfroge" then
					GUN.NeonParts.Color = BrickColor.Random().Color
				end
			end
		end
	end
end))

function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function Ka_Boom()
	attack = true
	walkspeed = 0
	local die = CreateSound(1566051529,RootPart,3,1)
	die.EmitterSize = 100
	swait(5)
	for i = 1,3 do
		for i = 0,1.5,0.1 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
		local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
		killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		MakeForm(killbeam,"Cyl")
		coroutine.resume(coroutine.create(function()
			for i = 1,25 do
				swait()
				killbeam.Transparency = i/25
			end
			killbeam:Destroy()
		end))
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		for i = 1,42 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
	end
	for i = 1,15 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local BEAM = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	local BEAM2 = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	MakeForm(BEAM,"Ball")
	MakeForm(BEAM2,"Ball")
	BEAM.CFrame = CFrame.new(RootPart.Position)
	BEAM2.CFrame = CFrame.new(RootPart.Position)
	local boooom = CreateSound(415700134,RootPart,10,1,false)
	boooom.EmitterSize = 100
	for i=1,140 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		BEAM.Size = BEAM.Size + Vector3.new(0.7,8,0.7)
		BEAM2.Size = BEAM2.Size + Vector3.new(2,2,2)
		BEAM.Color = GUN.NeonParts.Color
		BEAM2.Color = GUN.NeonParts.Color
		BEAM.CFrame = CFrame.new(RootPart.Position)
		BEAM2.CFrame = CFrame.new(RootPart.Position)
		WACKYEFFECT({TIME = 5+i,EffectType = "Swirl",Size = BEAM2.Size*1.15,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0.8,Transparency2 = 1,CFrame = BEAM.CFrame * CFrame.Angles(math.rad(0),math.rad(i*5),math.rad(0)),MoveToPos = nil,RotationX = 0,RotationY = i/8,RotationZ = 0,Material = "Neon",Color = GUN.NeonParts.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	end
	mdmg(RootPart.Position,BEAM2.Size.Y/2)
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM.Size,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0,Transparency2 = 0,CFrame = BEAM.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM2.Size,Size2 = Vector3.new(0,0,0),Transparency = 0,Transparency2 = 0.6,CFrame = BEAM2.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	for i,v in pairs(Effects:GetChildren()) do
		v.Color = shade
		v:GetPropertyChangedSignal("Color"):Connect(function()
			if stopeverything then wait(math.huge) end
			v.Color = shade
		end)
	end
	BEAM2:Destroy()
	BEAM:Destroy()
	attack = false
	walkspeed = 50
end

function attackone()
	attack = true
	walkspeed = 16
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	local DISTANCE = (Holetwo.Position - Mouse.Hit.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,Mouse.Hit.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	--mdmg(Mouse.Hit.p,10)
	for i = 0,0.5,0.075 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	walkspeed = 50
	attack = false
end

function attacktwo()
	attack = true
	walkspeed = 0
	AttackGyro()
	local gBullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BullyFuck",Vector3.new())
	MakeForm(gBullet,"Ball")
	gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
	CreateSound(2785493,gBullet,2,0.8)
	for i = 0,1.25,0.025 do
		swait()
		Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(0.5,0.5,0.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
		gBullet.Size = gBullet.Size * 1.085
		gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(-5 - 3 * math.cos(sine/12)),math.rad(0),math.rad(30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/49)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5 + 0.1 * math.cos(sine/12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(sine/12)),math.rad(0 - 6 * math.cos(sine/12)),math.rad(-30 - 6 * math.cos(sine/12))) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local bullets = {}
	for i = 1,math.random(27,41) do
		swait()
		local Bullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"BulletFuck",Vector3.new(0.6,0.6,0.6))
		MakeForm(Bullet,"Ball")
		Bullet.CFrame = gBullet.CFrame
		Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = 0.4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
		table.insert(bullets,Bullet)
	end
	local oofing = false
	for b = 1,#bullets do
		swait()
		local part,pos = rayCast(LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((Mouse.Hit.p+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Character)
		coroutine.resume(coroutine.create(function()
			FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
			Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(0.6,0.6,0.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
			swait(math.random(55,65))
			for i = 1,3 do
				Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(0.6,6,0.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
			end
			for i = 0,10 do
				swait()
				bullets[b].Transparency = bullets[b].Transparency + 0.1
			end
			oofing = not oofing
			if oofing then
				mdmg(bullets[b].Position,10)
			end
			local EEEBRUHEEE = CreateSound(168513088,bullets[b],3.5,1.1,false)
			bullets[b].Transparency = 1
			EEEBRUHEEE.Ended:Connect(function()
				if stopeverything then wait(math.huge) end
				bullets[b]:Destroy()
			end)
		end))
	end
	for i = 0,10 do
		swait()
		gBullet.Transparency = gBullet.Transparency + 0.1
	end
	gBullet:Destroy()
	walkspeed = 50
	attack = false
end

function hedshoot()
	attack = true
	walkspeed = 16
	CreateSound(235097614,RootPart,6,1.5,false)
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	mdmg(RootPart.Position,14)
	for i = 1,4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		mdmg(RootPart.Position,14)
		Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,shade,math.random(30,45),0.5,1.5,0,true,60) Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(0,0,1),math.random(30,45),0.5,1.5,0,true,60)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,0.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	attack = false
	walkspeed = 50
end

function painlessrain()
	attack = true
	walkspeed = 16
	coroutine.wrap(function()
		for i = 0,2 do
			swait(12)
			CreateSound(199145095,GUN.Joint,10,1)
		end
	end)()
	for i = 0,2,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1/2)
	end
	for i = 0,1.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = 0.45,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
	local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(225),math.rad(-20),math.rad(20)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	for i = 0,.5,0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	attack = false
	walkspeed = 50
	swait(36)
	local onethirdattack = 0
	for i = 1,5 do
		onethirdattack = onethirdattack + 1
		if onethirdattack >= 4 then
			onethirdattack = 1
		end
		local Sky = RootPart.CFrame*CFrame.new(0,500,0)
		local MoPos = Mouse.Hit*CFrame.new(math.random(-18,18),0,math.random(-18,18)).p
		local DISTANCE = (Sky.p - MoPos).Magnitude
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		Lightning(Sky.p,MoPos,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
		killbeam.CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		MakeForm(killbeam,"Cyl")
		coroutine.resume(coroutine.create(function()
			for i = 1,25 do
				swait()
				killbeam.Transparency = i/25
			end
			killbeam:Destroy()
		end))
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 192410089,SoundPitch = .55,SoundVolume = 8,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		end
		if onethirdattack == 3 then
			mdmg(MoPos,12)
		end
		swait(15)
	end
end
function SingularityBeam()
	attack = true
	walkspeed = 0
	AttackGyro()
	for i = 0,0.5,0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),0.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local HoleDist = (Hole.Position - Holetwo.Position).Magnitude
	local chargebeam = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
	MakeForm(chargebeam,"Cyl")
	chargebeam.CFrame = CFrame.new(Hole.Position,Holetwo.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	local chargeweld = weldBetween(GUN.Joint,chargebeam)
	local chargeball = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
	chargeball.Shape = "Ball"
	chargeball.CFrame = Holetwo.CFrame
	weldBetween(Holetwo,chargeball)
	CreateSound(342793847,Hole,10,1,false)
	local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
	bigball:Play()
	bigball.Completed:Wait()
	chargebeam:Destroy()
	local KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then wait(math.huge) end KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude Swait() until attack == false
	end))
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
	MakeForm(killbeam,"Cyl")
	killbeam.Touched:Connect(function(victim)
		if stopeverything then wait(math.huge) end
		mdmg(victim.Position,5)
	end)
	coroutine.resume(coroutine.create(function()
		while not stopeverything and attack do
			mdmg(Mouse.Hit.p,5)
			Swait(6)
		end
	end))
	coroutine.resume(coroutine.create(function()
		local isdoingathing = false
		while not stopeverything and attack do
			isdoingathing = not isdoingathing
			if lplr.Name == USERNAME then
				RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,.1)
			end
			killbeam.Size = Vector3.new(2.5,KillDist,2.5)
			killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
			if isdoingathing then
				Lightning(Holetwo.Position,Mouse.Hit.p,15,3,Color3.new(0,0,1),10,0,1,0,true,55)
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			end
			Swait()
		end
	end))
	CreateSound(138677306,Holetwo,10,1,false)
	CreateSound(415700134,Holetwo,10,1,false)
	Swait(150)
	CreateSound(3264923,Holetwo,10,1,false)
	Swait(30)
	chargeball:Destroy()
	killbeam:Destroy()
	walkspeed = 50
	attack = false
end

local FLYING = false
iyflyspeed = 1
function sFLY()
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new(0,0,0)
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeverything then wait(math.huge) end
					game:GetService("RunService").RenderStepped:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.Velocity = Vector3.new(0,0,0)
						end
						BG.CFrame = workspace.CurrentCamera.CoordinateFrame
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Player:GetMouse()
		IYMouse.KeyDown:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = iyflyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = - iyflyspeed
			elseif KEY:lower() == 'a' then
				CONTROL.L = - iyflyspeed
			elseif KEY:lower() == 'd' then 
				CONTROL.R = iyflyspeed
			elseif KEY:lower() == 'e' then
				CONTROL.Q = iyflyspeed*2
			elseif KEY:lower() == 'q' then
				CONTROL.E = -iyflyspeed*2
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		FLY()
	end
end
function sphere(bonuspeed,type,pos,scale,value,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
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
			rng.BrickColor = BrickColor.random()
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
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
			swait()
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
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2b*bonuspeed,scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
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
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
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
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,0)
		end
		rng:Destroy()
	end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
	local type = type
	local rotenable = rotatingop
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	if typeoftrans == "In" then
		rng.Transparency = 1
	end
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
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
	local randomrot = math.random(1,2)
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed/10
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed/10
			end
			if rotenable == true then
				if randomrot == 1 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
				elseif randomrot == 2 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
				end
			end
			if typeoftrans == "Out" then
				rng.Transparency = rng.Transparency + 0.01*bonuspeed
			elseif typeoftrans == "In" then
				rng.Transparency = rng.Transparency - 0.01*bonuspeed
			end
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10,0,scaler2*bonuspeed/10)
		end
		rng:Destroy()
	end))
end

Mouse.KeyDown:Connect(function(k)
	if stopeverything then wait(math.huge) end
	k = k:lower()
	if k == "m" then
		if songid.Value ~= "rbxassetid://3247404955" and songid.Value ~= "rbxassetid://6190635423" and songid.Value ~= "rbxassetid://2371543268" and songid.Value ~= "rbxassetid://5315171837" and songid ~= "rbxassetid://5089636816" and songid.Value ~= "rbxassetid://6768783121" and songid.Value ~= "rbxassetid://4835535512" and songid.Value ~= "rbxassetid://5089636816" and songid.Value ~= "rbxassetid://1280010741" and songid.Value ~= "rbxassetid://5355210927" and songid.Value ~="rbxassetid://2581112923" and songid.Value ~= "rbxassetid://262950484" and songid.Value ~= "rbxassetid://481104377" and songid.Value ~= "rbxassetid://2920078671" and songid.Value ~= "rbxassetid://2297862957" and songid.Value ~= "rbxassetid://1338971957" and songid.Value ~= "rbxassetid://5460732000" and songid.Value ~= "rbxassetid://4557673096" and songid.Value ~= "rbxassetid://348832364" and songid.Value ~= "rbxassetid://1143392568" then
			TauntRemote:FireServer("None",3247404955)
		elseif songid.Value == "rbxassetid://3247404955" then
			TauntRemote:FireServer("None",5315171837)
			elseif songid.Value == "rbxassetid://5315171837" then
			TauntRemote:FireServer("sAnIty",262950484)
			songid.Value = "rbxassetid://262950484"
			repeat if stopeverything then wait(math.huge) end 
				game:GetService("RunService").RenderStepped:Wait()
			until SongSync.Value >= 24 or songid.Value ~= "rbxassetid://262950484"
			if songid.Value == "rbxassetid://262950484" then
				--chatfunc(" ")
				sphere(1,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),Vector3.new(1,100000,1),0.6,BrickColor.new("Really black"))
				sphere2(math.random(1,4),"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),Vector3.new(5,1,5),-0.005,math.random(25,100)/25,-0.005,BrickColor.new("Institutional white"))
				sphere(1,"Add",Torso.CFrame,Vector3.new(1,1,1),0.8,BrickColor.new("Really black"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,5,5),0.5,0.5,0.5,BrickColor.new("Institutional white"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,5,5),0.75,0.75,0.75,BrickColor.new("Institutional white"))
				sphere2(3,"Add",Torso.CFrame,Vector3.new(5,5,5),1,1,1,BrickColor.new("Institutional white"))
				sphere2(3,"Add",Torso.CFrame,Vector3.new(5,5,5),1.25,1.25,1.25,BrickColor.new("Institutional white"))
				sphere2(1,"Add",Torso.CFrame,Vector3.new(5,10000,5),0.5,0.5,0.5,BrickColor.new("Institutional white"))
				sphere2(2,"Add",Torso.CFrame,Vector3.new(5,10000,5),0.6,0.6,0.6,BrickColor.new("Institutional white"))
				for i = 0,49 do
					PixelBlockX(1,math.random(1,20),"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),8,8,8,0.16,BrickColor.new("Really black"),0)
					sphereMK(2.5,-1,"Add",Torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),2.5,2.5,25,-0.025,BrickColor.new("Really black"),0)
					slash(math.random(10,20)/10,5,true,"Round","Add","Out",Torso.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-30,30)),math.rad(math.random(-30,30)),math.rad(math.random(-40,40))),Vector3.new(0.05,0.01,0.05),math.random(50,60)/250,BrickColor.new("Really black"))
				end
				CreateSound(239000203,Torso,10,false)
				CreateSound(1042716828,Torso,10,false)
				TauntRemote:FireServer("iNSaNiTY",262950484)
			end
		elseif songid.Value == "rbxassetid://262950484" then
			TauntRemote:FireServer("Err0r",481104377)
		elseif songid.Value == "rbxassetid://262950484" then
			TauntRemote:FireServer("iNSaNiTY",262950484)
		elseif songid.Value == "rbxassetid://481104377" then
			TauntRemote:FireServer("FAST BOIII",2920078671)
		elseif songid.Value == "rbxassetid://2920078671" then
			TauntRemote:FireServer("Glitch",2297862957)
		elseif songid.Value == "rbxassetid://2297862957" then
			TauntRemote:FireServer("None",3247404955)
			--[[
		elseif songid.Value == "rbxassetid://2297862957" then
			TauntRemote:FireServer("Chill",1338971957)
		elseif songid.Value == "rbxassetid://1338971957" then
			TauntRemote:FireServer("Alastor",5460732000)
		elseif songid.Value == "rbxassetid://5460732000" then
			TauntRemote:FireServer("kArmA",4557673096)
		elseif songid.Value == "rbxassetid://4557673096" then
			TauntRemote:FireServer("V1",2581112923)
		elseif songid.Value == "rbxassetid://2581112923" then
			TauntRemote:FireServer("caverns",5355210927)
		elseif songid.Value == "rbxassetid://5355210927" then
			TauntRemote:FireServer("funk",1280010741)
		elseif songid.Value == "rbxassetid://1280010741" then
			TauntRemote:FireServer("sussyhoney",5089636816)
		elseif songid.Value == "rbxassetid://5089636816" then
			TauntRemote:FireServer("hi",4835535512)
		elseif songid.Value == "rbxassetid://4835535512" then
			TauntRemote:FireServer("Lord",2371543268)
		elseif songid.Value == "rbxassetid://2371543268" then
			TauntRemote:FireServer("MaddoxLC",6768783121)
		elseif songid.Value == "rbxassetid://6768783121" then
			TauntRemote:FireServer("friday",6190635423)
		elseif songid.Value == "rbxassetid://6190635423" then
			TauntRemote:FireServer("SolidLC",348832364)
		elseif songid.Value == "rbxassetid://348832364" then
			TauntRemote:FireServer("HoneyLC",1143392568)
		elseif songid.Value == "rbxassetid://1143392568" then
			TauntRemote:FireServer("None",3247404955)
			--]]
		elseif songid.Value == "rbxassetid://3247404955" then
			TauntRemote:FireServer("None",5315171837)
		end
	elseif k == "y" then
		if taunt.Value ~= "Fave" then
			TauntRemote:FireServer("Fave",290182215)
		else
			TauntRemote:FireServer("None",3247404955)
		end
	elseif k == "t" then
		if taunt.Value ~= "Krump" then
			TauntRemote:FireServer("Krump",1511734302)
		else
			TauntRemote:FireServer("None",3247404955)
		end
	elseif k == "u" then
		if taunt.Value ~= "OOOOO" then
			TauntRemote:FireServer("OOOOO",2681542649)
		else
			TauntRemote:FireServer("None",3247404955)
		end
	elseif k == "f" then
		ISFLYING = not ISFLYING
		if lplr.Name == USERNAME then
			sFLY()
		end
	elseif k == "z" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then	
		hedshoot()
	elseif k == "x" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		SingularityBeam()
	elseif k == "c" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		painlessrain()
	elseif k == "v" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		attacktwo()
	elseif k == "b" and attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		Ka_Boom()
	end
end)

Mouse.Button1Down:Connect(function()
if stopeverything then wait(math.huge) end
	if attack == false and (taunt.Value == "None" or taunt.Value == "iNSaNiTY" or taunt.Value == "Err0r" or taunt.Value == "FAST BOIII" or taunt.Value == "Glitch") then
		attackone()
	end
end)

coroutine.wrap(function()
	while not stopeverything do
		swait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
antivoid = Instance.new("Part")
antivoid.Name = randomstring()
antivoid.Size = Vector3.new(400,10,400)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
antivoid.Parent = nil
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		swait()
		if not alreadyfixing then
			if antivoid:IsDescendantOf(workspace) then
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
			else
				pcall(function()
					antivoid:Destroy()
				end)
				antivoid = Instance.new("Part")
				antivoid.Name = randomstring()
				antivoid.Size = Vector3.new(400,10,400)
				antivoid.Anchored = true
				antivoid.Transparency = 1
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
				antivoid.Parent = nil
			end
		end
	end
end))

function fly()

	function weld(p0,p1,c0,c1,par)
		local w = Instance.new("Weld",p0 or par)
		w.Part0 = p0
		w.Part1 = p1
		w.C0 = c0 or CFrame.new()
		w.C1 = c1 or CFrame.new()
		return w
	end
	local motors = {}
	function motor(p0,p1,c0,c1,des,vel,par)
		local w = Instance.new("Motor6D",p0 or par)
		w.Part0 = p0
		w.Part1 = p1
		w.C0 = c0 or CFrame.new()
		w.C1 = c1 or CFrame.new()
		w.MaxVelocity = tonumber(vel) or .05
		w.DesiredAngle = tonumber(des) or 0
		return w
	end
	function lerp(a,b,c)
		return a+(b-a)*c
	end
	function clerp(c1,c2,alBRUH)
		local al = .05
		local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
		local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
		for i,v in pairs(com1) do
			com1[i] = lerp(v,com2[i],al)
		end
		return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
	end
	function ccomplerp(c1,c2,alBRUH)
		local al = .05
		local com1 = {c1:components()}
		local com2 = {c2:components()}
		for i,v in pairs(com1) do
			com1[i] = lerp(v,com2[i],al)
		end
		return CFrame.new(unpack(com1))
	end
	function tickwave(time,length,offset)
		return .2*math.sin(sine/20)
	end
	function invcol(c)
		c = c.Color
		return BrickColor.new(shade)
	end
	local oc = oc or function(...) return ... end
	local mod = Instance.new("Folder",Character)
	mod.Name = "Wings"
	mod.ChildAdded:Connect(function(v)
		if stopeverything then wait(math.huge) end
		if v.Name == "Part" and not v:FindFirstChild("WingTrail") then
			swait()
			local meesh = v:FindFirstChildOfClass("SpecialMesh")
			if meesh then
				meesh.Scale = v.Size
			end
			local top = Instance.new("Attachment")
			top.Name = "Top"
			top.Position = Vector3.new(0,v.Size.Y/2,0)
			top.Parent = v
			local bottom = Instance.new("Attachment")
			bottom.Name = "Bottom"
			bottom.Position = Vector3.new(0,-v.Size.Y/2,0)
			bottom.Parent = v
			local vtrail = Instance.new("Trail")
			vtrail.Name = "WingTrail"
			vtrail.Attachment0 = top
			vtrail.Attachment1 = bottom
			vtrail.Lifetime = 0.3
			vtrail.MinLength = 0
			vtrail.LightEmission = 0
			vtrail.LightInfluence = 0
			vtrail.Color = ColorSequence.new(shade)
			vtrail.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}
			vtrail.Parent = v
		end
	end)
	local char = Character
	local tor = Torso
	local hum = Humanoid
	local special = {
	}
	local topcolor = invcol(Character.Torso.BrickColor)
	local feacolor = topcolor
	local ptrans = 0
	local pref = 0
	local fire = false
	local fmcol = Color3.new()
	local fscol = Color3.new()
	local part = Instance.new("Part")
	part.FormFactor = "Custom"
	part.Size = Vector3.new(.2,.2,.2)
	part.TopSurface,part.BottomSurface = 0,0
	part.CanCollide = false
	part.BrickColor = topcolor
	part.Transparency = 1
	part.Reflectance = pref
	local ef = Instance.new("Fire",fire and part or nil)
	ef.Heat = 0
	ef.Size = .15
	ef.Color = fmcol or Color3.new()
	ef.SecondaryColor = fscol or Color3.new()
	part:BreakJoints()
	function newpart()
		local clone = part:Clone()
		clone.Parent = mod
		clone:BreakJoints()
		return clone
	end
	local feath = newpart()
feath.BrickColor = feacolor
feath.Transparency = 0
Instance.new("SpecialMesh",feath).MeshType = "Sphere"
function newfeather()
	local clone = feath:Clone()
	clone.Parent = mod
	clone:BreakJoints()
	return clone
end
local r1 = newpart()
r1.Size = Vector3.new(.3,1.5,.3)*1.2
local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)
local r2 = newpart()
r2.Size = Vector3.new(.4,1.5,.4)*1.2
local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)
local r3 = newpart()
r3.Size = Vector3.new(.3,2,.3)*1.2
local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)
local r4 = newpart()
r4.Size = Vector3.new(.25,1.2,.25)*1.2
local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)
local feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))
local rf3 = {}
for i = 0,7 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2,.35)
	table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local rf2 = {}
for i = 0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2-i*.08,.3)
	table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local rf1 = {}
for i = 0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.37,1.65-i*.06,.25)
	table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local l1 = newpart()
l1.Size = Vector3.new(.3,1.5,.3)*1.2
local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)
local l2 = newpart()
l2.Size = Vector3.new(.4,1.5,.4)*1.2
local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)
local l3 = newpart()
l3.Size = Vector3.new(.3,2,.3)*1.2
local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)
local l4 = newpart()
l4.Size = Vector3.new(.25,1.2,.25)*1.2
local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)
local feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,3,.3)
weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.4,2.3,.3)
weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))
feather = newfeather()
feather.Mesh.Scale = Vector3.new(1,1,1)
feather.Size = Vector3.new(.35,2.2,.25)
weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))
local lf3 = {}
for i = 0,7 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2,.35)
	table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local lf2 = {}
for i = 0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.45,2.2-i*.08,.3)
	table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local lf1 = {}
for i = 0,6 do
	feather = newfeather()
	feather.Mesh.Scale = Vector3.new(1,1,1)
	feather.Size = Vector3.new(.37,1.65-i*.06,.25)
	table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))
end
local rwing = {rm1,rm2,rm3,rm4}
local lwing = {lm1,lm2,lm3,lm4}
local oc0 = {}
for i,v in pairs(rwing) do
	oc0[v] = v.C0
end
for i,v in pairs(lwing) do
	oc0[v] = v.C0
end
	function gotResized()
		if lastsize then
			if tor.Size == lastsize then return end
			local scaleVec = tor.Size/lastsize
			for i,v in pairs(oc0) do
				oc0[i] = v-v.p+scaleVec*v.p
			end
			lastsize = tor.Size
		end
		lastsize = tor.Size
	end
	tor:GetPropertyChangedSignal("Size"):Connect(function()
		if stopeverything then wait(math.huge) end
		gotResized()
	end)
	gotResized()
	local idle = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local outlow = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local outhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local veryhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local divebomb = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	function setwings(tab,time)
		time = time or 10
		for i = 1,4 do
			rwing[i].DesiredAngle = tab[i]
			lwing[i].DesiredAngle = tab[i]
			rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time
			lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time
			local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())
			local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())
		end
		for i,v in pairs(rf1) do
			v.DesiredAngle = tab[9]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
		for i,v in pairs(lf1) do
			v.DesiredAngle = tab[9]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
		for i,v in pairs(rf2) do
			v.DesiredAngle = tab[10]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
		for i,v in pairs(lf2) do
			v.DesiredAngle = tab[10]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
		for i,v in pairs(rf3) do
			v.DesiredAngle = tab[11]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
		for i,v in pairs(lf3) do
			v.DesiredAngle = tab[11]
			v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time
		end
	end
	setwings(outhigh,1)
	flying = false
	moving = false
	for i,v in pairs(tor:GetChildren()) do
		if v.ClassName:lower():match("body") then
			v:Destroy()
		end
	end
	local ctor = tor:Clone()
	ctor:ClearAllChildren()
	ctor.Name = "cTorso"
	ctor.Transparency = 1
	ctor.CanCollide = false
	ctor.FormFactor = "Custom"
	ctor.Size = Vector3.new(.2,.2,.2)
	ctor.Parent = mod
	weld(tor,ctor)
	local bg = Instance.new("BodyGyro",ctor)
	bg.maxTorque = Vector3.new()
	bg.P = 15000
	bg.D = 1000
	local bv = Instance.new("BodyVelocity",ctor)
	bv.maxForce = Vector3.new()
	bv.P = 15000
	vel = Vector3.new()
	cf = CFrame.new()
	flspd = 0
	keysdown = {}
	keypressed = {}
	ktime = {}
	descendtimer = 0
	jumptime = tick()
	hum.Jumping:connect(function()
		if stopeverything then wait(math.huge) end
		jumptime = tick()
	end)
	cam = workspace.CurrentCamera
	function mid(a,b,c)
		return math.max(a,math.min(b,c or -a))
	end
	function bn(a)
		return a and 1 or 0
	end
	function gm(tar)
		local m = 0
		for i,v in pairs(tar:GetChildren()) do
			if v:IsA("BasePart") then
				m = m + v:GetMass()
			end
			m = m + gm(v)
		end
		return m
	end
	reqrotx = 0
	local grav = 196.2
	local con
	while not stopeverything and not alreadyfixing do
		local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
		local sspd,uspd,fspd = obvel.X,obvel.Y,obvel.Z
		flying = true
		if flying then
			local lfldir = fldir
			fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
			local lmoving = moving
			moving = fldir.Magnitude > .1
			if lmoving and not moving then
				idledir = lfldir*Vector3.new(1,0,1)
				descendtimer = tick()
			end
			local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
			if moving and keysdown["0"] and lmoving then
				fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
			end
			local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
			local descending = (not moving and keysdown["q"] and not keysdown[" "])
			cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
			local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
			local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
			bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
			reqrotx = reqrotx - reqrotx/10
			local ani = tickwave(1.5,1)
			vel = moving and cf.lookVector*flspd or Vector3.new()
			flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
			setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)
			for i=1,4 do
				rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)
				lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)
			end
			local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{Character})
		else
			bg.maxTorque = Vector3.new()
			bv.maxForce = Vector3.new()
			local ani = tickwave(walking and .8 or 4.5,1)
			setwings(idle,10)
			local x,y,z = fspd/160,uspd/700,sspd/900
			for i=1,4 do
				rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)
				lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)
			end
			if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
				vel = Vector3.new(0,50,0)
				bv.velocity = vel
				idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
				cf = tor.CFrame * CFrame.Angles(-.01,0,0)
				bg.cframe = cf
				flystart = tick()
				flying = true
			end
		end
		keypressed = {}
		swait()
	end
end
coroutine.resume(coroutine.create(function()
	fly()
end))
workspace.ChildAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	if v:IsA("Message") and v.Text ~= "You typed something in the require wrong." and v.Text ~= "I kinda need you to have a HumanoidRootPart to be able to do anthing, try again once you have one lol" then
		v.Text = ""
		v:GetPropertyChangedSignal("Text"):Connect(function()
			if stopeverything then wait(math.huge) end
			if v.Text ~= "" then
				v.Text = ""
			end
		end)
		game:GetService("Debris"):AddItem(v,.01)
	elseif v:IsA("BasePart") and v.Name == "StrawBerry" then
		v.Transparency = 1
		game:GetService("Debris"):AddItem(v,.01)
	end
end)
function checkws(v)
	if v:IsA("Sound") and not v.Parent:IsA("BasePart") then
		local function mutethisbadboy(v)
			local mute = Instance.new("TremoloSoundEffect")
			mute.Name = randomstring()
			mute.Duty = 0
			mute.Priority = 2147483647
			mute.Parent = v
			mute.Changed:Connect(function(change)
				if stopeverything then wait(math.huge) end
				if change == "Depth" and mute.Depth ~= 1 then
					mute.Depth = 1
				elseif change == "Duty" and mute.Duty ~= 0 then
					mute.Duty = 0
				elseif change == "Enabled" and mute.Enabled ~= true then
					mute.Enabled = true
				elseif change == "Priority" and mute.Priority ~= 2147483647 then
					mute.Priority = 2147483647
				end
			end)
			local checkforreparent = false
			v:GetPropertyChangedSignal("Parent"):Connect(function()
				if stopeverything then wait(math.huge) end
				if v.Parent:IsA("BasePart") then
					mute:Destroy()
					checkforreparent = true
				elseif checkforreparent then
					mutethisbadboy(v)
				end
			end)
			v.DescendantRemoving:Connect(function(b)
				if stopeverything then wait(math.huge) end
				if b == mute and not v.Parent:IsA("BasePart") then
					mutethisbadboy(v)
				end
			end)
		end
		mutethisbadboy(v)
	end
end
for i,v in pairs(workspace:GetDescendants()) do
	checkws(v)
end
workspace.DescendantAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	checkws(v)
end)
W1=Instance.new("Weld",eeeblock)
W1.Part0 = eeeblock
W1.Part1 = Torso

while not stopeverything do
	if not alreadyfixing then
		swait()
		if not soundfixing then
			SongSync.Value = eee.TimePosition
		end
		--Humanoid.HipHeight = 0
		--Humanoid.Sit = false
		--Humanoid.DisplayName = "​"
		--Humanoid.PlatformStand = ISFLYING
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = 50
		--Humanoid.BreakJointsOnDeath = false
		--Humanoid.DisplayDistanceType = "Viewer"
		--Humanoid.Name = randomstring()
		Humanoid.WalkSpeed = walkspeed
		--[[
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		--]]
		for i,v in pairs(Character:GetDescendants()) do
			if v:IsA("BasePart") then
				if not v:IsDescendantOf(Effects) and v ~= RootPart then
					--v.Anchored = false
				elseif v == RootPart and lplr.Name == USERNAME then
					--v.Anchored = false
				elseif v == RootPart and lplr.Name ~= USERNAME then
					--v.Anchored = true
				end
			end
		end

		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
				local flot = Instance.new("BodyPosition")
				local spen = Instance.new("BodyGyro")
				local hu = math.huge
				flot.MaxForce = Vector3.new(hu,hu,hu)
				spen.MaxTorque = Vector3.new(hu,hu,hu)
				local spown = nil
				for o,b in pairs(workspace:GetDescendants()) do
					if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
						spown = b
					end
				end
				if spown then
					--RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+6,spown.Position.Z)
				else
					local base = workspace:FindFirstChild("Base")
					if not base then
						base = workspace:FindFirstChild("Baseplate")
					end
					if base then
						--RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,(-base.Size.X/2)+5,(base.Size.X/2)-5),base.Position.Y+(base.Size.Y/2)+6,math.clamp(RootPart.Position.Z,(-base.Size.X/2)+5,(base.Size.X/2)-5))
					else
						--RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),30,math.clamp(RootPart.Position.Z,-100,100))
					end
				end
				--flot.Position = RootPart.Position
				--flot.Parent = RootPart
				--spen.CFrame = RootPart.CFrame
				--spen.Parent = RootPart
				--game:GetService("Debris"):AddItem(flot,1)
				--game:GetService("Debris"):AddItem(spen,1)
			end
		end
		Torsovelocity = (RootPart.Velocity).Magnitude
		sine = sine + 1
		local sensitivity = 25
		if taunt.Value == "FAST BOIII" then
			for i,v in pairs(Character.Wings:GetChildren()) do
				if v.Name == "Part" then
					v.Transparency = 1
					pcall(function()
						v.WingTrail.Enabled = false
					end)
				end
			end
		else
			for i,v in pairs(Character.Wings:GetChildren()) do
				if v.Name == "Part" then
					if v:FindFirstChildOfClass("SpecialMesh") then
						v.Transparency = 1
					end
					pcall(function()
						v.WingTrail.Enabled = false
					end)
				end
			end
		end
		if taunt.Value == "None" or taunt.Value == "sAnIty" then
			if taunt.Value == "sAnIty" then
				local qw = SongSync.Value
				if qw >= 2.7 and qw < 2.9 then
					chatfunc("sAnIty",true)
				elseif qw >= 5.3 and qw < 5.5 then
					chatfunc("Light is peeking through the darkness")
				elseif qw >= 8 and qw < 8.2 then
					chatfunc("pUrIty",true)
				elseif qw >= 10.8 and qw < 11 then
					chatfunc("Can't feel anymore of the stress")
				elseif qw >= 13.1 and qw < 13.3 then
					chatfunc("sAnIty",true)
				elseif qw >= 16 and qw < 16.2 then
					chatfunc("It's already fading away")
				elseif qw >= 18.7 and qw < 18.9 then
					chatfunc("crUElty",true)
				elseif qw >= 21.4 and qw < 21.6 then
					chatfunc("Instincts controlling me")
				end
			end
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
		elseif taunt.Value == "iNSaNiTY" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(sine/100)),math.rad(0)),1)
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
			Humanoid.WalkSpeed = walkspeed/3.125
		elseif taunt.Value == "Chill" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if not attack then
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,.5,-.1) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-12.5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(12.5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
				elseif Torsovelocity >= sensitivity then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,-.1) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
				end
				local partnum = math.random(1,48)
				coroutine.resume(coroutine.create(function()
					local wingpart = Character.Wings:GetChildren()[partnum]
					wingpart.Color = GUN.NeonParts.Color
					wingpart.WingTrail.Color = ColorSequence.new(wingpart.Color)
					swait()
					if not alreadyfixing then
						wingpart.Color = shade
						wingpart.WingTrail.Color = ColorSequence.new(shade)
					end
				end))
			end
		elseif taunt.Value == "Err0r" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/30)),math.rad(0)),1/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/30)),math.rad(0),math.rad(25+15*math.cos(sine/30))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/15))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/15))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(40),math.rad(-5*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				local partnum = math.random(1,48)
				coroutine.resume(coroutine.create(function()
					local wingpart = Character.Wings:GetChildren()[partnum]
					wingpart.Color = Color3.new(0,1,0)
					wingpart.WingTrail.Color = ColorSequence.new(Color3.new(0,1,0))
					swait()
					if not alreadyfixing then
						wingpart.Color = shade
						wingpart.WingTrail.Color = ColorSequence.new(shade)
					end
				end))
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
		elseif taunt.Value == "Alastor" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 3 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(45 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1, -1,-.01) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-4*math.sin(sine/25)), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		elseif taunt.Value == "Glitch" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(135+5*math.sin(sine/9)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+10*math.cos(sine/9))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(20-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(-50+5*math.sin(sine/9)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				local partnum = math.random(1,48)
				coroutine.resume(coroutine.create(function()
					local wingpart = Character.Wings:GetChildren()[partnum]
					wingpart.Color = GUN.NeonParts.Color
					wingpart.WingTrail.Color = ColorSequence.new(wingpart.Color)
					swait()
					if not alreadyfixing then
						wingpart.Color = shade
						wingpart.WingTrail.Color = ColorSequence.new(shade)
					end
				end))
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
	
		elseif taunt.Value == "FAST BOIII" then
			if not Character:FindFirstChild("WalkingWheel") and Anim == "Idle" and attack == false then
				local ww = Instance.new("Model")
				ww.Name = "WalkingWheel"
				for i = 1,36 do
					local wwpart = Instance.new("Part")
					wwpart.Size = Vector3.new(2,.2,.56)
					wwpart.CFrame = RootPart.CFrame * CFrame.new(0,.01,0) * CFrame.Angles(math.rad(85+(10*i)),0,0) * CFrame.new(0,3.1,0)
					weldBetween(RootPart,wwpart)
					wwpart.Material = "Neon"
					if i <= 18 then
						wwpart.CanCollide = false
					end
					wwpart.Color = Color3.new()
					wwpart.Name = randomstring()
					wwpart.Parent = ww
				end
				ww.Parent = Character
				coroutine.resume(coroutine.create(function()
					repeat if stopeverything then wait(math.huge) end 
						for i,v in pairs(ww:GetChildren()) do 
							v.Color = GUN.NeonParts.Color 
						end 
						swait() 
					until attack or Anim ~= "Idle" or taunt.Value ~= "FAST BOIII"
					alreadyfixing = true
					ww:Destroy()
					alreadyfixing = false
				end))
			end
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.2) * CFrame.Angles(math.rad(-sine*6),math.rad(0),math.rad(0)),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0,.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-75*math.sin(sine/5)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(75*math.sin(sine/5)),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(sine/5)),math.rad(90),math.rad(0)),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(sine/5)),math.rad(-90),math.rad(0)),.25)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-0.2) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.25/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.75/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.75/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(75*math.sin(sine/2)),math.rad(90),math.rad(0)),1)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-75*math.sin(sine/2)),math.rad(-90),math.rad(0)),1)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
					GUN.Base.Transparency = 1
					GUN.GunAdditions.Transparency = 1
					GUN.NeonParts.Transparency = 1
				end
				Humanoid.WalkSpeed = walkspeed*6
			else
				GUN.Base.Transparency = 0
				GUN.GunAdditions.Transparency = 0
				GUN.NeonParts.Transparency = 0
			end
		else
			if attack == false then
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 1
			end
			if taunt.Value == "Fave" then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.3,0.7,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-135)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.9,-1.9,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
			if taunt.Value == "Krump" then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			elseif taunt.Value == "OOOOO" then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0*CFrame.new(math.random(-1,1)/2,math.random(-1,1)/2,math.random(-1,1)/2)*CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),0),1)
				Neck.C0 = Clerp(Neck.C0,nc0,1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(2,0,0) * rscp * CFrame.Angles(math.rad(-90),0,0),1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-2,0,0) * lscp * CFrame.Angles(math.rad(-90),0,0),1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-2,0),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
				LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1)
			end
		end
	end
	swait()
end
