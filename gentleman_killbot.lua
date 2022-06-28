loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

-- padero#0001

local folder = game:GetObjects("rbxassetid://9208704446")[1]
folder.Parent = workspace.non

for _,v in pairs(folder:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Transparency = 1
    end
end

---------------------------
--/                     \--
-- Script By: 123jl123	 --
--\                     /--
---------------------------
--local remote = NS ([=[

local TweenService = game:GetService("TweenService")
FELOADLIBRARY = {}
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
local RbxUtility = FELOADLIBRARY
local Create = RbxUtility.Create


local Player = game.Players.LocalPlayer
    --[[local Mouse,mouse,UserInputService,ContextActionService
    do
        script.Parent = Player.Character
        local CAS = {Actions={}}
        local Event = Instance.new("RemoteEvent")
        Event.Name = "UserInput_Event"
        Event.Parent = Player.Character
        local fakeEvent = function()
            local t = {_fakeEvent=true}
            t.Connect = function(self,f)self.Function=f end
            t.connect = t.Connect
            return t
        end
    end ]]

EffectPack = folder.Extras:Clone()
folder.Extras:Destroy()

ZTfade=false 
ZT=false
OverClocking = false
local Jets = false
MHIT = Vector3.new()
Character= workspace.non
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
RootPart = Character["HumanoidRootPart"]
local Hold = false
local weps = false

local Anim="Idle"
local inairvel=0
local WalkAnimStep = 0
local sine = 0
local change = 1
Animstep = 0
WalkAnimMove=0.1
Combo = 0
local attack=false
local RJ = Character.HumanoidRootPart:FindFirstChild("RootJoint")
local Neck = Character.Torso:FindFirstChild("Neck")
local visn = 0
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14) 
local NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
IsXray = false
local spin = 1
local spinto = 1
local spinrad = 0

local forWFB = 0
local forWRL = 0
FF = Instance.new("ForceField",Character)
FF.Visible = false
FF.Name = "FatForce"
Effects=Instance.new("Folder",Character)
Effects.Name="Effects"
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
local cn = CFrame.new
mr=math.rad
mememode=false
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

local lastid= "http://www.roblox.com/asset/?id=2984992418"--1052695866
local s2=it("Sound",Torso)
local CurId = 1
s2.EmitterSize = 30
local s2c=s2:Clone()

playsong = true

s2.SoundId = lastid
if playsong == true then
	s2:play()		
elseif playsong == false then
	s2:stop()			
end
lastsongpos= 0

crosshair = Instance.new("BillboardGui",Character)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://578065407"
imgl.BackgroundTransparency = 1
imgl.ImageTransparency = .7
imgl.ImageColor3 = Color3.new(1,1,1)
crosshair.StudsOffset = Vector3.new(0,0,-1)

--//=================================\\
--||          LOCAL IDS
--\\=================================//

local GROWL = 1544355717
local ROAR = 528589382
local ECHOBLAST = 376976397
local CAST = 459523898
local ALCHEMY = 424195979
local BUILDUP = 698824317
local BIGBUILDUP = 874376217
local IMPACT = 231917744
local LARGE_EXPLOSION = 168513088
local TURNUP = 299058146

if Character:FindFirstChild("Animate")then
	Character.Animate:Destroy()
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end




CFuncs = {
	Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)

		local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
		RemoveOutlines(Part)
		return Part
	end
	}
	, 
	Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)

		local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
		if Mesh == "SpecialMesh" then
			Msh.MeshType = MeshType
			Msh.MeshId = MeshId
		end
		return Msh
	end
	}
	, 
	Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)

		local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
		if Mesh == "SpecialMesh" then
			Msh.MeshType = MeshType
			Msh.MeshId = MeshId
		end
		return Msh
	end
	}
	, 
	Weld = {Create = function(Parent, Part0, Part1, C0, C1)

		local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
		return Weld
	end
	}
	, 
	Sound = {Create = function(id, par, vol, pit)

		coroutine.resume(coroutine.create(function()

			local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId  = "http://www.roblox.com/asset/?id="..id, Parent = par or workspace})
			wait()
			S:play()
			game:GetService("Debris"):AddItem(S, 6)
		end
		))
	end
	}
	, 
	ParticleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)

		local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
		return fp
	end
	}
}





coroutine.resume(coroutine.create(function()
	if Head:FindFirstChildOfClass("Decal") then
		local face = Head:FindFirstChildOfClass("Decal")
		face:Destroy()
	end

end))








coroutine.resume(coroutine.create(function()
	Character:WaitForChild("Sound"):Destroy()
end))


--139248234
--//=================================\\
--|| SAZERENOS ARTIFICIAL HEARTBEAT
--\\=================================//
Frame_Speed = 1 / 30
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

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end


---------------
--[Functions]--
---------------
so = function(id, par, vol, pit)

	CFuncs.Sound.Create(id, par, vol, pit)


end

function weld(parent,part0,part1,c0)
	local weld=it("Weld") 
	weld.Parent=parent
	weld.Part0=part0 
	weld.Part1=part1 
	weld.C0=c0
	return weld
end
function joint(parent,part0,part1,c0)
	local weld=it("Motor6D") 
	weld.Parent=parent
	weld.Part0=part0 
	weld.Part1=part1 
	weld.C0=c0
	return weld
end
function MakeJoint(parent,part0,part1,c0)
	local weld=it("Motor6D") 
	weld.Parent=parent
	weld.Part0=part0 
	weld.Part1=part1 
	weld.C0=c0
	return weld
end

ArmorParts = {}
--ArmorParts = {}
function WeldAllTo(Part1,Part2,scan,Extra)
	local EXCF = Part2.CFrame * Extra	
	for i, v3 in pairs(scan:GetDescendants()) do
		if v3:isA("BasePart") then	
			local STW=weld(v3,v3,Part1,EXCF:toObjectSpace(v3.CFrame):inverse() )
			v3.Anchored=false
			v3.Massless = true
			v3.CanCollide=false						
			v3.Parent = Part1			
			v3.Locked = true	
			if not v3:FindFirstChild("Destroy") then
				table.insert(ArmorParts,{Part = v3,Par = v3.Parent,Col = v3.Color,Mat=v3.Material.Name })	
			else
				v3:Destroy()	
			end				
		end
	end
	Part1.Transparency=1
	--Part2:Destroy()
end



function JointAllTo(Part1,Part2,scan,Extra)
	local EXCF = Part2.CFrame * Extra	
	for i, v3 in pairs(scan:GetDescendants()) do
		if v3:isA("BasePart") then	
			local STW=joint(v3,v3,Part1,EXCF:toObjectSpace(v3.CFrame):inverse() )
			v3.Anchored=false
			v3.Massless = true
			v3.CanCollide=false						
			v3.Parent = Part1			
			v3.Locked = true	
			if not v3:FindFirstChild("Destroy") then
				--	table.insert(ArmorParts,{Part = v3,Par = v3.Parent,Col = v3.Color,Mat=v3.Material.Name })	
			else
				v3:Destroy()	
			end				
		end
	end
	Part1.Transparency=1
	--Part2:Destroy()
end







--------------------------------------------H1a
local ChestPart = EffectPack.Part:Clone()
ChestPart.Parent = Character
ChestPart.Name = "H1a"
H1a=weld(Torso,Torso,ChestPart,cf(0,.5,-.4))

--------------------------------------------MissileBox
local MissileBox = EffectPack.Part:Clone()
MissileBox.Parent = Character
MissileBox.Name = "MissileBox"
MX1w=weld(Torso,Torso,MissileBox,cf(0,-.7,-.25))
--------------------------------------------MiniGun

local MiniGun = EffectPack.Part:Clone()
MiniGun.Parent = Character
MiniGun.Name = "MiniGun"
FlameW=weld(RightArm,RightArm,MiniGun,cf(0,0,0))
--------------------------------------------Hand

local SpinnyThingy = EffectPack.Part:Clone()
SpinnyThingy.Parent = Character
SpinnyThingy.Name = "SpinnyThingy"
SpinnyThingyWeld=weld(folder.Armor.MiniGun.SpinPos,folder.Armor.MiniGun.SpinPos,SpinnyThingy,cf(0,0,0))
--------------------------------------------Hand
local Finger1 = EffectPack.Part:Clone()
Finger1.Parent = Character
Finger1.Name = "RightLow1"
Fg1=weld(RightArm,RightArm,Finger1,cf(0,0,0))
--------------------------------------------Hand
local Finger2 = EffectPack.Part:Clone()
Finger2.Parent = Character
Finger2.Name = "RightLow2"
Fg2=weld(RightArm,RightArm,Finger2,cf(0,0,0))
--------------------------------------------Hand
local Finger3 = EffectPack.Part:Clone()
Finger3.Parent = Character
Finger3.Name = "RightLow3"
Fg3=weld(RightArm,RightArm,Finger3,cf(0,0,0))
--------------------------------------------Hand
local Finger4 = EffectPack.Part:Clone()
Finger4.Parent = Character
Finger4.Name = "RightLow4"
Fg4=weld(RightArm,RightArm,Finger4,cf(0,0,0))
--------------------------------------------Boot
local Boot1 = EffectPack.Part:Clone()
Boot1.Parent = Character
Boot1.Name = "RightFrontBoot"
RB1=weld(RightLeg,RightLeg,Boot1,cf(0,0,0))
--------------------------------------------Boot
local Boot2 = EffectPack.Part:Clone()
Boot2.Parent = Character
Boot2.Name = "RightBackBoot"
RB2=weld(RightLeg,RightLeg,Boot2,cf(0,0,0))
--------------------------------------------Boot
local Boot3 = EffectPack.Part:Clone()
Boot3.Parent = Character
Boot3.Name = "LeftFrontBoot"
LB1=weld(LeftLeg,LeftLeg,Boot3,cf(0,0,0))
--------------------------------------------Boot
local Boot4 = EffectPack.Part:Clone()
Boot4.Parent = Character
Boot4.Name = "LeftBackBoot"
LB2=weld(LeftLeg,LeftLeg,Boot4,cf(0,0,0))
--------------------------------------------LeftHand
local LHP = EffectPack.Part:Clone()
LHP.Parent = Character
LHP.Name = "LeftHand"
LHP2=weld(LeftArm,LeftArm,LHP,cf(0,0,0))
--------------------------------------------end


for _,v in pairs(folder.Armor:children()) do
	if v:IsA("Model")  then

		if  Character:FindFirstChild(""..v.Name) then
			local Part1=Character:FindFirstChild(""..v.Name)
			local Part2=v.Handle

			WeldAllTo(Part1,Part2,v,CFrame.new(0,0,0))

		end


	end
end	

rayCast = function(Pos, Dir, Max, Ignore)

	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

function SetTween(SPart,CFr,MoveStyle2,outorin2,AnimTime)
	local MoveStyle = Enum.EasingStyle[MoveStyle2]
	local outorin = Enum.EasingDirection[outorin2]


	local dahspeed=1
	if attack == true and mememode == true then
		dahspeed=5
	end

	if SPart.Name=="Bullet" then
		dahspeed=1	
	end

	local tweeningInformation = TweenInfo.new(
		AnimTime/dahspeed,	
		MoveStyle,
		outorin,
		0,
		false,
		0
	)
	local MoveCF = CFr
	local tweenanim = TweenService:Create(SPart,tweeningInformation,MoveCF)
	tweenanim:Play()
end

function GatherAllInstances(Parent,ig)
	local Instances = {}
	local Ignore=nil
	if	ig ~= nil then
		Ignore = ig	
	end

	local function GatherInstances(Parent,Ignore)
		for i, v in pairs(Parent:GetChildren()) do

			if v ~= Ignore then
				GatherInstances(v,Ignore)
				table.insert(Instances, v) end
		end
	end
	GatherInstances(Parent,Ignore)
	return Instances
end









function WeldAllTo(Part1,Part2,Extra)

	local EXCF = Part2.CFrame * Extra	

	for i, v3 in pairs(GatherAllInstances(Part2)) do
		if v3:isA("BasePart") then


			local STW=weld(v3,v3,Part1,EXCF:toObjectSpace(v3.CFrame):inverse() )


			v3.Anchored=false
			--v3.Transparency=0
			v3.CanCollide=false	

			v3.Parent = Part1					

		end
	end


	Part2:Destroy()

end
local SToneTexture = Create("Texture")({


	Texture = "http://www.roblox.com/asset/?id=1693385655",
	Color3 = Color3.new(17/255, 17/255, 17/255),

})

function AddStoneTexture(part)
	coroutine.resume(coroutine.create(function()
		for i = 0,6,1 do
			local Tx = SToneTexture:Clone()
			Tx.Face = i
			Tx.Parent=part
		end
	end))
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



function Tran(Num)
	local GivenLeter = ""
	if Num == "1" then
		GivenLeter = "a"	
	elseif Num == "2" then
		GivenLeter = "b"
	elseif Num == "3" then
		GivenLeter = "c"
	elseif Num == "4" then
		GivenLeter = "d"
	elseif Num == "5" then
		GivenLeter = "e"
	elseif Num == "6" then
		GivenLeter = "f"
	elseif Num == "7" then
		GivenLeter = "g"
	elseif Num == "8" then
		GivenLeter = "h"
	elseif Num == "9" then
		GivenLeter = "i"
	elseif Num == "10" then
		GivenLeter = "j"
	elseif Num == "11" then
		GivenLeter = "k"
	elseif Num == "12" then
		GivenLeter = "l"
	elseif Num == "13" then
		GivenLeter = "m"
	elseif Num == "14" then
		GivenLeter = "n"
	elseif Num == "15" then
		GivenLeter = "o"
	elseif Num == "16" then
		GivenLeter = "p"
	elseif Num == "17" then
		GivenLeter = "q"
	elseif Num == "18" then
		GivenLeter = "r"
	elseif Num == "19" then
		GivenLeter = "s"
	elseif Num == "20" then
		GivenLeter = "t"
	elseif Num == "21" then
		GivenLeter = "u"
	elseif Num == "22" then
		GivenLeter = "v"
	elseif Num == "23" then
		GivenLeter = "w"
	elseif Num == "24" then
		GivenLeter = "x"
	elseif Num == "25" then
		GivenLeter = "y"
	elseif Num == "26" then
		GivenLeter = "z"
	elseif Num == "27" then
		GivenLeter = "_"
	elseif Num == "28" then
		GivenLeter = "0"
	elseif Num == "29" then
		GivenLeter = "1"
	elseif Num == "30" then
		GivenLeter = "2"	
	elseif Num == "31" then
		GivenLeter = "3"
	elseif Num == "32" then
		GivenLeter = "4"
	elseif Num == "33" then
		GivenLeter = "5"
	elseif Num == "34" then
		GivenLeter = "6"
	elseif Num == "35" then
		GivenLeter = "7"
	elseif Num == "36" then
		GivenLeter = "8"
	elseif Num == "37" then
		GivenLeter = "9"
	end
	return GivenLeter

end

function MaybeOk(Mode,Extra)
	local ReturningValue = ""
	if Mode == 1 then



		--	v.C0 = CFrame.new(1,1,1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

		--print(v.C0)
		local GivenText	= ""	
		local	msg = 	Extra
		local Txt = ""
		local FoundTime=0
		local LastFound = 0
		delay(wait(0),function()
			for v3 = 1, #msg do

				if string.sub(msg,0+v3,v3) == ","	then

					local TheN = string.sub(msg,LastFound,v3-1)


					local NumTranslate = Tran(string.sub(msg,LastFound,v3-1))



					FoundTime = FoundTime + 1


					GivenText = GivenText..NumTranslate

					LastFound=v3+1
					Txt=""
				end
				Txt=string.sub(msg,1,v3)		


				--    Gui.ExtentsOffset = Vector3.new(0,3,0)


				--  Gui.ExtentsOffset = Vector3.new(0,3,0)                    
				wait()
				-- Gui.ExtentsOffset = Vector3.new(0,3,0)   
			end;		

			ReturningValue=GivenText
			for v3 = 1, #Txt do
				Txt=string.sub(msg,-1,v3)







			end;
			--   Gui:remove()
		end)	


	elseif Mode == 2 then

		print("fat")
	end



	while ReturningValue == "" do wait() end
	return ReturningValue

end

function CreateMesh2(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
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

function CreatePart2(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
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

local S = IT("Sound")
function CreateSound2(ID, PARENT, VOLUME, PITCH, DOESLOOP)
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
			repeat task.wait() until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end


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
		local EFFECT = CreatePart2(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound2(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Cylinder" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Cylinder", "", "", SIZE, VT(0,0,0))	
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Cube" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)	

		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crown" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "173770780", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then

				SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",TIME/60)
			else

				SetTween(EFFECT,{CFrame = CFRAME},"Linear","InOut",0)

			end



			wait()

			SetTween(EFFECT,{Transparency = EFFECT.Transparency - TRANS},"Linear","InOut",TIME/60)

			if TYPE == "Block" then

				SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",0)
			else

				SetTween(EFFECT,{CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))},"Linear","InOut",0)

			end
			if MOVEDIRECTION ~= nil then
				local ORI = EFFECT.Orientation

				SetTween(EFFECT,{CFrame=CF(MOVEDIRECTION)},"Linear","InOut",TIME/60)
				SetTween(EFFECT,{Orientation=ORI},"Linear","InOut",TIME/60)


			end
			MSH.Scale = MSH.Scale - GROWTH/TIME
			SetTween(MSH,{Scale=ENDSIZE},"Linear","InOut",TIME/60)
			if TYPE == "Wave" then

				SetTween(MSH,{Offset=VT(0,0,-MSH.Scale.X/8)},"Linear","InOut",TIME/60)
			end
			for LOOP = 1, TIME+1 do
				wait(.05)

				--SetTween(EFFECT,{Transparency = EFFECT.Transparency - TRANS/TIME},"Linear","InOut",0)


				if TYPE == "Block" then

					--				SetTween(EFFECT,{CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))},"Linear","InOut",0)
				else

					--				SetTween(EFFECT,{CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))},"Linear","InOut",0)

				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation

					--					SetTween(EFFECT,{CFrame=CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)},"Linear","InOut",0)
					--						SetTween(EFFECT,{Orientation=ORI},"Linear","InOut",0)


				end
			end
			game:GetService("Debris"):AddItem(EFFECT, 15)
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat task.wait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end	
----------------------
--[End Of Functions]--
----------------------






