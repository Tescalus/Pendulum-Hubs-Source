if syn then
    local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Synapse X detected!";
    Text = "Synapse X has been detected! Running new reanimation with R15 support and R6 support. Please wait a few moments...";
    Duration = 5;
})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua"))()
    else
        local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Other executor detected!";
    Text = "Unfortunately, because you are not using Synapse X, you cannot use the new reanimation. You will only have R6 support with fling. You can buy Synapse X at https://x.synapse.to";
    Duration = 5;
})
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
warn("Netless Activated!")
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character



bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
     return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

     bbv = Instance.new("BodyPosition",bhandle)
     bbv.Position = char.Torso.CFrame.p
   
     
     
     mouse.Button1Down:Connect(function()
         if dead == false then
        lt = false
        ltt = false
     bbav = Instance.new("BodyAngularVelocity",bhandle)
     bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
     bbav.P = 1000000000000000000000000000
     bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
     game:GetService("Debris"):AddItem(bbav,0.1)
        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
              --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
            if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
            --repeat 
            game:GetService("RunService").RenderStepped:Wait()
            bbv.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            bhandle.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
            wait(1)
            --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
            
            else
       -- repeat 
        game:GetService("RunService").RenderStepped:Wait()
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(0,26,0)
         end
    end)

 plr:GetMouse().Button1Down:Connect(function()
attackingwithhrp = true	
end)

 
plr:GetMouse().Button1Up:Connect(function()
attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
repeat wait() until attackingwithhrp == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
until attackingwithhrp == false
end)
end
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
sick.SoundId = "rbxassetid://1110421128"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 3
sick:Play()
local target = nil

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

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end


--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "Template"
Weapon_Name = "Add-ons"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional white"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional white"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional white"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional white"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional white"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional white"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional white"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional white"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional white"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional white"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional white"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional white"); --Background for the abilities.
}


Player_Size = 1 --Size of the player.
Animation_Speed = 1
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 75
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
local acs = Instance.new("Part")
acs.CanCollide = false
acs.Anchored = false
acs.Size = Vector3.new(0,0,0)
acs.CFrame = attachmentpart.CFrame
acs.Parent = Character
acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
if TYPE == "Gem" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Skull" then
	local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Eye" then
	local acs = CreatePart(3, Character, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
weldBetween(PART,acs)
end
end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DISABLEJUMPING = false
local HASBEENBLOCKED = false
local STUNDELAYNUMBER = 0
local MANADELAYNUMBER = 0
local SECONDARYMANADELAYNUMBER = 0
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", nil)
WEAPONGUI.Name = "Weapon GUI"
local WEAPONTOOL = IT("HopperBin", nil)
WEAPONTOOL.Name = Weapon_Name
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true

--//=================================\\
--\\=================================//

--//=================================\\
--||			  STATS
--\\=================================//

if Character:FindFirstChild("Stats") ~= nil then
Character:FindFirstChild("Stats").Parent = nil
end

local Stats = IT("Folder", nil)
Stats.Name = "Stats"
local ChangeStat = IT("Folder", Stats)
ChangeStat.Name = "ChangeStat"
local Defense = IT("NumberValue", Stats)
Defense.Name = "Defense"
Defense.Value = 1
local Movement = IT("NumberValue", Stats)
Movement.Name = "Movement"
Movement.Value = 1
local Damage = IT("NumberValue", Stats)
Damage.Name = "Damage"
Damage.Value = 0
local Mana = IT("NumberValue", Stats)
Mana.Name = "Mana"
Mana.Value = 0
local SecondaryMana = IT("NumberValue", Stats)
SecondaryMana.Name = "SecondaryMana"
SecondaryMana.Value = 0
local CanCrit = IT("BoolValue", Stats)
CanCrit.Name = "CanCrit"
CanCrit.Value = false
local CritChance = IT("NumberValue", Stats)
CritChance.Name = "CritChance"
CritChance.Value = 20
local CanPenetrateArmor = IT("BoolValue", Stats)
CanPenetrateArmor.Name = "CanPenetrateArmor"
CanPenetrateArmor.Value = false
local AntiTeamKill = IT("BoolValue", Stats)
AntiTeamKill.Name = "AntiTeamKill"
AntiTeamKill.Value = false
local Rooted = IT("BoolValue", Stats)
Rooted.Name = "Rooted"
Rooted.Value = false
local Block = IT("BoolValue", Stats)
Block.Name = "Block"
Block.Value = false
local RecentEnemy = IT("ObjectValue", Stats)
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Value = nil
local StaggerHit = IT("BoolValue", Stats)
StaggerHit.Name = "StaggerHit"
StaggerHit.Value = false
local Stagger = IT("BoolValue", Stats)
Stagger.Name = "Stagger"
Stagger.Value = false
local Stun = IT("BoolValue", Stats)
Stun.Name = "Stun"
Stun.Value = false
local StunValue = IT("NumberValue", Stats)
StunValue.Name = "StunValue"
StunValue.Value = 0


--//=================================\\
--\\=================================//


abss = Instance.new("BillboardGui")
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
abss.AlwaysOnTop = true
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0.35,0,0.35,0)
img2.Size = UDim2.new(0.3,0,0.3,0)
img2.Image = "rbxassetid://108413215"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(1,1,1)

