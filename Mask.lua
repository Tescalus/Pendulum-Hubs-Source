loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

	local AHB = Instance.new("BindableEvent")
	
	local FPS = 60
	
	local TimeFrame = 0
	
	local LastFrame = tick()
	local Frame = 1/FPS
	
	game:service'RunService'.Heartbeat:connect(function(s,p)
		TimeFrame = TimeFrame + s
		if(TimeFrame >= Frame)then
			for i = 1,math.floor(TimeFrame/Frame) do
				AHB:Fire()
			end
			LastFrame=tick()
			TimeFrame=TimeFrame-Frame*math.floor(TimeFrame/Frame)
		end
	end)


	function swait(dur)
		if(dur == 0 or typeof(dur) ~= 'number')then
			AHB.Event:wait()
		else
			for i = 1, dur*FPS do
				AHB.Event:wait()
			end
		end
	end
	
function LerpReplacement(Obj,shit,alpha)
if Obj:IsA("Weld") or Obj:IsA("Motor6D") then
Obj.C0 = Obj.C0:Lerp(shit,alpha)
end
if Obj:IsA("BasePart") or  Obj:IsA("Camera") then
Obj.CFrame = Obj.CFrame:Lerp(shit,alpha)
end
end


wait(.5)

warn("Loading Script")
wait(0.2)
intro = true
sine = 0
change = 1
sprint=false
local Player = game:service'Players'.LocalPlayer
local Character = game.Workspace.non
local mouse = Player:GetMouse()
local Mouse = Player:GetMouse()
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local canremove = false
local debounce = false
local UIService=game:GetService'UserInputService'
_G.SongName = math.random(1,9025232)
sin = math.sin
Right_Leg.FormFactor 		= "Custom";
Left_Leg.FormFactor			= "Custom";
rootPart.Archivable 		= true;
rootJoint.Archivable 		= true;
c_new						= CFrame.new;
c_angles					= CFrame.Angles;
i_new = Instance.new
Humanoid:ClearAllChildren();
if Character:FindFirstChild("Animate") then
	Character.Animate:Destroy()
end
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"

Humanoid.MaxHealth = 1000
Humanoid.Health = Humanoid.MaxHealth

Theme = Instance.new("Sound")
Theme.Parent = Character.Torso
Theme.SoundId = "rbxassetid://269366083"
Theme.Volume = 9.6
Theme.Looped = true
Theme.Pitch = 1
Theme:Play()





local bc = Character:WaitForChild('Body Colors')

bc.HeadColor=BrickColor.new('Reddish brown')
bc.TorsoColor=BrickColor.new('Reddish brown')
bc.RightArmColor=BrickColor.new('Reddish brown')
bc.LeftArmColor=BrickColor.new('Reddish brown')
bc.RightLegColor=BrickColor.new('Reddish brown')
bc.LeftLegColor=BrickColor.new('Reddish brown')

shirt = Instance.new("Shirt",Character)
pants = Instance.new("Pants",Character)
shirt.ShirtTemplate = "rbxassetid://18622157"
pants.PantsTemplate = "rbxassetid://18616286"

Humanoid.DisplayDistanceType='None'

Head.Transparency = 1
local _Head = Instance.new("Part",Head)
_Head.Name = "_Head"
_Head.Shape = Enum.PartType.Block
_Head.CanCollide = false
_Head.BrickColor = BrickColor.new("Reddish brown")
_Head.Transparency = 0
_Head.Material = "Wood"
_Head.Size = Vector3.new(1.5, 1.5, 1.5)
_Head.TopSurface = Enum.SurfaceType.Smooth
_Head.BottomSurface = Enum.SurfaceType.Smooth	local Weld = Instance.new("Weld", _Head)
Weld.Part0 = Head
Weld.Part1 = _Head
Weld.C1 = CFrame.new(0,-0.15,0)
_HeadMesh = Instance.new("SpecialMesh",_Head)
_HeadMesh.MeshType = "Sphere"
_HeadMesh.Scale = Vector3.new(1,1,1)

local Tael = Instance.new("Part",Character)
Tael.Name = "Tael"
Tael.Shape = Enum.PartType.Block
Tael.CanCollide = false
Tael.BrickColor = BrickColor.new("Dark indigo")
Tael.Transparency = 0
Tael.Material = "Neon"
Tael.Size = Vector3.new(0.5, 0.5, 0.5)
Tael.TopSurface = Enum.SurfaceType.Smooth
Tael.BottomSurface = Enum.SurfaceType.Smooth	
local Tael2 = Instance.new("Weld", Tael)
Tael2.Part0 = rootPart
Tael2.Part1 = Tael
Tael2.C1 = CFrame.new(0,-5,3.5)
Mesh = Instance.new("SpecialMesh",Tael)
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(1,1,1)

local Tatl = Instance.new("Part",Character)
Tatl.Name = "Tatl"
Tatl.Shape = Enum.PartType.Block
Tatl.CanCollide = false
Tatl.BrickColor = BrickColor.new("New Yeller")
Tatl.Transparency = 0
Tatl.Material = "Neon"
Tatl.Size = Vector3.new(0.5, 0.5, 0.5)
Tatl.TopSurface = Enum.SurfaceType.Smooth
Tatl.BottomSurface = Enum.SurfaceType.Smooth	
local Tatl2 = Instance.new("Weld", Tatl)
Tatl2.Part0 = rootPart
Tatl2.Part1 = Tatl
Tatl2.C1 = CFrame.new(0,-2,3.5)
Mesh = Instance.new("SpecialMesh",Tatl)
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(1,1,1)


GUI = Instance.new("BillboardGui",Tael)
GUI.Size = UDim2.new(1.3,0,1,0)
GUI.MaxDistance = "inf"
GUI.ExtentsOffset = Vector3.new(0,0.1,0)

Wings = Instance.new("ImageLabel",GUI)
Wings.Position = UDim2.new(0,0,0,0)
Wings.Image = "rbxassetid://1345656252"
Wings.BackgroundTransparency = 1
Wings.Size = UDim2.new(1,0,1,0)

GUI2 = Instance.new("BillboardGui",Tatl)
GUI2.Size = UDim2.new(1.3,0,1,0)
GUI2.MaxDistance = "inf"
GUI2.ExtentsOffset = Vector3.new(0,0.1,0)

Wings2 = Instance.new("ImageLabel",GUI2)
Wings2.Position = UDim2.new(0,0,0,0)
Wings2.Image = "rbxassetid://1345656252"
Wings2.BackgroundTransparency = 1
Wings2.Size = UDim2.new(1,0,1,0)

coroutine.wrap(function()
while true do
for i = 1,5 do
GUI.Size = GUI.Size - UDim2.new(0.1,0,0,0)
GUI2.Size = GUI2.Size - UDim2.new(0.1,0,0,0)
swait()
end
for i = 1,5 do
GUI.Size = GUI.Size + UDim2.new(0.1,0,0,0)
GUI2.Size = GUI2.Size + UDim2.new(0.1,0,0,0)
swait()
end
end
end)()


atch0 = Instance.new("Attachment",Tatl)
atch0.Position = Vector3.new(0,0,Tatl.Size.Z/2)
atch1 = Instance.new("Attachment",Tatl)
atch1.Position = Vector3.new(0,0,-Tatl.Size.Z/2)
trail = Instance.new("Trail",Tatl)
trail.Attachment0 = atch0
trail.Attachment1 = atch1
trail.Lifetime = 0.2
trail.Enabled = true
trail.LightEmission = 1
trail.LightInfluence = 0
trail.FaceCamera = true
trail.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
trail.Color = ColorSequence.new(Color3.new(1,1,0))
trail.Transparency = NumberSequence.new(0,1)

atch2 = Instance.new("Attachment",Tael)
atch2.Position = Vector3.new(0,0,Tael.Size.Z/2)
atch3 = Instance.new("Attachment",Tael)
atch3.Position = Vector3.new(0,0,-Tael.Size.Z/2)
trail2 = Instance.new("Trail",Tael)
trail2.Attachment0 = atch2
trail2.Attachment1 = atch3
trail2.Lifetime = 0.2
trail2.Enabled = true
trail2.LightEmission = 1
trail2.LightInfluence = 0
trail2.FaceCamera = true
trail2.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
trail2.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133))
trail2.Transparency = NumberSequence.new(0,1)

Twinkles=Instance.new('ParticleEmitter',Tael)
Twinkles.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133))
Twinkles.LightEmission=1
Twinkles.Texture='rbxassetid://187012669'
Twinkles.Size=NumberSequence.new({NumberSequenceKeypoint.new(0, 0.05, 0), NumberSequenceKeypoint.new(1, 0, 0)})
Twinkles.EmissionDirection='Back'
Twinkles.Lifetime = NumberRange.new(0.5)
Twinkles.Rate = 10
Twinkles.SpreadAngle=Vector2.new(-90,90)

Twinkles=Instance.new('ParticleEmitter',Tatl)
Twinkles.Color = ColorSequence.new(Color3.fromRGB(255, 255, 0))
Twinkles.LightEmission=1
Twinkles.Texture='rbxassetid://187012669'
Twinkles.Size=NumberSequence.new({NumberSequenceKeypoint.new(0, 0.05, 0), NumberSequenceKeypoint.new(1, 0, 0)})
Twinkles.EmissionDirection='Back'
Twinkles.Lifetime = NumberRange.new(0.5)
Twinkles.Rate = 10
Twinkles.SpreadAngle=Vector2.new(-90,90)