------------------
--[Gun]--
------------------












function CreatePart( Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
end

------------------
--[End of Gun]--
------------------

---------------
--[Particles]--
---------------


local Particle2_1 = Create("ParticleEmitter"){
	Color = ColorSequence.new(Color3.new (1,1,1),  Color3.new (170/255, 255/255, 255/255)),
	Transparency =  NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.75,.4),NumberSequenceKeypoint.new(1,1)}),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,.0)}),
	Texture = "rbxassetid://241922778",
	Lifetime = NumberRange.new(0.55,0.95),
	Rate = 100,
	VelocitySpread = 180,
	Rotation = NumberRange.new(0),
	RotSpeed = NumberRange.new(-200,200),
	Speed = NumberRange.new(8.0),
	LightEmission = 1,
	LockedToPart = false,
	Acceleration = Vector3.new(0, 0, 0),
	EmissionDirection = "Top",
	Drag = 4,
	Enabled = false
}


local BEGONE_Particle = Create("ParticleEmitter"){
	Color = ColorSequence.new(Color3.new (1,1,1), Color3.new (1, 1, 1)),
	Transparency =  NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(0.5,.2),NumberSequenceKeypoint.new(1,1)}),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.15,1.5),NumberSequenceKeypoint.new(.75,1.5),NumberSequenceKeypoint.new(1,0)}),
	Texture = "rbxassetid://936193661",
	Lifetime = NumberRange.new(1.5),
	Rate = 100,
	VelocitySpread = 0,
	Rotation = NumberRange.new(0),
	RotSpeed = NumberRange.new(-10,10),
	Speed = NumberRange.new(0),
	LightEmission = .25,
	LockedToPart = true,
	Acceleration = Vector3.new(0, -0, 0),
	EmissionDirection = "Top",
	Drag = 4,
	ZOffset = 1,
	Enabled = false
}


----------------------
--[End Of Particles]--
----------------------

function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans,SizeAdd,Time,Dely) -- Lightning module
        --[[Part0 = Vector3 (Start pos)
            Part1 = Vector3 (End pos)
            Times = number (Amount of lightning parts)
            Offset = number (Offset)
            Color = color (brickcolor value)
            Thickness = number (thickness)
            Trans = number (transparency)
        ]]--
	coroutine.resume(coroutine.create(function()
		local magz = (Part0 - Part1).magnitude
		local curpos = Part0
		local trz = {-Offset,Offset}
		local Time2 = 0.07
		if Time ~= nil then
			Time2 = Time	
		end
		for i=1,Times do
			local li = Instance.new("Part", Torso)
			li.Name = "Lightning"
			li.TopSurface =0
			li.Material = "Neon"
			li.BottomSurface = 0
			li.Anchored = true
			li.Locked = true
			li.Transparency = Trans or 0
			li.BrickColor = Color
			li.formFactor = "Custom"
			li.CanCollide = false
			--	MakeForm(li,"Ball")
			li.Size = Vector3.new(0,0,magz/Times)
			local Offzet = Vector3.new(trz[(math.random(1,2)*100)/100],trz[(math.random(1,2)*100)/100],trz[(math.random(1,2)*100)/100])
			local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
			if Times == i then
				local magz2 = (curpos - Part1).magnitude
				li.Size = Vector3.new(0,0,magz2)
				SetTween(li,{Size = VT(Thickness*(1-(i/Times+.1)),Thickness*(1-(i/Times+.1)),magz2),Transparency=1},"Back","Out",Time)

				li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
			else
				li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)		
				SetTween(li,{Size = VT(Thickness*(1-(i/Times)),Thickness*(1-(i/Times)),magz/Times),Transparency=1},"Back","Out",Time)

			end
			curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
			coroutine.resume(coroutine.create(function()
				wait(Time)
				li:Destroy()
			end))
			--game.Debris:AddItem(li,Time)

			if Dely ~= nil then
				Swait(Dely)
			end


			--BlockEffect(Color, li.CFrame, li.Size.X*20, li.Size.Y*20, li.Size.Z*20, SizeAdd, SizeAdd, 0, Time2,2)
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
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
Debris = game:GetService("Debris")

-----------------



Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)

	if hit.Parent == nil then
		return 
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			if	h.Health > 0.0001 then
				h = v else   end
		end
	end

	if h == nil then
		return 
	elseif h ~= nil and h.Health < 0.001 then
		return 
	elseif  h ~= nil and h.Parent:FindFirstChild("Fly away") then
		return
	end


	--gg

	--local FoundTorso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")	
	coroutine.resume(coroutine.create(function()	
		if h.Health >9999999 and minim <9999 and Type~= "IgnoreType" and(h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")) and not h.Parent:FindFirstChild("Fly away")then


			local FATag = Instance.new("Model",h.Parent)

			FATag.Name = "Fly away"
			game:GetService("Debris"):AddItem(FATag, 2.5)	


			--[[for _,v in pairs(h.Parent:children()) do
				if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
					v.Anchored=true
				end
			end	]]

			wait(.25)

			--[[if 	h.Parent:FindFirstChildOfClass("Body Colors")then
				h.Parent:FindFirstChildOfClass("Body Colors"):Destroy()
			end]]


			local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")

			coroutine.resume(coroutine.create(function()	


				local YourGone = Instance.new("Part")
				YourGone.Reflectance = 0
				YourGone.Transparency = 1
				YourGone.CanCollide = false
				YourGone.Locked = true
				YourGone.Anchored=true
				YourGone.BrickColor = BrickColor.new("Really blue")
				YourGone.Name = "YourGone"
				YourGone.Size = Vector3.new()
				YourGone.Material = "SmoothPlastic"
				YourGone:BreakJoints()
				YourGone.Parent = FoundTorso		
				YourGone.CFrame = FoundTorso.CFrame

				local NewParticle = Instance.new("ParticleEmitter")
				NewParticle.Parent = YourGone
				NewParticle.Acceleration =  Vector3.new(0,0,0)
				NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,.0)})
				NewParticle.Color = ColorSequence.new(Color3.new (1,0,0), Color3.new (1, 0, 0))
				NewParticle.Lifetime = NumberRange.new(0.55,0.95)
				NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,.0),NumberSequenceKeypoint.new(1,1)})
				NewParticle.Speed = NumberRange.new(0,0.0)
				NewParticle.ZOffset = 2
				NewParticle.Texture = "rbxassetid://243660364"
				NewParticle.RotSpeed = NumberRange.new(-0,0)
				NewParticle.Rotation = NumberRange.new(-180,180)
				NewParticle.Enabled = false
				game:GetService("Debris"):AddItem(YourGone, 3)	
				for i = 0,2,1 do
					NewParticle:Emit(1)
					so("1448044156", FoundTorso,2, 1)
					--h.Parent:BreakJoints()
					YourGone.CFrame = FoundTorso.CFrame
					for _,v in pairs(h.Parent:children()) do
						if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
							--v.Anchored=false
							--			v.Material = "Neon"
							--v.BrickColor = BrickColor.new("Really red")
							if v:FindFirstChildOfClass("SpecialMesh")then
								--v:Destroy()
							end	
							if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
								--	v:Destroy()
							end		
							--local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })

							--vp.Parent = v		
							--game:GetService("Debris"):AddItem(vp, math.random(50,100)/1000)				


						end



					end	



					wait(.2)	
				end
				wait(.1)	
				NewParticle:Emit(3)
				so("1448044156", FoundTorso,2, .8)
				--h.Parent:BreakJoints()
				YourGone.CFrame = FoundTorso.CFrame
				for _,v in pairs(h.Parent:children()) do
					if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
						--v.Anchored=false
						--			v.Material = "Neon"
						--v.BrickColor = BrickColor.new("Really red")
						if v:FindFirstChildOfClass("SpecialMesh")then
							--v:Destroy()
						end	
						if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
							--	v:Destroy()
						end		
						--local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })

						--vp.Parent = v		
						--game:GetService("Debris"):AddItem(vp, math.random(100,200)/1000)				


					end



				end	




			end))




			wait(.1)







		end


	end))
	if h ~= nil and hit.Parent ~= Character and hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch)
		end
		local Damage = -math.huge
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		if blocked == false then
		--	h.Health = h.Health - Damage
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Color3.new(0,0,0))
		else
		--	h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Color3.new(0,0,0))

		end

		if Type == "Knockdown" then
			local hum = h

			--hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)

				wait(.2)
			--	HHumanoid.PlatformStand = false
			end
			), hum)



			local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			--[[local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,FoundTorso.Position).lookVector * knockback, Parent = hit})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, .2)
			game:GetService("Debris"):AddItem(rl, 0.2)]]



		elseif Type == "Knockdown2" then
			local hum = h

			--hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)


				Combo = 1			wait(.2)
			--	HHumanoid.PlatformStand = false
			end
			), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			--[[local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,Property.Position).lookVector * knockback})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.2)
			game:GetService("Debris"):AddItem(rl, 0.2)






			local bodyVelocity2 = Create("BodyVelocity")({velocity = Vector3.new(0, 60, 0), P = 5000, maxForce = Vector3.new(8000, 12000, 8000), Parent = RootPart})
			game:GetService("Debris"):AddItem(bodyVelocity2, 0.1)]]

		elseif Type == "Normal" then
			local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			--local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,FoundTorso.Position).lookVector * knockback, Parent = hit})
			--game:GetService("Debris"):AddItem(bodvol, .2)



		elseif Type== "Fire" 	then
			local HTorso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")

			local tags = 0
			for _,v2 in next, HTorso:GetChildren() do 
				if v2:IsA("Folder") and v2.Name == "OnFire" then
					tags=tags+1
				end
			end	

			if tags < 2 then

				local fireef = EffectPack.FireEffect:Clone()

				local tag = Instance.new("Folder",HTorso)
				tag.Name = "OnFire"					
				game:GetService("Debris"):AddItem(tag, 4.5) 
				for _,v in next, fireef:GetDescendants() do if v:IsA("ParticleEmitter") or v:IsA("SpotLight")  then    game:GetService("Debris"):AddItem(v, 5) 	 v.Parent = HTorso
						coroutine.resume(coroutine.create(function()	
							for i = 1,35 do 
								coroutine.resume(coroutine.create(function()	
									v:Emit(2) end))
								coroutine.resume(coroutine.create(function()	
									Damagefunc(HTorso, HTorso, 4/2, 6/2, 0, "Normal", RootPart, 0.1, "1273118342", math.random(10,30)/10)
								end))
								if HTorso.Parent:FindFirstChildOfClass("Humanoid")  and HTorso.Parent:FindFirstChildOfClass("Humanoid").Health > .01 then
								else 	for _,v2 in next, HTorso.Parent:GetDescendants() do  if v2:isA("BasePart") then-- SetTween(v2,{Color=C3(0,0,0)},"Quad","Out",.5) 
                                end end break
								end
								wait(.1)
							end
						end))	

					end  end


				fireef:Destroy()		
			else-- print("Hit Max")		
			end			
		elseif Type== "Instakill" 	then
			coroutine.resume(coroutine.create(function()	
				if  (h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")) and not h.Parent:FindFirstChild("Fly away")then


					local FATag = Instance.new("Model",h.Parent)

					FATag.Name = "Fly away"
					game:GetService("Debris"):AddItem(FATag, 2.5)	


					--[[or _,v in pairs(h.Parent:children()) do
						if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
							v.Anchored=true
						end
					end	]]

					wait(.25)

					--[[if 	h.Parent:FindFirstChildOfClass("Body Colors")then
						h.Parent:FindFirstChildOfClass("Body Colors"):Destroy()
					end]]


					local FoundTorso = h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso")

					coroutine.resume(coroutine.create(function()	


						local YourGone = Instance.new("Part")
						YourGone.Reflectance = 0
						YourGone.Transparency = 1
						YourGone.CanCollide = false
						YourGone.Locked = true
						YourGone.Anchored=true
						YourGone.BrickColor = BrickColor.new("Really blue")
						YourGone.Name = "YourGone"
						YourGone.Size = Vector3.new()
						YourGone.Material = "SmoothPlastic"
						YourGone:BreakJoints()
						YourGone.Parent = FoundTorso		
						YourGone.CFrame = FoundTorso.CFrame

						local NewParticle = Instance.new("ParticleEmitter")
						NewParticle.Parent = YourGone
						NewParticle.Acceleration =  Vector3.new(0,0,0)
						NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10),NumberSequenceKeypoint.new(1,.0)})
						NewParticle.Color = ColorSequence.new(Color3.new (1,0,0), Color3.new (1, 0, 0))
						NewParticle.Lifetime = NumberRange.new(0.55,0.95)
						NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,.0),NumberSequenceKeypoint.new(1,1)})
						NewParticle.Speed = NumberRange.new(0,0.0)
						NewParticle.ZOffset = 2
						NewParticle.Texture = "rbxassetid://243660364"
						NewParticle.RotSpeed = NumberRange.new(-0,0)
						NewParticle.Rotation = NumberRange.new(-180,180)
						NewParticle.Enabled = false
						game:GetService("Debris"):AddItem(YourGone, 3)	
						for i = 0,2,1 do
							NewParticle:Emit(1)
							so("1448044156", FoundTorso,2, 1)
							--h.Parent:BreakJoints()
							YourGone.CFrame = FoundTorso.CFrame
							for _,v in pairs(h.Parent:children()) do
								if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
								--	v.Anchored=false
									--			v.Material = "Neon"
									--v.BrickColor = BrickColor.new("Really red")
									if v:FindFirstChildOfClass("SpecialMesh")then
										--v:Destroy()
									end	
									if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
										--	v:Destroy()
									end		
									--[[local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })

									vp.Parent = v		
									game:GetService("Debris"):AddItem(vp, math.random(50,100)/1000)	]]			


								end



							end	



							wait(.2)	
						end
						wait(.1)	
						NewParticle:Emit(3)
						so("1448044156", FoundTorso,2, .8)
						--h.Parent:BreakJoints()
						YourGone.CFrame = FoundTorso.CFrame
						for _,v in pairs(h.Parent:children()) do
							if v:IsA("BasePart")and v.Parent:FindFirstChildOfClass("Humanoid") then
								v.Anchored=false
								--			v.Material = "Neon"
								--v.BrickColor = BrickColor.new("Really red")
								if v:FindFirstChildOfClass("SpecialMesh")then
									--v:Destroy()
								end	
								if v:FindFirstChildOfClass("Decal") and v.Name == "face" then
									--	v:Destroy()
								end		
								--[[local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(1000, 1000, 1000), velocity = Vector3.new(math.random(-10,10),4,math.random(-10,10)) })

								vp.Parent = v		
								game:GetService("Debris"):AddItem(vp, math.random(100,200)/1000)]]				


							end



						end	




					end))




					wait(.1)







				end


			end))


		elseif Type == "HPSteal" then
			--Humanoid.Health = Humanoid.Health + Damage
			local hum = h

			--hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)


				Combo = 1			wait(.2)
				--HHumanoid.PlatformStand = false
			end
			), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			--[[local bodvol = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = CFrame.new(Part.Position,Property.Position).lookVector * knockback})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(5000, 5000, 5000) * 50, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.2)
			game:GetService("Debris"):AddItem(rl, 0.2)






			local bodyVelocity2 = Create("BodyVelocity")({velocity = Vector3.new(0, 60, 0), P = 5000, maxForce = Vector3.new(8000, 12000, 8000), Parent = RootPart})
			game:GetService("Debris"):AddItem(bodyVelocity2, 0.1)]]


		elseif Type == "Impale" then








			CFuncs.Sound.Create("http://www.roblox.com/asset/?id=268249319", Spike, .8, 2)	
			--hit.Parent.Humanoid.PlatformStand = true


			wait(1)
			--hit.Parent.Humanoid.PlatformStand = false
		elseif Type == "IgnoreType" then





		elseif Type == "Up" then
			--[[local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
			game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
			local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
			game:GetService("Debris"):AddItem(bodyVelocity, .1)]]







		elseif Type == "Snare" then
			--local bp = Create("BodyPosition")({P = 900, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = (h.Parent:FindFirstChild("Torso") or h.Parent:FindFirstChild("UpperTorso"))})
			--game:GetService("Debris"):AddItem(bp, 1)



		elseif Type == "Freeze2" then
			--local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
			--local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
			--hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part)

				wait(1.5)
				--Part.Anchored = false
			end
			), hit.Parent.Torso)
			--game:GetService("Debris"):AddItem(BodPos, 3)
			--game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, 0.5)
	end