local boop = nil


--//=================================\\
--|| 	     DEBUFFS / BUFFS
--\\=================================//

local DEFENSECHANGE1 = IT("NumberValue", ChangeStat)
DEFENSECHANGE1.Name = "ChangeDefense"
DEFENSECHANGE1.Value = 0

local MOVEMENTCHANGE1 = IT("NumberValue", nil)
MOVEMENTCHANGE1.Name = "ChangeMovement"
MOVEMENTCHANGE1.Value = 0

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
	label.TextColor3 = C3(255, 255, 255)
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = true
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

function CreateSound(ID, PARENT, VOLUME, PITCH)
	coroutine.resume(coroutine.create(function()
		local NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function Lightning(POSITION1, POSITION2, MULTIPLIERTIME, LIGHTNINGDELAY, OFFSET, BRICKCOLOR, MATERIAL, SIZE, TRANSPARENCY, LASTINGTIME)
	local MAGNITUDE = (POSITION1 - POSITION2).magnitude 
	local CURRENTPOSITION = POSITION1
	local LIGHTNINGOFFSET = {-OFFSET, OFFSET}
	coroutine.resume(coroutine.create(function()
		for i = 1, MULTIPLIERTIME do 
			local LIGHTNINGPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR,"Effect", VT(SIZE * Player_Size, SIZE * Player_Size, MAGNITUDE / MULTIPLIERTIME))
			LIGHTNINGPART.Anchored = true
			local LIGHTNINGOFFSET2 = VT(LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)]) 
			local LIGHTNINGPOSITION1 = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME).p + LIGHTNINGOFFSET2
			if MULTIPLIERTIME == i then 
				local LIGHTNINGMAGNITUDE1 = (CURRENTPOSITION - POSITION2).magnitude
				LIGHTNINGPART.Size = VT(SIZE * Player_Size, SIZE * Player_Size, LIGHTNINGMAGNITUDE1)
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, -LIGHTNINGMAGNITUDE1 / 2)
			else
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, LIGHTNINGPOSITION1) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2)
			end
			CURRENTPOSITION=LIGHTNINGPART.CFrame * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2).p
			game.Debris:AddItem(LIGHTNINGPART, LASTINGTIME)
			coroutine.resume(coroutine.create(function()
				while LIGHTNINGPART.Transparency ~= 1 do
					--local StartTransparency = tra
					for i=0, 1, LASTINGTIME do
						Swait()
						LIGHTNINGPART.Transparency = LIGHTNINGPART.Transparency + (0.1 / LASTINGTIME)
					end
				end
			end))
		Swait(LIGHTNINGDELAY / Animation_Speed)
		end
	end))
end