local Particle = Instance.new("ParticleEmitter",Tael)
Particle.Enabled = true
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 1
Particle.Rate = 2000
Particle.ZOffset = 1
Particle.Lifetime = NumberRange.new(0.5)
Particle.Speed = NumberRange.new(1)
Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133),Color3.fromRGB(61, 21, 133))
Particle.VelocitySpread = 360
Particle.LockedToPart = false

local Particle = Instance.new("ParticleEmitter",Tatl)
Particle.Enabled = true
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 1
Particle.Rate = 2000
Particle.ZOffset = 1
Particle.Lifetime = NumberRange.new(0.5)
Particle.Speed = NumberRange.new(1)
Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2, 0), NumberSequenceKeypoint.new(1, 0.5, 0)})
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle.Color = ColorSequence.new(Color3.fromRGB(255, 255, 0),Color3.fromRGB(255, 255, 0))
Particle.VelocitySpread = 360
Particle.LockedToPart = false


local Beak = Instance.new("Part",Head)
Beak.Name = "Beak"
Beak.Shape = Enum.PartType.Ball
Beak.CanCollide = false
Beak.Color = Color3.new(0,0,0)
Beak.Transparency = 0
Beak.Material = "SmoothPlastic"
Beak.Size = Vector3.new(0.1, 0.1, 0.1)
Beak.TopSurface = Enum.SurfaceType.Smooth
Beak.BottomSurface = Enum.SurfaceType.Smooth	
local Weld = Instance.new("Weld", Beak)
Weld.Part0 = Head
Weld.Part1 = Beak
Weld.C1 = CFrame.new(0,0.1,0.7)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
BeakMesh = Instance.new("FileMesh",Beak)
BeakMesh.MeshId = "http://www.roblox.com/asset/?id=1241049633"
BeakMesh.TextureId = "http://www.roblox.com/asset/?id=1179215218"
BeakMesh.Scale = Vector3.new(0.5,0.15,0.1)
BeakMesh.VertexColor = Vector3.new(1,0.5,0)

local Mask = Instance.new("Part",Head)
Mask.Transparency = 1
Mask.Name = "Majora's Mask"
Mask.Shape = Enum.PartType.Ball
Mask.CanCollide = false
Mask.Color = Color3.new(0,0,0)
Mask.Transparency = 1
Mask.Material = "SmoothPlastic"
Mask.Size = Vector3.new(0.1, 0.1, 0.1)
Mask.TopSurface = Enum.SurfaceType.Smooth
Mask.BottomSurface = Enum.SurfaceType.Smooth	
local MaskWeld = Instance.new("Weld", Mask)
MaskWeld.Part0 = Head
MaskWeld.Part1 = Mask
MaskWeld.C1 = CFrame.new(0,-0.7,-0.25)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))
MaskMesh = Instance.new("FileMesh",Mask)
MaskMesh.MeshId = "http://www.roblox.com/asset/?id=2054429467"
MaskMesh.TextureId = "http://www.roblox.com/asset/?id=2054436209"
MaskMesh.Scale = Vector3.new(0.38,0.38,0.38)


local Ocarina = Instance.new("Part",Character)
Ocarina.Name = "Link's Ocarina"
Ocarina.Shape = Enum.PartType.Ball
Ocarina.CanCollide = false
Ocarina.Color = Color3.new(0,0,0)
Ocarina.Transparency = 1
Ocarina.Material = "SmoothPlastic"
Ocarina.Size = Vector3.new(0.1, 0.1, 0.1)
Ocarina.TopSurface = Enum.SurfaceType.Smooth
Ocarina.BottomSurface = Enum.SurfaceType.Smooth	
local OcarinaWeld = Instance.new("Weld", Ocarina)
OcarinaWeld.Part0 = Left_Arm
OcarinaWeld.Part1 = Ocarina
OcarinaWeld.C1 = CFrame.new(-0.2,0,1)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))
OcarinaMesh = Instance.new("FileMesh",Ocarina)
OcarinaMesh.MeshId = "http://www.roblox.com/asset/?id=1591417841"
OcarinaMesh.TextureId = "http://www.roblox.com/asset/?id=1591417870"
OcarinaMesh.Scale = Vector3.new(0.05,0.05,0.05)



local Poncho = Instance.new("Part",Torso)
Poncho.Name = "Poncho"
Poncho.Shape = Enum.PartType.Ball
Poncho.CanCollide = false
Poncho.Color = Color3.fromRGB(157, 168, 0)
Poncho.Transparency = 0
Poncho.Material = "SmoothPlastic"
Poncho.Size = Vector3.new(0.1, 0.1, 0.1)
Poncho.TopSurface = Enum.SurfaceType.Smooth
Poncho.BottomSurface = Enum.SurfaceType.Smooth	
local Weld = Instance.new("Weld", Poncho)
Weld.Part0 = Torso
Weld.Part1 = Poncho
Weld.C1 = CFrame.new(0.25,-0.05,0.45)*CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-90),math.rad(0))
PonchoMesh = Instance.new("FileMesh",Poncho)
PonchoMesh.MeshId = "http://www.roblox.com/asset/?id=2057076845"
--PonchoMesh.TextureId = "http://www.roblox.com/asset/?id=12811694"
PonchoMesh.Scale = Vector3.new(0.25,0.2,0.2)

local BodMesh = Instance.new("CharacterMesh", Character)
BodMesh.BodyPart = "Torso"
BodMesh.MeshId = "27111894"
local BodMesh = Instance.new("CharacterMesh", Character)
BodMesh.BodyPart = "RightArm"
BodMesh.MeshId = "27111864"
local BodMesh = Instance.new("CharacterMesh", Character)
BodMesh.BodyPart = "LeftArm"
BodMesh.MeshId = "27111419"
local BodMesh = Instance.new("CharacterMesh", Character)
BodMesh.BodyPart = "RightLeg"
BodMesh.MeshId = "27111882"
local BodMesh = Instance.new("CharacterMesh", Character)
BodMesh.BodyPart = "LeftLeg"
BodMesh.MeshId = "27111857"

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end

function noOutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local function Part(Name,Color, Material, Transparency,Shape, Size, CFrame,CanCollide,Anchored,parent)
	local partie = i_new("Part",parent)
	partie.Name=Name
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Size = Size
	partie.CFrame = CFrame
	partie.CanCollide = CanCollide
	partie.Anchored = Anchored
	return partie
end

local REye=Part('REye','New Yeller','Neon',0,'Ball',Vector3.new(.15,.15,.15),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,REye,.305,.13,-.655)
local LEye=Part('LEye','New Yeller','Neon',0,'Ball',Vector3.new(.15,.15,.15),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,LEye,-.305,.13,-.655)
local REye=Part('REye','CGA brown','Neon',0,'Ball',Vector3.new(.2,.2,.2),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,REye,.3,.13,-.625)
local LEye=Part('LEye','CGA brown','Neon',0,'Ball',Vector3.new(.2,.2,.2),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,LEye,-.3,.13,-.625)

function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function findCloseHumanoid(centre, distance)
  local tab = {}
  for _, child in pairs(game.Workspace:GetChildren()) do
    if child:findFirstChild("Humanoid") and child:findFirstChild("Humanoid") ~= Humanoid and child:findFirstChild("Torso") then
      local vtors = child.Torso
      local mag = math.abs((vtors.Position - centre).magnitude)
      if distance >= mag then
        table.insert(tab, child.Humanoid)
      end
    end
  end
  return tab
end

function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Torso") then
				if v ~= Character then
					if (v.Torso.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

attack = false -- Self Explanatory
attack2 = false -- Disables Movement
fattack = false -- Fairies Stop Buzzing and attacks

local Effects = Instance.new("Folder",Character)
Effects.Name = "Effects and Decoys"

function Intro()
attack = true
attack2 = true
Animations = true

local Decoy = Instance.new("Part",Head)
Decoy.Name = "Majora's Decoy"
Decoy.Shape = Enum.PartType.Ball
Decoy.CanCollide = false
Decoy.Anchored = true
Decoy.Color = Color3.new(0,0,0)
Decoy.Transparency = 0
Decoy.Material = "SmoothPlastic"
Decoy.Size = Vector3.new(0.1, 0.1, 0.1)
Decoy.TopSurface = Enum.SurfaceType.Smooth
Decoy.BottomSurface = Enum.SurfaceType.Smooth	
Decoy.CFrame = rootPart.CFrame * CFrame.new(0,-2.8,-2) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-200),math.rad(0))
Mesh = Instance.new("FileMesh",Decoy)
Mesh.MeshId = "http://www.roblox.com/asset/?id=2054429467"
Mesh.TextureId = "http://www.roblox.com/asset/?id=2054436209"
Mesh.Scale = Vector3.new(0.38,0.38,0.38)

for i = 0,1,0.01 do
Decoy.CFrame = rootPart.CFrame * CFrame.new(0,-2.8,-2) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-200),math.rad(0))
LerpReplacement(RA_Weld, c_new(1.5, 0.5 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.sin(sine/4)/3,math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(-math.sin(sine/4)/3,math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1 + math.sin(sine/7.5)/15, 10 + i*-10) * c_angles(math.rad(0), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, 0 - math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/7.5)/15,math.rad(0), math.rad(0)), 0.15)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057274656"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(10),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(10),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(-10), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.2) * c_angles(math.rad(-20),math.rad(0), math.rad(0)), 0.15)
swait()
end