end



ShowDamage = function(Pos, Text, Time, Color)

	local Rate = 0.033333333333333
	if not Pos then
		local Pos = Vector3.new(0, 0, 0)
	end
	local Text = Text or ""
	local Time = Time or 2
	if not Color then
		local Color = Color3.new(1, 0, 1)
	end
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({Size = UDim2.new(2, 0, 2, 0), Adornee = EffectPart, Parent = EffectPart})
	local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = "DMG: "..Text.."", TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
	TextLabel.TextTransparency=1
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()

		local Frames = Time / Rate



		--print(Frames)

		EffectPart.CFrame=CFrame.new(Pos)
		wait()	TextLabel.TextTransparency=0
		SetTween(TextLabel,{TextTransparency=1},"Quad","In",Frames/60)
		SetTween(TextLabel,{Rotation=math.random(-25,25)},"Elastic","InOut",Frames/60)
		SetTween(TextLabel,{TextColor3=Color3.new(1,0,0)},"Elastic","InOut",Frames/60)

		SetTween(EffectPart,{CFrame = CFrame.new(Pos) + Vector3.new(math.random(-5,5), math.random(1,5), math.random(-5,5))},"Linear","InOut",Frames/60)


		wait(Frames/60)

		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end
	)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type2)




	local Type=""




	if  mememode == true then

		Type=	"Instakill"

	else
		Type=Type2
	end 
	if Type2 == "NormalKnockdown" then
		Type= "Knockdown"
	end

	for _,c in pairs(workspace:children()) do





		local hum = c:FindFirstChild("Humanoid")
		for _,v in pairs(c:children()) do
			if v:IsA("Humanoid") then
				hum = v
			end
		end	




		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(Part, head, mindam, maxdam, knock, Type, RootPart, 0.1, "851453784", 1.2)
				end
			end
		end
	end
end


function CFMagniDamage(HTCF,magni, mindam, maxdam, knock, Type)
	local DGP = Instance.new("Part")

	DGP.Parent = Character
	DGP.Size = Vector3.new(0.05, 0.05, 0.05)
	DGP.Transparency = 1
	DGP.CanCollide = false
	DGP.Anchored = true
	RemoveOutlines(DGP)
	DGP.Position=DGP.Position + Vector3.new(0,-.1,0)
	DGP.CFrame = HTCF

	coroutine.resume(coroutine.create(function()
		MagniDamage(DGP, magni, mindam, maxdam, knock, Type)
	end))
	game:GetService("Debris"):AddItem(DGP, .05)


	DGP.Archivable = false
end





-----------------
function findNearestTorso(pos,dist1)
	local list = game.Workspace:children()
	local torso = nil
	local dist = dist1 or 1000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) then
			temp = (temp2:FindFirstChild("Torso") or temp2:FindFirstChild("UpperTorso"))
			human = temp2:findFirstChildOfClass("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end
function BulletHitEffectSpawn(EffectCF,EffectName)
	local MainEffectHolder=Instance.new("Part",Effects)	
	MainEffectHolder.Reflectance = 0
	MainEffectHolder.Transparency = 1
	MainEffectHolder.CanCollide = false
	MainEffectHolder.Locked = true
	MainEffectHolder.Anchored=true
	MainEffectHolder.BrickColor = BrickColor.new("Bright green")
	MainEffectHolder.Name = "Bullet"
	MainEffectHolder.Size = Vector3.new(.05,.05,.05)	
	MainEffectHolder.Material = "Neon"
	MainEffectHolder:BreakJoints()
	MainEffectHolder.CFrame = EffectCF
	local EffectAttach=Instance.new("Attachment",MainEffectHolder)	
	game:GetService("Debris"):AddItem(MainEffectHolder, 15)

	if EffectName == "Explode" then
		EffectAttach.Orientation = Vector3.new(90,0,0)




		local	SpawnedParticle1 =  EffectPack.Explode_Fire_Effect:Clone()
		SpawnedParticle1.Parent = MainEffectHolder
		SpawnedParticle1:Emit(150)



		local	SpawnedParticle2 =  EffectPack.Explode_Smoke2_Effect:Clone()
		SpawnedParticle2.Parent = MainEffectHolder
		SpawnedParticle2:Emit(25)



		local	SpawnedParticle3 =  EffectPack.Explode_Smoke_Effect:Clone()
		SpawnedParticle3.Parent = MainEffectHolder
		SpawnedParticle3:Emit(185)
		game:GetService("Debris"):AddItem(MainEffectHolder, 2)				


	end	






	if EffectName == "Spark" then

		EffectAttach.Orientation = Vector3.new(90,0,0)




		local	SpawnedParticle1 =  EffectPack.Spark:Clone()
		SpawnedParticle1.Parent = MainEffectHolder
		SpawnedParticle1:Emit(math.random(2,5))




		game:GetService("Debris"):AddItem(MainEffectHolder, 2)				


	end	





	if EffectName == "Nuke" then
		so(923073285,MainEffectHolder,8,2)
		EffectAttach.Orientation = Vector3.new(0,0,0)
		local EffectAttach2=Instance.new("Attachment",MainEffectHolder)	
		EffectAttach2.Orientation = Vector3.new(0,0,0)




		local	SpawnedParticle1 =  EffectPack.Nuke_Flash:Clone()
		SpawnedParticle1.Parent = EffectAttach
		SpawnedParticle1:Emit(20)



		local	SpawnedParticle2 =  EffectPack.Nuke_Smoke:Clone()
		SpawnedParticle2.Parent = EffectAttach2
		SpawnedParticle2.Enabled = true
		coroutine.resume(coroutine.create(function()

			for i = 0,2,.025/1.5 do


				SpawnedParticle2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.15,.5+(i/4)),NumberSequenceKeypoint.new(.95,.5+(i/4)),NumberSequenceKeypoint.new(1,1)})
				Swait()		
			end
			SpawnedParticle2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,1)})

			SpawnedParticle2.Enabled = false	
		end))


		local	SpawnedParticle3 =  EffectPack.Nuke_Wave:Clone()
		SpawnedParticle3.Parent = EffectAttach
		SpawnedParticle3:Emit(185)
		game:GetService("Debris"):AddItem(EffectAttach, 10)				


	end	












end

function ProjectileDmg(MinDmg1,MaxDmg1,Lookpos1,Lookray1,Aura1,Type,Partf)

	if Lookray1 ~= nil and Lookray1.Parent:FindFirstChildOfClass("Humanoid") then
		coroutine.resume(coroutine.create(function()
			Damagefunc(Partf, Lookray1, MinDmg1, MaxDmg1, MinDmg1, Type, RootPart, 0.1, "851453784", 1.2) end))
	else	
		CFMagniDamage(CF(Lookpos1),Aura1, MinDmg1, MaxDmg1, MinDmg1, Type)
	end	





end


function FireSoul(SpawnCF)


	local GhostHolder = EffectPack.Missile:Clone()
	GhostHolder.Parent = Effects		
	GhostHolder.CFrame = SpawnCF


	local Missile = GhostHolder
	for i, v3 in pairs(GatherAllInstances(Missile)) do
		if v3:IsA("ParticleEmitter") then
			v3.Enabled = true		
		end
	end




	coroutine.resume(coroutine.create(function()	
		Missile["Rocket Thrust Loop"]:Play()
	end))	


	so(771710614,Missile,1,1)

	wait()		


	game:GetService("Debris"):AddItem(GhostHolder, 60)		

	coroutine.resume(coroutine.create(function()






		GhostHolder.Transparency = 0




	end))



	--GhostHolder.Touched:connect(onTouch)	

	--GhostHolder:BreakJoints()
	--GhostHolder.Anchored = false	


	--Acthing(GhostHolder,"1698327723",Vector3.new(1.41,1.42,1.41),BrickColor.new("Really black"),"Glass",0.0,cn(0,.0325,0)*angles(math.rad(0), math.rad(180), math.rad(0)),Color3.new(0,0,0),GhostHolder,2)
	local GhostTarget=nil

	coroutine.resume(coroutine.create(function()


		local lookdir=RootPart.CFrame.lookVector *15 

		while GhostHolder.Parent == Effects do 


			GhostTarget = findNearestTorso(GhostHolder.Position)


			if GhostTarget ~=nil then		






				if OverClocking ==false then
					SetTween(GhostHolder,{CFrame =CFrame.new(GhostHolder.Position+GhostHolder.CFrame.lookVector*20,(GhostTarget.Position+GhostHolder.CFrame.lookVector*30 )-VT(math.random(-10,10),math.random(-15,15),math.random(-10,10)))},"Linear","Out",.2)
					--GhostForce.velocity =GhostHolder.CFrame.lookVector *80
				else
					SetTween(GhostHolder,{CFrame =CFrame.new(GhostHolder.Position+GhostHolder.CFrame.lookVector*20,(GhostTarget.Position+GhostHolder.CFrame.lookVector*21 ))},"Linear","Out",.1)

				end

			else
				if OverClocking ==false then
					SetTween(GhostHolder,{CFrame =CFrame.new(GhostHolder.Position+GhostHolder.CFrame.LookVector*20,GhostHolder.Position+VT(0,-1,0)+GhostHolder.CFrame.LookVector*30)},"Linear","Out",.2)

				else
					SetTween(GhostHolder,{CFrame =CFrame.new(GhostHolder.Position+GhostHolder.CFrame.LookVector*20,GhostHolder.Position+VT(0,-1,0)+GhostHolder.CFrame.LookVector*30)},"Linear","Out",.2)



				end
			end
			local Lookray,Lookpos,test1 = rayCast(GhostHolder.Position, GhostHolder.CFrame.lookVector, 10, Character)
			if Lookray ~= nil then
				--onTouch(Lookray)





				so(2814355743,GhostHolder,3,2)
				BulletHitEffectSpawn(CF(Lookpos,Lookpos+test1),"Explode")

				ProjectileDmg(50,65,Lookpos,nil,45,"Knockdown",GhostHolder)






				coroutine.resume(coroutine.create(function()	
					GhostHolder["Rocket Thrust Loop"]:Stop()
				end))




				for i, v3 in pairs(GatherAllInstances(GhostHolder)) do
					if v3:IsA("ParticleEmitter") then
						v3.Enabled = false		
					end
				end


				SetTween(GhostHolder,{Transparency=1},"Quad","Out",1)	
				game:GetService("Debris"):AddItem(GhostHolder, 2)


				break		



			end
			--wait(1.35)
			Swait()	end
		--GhostHolder:Destroy()
	end))


end











    --[[
            for i, v in pairs(C:GetChildren()) do
    if v:IsA("Accessory")then
    v:Destroy()	
    end
    if v:IsA("BasePart")then
    v.Transparency =1
    if v.Name == "Head" then
        v:FindFirstChildOfClass("Decal"):Destroy()
    end
    end
            end--]]
    --[[
    
    
    
    
    
    
    
    
    
    
    
    
    
    local tweeningInformation = TweenInfo.new(
        0.5,	
        Enum.EasingStyle.Back,
        Enum.EasingDirection.Out,
        0,
        false,
        0
    )
    --]]


local RJW=weld(RJ.Parent,RJ.Part0,RJ.Part1,RJ.C0)
RJW.C1 = RJ.C1
RJW.Name = RJ.Name

local NeckW=weld(Neck.Parent,Neck.Part0,Neck.Part1,Neck.C0)
NeckW.C1 = Neck.C1
NeckW.Name = Neck.Name


--print(WRJ.Parent.Name)

local RW=weld(Torso,Torso,RightArm,cf(0,0,0))

local LW=weld(Torso,Torso,LeftArm,cf(0,0,0))

local RH=weld(Torso,Torso,RightLeg,cf(0,0,0))

local LH=weld(Torso,Torso,LeftLeg,cf(0,0,0))



RW.C1 = cn(0, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
RH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))






--------
--(#Torso)
SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)},"Quad","InOut",0.1)
--------
--(#Head)
SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)},"Quad","InOut",0.1)
--------
--(#Right Arm)
SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Left Arm)
SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)},"Quad","InOut",0.1)
--------
--(#Right Leg)
SetTween(RH,{C0=CFrame.new(.5, -0.90, 0)},"Quad","InOut",0.1)
--------
--(#Left Leg)
SetTween(LH,{C0=CFrame.new(-.5, -0.90, 0)},"Quad","InOut",0.1)



    --[[
    SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
    SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
    SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
    SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
    SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
    SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
    --]]



--[[Humanoid.MaxHealth = 99999

Humanoid.Health = 99999
GainCharge = function()
	Humanoid.MaxHealth = 99999
	Humanoid.Health = 99999
end

Humanoid.HealthChanged:connect(function() GainCharge(Humanoid) end)]] 				


function SpawnDrone(SPCF)
	coroutine.resume(coroutine.create(function()	
		local DroneModel =  nil --EffectPack.Drone:Clone()
		if 1 == 1 then
			DroneModel = EffectPack.Toaster:Clone()
		else
			DroneModel = EffectPack.Drone:Clone()

		end
		local Drone = EffectPack.Part:Clone()
		Drone.Parent = Effects
		Drone.Name = "Drone"
		Drone.Anchored = true

		local Part1=Drone
		local Part2=DroneModel.Handle
		--game:GetService("Debris"):AddItem(Drone, 60)
		coroutine.resume(coroutine.create(function()
			wait(30)
			Drone:Destroy()
		end))
		Drone.CFrame = SPCF*CF(0,10,600)
		JointAllTo(Part1,Part2,DroneModel,CFrame.new(0,0,0))
		SetTween(Drone,{CFrame=SPCF*CF(math.random(-100,100)/10,math.random(5,20),math.random(-10,10)/10)},"Quad","Out",1)
		wait(1)
		local v2 = findNearestTorso(Drone.Position,70)
		if v2 ~= nil then
			SetTween(Drone,{CFrame=CF(Drone.CFrame.p,v2.CFrame.p)},"Quad","InOut",.5)	
		end
		Swait(0.15*30)
		for i2 =1,16 do 
			for i = 1,2,1 do 
				local v = findNearestTorso(Drone.Position,70)
				if v~=nil then

					SetTween(Drone,{CFrame=CF(Drone.CFrame.p,v2.CFrame.p)},"Quad","Out",.25)	

					local  lighth,lightp,test1 = rayCast(Drone["gun"..i].CFrame.p, CFrame.new(Drone["gun"..i].CFrame.p, v.CFrame.p).lookVector, 70, Character)
					if DroneModel.Name ~= "Toaster" then
						Lightning(Drone["gun"..i].CFrame.p,lightp , 5, .2, BrickColor.new("Alder"), .15, .5,-.25*2,.5,nil)
						BulletHitEffectSpawn(CF(lightp,lightp+test1),"Spark")
						coroutine.resume(coroutine.create(function()	
							so("168586621", Drone,1.6, math.random(120,220)/100)

							so("1225795839", Drone,2, math.random(120,220)/100)
							CFMagniDamage(CF(lightp),10,5,10,10,"Knockdown")

						end))Swait(0.15*30)
					else

						Lightning(Drone["gun"..i].CFrame.p,lightp , 1, 1, BrickColor.new("Alder"), .05, 0,-.25*2,1,nil)
						BulletHitEffectSpawn(CF(lightp,lightp+test1),"Spark")
						coroutine.resume(coroutine.create(function()	
							--	so("168586621", Drone,1.0, math.random(120,220)/100)

							so("1578823908", Drone,4, math.random(100,150)/100)
							CFMagniDamage(CF(lightp),25,75,80,-50,"Knockdown")

						end))	
						SetTween(Drone,{CFrame=CF(Drone.CFrame.p,v2.CFrame.p)*CF(0,5/10,-2.5/10)},"Quad","InOut",.15)	
						Swait(0.15*30)		
					end

				end	

			end

			v2 = findNearestTorso(Drone.Position,70)
			if v2~=nil then

				SetTween(Drone,{CFrame=CF((Drone.CFrame).p,v2.CFrame.p)},"Quad","InOut",.1)	


				--Swait(0.2*30)
			end	


		end
		SetTween(Drone,{CFrame=Drone.CFrame*CF(0,1000,100)},"Quad","InOut",6)
		wait(6)
		Drone:Destroy()
	end))
end


function Attack1()
	attack = true 
	Humanoid.JumpPower = 0
	Humanoid.WalkSpeed = 0
	coroutine.resume(coroutine.create(function()
		SetTween(MX1w,{C0=CF(0,0,.15)*ANGLES(mr(90),0,0)},"Back","Out",1/2)	

		Swait(.25*2)

		SetTween(MX1w,{C0=CF(0,.1,.30)*ANGLES(mr(20),0,0)},"Back","Out",.25)
	end))	
	so("418302853", Torso,4, 2)
	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.6)*angles(math.rad(10),math.rad(0),math.rad(0))},"Back","Out",0.3)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0))},"Back","Out",0.3)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(45),math.rad(0),math.rad(10))},"Back","Out",0.3)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(20),math.rad(0),math.rad(-10))},"Back","Out",0.3)
	SetTween(RH,{C0=CFrame.new(.5, -.7, -.2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Back","Out",0.3)
	SetTween(LH,{C0=CFrame.new(-.5, -1.0, -.75)*angles(math.rad(-50),math.rad(0),math.rad(0))},"Back","Out",0.3)	
	wait(.3)
	for i2 = 1,4 do
		for i = 1,3 do
			for i2 = 1,2 do	
				coroutine.resume(coroutine.create(function()
					FireSoul(CF(MissileBox["MissileSlot"..i].CFrame.p,MissileBox["MissileSlot"..i].CFrame.p+MissileBox["MissileSlot"..i].CFrame.RightVector)*ANGLES(mr(math.random(-10,10)/10),mr(math.random(-10,10)/10),mr(math.random(-10,10)/10) ) )
				end))
			end
			SetTween(MissileBox["MissileSlot"..i],{Color=C3(0,0,0)},"Quad","InOut",.05)
			SetTween(MX1w,{C0=CF(0,0,.15)*ANGLES(mr(40),0,0)},"Quad","Out",.1)	

			SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.6)*angles(math.rad(0),math.rad(0),math.rad(0))},"Back","Out",0.1)
			SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0))},"Back","Out",0.1)
			SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(35),math.rad(0),math.rad(20))},"Back","Out",0.1)
			SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(10),math.rad(0),math.rad(-20))},"Back","Out",0.1)
			SetTween(RH,{C0=CFrame.new(.5, -.7, -.2)*angles(math.rad(20),math.rad(0),math.rad(0))},"Back","Out",0.1)
			SetTween(LH,{C0=CFrame.new(-.5, -1.0, -.75)*angles(math.rad(-60),math.rad(0),math.rad(0))},"Back","Out",0.1)	

			Swait(1)
			SetTween(MX1w,{C0=CF(0,.1,.30)*ANGLES(mr(20),0,0)},"Quad","Out",.1)	
			SetTween(MissileBox["MissileSlot"..i],{Color=C3(180/255, 128/255, 255/255)},"Quad","InOut",.25)
			SetTween(RJW,{C0=RootCF*CFrame.new(0,-.25,-.55)*angles(math.rad(10),math.rad(0),math.rad(0))},"Back","Out",0.2)
			SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0))},"Back","Out",0.2)
			SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(45),math.rad(0),math.rad(10))},"Back","Out",0.2)
			SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(20),math.rad(0),math.rad(-10))},"Back","Out",0.2)
			SetTween(RH,{C0=CFrame.new(.5, -.7, -.2)*angles(math.rad(30),math.rad(0),math.rad(0))},"Back","Out",0.2)
			SetTween(LH,{C0=CFrame.new(-.5, -1.0, -.75)*angles(math.rad(-50),math.rad(0),math.rad(0))},"Back","Out",0.2)
			Swait(1)	end



	end
	coroutine.resume(coroutine.create(function()
		SetTween(MX1w,{C0=CF(0,0,.15)*ANGLES(mr(90),0,0)},"Back","Out",1/2)	

		Swait(.25*30)
		SetTween(MX1w,{C0=CF(0,-.7,-.25)},"Quad","InOut",.25)	
	end))	
	attack = false		