function MagicBlock(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSphere(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Sphere", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCylinder(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("CylinderMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicHead(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Head", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicRing(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "3270017", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicWave(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "20329976", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), VT(0, 0, (-0.1 * Z1)) + (OFFSET * Player_Size))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Offset = VT(0, 0, (-0.1 * MESH.Scale.Z))
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCrystal(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "9756362", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSwirl(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1051557", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSharpCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1778999", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1033714", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSpikedCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1323306", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1078075", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSkull(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function ElectricEffect(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X * Player_Size, Y * Player_Size, Z * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local XVALUE = MRANDOM()
	local YVALUE = MRANDOM()
	local ZVALUE = MRANDOM()
	coroutine.resume(coroutine.create(function(PART, MESH, THEXVALUE, THEYVALUE, THEZVALUE)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			THEXVALUE = THEXVALUE - 0.1 * (delay * 10)
			THEYVALUE = THEYVALUE - 0.1 * (delay * 10)
			THEZVALUE = THEZVALUE - 0.1 * (delay * 10)
			MESH.Scale = MESH.Scale + VT(THEXVALUE * Player_Size, THEYVALUE * Player_Size, THEZVALUE * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH, XVALUE, YVALUE, ZVALUE)
end

function TrailEffect(BRICKCOLOR, MATERIAL, CURRENTCFRAME, OLDCFRAME, MESHTYPE, REFLECTANCE, SIZE, ROTATION, X, Y, Z, delay)
	local MAGNITUDECFRAME = (CURRENTCFRAME.p - OLDCFRAME.p).magnitude
	if MAGNITUDECFRAME > (1 / 100) then
		local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT(1, MAGNITUDECFRAME, 1))
		EFFECTPART.Anchored = true
		EFFECTPART.CFrame = CF((CURRENTCFRAME.p + OLDCFRAME.p) / 2, OLDCFRAME.p) * ANGLES(RAD(90), 0, 0)
		local THEMESHTYPE = "BlockMesh"
		if MESHTYPE == "Cylinder" then
			THEMESHTYPE = "CylinderMesh"
		end
		local EFFECTMESH = CreateMesh(THEMESHTYPE, EFFECTPART, "", "", "", VT(0 + SIZE * Player_Size, 1, 0 + SIZE * Player_Size), VT(0, 0, 0))
		game:GetService("Debris"):AddItem(EFFECTPART, 10)
		coroutine.resume(coroutine.create(function(PART, MESH)
			for i = 0, 1, delay do
				Swait()
				PART.CFrame = PART.CFrame * ROTATION
				PART.Transparency = i
				MESH.Scale = MESH.Scale + VT(X * Player_Size, Y * Player_Size, Z * Player_Size)
			end
			PART.Parent = nil
		end), EFFECTPART, EFFECTMESH)
	end
end

function ClangEffect(BRICKCOLOR, MATERIAL, CFRAME, ANGLE, DURATION, SIZE, POWER, REFLECTANCE, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 1, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(0, 0, 0), VT(0, 0, 0))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local THELASTPOINT = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, DURATION do
			Swait()
			PART.CFrame = PART.CFrame * ANGLES(RAD(ANGLE), 0, 0) * CF(0, POWER * Player_Size, 0)
			TrailEffect(BRICKCOLOR, MATERIAL, PART.CFrame, THELASTPOINT, "Cylinder", REFLECTANCE, SIZE * Player_Size, ANGLES(0, 0, 0), X * Player_Size, Y * Player_Size, Z * Player_Size, delay)
			THELASTPOINT = PART.CFrame
		end
		PART.Parent = nil
	end), EFFECTPART)
end

--local list={}
function Triangle(Color, Material, a, b, c, delay)
	local edge1 = (c - a):Dot((b - a).unit)
	local edge2 = (a - b):Dot((c - b).unit)
	local edge3 = (b - c):Dot((a - c).unit)
	if edge1 <= (b - a).magnitude and edge1 >= 0 then
		a, b, c=a, b, c
	elseif edge2 <= (c - b).magnitude and edge2 >= 0 then
		a, b, c=b, c, a
	elseif edge3 <= (a - c).magnitude and edge3 >= 0 then
		a, b, c=c, a, b
	else
		assert(false, "unreachable")
	end
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, - (b - a).unit)
	if len1 > 1 / 100 then
		local sz = VT(0.2, width, len1)
		local w1 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w1, "Wedge", "", "", VT(0, 1, 1) * sz / w1.Size, VT(0, 0, 0))
		w1.Anchored = true
		w1.CFrame = maincf * ANGLES(math.pi, 0, math.pi / 2) * CF(0, width / 2, len1 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w1.Transparency = i
			end
			w1.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w1, 10)
		--table.insert(list, w1)
	end
	if len2 > 1 / 100 then
		local sz = VT(0.2, width, len2)
		local w2 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w2, "Wedge", "", "", VT(0, 1, 1) * sz / w2.Size, VT(0, 0, 0))
		w2.Anchored = true
		w2.CFrame = maincf * ANGLES(math.pi, math.pi, -math.pi / 2) * CF(0, width / 2, -len1 - len2 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w2.Transparency = i
			end
			w2.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w2, 10)
		--table.insert(list, w2)
	end
	--return unpack(list)
end

--[[Usage:
	local Pos = Part
	local Offset = Part.CFrame * CF(0, 0, 0)
	local Color = "Institutional white"
	local Material = "Neon"
	local TheDelay = 0.01
	local Height = 4
	BLCF = Offset
	if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
		local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		SCFR = BLCF
	elseif not SCFR then
		SCFR = BLCF
	end
--
BLCF = nil
SCFR = nil
--]]

--//=================================\\
--\\=================================//


--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

if Player_Size ~= 1 then
	for _, v in pairs (Weapon:GetChildren()) do
		if v.ClassName == "Motor" or v.ClassName == "Weld" or v.ClassName == "Snap" then
			local p1 = v.Part1
			v.Part1 = nil
			local cf1, cf2, cf3, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12 = v.C1:components()
			v.C1 = CF(cf1 * Player_Size, cf2 * Player_Size, cf3 * Player_Size, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12)
			v.Part1 = p1
		elseif v.ClassName == "Part" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "SpecialMesh" or b.ClassName == "BlockMesh" then
					b.Scale = VT(b.Scale.x * Player_Size, b.Scale.y * Player_Size, b.Scale.z * Player_Size)
				end
			end
		end
	end
end

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

print(Class_Name.." loaded.")

--//=================================\\
--\\=================================//





--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SciFi"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 1
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end


--//=================================\\
--||			DAMAGING
--\\=================================//



function dealdamage(hit,min,max,maxstrength,beserk,critrate,critmultiplier)

end

function killnearest(position,range,maxstrength)
	
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//
if _G.R6God == true then
	local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
 
hrp.Name = "HumanoidRootPart"
hrp.Transparency = 0.5
hrp.Anchored = false
if hrp:FindFirstChildOfClass("AlignPosition") then
hrp:FindFirstChildOfClass("AlignPosition"):Destroy()
end
if hrp:FindFirstChildOfClass("AlignOrientation") then
hrp:FindFirstChildOfClass("AlignOrientation"):Destroy()
end
local bp = Instance.new("BodyPosition", hrp)
bp.Position = hrp.Position
bp.D = 9999999
bp.P = 999999999999999
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local flinger = Instance.new("BodyAngularVelocity",hrp)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(10000,10000,10000)
 
spawn(function()
while game:GetService("RunService").Heartbeat:Wait() do
bp.Position = game:GetService("Players").LocalPlayer.Character.Torso.Position
end
end)
end

function choosetarget()
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		target = Mouse.Target.Parent
		if boop ~= nil then
			boop:remove()
		end
		local targettorso = target:FindFirstChild("Torso") or target:FindFirstChild("UpperTorso")
			if targettorso ~= nil then
			boop = IT("Part",Effects)
			boop.Size = VT(0,0,0)
			boop.CanCollide = false
			boop.Transparency = 1
			boop.CFrame = targettorso.CFrame * CF(0,-0.75,0.8)
			weldBetween(targettorso,boop)
			local gui = abss:Clone()
			gui.Parent = boop
			gui.AlwaysOnTop = false
			gui.Enabled = true
		else
			target = nil
		end
	end
end

function assgrab()
	if target ~= nil then
		local targettorso = target:FindFirstChild("Torso") or target:FindFirstChild("UpperTorso")
		if targettorso ~= nil then
			ATTACK = true
			targettorso.Anchored = true
			Rooted = true
			CreateSound("889222890", Head, 10, 1)
			RootPart.CFrame = targettorso.CFrame * CF(0,0,3)
			Swait(100)
			if target ~= nil and targettorso ~= nil then
				for i = 1, 3 do
				CreateSound("948494432", targettorso, 10, 1)
				Swait(5)
				end
				if target ~= nil and targettorso ~= nil then
					Swait(15)
					RootPart.CFrame = targettorso.CFrame * CF(0,0,1.5)
					Swait(20)
					RootPart.CFrame = targettorso.CFrame * CF(0,0,3)
					ATTACK = false
					Rooted = false
					targettorso.Anchored = false
					local bomb = IT("Part",target)
					bomb.Size = VT(0,0,0)
					bomb.CFrame = boop.CFrame
					bomb.CanCollide = false
					local mesh = IT("SpecialMesh",bomb)
					mesh.MeshType = "FileMesh"
					mesh.MeshId = "rbxasset://fonts/timebomb.mesh"
					mesh.TextureId = "rbxasset://textures/bombtex.png"
					weldBetween(targettorso,bomb)
					CreateSound("138931042", targettorso, 10, 4)
					Swait(150)
					target:BreakJoints()
					local boom = Instance.new("Explosion",workspace)
					boom.Position = targettorso.Position
			 		CreateSound("691216625", targettorso, 50, 1)
					target = nil
				else
					Rooted = false
					ATTACK = false
				end
			else
				Rooted = false
				ATTACK = false
			end
		end
	end
end

function slash()
	ATTACK = true
	Rooted = true
	for i=0, 0.5, 0.1 / Animation_Speed do
		--Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		--HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	end
	local bomb = IT("Part",Effects)
	bomb.Size = VT(0,0,0)
	bomb.CFrame = RightArm.CFrame * CF(1.6,-1.2,0) * ANGLES(RAD(-90),RAD(0),RAD(-90))
	bomb.CanCollide = false
	bomb.Color = C3(123/255, 0, 123/255)
	local mesh = IT("SpecialMesh",bomb)
	mesh.MeshType = "FileMesh"
	mesh.Scale = VT(2,2,2)
	mesh.MeshId = "http://www.roblox.com/asset?id=156092238"
	weldBetween(RightArm,bomb)
	Swait(10)
	CreateSound("615910787", Torso, 5, MRANDOM(7, 12) / 10)
	Swait(5)
	for i = 1, 15 do
		killnearest(bomb.Position,6,150)
		RootPart.CFrame = RootPart.CFrame * CF(0,0,-3)
	end
	killnearest(bomb.Position,6,150)
	for i=0, 1, 0.1 / Animation_Speed do
		--Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(25)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-25)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		--HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1.1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	Swait(25)
	bomb:remove()
	ATTACK = false
	Rooted = false