for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.5) * c_angles(math.rad(90),math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, -0.5) * c_angles(math.rad(90),math.rad(0),math.rad(20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(80),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(80),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(-80), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.2) * c_angles(math.rad(-20),math.rad(0), math.rad(0)), 0.15)
swait()
end
Decoy.Anchored = false
local Weld = Instance.new("Weld", Decoy)
Weld.Part0 = Torso
Weld.Part1 = Decoy
Weld.C1 = CFrame.new(0,2,-1.5)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(180),math.rad(0))
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.5) * c_angles(math.rad(120),math.rad(0),math.rad(-30)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, -0.5) * c_angles(math.rad(120),math.rad(0),math.rad(30)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(0), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0),math.rad(0), math.rad(0)), 0.15)
swait()
end
Decoy.Anchored = true
Weld:Destroy()
for i = 1,18 do
Decoy.CFrame = Decoy.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(10))
swait()
end
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.5) * c_angles(math.rad(120),math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, -0.5) * c_angles(math.rad(120),math.rad(0),math.rad(20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(0), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0),math.rad(0), math.rad(0)), 0.15)
swait()
end
for i = 1,5 do
Decoy.CFrame = Decoy.CFrame * CFrame.new(0,-0.25,0)
swait()
end
Decoy:Destroy()
Mask.Transparency = 0

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057161687"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

Theme.SoundId = "rbxassetid://200893259"
Theme:Play()
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.25, 0.5, 0.2) * c_angles(math.rad(-30),math.rad(-60),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, 0.2) * c_angles(math.rad(-30),math.rad(60),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(-30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(30), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(20),math.rad(0), math.rad(0)), 0.15)
swait()
end

for i = 0,0.05,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.5) * c_angles(math.rad(30),math.rad(-0),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, -0.5) * c_angles(math.rad(30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -1,0) * c_angles(math.rad(-30), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(-20),math.rad(0), math.rad(0)), 0.15)
swait()
end

for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, 0) * c_angles(math.rad(150),math.rad(-0),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, 0) * c_angles(math.rad(150),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(-10),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-10),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -2.5,0) * c_angles(math.rad(-80), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0),math.rad(0), math.rad(0)), 0.15)
swait()
end

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://160195008"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

fattack = true
for i = 0,2,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, 0) * c_angles(math.rad(-30),math.rad(-0),math.rad(0)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-30),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(-120),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-120),math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -2.5,0) * c_angles(math.rad(30), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(20 + math.random(-100,100)/10),math.rad(0), math.rad(math.random(-100,100)/10)), 0.4)
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(0))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*0.3, 2  - i*0.1 ,5 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/30,math.rad(4) - math.sin(sine/7.5)/30,math.rad(0) + math.sin(sine/7.5)/30)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/25,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/30)
swait()
end
Theme.SoundId = "rbxassetid://302493616"
Theme:Play()
Ocarina.Transparency = 0
Animations = false
attack2 = false
fattack = false
attack = false
end

local Create = LoadLibrary("RbxUtility").Create

target = nil
function Laser()
attack = true
attack2 = true
Animations = true

local Hitbox = Instance.new("Part",Head)
Hitbox.Name = "Hitbox"
Hitbox.Shape = Enum.PartType.Block
Hitbox.CanCollide = false
Hitbox.Color = Color3.new(0,0,0)
Hitbox.Transparency = 1
Hitbox.Material = "Metal"
Hitbox.Size = Vector3.new(0.25, 0.25, 15)
Hitbox.TopSurface = Enum.SurfaceType.Smooth
Hitbox.BottomSurface = Enum.SurfaceType.Smooth	local Weld = Instance.new("Weld", Hitbox)
Weld.Part0 = Head
Weld.Part1 = Hitbox
Weld.C1 = CFrame.new(0,0,8)

local Lahsr = Instance.new("Part",Head)
Lahsr.Name = "Lahsr"
Lahsr.Shape = Enum.PartType.Block
Lahsr.CanCollide = false
Lahsr.Color = Color3.new(1,0.2,0)
Lahsr.Transparency = 1
Lahsr.Material = "Neon"
Lahsr.Size = Vector3.new(0.25, 0.25, 16)
Lahsr.TopSurface = Enum.SurfaceType.Smooth
Lahsr.BottomSurface = Enum.SurfaceType.Smooth	local Weld = Instance.new("Weld", Lahsr)
Weld.Part0 = Head
Weld.Part1 = Lahsr
Weld.C1 = CFrame.new(0.45,-0.24,8)
local Miehsh = Instance.new("SpecialMesh",Lahsr)
Miehsh.MeshType = "Sphere"
Miehsh.Scale = Vector3.new(1,1,1)

local Layzar = Instance.new("Part",Head)
Layzar.Name = "Layzar"
Layzar.Shape = Enum.PartType.Block
Layzar.CanCollide = false
Layzar.Color = Color3.new(1,0.2,0)
Layzar.Transparency = 1
Layzar.Material = "Neon"
Layzar.Size = Vector3.new(0.25, 0.25, 16)
Layzar.TopSurface = Enum.SurfaceType.Smooth
Layzar.BottomSurface = Enum.SurfaceType.Smooth	local Weld = Instance.new("Weld", Layzar)
Weld.Part0 = Head
Weld.Part1 = Layzar
Weld.C1 = CFrame.new(-0.45,-0.24,8)
Miehsh = Instance.new("SpecialMesh",Layzar)
Miehsh.MeshType = "Sphere"
Miehsh.Scale = Vector3.new(1,1,1)

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057149157"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

for i = 0,0.15,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(80) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(0),math.rad(-80)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-70) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(70) + math.sin(sine/7.5)/15,math.rad(90), math.rad(0) + math.sin(sine/15)/30), 0.15)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://215270668"
S.Volume = 5
S.Looped = false
S.Pitch = 1
S:Play()
Lahsr.Transparency = 0
Layzar.Transparency = 0
for i = 0,0.8,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(80) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(0),math.rad(-80)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-70) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(70) + math.sin(sine/7.5)/15,math.rad(90) - i*3.8, math.rad(0) + math.sin(sine/15)/30), 0.15)
Layzar.Transparency = Layzar.Transparency + 0.005
Lahsr.Transparency = Lahsr.Transparency + 0.005
local Laserhitbox=Hitbox.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
target = hit.Parent.Name
hit.Parent.Humanoid:TakeDamage(0)
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://545219984"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()			
		end
end)

local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.Color = Color3.new(1,0.2,0)
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = Head.CFrame
rng2.CFrame = rng2.CFrame * CFrame.new(1,0,-15)
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 - i*0.1,2  - i*0.1 ,2 - i*0.1)
		rng2.Transparency = i/30
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.Color = Color3.new(1,0.2,0)
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = Head.CFrame
rng2.CFrame = rng2.CFrame * CFrame.new(0,0,-17) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,0)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0 + i*0.6, 0  + i*0.6 ,0 + i*0.3)
		rng2.Transparency = i/30
		swait()
	end
	wait()
	rng2:Destroy()
end)

target = nil
swait()
end
Lahsr:Destroy()
Layzar:Destroy()
Hitbox:Destroy()

Animations = false
attack2 = false
wait(0.25)
attack = false
end

function ShadowBomb()
attack = true
attack2 = true
Animations = true

local SB = Instance.new("Part",Effects)
SB.Name = "ShadowBallz"
SB.Shape = Enum.PartType.Block
SB.CanCollide = false
SB.BrickColor = BrickColor.new("Dark indigo")
SB.Transparency = 0
SB.Material = "Neon"
SB.Size = Vector3.new(0.25, 0.25, 0.25)
SB.TopSurface = Enum.SurfaceType.Smooth
SB.BottomSurface = Enum.SurfaceType.Smooth	local SBWeld = Instance.new("Weld", SB)
SBWeld.Part0 = rootPart
SBWeld.Part1 = SB
SBWeld.C1 = CFrame.new(0,-18,0)
local grow = Instance.new("SpecialMesh",SB)
grow.MeshType = "Sphere"
grow.Scale = Vector3.new(0,0,0)

local SBS = Instance.new("Sound")
SBS.Parent = SB
SBS.SoundId = "rbxassetid://300916082"
SBS.Volume = 8
SBS.Looped = false
SBS.Pitch = 0
SBS:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2061650183"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
fattack = true
for i = 0,2.7,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(160) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(20) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(160) + math.sin(sine/7.5)/15, math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-30) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(30) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, 5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(70) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
grow.Scale = grow.Scale + Vector3.new(0.2,0.2,0.2)
SBS.Pitch = SBS.Pitch + 0.0025
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/30,math.rad(4) - math.sin(sine/7.5)/30,math.rad(0) + math.sin(sine/7.5)/30)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/25,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/30)
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,0)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0 + i*0.6, 0  + i*0.6 ,0 + i*0.3)
		rng2.Transparency = i/30
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,0)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0 + i*0.3, 0  + i*0.3 ,0 + i*0.3)
		rng2.Transparency = i/30
		swait()
	end
	wait()
	rng2:Destroy()
end)

swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://199145761"
S.Volume = 5
S.Looped = false
S.Pitch = 1
S:Play()
Point = Instance.new("BodyGyro")
Point.Parent = rootPart
Point.D = 175
Point.P = 20000
Point.MaxTorque = Vector3.new(0,4000000,0)
for i = 0,0.25,0.01 do
Point.cframe = CFrame.new(rootPart.Position,Mouse.Hit.Position)
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(90) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(20) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-30) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(30) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, 4 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-60) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(30) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/30,math.rad(4) - math.sin(sine/7.5)/30,math.rad(0) + math.sin(sine/7.5)/30)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/25,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/30)
swait()
end
Point:Destroy()
fattack = false

SBWeld:Destroy()

S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://1202657035"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.PlayOnRemove = true

SB.CanCollide = true
local bodyVelocity2 = Create("BodyVelocity")({
velocity = (Mouse.Hit.p - SB.CFrame.p).unit * 165,
P = 5000,
maxForce = Vector3.new(8000, 8000, 8000),
Parent = SB
})


game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
SB.Touched:connect(function(hit)
if(not Character:IsAncestorOf(hit) or hit.Name == "ShadowBallz") then
for i, v in pairs(FindNearestTorso(SB.CFrame.p, 15)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame
SB:Destroy()
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(13 + i*0.3, 13  + i*0.3 ,13 + i*0.3)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
for i = 1,6 do
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(50 + i*1, 50  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(50 + i*1, 50  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
end
	end
	end)

lafz = math.random(1,3)
S = Instance.new("Sound")
S.Parent = Character.Torso
if lafz == 1 then
S.SoundId = "rbxassetid://2057149157"
elseif lafz == 2 then
S.SoundId = "rbxassetid://2057150436"
elseif lafz == 3 then
S.SoundId = "rbxassetid://2057595082"
end
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://21338895"
S.Volume = 4
S.Looped = false
S.Pitch = 0.8
S:Play()
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.5) * c_angles(math.rad(45) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, -0.5) * c_angles(math.rad(45) + math.sin(sine/7.5)/15, math.rad(0),math.rad(30)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/4)/1, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(30) - math.sin(sine/4)/1, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(45) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-20) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
swait()
end
MaskWeld.C1 = CFrame.new(0,-0.7,-0.25)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))

Animations = false
attack2 = false
attack = false
end

function Attackone()
attack = true
fattack = true
Animations = true
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1890071374"
S.Volume = 8
S.Looped = false
S.Pitch = 1.7
S:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2064874129"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2066402292"
S.Volume = 9.5
S.Looped = false
S.Pitch = 1
S.TimePosition = 0.25
S:Play()

Tatl2.C1 = CFrame.new(2.5,3,3)
Tael2.C1 = CFrame.new(-2.5,3,3)
tale=Tael.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
tattle=Tatl.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
for i = 0,0.08,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 50
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.3)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(120) + math.sin(sine/7.5)/15, math.rad(10),math.rad(30)), 0.3)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-15) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(1 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-30) - math.sin(sine/15)/15, math.rad(0), math.rad(-20)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.3)
Tael2.C1 = Tael2.C1 * CFrame.new(0.5,-1,0)
Tatl2.C1 = Tatl2.C1 * CFrame.new(-0.5,-1,0)
swait()
end
tale:disconnect()
tattle:disconnect()
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attacktwo()
attack = true
fattack = true
Animations = true
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1890071374"
S.Volume = 8
S.Looped = false
S.Pitch = 1.7
S:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2066402292"
S.Volume = 9.5
S.Looped = false
S.Pitch = 1
S.TimePosition = 0.25
S:Play()

Tatl2.C1 = CFrame.new(2.5,-6,3)
Tael2.C1 = CFrame.new(-2.5,-6,3)
tale=Tael.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
tattle=Tatl.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
for i = 0,0.08,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 50
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.3)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(120) + math.sin(sine/7.5)/15, math.rad(10),math.rad(30)), 0.3)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(15) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(-1 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-30) - math.sin(sine/15)/15, math.rad(0), math.rad(20)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.3)
Tael2.C1 = Tael2.C1 * CFrame.new(0.5,1,0)
Tatl2.C1 = Tatl2.C1 * CFrame.new(-0.5,1,0)
swait()
end
tattle:disconnect()
tale:disconnect()
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attackthree()
attack = true
fattack = true
Animations = true
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1890071374"
S.Volume = 8
S.Looped = false
S.Pitch = 1.8
S:Play()
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057150436"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
Tatl2.C1 = CFrame.new(1,0,3)
Tael2.C1 = CFrame.new(-1,0,3)
tale=Tael.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
tattle=Tatl.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
for i = 0,0.4,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 50
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.5) * c_angles(math.rad(45) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(120) + math.sin(sine/7.5)/15, math.rad(10),math.rad(30)), 0.3)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/2)/1, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(30) - math.sin(sine/2)/1, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-10) - math.sin(sine/15)/15 , math.rad(180), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(5) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.6
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(90))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,-2,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*0.3, 9  + i*0.1 ,5 + i*0.3)
		rng2.Transparency = i/15
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
swait()
end
tattle:disconnect()
tale:disconnect()
MaskWeld.C1 = CFrame.new(0,-0.7,-0.25)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attackfour()
attack = true
fattack = true
Animations = true
Tatl2.C1 = CFrame.new(2,0,-1)
Tael2.C1 = CFrame.new(-2,0,-1)
local con1=Head.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name and hit.Parent.Name ~= target then
			target = hit.Parent.Name
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
for i = 0,0.25,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 80
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(-30) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-20) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-30) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-40) - math.sin(sine/15)/15, math.rad(0), math.sin((rootPart.RotVelocity.Y/30))/2), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(40) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
swait()
end
con1:disconnect()
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attackfive()
attack = true
fattack = true
Animations = true
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1890071374"
S.Volume = 8
S.Looped = false
S.Pitch = 1.7
S:Play()

twirl = Instance.new("Sound")
twirl.Parent = Character.Torso
twirl.SoundId = "rbxassetid://1152719084"
twirl.Volume = 8
twirl.Looped = false
twirl.Pitch = 1.7
twirl:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2065259544"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

Tatl2.C1 = CFrame.new(5,-1,0)
Tael2.C1 = CFrame.new(-6,0,0)
tale=Tael.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name then
			hit.Parent.Humanoid:TakeDamage(math.random(0,0))
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
tattle=Tatl.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid")and hit.Parent ~= nil and hit.Parent.Name ~= Player.Character.Name then
			print("ok")
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1907654067"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
		end
end)
for i = 0,0.5,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(0) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(90) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-90)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15, math.rad(0) - i*30, math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.3)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(30),math.rad(0))
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(30),math.rad(0))
swait()
end

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2066402292"
S.Volume = 9.5
S.Looped = false
S.Pitch = 1
S.TimePosition = 0.25
S:Play()

twirl:Destroy()
tale:disconnect()
tattle:disconnect()
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attacksix()
attack = true
fattack = true
Animations = true

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2061663467"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

Tatl2.C1 = CFrame.new(2.5,3,3)
Tael2.C1 = CFrame.new(-2.5,3,3)

for i = 0,0.08,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.3)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(120) + math.sin(sine/7.5)/15, math.rad(10),math.rad(30)), 0.3)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, 10 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-30) - math.sin(sine/15)/15, math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.3)
Tael2.C1 = CFrame.new(2,-3 - math.sin(sine/7.5)/20,-1)
Tatl2.C1 = CFrame.new(-2,-3 + math.sin(sine/7.5)/12,-1)
swait()
end

for i = 0,0.08,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 100
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.3)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(120) + math.sin(sine/7.5)/15, math.rad(10),math.rad(30)), 0.3)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-30) - math.sin(sine/15)/15, math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.3)
Tael2.C1 = CFrame.new(2,-3 - math.sin(sine/7.5)/20,-1)
Tatl2.C1 = CFrame.new(-2,-3 + math.sin(sine/7.5)/12,-1)
swait()
end
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Medium stone grey")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,-2)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(1 + i*0.3, 5  - i*0.1 ,1 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2064874783"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function Attackseven()
attack = true
fattack = true
Animations = true
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1890059896"
S.Volume = 8
S.Looped = false
S.Pitch = 1.8
S:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057595082"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