end

eyehold=false
function Attack2()



	attack = true
	Humanoid.JumpPower = 0	
	Humanoid.WalkSpeed=0	


	local eyeffect1 = EffectPack.Light:Clone()

	eyeffect1.Parent = Head.Eye.Attachment


	eyeffect1.Enabled = true	
	so("1841310110",Head,3,1)

	for i = 1,3.5,.1 do 
		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.3)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		SetTween(RW,{C0=CFrame.new(1.2 , 0.5, -.2)*angles(math.rad(75+math.random(-5,5)),math.rad(0),math.rad(-40+math.random(-5,5)))},"Quad","Out",0.1)
		SetTween(LW,{C0=CFrame.new(-1.2, 0.5, -.2)*angles(math.rad(75+math.random(-5,5)),math.rad(0),math.rad(40+math.random(-5,5)))},"Quad","Out",0.1)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		Swait() end 	
	--local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 10, 0)+RootPart.CFrame.lookVector*30, P = 5000, maxForce = Vector3.new(800000, 800000 , 800000), Parent = RootPart})
	so("197760420",Head,8,1)	

	--wait(.5)
	eyehold= true


	local Beam1 = Instance.new("Beam",Torso.TorsoLaser)	

	local WalkPart = Instance.new("Part",Effects)	
	WalkPart.Transparency = 1
	WalkPart.CanCollide = false
	WalkPart.Anchored = true
	WalkPart.CFrame = CFrame.new(0,0,0)
	WalkPart.Size = Vector3.new(.1,.1,.1)
	local Attach2 = Instance.new("Attachment",WalkPart)	







	local NewParticle = Particle2_1:Clone()
	NewParticle.Parent = Attach2
	NewParticle.Acceleration =  Vector3.new(0,0,0)
	if OverClocking ==false then
		NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2),NumberSequenceKeypoint.new(1,0)})

	else

		NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,50),NumberSequenceKeypoint.new(1,0)})


	end
	NewParticle.Color = ColorSequence.new(Color3.new (180/255, 128/255, 255/255), Color3.new (180/255, 128/255, 255/255))
	NewParticle.Lifetime = NumberRange.new(.2,.3)
	NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,0),NumberSequenceKeypoint.new(1,1)})
	NewParticle.Speed = NumberRange.new(0)
	NewParticle.ZOffset = 6
	NewParticle.RotSpeed = NumberRange.new(-40,40)
	NewParticle.Rotation = NumberRange.new(-180,180)
	NewParticle.Texture = "rbxassetid://217245118"
	NewParticle.Rate = 50
	--NewParticle.Enabled = true

	local NewParticle2 = NewParticle:Clone()
	NewParticle2.LockedToPart = true
	NewParticle2.Parent = Attach2

	NewParticle.Speed = NumberRange.new(10)
	NewParticle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.25,.5),NumberSequenceKeypoint.new(1,1)})

	NewParticle.Texture = "rbxassetid://445231898"
	if OverClocking ==false then
		NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,2)})
	else
		NewParticle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5),NumberSequenceKeypoint.new(1,28)})

	end
	NewParticle.Lifetime = NumberRange.new(.3,.5)
	NewParticle.ZOffset = 4
	NewParticle.Speed = NumberRange.new(1)
	--NewParticle:Emit(2)





	coroutine.resume(coroutine.create(function()	
		if eyehold==true then





			coroutine.resume(coroutine.create(function()	

				while eyehold==true do
					wait(.5)

					so("2162238374",Torso.TorsoLaser,4,2.0)


				end	
				for i = 1,10 do
					for _,v in pairs(Torso.TorsoLaser:children()) do
						if v:isA("Sound") then
							v.Volume = v.Volume - .4
						end
					end
					Swait()
				end
			end))


			while eyehold == true do
				Swait()



				Humanoid.JumpPower = 0	
				change = .6












				Humanoid.WalkSpeed=2	



				coroutine.resume(coroutine.create(function()
					local GunPart = Head.Eye


					--so("610359515",Head,1.5,.8,4)
					for i = 1,1 do






						coroutine.resume(coroutine.create(function()	

							local Glow1 =  Color3.new (180/255, 128/255, 255/255)
							local Glow2 =  Color3.new (180/255, 128/255, 255/255)
							local hitray,pos,test1 = rayCast(GunPart.Position, GunPart.CFrame.lookVector, 500, Character)





							local mag=(Torso.TorsoLaser.Position-pos).magnitude 



							Attach2.Position = pos
							--Attach1.Position = Vector3.new(0,0,0)
							NewParticle.Enabled = true
							NewParticle2.Enabled = true
							eyeffect1.Enabled = true


							Beam1.Texture = "rbxassetid://1134824633"

							Beam1.FaceCamera = true	
							Beam1.Color = ColorSequence.new(Glow1,Glow2)
							Beam1.Transparency = NumberSequence.new(0,0)
							Beam1.TextureLength = .1*(mag)
							Beam1.Attachment0 =  Head.Eye.Attachment
							Beam1.Attachment1 = Attach2
							Beam1.TextureSpeed = 15
							Beam1.LightEmission = 1
							Beam1.Width0 = 1

							if OverClocking ==false then
								Beam1.Width1 = 2
							else
								Beam1.Width1 = 20
							end





							if OverClocking ==false then
								CFMagniDamage(CFrame.new(pos),5, 350, 500, 0, "Normal")
							else
								CFMagniDamage(CFrame.new(pos),30, 350, 500, 0, "Normal")

							end
							coroutine.resume(coroutine.create(function()	
								if hitray~=nil then
									for i = 1, 1 do
										local Color = hitray.BrickColor
										local Materials = hitray.Material
										local groundpart = CFuncs.Part.Create( Effects, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(50, 200) / 200, math.random(50, 200) / 200, math.random(50, 200) / 200))
										groundpart.Anchored = false
										groundpart.Material = Materials
										groundpart.CanCollide = true
										groundpart.Friction = 2
										groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
										groundpart.CFrame = CF(pos,pos+test1) * cn(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)))
										groundpart:SetNetworkOwner(Player)     
										game:GetService("Debris"):AddItem(groundpart, 1.0)
										SetTween(groundpart,{Size = VT(),Transparency=1},"Quad","In",1)

									end
									for i = 1, 0 do
										local Color = hitray.BrickColor
										local Materials = hitray.Material
										local groundpart = CFuncs.Part.Create( Effects, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(25, 150) / 200, math.random(25, 150) / 200, math.random(25, 150) / 200))
										groundpart.Anchored = false
										groundpart.Material = Materials
										groundpart.CanCollide = true
										groundpart.Friction = 2
										groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
										groundpart.CFrame = CF(pos,pos+test1) * cn(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.Angles(math.rad(math.random(-50, 50)), math.rad(math.random(-50, 50)),math.rad( math.random(-50, 50)))
										groundpart:SetNetworkOwner(Player)      
										game:GetService("Debris"):AddItem(groundpart, 1.0)
										SetTween(groundpart,{Size = VT(),Transparency=1},"Quad","In",1)


										--game:GetService("Debris"):AddItem(WalkPart2, .4)	

									end		

								end

							end))
							coroutine.resume(coroutine.create(function()	
								if hitray ~= nil then











									--		MakeBeamWaveEffect(Effects,Color3.new(1, 0, 0),HitEffectPart.Position- Vector3.new(0, 0, 0),2.0,0,0.06,15,0,10,CFrame.new(((RootPart.Velocity * Vector3.new(1, 0, 1))/40)+Vector3.new(0, 0, 0))*angles(math.rad(math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))))


								else	
									--Beam1.Transparency = NumberSequence.new(0,1)
								end



								--GunPart.Transparency = i*1.5
								--GunPart.Size = Vector3.new(0.85-i,.85-i,.05)







								--game:GetService("Debris"):AddItem(WalkPart2, .4)	
								--game:GetService("Debris"):AddItem(WalkPart, .4)	
								--game:GetService("Debris"):AddItem(Attach1, .4)	
								--game:GetService("Debris"):AddItem(Attach2, .4)	

							end))








						end))




					end



				end))



			end
		end




		coroutine.resume(coroutine.create(function()	

			for i = 0,4,0.3 do Swait()
				Beam1.Transparency = NumberSequence.new(i,(i)/2)	

			end
		end))

		NewParticle.Enabled = false
		NewParticle2.Enabled = false	
		eyeffect1.Enabled = false

		game:GetService("Debris"):AddItem(WalkPart, 1)	
		--game:GetService("Debris"):AddItem(Attach1, .4)	
		game:GetService("Debris"):AddItem(Attach2, 1)		
		game:GetService("Debris"):AddItem(Beam1, 1)	

		game:GetService("Debris"):AddItem(NewParticle, 1)	
		game:GetService("Debris"):AddItem(NewParticle2, 1)	
		game:GetService("Debris"):AddItem(eyeffect1, 1)	

		so("1229184354",Torso,5,2)
	end))

	for i = 1,3.25,.075 do 
		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Linear","InOut",0.1)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(60-20*i),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad((-20+20*i)+math.random(-5,5)),math.rad(0),math.rad(math.random(-5,5)+(45/5)*i ))},"Quad","Out",0.1)
		SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad((-20+20*i)+math.random(-5,5)),math.rad(0),math.rad(math.random(-5,5)-(45/5)*i))},"Quad","Out",0.1)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
		--bodyVelocity.velocity = Vector3.new(0, 1, 0)+Torso.CFrame.lookVector*-40
		Swait() end 	
	eyehold = false
	Swait() 
	--bodyVelocity.velocity = Vector3.new(0, 0, 0)
	--bodyVelocity.maxForce = Vector3.new(8000000, 0 , 8000000)
	--game:GetService("Debris"):AddItem(bodyVelocity, 1)	





	attack = false
end
dancing = false