end

function hurr()
	if target ~= nil then
		local targettorso = target:FindFirstChild("Torso") or target:FindFirstChild("UpperTorso")
		if targettorso ~= nil then
			Rooted = true
			ATTACK = true
			RootPart.CFrame = targettorso.CFrame * CF(0,0,3)
			for i = 1, 15 do
				Swait(3)
				RootPart.CFrame = targettorso.CFrame * CF(0,0,1)
				Swait(3)
				RootPart.CFrame = targettorso.CFrame * CF(0,0,3)
			end
			CreateSound("173137001", Head, 5, 1)
			target:BreakJoints()
			target = nil
			Rooted = false
			ATTACK = false
		end
	end
end

function beam(from,size)
	local sphere = Instance.new("Part",Effects)
	sphere.Size = VT(size*2,size*2,size*2)
	sphere.Material = "Neon"
	sphere.Shape = "Ball"
	sphere.Name = "Waft"
	sphere.Anchored = true
	sphere.Color = C3(80/255, 109/255, 84/255)
	sphere.CFrame = RootPart.CFrame * CF(0,0.5,-from)
	sphere.CanCollide = false
	local hit = sphere.Touched:connect(function(hit) 
		dealdamage(hit,0,0,0,true,0,0)
	end)
	--table.insert(Effects2,{Lazor,"Disappear",0.01,0.03,0,0.03,1})
	table.insert(Effects2,{sphere,"Disappear",0.01,0.03,0,0.03,1})
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