twirl = Instance.new("Sound")
twirl.Parent = Character.Torso
twirl.SoundId = "rbxassetid://1152719084"
twirl.Volume = 8
twirl.Looped = false
twirl.Pitch = 1.7
twirl:Play()
Tatl2.C1 = CFrame.new(5,0,0)
Tael2.C1 = CFrame.new(-5,0,0)
for i = 0,0.35,0.01 do
rootPart.Velocity = rootPart.CFrame.lookVector * 100
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(80) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(0),math.rad(-80)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-70) - math.sin(sine/15)/15 , math.rad(0) - i*30, math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(68) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(25))
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(25))
for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(90))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,-5,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(4 + i*0.3, 8  + i*0.1 ,4 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
swait()
end
twirl:Destroy()
Tael2.C1 = CFrame.new(0,-5,3.5)
Tatl2.C1 = CFrame.new(0,-2,3.5)

target = nil
Animations = false
fattack = false
attack = false
end

function ShadowBallBarrage()
local SB = Instance.new("Part",Effects)
SB.Name = "ShadowBallz"
SB.Shape = Enum.PartType.Block
SB.CanCollide = false
SB.BrickColor = BrickColor.new("Dark indigo")
SB.Transparency = 0
SB.Material = "Neon"
SB.Size = Vector3.new(0.25, 0.25, 0.25)
SB.TopSurface = Enum.SurfaceType.Smooth
SB.BottomSurface = Enum.SurfaceType.Smooth	local SBWeld = Instance.new("Weld", SB)
SBWeld.Part0 = Right_Arm
SBWeld.Part1 = SB
SBWeld.C1 = CFrame.new(0,1,0)
boom = Instance.new("SpecialMesh",SB)
boom.MeshType = "Sphere"
boom.Scale = Vector3.new(3,3,3)
S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://315746833"
S.Volume = 5
S.Looped = false
S.Pitch = 2
S:Play()

S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://203691653"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.PlayOnRemove = true
for i = 0,0.04,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(-30) - math.sin(sine/7.5)/15, math.rad(-90) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(10)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
swait()
end
for i = 0,0.05,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(120) - math.sin(sine/7.5)/15, math.rad(-90) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(20)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
swait()
end

SBWeld:Destroy()
SB.CanCollide = true
local bodyVelocity2 = Create("BodyVelocity")({
velocity = (Mouse.Hit.p - SB.CFrame.p).unit * 165,
P = 5000,
maxForce = Vector3.new(8000, 8000, 8000),
Parent = SB
})

game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
	SB.Touched:connect(function(hit)
	if(not Character:IsAncestorOf(hit) or hit.Name == "ShadowBallz") then
for i, v in pairs(FindNearestTorso(SB.CFrame.p, 7)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame
SB:Destroy()
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(5 + i*0.3, 5  + i*0.3 ,5 + i*0.3)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
for i = 1,6 do
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
end
	end
	end)
end

function ShadowBallBarrage2()
local SB = Instance.new("Part",Effects)
SB.Name = "ShadowBallz"
SB.Shape = Enum.PartType.Block
SB.CanCollide = false
SB.BrickColor = BrickColor.new("Dark indigo")
SB.Transparency = 0
SB.Material = "Neon"
SB.Size = Vector3.new(0.25, 0.25, 0.25)
SB.TopSurface = Enum.SurfaceType.Smooth
SB.BottomSurface = Enum.SurfaceType.Smooth	local SBWeld = Instance.new("Weld", SB)
SBWeld.Part0 = Left_Arm
SBWeld.Part1 = SB
SBWeld.C1 = CFrame.new(0,1,0)
local booem = Instance.new("SpecialMesh",SB)
booem.MeshType = "Sphere"
booem.Scale = Vector3.new(3,3,3)
S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://315746833"
S.Volume = 5
S.Looped = false
S.Pitch = 2
S:Play()

S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://203691653"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.PlayOnRemove = true
for i = 0,0.04,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(-30) + math.sin(sine/7.5)/15, math.rad(90),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(-10)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
swait()
end
for i = 0,0.05,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(90),math.rad(0)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
swait()
end

SBWeld:Destroy()
SB.CanCollide = true
local bodyVelocity2 = Create("BodyVelocity")({
velocity = (Mouse.Hit.p - SB.CFrame.p).unit * 165,
P = 5000,
maxForce = Vector3.new(8000, 8000, 8000),
Parent = SB
})


game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
	SB.Touched:connect(function(hit)
	if(not Character:IsAncestorOf(hit) or hit.Name == "ShadowBallz") then
for i, v in pairs(FindNearestTorso(SB.CFrame.p, 7)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame
SB:Destroy()
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(5 + i*0.3, 5  + i*0.3 ,5 + i*0.3)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
for i = 1,6 do
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
end
	end
	end)
end

function ShadowBarrage()
attack = true
attack2 = true
Animations = true
Ocarina.Transparency = 1
Point = Instance.new("BodyGyro")
Point.Parent = rootPart
Point.D = 175
Point.P = 20000
Point.MaxTorque = Vector3.new(0,4000000,0)
for i = 1,5 do
Point.cframe = CFrame.new(rootPart.Position,Mouse.Hit.Position)
ShadowBallBarrage()
Point.cframe = CFrame.new(rootPart.Position,Mouse.Hit.Position)
ShadowBallBarrage2()
end
Point:Destroy()
Ocarina.Transparency = 0
Animations = false
attack2 = false
attack = false
end

function MajorasWrath()
attack = true
attack2 = true
Animations = true
fattack = true
Ocarina.Transparency = 1
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2061656299"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()

local Particle = Instance.new("ParticleEmitter",Torso)
Particle.Enabled = true
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle.Rate = 2000
Particle.ZOffset = 1
Particle.Lifetime = NumberRange.new(0.5)
Particle.Speed = NumberRange.new(1)
Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0))
Particle.VelocitySpread = 360
Particle.LockedToPart = false

local Particle2 = Instance.new("ParticleEmitter",Right_Arm)
Particle2.Enabled = true
Particle2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle2.Rate = 2000
Particle2.ZOffset = 1
Particle2.Lifetime = NumberRange.new(0.5)
Particle2.Speed = NumberRange.new(1)
Particle2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle2.Rotation = NumberRange.new(-180, 180)
Particle2.RotSpeed = NumberRange.new(-180, 180)
Particle2.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle2.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133),Color3.fromRGB(61, 21, 133))
Particle2.VelocitySpread = 360
Particle2.LockedToPart = false

local Particle3 = Instance.new("ParticleEmitter",Left_Arm)
Particle3.Enabled = true
Particle3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle3.Rate = 2000
Particle3.ZOffset = 1
Particle3.Lifetime = NumberRange.new(0.5)
Particle3.Speed = NumberRange.new(1)
Particle3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle3.Rotation = NumberRange.new(-180, 180)
Particle3.RotSpeed = NumberRange.new(-180, 180)
Particle3.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle3.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133),Color3.fromRGB(61, 21, 133))
Particle3.VelocitySpread = 360
Particle3.LockedToPart = false

local Particle4 = Instance.new("ParticleEmitter",Right_Leg)
Particle4.Enabled = true
Particle4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle4.Rate = 2000
Particle4.ZOffset = 1
Particle4.Lifetime = NumberRange.new(0.5)
Particle4.Speed = NumberRange.new(1)
Particle4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle4.Rotation = NumberRange.new(-180, 180)
Particle4.RotSpeed = NumberRange.new(-180, 180)
Particle4.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle4.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133),Color3.fromRGB(61, 21, 133))
Particle4.VelocitySpread = 360
Particle4.LockedToPart = false

local Particle5 = Instance.new("ParticleEmitter",Left_Leg)
Particle5.Enabled = true
Particle5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.3,0.95),NumberSequenceKeypoint.new(1,1)})
Particle5.Rate = 2000
Particle5.ZOffset = 1
Particle5.Lifetime = NumberRange.new(0.5)
Particle5.Speed = NumberRange.new(1)
Particle5.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.3), NumberSequenceKeypoint.new(1, 1, 0.1)})
Particle5.Rotation = NumberRange.new(-180, 180)
Particle5.RotSpeed = NumberRange.new(-180, 180)
Particle5.Texture = "http://www.roblox.com/asset/?id=303194966"
Particle5.Color = ColorSequence.new(Color3.fromRGB(61, 21, 133),Color3.fromRGB(61, 21, 133))
Particle5.VelocitySpread = 360
Particle5.LockedToPart = false


for i = 0,0.25,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(60) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/15,math.rad(-60) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(20)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -0.5 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, -0.25) * c_angles(math.rad(30),math.rad(0), math.rad(0)), 0.15)
swait()
end
for i = 0,0.8,0.01 do
LerpReplacement(RA_Weld, c_new(1.2, 0.4, -0.4) * c_angles(math.rad(110), math.rad(-60) + math.sin(sine/2)/1, math.rad(-60)  - math.sin(sine/20)/10), 0.15)
LerpReplacement(LA_Weld, c_new(-1.2, 0.4, -0.4) * c_angles(math.rad(110), math.rad(60) + math.sin(sine/2)/1, math.rad(60) + math.sin(sine/20)/10), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.85, -0.25) * c_angles(math.rad(30) - math.sin(sine/2)/1, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.85, -0.25) * c_angles(math.rad(15) + math.sin(sine/2)/1, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-20) - math.sin(sine/15)/15 , math.rad(0) + math.sin(sine/4)/3, math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/2)/1, math.rad(0) + math.sin(sine/15)/30), 0.15)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/30,math.rad(4) - math.sin(sine/7.5)/30,math.rad(0) + math.sin(sine/7.5)/30)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/25,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/30)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://300916082"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://21338895"
S.Volume = 4
S.Looped = false
S.Pitch = 1
S:Play()
for i = 0,0.6,0.01 do
LerpReplacement(RA_Weld, c_new(1.2, 0.4, -0.4) * c_angles(math.rad(160), math.rad(0) + math.sin(sine/1)/1, math.rad(-10)  - math.sin(sine/20)/10), 0.15)
LerpReplacement(LA_Weld, c_new(-1.2, 0.4, -0.4) * c_angles(math.rad(160), math.rad(0) + math.sin(sine/1)/1, math.rad(10) + math.sin(sine/20)/10), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.5 - math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(-20),math.rad(0),math.rad(-5)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.5 - math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(-20),math.rad(0),math.rad(5)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, 0 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(0), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, -0.8) * c_angles(math.rad(-80),math.rad(0) + math.sin(sine/1)/1, math.rad(0)), 0.15)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/7,math.rad(4) - math.sin(sine/7.5)/7,math.rad(0) + math.sin(sine/7.5)/8)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/5,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/15)
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(0))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*0.3, 1  + i*0.2 ,5 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(0))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*1, 0  + i*0.1 ,5 + i*1)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://338601305"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S:Play()

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://1135968340"
S.Volume = 7
S.Looped = false
S.Pitch = 1
S:Play()