function Attack3()
	attack = true





	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-0.9)*angles(math.rad(50),math.rad(0),math.rad(35))},"Quad","InOut",0.4)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(-35))},"Quad","InOut",0.4)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(65),math.rad(0),math.rad(35))},"Quad","Out",0.4)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(-30),math.rad(0),math.rad(0))},"Quad","Out",0.4)
	SetTween(RH,{C0=CFrame.new(.5, -0, -.25)*angles(math.rad(60),math.rad(0),math.rad(30))},"Quad","InOut",0.4)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(-0),math.rad(0),math.rad(15))},"Quad","InOut",0.4)


	so("3136984947", Head,5, .8)

	--	LAP.Parent = Character	
	Swait(.4*30)
	local portal =Instance.new("Part")
	portal.Reflectance = 0
	portal.Transparency = 1
	portal.CanCollide = false
	portal.Locked = true
	portal.Anchored=true
	portal.BrickColor = BrickColor.new("Really blue")
	portal.Name = "portal"
	portal.Size = Vector3.new()
	portal.Material = "SmoothPlastic"
	portal:BreakJoints()	
	portal.CFrame = RootPart.CFrame*cn(0,0,-0)
	local Portalfloor,PortalPos = rayCast(portal.Position, CFrame.new(portal.Position, portal.Position - Vector3.new(0, 1, 0)).lookVector, 80, Character)
	portal.CFrame = cn(PortalPos)

	local max = 25
	local min = 0
	local light = min
	if OverClocking == true then	
		min = 0
		max = 50
		light = 3
	end		

	coroutine.resume(coroutine.create(function()
		--

		WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(0,0,0), Size2 = (VT(max*2,.1,max*2)), Transparency = 0.25, Transparency2 = 1, CFrame = portal.CFrame*CF(0,.05,0) , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(180, 128, 255), SoundID = 167191994, SoundPitch = 1, SoundVolume = 4,TweenNType="Quad",TweenOType="Out"})
		--	WACKYEFFECT({Time = 240, EffectType = "Sphere", Size = VT(0,.1,0), Size2 = VT(light-.5,0.1,light-.5)*1.5, Transparency = 0, Transparency2 = 1, CFrame=portal.CFrame*cn(0,-0,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = 376976397, SoundPitch = 1, SoundVolume = 3,TweenNType="Back",TweenOType="Out"})
		--Swait((120/60)*30)

		coroutine.resume(coroutine.create(function()
			wait(.1)
			for _,c in pairs(workspace:children()) do			








				local h = c:FindFirstChild("Humanoid")
				for _,v in pairs(c:children()) do
					if v:IsA("Humanoid") then
						if	v.Health > 0.0001 then
							h = v else  h = nil end
					end
				end

				local head = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")

				if h ~= nil and head ~= nil then
					local targ = head.Position - portal.Position
					local mag = targ.magnitude


					if mag < max and mag > min  and c ~= Character then

						print("Kill")
						coroutine.resume(coroutine.create(function()
							local Shade =Instance.new("Model",Effects)
							local hed =Instance.new("Part")
							hed.Reflectance = 0
							hed.Transparency = 1
							hed.CanCollide = false
							hed.Locked = true
							hed.Anchored=false
							hed.Material = "ForceField"
							hed.BrickColor = BrickColor.new("Really black")
							--head.Material = "ForceField"
							local sTor=hed:Clone()
							sTor.Name = "Torso2"
							sTor.Size = Vector3.new(2,2,1)
							--sTor.Material = "ForceField"
							sTor:BreakJoints()	
							sTor.CFrame = portal.CFrame*cn(0,-10,0)
							local sraor=hed:Clone()
							sraor.Name = "RightArm"
							sraor.Size = Vector3.new(1,2,1)
							--sraor.Material = "ForceField"
							sraor:BreakJoints()	
							sraor.CFrame = portal.CFrame*cn(0,-10,0)
							local slaor=sraor:Clone()
							slaor.Name = "LeftArm"
							local srlor=sraor:Clone() 
							srlor.Name = "RightLeg"
							local sllor=sraor:Clone() 
							sllor.Name = "LeftLeg"
							hed.Name = "Head2"
							hed.Size = Vector3.new(1,1,1)
							--hed.Material = "ForceField"
							hed:BreakJoints()	
							hed.CFrame = portal.CFrame*cn(0,-10,0)

							-- local Mesh =Instance.new("SpecialMesh",hed)

							--Mesh.Scale=Vector3.new(1.25,1.25,1.25)

							sTor.Anchored = true
							hed.Parent = Shade
							sTor.Parent = Shade
							sraor.Parent = Shade
							slaor.Parent = Shade
							srlor.Parent = Shade
							sllor.Parent = Shade


							Swait((math.random(1,400)/10))
							head.Anchored = true

							SetTween(sTor,{Transparency=0},"Quad","InOut",.24)
							SetTween(hed,{Transparency=0},"Quad","InOut",.24)
							SetTween(sraor,{Transparency=0},"Quad","InOut",.24)
							SetTween(slaor,{Transparency=0},"Quad","InOut",.24)
							SetTween(srlor,{Transparency=0},"Quad","InOut",.24)
							SetTween(sllor,{Transparency=0},"Quad","InOut",.24)






							local NeckW2=MakeJoint(sTor,sTor,hed,CFrame.new(0,0,0))
							NeckW2.C1 = NeckW.C1

							--print(WRJ.Parent.Name)

							local RW2=MakeJoint(sTor,sTor,sraor,cf(0,0,0))

							local LW2=MakeJoint(sTor,sTor,slaor,cf(0,0,0))

							local RH2=MakeJoint(sTor,sTor,srlor,cf(0,0,0))

							local LH2=MakeJoint(sTor,sTor,sllor,cf(0,0,0))



							RW2.C1 = cn(0, 0.5, 0)
							LW2.C1 = cn(0, 0.5, 0)
							RH2.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							LH2.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))








							--------
							--(#Torso)
							SetTween(sTor,{CFrame=head.CFrame*CFrame.new(0,-2,4)*angles(math.rad(10),math.rad(0),math.rad(0))},"Quad","InOut",1/20)
							--------
							--(#Head)
							SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",1/20)
							--------
							--(#Right Arm)
							SetTween(RW2,{C0=CFrame.new(1.3 , 0.5, -.25)*angles(math.rad(90),math.rad(0),math.rad(-35))},"Quad","InOut",1/20)
							--------
							--(#Left Arm)
							SetTween(LW2,{C0=CFrame.new(-1.3, 0.5, -.25)*angles(math.rad(90),math.rad(0),math.rad(35))},"Quad","InOut",1/20)
							--------
							--(#Right Leg)
							SetTween(RH2,{C0=CFrame.new(.5, 0.25, -.25)*angles(math.rad(45),math.rad(0),math.rad(0))},"Quad","InOut",1/20)
							--------
							--(#Left Leg)
							SetTween(LH2,{C0=CFrame.new(-.5, 0.25, -.25)*angles(math.rad(45),math.rad(0),math.rad(0))},"Quad","InOut",1/20)



							Swait((1/5)*30)
							--------
							--(#Torso)
							SetTween(sTor,{CFrame=head.CFrame*CFrame.new(0,0,1)},"Back","Out",1/3)
							--------
							--(#Head)
							SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0))},"Quad","InOut",1/30)
							--------
							--(#Right Arm)
							SetTween(RW2,{C0=CFrame.new(1.3 , 0.5, -.25)*angles(math.rad(90),math.rad(0),math.rad(-35))},"Quad","InOut",1/30)
							--------
							--(#Left Arm)
							SetTween(LW2,{C0=CFrame.new(-1.3, 0.5, -.25)*angles(math.rad(90),math.rad(0),math.rad(35))},"Quad","InOut",1/30)
							--------
							--(#Right Leg)
							SetTween(RH2,{C0=CFrame.new(.5, 0.25, -.25)*angles(math.rad(45),math.rad(0),math.rad(0))},"Quad","InOut",1/30)
							--------
							--(#Left Leg)
							SetTween(LH2,{C0=CFrame.new(-.5, 0.25, -.25)*angles(math.rad(45),math.rad(0),math.rad(0))},"Quad","InOut",1/30)

							Lightning(Head.Eye.Position,sTor.Position, 4, .4, BrickColor.new("Alder"), .1, .9,1,.57,nil)	



							Swait(1)
							--------
							local Grab=MakeJoint(sTor,sTor,head,cf(0,0,-1))
							head.Anchored = false
							--(#Torso)

							--------
							--(#Head)
							SetTween(NeckW2,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(0))},"Back","Out",1/3)
							--------
							--(#Right Arm)
							SetTween(RW2,{C0=CFrame.new(1.3 , 0.5, -.3)*angles(math.rad(90),math.rad(0),math.rad(-50))},"Back","Out",1/3)
							--------
							--(#Left Arm)
							SetTween(LW2,{C0=CFrame.new(-1.3, 0.5, -.3)*angles(math.rad(90),math.rad(0),math.rad(50))},"Back","Out",1/3)
							--------
							--(#Right Leg)
							SetTween(RH2,{C0=CFrame.new(.5, -0.90, 0)},"Back","Out",1/3)
							--------
							--(#Left Leg)
							SetTween(LH2,{C0=CFrame.new(-.5, -0.90, 0)},"Back","Out",1/3)
							Swait((math.random(1,400)/10))

							SetTween(sTor,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							SetTween(hed,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							SetTween(sraor,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							SetTween(slaor,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							SetTween(srlor,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							SetTween(sllor,{Color = Color3.fromRGB(180, 128, 255)},"Quad","Out",1.5)
							so("2924264089", sTor,6, 1)
							Swait(1.4*30)

							WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0.8, Transparency2 = 1, CFrame = sTor.CFrame , MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(180, 128, 255), SoundID = 3398040717, SoundPitch = 1, SoundVolume = 2,TweenNType="Back",TweenOType="Out"})



							BulletHitEffectSpawn(sTor.CFrame*ANGLES(mr(90),0,0),"Explode")

							Lightning(sTor.Position,Head.Eye.Position, 10, 0.6, BrickColor.new("Alder"), 1.5, 0,1,.55,1)	


							CFMagniDamage(sTor.CFrame,10,60,85,100,"Knockdown")
							Shade:Destroy()



						end))

					end
				end
			end
		end))
		--CFMagniDamage(portal.CFrame,60,10,20,0,"Normal")
		portal:Destroy()	
	end))




	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(-30))},"Quad","Out",0.5)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(30))},"Quad","Out",0.5)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(150),math.rad(0),math.rad(55))},"Quad","Out",0.5)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Back","Out",0.7)
	SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(-25),math.rad(-40),math.rad(0))},"Quad","Out",0.5)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(40),math.rad(0))},"Quad","Out",0.5)




	--	LAP.Parent = Character	
	Swait(0.5*30)






	attack=false	
end







function Tuant2()
	attack = true 

	dancing = true
	while dancing == true  do 
		local	dahspeed=.5+visn/100
		change = (0.60*1)*dahspeed
		Humanoid.JumpPower = 0	
		Humanoid.WalkSpeed=2
		local speed = 1 + visn/1000
		SetTween(RJW,{C0=RootCF*CFrame.new(0+(.75*math.cos(sine/8)),0+(.2*math.sin(sine/16)),-.25+(-.1*math.cos(sine/4)))*angles(math.rad(-10-10*math.sin(sine/16)),math.rad(0),math.rad(0+(20*math.sin(sine/8))))},"Quad","InOut",0.1/speed)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20*math.sin(sine/16)),math.rad(0),math.rad(0-(20*math.sin(sine/32))))},"Quad","InOut",0.1/speed)
		SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(120+(-20*math.cos(sine/8))+(-20*math.sin(sine/16))),math.rad(0),math.rad(25+(25*math.cos(sine/8)) ))},"Quad","Out",0.1/speed)
		SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(120+(20*math.cos(sine/8))+(-20*math.sin(sine/16))),math.rad(0),math.rad(-25+(25*math.cos(sine/8))))},"Quad","Out",0.1/speed)
		SetTween(RH,{C0=CFrame.new(.5, -.9+.1*math.cos(sine/4), -.1-.1*math.cos(sine/4))*angles(math.rad(-10-(10*math.sin(sine/16))-(5*math.sin(sine/8)) ),math.rad(-20+(-20*math.sin(sine/8))),math.rad(10+(20*math.cos(sine/8))))},"Quad","InOut",0.1/speed)
		SetTween(LH,{C0=CFrame.new(-.5, -.9+.1*math.cos(sine/4), -.1-.1*math.cos(sine/4))*angles(math.rad(-10-(10*math.sin(sine/16))+(5*math.sin(sine/8)) ),math.rad(20+(-20*math.sin(sine/8))),math.rad(-10+(20*math.cos(sine/8))))},"Quad","InOut",0.1/speed)

		Swait()			
	end
	Humanoid.JumpPower = 60	
	Humanoid.WalkSpeed=16	
	attack = false 	
end



function UpdateJets()
	if  Jets == true  then
		--	Jets=true
		SetTween(RB1,{C0=CF(0,.25,-.05)*ANGLES(mr(25),0,0)},"Back","Out",.5)
		SetTween(RB2,{C0=CF(0,.25,.05)*ANGLES(mr(-25),0,0)},"Back","Out",.5)
		SetTween(LB1,{C0=CF(0,.25,-.05)*ANGLES(mr(25),0,0)},"Back","Out",.5)
		SetTween(LB2,{C0=CF(0,.25,.05)*ANGLES(mr(-25),0,0)},"Back","Out",.5)
		for _,v in next, RightLeg:GetDescendants() do if v:IsA("ParticleEmitter")  then    v.Enabled = true  end  end

		for _,v in next, LeftLeg:GetDescendants() do if v:IsA("ParticleEmitter")  then    v.Enabled = true  end  end

	else
		--	Jets=false
		SetTween(RB1,{C0=CF(0,-0,0)*ANGLES(0,0,0)},"Back","Out",.5)
		SetTween(RB2,{C0=CF(0,-0,0)*ANGLES(0,0,0)},"Back","Out",.5)
		SetTween(LB1,{C0=CF(0,-0,0)*ANGLES(0,0,0)},"Back","Out",.5)
		SetTween(LB2,{C0=CF(0,-0,0)*ANGLES(0,0,0)},"Back","Out",.5)	
		for _,v in next, RightLeg:GetDescendants() do if v:IsA("ParticleEmitter")  then    v.Enabled = false  end  end

		for _,v in next, LeftLeg:GetDescendants() do if v:IsA("ParticleEmitter")  then    v.Enabled = false  end  end

	end
end