function FARTLAZOR()
	Rooted = true
	ATTACK = true
	for i=0, 2, 0.1 / Animation_Speed do
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0) * ANGLES(RAD(0), RAD(0), RAD(180)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0 * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0 * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	for i = 1, 25 do
		Swait()
		turnto(Mouse.Hit.p)
	end
	CreateSound("131314452", Effects, 10, 1)
	beam(50,50)
	Swait(50)
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

function MouseDown(Mouse)
	if ATTACK == false then
		choosetarget()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	if Key == "e" and ATTACK == false then
		assgrab()
	end
	if Key == "g" and ATTACK == false then
		slash()
	end
	if Key == "x" and ATTACK == false then
		FARTLAZOR()
	end
	if Key == "f" and ATTACK == false then
		hurr()
	end
end

function KeyUp(Key)
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
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)
		Rooted = true
		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()
		Swait()
		Rooted = false

local loop = 0

while true do
	Swait()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0 * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0 * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
if #Effects2>0 then
for e=1,#Effects2 do
if Effects2[e]~=nil then
local Thing=Effects2[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
local Part2=Thing[8]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Part2.CFrame
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*CF(0,.5,0)
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects2,e)
end
end
end
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
if target ~= nil then
	loop = loop + 1
	if loop == 35 then
		if target:FindFirstChild("HumanoidRootPart") then
			CreateSound("161164363", target.HumanoidRootPart, 10, 1.1)
		end
		loop = 0
	end
end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