S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2057161687"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
for i, v in pairs(FindNearestTorso(rootPart.CFrame.p, 20)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0 + i*1, 0  + i*1 ,0 + i*1)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
Particle:Destroy()
Particle2:Destroy()
Particle3:Destroy()
Particle4:Destroy()
Particle5:Destroy()
for i = 0,0.8,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(60) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/15,math.rad(-60) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(20)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -0.5 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, -0.25) * c_angles(math.rad(30),math.rad(0), math.rad(0)), 0.15)
Tael2.C1 = Tael2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(2) + math.sin(sine/7.5)/30,math.rad(4) - math.sin(sine/7.5)/30,math.rad(0) + math.sin(sine/7.5)/30)
Tatl2.C1 = Tatl2.C1 * CFrame.fromEulerAnglesXYZ(math.rad(3) - math.sin(sine/7.5)/25,math.rad(-4) + math.sin(sine/7.5)/12,math.rad(0) - math.sin(sine/7.5)/30)

local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0 + i*1.5, 0  + i*1.5 ,0 + i*1.5)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(0))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*1, 8  + i*0.1 ,5 + i*1)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(0))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rng2.CFrame = rng2.CFrame * CFrame.Angles(0,math.rad(5) + i*math.random(1,10),math.rad(0))
		rngm2.Scale = Vector3.new(5 + i*1, 8  + i*0.1 ,5 + i*1)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(60 + i*1, 60  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(60 + i*1, 60  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

swait()
end
fattack = false
for i = 0,2,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.25, 0) * c_angles(math.rad(0) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.25, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/15)/5, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) - math.sin(sine/15)/5, math.rad(0) - math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/15)/1.5, -0.5 - math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0) + math.sin(sine/15)/10), 0.15)
LerpReplacement(Head_Weld, c_new(0 + math.sin(sine/15)/6, 1.5 - math.sin(sine/7.5)/15, -0.1) * c_angles(math.rad(0) + math.sin(sine/15)/15,math.rad(0), math.rad(0) - math.sin(sine/15)/10), 0.15)
swait()
end

Ocarina.Transparency = 0
Animations = false
attack2 = false
attack = false
end

function Tornado()
attack = true
attack2 = true
Animations = true

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://455375894"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.TimePosition = 0.25
S:Play()

for i = 0,2.6,0.01 do
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.25) * c_angles(math.rad(90),math.rad(-40) + math.sin(sine/3.75)/5,math.rad(-45)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, -0.25) * c_angles(math.rad(90),math.rad(40) - math.sin(sine/3.75)/5,math.rad(45)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(0) + math.sin(sine/7.5)/4), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
swait()
end
local tornada = Instance.new("Part",Character)
tornada.Anchored = true
tornada.BrickColor = BrickColor.new("Dark stone grey")
tornada.CanCollide = false
tornada.FormFactor = 3
tornada.Name = "Shockwave"
tornada.Size = Vector3.new(1, 1, 1)
tornada.Transparency = 0.35
tornada.TopSurface = 0
tornada.BottomSurface = 0
tornada.CFrame = rootPart.CFrame * CFrame.new(0,0,-10) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
local rngm2 = Instance.new("SpecialMesh", tornada)
rngm2.MeshId = "http://www.roblox.com/asset/?id=36755354"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
for i, v in pairs(FindNearestTorso(tornada.CFrame.p, 20)) do
	if v:FindFirstChild('Humanoid') then
		local bodpos = Instance.new("BodyPosition",v:FindFirstChild("HumanoidRootPart"))
		bodpos.D = 175
		bodpos.P = 20000
		bodpos.MaxForce = Vector3.new(4000,40000,4000)
		bodpos.Position = tornada.Position + Vector3.new(0,15,0)
		target = v
		coroutine.wrap(function()
		for i = 0,2.5,0.01 do
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		swait()
		end
		bodpos:Destroy()
		end)()
	end
end
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(0.2 + i*0.25, 0  + i*0.3 ,0.2 + i*0.25)
		tornada.CFrame = tornada.CFrame * CFrame.new(0,-0.5,0)
		swait()
	end
	for i = 0,2,0.01 do
		tornada.CFrame = tornada.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(20),0)
		swait()
	end
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(7 + i*0.3, 6  + i*1 ,7 + i*0.3)
		tornada.Transparency = i/30
		swait()
	end
	wait()
	tornada:Destroy()
end)
for i = 0,2,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(30) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
swait()
end

local SB = Instance.new("Part",Effects)
SB.Name = "ShadowBallz"
SB.Shape = Enum.PartType.Block
SB.CanCollide = false
SB.BrickColor = BrickColor.new("Deep orange")
SB.Transparency = 0
SB.Material = "Neon"
SB.Size = Vector3.new(0.25, 0.25, 0.25)
SB.TopSurface = Enum.SurfaceType.Smooth
SB.BottomSurface = Enum.SurfaceType.Smooth	
SB.CFrame = tornada.CFrame * CFrame.new(0,-10,0)
boom = Instance.new("SpecialMesh",SB)
boom.MeshType = "Sphere"
boom.Scale = Vector3.new(6,6,6)
S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://213656638"
S.Volume = 5
S.Looped = false
S.Pitch = 2
S:Play()

S = Instance.new("Sound")
S.Parent = SB
S.SoundId = "rbxassetid://206049428"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.PlayOnRemove = true

SB.CanCollide = true

	SB.Touched:connect(function(hit)
	if(not Character:IsAncestorOf(hit) or hit.Name == "ShadowBallz") then
for i, v in pairs(FindNearestTorso(SB.CFrame.p, 7)) do
		if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really red")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame
SB:Destroy()
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(5 + i*0.3, 5  + i*0.3 ,5 + i*0.3)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
for i = 1,6 do
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Deep orange")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("New Yeller")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = SB.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(2 + i*1, 2  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
end
	end
	end)

for i = 0,0.8,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://2064874783"
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
attack2 = false
target = nil
Animations = false
attack = false
end

function FallingMoon() -- Are you sure you wanna do this?
attack = true
Animations = true
Ocarina.Transparency = 1
-- This is it, life on this planet ends here --
local Moon = Instance.new("Part",game.Workspace)
Moon.Name = "You're Dead"
Moon.Shape = Enum.PartType.Ball
Moon.CanCollide = true
Moon.Anchored = true
Moon.Color = Color3.new(0,0,0)
Moon.Material = "SmoothPlastic"
Moon.Size = Vector3.new(1000, 1000, 1000)
Moon.TopSurface = Enum.SurfaceType.Smooth
Moon.BottomSurface = Enum.SurfaceType.Smooth
Moon.CFrame = rootPart.CFrame * CFrame.new(0,10000,0)
Moon.CFrame = Moon.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
local MoonMesh = Instance.new("FileMesh",Moon)
MoonMesh.MeshId = "http://www.roblox.com/asset/?id=1432303611"
MoonMesh.TextureId = "http://www.roblox.com/asset/?id=1432303667"
MoonMesh.Scale = Vector3.new(15,15,15)


game.Lighting.Brightness = 0
game.Lighting.TimeOfDay = 0
game.Lighting.OutdoorAmbient = Color3.fromRGB(127,50,50)
local ski = Instance.new("Sky",game.Lighting)
ski.MoonAngularSize = 0
ski.StarCount = 0




Theme:Destroy()
S = Instance.new("Sound")
S.Parent = Character
S.SoundId = "rbxassetid://160745944"
S.Volume = 10
S.Looped = false
S.Pitch = 0.7
S:Play()


S = Instance.new("Sound")
S.Parent = Character
S.SoundId = "rbxassetid://306183328"
S.Volume = 10
S.Looped = true
S.Pitch = 1
S:Play()

coroutine.wrap(function()
while true do
LerpReplacement(RA_Weld, c_new(1.5, 0.25, 0) * c_angles(math.rad(0) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.25, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/15)/5, math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) - math.sin(sine/15)/5, math.rad(0) - math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/15)/1.5, -0.5 - math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0) + math.sin(sine/15)/10), 0.15)
LerpReplacement(Head_Weld, c_new(0 + math.sin(sine/15)/6, 1.5 - math.sin(sine/7.5)/15, -0.1) * c_angles(math.rad(0) + math.sin(sine/15)/15,math.rad(0), math.rad(0) - math.sin(sine/15)/10), 0.15)
Humanoid.MaxHealth = 1e100
Humanoid.Health = 1e100
swait()
end
end)()
coroutine.wrap(function()
while true do
Moon.CFrame = Moon.CFrame * CFrame.new(0,10,0)
swait()
end
end)()

Moon.Touched:connect(function(hit)
if(not Character:IsAncestorOf(hit)) then
for i, v in pairs(FindNearestTorso(Moon.CFrame.p, 99999999999999999999999)) do
	if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = 100
	end
end
end
end)

end

function MagicTrap()
attack = true
attack2 = true
Animations = true

lafz = math.random(1,2)
S = Instance.new("Sound")
S.Parent = Character.Torso
if lafz == 1 then
S.SoundId = "rbxassetid://2065249482"
elseif lafz == 2 then
S.SoundId = "rbxassetid://2065252593"
end
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://21338895"
S.Volume = 4
S.Looped = false
S.Pitch = 0.8
S:Play()