function DroneSwarm()
	attack = true
	--[
	local randomtuant = math.random(1,4)
	if randomtuant == 1 then
		so("159972582", Head,2, 1)
	elseif randomtuant == 2 then
		so("159882410", Head,2, 1)
	elseif randomtuant == 3 then
		so("159882578", Head,2, 1)
	elseif randomtuant == 4 then
		so("159882417", Head,2, 1)
	end
	for _,v in pairs(Head:children()) do
		if v:isA("Sound") then
			EffectPack.Echo2:Clone().Parent = v
			EffectPack.PT:Clone().Parent = v
		end
	end
	local fatsavecf = MHIT
	coroutine.resume(coroutine.create(function()
		for i = 1,math.random(2,4) do Swait(math.random(1,10)) SpawnDrone(fatsavecf)
		end end))
	--]]

	for i = 0,1,0.1 do 


		change = (0.60*5)
		Humanoid.JumpPower = 10	
		Humanoid.WalkSpeed=0	

		local speed = 1


		if weps == false then
			SetTween(RJW,{C0=RootCF*cn(0, 0, -0.1 + 0.05 * math.cos(sine / 8 )) * angles(math.rad(-5 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(-20))},"Quad","InOut",0.1/speed)
			SetTween(NeckW,{C0=NeckCF*angles(math.rad(20.5*1 - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16))+math.rad(10+(math.random(-5,5)*1)), math.rad(20 - -0+(math.random(-5,5)*1) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.1/speed)
			SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(0 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 +( math.random(0,5)*1) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)
		else
			SetTween(RJW,{C0=RootCF*cn(0, 0, -0.3 + 0.05 * math.cos(sine / 8 )) * angles(math.rad(-5 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(-20))},"Quad","InOut",0.1/speed)
			SetTween(NeckW,{C0=NeckCF*angles(math.rad(20.5*1 - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16))+math.rad(10+(math.random(-5,5)*1)), math.rad(20 - 0+(math.random(-5,5)*1) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.1/speed)
			SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(40 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(30 +( math.random(0,5)*1) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)


		end
		SetTween(LW,{C0=cf(-1.46 + .0 * math.cos(sine / 8), 0.5 + .05 * math.cos(sine / 8), 0) * angles(math.rad(170 - 2 * math.cos(sine / 8 )), math.rad(5), math.rad(18 - (math.random(0,5)*1) * math.cos(sine / 8 )))},"Linear","Out",0.1/speed)
		SetTween(RH,{C0=CFrame.new(.5, -0.9- .1 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(-5.5 - 0 * math.cos(sine / 8)),math.rad(-5),math.rad(6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.15/speed)
		SetTween(LH,{C0=CFrame.new(-.5, -0.9- .1 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(-5.5 - 0 * math.cos(sine / 8)),math.rad(5),math.rad(-6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.15/speed)


		Swait()
	end

	for i = 0,3,0.1 do 


		change = (0.60*5)
		Humanoid.JumpPower = 10	
		Humanoid.WalkSpeed=0	

		local speed = 1


		if weps == false then
			SetTween(RJW,{C0=RootCF*cn(0, 0, -0.1 + 0.05 * math.cos(sine / 8 )) * angles(math.rad(-5 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(20))},"Quad","InOut",0.1/speed)
			SetTween(NeckW,{C0=NeckCF*angles(math.rad(-5-20.5*1 - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16))+math.rad((math.random(-5,5)*1)), math.rad(-20 - -0+(math.random(-5,5)*1) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.1/speed)
			SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(90 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 +( math.random(0,5)*1) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)
		else
			SetTween(RJW,{C0=RootCF*cn(0, 0, -0.3 + 0.05 * math.cos(sine / 8 )) * angles(math.rad(-5 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(20))},"Quad","InOut",0.1/speed)
			SetTween(NeckW,{C0=NeckCF*angles(math.rad(-5+20.5*1 - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16))+math.rad((math.random(-5,5)*1)), math.rad(-20 - 0+(math.random(-5,5)*1) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.1/speed)
			SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(90 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(30 +( math.random(0,5)*1) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)


		end
		SetTween(LW,{C0=cf(-1.46 + .0 * math.cos(sine / 8), 0.5 + .05 * math.cos(sine / 8), 0) * angles(math.rad(170 - 2 * math.cos(sine / 8 )), math.rad(5), math.rad(18 - (math.random(0,5)*1) * math.cos(sine / 8 )))},"Linear","Out",0.1/speed)
		SetTween(RH,{C0=CFrame.new(.5, -0.9- .1 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(-5.5 - 0 * math.cos(sine / 8)),math.rad(-5),math.rad(6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.15/speed)
		SetTween(LH,{C0=CFrame.new(-.5, -0.9- .1 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(-5.5 - 0 * math.cos(sine / 8)),math.rad(5),math.rad(-6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.15/speed)


		Swait()
	end
	attack = false	
end


----------------------------------------------------------------------------------------------------
flying = false

function FlyMove()
	attack = true
	local NextAnimSpeed=0.1
	local	dahspeed=1
	flying = true
	so(2157448269,Torso,2,1)
	Jets = true
	UpdateJets()
	local bg2 = Instance.new("BodyGyro", RootPart)
	for i = 0,1,NextAnimSpeed do Swait()
		local inairvel2 = 0

		Humanoid.PlatformStand = false
		change = (0.60*2)*dahspeed
		Humanoid.JumpPower = 0	
		Humanoid.WalkSpeed=0	

		coroutine.resume(coroutine.create(function()

			bg2.D = 300
			bg2.P = 9999
			bg2.maxTorque = Vector3.new(1e+005,1e+000,1e+005)*math.huge
			bg2.CFrame  = CFrame.new(RootPart.Position,Vector3.new(MHIT.p.x,RootPart.Position.y,MHIT.p.z))

		end))


		local ADNum = 0	
		SetTween(RJW,{C0=RootCF*cn(0, 0+ .25 * math.cos(sine / 8), 1.5 + .4 * math.sin(sine / 8 +ADNum* math.cos(sine / 8*2))) * angles(math.rad(45 - 2.5 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(20))},"Quad","InOut",0.1)
		SetTween(NeckW,{C0=NeckCF*angles(math.rad(23.5 - 1.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(-20 - 0.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.1)
		SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 + 4 * math.sin(sine / 8)))},"Quad","Out",0.1)
		SetTween(LW,{C0=cf(-1.45 + .0 * math.cos(sine / 8), 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(5), math.rad(-18 - 4 * math.sin(sine / 8 )))},"Quad","Out",0.1)
		SetTween(RH,{C0=CFrame.new(.5, -0.45+ .1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -0.3) * CFrame.Angles(math.rad(45.5+ 10 * math.sin(sine / 8)),math.rad(-25),math.rad(2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)
		SetTween(LH,{C0=CFrame.new(-.5, -0.85+.1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -.1) * CFrame.Angles(math.rad(11.5 + 5 * math.sin(sine / 8)),math.rad(25),math.rad(-2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)



		--CGPT:Emit(1)
	end			
	if flying==true then






		coroutine.resume(coroutine.create(function()
			while task.wait() do

				so("169572883",Torso,3,1.0)
				wait(.5)
				if flying == false then 
					break
				end

			end	
		end)) end
	if flying == true  then


		local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, .1, 0)+RootPart.CFrame.lookVector*60, P = 5000, maxForce = Vector3.new(80000, 80000, 80000), Parent = RootPart})



		for i = 1,40,.25 do  if flying == true then Swait() end
			local inairvel2 = 0

			Humanoid.PlatformStand = true
			change = (0.60*3)*dahspeed
			Humanoid.JumpPower = 0	
			Humanoid.WalkSpeed=0	
			coroutine.resume(coroutine.create(function()

				bg2.D = 300
				bg2.P = 9999
				bg2.maxTorque = Vector3.new(1e+005,1e+000,1e+005)*math.huge
				bg2.CFrame  = CFrame.new(RootPart.Position,MHIT.p)

			end))
			if OverClocking == false  then
				bodyVelocity.velocity=Vector3.new(0, .1, 0)+RootPart.CFrame.lookVector*100
			else
				bodyVelocity.velocity=Vector3.new(0, .1, 0)+RootPart.CFrame.lookVector*200
			end
			if OverClocking == true and flying == true then
				Lightning((RootPart.CFrame*CF(math.random(-2,2),math.random(-1,1),-0)).p,(RootPart.CFrame*CF(math.random(-36,36),math.random(-36,36),70)).p, 10, 0.6, BrickColor.new("Alder"), 1.5, .9,-.25*2,.55,1)	
			end
			local ADNum = 0	
			SetTween(RJW,{C0=RootCF*cn(0, 1, 0) * angles(math.rad(60 - 6.5 * math.cos(sine / 8)), math.rad(0), math.rad(0))},"Quad","InOut",0.08)
			SetTween(NeckW,{C0=NeckCF*angles(math.rad(-13.5 - 5.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(0 - 0.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.1)
			SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 4 * math.cos(sine / 8 )), math.rad(-5), math.rad(28 + 4 * math.sin(sine / 8)))},"Quad","Out",0.2)
			SetTween(LW,{C0=cf(-1.45 + .0 * math.cos(sine / 8), 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 4 * math.cos(sine / 8 )), math.rad(5), math.rad(-28 - 4 * math.sin(sine / 8 )))},"Quad","Out",0.2)
			SetTween(RH,{C0=CFrame.new(.5, -0.85+ .1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -0.1) * CFrame.Angles(math.rad(-11.5+ 5 * math.sin(sine / 8)),math.rad(-15),math.rad(12.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)
			SetTween(LH,{C0=CFrame.new(-.5, -0.85+.1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -.1) * CFrame.Angles(math.rad(-11.5 + 5 * math.sin(sine / 8)),math.rad(15),math.rad(-12.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)



			--CGPT:Emit(1)


		end coroutine.resume(coroutine.create(function()
			game:GetService("Debris"):AddItem(bodyVelocity, 0.1)	end))
	end	
	so(1053625322,LeftLeg,2,0.5)
	so(1053625322,RightLeg,2,0.5)
	for i = 0,1.0,.15 do Swait()
		Humanoid.PlatformStand = false

		local inairvel2 = 0


		change = (0.60*2)*dahspeed
		Humanoid.JumpPower = 0	
		Humanoid.WalkSpeed=0	



		local ADNum = 0	
		SetTween(RJW,{C0=RootCF*cn(0, 0+ .25 * math.cos(sine / 8), 1.5 + .4 * math.sin(sine / 8 +ADNum* math.cos(sine / 8*2))) * angles(math.rad(-20 - 2.5 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(20))},"Quad","InOut",0.12)
		SetTween(NeckW,{C0=NeckCF*angles(math.rad(43.5 - 1.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(-20 - 0.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.2)
		SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(-5), math.rad(0 + 4 * math.sin(sine / 8)))},"Quad","Out",0.2)
		SetTween(LW,{C0=cf(-1.45 + .0 * math.cos(sine / 8), 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(5), math.rad(-28 - 4 * math.sin(sine / 8 )))},"Quad","Out",0.2)
		SetTween(RH,{C0=CFrame.new(.5, -0.45+ .1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -0.3) * CFrame.Angles(math.rad(21.5+ 10 * math.sin(sine / 8)),math.rad(-25),math.rad(2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)
		SetTween(LH,{C0=CFrame.new(-.5, -0.85+.1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -.1) * CFrame.Angles(math.rad(11.5 + 5 * math.sin(sine / 8)),math.rad(25),math.rad(-2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.1)



		coroutine.resume(coroutine.create(function()

			bg2.D = 300
			bg2.P = 9999
			bg2.maxTorque = Vector3.new(1e+005,1e+000,1e+005)*math.huge
			bg2.CFrame  = CFrame.new(RootPart.Position,Vector3.new(MHIT.p.x,RootPart.Position.y,MHIT.p.z))

		end))
	end
	wait(.1)
	coroutine.resume(coroutine.create(function()

		bg2:Destroy()

	end))	

	coroutine.resume(coroutine.create(function()

		for i = 1,10 do
			for _,v in pairs(Torso:children()) do
				if v:isA("Sound") then
					v.Volume = v.Volume - .2
				end
			end
			Swait()
		end
	end))
	flying = false
	Jets = false
	UpdateJets()
	for i = 0,0.75,.10 do Swait()
		Humanoid.PlatformStand = false

		local inairvel2 = 0


		change = (0.60*2)*dahspeed
		Humanoid.JumpPower = 0	
		Humanoid.WalkSpeed=0	



		local ADNum = 0	
		SetTween(RJW,{C0=RootCF*cn(0, 0+ .25 * math.cos(sine / 8), -0.2 + .1 * math.sin(sine / 8 +ADNum* math.cos(sine / 8*2))) * angles(math.rad(-20 - 2.5 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(20))},"Quad","InOut",0.08)
		SetTween(NeckW,{C0=NeckCF*angles(math.rad(43.5 - 1.5 * math.cos(sine / 8 +ADNum* math.cos(sine / 8*2))), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(-20 - 0.5 * math.cos(sine / 15 +.4* math.cos(sine / 10))))},"Quad","InOut",0.08)
		SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(-5), math.rad(0 + 4 * math.sin(sine / 8)))},"Quad","Out",0.2)
		SetTween(LW,{C0=cf(-1.45 + .0 * math.cos(sine / 8), 0.5 + .05 * math.sin(sine / 8), .0) * angles(math.rad(-20 + 5 * math.cos(sine / 8 )), math.rad(5), math.rad(-28 - 4 * math.sin(sine / 8 )))},"Quad","Out",0.2)
		SetTween(RH,{C0=CFrame.new(.5, -0.45+ .1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -0.3) * CFrame.Angles(math.rad(-21.5+ 10 * math.sin(sine / 8)),math.rad(-25),math.rad(2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.08)
		SetTween(LH,{C0=CFrame.new(-.5, -0.85+.1 * math.sin(sine / 8 +ADNum* math.sin(sine / 8*2)), -.1) * CFrame.Angles(math.rad(-11.5 + 5 * math.sin(sine / 8)),math.rad(25),math.rad(-2.5- 0.0 * math.sin(sine / 8)))},"Quad","InOut",0.08)




	end

	Humanoid.JumpPower = 20	
	Humanoid.WalkSpeed=10	
	attack = false
end


function Tesla()
	attack=true	
	local dahspeed=1
	if attack == true and mememode == true then
		dahspeed=3 --speedstuff --5
	end --/dahspeed
	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50))},"Quad","InOut",.3/dahspeed)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50))},"Quad","InOut",.3/dahspeed)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(-20))},"Quad","InOut",.3/dahspeed)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(-10),math.rad(0),math.rad(-20))},"Quad","InOut",.3/dahspeed)
	SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)

	--SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(-30+90),math.rad(-90),math.rad(0))},"Quad","InOut",.3)
	SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.1)	
	if OverClocking ==true then

		SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.1)	

	end

	wait(.3/dahspeed)
	--DGT()


	coroutine.resume(coroutine.create(function()	
		so("2924262751", RightArm,4, 1.2)
		wait(.1/dahspeed)	


		CFMagniDamage(LeftArm.CFrame,5,40,60,math.random(500,1000)/10,"Knockdown")


	end))	

	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.2)*angles(math.rad(0),math.rad(-0),math.rad(-20))},"Back","Out",.3/dahspeed)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(-30),math.rad(-0),math.rad(20))},"Back","Out",.3/dahspeed)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(-10),math.rad(0),math.rad(10))},"Back","Out",.3/dahspeed)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(150),math.rad(-0),math.rad(-5))},"Back","Out",.4/dahspeed)
	SetTween(RH,{C0=CFrame.new(.5, -.8, -.1)*angles(math.rad(-5),math.rad(0),math.rad(5))},"Back","Out",.3/dahspeed)
	SetTween(LH,{C0=CFrame.new(-.5, -.8, -.1)*angles(math.rad(10),math.rad(40),math.rad(-5))},"Back","Out",.3/dahspeed)

	--SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(120),math.rad(-90),math.rad(0))},"Back","Out",.15)

	SetTween(LHP2,{C0=CF(0,-.85,0)},"Quad","InOut",0.05)	

	if OverClocking ==true then

		SetTween(LHP.Glow,{Transparency = .15},"Quad","InOut",0.05)	

	end
	for i = 1,25 do 

		local v = findNearestTorso(LHP.Glow.Position,150)

		if v ~= nil then
			Swait(1)
			local  lighth2,lightp2,test12 = rayCast(LHP.Glow.CFrame.p, CF(LHP.Glow.CFrame.p,v.Position).lookVector, 150, Character)

			Lightning(LHP.Glow.CFrame.p,lightp2 , 5, 2.6, BrickColor.new("Alder"), 2, .5,-.25*2,.5,nil)
			BulletHitEffectSpawn(CF(lightp2,lightp2+test12),"Spark")

			CFMagniDamage(CF(lightp2),10,45,80,50,"Knockdown")
		else
			Swait(.3*30)
			break	
		end	

	end







	SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.25)	
	SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.25)	
	attack = false	
end


    --[[
    
    function AT1()
    attack=true	
    local dahspeed=1
    if attack == true and mememode == true then
        dahspeed=3 --speedstuff --5
    end --/dahspeed
    SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50))},"Quad","InOut",.3/dahspeed)
    SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50))},"Quad","InOut",.3/dahspeed)
    SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(30),math.rad(0),math.rad(-20))},"Quad","InOut",.3/dahspeed)
    SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(60),math.rad(0),math.rad(-0))},"Quad","InOut",.3/dahspeed)
    SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)
    SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)
    
    --SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(-30+90),math.rad(-90),math.rad(0))},"Quad","InOut",.3)
    SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.1)	
    if OverClocking ==true then
    
    SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.1)	
        
    end
    
    wait(.3/dahspeed)
    --DGT()
    
    
    
    
    
    
    
    
    
    
    coroutine.resume(coroutine.create(function()	
        so("1428541279", RightArm,1.6, math.random(120,220)/100)
        wait(.1/dahspeed)	
    
    if OverClocking ==false then
    CFMagniDamage(LeftArm.CFrame,5,40,60,math.random(500,1000)/10,"Knockdown")
    
    else
    
        local v = findNearestTorso(LHP.Glow.Position,20)
        
    if v ~= nil then
    
        Lightning(LHP.Glow.CFrame.p,v.Position, 10, 0.6, BrickColor.new("Alder"), .5, .5,-.25*2,.5,nil)
        Lightning(LHP.Glow.CFrame.p,v.Position, 10, 0.6, BrickColor.new("Alder"), .5, .5,-.25*2,.5,nil)
    
            CFMagniDamage(LHP.Glow.CFrame,20,45,80,math.random(320,520)/10,"Knockdown")
            
    end	
    
        end
    end))	
    
    SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.4)*angles(math.rad(0),math.rad(-40),math.rad(-60))},"Back","Out",.1/dahspeed)
    SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(60))},"Back","Out",.1/dahspeed)
    SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(-40))},"Back","Out",.1/dahspeed)
    SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(-45),math.rad(-30))},"Back","Out",.1/dahspeed)
    SetTween(RH,{C0=CFrame.new(.5, -.8, -.6)*angles(math.rad(-20),math.rad(0),math.rad(40))},"Back","Out",.1/dahspeed)
    SetTween(LH,{C0=CFrame.new(-.5, -.8, -.5)*angles(math.rad(30),math.rad(0),math.rad(20))},"Back","Out",.1/dahspeed)
    
    --SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(120),math.rad(-90),math.rad(0))},"Back","Out",.15)
    
    SetTween(LHP2,{C0=CF(0,-.85,0)},"Quad","InOut",0.05)	
    
    if OverClocking ==true then
    
    SetTween(LHP.Glow,{Transparency = .75},"Quad","InOut",0.05)	
        
    end
    
    
    wait(.15/dahspeed)	
    
    SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.25)	
    SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.25)	
    attack = false	
    end
    --]]







function AT1()
	attack=true	
	local dahspeed=1
	if attack == true and mememode == true then
		dahspeed=3 --speedstuff --5
	end --/dahspeed
	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50))},"Quad","InOut",.3/dahspeed)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50))},"Quad","InOut",.3/dahspeed)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(30),math.rad(0),math.rad(-20))},"Quad","InOut",.3/dahspeed)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(60),math.rad(0),math.rad(-0))},"Quad","InOut",.3/dahspeed)
	SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",.3/dahspeed)

	--SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(-30+90),math.rad(-90),math.rad(0))},"Quad","InOut",.3)
	SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.1)	
	if OverClocking ==true then

		SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.1)	

	end

	wait(.3/dahspeed)
	--DGT()










	coroutine.resume(coroutine.create(function()	
		so("1428541279", RightArm,1.6, math.random(120,220)/100)
		wait(.1/dahspeed)	

		if OverClocking ==false then
			CFMagniDamage(LeftArm.CFrame,5,40,60,math.random(500,1000)/10,"Knockdown")

		else

			local v = findNearestTorso(LHP.Glow.Position,20)

			if v ~= nil then

				Lightning(LHP.Glow.CFrame.p,v.Position, 10, 0.6, BrickColor.new("Alder"), .5, .5,-.25*2,.5,nil)
				Lightning(LHP.Glow.CFrame.p,v.Position, 10, 0.6, BrickColor.new("Alder"), .5, .5,-.25*2,.5,nil)

				CFMagniDamage(LHP.Glow.CFrame,20,45,80,math.random(320,520)/10,"Knockdown")

			end	

		end
	end))	

	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,-.4)*angles(math.rad(0),math.rad(-40),math.rad(-60))},"Back","Out",.1/dahspeed)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(60))},"Back","Out",.1/dahspeed)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(-40))},"Back","Out",.1/dahspeed)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(-45),math.rad(-30))},"Back","Out",.1/dahspeed)
	SetTween(RH,{C0=CFrame.new(.5, -.8, -.6)*angles(math.rad(-20),math.rad(0),math.rad(40))},"Back","Out",.1/dahspeed)
	SetTween(LH,{C0=CFrame.new(-.5, -.8, -.5)*angles(math.rad(30),math.rad(0),math.rad(20))},"Back","Out",.1/dahspeed)

	--SetTween(SwordW,{C0=CFrame.new(0,-1,0)*angles(math.rad(120),math.rad(-90),math.rad(0))},"Back","Out",.15)

	SetTween(LHP2,{C0=CF(0,-.85,0)},"Quad","InOut",0.05)	

	if OverClocking ==true then

		SetTween(LHP.Glow,{Transparency = .75},"Quad","InOut",0.05)	

	end


	wait(.15/dahspeed)	

	SetTween(LHP2,{C0=CF(0,0,0)},"Quad","InOut",.25)	
	SetTween(LHP.Glow,{Transparency = 1},"Quad","InOut",0.25)	
	attack = false	
end

function AT2()
	attack=true	
	local dahspeed=1

	Humanoid.WalkSpeed=5	
	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(60))},"Quad","InOut",0.15)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-60))},"Quad","InOut",0.15)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.15)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.15)
	SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(-20),math.rad(-30),math.rad(0))},"Quad","InOut",0.15)
	SetTween(LH,{C0=CFrame.new(-.5, -.95, -.4)*angles(math.rad(-20),math.rad(-30),math.rad(0))},"Quad","InOut",0.15)




	if OverClocking == false then
		Swait((0.15/dahspeed)*30) 
	else Swait()
	end		so("1428541279", RightArm,1.6, math.random(120,220)/100)
	local RootAndMouse = CF(RootPart.Position ,RootPart.Position+CF(RootPart.Position*VT(1,0,1),MHIT.p*VT(1,0,1)).LookVector) 	
	SetTween(RootPart,{CFrame=RootAndMouse*CF(0,0,-1)},"Back","Out",0.1)


	CFMagniDamage(LeftArm.CFrame*CF(0,-1,-0),7,10,15,4,"Normal")
	Humanoid.WalkSpeed=16	
	SetTween(RJW,{C0=RootCF*CFrame.new(0,-1,0)*angles(math.rad(5),math.rad(0),math.rad(-50))},"Back","Out",0.1)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(50))},"Back","Out",0.15)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Back","Out",0.1)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(math.random(-20,20)),math.rad(-50))},"Back","Out",0.1)
	SetTween(RH,{C0=CFrame.new(.5, -1, -0)*angles(math.rad(-20),math.rad(20),math.rad(10))},"Back","Out",0.1)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(10),math.rad(40),math.rad(-10))},"Back","Out",0.1)

	if OverClocking == false then
		Swait((0.1/dahspeed)*30) 
	else Swait()
	end		
	attack = false		
end