CircleMagic = Instance.new("Part",Character)
CircleMagic.Transparency=1
CircleMagic.Size=Vector3.new(30,0,30)
CircleMagic.Anchored=true
CircleMagic.CanCollide=false
CircleMagic.CFrame = rootPart.CFrame * CFrame.new(0,-3,-15)
CMT=Instance.new('Decal',CircleMagic)
CMT.Face='Top'
CMT.Texture='http://www.roblox.com/asset/?id=1193737071'
CMT.Transparency=1

for i = 0,1.5,0.01 do
LerpReplacement(RA_Weld, c_new(0.8, 0.5, -0.65) * c_angles(math.rad(50) + math.sin(sine/15)/35,math.rad(-5) - math.sin(sine/15)/35,math.rad(-76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-0.8, 0.5, -0.65) * c_angles(math.rad(45) + math.sin(sine/15)/25,math.rad(-10) + math.sin(sine/15)/45,math.rad(76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(20),math.rad(0),math.rad(5) - math.sin(sine/15)/30), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) - math.sin(sine/15)/30), 0.15)
LerpReplacement(Torso_Weld, c_new(2 + math.sin(sine/7.5)/15, 0.5 + math.sin(sine/15)/5, 0) * c_angles(math.rad(50), math.rad(0),math.rad(60) + math.sin(sine/7.5)/30), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -1) * c_angles(math.rad(-60),math.rad(45) , math.rad(-20) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
CircleMagic.CFrame = CircleMagic.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(15),0)
swait()
CMT.Transparency = CMT.Transparency - 0.006
end
MaskWeld.C1 = CFrame.new(0,-0.7,-0.25)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))

for i, v in pairs(FindNearestTorso(CircleMagic.CFrame.p, 20)) do
	if v:FindFirstChild('Humanoid') then
		local bodpos = Instance.new("BodyPosition",v:FindFirstChild("HumanoidRootPart"))
		bodpos.D = 175
		bodpos.P = 20000
		bodpos.MaxForce = Vector3.new(4000,40000,4000)
		bodpos.Position = CircleMagic.Position + Vector3.new(0,4,0)
		target = v
		coroutine.wrap(function()
		for i = 0,2.5,0.01 do
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
		swait()
		end
		bodpos:Destroy()
		end)()
	end
end

spawn(function()
wait(1.5)
for i = 1,9 do
CMT.Transparency = CMT.Transparency + 0.1
swait()
end
CircleMagic:Destroy()
end)
for i = 0,0.5,0.01 do
LerpReplacement(RA_Weld, c_new(0.8, 0.5, -0.65) * c_angles(math.rad(50) + math.sin(sine/15)/35,math.rad(-5) - math.sin(sine/15)/35,math.rad(-76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-0.8, 0.5, -0.65) * c_angles(math.rad(45) + math.sin(sine/15)/25,math.rad(-10) + math.sin(sine/15)/45,math.rad(76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(20),math.rad(0),math.rad(5) - math.sin(sine/15)/30), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) - math.sin(sine/15)/30), 0.15)
LerpReplacement(Torso_Weld, c_new(2 + math.sin(sine/7.5)/15, 0.5 + math.sin(sine/15)/5, 0) * c_angles(math.rad(50), math.rad(0),math.rad(60) + math.sin(sine/7.5)/30), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -1) * c_angles(math.rad(-60),math.rad(45), math.rad(-20)), 0.15)
CircleMagic.CFrame = CircleMagic.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(15),0)
swait()
end
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://323678263"
S.Volume = 9.5
S.Looped = false
S.Pitch = 1
S:Play()
for i = 0,0.5,0.01 do
LerpReplacement(RA_Weld, c_new(1.1, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(60),math.rad(0),math.rad(-60)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.1, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(80),math.rad(0),math.rad(60)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.5 - math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(-20),math.rad(0),math.rad(-5)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.5 - math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(-20),math.rad(0),math.rad(5)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, 0 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(0), math.rad(0),math.rad(5)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, -0.8) * c_angles(math.rad(-80),math.rad(0), math.rad(0)), 0.15)
CircleMagic.CFrame = CircleMagic.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)
swait()
end
for i, v in pairs(FindNearestTorso(CircleMagic.CFrame.p, 25)) do
	if v:FindFirstChild('Humanoid') then
		v:FindFirstChild("Humanoid").Health = v:FindFirstChild("Humanoid").Health - 0
	end
end
local rng2 = Instance.new("Part",Effects)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Material = "Neon"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = CircleMagic.CFrame
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.Scale = Vector3.new(1, 0, 1)
rngm2.Offset = Vector3.new(0,0,0)
rngm2.MeshType = "Sphere"
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(13 + i*0.3, 13  + i*0.3 ,13 + i*0.3)
		rng2.Transparency = i/60
		swait()
	end
	wait()
	rng2:Destroy()
end)
for i = 1,6 do
local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Dark indigo")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = CircleMagic.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(50 + i*1, 50  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)

local rng2 = Instance.new("Part",Character)
rng2.Anchored = true
rng2.BrickColor = BrickColor.new("Really black")
rng2.CanCollide = false
rng2.FormFactor = 3
rng2.Name = "Shockwave"
rng2.Size = Vector3.new(1, 1, 1)
rng2.Transparency = 0.35
rng2.TopSurface = 0
rng2.BottomSurface = 0
rng2.CFrame = CircleMagic.CFrame * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local rngm2 = Instance.new("SpecialMesh", rng2)
rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm2.Scale = Vector3.new(0, 0, 0)
rngm2.Offset = Vector3.new(0,0,-0.5)
spawn(function()
	for i = 1, 60, 2 do
		rngm2.Scale = Vector3.new(50 + i*1, 50  + i*1 ,2 + i*0.3)
		rng2.Transparency = i/30
		rng2.CFrame = rng2.CFrame - Vector3.new(0,0.2,0)
		swait()
	end
	wait()
	rng2:Destroy()
end)
end
for i = 0,0.5,0.01 do
LerpReplacement(RA_Weld, c_new(1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(60) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.5, 0.5 + math.sin(sine/7.5)/15, -0.5) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) - math.sin(sine/7.5)/15,math.rad(-60) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(-20)), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1 - math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20),math.rad(0),math.rad(20)), 0.15)
LerpReplacement(Torso_Weld, c_new(0, -0.5 + math.sin(sine/7.5)/15, 0) * c_angles(math.rad(20), math.rad(0),math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5 + math.sin(sine/7.5)/15, -0.25) * c_angles(math.rad(30),math.rad(0), math.rad(0)), 0.15)
swait()
end

target = nil
Animations = false
attack2 = false
attack = false
end

function Taunt1()
attack = true
attack2 = true
Animations = true
lafz = math.random(1,5)
S = Instance.new("Sound")
S.Parent = Character.Torso
if lafz == 1 then
S.SoundId = "rbxassetid://2057149157"
elseif lafz == 2 then
S.SoundId = "rbxassetid://2057150436"
elseif lafz == 3 then
S.SoundId = "rbxassetid://2057595082"
elseif lafz == 4 then
S.SoundId = "rbxassetid://2065249482"
elseif lafz == 5 then
S.SoundId = "rbxassetid://2065252593"
end
S.Volume = 10
S.Looped = false
S.Pitch = 1
S:Play()
S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://21338895"
S.Volume = 4
S.Looped = false
S.Pitch = 0.8
S:Play()
local laughi = math.random(1,3)
if laughi == 1 then
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.5) * c_angles(math.rad(45) - math.sin(sine/7.5)/15, math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, -0.5) * c_angles(math.rad(45) + math.sin(sine/7.5)/15, math.rad(0),math.rad(30)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/4)/1, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(30) - math.sin(sine/4)/1, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(10) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
swait()
end
elseif laughi == 2 then
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.5) * c_angles(math.rad(45) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, -0.5) * c_angles(math.rad(45) + math.sin(sine/7.5)/15, math.rad(0),math.rad(30)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/4)/1, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(30) - math.sin(sine/4)/1, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(45) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-20) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
swait()
end
elseif laughi == 3 then
for i = 0,1,0.01 do
LerpReplacement(RA_Weld, c_new(0.8, 0.5, -0.65) * c_angles(math.rad(50) + math.sin(sine/15)/35,math.rad(-5) - math.sin(sine/15)/35,math.rad(-76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-0.8, 0.5, -0.65) * c_angles(math.rad(45) + math.sin(sine/15)/25,math.rad(-10) + math.sin(sine/15)/45,math.rad(76) + math.sin(sine/15)/15), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(20),math.rad(0),math.rad(5) - math.sin(sine/15)/30), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) - math.sin(sine/15)/30), 0.15)
LerpReplacement(Torso_Weld, c_new(2 + math.sin(sine/7.5)/15, 0.5 + math.sin(sine/15)/5, 0) * c_angles(math.rad(50), math.rad(0),math.rad(60) + math.sin(sine/7.5)/30), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -1) * c_angles(math.rad(-60),math.rad(45) , math.rad(-20) + math.sin(sine/2)/2), 0.15)
MaskWeld.C1 = MaskWeld.C1 * CFrame.fromEulerAnglesXYZ(0,0,math.rad(0) - math.sin(sine/2)/25)
swait()
end
end
MaskWeld.C1 = CFrame.new(0,-0.7,-0.25)*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))

Animations = false
attack2 = false
attack = false
end

function Taunt2()
attack = true
attack2 = true
Animations = true