function AT3()
	attack=true	
	local dahspeed=1
	--/dahspeed
	Humanoid.WalkSpeed=5	
	SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-60))},"Quad","InOut",0.15)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(60))},"Quad","InOut",0.15)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.15)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.15)
	SetTween(RH,{C0=CFrame.new(.5, -.95, -.4)*angles(math.rad(-20),math.rad(-30),math.rad(0))},"Quad","InOut",0.15)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(-20),math.rad(-30),math.rad(0))},"Quad","InOut",0.15)

	if OverClocking == false then
		Swait((0.15/dahspeed)*30)
	else Swait()
	end	so("1428541279", RightArm,1.6, math.random(120,220)/100)
	local RootAndMouse = CF(RootPart.Position ,RootPart.Position+CF(RootPart.Position*VT(1,0,1),MHIT.p*VT(1,0,1)).LookVector) 	

	SetTween(RootPart,{CFrame=RootAndMouse*CF(0,0,-1)},"Back","Out",0.1)

	CFMagniDamage(RightArm.CFrame*CF(0,-1,-0),7,10,15,4,"Normal")
	Humanoid.WalkSpeed=16	
	SetTween(RJW,{C0=RootCF*CFrame.new(0,-1,0)*angles(math.rad(5),math.rad(0),math.rad(50))},"Back","Out",0.1)
	SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(-50))},"Back","Out",0.1)
	SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(90),math.rad(math.random(-20,20)),math.rad(50))},"Back","Out",0.1)
	SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Back","Out",0.1)
	SetTween(RH,{C0=CFrame.new(.5, -1, -0)*angles(math.rad(10),math.rad(-40),math.rad(10))},"Back","Out",0.1)
	SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(-20),math.rad(-20),math.rad(-10))},"Back","Out",0.1)


	if OverClocking == false then
		Swait((0.1/dahspeed)*30) 
	else Swait()
	end	



	attack = false		
end





















gui = Instance.new("ScreenGui",game:GetService('CoreGui'))
gui.Name = "Xgui"
guifat = Instance.new("Frame",gui)
guifat.Size =  UDim2.new(1, 0, 1, 36)
guifat.Position = UDim2.new(0, 0, 0, -36)
guifat.Name = "FAT"
guifat.BackgroundTransparency = 1
viewport = Instance.new("ViewportFrame",guifat)
viewport.Size =  UDim2.new(1, 0, 1, 0)
viewport.BackgroundTransparency = 1
viewport.BackgroundColor3 = C3(1,1,1)
viewport.CurrentCamera = workspace.CurrentCamera
function AddstuffinXray()
	for _,v in next, workspace:GetDescendants() do if v:IsA("Humanoid")and  v~=Humanoid  then    
			print(""..v.Parent.Name)
			for _,v2 in next, v.Parent:GetDescendants() do 
				if v2:IsA("BasePart")  then  
					--	print(""..v2.Name)
					local Xpart = EffectPack.Part:Clone()
					Xpart.Parent = viewport
					Xpart.Name = "Xray"
					Xpart.Size = v2.Size+VT(0.05,0.05,0.05)
					Xpart.Material = "ForceField"
					Xpart.Transparency = 0
					Xpart.CFrame = v2.CFrame

					if v2:FindFirstChildOfClass("SpecialMesh") then
						coroutine.resume(coroutine.create(function()
							v2:FindFirstChildOfClass("SpecialMesh").Archivable = false

							local clone = v2:FindFirstChildOfClass("SpecialMesh").Clone()
							clone.Parent = Xpart end))
					end

					local value = Instance.new("ObjectValue",Xpart)
					value.Value = v2
					value.Name = "val"
					Xpart.BrickColor = BrickColor.new("Alder")
					--local Xweld=weld(Xpart,v2,Xpart,cf(0,0,0))
				end

			end	


		end  end

end	



function Attack6()
	SetTween(viewport,{BackgroundTransparency=.15,BackgroundColor3 = C3(0,0,0)},"Bounce","InOut",.25)	
	IsXray = true


	print("ran")


	AddstuffinXray()
	local updatetimer = 0

	while IsXray == true do Swait(5) print("E")
		updatetimer=updatetimer+1 
		if updatetimer > 10 then
			updatetimer=0
			for _,v in next, viewport:GetDescendants() do
				v:Destroy()
			end
			AddstuffinXray()

		end
	end


	SetTween(viewport,{BackgroundTransparency=1,BackgroundColor3 = C3(1,1,1)},"Bounce","InOut",.5)	
	for _,v in next, viewport:GetDescendants() do
		v:Destroy()
	end


end

function ClickCombo()
	if Anim == "Fall" or Anim == "Jump" then
		if Combo == 0 then		
			--DownAT()	
		end
	else				
		if Combo == 4 then
			AT1()	
			Combo = 1
		elseif Combo == 0 then
			AT2()	
			Combo = 1	
		elseif Combo == 1 then
			AT3()
			Combo = 0		
		end
	end
end


local uis = game:GetService("UserInputService")

MoveF = function()
    MHIT = Player:GetMouse().Hit
end

Player:GetMouse().Move:connect(MoveF)

Button1DownF=function()
	Hold = true
    

	if weps and attack == false then
		for _,v in next, SpinnyThingy:GetDescendants() do if v:IsA("ParticleEmitter") or v:IsA("SpotLight")  then    v.Enabled = true  end  end
		Swait(.25*30)
		spinto = 35
		if Hold == true then
			while Hold == true do coroutine.resume(coroutine.create(function() 

					local pipe = SpinnyThingy["Hole"..math.random(1,4)]	
					if OverClocking == false then 
						local  lighth,lightp,test1 = rayCast(pipe.CFrame.p, CFrame.new(pipe.CFrame.p, MHIT.p).lookVector, 70, Character)
						so("419268760", pipe,2, 1.2) 
						Lightning(pipe.CFrame.p,lightp , 5, .5, BrickColor.new("Alder"), .15, 0,-.25*2,.5,nil)
						BulletHitEffectSpawn(CF(lightp,lightp+test1),"Spark")
						CFMagniDamage(CF(lightp),10,5,10,10,"Knockdown")
					else
						local  lighth,lightp,test1 = rayCast(pipe.CFrame.p, CFrame.new(pipe.CFrame.p, MHIT.p).lookVector, 570, Character)
						so("419268760", pipe,2, 1) 
						Lightning(pipe.CFrame.p,lightp , 5, 1.5, BrickColor.new("Alder"), .5, 0,-.25*2,.5,nil)
						BulletHitEffectSpawn(CF(lightp,lightp+test1),"Spark")
						CFMagniDamage(CF(lightp-(CFrame.new(pipe.CFrame.p, lightp).lookVector*5)),10,50,75,50,"Knockdown")

					end

				end))-- so("1273118342", RightArm,2, math.random(10,20)/10) 


				local mathstuff = spin
				if mathstuff<0.05 then
					mathstuff = .5
				end
				if mathstuff > spinto then
					mathstuff = spinto
				end
				local mathEEEE = 6*(1.35-(mathstuff/spinto))
				--print(mathEEEE)
				Swait(mathEEEE) end
		end
	end
	if Hold == true then
		if weps == false and attack == false then 
			while Hold == true do 
				if attack == false then
					ClickCombo() 
				else
					Swait()
				end	
			end
		end
	end

end

Player:GetMouse().Button1Down:Connect(Button1DownF)


Button1UpF=function()

	if Hold==true then

		Hold = false
		spinto = 1
		for _,v in next, SpinnyThingy:GetDescendants() do if v:IsA("ParticleEmitter") or v:IsA("SpotLight")  then    v.Enabled = false  end  end

	end	

end

Player:GetMouse().Button1Up:Connect(Button1UpF)

so("420194643", Head,1, 1)


KeyUpF=function(input, chatting)
    if(not workspace:FindFirstChild('non')) then return end
	if chatting then return end
    local key = game:GetService('UserInputService'):GetStringForKeyCode(input.KeyCode):lower()
	if key == "e" then 
		if flying == true  then
			flying=false
		end	

	end

end

uis.InputEnded:connect(KeyUpF)

KeyDownF=function(input, chatting)
    if(not workspace:FindFirstChild('non')) then return end
    if chatting then return end
    local key = game:GetService('UserInputService'):GetStringForKeyCode(input.KeyCode):lower()
	if  key == "f"   and attack == false and (weps == false or Hold == false) then

		if weps == false then
			weps = true else weps = false
		end
		if weps == true  then
			so("420194643", Head.Handle,1, .8)
			so("420997245", Head.Handle,5, 0.7)
			for _,v in pairs(Head.Handle:children()) do
				if v:isA("Sound") then
					EffectPack.Echo:Clone().Parent = v
				end
			end
			coroutine.resume(coroutine.create(function()
				MiniGun.Lighter.Fire.Enabled = true	 end))
			SetTween(FlameW,{C0=CF(0,-.5,0)},"Back","Out",1)
			--SetTween(H1a,{C0=CF(0,.85,-.85)*ANGLES(mr(90),0,0)},"Quad","In",1)

			--SetTween(RightArm.Lower,{Transparency = 1},"Quad","Out",0.8)	

			SetTween(Fg1,{C0=CF(-.0,.25,-.0)*ANGLES(mr(25),mr(0),mr(-15))},"Back","Out",.5)
			SetTween(Fg2,{C0=CF(.0,.25,-.0)*ANGLES(mr(25),mr(0),mr(15))},"Back","Out",.5)
			SetTween(Fg3,{C0=CF(.0,.25,.0)*ANGLES(mr(-25),mr(0),mr(15))},"Back","Out",.5)
			SetTween(Fg4,{C0=CF(-.0,.25,.0)*ANGLES(mr(-25),mr(0),mr(-15))},"Back","Out",.5)



		else
			so("420194643", Head.Handle,1, 1)
			so("332757260", Head.Handle,3, 1.75)

			for _,v in pairs(Head.Handle:children()) do
				if v:isA("Sound") then
					EffectPack.Echo:Clone().Parent = v
				end
			end			
			coroutine.resume(coroutine.create(function()
				MiniGun.Lighter.Fire.Enabled = false	 end))			
			SetTween(FlameW,{C0=CF(0,0,0)*ANGLES(0,0,0)},"Quad","Out",.5)
			SetTween(H1a,{C0=CF(0,.5,-.4)},"Quad","InOut",.5)

			--SetTween(RightArm.Lower,{Transparency = 0},"Quad","In",1)

			SetTween(Fg1,{C0=CF(0,-0,0)},"Quad","In",.5)
			SetTween(Fg2,{C0=CF(0,-0,0)},"Quad","In",.5)
			SetTween(Fg3,{C0=CF(0,-0,0)},"Quad","In",.5)
			SetTween(Fg4,{C0=CF(0,-0,0)},"Quad","In",.5)

			--SetTween(MX1w,{C0=CF(0,0,.15)*ANGLES(mr(90),0,0)},"Back","Out",1/2)	

			wait(.25)
			SetTween(MX1w,{C0=CF(0,-.7,-.25)},"Quad","InOut",.25)				
		end			

	end
	--if  key == "z"   and attack == false and weps == true then
	--	Attack1()
	--end
	if  key == "x"   and attack == false and weps == false and OverClocking == true then
		Tesla()
	end

	--if  key == "x"   and attack == false and weps == true  then
	--	Attack2()
	--end

	--if  key == "c"   and attack == false and  weps == false then
	--	Attack3()
	--end

	if  key == "e" and attack == false then   
		FlyMove()
	end
	if  key == "y"    then
		if dancing == false and attack == false then
			Tuant2()
		elseif dancing == true and attack == true  then
			dancing = false
		end


	end
	--if  key == "v"   and attack == false and weps == true then

		--DroneSwarm()

	--end



	if  key == "q"   and attack == false then
		if OverClocking == false then
			CurId=CurId-1
			OverClocking = true
			for i = 1,4 do 
				for _,v in next, Character:GetDescendants() do if v:IsA("ParticleEmitter") and  v.Name == "OverClock"..i then    v.Enabled = true  end  end
			end
			lastid= "http://www.roblox.com/asset/?id=3608582022"--281702063 281702063

			lastsongpos = 0
			s2.TimePosition = lastsongpos

			so(254873067,Torso,2,1)
			so(1567217295,Torso,3,.8)
			so(147060085,Torso,5,1)

		else	
			OverClocking = false
			for i = 1,4 do 
				for _,v in next, Character:GetDescendants() do if v:IsA("ParticleEmitter") and  v.Name == "OverClock"..i then    v.Enabled = false  end  end
			end

		end



		KeyDownF("n")

	end





	if  key == "k"   and attack == false then
		--Attack5()
	end
	if  key == "g"   and attack == false then
		if IsXray == false then
			Attack6()
		else
			IsXray = false
		end
	end
	--[[if  key == "t"   and attack == false then
		Tuant()
		attack = true
		so("3319136635", Head,2, 1.2)
		for _,v in pairs(Head:children()) do
			if v:isA("Sound") then
				EffectPack.Echo2:Clone().Parent = v
				EffectPack.PT:Clone().Parent = v
			end
		end



		local animtime = .25
		Humanoid.JumpPower = 10	
		Humanoid.WalkSpeed=0	


		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-20))},"Quad","InOut",animtime)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(20))},"Quad","InOut",animtime)
		SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",animtime)
		SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",animtime)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(20),math.rad(-40),math.rad(0))},"Quad","InOut",animtime)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(20),math.rad(40),math.rad(0))},"Quad","InOut",animtime)

		Swait(animtime*30)



		change = (0.60*3)


		animtime = .75

		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(20))},"Back","Out",animtime)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))},"Back","Out",animtime)
		SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(120),math.rad(0),math.rad(45))},"Back","Out",animtime)
		SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(120),math.rad(0),math.rad(-45))},"Back","Out",animtime)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Back","Out",animtime)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Back","Out",animtime)


		Swait(animtime*30)

		animtime = .75

		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-0))},"Back","Out",animtime)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0))},"Back","Out",animtime)
		SetTween(RW,{C0=CFrame.new(1.35 , 0.5, -.30)*angles(math.rad(95),math.rad(15),math.rad(-45))},"Back","Out",animtime)
		SetTween(LW,{C0=CFrame.new(-1.35, 0.5, -.30)*angles(math.rad(95),math.rad(-15),math.rad(45))},"Back","Out",animtime)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(-0),math.rad(0))},"Back","Out",animtime)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(20),math.rad(0))},"Back","Out",animtime) 

		Swait(animtime*30)	
		animtime = .55

		SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-0))},"Back","Out",animtime)
		SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Back","Out",animtime)
		SetTween(RW,{C0=CFrame.new(1.35 , 0.5, -.30)*angles(math.rad(100),math.rad(0),math.rad(-45))},"Back","Out",animtime)
		SetTween(LW,{C0=CFrame.new(-1.35, 0.5, -.30)*angles(math.rad(100),math.rad(-0),math.rad(45))},"Back","Out",animtime)
		SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(0),math.rad(-0),math.rad(0))},"Back","Out",animtime)
		SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(0),math.rad(20),math.rad(0))},"Back","Out",animtime) 

		Swait(animtime*30)	







		CurId = CurId + 1

		if CurId > 18 then
			CurId = 1	

		end
		warn("now playing song Nr"..CurId)
		if CurId == 1 then
			lastid= "http://www.roblox.com/asset/?id=2984992418"
		elseif CurId == 2 then
			lastid= "http://www.roblox.com/asset/?id=553963314"
		elseif CurId == 3 then
			lastid= "http://www.roblox.com/asset/?id=3208408844"
		elseif CurId == 4 then
			lastid= "http://www.roblox.com/asset/?id=3596306003"
		elseif CurId == 5 then
			lastid= "http://www.roblox.com/asset/?id=3603658387"
		elseif CurId == 6 then
			lastid= "http://www.roblox.com/asset/?id=3603697639"
		elseif CurId == 7 then
			lastid= "http://www.roblox.com/asset/?id=571227431"
		elseif CurId == 8 then
			lastid= "http://www.roblox.com/asset/?id=172576479"
		elseif CurId == 9 then
			lastid= "http://www.roblox.com/asset/?id=2808524036"
		elseif CurId == 10 then
			lastid= "http://www.roblox.com/asset/?id=1646375621"

		elseif CurId == 11 then
			lastid= "http://www.roblox.com/asset/?id=1349958157"
		elseif CurId == 12 then
			lastid= "http://www.roblox.com/asset/?id=1755770760"
		elseif CurId == 13 then
			lastid= "http://www.roblox.com/asset/?id=2577867501"
		elseif CurId == 14 then
			lastid= "http://www.roblox.com/asset/?id=340265439"
		elseif CurId == 15 then
			lastid= "http://www.roblox.com/asset/?id=2441582257"
		elseif CurId == 16 then
			lastid= "http://www.roblox.com/asset/?id=2496523226"
		elseif CurId == 17 then
			lastid= "http://www.roblox.com/asset/?id=283208073"
		elseif CurId == 18 then
			lastid= "http://www.roblox.com/asset/?id=2279798034"

		end 


		lastsongpos = 0
		s2.TimePosition = lastsongpos


	end]]


end
uis.InputBegan:Connect(KeyDownF)

local OverClockEffect1 = EffectPack.OverClock1:Clone()
OverClockEffect1.Parent = Torso
OverClockEffect1.Enabled = false
local OverClockEffect2 = EffectPack.OverClock2:Clone()
OverClockEffect2.Parent = Torso
OverClockEffect2.Enabled = false
local OverClockEffect3 = EffectPack.OverClock3:Clone()
OverClockEffect3.Parent = Torso
OverClockEffect3.Enabled = false

coroutine.resume(coroutine.create(function()
	local OverClockEffect4 = EffectPack.OverClock4:Clone()
	OverClockEffect4.Enabled = false
	OverClockEffect4.Parent = Torso
	OverClockEffect4:Clone().Parent = Head
	OverClockEffect4:Clone().Parent = RightArm
	OverClockEffect4:Clone().Parent = LeftArm
	OverClockEffect4:Clone().Parent = RightLeg
	OverClockEffect4:Clone().Parent = LeftLeg

end))








local plr = game.Players.LocalPlayer
local chr = plr.Character

local hat2 = chr["FireMohawk"].Handle -- The hat you choose
    hat2:BreakJoints()
    local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
    -- Tips for past John (Tescalus)

    Weld.Part1 = hat2 -- (Hat)
    Weld.Part0 = chr.Torso -- What your welding the hat to (has to be a BasePart)

    Weld.C0 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(0),math.rad(0),0) -- Offset & Angles
    print("Ran with no errors")
local hat1 = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["FireMohawk"].Handle:FindFirstChildOfClass("SpecialMesh")
    hat1:Destroy()

coroutine.resume(coroutine.create(function()
	while workspace.non do 
		sine = sine + change
		hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)

		local torvel = (Humanoid.MoveDirection * Vector3.new(1, 0, 1)).magnitude
		local velderp = RootPart.Velocity.y
		if RootPart.Velocity.y > 1 and hitfloor == nil then
			Anim = "Jump"

		elseif RootPart.Velocity.y < -1 and hitfloor == nil then
			Anim = "Fall"
		elseif Humanoid.Sit == true then
			Anim = "Sit"	
		elseif torvel < .5 and hitfloor ~= nil  then
			Anim = "Idle"
		elseif torvel > .5 and  hitfloor ~= nil  then

			Anim = "Walk"




		else
			Anim = ""

		end 


		local Ccf=Torso.CFrame
		--warn(Humanoid.MoveDirection*RootPart.CFrame.lookVector)
		local Walktest1 = Humanoid.MoveDirection*Ccf.LookVector
		local Walktest2 = Humanoid.MoveDirection*Ccf.RightVector
		--warn(Walktest1.Z.."/"..Walktest1.X)
		--warn(Walktest2.Z.."/"..Walktest2.X)
		forWFB = Walktest1.X+Walktest1.Z
		forWRL = Walktest2.X+Walktest2.Z





		--print(Humanoid.MoveDirection)
		--warn(Torso.CFrame.lookVector)

		spin = (vt(0,spin,0):Lerp(vt(0,spinto,0),.05)).Y
		spinrad = spinrad + spin
		coroutine.resume(coroutine.create(function()


			if s2.Parent == nil or s2 == nil  then

				s2 = s2c:Clone()
				s2.Parent = Torso
				s2.Name = "BGMusic"
				--	s2.SoundId = lastid
				s2.Pitch = 1
				s2.Volume = 1.5
				s2.Looped = true
				s2.archivable = false
				s2.TimePosition = lastsongpos
				if playsong == true then
					s2:play()		
				elseif playsong == false then
					s2:stop()			
				end


			else
				lastsongpos=s2.TimePosition		
				s2.Pitch = 1

				s2.Volume = 1.5
				s2.Name = "BGMusic"
				s2.Looped = true
				s2.SoundId = lastid
				s2.EmitterSize = 30
			end



		end))




		inairvel=torvel*1

		--forWRL
		if inairvel > 30 then
			inairvel=30	
		end
		inairvel=inairvel/50*2

		SetTween(SpinnyThingyWeld,{C0=ANGLES(mr(spinrad),0,0)},"Quad","Out",0.055)


		if attack == false then
			if Anim == "Jump" then
				change = 0.60*2
				SetTween(RJW,{C0=RootCF* cn(0, 0 + (0.0395/2) * math.cos(sine / 8), -0.1 + 0.0395 * math.cos(sine / 8)) * angles(math.rad(-6.5 - 1.5 * math.cos(sine / 8))+(inairvel*forWFB)/2, math.rad(0)-(inairvel*forWRL)/2, math.rad(0))},"Quad","Out",0.25)
				SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(-26.5 + 2.5 * math.cos(sine / 8)), math.rad(0), math.rad(-0))},"Quad","Out",0.25)
				SetTween(RW,{C0=cf(1.4 + .05 * math.cos(sine / 8) , 0.5 + .05 * math.cos(sine / 8), .0) * angles(math.rad(140 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(8 + 4 * math.cos(sine / 8)))},"Quad","Out",0.2)
				SetTween(LW,{C0=cf(-1.4 + .05 * math.cos(sine / 8), 0.5 + .05 * math.cos(sine / 8), .0) * angles(math.rad(140 - 2 * math.cos(sine / 8 )), math.rad(5), math.rad(-8 - 4 * math.cos(sine / 8 )))},"Quad","Out",0.2)
				SetTween(RH,{C0=CFrame.new(.5, -0.85+ .05 * math.cos(sine / 15), -.2) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.075)
				SetTween(LH,{C0=CFrame.new(-.5, -0.35+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-25 +1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.075)



			elseif Anim == "Fall" then 
				change = 0.60*2
				SetTween(RJW,{C0=RootCF*cn(0, 0 + (0.0395/2) * math.cos(sine / 8), -0.5 + 0.0395 * math.cos(sine / 8)) * angles(math.rad(5.5 - 1.5 * math.cos(sine / 8))-(inairvel*forWFB)/2, math.rad(0)+(inairvel*forWRL)/2, math.rad(0))},"Quad","Out",0.35)
				SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(26.5 + 2.5 * math.cos(sine / 8)), math.rad(0), math.rad(-0))},"Quad","Out",0.25)
				SetTween(RW,{C0=cf(1.4 + .05 * math.cos(sine / 8) , 0.5 + .05 * math.cos(sine / 8), .0) * angles(math.rad(105 - 2 * math.cos(sine / 8 )), math.rad(-15), math.rad(80 + 4 * math.cos(sine / 8)))},"Quad","Out",0.2)
				SetTween(LW,{C0=cf(-1.4 + .05 * math.cos(sine / 8), 0.5 + .05 * math.cos(sine / 8), .0) * angles(math.rad(105 - 2 * math.cos(sine / 8 )), math.rad(15), math.rad(-80 - 4 * math.cos(sine / 8 )))},"Quad","Out",0.2)
				SetTween(RH,{C0=CFrame.new(.5, -0.15+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
				SetTween(LH,{C0=CFrame.new(-.5, -0.55+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-0 +1* math.cos(sine / 10)),math.rad(0),math.rad(0))},"Quad","InOut",0.1)

			elseif Hold	== true and weps == true then	


				change = (0.60*1)*1
				Humanoid.JumpPower = 0	
				Humanoid.WalkSpeed=0	

				local speed = .85

				local ADNum = 1	

				SetTween(RJW,{C0=RootCF*cn(0, 0, -0.1 + 0.0395 * math.cos(sine / 8 )) * angles(math.rad(0 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(70))},"Quad","InOut",0.1/speed)
				SetTween(NeckW,{C0=NeckCF*angles(math.rad(-5+40.5*(visn/1000) - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(0 - 60+(15*(visn/1000)) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.075/speed)
				SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(90 - 2 * math.cos(sine / 8 ))+mr(math.random(-5,5)), math.rad(0)+mr(math.random(-5,5)), math.rad(70 +( math.random(0,15)*(visn/1000)) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)
				SetTween(LW,{C0=cf(-1.46 + .0 * math.cos(sine / 8), 0.5 + .05 * math.cos(sine / 8), 0) * angles(math.rad(0 - 2 * math.cos(sine / 8 )), math.rad(5), math.rad(-18 - (math.random(0,15)*(visn/1000)) * math.cos(sine / 8 )))},"Linear","Out",0.1/speed)
				SetTween(RH,{C0=CFrame.new(.5, -0.95- .04 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(0 - 0 * math.cos(sine / 8)),math.rad(-20),math.rad(6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.1)
				SetTween(LH,{C0=CFrame.new(-.5, -0.95- .04 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(0 - 0 * math.cos(sine / 8)),math.rad(20),math.rad(-6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.1)

				if hitfloor ~= nil then

					SetTween(RootPart ,{CFrame =  CF(RootPart.Position ,RootPart.Position+CF(RootPart.Position*VT(1,0,1),MHIT.p*VT(1,0,1)).LookVector) },"Quad","Out",0.1)

				end	 


			elseif Anim == "Idle" then

				local	dahspeed=0+visn/100


				change = (0.60*1)*dahspeed
				Humanoid.JumpPower = 60	
				Humanoid.WalkSpeed=16	

				local speed = .5 + visn/1000

				local ADNum = 1	
				if weps == false then
					SetTween(RJW,{C0=RootCF*cn(0, 0, -0.1 + 0.0395 * math.cos(sine / 8 )) * angles(math.rad(0 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(-0))},"Quad","InOut",0.1/speed)
					SetTween(NeckW,{C0=NeckCF*angles(math.rad(-0+40.5*(visn/1000) - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16))+math.rad(0), math.rad(0))},"Linear","InOut",0.1/speed)
					SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(0 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 +( math.random(0,15)*(visn/1000)) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)
				else
					SetTween(RJW,{C0=RootCF*cn(0, 0, -0.1 + 0.0395 * math.cos(sine / 8 )) * angles(math.rad(0 - 0 * math.cos(sine / 8)), math.rad((0 + 0* math.cos(sine / 8)/20)), math.rad(-60))},"Quad","InOut",0.1/speed)
					SetTween(NeckW,{C0=NeckCF*angles(math.rad(-5+40.5*(visn/1000) - 4.5 * math.cos(sine / 8 )), math.rad(2.5-5.5 * math.cos(sine / 16)), math.rad(0 - -60+(25*(visn/1000)) * math.cos(sine / 15 +.4* math.cos(sine / 20))))},"Linear","InOut",0.075/speed)
					SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(150 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 +( math.random(0,15)*(visn/1000)) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)


				end
				SetTween(LW,{C0=cf(-1.46 + .0 * math.cos(sine / 8), 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(0 - 2 * math.cos(sine / 8 )), math.rad(5), math.rad(-10 - (math.random(0,15)*(visn/1000)) * math.cos(sine / 8 )))},"Linear","Out",0.1/speed)
				SetTween(RH,{C0=CFrame.new(.5, -0.95- .04 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(0 - 0 * math.cos(sine / 8)),math.rad(-20),math.rad(6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.1)
				SetTween(LH,{C0=CFrame.new(-.5, -0.95- .04 * math.cos(sine / 8 ), 0) * CFrame.Angles(math.rad(0 - 0 * math.cos(sine / 8)),math.rad(20),math.rad(-6.5- 0.0 * math.cos(sine / 8)))},"Quad","InOut",0.1)




				--SetTween(FlameW,{C0=CF(0,0,0)*ANGLES(mr(20),0,0)},"Quad","InOut",0.1)
				--SetTween(H1a,{C0=CF(0,.5,-.4)},"Quad","InOut",0.1)
				--	SetTween(MX1w,{C0=CF(0,-.7,-.25)},"Quad","InOut",0.1)
				--SetTween(FlameW,{C0=CF(0,-.5,0)},"Quad","InOut",0.1)
				--SetTween(H1a,{C0=CF(0,-.5,-.4)},"Quad","InOut",0.1)
				--SetTween(MX1w,{C0=CF(0,.1,.30)*ANGLES(mr(20),0,0)},"Quad","InOut",0.1)





			elseif Anim == "Walk" then
				local speed=.75

				if OverClocking ==false then
					speed = speed+0.75*(visn/1000)
				else
					speed = speed+1.75*(visn/1000)	
				end
				if mememode == true then
					speed=4
				end


				change = 2.6*speed
				Humanoid.JumpPower = 60*speed
				Humanoid.WalkSpeed=16*speed


				local RH2 = cf(-forWRL/7 * math.cos(sine / 8 ),0,forWFB/7 * math.cos(sine / 8 ))*angles(math.sin(-forWFB) * math.cos(sine / 8 ),0,math.sin(-forWRL) * math.cos(sine / 8 ))
				local LH2 = cf(forWRL/7 * math.cos(sine / 8 ),0,-forWFB/7 * math.cos(sine / 8 ))*angles(math.sin(forWFB) * math.cos(sine / 8 ),0,math.sin(forWRL) * math.cos(sine / 8 ))

				if weps == false then
					SetTween(RJW,{C0=RootCF*CFrame.new(0, 0 , -0.185 + 0.055 * math.cos(sine / 4) + -math.sin(sine / 4) / 8) * angles(math.rad((forWFB*2  - forWFB  * math.cos(sine / 4))*10), math.rad((-forWRL - -forWRL  * math.cos(sine / 4))*5) , math.rad(25*forWRL+8 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
					SetTween(NeckW,{C0=NeckCF*CFrame.new(0, 0, 0 + 0.025 * math.cos(sine / 4)) * angles((math.rad(20+(-forWFB*2 - -forWFB  * math.cos(sine / 4))*8))+math.rad(45*(visn/1000)), math.rad((forWRL - forWRL  * math.cos(sine / 4))*5)+math.rad(0), math.rad(-45*forWRL-8 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
					SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.5 + forWRL/50* math.cos(sine / 8), 0)   * angles(math.rad(160-45*(visn/1000) ), math.rad(15), math.rad(-10 + forWRL))},"Quad","Out",WalkAnimMove/speed)
				else


					SetTween(RJW,{C0=RootCF*CFrame.new(0, 0 , -0.185 + 0.055 * math.cos(sine / 4) + -math.sin(sine / 4) / 8) * angles(math.rad((forWFB*1.5  - forWFB  * math.cos(sine / 4))*10), math.rad((-forWRL - -forWRL  * math.cos(sine / 4))*5) , math.rad(10+8 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
					SetTween(NeckW,{C0=NeckCF*CFrame.new(0, 0, 0 + 0.025 * math.cos(sine / 4)) * angles((math.rad((-forWFB*2 - -forWFB  * math.cos(sine / 4))*8))+math.rad(20*(visn/500)), math.rad((forWRL - forWRL  * math.cos(sine / 4))*5)+math.rad(0*(visn/500)), math.rad(-0-forWRL*50+-8 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)

					SetTween(RW,{C0=cf(1.45 + .0 * math.cos(sine / 8) , 0.55 + .05 * math.cos(sine / 8), 0) * angles(math.rad(85 - 2 * math.cos(sine / 8 )), math.rad(-5), math.rad(10 +( math.random(0,15)*(visn/1000)) * math.cos(sine / 8)))},"Linear","Out",0.1/speed)

				end
				SetTween(LW,{C0=cf(-1.45 + .0 * math.cos(sine / 8), 0.5 + forWRL/50  * math.cos(sine / 8), 0)  * angles(math.rad(0 - forWFB*25 * math.cos(sine / 8 )), math.rad(0), math.rad(-8 - forWRL*5 * math.cos(sine / 8 )))},"Quad","Out",WalkAnimMove/speed)
				SetTween(RH,{C0=CFrame.new(.5, -0.75+ .35 * math.sin(sine / 8 ), -.25+.15* math.cos(sine / 8 ))*RH2 * CFrame.Angles(math.rad(0 - 5 * math.cos(sine / 8)),math.rad(0),math.rad(2.5- 0.0 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)
				SetTween(LH,{C0=CFrame.new(-.5, -0.75- .35 * math.sin(sine / 8 ), -.25-.15* math.cos(sine / 8 ))*LH2 * CFrame.Angles(math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0),math.rad(-2.5- 0.0 * math.cos(sine / 8)))},"Linear","InOut",WalkAnimMove/speed)



			elseif Anim == "Sit" then	
				SetTween(RJW,{C0=RootCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
				SetTween(NeckW,{C0=NeckCF*CFrame.new(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
				SetTween(RW,{C0=CFrame.new(1.5 , 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
				SetTween(LW,{C0=CFrame.new(-1.5, 0.5, -.0)*angles(math.rad(0),math.rad(0),math.rad(0))},"Quad","Out",0.1)
				SetTween(RH,{C0=CFrame.new(.5, -1, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
				SetTween(LH,{C0=CFrame.new(-.5, -1, 0)*angles(math.rad(90),math.rad(0),math.rad(0))},"Quad","InOut",0.1)
				Humanoid.JumpPower = 60	
			end
		end

		Swait(Animstep)
	end
end))
--[[coroutine.resume(coroutine.create(function()
	local	remote = Instance.new 'RemoteFunction';
	remote.Parent = Character;
	remote.OnServerInvoke = function (player, request, ...)
		if (player ~= Player) then
			return error ('You cannot invoke this remote', 0);
		end;



		if (request == 1) then
			local k = ...;

			KeyDownF(k)



		end;
		if (request == 2) then
			local k = ...;

			KeyUpF(k)



		end;
		if (request == 3) then
			local k = ...;
			if k == "Down" then
				Button1DownF(k)
			elseif k == "Up" then
				Button1UpF(k)
			end
		end;


		if (request == 4) then
			local k=...;
			--MTARGET=k
		end
		if (request == 5) then
			local 	k=...;
			MHIT=k

		end	
		if (request == 6) then
			local 	k=...;
			visn=k
			--		print(visn)

		end	





	end;













	--remote.Name = 'ServerRemote';
	--local remote = NLS ([=[
	--local localscript = script.Keys
	--localscript.Name = Player.Name
	--localscript.Parent = Character

	--]=], Player.Character)
--end))

]]