S = Instance.new("Sound")
S.Parent = Character.Torso
S.SoundId = "rbxassetid://455375894"
S.Volume = 8
S.Looped = false
S.Pitch = 1
S.TimePosition = 0.25
S:Play()

for i = 0,15,0.1 do
swait()
LerpReplacement(RA_Weld, c_new(1.25, 0.5, -0.25) * c_angles(math.rad(90),math.rad(-40) + math.sin(sine/3.75)/5,math.rad(-45)), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.5, -0.25) * c_angles(math.rad(90),math.rad(40) - math.sin(sine/3.75)/5,math.rad(45)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -0.7 + math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) + math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -0.7 - math.sin(sine/7.5)/5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/1,math.rad(0),math.rad(0) - math.sin(sine/7.5)/15), 0.15)
LerpReplacement(Torso_Weld, c_new(0 - math.sin(sine/7.5)/1, -1.3 + math.sin(sine/3.75)/5, 0) * c_angles(math.rad(0), math.rad(0),math.rad(0) + math.sin(sine/7.5)/4), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0) + math.sin(sine/3.75)/5,math.rad(0), math.rad(0) - math.sin(sine/15)/4), 0.15)
end
Animations = false
attack2 = false
attack = false
end

function Taunt()
	local randomTaunt = math.random(1, 10) 
	if randomTaunt ~= 6 then
		Taunt1()
	else
		Taunt2()
	end
end
-- Moves --

mouse.KeyDown:connect(function(key)
if key == "t" and attack == false then
Taunt()
elseif key == "q" and attack == false then
idle = 2500
elseif key == "n" and attack == false then
MagicTrap()
elseif key == "r" and attack == false then
Laser()
elseif key == "v" and attack == false then
ShadowBomb()
elseif key == "m" and attack == false then
MajorasWrath()
elseif key == "c" and attack == false then
Tornado()
elseif key == ";" and attack == false then
FallingMoon()
elseif key == "b" and attack == false then
ShadowBarrage()
end end)

attk = 1
mouse.Button1Down:connect(function(key)
if attack == false then
if attk == 1 then
Attackone()
attk = attk + 1
elseif attk == 2 then
Attacktwo()
attk = attk + 1
elseif attk == 3 then
Attackthree()
attk = attk + 1
elseif attk == 4 then
Attackfour()
attk = attk + 1
elseif attk == 5 then
Attackfive()
attk = attk + 1
elseif attk == 6 then
Attacksix()
attk = attk + 1
elseif attk == 7 then
Attackseven()
attk = 1
end
end
end)

-- End Of Moves --


function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end

swait()
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)

local punches={
	a=false,
	b=false,
	c=false
}

UIService.InputBegan:connect(function(Input,GUIProcessed)
	if not GUIProcessed and Input.UserInputType==Enum.UserInputType.MouseButton1 then
		if punches.a==false then
			punches.a=true wait(.4) punches.a=false
		else
			punches.a=true
			print('a ',punches.a)
			if punches.b==false then
				punches.b=true wait(.4) punches.b=false
			else
				punches.b=true
				print('b ',punches.b)
				if punches.c==false then
					punches.c=true wait(.4) punches.c=false
				else
					punches.c=true
					print('c ',punches.c)
					print('a ',punches.a,'b ',punches.b,'c ',punches.c)
				end
			end
		end
	elseif not GUIProcessed and Input.KeyCode==Enum.KeyCode.LeftShift then
		sprint=true
	end
end)

UIService.InputEnded:connect(function(Input,GUIProcessed)
	if not GUIProcessed and Input.KeyCode==Enum.KeyCode.LeftShift then
		sprint=false
	end
end)

coroutine.wrap(function()
while true do
if fattack == false then
Tael2.C1 = CFrame.new(2,-3 - math.sin(sine/7.5)/20,-1)
Tatl2.C1 = CFrame.new(-2,-3 + math.sin(sine/7.5)/12,-1)
swait()
else
swait()
end
end
end)()

coroutine.wrap(function()
while true do
if sprint == false then
if attack2 == false then
Humanoid.WalkSpeed = 8
Humanoid.JumpPower = 50
elseif attack2 == true then
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
end
elseif sprint == true then
if attack2 == false then
Humanoid.WalkSpeed = 25
Humanoid.JumpPower = 100
elseif attack2 == true then
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
end
end
wait()
end
end)()

idly = 0
idle = idly

coroutine.wrap(function()
while true do 
if currentAnim == "Idling" and attack == false and attack2 == false then
idle=idle+1
swait()
else
idle=idly
swait()
end
end
end)()

warn("Loaded")
warn("Skull Kid script Made by Kunoleo")
game:GetService("RunService").Stepped:connect(function()
	Angle = (Angle % 100) + angleSpeed/10
	Axis = (Axis % 100) + axisSpeed/10
	local walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
	local jumpVel = Torso.Velocity.Y
	sine = change + sine

	if(Humanoid.Jump) and jumpVel > 1 then
		currentAnim = "Jumping"
	elseif walkingMagnitude < 2 then
		currentAnim = "Idling"
	elseif isSprinting == true then
		currentAnim = "Sprinting"
	elseif walkingMagnitude > 2 then
		currentAnim = "Walking"
	elseif isAttacking == true then
		currentAnim = "Attacking"
	end

	if currentAnim == "Jumping" and Animations == false then
		angleSpeed = 2
		axisSpeed = 2
		LerpReplacement(RA_Weld, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LerpReplacement(LA_Weld, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LerpReplacement(Torso_Weld, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LerpReplacement(Head_Weld, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)	
	elseif currentAnim == "Idling" and Animations == false then
	if idle >= 0 and idle < 2000 then
		angleSpeed = 1
		axisSpeed = 1
LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(30) + math.sin(sine/15)/5, math.rad(0),math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(15) + math.sin(sine/15)/5, math.rad(0) ,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(0) - math.sin(sine/15)/15 , math.rad(0), math.rad(0)), 0.15)
LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(-10) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
	elseif idle >= 2000 then
		LerpReplacement(RA_Weld, c_new(0.8, 0.5, -0.65) * c_angles(math.rad(50) + math.sin(sine/15)/35,math.rad(-5) - math.sin(sine/15)/35,math.rad(-76) + math.sin(sine/15)/15), 0.15)
		LerpReplacement(LA_Weld, c_new(-0.8, 0.5, -0.65) * c_angles(math.rad(45) + math.sin(sine/15)/25,math.rad(-10) + math.sin(sine/15)/45,math.rad(76) + math.sin(sine/15)/15), 0.15)
		LerpReplacement(LL_Weld, c_new(-0.5, -1, 0) * c_angles(math.rad(20),math.rad(0),math.rad(5) - math.sin(sine/15)/30), 0.15)
		LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(0) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/7.5)/15,math.rad(-30) - math.sin(sine/15)/30), 0.15)
		LerpReplacement(Torso_Weld, c_new(2 + math.sin(sine/7.5)/15, 0.5 + math.sin(sine/15)/5, 0) * c_angles(math.rad(50), math.rad(0),math.rad(60) + math.sin(sine/7.5)/30), 0.15)
		LerpReplacement(Head_Weld, c_new(0, 1.5, -1) * c_angles(math.rad(-60),math.rad(45), math.rad(-20)), 0.15)
	end
	elseif currentAnim == "Walking" and Animations == false then
		if sprint==false then
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 30
			LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(-20) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
			LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(100) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
			LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-10) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
			LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-20) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
			LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-30) - math.sin(sine/15)/15, math.rad(0), math.sin((rootPart.RotVelocity.Y/30))/2), 0.15)
			LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(30) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
		else
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 45
			LerpReplacement(RA_Weld, c_new(1.5, 0.5, -0.25) * c_angles(math.rad(-30) - math.sin(sine/7.5)/15, math.rad(30) + math.sin(sine/7.5)/15,math.rad(5) + math.sin(sine/7.5)/15), 0.15)
			LerpReplacement(LA_Weld, c_new(-1.25, 0.25, 0) * c_angles(math.rad(90) + math.sin(sine/7.5)/15, math.rad(60),math.rad(-20)), 0.15)
			LerpReplacement(LL_Weld, c_new(-0.5, -0.7, -0.3) * c_angles(math.rad(-20) + math.sin(sine/15)/5, math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(-5) - math.sin(sine/7.5)/25), 0.15)
			LerpReplacement(RL_Weld, c_new(0.5, -1, 0) * c_angles(math.rad(-30) + math.sin(sine/15)/5, -math.sin((rootPart.RotVelocity.Y/10))/2,math.rad(5) + math.sin(sine/7.5)/25), 0.15)
			LerpReplacement(Torso_Weld, c_new(0 + math.sin(sine/15)/5, -0.5 + math.sin(sine/7.5)/15, 0 + math.sin(sine/7.5)/15) * c_angles(math.rad(-40) - math.sin(sine/15)/15, math.rad(0), math.sin((rootPart.RotVelocity.Y/30))/2), 0.15)
			LerpReplacement(Head_Weld, c_new(0, 1.5, -0.1) * c_angles(math.rad(40) + math.sin(sine/7.5)/15,math.rad(0) + math.sin(sine/15)/30, math.rad(0) + math.sin(sine/15)/30), 0.15)
		end
	end
end)
if intro == true then
Intro()
else
Ocarina.Transparency = 0
Mask.Transparency = 0
Theme.SoundId = "rbxassetid://302493616"
Theme:Play()
end