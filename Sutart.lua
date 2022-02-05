_G.Velocity = 25
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end

cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Script0 = Instance.new("Script")
LocalScript1 = Instance.new("LocalScript")
NumberValue2 = Instance.new("NumberValue")
NumberValue3 = Instance.new("NumberValue")
Accessory4 = Instance.new("Accessory")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Model7 = Instance.new("Model")
Part8 = Instance.new("Part")
Decal9 = Instance.new("Decal")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Decal15 = Instance.new("Decal")
SpecialMesh16 = Instance.new("SpecialMesh")
Weld17 = Instance.new("Weld")
CharacterMesh18 = Instance.new("CharacterMesh")
CharacterMesh19 = Instance.new("CharacterMesh")
CharacterMesh20 = Instance.new("CharacterMesh")
CharacterMesh21 = Instance.new("CharacterMesh")
CharacterMesh22 = Instance.new("CharacterMesh")
BodyColors23 = Instance.new("BodyColors")
Pants24 = Instance.new("Pants")
Shirt25 = Instance.new("Shirt")
Humanoid26 = Instance.new("Humanoid")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
SpecialMesh29 = Instance.new("SpecialMesh")
Model30 = Instance.new("Model")
Part31 = Instance.new("Part")
Weld32 = Instance.new("Weld")
MeshPart33 = Instance.new("MeshPart")
Trail34 = Instance.new("Trail")
Model35 = Instance.new("Model")
Part36 = Instance.new("Part")
ParticleEmitter37 = Instance.new("ParticleEmitter")
ParticleEmitter38 = Instance.new("ParticleEmitter")
ParticleEmitter39 = Instance.new("ParticleEmitter")
ParticleEmitter40 = Instance.new("ParticleEmitter")
Part41 = Instance.new("Part")
ParticleEmitter42 = Instance.new("ParticleEmitter")
ParticleEmitter43 = Instance.new("ParticleEmitter")
BillboardGui44 = Instance.new("BillboardGui")
TextLabel45 = Instance.new("TextLabel")
Model46 = Instance.new("Model")
MeshPart47 = Instance.new("MeshPart")
Weld48 = Instance.new("Weld")
ScreenGui49 = Instance.new("ScreenGui")
Frame50 = Instance.new("Frame")
Frame51 = Instance.new("Frame")
TextLabel52 = Instance.new("TextLabel")
TextLabel53 = Instance.new("TextLabel")
TextLabel54 = Instance.new("TextLabel")
TextLabel55 = Instance.new("TextLabel")
TextLabel56 = Instance.new("TextLabel")
TextLabel57 = Instance.new("TextLabel")
TextLabel58 = Instance.new("TextLabel")
TextLabel59 = Instance.new("TextLabel")
TextLabel60 = Instance.new("TextLabel")
TextLabel61 = Instance.new("TextLabel")
TextLabel62 = Instance.new("TextLabel")
TextLabel63 = Instance.new("TextLabel")
TextButton64 = Instance.new("TextButton")
Script65 = Instance.new("Script")
Part66 = Instance.new("Part")
ParticleEmitter67 = Instance.new("ParticleEmitter")
ParticleEmitter68 = Instance.new("ParticleEmitter")
ParticleEmitter69 = Instance.new("ParticleEmitter")
ParticleEmitter70 = Instance.new("ParticleEmitter")
ParticleEmitter71 = Instance.new("ParticleEmitter")
ParticleEmitter72 = Instance.new("ParticleEmitter")
ParticleEmitter73 = Instance.new("ParticleEmitter")
Part74 = Instance.new("Part")
Decal75 = Instance.new("Decal")
Model76 = Instance.new("Model")
Part77 = Instance.new("Part")
Decal78 = Instance.new("Decal")
SpecialMesh79 = Instance.new("SpecialMesh")
Part80 = Instance.new("Part")
Decal81 = Instance.new("Decal")
Motor6D82 = Instance.new("Motor6D")
Motor6D83 = Instance.new("Motor6D")
Motor6D84 = Instance.new("Motor6D")
Motor6D85 = Instance.new("Motor6D")
Motor6D86 = Instance.new("Motor6D")
Motor6D87 = Instance.new("Motor6D")
Part88 = Instance.new("Part")
Part89 = Instance.new("Part")
Part90 = Instance.new("Part")
Part91 = Instance.new("Part")
Humanoid92 = Instance.new("Humanoid")
Shirt93 = Instance.new("Shirt")
CharacterMesh94 = Instance.new("CharacterMesh")
CharacterMesh95 = Instance.new("CharacterMesh")
Pants96 = Instance.new("Pants")
CharacterMesh97 = Instance.new("CharacterMesh")
CharacterMesh98 = Instance.new("CharacterMesh")
CharacterMesh99 = Instance.new("CharacterMesh")
Part100 = Instance.new("Part")
SpecialMesh101 = Instance.new("SpecialMesh")
Vector3Value102 = Instance.new("Vector3Value")
Weld103 = Instance.new("Weld")
Model104 = Instance.new("Model")
Part105 = Instance.new("Part")
Part106 = Instance.new("Part")
Part107 = Instance.new("Part")
Part108 = Instance.new("Part")
Part109 = Instance.new("Part")
MeshPart110 = Instance.new("MeshPart")
Script111 = Instance.new("Script")
Model112 = Instance.new("Model")
MeshPart113 = Instance.new("MeshPart")
Script0.Name = "SuTart"
Script0.Parent = mas
table.insert(cors,sandbox(Script0,function()
wait(1/60)


-- By RealBredbeargotban edit to su tart by Pza12TH
-- Script Name: su tart
-- Original By Lord_Phantasmagoria (CKbackup)

p = game.Players.LocalPlayer
m = p:GetMouse()
ch = game.Workspace.non
root = ch.HumanoidRootPart
hum = ch.Humanoid
a = script.ScreenGui:Clone()a.Parent = game.Players.LocalPlayer.PlayerGui
a.Enabled = true
local baconhair = script.BACONPOWER:Clone()
baconhair.Parent = ch

userinput = game:GetService("UserInputService")
debris = game:GetService("Debris")

stompphrase = 0
anim = "Idle"
attack = false
grabbed = false
canplay = false
canplaying = false
FATHERWASUMMONDA = false
sine = 0
change = 1
speed = 75
jpower = 75
mythtime = false

Instance.new("ForceField",ch).Visible = false




-- Music 

local music = Instance.new("Sound",root)
music.SoundId = "rbxassetid://2010524866"
music.Name = "Music"
music.PlaybackSpeed = 1
music.Volume = 3
music.Looped = true
music:Play()



-- Welds

local neck = Instance.new("Weld",ch.Torso)
neck.Part0 = ch.Torso
neck.Part1 = ch.Head
neck.C0 = CFrame.new(0,1.5,0)
local torso = Instance.new("Weld",root)
torso.Part0 = root
torso.Part1 = ch.Torso
local rs = Instance.new("Weld",ch.Torso)
rs.Part0 = ch.Torso
rs.Part1 = ch["Right Arm"]
rs.C0 = CFrame.new(1.5,0.5,0)
rs.C1 = CFrame.new(0,0.5,0)
local ls = Instance.new("Weld",ch.Torso)
ls.Part0 = ch.Torso
ls.Part1 = ch["Left Arm"]
ls.C0 = CFrame.new(-1.5,0.5,0)
ls.C1 = CFrame.new(0,0.5,0)
local rh = Instance.new("Weld",ch.Torso)
rh.Part0 = ch.Torso
rh.Part1 = ch["Right Leg"]
rh.C0 = CFrame.new(0.5,-1,0)
rh.C1 = CFrame.new(0,1,0)
local lh = Instance.new("Weld",ch.Torso)
lh.Part0 = ch.Torso
lh.Part1 = ch["Left Leg"]
lh.C0 = CFrame.new(-0.5,-1,0)
lh.C1 = CFrame.new(0,1,0)

-- Cleetus lol
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()





coroutine.wrap(function()
	if ch.Head:FindFirstChild("face") ~= nil then
		ch.Head.face.Texture = "rbxassetid://34067417"
	else
		local newface = Instance.new("Decal",ch.Head)
		newface.Face = Enum.NormalId.Front
		newface.Texture = "rbxassetid://34067417"
	end
end)()

local newcolor = Instance.new("BodyColors",ch)
newcolor.HeadColor = BrickColor.new("White")
newcolor.LeftArmColor = BrickColor.new("White")
newcolor.RightArmColor = BrickColor.new("White")
newcolor.LeftLegColor = BrickColor.new("White")
newcolor.RightLegColor = BrickColor.new("White")
newcolor.TorsoColor = BrickColor.new("White")

local hat = script["Mellow Cowboy"]
hat.Parent = ch

local shirt = Instance.new("Shirt",ch)
shirt.ShirtTemplate = "rbxassetid://144076357"

local pants = Instance.new("Pants",ch)
pants.PantsTemplate = "rbxassetid://144076759"

local penguintorso = Instance.new("CharacterMesh",ch)
penguintorso.BodyPart = Enum.BodyPart.Torso
penguintorso.MeshId = 82907945
local newleftarm = Instance.new("CharacterMesh",ch)
newleftarm.BodyPart = Enum.BodyPart.LeftArm
newleftarm.MeshId = 82907977
local newrightarm = Instance.new("CharacterMesh",ch)
newrightarm.BodyPart = Enum.BodyPart.RightArm
newrightarm.MeshId = 82908019
local newleftleg = Instance.new("CharacterMesh",ch)
newleftleg.BodyPart = Enum.BodyPart.LeftLeg
newleftleg.MeshId = 81487640
local newrightleg = Instance.new("CharacterMesh",ch)
newrightleg.BodyPart = Enum.BodyPart.RightLeg
newrightleg.MeshId = 81487710
ch.Head.Mesh.MeshId = "rbxassetid://83001675"
ch.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25)

-- BLACON

local blacon = script.blacon
local blaconweld = Instance.new("Weld",blacon.bacon)
blaconweld.Part0 = blacon.bacon
blaconweld.Part1 = ch["Right Arm"]
blaconweld.C0 = blaconweld.C0:Lerp(CFrame.new(0.2,0.3,11.2)*CFrame.Angles(math.rad(90),math.rad(65),math.rad(0)),0.3)

-- bacon piece

local baconpiece = script.baconpiece
local baconweld = Instance.new("Weld",baconpiece.bacon)
baconweld.Part0 = baconpiece.bacon
baconweld.Part1 = ch["Right Arm"]
baconweld.C0 = baconweld.C0:Lerp(CFrame.new(1.8,4.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)

--bacon

local baconroot = baconhair.Torso.Torso
local bacontorso = baconhair.Torso
	local baconneck = bacontorso["Neck"]
	local baconla = bacontorso["Left Shoulder"]
	local baconra = bacontorso["Right Shoulder"]
	local baconll = bacontorso["Left Hip"]
	local baconrl = bacontorso["Right Hip"]

-- BANJO

--[[local banjo = script.Model
local banjoweld = Instance.new("Weld",banjo.Banjo)
banjoweld.Part0 = banjo.Banjo
banjoweld.Part1 = ch["Left Arm"]
banjoweld.C0 = CFrame.new(0,1.2,0)*CFrame.Angles(0,math.rad(-90),0)]]

--bacon army

local bacon1 = script[" "]:Clone()
bacon1.Parent = ch
local bacon2 = script[" "]:Clone()
local bacon3 = script[" "]:Clone()
local bacon4 = script[" "]:Clone()
local bacon5 = script[" "]:Clone()
bacon2.Parent = ch
bacon3.Parent = ch
bacon4.Parent = ch
bacon5.Parent = ch

-- bacon effect

local effect1 = script.effect.Part:Clone()
effect1.Parent = ch
local effect2 = script.effect.Part1:Clone()
effect2.Parent = ch
local effect1weld = Instance.new("Weld",ch.Torso)
effect1weld.Part0 = effect1
effect1weld.Part1 = ch.Torso
effect1weld.C0 = CFrame.new(0,-0.7,-1)*CFrame.Angles(0,0,0)
local effect2weld = Instance.new("Weld",ch.Torso)
effect2weld.Part0 = effect2
effect2weld.Part1 = ch.Torso
effect2weld.C0 = CFrame.new(0,-0.5,-1)*CFrame.Angles(0,0,0)

--hitbox cuz ok

local hitbox = Instance.new("Part",ch)
hitbox.Anchored = true
hitbox.Name = "yeahhitbox"
hitbox.CanCollide = false
hitbox.Transparency = 1
hitbox.Position = ch.Torso.Position
hitbox.Size = Vector3.new(20,10,20)

--just fire

local fire1 = script.Fire:Clone()
local fire2 = script.Fire:Clone()
local fire3 = script.Fire:Clone()
local fire4 = script.Fire:Clone()
local fire5 = script.Fire:Clone()
fire1.Parent = ch
fire2.Parent = ch
fire3.Parent = ch
fire4.Parent = ch
fire5.Parent = ch

-- Usefull functions

function CheckIfInTable(Table,Value)
	for _,v in pairs(Table) do
		if v == Value then
			return true
		end
	end
end



dft = {} 

function GetPlayers()
local c = game.Players:GetChildren() 
for i = 1, #c do 
table.insert(dft, c[i].Name) 
end 
end

function Randomize()
GetPlayers()
local d = math.random(1, #dft) 
local s = d  
local rndm = game.Players:FindFirstChild(dft[s])
if (rndm ~= nil) then 
local Player = rndm.Character:Clone()
		Player:SetPrimaryPartCFrame(CFrame.new(root.Position.x+math.random(-10,10), root.Position.y, root.Position.z+math.random(-10,10)))
		local ChatService = game:GetService("Chat")
		ChatService:Chat(Player.Head, "LOL LOOK AT THAT GIRL")
end
end

function createsound(id,pitch,volume,parent)
	coroutine.resume(coroutine.create(function()
	local sound = Instance.new("Sound",parent)
	sound.SoundId = "rbxassetid://"..id
	sound.PlaybackSpeed = pitch
	sound.Volume = volume
	sound:Play()
	repeat
	game:GetService("RunService").Heartbeat:Wait()	
	until sound.Playing == false
	sound:Destroy()	
	end))
end

function spawnlittlewave(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=169412804"
	for i = 0,3,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(0.6,0.1,0.6)		
	end	
	part:Destroy()	
	end))
end

function GetDudesTorso(c)
local torsy = (c:findFirstChild("Torso") or c:findFirstChild("UpperTorso"))
if torsy ~= nil then
return torsy
end
end

function CamShake(par,magni,env,dur)
print("ok")
end

function spawnwave(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=169412804"
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(0.8,0.1,0.8)		
	end	
	part:Destroy()	
	end))
end

function IsAHumanoid(Part)
	if Part:FindFirstAncestorWhichIsA("Model") then
		if Part:FindFirstAncestorWhichIsA("Model"):FindFirstChildOfClass("Humanoid") then
			return Part:FindFirstAncestorWhichIsA("Model")
		else
			return nil
		end
	else
		return nil
	end
end

function CreateHitBox(Cframe, Size, DebrisTime)
	local HB = Instance.new("Part")
	HB.Orientation = Vector3.new(0, 90, 0)
	HB.CanCollide = false
	HB.Massless = true
	HB.Size = Size
	HB.CFrame = Cframe
	HB.BrickColor = BrickColor.new("Really red")
	HB.Transparency = 1
	HB.Parent = baconhair
	local AnchoredV1 = Instance.new("BodyVelocity")
	AnchoredV1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV1.Parent = HB
	AnchoredV1.P = 3e9
	AnchoredV1.Velocity = Vector3.new(Cframe)
	local AnchoredV2 = Instance.new("BodyPosition")
	AnchoredV2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	AnchoredV2.Parent = HB
	AnchoredV2.Position = Vector3.new(Cframe)
	AnchoredV2.P = 3e9
	AnchoredV2.D = 3e9
	HB.Touched:Connect(function(Toucher)
		if IsAHumanoid(Toucher) and IsAHumanoid(Toucher) ~= ch and IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid").Health > 0 then
			HB:Destroy()
			local Humanoid = IsAHumanoid(Toucher):FindFirstChildOfClass("Humanoid")
			local HitTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
			Humanoid:TakeDamage(math.huge)
			end
	end)
	game:GetService("Debris"):AddItem(HB, DebrisTime)
	return HB
end

function spawnstuntwave(pos,trans)
	coroutine.resume(coroutine.create(function()
		local part = Instance.new("Part",workspace)
		part.Name = "STUNTWAVE"
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
		wavemesh.MeshId = "http://www.roblox.com/asset/?id=169412804"
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
			wavemesh.Scale = wavemesh.Scale + Vector3.new(1.2,0.1,1.2)
			part.Size = part.Size + Vector3.new(1.2,1,1.2)
		end	
		wait()
	part:Destroy()	
	end))
end

function spawnwave2(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=169412804"
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(10,1,10)		
	end	
	part:Destroy()	
	end))
end

function spawncircle(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=2425219842"
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(0.8,1,0.8)		
	end	
	part:Destroy()	
	end))
end

function spawncylinder(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
part.Material = Enum.Material.Neon
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=495043301"
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(0.6,1000,0.6)		
	end	
	part:Destroy()	
	end))
end


function spawnkillingwave(pos,trans)
	coroutine.resume(coroutine.create(function()
	local part = Instance.new("Part",workspace)
	part.Locked = true
	part.BrickColor = BrickColor.new("White")
	part.CanCollide = false
	part.Anchored = true
	part.Transparency = trans
	part.CFrame = pos
	local wavemesh = Instance.new("SpecialMesh",part)
	wavemesh.MeshId = "http://www.roblox.com/asset/?id=169412804"
	part.Touched:Connect(function(hit)
	if hit.Parent ~= ch and hit.Parent:FindFirstChildOfClass("Humanoid") then
		hit.Parent:BreakJoints()
	end		
	end)
	for i = 0,8,0.3 do
	game:GetService("RunService").Heartbeat:Wait()
	wavemesh.Scale = wavemesh.Scale + Vector3.new(0.8,1,0.8)		
	part.Size = part.Size + Vector3.new(0.8,1,0.8)	
	end	
	part:Destroy()	
	end))
end

function GetPartsInArea(PropertyTable,IgnoreCharacter,Raw)
	local Table = {}
	local Area = Instance.new("Part",root)
	Area.CFrame = PropertyTable.CFrame or root.CFrame
	Area.Size = PropertyTable.Size or Vector3.new(3,3,3)
	Area.Anchored = true
	Area.CanCollide = false
	Area.Transparency = 1
	local hit = {}
	if PropertyTable.Region == true then
		Area.CFrame = CFrame.new(PropertyTable.CFrame.p)
		local __ = Region3.new(Area.Position-(Area.Size/2),Area.Position+(Area.Size/2))
		hit = workspace:FindPartsInRegion3(__,root,math.huge)
	elseif PropertyTable.Magnitude == true then
		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and (v.Position - Area.Position).Magnitude < (PropertyTable.Range or 30) then
				table.insert(hit,v)
			end
		end
	else
		local __ = Area.Touched:Connect(function() end)
		hit = Area:GetTouchingParts()
		__:Disconnect()
	end
	for _,v in pairs(hit) do
		if v.Parent and (not v:IsDescendantOf(ch) or IgnoreCharacter == false) then
			if not Raw then
				if v.Parent and not CheckIfInTable(Table,v.Parent) and v.Parent:FindFirstChildOfClass("Humanoid") then
					table.insert(Table,v.Parent)
				end
			else
				table.insert(Table,v)
			end
		end
	end
	Area:Destroy()
	return Table
end

-- Attacks 

function animtemplate()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end

function intro()
	attack = true
	root.Anchored = true
bacon1:SetPrimaryPartCFrame(root.CFrame*CFrame.new(0,0,10))
bacon1:SetPrimaryPartCFrame(CFrame.new(bacon1:GetPrimaryPartCFrame().p,root.CFrame.p))
bacon2:SetPrimaryPartCFrame(root.CFrame*CFrame.new(10,0,5))
bacon2:SetPrimaryPartCFrame(CFrame.new(bacon2:GetPrimaryPartCFrame().p,root.CFrame.p))
bacon3:SetPrimaryPartCFrame(root.CFrame*CFrame.new(-10,0,5))
bacon3:SetPrimaryPartCFrame(CFrame.new(bacon3:GetPrimaryPartCFrame().p,root.CFrame.p))
bacon4:SetPrimaryPartCFrame(root.CFrame*CFrame.new(10,0,-5))
bacon4:SetPrimaryPartCFrame(CFrame.new(bacon4:GetPrimaryPartCFrame().p,root.CFrame.p))
bacon5:SetPrimaryPartCFrame(root.CFrame*CFrame.new(-10,0,-5))
bacon5:SetPrimaryPartCFrame(CFrame.new(bacon5:GetPrimaryPartCFrame().p,root.CFrame.p))
	for i = 0,5,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.3)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.7,0)*CFrame.Angles(math.rad(-31.3),math.rad(-4.54),math.rad(0.53)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.2,-1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	end
wait(2)
fire1.Position = bacon1.Torso.Position
fire2.Position = bacon2.Torso.Position
fire3.Position = bacon3.Torso.Position
fire4.Position = bacon4.Torso.Position
	fire5.Position = bacon5.Torso.Position
	
spawn(function()
for i = 1,100 do
bacon1:SetPrimaryPartCFrame(bacon1:GetPrimaryPartCFrame()*CFrame.new(0,0.1,0))
bacon2:SetPrimaryPartCFrame(bacon2:GetPrimaryPartCFrame()*CFrame.new(0,0.1,0))
bacon3:SetPrimaryPartCFrame(bacon3:GetPrimaryPartCFrame()*CFrame.new(0,0.1,0))
bacon4:SetPrimaryPartCFrame(bacon4:GetPrimaryPartCFrame()*CFrame.new(0,0.1,0))
bacon5:SetPrimaryPartCFrame(bacon5:GetPrimaryPartCFrame()*CFrame.new(0,0.1,0))
wait(0.005)
end
end)
createsound(427025525,1,4,ch)
spawn(function()
for i = 1,10 do
for i,v in pairs(bacon1:GetChildren()) do if v:IsA("Part") then v.Transparency = bacon1.Torso.Transparency+0.1 end bacon1.Head.face.Transparency =bacon1.Head.face.Transparency+0.1 end
for i,v in pairs(bacon2:GetChildren()) do if v:IsA("Part") then v.Transparency = bacon1.Torso.Transparency+0.1   end bacon2.Head.face.Transparency =bacon1.Head.face.Transparency+0.1 end
for i,v in pairs(bacon3:GetChildren()) do if v:IsA("Part") then v.Transparency = bacon1.Torso.Transparency+0.1  end bacon3.Head.face.Transparency =bacon1.Head.face.Transparency+0.1 end
for i,v in pairs(bacon4:GetChildren()) do if v:IsA("Part") then v.Transparency = bacon1.Torso.Transparency+0.1  end bacon4.Head.face.Transparency =bacon1.Head.face.Transparency+0.1 end
for i,v in pairs(bacon5:GetChildren()) do if v:IsA("Part") then v.Transparency = bacon1.Torso.Transparency+0.1 end bacon5.Head.face.Transparency =bacon1.Head.face.Transparency+0.1 end
wait(0.1)
end
	end)
	local fire1weld = Instance.new("Weld",fire1)
	fire1weld.Part0 = fire1
	fire1weld.Part1 = root
	fire1weld.C0 = fire1weld.C0:Lerp(CFrame.new(0,0,-100),0.1)
	local fire2weld = Instance.new("Weld",fire2)
	fire2weld.Part0 = fire2
	fire2weld.Part1 = root
	fire2weld.C0 = fire2weld.C0:Lerp(CFrame.new(100,0,50),0.1)
	local fire3weld = Instance.new("Weld",fire3)
	fire3weld.Part0 = fire3
	fire3weld.Part1 = root
	fire3weld.C0 = fire3weld.C0:Lerp(CFrame.new(-100,0,50),0.1)
	local fire4weld = Instance.new("Weld",fire4)
	fire4weld.Part0 = fire4
	fire4weld.Part1 = root
	fire4weld.C0 = fire4weld.C0:Lerp(CFrame.new(100,0,-50),0.1)
	local fire5weld = Instance.new("Weld",fire5)
	fire5weld.Part0 = fire5
	fire5weld.Part1 = root
	fire5weld.C0 = fire5weld.C0:Lerp(CFrame.new(-100,0,-50),0.1)
	fire1.Anchored = false
	fire2.Anchored = false
	fire3.Anchored = false
	fire4.Anchored = false
	fire5.Anchored = false
	wait(1.2)
	spawn(function()
for i = 0,2,0.1 do
			game:GetService("RunService").Heartbeat:Wait()
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(-75),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(-75),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(0)),0.3)
		lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(0)),0.3)
		end
		end)
	spawn(function()
		for i = 0,1,0.005 do
			game:GetService("RunService").Heartbeat:Wait()
			fire1weld.C0 = fire1weld.C0:Lerp(CFrame.new(0,-10,0),0.017)
			fire2weld.C0 = fire2weld.C0:Lerp(CFrame.new(0,-10,0),0.017)
			fire3weld.C0 = fire3weld.C0:Lerp(CFrame.new(0,-10,0),0.017)
			fire4weld.C0 = fire4weld.C0:Lerp(CFrame.new(0,-10,0),0.017)
			fire5weld.C0 = fire5weld.C0:Lerp(CFrame.new(0,-10,0),0.017)
			torso.C0 = torso.C0:Lerp(CFrame.new(0,10,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(0)),0.05)
			end
	end)
	local sentences = script.BillboardGui:Clone()
	sentences.Enabled = true
	sentences.Parent = ch.Torso
	sentences.TextLabel.Text = "YOU WILL SUFFER.."
	wait(0.5)
	repeat
		sentences.TextLabel.TextTransparency = sentences.TextLabel.TextTransparency+0.05
			wait(0.05)
		until sentences.TextLabel.TextTransparency >= 1
	sentences:Destroy()
	wait(0.5)
	local sentences2 = script.BillboardGui:Clone()
	sentences2.Enabled = true
	sentences2.Parent = ch.Torso
	sentences2.TextLabel.Text = "TO WHAT YOU DID TO BACONS!"
	wait(1)
	sentences2:Destroy()
	effect1.ParticleEmitter.Enabled = true
	effect1.ParticleEmitter1.Enabled = true
	effect1.ParticleEmitter2.Enabled = true
	effect1.ParticleEmitter3.Enabled = true
	effect2.ParticleEmitter.Enabled = true
	effect2.ParticleEmitter1.Enabled = true
	CamShake(root,100,.5,.6)
	spawnwave2(root.CFrame*CFrame.new(0,2,0),0)
fire1:Destroy()fire2:Destroy()fire3:Destroy()fire4:Destroy()fire5:Destroy()
spawncylinder(root.CFrame*CFrame.new(0,2,0),0.2)
createsound(533636230,1,5,ch)
createsound(419447292,1,5,ch)
	attack = false
	canplay = true
	canplaying = true
		root.Anchored = false
end
print(0x14c7ea31b)
function flake()
	attack = true	
	speed = 0
	jpower = 0
	for i = 1,3,0.1 do
		game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(-10),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
	local baconflake = script.baconflake:Clone()
	local aaa = Instance.new("BodyVelocity")
	baconflake.Anchored = false
	baconflake.CFrame = ch["Right Arm"].CFrame
	baconflake.Parent = workspace
	aaa.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	aaa.Velocity = mouse.Hit.p
	aaa.Parent = baconflake
	spawn(function()
wait(0.2)
		baconflake.Touched:Connect(function(h)
			aaa.Velocity = Vector3.new(0,0,0)
		baconflake.BrickColor = BrickColor.new("White")
		if baconflake:FindFirstChild("Decal") then
			baconflake.Decal:Destroy()
			end
		spawn(function()
			for i = 1,50 do
				baconflake.Transparency = baconflake.Transparency+0.05
				wait(0.05)
				end
				baconflake:Destroy()
	end)
		if h.Parent ~= ch and h.Parent:FindFirstChildOfClass("Humanoid") then
			h.Parent:BreakJoint()
			h.Parent:FindFirstChild("Humanoid"):Destroy()
				end
			end)
	end)
	speed = 75
	jpower = 75
	attack = false
end

function taunt()
	attack = true
	jpower = 0	
	speed = 0
	local sentences = script.BillboardGui:Clone()
	sentences.Enabled = true
	sentences.Parent = ch.Head
	sentences.TextLabel.Text = "What's Wrong?..... Scared?"
	spawn(function()
		wait(1)
		repeat
		sentences.TextLabel.TextTransparency = sentences.TextLabel.TextTransparency+0.05
			wait(0.05)
		until sentences.TextLabel.TextTransparency >= 1
	sentences:Destroy()
	end)
	spawn(function()
		wait(0.075)
		local a = Instance.new("Part",baconpiece)
		a.BrickColor = BrickColor.new("Bright orange")
		a.Material = Enum.Material.Neon
		a.Anchored = true
		a.CanCollide = false
		a.Shape = Enum.PartType.Ball
		a.Position = baconpiece.bacon.Position
		a.Size = Vector3.new(1.2,1.2,1.2)
		wait(0.05)
		a.Size = Vector3.new(1.8,1.8,1.8)
		wait(0.05)
		a.Size = Vector3.new(2.4,2.4,2.4)
		wait(0.05)
		a.Size = Vector3.new(1.8,1.8,1.8)
		wait(0.05)
		baconpiece.bacon.Transparency = 0
		a.Size = Vector3.new(1.2,1.2,1.2)
		a:Destroy()
	end)
	spawn(function()
		wait(1.9)
		local a = Instance.new("Part",baconpiece)
		a.BrickColor = BrickColor.new("Bright orange")
		a.Material = Enum.Material.Neon
		a.Anchored = true
		a.CanCollide = false
		a.Shape = Enum.PartType.Ball
		a.Position = baconpiece.bacon.Position
		a.Size = Vector3.new(1.2,1.2,1.2)
		wait(0.05)
		a.Size = Vector3.new(1.8,1.8,1.8)
		wait(0.05)
		a.Size = Vector3.new(2.4,2.4,2.4)
		wait(0.05)
		a.Size = Vector3.new(1.8,1.8,1.8)
		wait(0.05)
		baconpiece.bacon.Transparency = 1
		a.Size = Vector3.new(1.2,1.2,1.2)
		a:Destroy()
	end)
	for i = 0,13,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,5-1*math.cos(sine/64),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0,0.3)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(-120)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(8.3,0.7,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
	jpower = 75
	speed = 75
	attack = false
end

function summonfather()
	FATHERWASUMMONDA = true
	for index, descendant in pairs(baconhair:GetDescendants()) do
		if descendant:IsA("Part") then
			repeat
				descendant.Transparency = descendant.Transparency-0.1
				wait(0.1)
			until descendant.Transparency <= 0
		end
		baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(root.CFrame * CFrame.new(-2.15, 8.3, 2.5), 1)
	end
end

	function FATHERDAY(TargetPart)
		for i = 0,3,0.1 do
			game:GetService("RunService").RenderStepped:Wait()
baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(CFrame.new(TargetPart.Position, ch.Torso.Position) * CFrame.new(0, 0, -3.5))
	baconneck.C0 = baconneck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconroot.C0 = baconroot.C0:Lerp(CFrame.new(0,5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconra.C0 = baconra.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconla.C0 = baconla.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconrl.C0 = baconrl.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconll.C0 = baconll.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)	
		end
	coroutine.resume(coroutine.create(function()
		wait(0.06)
		CreateHitBox(baconhair.PrimaryPart.CFrame * CFrame.new(0, 0, -4), Vector3.new(4.2,3.4,6))
	end))
	for i = 0,3,0.1 do
		game:GetService("RunService").RenderStepped:Wait()
	baconneck.C0 = baconneck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconroot.C0 = baconroot.C0:Lerp(CFrame.new(0,5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconra.C0 = baconra.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconla.C0 = baconla.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconrl.C0 = baconrl.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconll.C0 = baconll.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)	
		end
	for i = 0,1,0.1 do
		game:GetService("RunService").RenderStepped:Wait()
	baconneck.C0 = baconneck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconroot.C0 = baconroot.C0:Lerp(CFrame.new(0,5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	baconra.C0 = baconra.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(10),math.rad(90)),0.3)
	baconla.C0 = baconla.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(-10),math.rad(-90)),0.3)
	baconrl.C0 = baconrl.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	baconll.C0 = baconll.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
		end
end

function despawn()
	FATHERWASUMMONDA = false
	for index, descendant in pairs(baconhair:GetDescendants()) do
		if descendant:IsA("Part") then
			repeat
				descendant.Transparency = descendant.Transparency+0.1
				wait(0.1)
			until descendant.Transparency >= 1
	end
	end
end

function swing()
	attack = true
	blacon.bacon.Transparency = 0
	blacon.bacon.Trail.Enabled = true
	speed = 20
	for i = 0,1,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	blaconweld.C0 = blaconweld.C0:Lerp(CFrame.new(0.2,0.3,11.2)*CFrame.Angles(math.rad(90),math.rad(65),math.rad(0)),0.3)
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0.1,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.9,0.1)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(0),math.rad(-70),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
	touch = blacon.Hitbox.Touched:Connect(function(hit)
		if hit.Parent ~= ch and hit.Parent:FindFirstChildOfClass("Humanoid") then
			createsound(4599382589,1,2,hit)
			CamShake(root,100,.5,.6)
			--exlol.Position = hit.Parent.HumanoidRootPart.Position
			print("negated")
			touch:Disconnect()
		end
	end)
	createsound(3624807031,1,2,blacon.bacon)
	wait(0.2)
	for i = 0,2,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	blaconweld.C0 = blaconweld.C0:Lerp(CFrame.new(0.2,0.4,11.2)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),0.3)
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0.1,0)*CFrame.Angles(math.rad(0),math.rad(30),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.9,0.1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,-0.3)*CFrame.Angles(math.rad(0),math.rad(-75),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	end
	touch:Disconnect()
	speed = 75
	attack = false
	blacon.bacon.Transparency = 1
	blacon.bacon.Trail.Enabled = false
end
function stomp()
	attack = true
	speed = 1
	jpower = 1
	if ch.Head:FindFirstChild("BillBoardGui") then
		ch.Head:FindFirstChild("BillBoardGui"):Destroy()
	end
	local sentences = script.BillboardGui:Clone()
	sentences.Enabled = true
	sentences.Parent = ch.Head
	if stompphrase == 0 then
		sentences.TextLabel.Text = "Stay there."
		stompphrase = math.random(0,1)
	elseif stompphrase == 1 then
		sentences.TextLabel.Text = "Don't get away."
		stompphrase = math.random(0,1)
	end
	spawn(function()
		wait(1)
		repeat
		sentences.TextLabel.TextTransparency = sentences.TextLabel.TextTransparency+0.05
			wait(0.05)
	until sentences.TextLabel.TextTransparency >= 1
		sentences:Destroy()
		end)
	for i = 0,1,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.3)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.4,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(10),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(-10),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.2,-1)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	end
	createsound(180683823,1,4,ch)
	wait(0.2)
	spawnstuntwave(root.CFrame*CFrame.new(0,-2,0),0)
	spawn(function()
		game.Workspace.STUNTWAVE.Touched:Connect(function(h)
			if h.Parent ~= ch and h.Parent:FindFirstChildOfClass("Humanoid") then
				h.Anchored = true
				print(h.Parent)
				wait(3)
				h.Anchored = false
				end
	end)
	end)
	for i = 0,3,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.3)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.7,0)*CFrame.Angles(math.rad(-55),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(10),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(-10),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.5,-0.8)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),0.3)
	end
	attack = false
	speed = 75
	jpower = 75
end

--[[function datractor()
	attack = true
	local hitboxthing = Instance.new("Part",workspace)
	hitboxthing.Size = Vector3.new(45,25,45)
	hitboxthing.Transparency = 1
	hitboxthing.Anchored = true
	hitboxthing.CanCollide = false
	hitboxthing.CFrame = root.CFrame
	spawnwave(root.CFrame*CFrame.new(0,2,0),0.2)
	wait()
	CamShake(root,100,.5,.6)
	hum.Jump = true
	root.Anchored = true
	for i = 0,7,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	root.CFrame = root.CFrame:Lerp(root.CFrame*CFrame.new(0,45,0),0.3)
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-25)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(25)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.5,-1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	end
	local tracktor = Instance.new("Part",ch)
	tracktor.Anchored = false
	tracktor.CanCollide = false
	tracktor.Transparency = 1
	tracktor.Size = Vector3.new(12,12,35)
	local trackmesh = Instance.new("SpecialMesh",tracktor)
	trackmesh.MeshId = "rbxassetid://598113704"
	trackmesh.TextureId = "rbxassetid://598113805"
	trackmesh.Scale = Vector3.new(5,5,5)
	local trackweld = Instance.new("Weld",tracktor)
	trackweld.Part0 = tracktor
	trackweld.Part1 = ch.Head
	trackweld.C0 = CFrame.new(0,-6.5,0)
	local bass = Instance.new("Sound",tracktor)
	bass.SoundId = "rbxasset://sounds//bass.wav"
	bass.Volume = 5
	bass:Play()
	coroutine.wrap(function()
		repeat
		game:GetService("RunService").Heartbeat:Wait()
		tracktor.Transparency = tracktor.Transparency - 0.01	
		until tracktor.Transparency < 0
	end)()
	for i = 0,7,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.5,-1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	end
	local fallinglol = Instance.new("Sound",ch)
	fallinglol.SoundId = "rbxassetid://2258378465"
	fallinglol.Volume = 4
	fallinglol.Looped = true
	fallinglol:Play()
	local fallinglol2 = Instance.new("Sound",ch)
	fallinglol2.SoundId = "rbxassetid://138206037"
	fallinglol2.Volume = 4
	touch = tracktor.Touched:Connect(function(hit)
		if hit.Parent ~= ch then
			touch:Disconnect()
			tracktor.Anchored = true
			trackweld:Destroy()
			tracktor.Parent = workspace
			hitboxthing.CFrame = CFrame.new(root.Position.X,2,root.Position.Z)
		    hitboxthing.Touched:Connect(function(hit)
				if hit.Parent ~= ch and hit.Parent:FindFirstChildOfClass("Humanoid") then
				hit.Parent:BreakJoints()
				end	
			end)
			tracktor.Transparency = 1
			fallinglol:Destroy()
			fallinglol2:Play()
			fallinglol2.TimePosition = 4.6
			local exlol = Instance.new("Explosion",workspace)
			exlol.Position = hitboxthing.Position
			exlol.Visible = false
			CamShake(root,100,.5,.6)
			root.CFrame = root.CFrame*CFrame.new(0,3,0)
			spawnwave(hitboxthing.CFrame,0.2)
			hum.Jump = true
			for i = 0,7,0.1 do
	        game:GetService("RunService").Heartbeat:Wait()
	        neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.random(-999,99),math.random(-999,999),math.random(-999,999)),1)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.5,-1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
			end
			attack = false
			root.CFrame = root.CFrame*CFrame.Angles(0,0,0)
			wait(3)
			fallinglol2:Destroy()
			tracktor:Destroy()
			hitboxthing:Destroy()
		end
	end)
	for i = 0,2,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.5,-1)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	end
	root.Anchored = false
end

function CONSUME()
	attack = true
	speed = 0
	jpower = 0
	for i = 0,1,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.5,0)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.5,0)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
	end
	local touchthing = Instance.new("Part",ch)
	touchthing.Size = Vector3.new(1.3,1,1.3)
	touchthing.CanCollide = false
	touchthing.Anchored = false
	touchthing.Transparency = 1
	local touchweldlol = Instance.new("Weld",touchthing)
	touchweldlol.Part0 = touchthing
	touchweldlol.Part1 = root
	touchweldlol.C0 = CFrame.new(0,0,2)
	touchy = touchthing.Touched:Connect(function(hit)
		if hit.Parent ~= ch and hit.Parent:FindFirstChildOfClass("Humanoid") then
			root.Anchored = true
			grabbed = true
			speed = 0
			jpower = 0
			touchy:Disconnect()
			local grabbedroot = hit.Parent:FindFirstChild("HumanoidRootPart") or hit.Parent:FindFirstChild("Torso")
			local grabbedweld = Instance.new("Weld",grabbedroot)
			grabbedweld.Part0 = grabbedroot
			grabbedweld.Part1 = root
			grabbedweld.C0 = CFrame.new(0,-0.5,-2)*CFrame.Angles(0,math.rad(180),0)
			for i = 0,3,0.1 do
			game:GetService("RunService").Heartbeat:Wait()
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.5)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(0)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(math.rad(100),math.rad(0),math.rad(0)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
			end
			for i = 0,2.5,0.1 do
			game:GetService("RunService").Heartbeat:Wait()
			grabbedweld.C0 = grabbedweld.C0:Lerp(CFrame.new(0,-15,-2)*CFrame.Angles(0,math.rad(180),0),i)
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
			end
			local headmesh = ch.Head:FindFirstChildOfClass("SpecialMesh")
			headmesh.Scale = Vector3.new(8.25,8.25,8.25)
			headmesh.Offset = Vector3.new(0,3.5,0)
			createsound(1080625252,1,8,grabbedroot)
			for i = 0,1,0.1 do
			game:GetService("RunService").Heartbeat:Wait()
			grabbedweld.C0 = grabbedweld.C0:Lerp(CFrame.new(0,-21,-2)*CFrame.Angles(0,0,0),i)
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.5)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-15)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(15)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-75),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.3)
			end
			for i = 0,2,0.1 do
			game:GetService("RunService").Heartbeat:Wait()
			grabbedweld.C0 = grabbedweld.C0:Lerp(CFrame.new(0,-1.25,-3)*CFrame.Angles(0,0,0),i)
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.35,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.5)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-15)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(15)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-75),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),0.3)
			end
			createsound(22593942,1,8,ch.Head)
			wait(0.6)
			hit.Parent:Destroy()
			local headmesh = ch.Head:FindFirstChildOfClass("SpecialMesh")
			headmesh.Scale = Vector3.new(1.25,1.25,1.25)
			headmesh.Offset = Vector3.new(0,0,0)
			for i = 1,3 do
			for i = 0,4,0.3 do
			game:GetService("RunService").Heartbeat:Wait()
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(-15)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(15)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
			end
			for i = 0,4,0.3 do
			game:GetService("RunService").Heartbeat:Wait()
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.2)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(-35)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.2)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(35)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
			end
			end
			createsound(704088758,0.85,1.25,ch)
			CamShake(root,100,.5,.6)
			for i = 0,12,0.3 do
			game:GetService("RunService").Heartbeat:Wait()
			neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	        torso.C0 = torso.C0:Lerp(CFrame.new(0,-0.15,0)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	        rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.2)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(-35)),0.3)
	        ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.2)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(35)),0.3)
	        rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	        lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
			end
			root.Anchored = false
			grabbed = false 
			attack = false
			speed = 75
			jpower = 75
		end
	end)
	for i = 0,2,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.5,-0.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	end
	if grabbed == false then
		touchthing:Destroy()
		attack = false
		speed = 75
		jpower = 75
	end
end]]

local damyth = script.Cursed
damyth.Parent = nil
hand = damyth.Hand
hand2 = damyth.Hand2
hand3 = damyth.Hand3
hand4 = damyth.Hand4
hand5 = damyth.Hand5

ghand = damyth.Hand
ghand2 = damyth.Hand2
ghand3 = damyth.Hand3
ghand4 = damyth.Hand4
ghand5 = damyth.Hand5

function handslol()
	local screams = {1025464252,2723006320,2646809257,167285348,205335029,2672793953,1260179732,1093096537,1946318153,149649817,5169624072,5037672265,1929118107,5163677572,3614962759,314568939,5518521023,1549511350,4611276403,527970724,527276541,1080625252,1080363252,5449308964,626777433,1080610583,3483587416,147758746,565424701,535528169}
    coroutine.resume(coroutine.create(function()
    coroutine.wrap(function()
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("IsRaider") == nil then
	if v:FindFirstChild("OHNOES") == nil then		
	local targerroot = nil
    if v:FindFirstChild("HumanoidRootPart") ~= nil then
    targerroot = v.HumanoidRootPart
    elseif v:FindFirstChild("Torso") then
    targerroot = v.Torso
    end
    local ohnoeslol = Instance.new("BoolValue",v)
	ohnoeslol.Name = "OHNOES"		
	targerroot.Anchored = true		
						hand.Transparency = 0
						ghand.Transparency = 0
    for i = 0.2, 1, 1/60 do 	
    hand.Size = hand.Size:Lerp(targerroot.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand.Transparency = 1
    ghand.Transparency = 1
	targerroot.Anchored = false	
	local weld = Instance.new("Weld",targerroot)
	weld.Part0 = targerroot		
	weld.Part1 = ghand
    for i = 0.2, 1, 1/60 do 	
    hand.Size = hand.Size:Lerp(damyth.Ball.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand.Transparency = 0
    ghand.Transparency = 1
	local screamlol = screams[math.random(1,#screams)]
    local screamlmao = Instance.new("Sound",workspace)
    screamlmao.SoundId = "rbxassetid://"..screamlol
    screamlmao.Volume = 2
    if screamlmao.SoundId == "rbxassetid://626777433" then
    screamlmao.TimePosition = 1.5
    screamlmao.Volume = 0.5
    end
    screamlmao:Play()
    coroutine.wrap(function()
    wait(1.5)
    screamlmao:Destroy()
    end)()
    if v:FindFirstChild("Head") then
	local vheadlol = v:FindFirstChild("Head")
	if vheadlol:FindFirstChild("face") then
	vheadlol:FindFirstChild("face"):Destroy()	
	end					
	end				
	for e,g in pairs(v:GetChildren()) do
    if g:IsA("Accessory") then
	g:Destroy()		
	elseif g:IsA("Part") or g:IsA("MeshPart") then
	g.Transparency = 1						
	end
	end				
			CamShake(root,100,.5,.6)			
	v:BreakJoints()
	createsound(429400881,1,1,workspace)	
    v:Destroy()
	end	
    end
    end
	end)()
	
	coroutine.wrap(function()
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("IsRaider") == nil then
	if v:FindFirstChild("OHNOES") == nil then				
	local targerroot = nil
    if v:FindFirstChild("HumanoidRootPart") ~= nil then
    targerroot = v.HumanoidRootPart
    elseif v:FindFirstChild("Torso") then
    targerroot = v.Torso
    end
    local ohnoeslol = Instance.new("BoolValue",v)
	ohnoeslol.Name = "OHNOES"		
	targerroot.Anchored = true	
    hand2.Transparency = 0
    ghand2.Transparency = 1	
	for i = 0.2, 1, 1/60 do 	
    hand2.Size = hand2.Size:Lerp(targerroot.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
	hand.Transparency = 1
    ghand.Transparency = 0
    targerroot.Anchored = false	
	local weld = Instance.new("Weld",targerroot)
	weld.Part0 = targerroot		
	weld.Part1 = ghand2
	for i = 0.2, 1, 1/60 do 	
    hand2.Size = hand2.Size:Lerp(damyth.Ball.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand2.Transparency = 0
    ghand2.Transparency = 1
	local screamlol = screams[math.random(1,#screams)]
    local screamlmao = Instance.new("Sound",workspace)
    screamlmao.SoundId = "rbxassetid://"..screamlol
    screamlmao.Volume = 2
    if screamlmao.SoundId == "rbxassetid://626777433" then
    screamlmao.TimePosition = 1.5
    screamlmao.Volume = 0.5
    end
    screamlmao:Play()
    coroutine.wrap(function()
    wait(1.5)
    screamlmao:Destroy()
    end)()
    if v:FindFirstChild("Head") then
	local vheadlol = v:FindFirstChild("Head")
	if vheadlol:FindFirstChild("face") then
	vheadlol:FindFirstChild("face"):Destroy()	
	end					
	end				
    for e,g in pairs(v:GetChildren()) do
    if g:IsA("Accessory") then
	g:Destroy()		
	elseif g:IsA("Part") or g:IsA("MeshPart") then
	g.Transparency = 1						
	end
	end								
		CamShake(root,100,.5,.6)				
	v:BreakJoints()
	createsound(264486467,1,8,workspace)	
	v:Destroy()
    end	
    end
    end
	end)()
	
	coroutine.wrap(function()
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("IsRaider") == nil then
	if v:FindFirstChild("OHNOES") == nil then				
	local targerroot = nil
    if v:FindFirstChild("HumanoidRootPart") ~= nil then
    targerroot = v.HumanoidRootPart
    elseif v:FindFirstChild("Torso") then
    targerroot = v.Torso
    end
    local ohnoeslol = Instance.new("BoolValue",v)
	ohnoeslol.Name = "OHNOES"		
	targerroot.Anchored = true		
	hand3.Transparency = 0
    ghand3.Transparency = 1
    for i = 0.2, 1, 1/60 do 	
    hand3.Size = hand3.Size:Lerp(targerroot.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand3.Transparency = 1
    ghand3.Transparency = 0
	targerroot.Anchored = false	
	local weld = Instance.new("Weld",targerroot)
	weld.Part0 = targerroot		
	weld.Part1 = ghand3
	for i = 0.2, 1, 1/60 do 	
    hand3.Size = hand3.Size:Lerp(damyth.Ball.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand3.Transparency = 1
    ghand3.Transparency = 0
	local screamlol = screams[math.random(1,#screams)]
    local screamlmao = Instance.new("Sound",workspace)
    screamlmao.SoundId = "rbxassetid://"..screamlol
    screamlmao.Volume = 2
    if screamlmao.SoundId == "rbxassetid://626777433" then
    screamlmao.TimePosition = 1.5
    screamlmao.Volume = 0.5
    end
    screamlmao:Play()
    coroutine.wrap(function()
    wait(1.5)
    screamlmao:Destroy()
    end)()
    if v:FindFirstChild("Head") then
	local vheadlol = v:FindFirstChild("Head")
	if vheadlol:FindFirstChild("face") then
	vheadlol:FindFirstChild("face"):Destroy()	
	end					
	end				
	for e,g in pairs(v:GetChildren()) do
    if g:IsA("Accessory") then
	g:Destroy()		
	elseif g:IsA("Part") or g:IsA("MeshPart") then
	g.Transparency = 1						
	end
	end								
		CamShake(root,100,.5,.6)				
	v:BreakJoints()
	createsound(429400881,1,1,workspace)	
    v:Destroy()
	end	
    end
    end
	end)()
	
	coroutine.wrap(function()
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("IsRaider") == nil then
	if v:FindFirstChild("OHNOES") == nil then				
	local targerroot = nil
    if v:FindFirstChild("HumanoidRootPart") ~= nil then
    targerroot = v.HumanoidRootPart
    elseif v:FindFirstChild("Torso") then
    targerroot = v.Torso
    end
    local ohnoeslol = Instance.new("BoolValue",v)
	ohnoeslol.Name = "OHNOES"		
	targerroot.Anchored = true		
	hand4.Transparency = 0
    ghand4.Transparency = 1
    for i = 0.2, 1, 1/60 do 	
    hand4.Size = hand4.Size:Lerp(targerroot.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand4.Transparency = 1
    ghand4.Transparency = 0
	targerroot.Anchored = false	
	local weld = Instance.new("Weld",targerroot)
	weld.Part0 = targerroot		
	weld.Part1 = ghand4
	for i = 0.2, 1, 1/60 do 	
    hand4.Size = hand4.Size:Lerp(damyth.Ball.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand4.Transparency = 0
    ghand4.Transparency = 1
	local screamlol = screams[math.random(1,#screams)]
    local screamlmao = Instance.new("Sound",workspace)
    screamlmao.SoundId = "rbxassetid://"..screamlol
    screamlmao.Volume = 2
    if screamlmao.SoundId == "rbxassetid://626777433" then
    screamlmao.TimePosition = 1.5
    screamlmao.Volume = 0.5
    end
    screamlmao:Play()
    coroutine.wrap(function()
    wait(1.5)
    screamlmao:Destroy()
    end)()
    if v:FindFirstChild("Head") then
	local vheadlol = v:FindFirstChild("Head")
	if vheadlol:FindFirstChild("face") then
	vheadlol:FindFirstChild("face"):Destroy()	
	end					
	end				
	for e,g in pairs(v:GetChildren()) do
    if g:IsA("Accessory") then
	g:Destroy()		
	elseif g:IsA("Part") or g:IsA("MeshPart") then
	g.Transparency = 1						
	end
	end				
		CamShake(root,100,.5,.6)				
	v:BreakJoints()
	createsound(264486467,1,8,workspace)
    v:Destroy()	
	end	
    end
    end
	end)()
	
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("IsRaider") == nil then
	if v:FindFirstChild("OHNOES") == nil then				
	local ohnoeslol = Instance.new("BoolValue",v)
	local targerroot = nil
    if v:FindFirstChild("HumanoidRootPart") ~= nil then
    targerroot = v.HumanoidRootPart
    elseif v:FindFirstChild("Torso") then
    targerroot = v.Torso
    end
    local ohnoeslol = Instance.new("BoolValue",v)
	ohnoeslol.Name = "OHNOES"		
	targerroot.Anchored = true		
    hand5.Transparency = 0
    ghand5.Transparency = 1
	for i = 0.2, 1, 1/60 do 	
    hand5.CFrame = hand5.CFrame:Lerp(targerroot.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand5.Transparency = 1
    ghand5.Transparency = 0
	targerroot.Anchored = false	
	local weld = Instance.new("Weld",targerroot)
	weld.Part0 = targerroot		
	weld.Part1 = ghand5
	for i = 0.2, 1, 1/60 do 	
    hand5.CFrame = hand5.CFrame:Lerp(damyth.Ball.CFrame, i)	
    game:GetService("RunService").Heartbeat:Wait()
	end
    hand5.Transparency = 0
    ghand5.Transparency = 1
	local screamlol = screams[math.random(1,#screams)]
    local screamlmao = Instance.new("Sound",workspace)
    screamlmao.SoundId = "rbxassetid://"..screamlol
    screamlmao.Volume = 2
    if screamlmao.SoundId == "rbxassetid://626777433" then
    screamlmao.TimePosition = 1.5
    screamlmao.Volume = 0.5
    end
    screamlmao:Play()
    coroutine.wrap(function()
    wait(0.8)
    screamlmao:Destroy()
    end)()
    if v:FindFirstChild("Head") then
	local vheadlol = v:FindFirstChild("Head")
	if vheadlol:FindFirstChild("face") then
	vheadlol:FindFirstChild("face"):Destroy()	
	end					
	end				
    for e,g in pairs(v:GetChildren()) do
    if g:IsA("Accessory") then
	g:Destroy()		
	elseif g:IsA("Part") or g:IsA("MeshPart") then
	g.Transparency = 1						
	end
	end							
					v:BreakJoints()
					CamShake(root,100,.5,.6)
	createsound(429400881,1,1,workspace)
    v:Destroy()	
	end	
    end
    end
		    wait(0.5)
		
    mythtime = false
    end))
end



function m_y_t_h()
	attack = true
	speed = 0
	jpower = 0
	damyth.Parent = ch
	local sentences = script.BillboardGui:Clone()
	sentences.Enabled = true
	sentences.Parent = ch.Head
	sentences.TextLabel.Text = "Dad never call me SUN for nothing!"
	spawn(function()
		wait(1)
		repeat
		sentences.TextLabel.TextTransparency = sentences.TextLabel.TextTransparency+0.05
			wait(0.05)
		until sentences.TextLabel.TextTransparency >= 1
	sentences:Destroy()
	end)
	for i = 0,1,0.05 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.15)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(35)),0.15)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-35)),0.15)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.18)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.18)
	end
	spawnwave(root.CFrame*CFrame.new(0,2,0),0)
	spawncircle(root.CFrame*CFrame.new(0,2,0),0)
	for i = 0,20,0.05 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.15)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,50,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.05)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(35)),0.15)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-35)),0.15)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.18)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.18)
	end
	coroutine.wrap(function()
    repeat
    game:GetService("RunService").Heartbeat:Wait()
    damyth.Ball.Transparency = damyth.Ball.Transparency - 0.02
    hand.Transparency = hand.Transparency - 0.05
    hand2.Transparency = hand2.Transparency - 0.05
    hand3.Transparency = hand3.Transparency - 0.05
    hand4.Transparency = hand4.Transparency - 0.05
    hand5.Transparency = hand5.Transparency - 0.05
    until damyth.Ball.Transparency < 0
    end)
    local coloreffect = Instance.new("ColorCorrectionEffect",game.Lighting)


    for i = 0,1,0.1 do
	game:GetService("RunService").Heartbeat:Wait()	
	damyth:SetPrimaryPartCFrame(ch.Head.CFrame*CFrame.new(0,0,0))
	end
	for i = 0,6,0.1 do
	game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(35)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.35,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-35)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	end
	local mythlol = Instance.new("Sound",ch)
	mythlol.SoundId = "rbxassetid://2736627515"
	mythlol.Volume = 2
	mythlol:Play()
	handslol()
	repeat 
    game:GetService("RunService").Heartbeat:Wait()
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(-90+math.random(-4,4)),math.rad(0+math.random(-4,4)),math.rad(0+math.random(-4,4))),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.1,0.5,0.5)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-25)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.1,0.5,0.5)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(25)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(25)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),0.3)
	until mythtime == false
	for i,v in pairs(workspace:GetChildren()) do
	game:GetService("RunService").Heartbeat:Wait()
	if v:IsA("Model") and v ~= ch and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("HumanoidRootPart") ~= nil  then
        v:FindFirstChild("HumanoidRootPart").Anchored = false			
	    end		
	end
	coroutine.wrap(function()
    repeat
			    game:GetService("RunService").Heartbeat:Wait()
			damyth.OuterBall.OuterBall.Transparency = damyth.Ball.Transparency + 0.02
    damyth.Ball.Transparency = damyth.Ball.Transparency + 0.02
    hand.Transparency = hand.Transparency + 0.05
    hand2.Transparency = hand2.Transparency + 0.05
    hand3.Transparency = hand3.Transparency + 0.05
    hand4.Transparency = hand4.Transparency + 0.05
    hand5.Transparency = hand5.Transparency + 0.05
    until damyth.Ball.Transparency > 1
    damyth.Parent = nil
    end)
	damyth.Parent = nil
    coroutine.wrap(function()
    repeat 
    game:GetService("RunService").Heartbeat:Wait()
    mythlol.Volume = mythlol.Volume - 0.035
    until mythlol.Volume < 0.1
    mythlol:Destroy()
    end)()
	coroutine.wrap(function()
    coloreffect.Saturation = 0
    for i = 0,5,0.1 do
    game:GetService("RunService").Heartbeat:Wait()	
    coloreffect.TintColor = coloreffect.TintColor:Lerp(Color3.new(1,1,1),i)
    end
    coloreffect:Destroy()
    end)()
 
    attack = false
	speed = 75
	jpower = 75
end

-- Humanoid Events

hum.Running:Connect(function(spd)
	if spd > 0.1 then
		anim = "Walk"
	elseif spd < 0.1 then
		anim = "Idle"	
	end
end)

hum.StateChanged:Connect(function()
	if hum:GetState() == Enum.HumanoidStateType.Freefall then
		anim = "Jump"
		wait(0.4)
		anim = "Fall"
	end
end)

-- UserInput Stuff

userinput.InputBegan:Connect(function(key)
	local k = key.KeyCode
	local k2 = key.UserInputType 
	if k2 == Enum.UserInputType.MouseButton1 and attack == false then
		swing()
	end
	if k == Enum.KeyCode.F and attack == false then
		taunt()
	end
	if k == Enum.KeyCode.V and attack == false then
		Randomize()
	end
	if k == Enum.KeyCode.B and attack == false and FATHERWASUMMONDA == false then
		summonfather()
	elseif k == Enum.KeyCode.B and attack == false and FATHERWASUMMONDA == false then
		despawn()
	end
	if k == Enum.KeyCode.X and attack == false then
		flake()
	end
	if k == Enum.KeyCode.Z and attack == false then
		stomp()
	end
end)


-- Animation

spawn(function()
	while wait(0.4) do
	if FATHERWASUMMONDA then
		local Targets = GetPartsInArea({CFrame = ch.Torso.CFrame, Size = Vector3.new(25, 35, 25), Region = true})
		for Index, Child in next, Targets do
			local Humanoid = Child:FindFirstChildOfClass("Humanoid")
			if Humanoid then
				local CharTorso = Humanoid.Parent:FindFirstChild("Torso") or Humanoid.Parent:FindFirstChild("UpperTorso")
				if CharTorso ~= nil and Humanoid.Health > 0 and (CharTorso.Position-ch.Torso.Position).magnitude < 30 then
					FATHERDAY(CharTorso)
				end
			end
		end
		end
		end
end)

intro()
while true do
	game:GetService("RunService").Heartbeat:Wait()
	sine = sine + change
	hum.WalkSpeed = speed
	hum.JumpPower = jpower
	hum.MaxHealth = math.huge
	hum.Health = math.huge
	hitbox.Position = root.Position
	if anim == "Jump" and attack == false then
		if FATHERWASUMMONDA then
			baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(root.CFrame * CFrame.new(-2.15, 8.3, 2.5), 0.2)
		end
		neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,5-1*math.cos(sine/64),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
	if anim == "Fall" and attack == false then
		if FATHERWASUMMONDA then
			baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(root.CFrame * CFrame.new(-2.15, 8.3, 2.5), 0.2)
		end
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(25),math.rad(0),math.rad(0)),0.3)	
	end
	if anim == "Idle" and attack == false then
		if FATHERWASUMMONDA then
			baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(root.CFrame * CFrame.new(-2.15, 8.3, 2.5), 0.2)
		end
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,5-1*math.cos(sine/64),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(10),math.rad(90)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.2,0.7,0.3)*CFrame.Angles(math.rad(90),math.rad(-10),math.rad(-90)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
	if anim == "Walk" and attack == false then
		if FATHERWASUMMONDA then
			baconhair.PrimaryPart.CFrame = baconhair.PrimaryPart.CFrame:Lerp(root.CFrame * CFrame.new(-2.15, 8.3, 2.5), 0.05)
		end
	neck.C0 = neck.C0:Lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
	torso.C0 = torso.C0:Lerp(CFrame.new(0,2.5-0.5*math.cos(sine/64),0)*CFrame.Angles(math.rad(-35),math.rad(0),math.rad(0)),0.3)
	rs.C0 = rs.C0:Lerp(CFrame.new(1.5,0.7,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),0.3)
	ls.C0 = ls.C0:Lerp(CFrame.new(-1.5,0.7,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),0.3)
	rh.C0 = rh.C0:Lerp(CFrame.new(0.5,-0.4,-0.5)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)
	lh.C0 = lh.C0:Lerp(CFrame.new(-0.5,-0.9,-0.15)*CFrame.Angles(math.rad(-25),math.rad(0),math.rad(0)),0.3)	
	end
end
end))
LocalScript1.Name = "SHAKE"
LocalScript1.Parent = Script0
table.insert(cors,sandbox(LocalScript1,function()
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()

game:GetService("RunService").Heartbeat:connect(function(s, p)
tf = tf + s
if tf >= frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe = tick()
else
for i = 1, math.floor(tf / frame) do
print("ok")
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
ArtificialHB.Event:wait()
else
for i = 0, num do
ArtificialHB.Event:wait()
end
end
end

local env = script:WaitForChild("Env").Value
local dur = script:WaitForChild("Dur").Value

for i=0,dur*60 do
swait()
local a = script.Parent:FindFirstChildOfClass("Humanoid")
if a then
a.CameraOffset = Vector3.new(math.random(-(env*10),(env*10))/10,math.random(-(env*10),(env*10))/10,math.random(-(env*10),(env*10))/10)
end
end
local a = script.Parent:FindFirstChildOfClass("Humanoid")
if a then
a.CameraOffset = Vector3.new()
end
script:Destroy()

end))
LocalScript1.Disabled = true
NumberValue2.Name = "Env"
NumberValue2.Parent = LocalScript1
NumberValue3.Name = "Dur"
NumberValue3.Parent = LocalScript1
Accessory4.Name = "Mellow Cowboy"
Accessory4.Parent = Script0
Accessory4.AttachmentPoint = CFrame.new(0, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Accessory4.AttachmentPos = Vector3.new(0, 0.25, 0.25)
Part5.Name = "Handle"
Part5.Parent = Accessory4
Part5.CFrame = CFrame.new(-101.853989, 1217.11023, -15.7340317, 0.707077026, -0.499997914, 0.500044346, -2.16066837e-06, 0.707138002, 0.707075596, -0.707136631, -0.499958038, 0.49999994)
Part5.Orientation = Vector3.new(-45, 45, 0)
Part5.Position = Vector3.new(-101.85398864746094, 1217.1102294921875, -15.734031677246094)
Part5.Rotation = Vector3.new(-54.72999954223633, 30, 35.27000045776367)
Part5.Size = Vector3.new(1, 1, 2)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.CanCollide = false
Part5.Locked = true
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.FormFactor = Enum.FormFactor.Symmetric
Part5.formFactor = Enum.FormFactor.Symmetric
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshId = "http://www.roblox.com/asset/?id=83293901"
SpecialMesh6.Scale = Vector3.new(1, 1.0499999523162842, 1)
SpecialMesh6.VertexColor = Vector3.new(1.2000000476837158, 1.399999976158142, 1.399999976158142)
SpecialMesh6.TextureId = "http://www.roblox.com/asset/?id=83284747"
SpecialMesh6.MeshType = Enum.MeshType.FileMesh
Model7.Name = " "
Model7.Parent = Script0
Model7.PrimaryPart = Part27
Part8.Name = "Torso"
Part8.Parent = Model7
Part8.CFrame = CFrame.new(-88.2555847, 3.02259588, -19.8516159, 0.989244282, 0.0978266001, 0.108746246, -0.055726409, 0.939434052, -0.338168979, -0.135241851, 0.328471661, 0.934781253)
Part8.Orientation = Vector3.new(19.770000457763672, 6.639999866485596, -3.390000104904175)
Part8.Position = Vector3.new(-88.25558471679688, 3.0225958824157715, -19.85161590576172)
Part8.Rotation = Vector3.new(19.889999389648438, 6.239999771118164, -5.650000095367432)
Part8.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part8.Size = Vector3.new(2, 2, 1)
Part8.Anchored = true
Part8.BrickColor = BrickColor.new("Light stone grey")
Part8.CanCollide = false
Part8.LeftParamA = 0
Part8.LeftParamB = 0
Part8.LeftSurface = Enum.SurfaceType.Weld
Part8.RightParamA = 0
Part8.RightParamB = 0
Part8.RightSurface = Enum.SurfaceType.Weld
Part8.brickColor = BrickColor.new("Light stone grey")
Part8.FormFactor = Enum.FormFactor.Symmetric
Part8.formFactor = Enum.FormFactor.Symmetric
Decal9.Name = "roblox"
Decal9.Parent = Part8
Part10.Name = "Right Leg"
Part10.Parent = Model7
Part10.CFrame = CFrame.new(-87.9074402, 1.02812302, -20.1791306, 0.989245653, 0.0547710098, 0.135621369, -0.0557673089, 0.998437464, 0.00355506409, -0.135214746, -0.0110800713, 0.990754366)
Part10.Orientation = Vector3.new(-0.20000000298023224, 7.789999961853027, -3.200000047683716)
Part10.Position = Vector3.new(-87.90744018554688, 1.0281230211257935, -20.17913055419922)
Part10.Rotation = Vector3.new(-0.20999999344348907, 7.789999961853027, -3.1700000762939453)
Part10.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part10.Size = Vector3.new(1, 2, 1)
Part10.Anchored = true
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Light stone grey")
Part10.CanCollide = false
Part10.brickColor = BrickColor.new("Light stone grey")
Part10.FormFactor = Enum.FormFactor.Symmetric
Part10.formFactor = Enum.FormFactor.Symmetric
Part11.Name = "Right Arm"
Part11.Parent = Model7
Part11.CFrame = CFrame.new(-87.4252167, 3.90968204, -20.6173782, -0.122506857, 0.978396714, 0.166530117, 0.886509597, 0.0324385166, 0.461572051, 0.446198463, 0.204176247, -0.87133193)
Part11.Orientation = Vector3.new(-27.489999771118164, 169.17999267578125, 87.9000015258789)
Part11.Position = Vector3.new(-87.42521667480469, 3.909682035446167, -20.61737823486328)
Part11.Rotation = Vector3.new(-152.08999633789062, 9.59000015258789, -97.13999938964844)
Part11.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part11.Size = Vector3.new(1, 2, 1)
Part11.Anchored = true
Part11.BrickColor = BrickColor.new("Light stone grey")
Part11.CanCollide = false
Part11.brickColor = BrickColor.new("Light stone grey")
Part11.FormFactor = Enum.FormFactor.Symmetric
Part11.formFactor = Enum.FormFactor.Symmetric
Part12.Name = "Left Leg"
Part12.Parent = Model7
Part12.CFrame = CFrame.new(-89.0020676, 2.1080029, -21.2388573, 0.989254117, 0.139037967, 0.0452194214, -0.0557306595, 0.644527197, -0.762547612, -0.13516821, 0.7518332, 0.64534986)
Part12.Orientation = Vector3.new(49.689998626708984, 4.010000228881836, -4.940000057220459)
Part12.Position = Vector3.new(-89.00206756591797, 2.1080029010772705, -21.23885726928711)
Part12.Rotation = Vector3.new(49.7599983215332, 2.5899999141693115, -8)
Part12.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part12.Size = Vector3.new(1, 2, 1)
Part12.Anchored = true
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Light stone grey")
Part12.CanCollide = false
Part12.brickColor = BrickColor.new("Light stone grey")
Part12.FormFactor = Enum.FormFactor.Symmetric
Part12.formFactor = Enum.FormFactor.Symmetric
Part13.Name = "Left Arm"
Part13.Parent = Model7
Part13.CFrame = CFrame.new(-89.776535, 3.11576891, -19.9241257, 0.989649475, 0.136161655, 0.0453201048, -0.0537757874, 0.64466691, -0.762569904, -0.13304913, 0.752239823, 0.645316482)
Part13.Orientation = Vector3.new(49.689998626708984, 4.019999980926514, -4.769999980926514)
Part13.Position = Vector3.new(-89.77653503417969, 3.1157689094543457, -19.92412567138672)
Part13.Rotation = Vector3.new(49.7599983215332, 2.5999999046325684, -7.829999923706055)
Part13.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part13.Size = Vector3.new(1, 2, 1)
Part13.Anchored = true
Part13.BrickColor = BrickColor.new("Light stone grey")
Part13.CanCollide = false
Part13.brickColor = BrickColor.new("Light stone grey")
Part13.FormFactor = Enum.FormFactor.Symmetric
Part13.formFactor = Enum.FormFactor.Symmetric
Part14.Name = "Head"
Part14.Parent = Model7
Part14.CFrame = CFrame.new(-88.1458893, 4.44425392, -19.6470413, 0.988494754, -0.0144837666, 0.150559947, -0.0638168156, 0.862532318, 0.501961529, -0.137133107, -0.505794585, 0.851684391)
Part14.Orientation = Vector3.new(-30.1299991607666, 10.029999732971191, -4.230000019073486)
Part14.Position = Vector3.new(-88.14588928222656, 4.444253921508789, -19.64704132080078)
Part14.Rotation = Vector3.new(-30.510000228881836, 8.65999984741211, 0.8399999737739563)
Part14.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part14.Size = Vector3.new(2, 1, 1)
Part14.Anchored = true
Part14.BrickColor = BrickColor.new("Light stone grey")
Part14.CanCollide = false
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Light stone grey")
Part14.FormFactor = Enum.FormFactor.Symmetric
Part14.formFactor = Enum.FormFactor.Symmetric
Decal15.Name = "face"
Decal15.Parent = Part14
Decal15.Texture = "rbxasset://textures/face.png"
SpecialMesh16.Parent = Part14
SpecialMesh16.MeshId = "http://www.roblox.com/asset/?id=83001675"
SpecialMesh16.Scale = Vector3.new(1.25, 1.25, 1.25)
SpecialMesh16.MeshType = Enum.MeshType.FileMesh
Weld17.Name = "HeadWeld"
Weld17.Parent = Part14
Weld17.C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld17.C1 = CFrame.new(0, 0.25, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld17.Part0 = Part14
Weld17.Part1 = Part28
Weld17.part1 = Part28
CharacterMesh18.Name = "Roblox 3.0 Left Arm"
CharacterMesh18.Parent = Model7
CharacterMesh18.BodyPart = Enum.BodyPart.LeftArm
CharacterMesh18.MeshId = 82907977
CharacterMesh19.Name = "Roblox 3.0 Left Leg"
CharacterMesh19.Parent = Model7
CharacterMesh19.BodyPart = Enum.BodyPart.LeftLeg
CharacterMesh19.MeshId = 81487640
CharacterMesh20.Name = "Roblox 3.0 Right Arm"
CharacterMesh20.Parent = Model7
CharacterMesh20.BodyPart = Enum.BodyPart.RightArm
CharacterMesh20.MeshId = 82908019
CharacterMesh21.Name = "Roblox 3.0 Right Leg"
CharacterMesh21.Parent = Model7
CharacterMesh21.BodyPart = Enum.BodyPart.RightLeg
CharacterMesh21.MeshId = 81487710
CharacterMesh22.Name = "Roblox 3.0 torso"
CharacterMesh22.Parent = Model7
CharacterMesh22.BodyPart = Enum.BodyPart.Torso
CharacterMesh22.MeshId = 82907945
BodyColors23.Parent = Model7
BodyColors23.HeadColor = BrickColor.new("Light stone grey")
BodyColors23.HeadColor3 = Color3.new(0.898039, 0.894118, 0.87451)
BodyColors23.LeftArmColor = BrickColor.new("Light stone grey")
BodyColors23.LeftArmColor3 = Color3.new(0.898039, 0.894118, 0.87451)
BodyColors23.LeftLegColor = BrickColor.new("Light stone grey")
BodyColors23.LeftLegColor3 = Color3.new(0.898039, 0.894118, 0.87451)
BodyColors23.RightArmColor = BrickColor.new("Light stone grey")
BodyColors23.RightArmColor3 = Color3.new(0.898039, 0.894118, 0.87451)
BodyColors23.RightLegColor = BrickColor.new("Light stone grey")
BodyColors23.RightLegColor3 = Color3.new(0.898039, 0.894118, 0.87451)
BodyColors23.TorsoColor = BrickColor.new("Light stone grey")
BodyColors23.TorsoColor3 = Color3.new(0.898039, 0.894118, 0.87451)
Pants24.Name = "Pants"
Pants24.Parent = Model7
Pants24.PantsTemplate = "http://www.roblox.com/asset/?id=144076759"
Shirt25.Name = "Shirt"
Shirt25.Parent = Model7
Shirt25.ShirtTemplate = "http://www.roblox.com/asset/?id=144076357"
Humanoid26.Parent = Model7
Humanoid26.LeftLeg = Part12
Humanoid26.NameDisplayDistance = 0
Humanoid26.NameOcclusion = Enum.NameOcclusion.NoOcclusion
Humanoid26.RightLeg = Part10
Humanoid26.Torso = Part8
Part27.Name = "Rootpart"
Part27.Parent = Model7
Part27.CFrame = CFrame.new(-88.2555847, 2.78780389, -19.5614471, 0.989247024, 0.0978172198, 0.108729742, 0.0193472058, 0.649372578, -0.760224283, -0.144969136, 0.754153192, 0.640497386)
Part27.Orientation = Vector3.new(49.47999954223633, 9.630000114440918, 1.7100000381469727)
Part27.Position = Vector3.new(-88.25558471679688, 2.787803888320923, -19.561447143554688)
Part27.Rotation = Vector3.new(49.88999938964844, 6.239999771118164, -5.650000095367432)
Part27.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part27.Transparency = 1
Part27.Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.05000000074505806)
Part27.Anchored = true
Part27.BrickColor = BrickColor.new("Light stone grey")
Part27.CanCollide = false
Part27.LeftParamA = 0
Part27.LeftParamB = 0
Part27.LeftSurface = Enum.SurfaceType.Weld
Part27.RightParamA = 0
Part27.RightParamB = 0
Part27.RightSurface = Enum.SurfaceType.Weld
Part27.brickColor = BrickColor.new("Light stone grey")
Part27.FormFactor = Enum.FormFactor.Symmetric
Part27.formFactor = Enum.FormFactor.Symmetric
Part28.Name = "Handle"
Part28.Parent = Model7
Part28.CFrame = CFrame.new(-88.187149, 4.53439665, -19.9864101, 0.988494754, -0.0144837666, 0.150559947, -0.0638168156, 0.862532318, 0.501961529, -0.137133107, -0.505794585, 0.851684391)
Part28.Orientation = Vector3.new(-30.1299991607666, 10.029999732971191, -4.230000019073486)
Part28.Position = Vector3.new(-88.18714904785156, 4.534396648406982, -19.98641014099121)
Part28.Rotation = Vector3.new(-30.510000228881836, 8.65999984741211, 0.8399999737739563)
Part28.Size = Vector3.new(1, 1, 2)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.CanCollide = false
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.FormFactor = Enum.FormFactor.Symmetric
Part28.formFactor = Enum.FormFactor.Symmetric
SpecialMesh29.Parent = Part28
SpecialMesh29.MeshId = "http://roblox.com/asset/?id=83293901"
SpecialMesh29.Scale = Vector3.new(1, 1.0499999523162842, 1)
SpecialMesh29.VertexColor = Vector3.new(1.2000000476837158, 1.399999976158142, 1.399999976158142)
SpecialMesh29.TextureId = "http://roblox.com/asset/?id=83284747"
SpecialMesh29.MeshType = Enum.MeshType.FileMesh
Model30.Name = "blacon"
Model30.Parent = Script0
Part31.Name = "Hitbox"
Part31.Parent = Model30
Part31.CFrame = CFrame.new(-91.4187927, 69.5497971, -110.497566, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part31.Position = Vector3.new(-91.41879272460938, 69.54979705810547, -110.49756622314453)
Part31.Transparency = 1
Part31.Size = Vector3.new(1.5000005960464478, 0.7099999189376831, 22.35000228881836)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.CanCollide = false
Part31.TopSurface = Enum.SurfaceType.Smooth
Weld32.Parent = Part31
Weld32.Part0 = MeshPart33
Weld32.Part1 = Part31
Weld32.part1 = Part31
MeshPart33.Name = "bacon"
MeshPart33.Parent = Model30
MeshPart33.CFrame = CFrame.new(-91.4187927, 69.5497971, -110.497566, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart33.Position = Vector3.new(-91.41879272460938, 69.54979705810547, -110.49756622314453)
MeshPart33.Transparency = 1
MeshPart33.Size = Vector3.new(1.0712082386016846, 0.05000000074505806, 20.599994659423828)
MeshPart33.CanCollide = false
MeshPart33.Material = Enum.Material.Neon
MeshPart33.TextureID = "rbxassetid://5509388773"
Trail34.Parent = MeshPart33
Trail34.Attachment0 = nil
Trail34.Attachment1 = nil
Trail34.Enabled = false
Trail34.LightInfluence = 1
Trail34.Texture = "rbxassetid://135297924"
Trail34.Lifetime = 0.4000000059604645
Trail34.WidthScale = NumberSequence.new(10,10)
Model35.Name = "effect"
Model35.Parent = Script0
Part36.Parent = Model35
Part36.CFrame = CFrame.new(109.775162, 25.3933277, -106.392586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part36.Position = Vector3.new(109.77516174316406, 25.393327713012695, -106.39258575439453)
Part36.Transparency = 1
Part36.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.11000027507543564)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.CanCollide = false
Part36.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter37.Name = "ParticleEmitter1"
ParticleEmitter37.Parent = Part36
ParticleEmitter37.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter37.Enabled = false
ParticleEmitter37.LightEmission = 5
ParticleEmitter37.LightInfluence = 5
ParticleEmitter37.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter37.Size = NumberSequence.new(2,0)
ParticleEmitter37.Acceleration = Vector3.new(0, 14, 0)
ParticleEmitter37.EmissionDirection = Enum.NormalId.Left
ParticleEmitter37.Lifetime = NumberRange.new(2, 2)
ParticleEmitter37.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter38.Name = "ParticleEmitter2"
ParticleEmitter38.Parent = Part36
ParticleEmitter38.Speed = NumberRange.new(8, 8)
ParticleEmitter38.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter38.Enabled = false
ParticleEmitter38.LightEmission = 5
ParticleEmitter38.LightInfluence = 5
ParticleEmitter38.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter38.Size = NumberSequence.new(2,0)
ParticleEmitter38.Acceleration = Vector3.new(0, 6, 0)
ParticleEmitter38.EmissionDirection = Enum.NormalId.Right
ParticleEmitter38.Lifetime = NumberRange.new(2, 2)
ParticleEmitter38.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter39.Name = "ParticleEmitter3"
ParticleEmitter39.Parent = Part36
ParticleEmitter39.Speed = NumberRange.new(8, 8)
ParticleEmitter39.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter39.Enabled = false
ParticleEmitter39.LightEmission = 5
ParticleEmitter39.LightInfluence = 5
ParticleEmitter39.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter39.Size = NumberSequence.new(2,0)
ParticleEmitter39.Acceleration = Vector3.new(0, 6, 0)
ParticleEmitter39.EmissionDirection = Enum.NormalId.Left
ParticleEmitter39.Lifetime = NumberRange.new(2, 2)
ParticleEmitter39.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter40.Parent = Part36
ParticleEmitter40.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter40.Enabled = false
ParticleEmitter40.LightEmission = 5
ParticleEmitter40.LightInfluence = 5
ParticleEmitter40.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter40.Size = NumberSequence.new(2,0)
ParticleEmitter40.Acceleration = Vector3.new(0, 14, 0)
ParticleEmitter40.EmissionDirection = Enum.NormalId.Right
ParticleEmitter40.Lifetime = NumberRange.new(2, 2)
ParticleEmitter40.RotSpeed = NumberRange.new(360, 360)
Part41.Name = "Part1"
Part41.Parent = Model35
Part41.CFrame = CFrame.new(109.775162, 28.0116367, -106.392586, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part41.Position = Vector3.new(109.77516174316406, 28.01163673400879, -106.39258575439453)
Part41.Transparency = 1
Part41.Size = Vector3.new(0.05000000074505806, 0.05000000074505806, 0.11000027507543564)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.CanCollide = false
Part41.TopSurface = Enum.SurfaceType.Smooth
ParticleEmitter42.Parent = Part41
ParticleEmitter42.Speed = NumberRange.new(12, 12)
ParticleEmitter42.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter42.Enabled = false
ParticleEmitter42.LightEmission = 5
ParticleEmitter42.LightInfluence = 5
ParticleEmitter42.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter42.Size = NumberSequence.new(2,0)
ParticleEmitter42.Acceleration = Vector3.new(0, -8, 0)
ParticleEmitter42.EmissionDirection = Enum.NormalId.Left
ParticleEmitter42.Lifetime = NumberRange.new(1.2000000476837158, 1.2000000476837158)
ParticleEmitter42.RotSpeed = NumberRange.new(360, 360)
ParticleEmitter43.Name = "ParticleEmitter1"
ParticleEmitter43.Parent = Part41
ParticleEmitter43.Speed = NumberRange.new(12, 12)
ParticleEmitter43.Color = ColorSequence.new(Color3.new(1, 0.403922, 0.00392157),Color3.new(1, 0.403922, 0.00392157))
ParticleEmitter43.Enabled = false
ParticleEmitter43.LightEmission = 5
ParticleEmitter43.LightInfluence = 5
ParticleEmitter43.Texture = "http://www.roblox.com/asset/?id=113359694"
ParticleEmitter43.Size = NumberSequence.new(2,0)
ParticleEmitter43.Acceleration = Vector3.new(0, -8, 0)
ParticleEmitter43.EmissionDirection = Enum.NormalId.Right
ParticleEmitter43.Lifetime = NumberRange.new(1.2000000476837158, 1.2000000476837158)
ParticleEmitter43.RotSpeed = NumberRange.new(360, 360)
BillboardGui44.Parent = Script0
BillboardGui44.Enabled = false
BillboardGui44.LightInfluence = 1
BillboardGui44.Size = UDim2.new(0, 400, 0, 50)
BillboardGui44.Active = true
BillboardGui44.ClipsDescendants = true
BillboardGui44.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui44.StudsOffset = Vector3.new(0, 2, 0)
TextLabel45.Parent = BillboardGui44
TextLabel45.Size = UDim2.new(0, 400, 0, 50)
TextLabel45.BackgroundColor = BrickColor.new("Institutional white")
TextLabel45.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel45.BackgroundTransparency = 1
TextLabel45.Font = Enum.Font.GothamSemibold
TextLabel45.FontSize = Enum.FontSize.Size24
TextLabel45.Text = "YOU WILL SUFFER.. TO WHAT YOU DO TO BACONS!"
TextLabel45.TextColor = BrickColor.new("Institutional white")
TextLabel45.TextColor3 = Color3.new(1, 1, 1)
TextLabel45.TextSize = 24
TextLabel45.TextStrokeTransparency = 0
Model46.Name = "baconpiece"
Model46.Parent = Script0
MeshPart47.Name = "bacon"
MeshPart47.Parent = Model46
MeshPart47.CFrame = CFrame.new(-91.6237793, 69.1498032, -101.102592, 1, 0, 0, 0, 1, 0, 0, 0, 1)
MeshPart47.Position = Vector3.new(-91.623779296875, 69.1498031616211, -101.10259246826172)
MeshPart47.Transparency = 1
MeshPart47.Size = Vector3.new(0.6612083315849304, 0.20000046491622925, 1.8099979162216187)
MeshPart47.CanCollide = false
MeshPart47.TextureID = "rbxassetid://5509388773"
Weld48.Parent = MeshPart47
Weld48.C0 = CFrame.new(-256, 10, 256, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld48.C1 = CFrame.new(-179.576218, -0.0998477936, 309.902588, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Weld48.Part1 = MeshPart47
Weld48.part1 = MeshPart47
ScreenGui49.Parent = Script0
ScreenGui49.Enabled = false
ScreenGui49.ResetOnSpawn = false
ScreenGui49.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame50.Parent = ScreenGui49
Frame50.Position = UDim2.new(0.488578677, 0, 0, 0)
Frame50.Size = UDim2.new(0, 403, 0, 597)
Frame50.BackgroundColor = BrickColor.new("Institutional white")
Frame50.BackgroundColor3 = Color3.new(1, 1, 1)
Frame50.BackgroundTransparency = 1
Frame51.Name = "Main"
Frame51.Parent = Frame50
Frame51.Position = UDim2.new(-0.166253105, 0, 0.0100502511, 0)
Frame51.Visible = false
Frame51.Size = UDim2.new(0, 319, 0, 591)
Frame51.BackgroundColor = BrickColor.new("Cocoa")
Frame51.BackgroundColor3 = Color3.new(0.278431, 0.133333, 0)
Frame51.BackgroundTransparency = 0.20000000298023224
Frame51.BorderSizePixel = 0
TextLabel52.Parent = Frame51
TextLabel52.Position = UDim2.new(0.0648134723, 0, 0.0258308891, 0)
TextLabel52.Size = UDim2.new(0, 277, 0, 38)
TextLabel52.BackgroundColor = BrickColor.new("Institutional white")
TextLabel52.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel52.BackgroundTransparency = 1
TextLabel52.Font = Enum.Font.Cartoon
TextLabel52.FontSize = Enum.FontSize.Size32
TextLabel52.Text = "Su Tart's Retribution"
TextLabel52.TextColor = BrickColor.new("Institutional white")
TextLabel52.TextColor3 = Color3.new(1, 1, 1)
TextLabel52.TextSize = 30
TextLabel52.TextStrokeTransparency = 0
TextLabel53.Parent = Frame51
TextLabel53.Position = UDim2.new(0.0648134723, 0, 0.0886663944, 0)
TextLabel53.Size = UDim2.new(0, 277, 0, 38)
TextLabel53.BackgroundColor = BrickColor.new("Institutional white")
TextLabel53.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel53.BackgroundTransparency = 1
TextLabel53.Font = Enum.Font.Cartoon
TextLabel53.FontSize = Enum.FontSize.Size24
TextLabel53.Text = "by Pza12TH"
TextLabel53.TextColor = BrickColor.new("Institutional white")
TextLabel53.TextColor3 = Color3.new(1, 1, 1)
TextLabel53.TextSize = 19
TextLabel53.TextStrokeTransparency = 0
TextLabel54.Parent = Frame51
TextLabel54.Position = UDim2.new(0.0648134723, 0, 0.133559972, 0)
TextLabel54.Size = UDim2.new(0, 277, 0, 20)
TextLabel54.BackgroundColor = BrickColor.new("Institutional white")
TextLabel54.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel54.BackgroundTransparency = 1
TextLabel54.Font = Enum.Font.Cartoon
TextLabel54.FontSize = Enum.FontSize.Size24
TextLabel54.Text = " (Pizza123TH)"
TextLabel54.TextColor = BrickColor.new("Institutional white")
TextLabel54.TextColor3 = Color3.new(1, 1, 1)
TextLabel54.TextSize = 19
TextLabel54.TextStrokeTransparency = 0
TextLabel55.Parent = Frame51
TextLabel55.Position = UDim2.new(0.0648134723, 0, 0.166873112, 0)
TextLabel55.Size = UDim2.new(0, 277, 0, 20)
TextLabel55.BackgroundColor = BrickColor.new("Institutional white")
TextLabel55.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel55.BackgroundTransparency = 1
TextLabel55.Font = Enum.Font.Cartoon
TextLabel55.FontSize = Enum.FontSize.Size24
TextLabel55.Text = "This guy!"
TextLabel55.TextColor = BrickColor.new("Institutional white")
TextLabel55.TextColor3 = Color3.new(1, 1, 1)
TextLabel55.TextSize = 19
TextLabel55.TextStrokeTransparency = 0
TextLabel56.Parent = Frame51
TextLabel56.Position = UDim2.new(0.0648134723, 0, 0.235905528, 0)
TextLabel56.Size = UDim2.new(0, 277, 0, 20)
TextLabel56.BackgroundColor = BrickColor.new("Institutional white")
TextLabel56.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel56.BackgroundTransparency = 1
TextLabel56.Font = Enum.Font.Cartoon
TextLabel56.FontSize = Enum.FontSize.Size24
TextLabel56.Text = "Click - Blacon"
TextLabel56.TextColor = BrickColor.new("Institutional white")
TextLabel56.TextColor3 = Color3.new(1, 1, 1)
TextLabel56.TextSize = 19
TextLabel56.TextStrokeTransparency = 0
TextLabel57.Parent = Frame51
TextLabel57.Position = UDim2.new(0.0648134723, 0, 0.326263934, 0)
TextLabel57.Size = UDim2.new(0, 277, 0, 20)
TextLabel57.BackgroundColor = BrickColor.new("Institutional white")
TextLabel57.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel57.BackgroundTransparency = 1
TextLabel57.Font = Enum.Font.Cartoon
TextLabel57.FontSize = Enum.FontSize.Size24
TextLabel57.Text = "F - Taunt"
TextLabel57.TextColor = BrickColor.new("Institutional white")
TextLabel57.TextColor3 = Color3.new(1, 1, 1)
TextLabel57.TextSize = 19
TextLabel57.TextStrokeTransparency = 0
TextLabel58.Parent = Frame51
TextLabel58.Position = UDim2.new(0.0648134723, 0, 0.415908307, 0)
TextLabel58.Size = UDim2.new(0, 277, 0, 20)
TextLabel58.BackgroundColor = BrickColor.new("Institutional white")
TextLabel58.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel58.BackgroundTransparency = 1
TextLabel58.Font = Enum.Font.Cartoon
TextLabel58.FontSize = Enum.FontSize.Size24
TextLabel58.Text = "Z - Staggering Stomp"
TextLabel58.TextColor = BrickColor.new("Institutional white")
TextLabel58.TextColor3 = Color3.new(1, 1, 1)
TextLabel58.TextSize = 19
TextLabel58.TextStrokeTransparency = 0
TextLabel59.Parent = Frame51
TextLabel59.Position = UDim2.new(0.0648134723, 0, 0.528549016, 0)
TextLabel59.Size = UDim2.new(0, 277, 0, 20)
TextLabel59.BackgroundColor = BrickColor.new("Institutional white")
TextLabel59.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel59.BackgroundTransparency = 1
TextLabel59.Font = Enum.Font.Cartoon
TextLabel59.FontSize = Enum.FontSize.Size24
TextLabel59.Text = "X - Fake Fragementations"
TextLabel59.TextColor = BrickColor.new("Institutional white")
TextLabel59.TextColor3 = Color3.new(1, 1, 1)
TextLabel59.TextSize = 19
TextLabel59.TextStrokeTransparency = 0
TextLabel60.Parent = Frame51
TextLabel60.Position = UDim2.new(0.0648134723, 0, 0.628081799, 0)
TextLabel60.Size = UDim2.new(0, 277, 0, 20)
TextLabel60.BackgroundColor = BrickColor.new("Institutional white")
TextLabel60.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel60.BackgroundTransparency = 1
TextLabel60.Font = Enum.Font.Cartoon
TextLabel60.FontSize = Enum.FontSize.Size24
TextLabel60.Text = "C - Cereal Killer"
TextLabel60.TextColor = BrickColor.new("Institutional white")
TextLabel60.TextColor3 = Color3.new(1, 1, 1)
TextLabel60.TextSize = 19
TextLabel60.TextStrokeTransparency = 0
TextLabel61.Parent = Frame51
TextLabel61.Position = UDim2.new(0.0648134723, 0, 0.732811749, 0)
TextLabel61.Size = UDim2.new(0, 277, 0, 20)
TextLabel61.BackgroundColor = BrickColor.new("Institutional white")
TextLabel61.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel61.BackgroundTransparency = 1
TextLabel61.Font = Enum.Font.Cartoon
TextLabel61.FontSize = Enum.FontSize.Size24
TextLabel61.Text = "V - Kormic Retribution"
TextLabel61.TextColor = BrickColor.new("Institutional white")
TextLabel61.TextColor3 = Color3.new(1, 1, 1)
TextLabel61.TextSize = 19
TextLabel61.TextStrokeTransparency = 0
TextLabel62.Parent = Frame51
TextLabel62.Position = UDim2.new(0.0648134723, 0, 0.939241409, 0)
TextLabel62.Size = UDim2.new(0, 277, 0, 20)
TextLabel62.BackgroundColor = BrickColor.new("Institutional white")
TextLabel62.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel62.BackgroundTransparency = 1
TextLabel62.Font = Enum.Font.Cartoon
TextLabel62.FontSize = Enum.FontSize.Size24
TextLabel62.Text = "N - Nova"
TextLabel62.TextColor = BrickColor.new("Institutional white")
TextLabel62.TextColor3 = Color3.new(1, 1, 1)
TextLabel62.TextSize = 19
TextLabel62.TextStrokeTransparency = 0
TextLabel63.Parent = Frame51
TextLabel63.Position = UDim2.new(0.0648134723, 0, 0.839410722, 0)
TextLabel63.Size = UDim2.new(0, 277, 0, 20)
TextLabel63.BackgroundColor = BrickColor.new("Institutional white")
TextLabel63.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel63.BackgroundTransparency = 1
TextLabel63.Font = Enum.Font.Cartoon
TextLabel63.FontSize = Enum.FontSize.Size24
TextLabel63.Text = "B - Father's Vengeance"
TextLabel63.TextColor = BrickColor.new("Institutional white")
TextLabel63.TextColor3 = Color3.new(1, 1, 1)
TextLabel63.TextSize = 19
TextLabel63.TextStrokeTransparency = 0
TextButton64.Name = "OpenandClose"
TextButton64.Parent = Frame50
TextButton64.Position = UDim2.new(0.625310183, 0, 0.916247904, 0)
TextButton64.Size = UDim2.new(0, 105, 0, 50)
TextButton64.BackgroundColor = BrickColor.new("Cocoa")
TextButton64.BackgroundColor3 = Color3.new(0.278431, 0.133333, 0)
TextButton64.BackgroundTransparency = 0.20000000298023224
TextButton64.BorderSizePixel = 0
TextButton64.Font = Enum.Font.Cartoon
TextButton64.FontSize = Enum.FontSize.Size14
TextButton64.Text = "Close Controls"
TextButton64.TextColor = BrickColor.new("Institutional white")
TextButton64.TextColor3 = Color3.new(1, 1, 1)
TextButton64.TextScaled = true
TextButton64.TextSize = 14
TextButton64.TextStrokeTransparency = 0
TextButton64.TextWrap = true
TextButton64.TextWrapped = true
Script65.Parent = TextButton64
table.insert(cors,sandbox(Script65,function()
local openandclose = script.Parent
local maincontrols = script.Parent.Parent.Main

script.Parent.MouseButton1Click:Connect(function()
	if maincontrols.Visible == true then
		maincontrols.Visible = false
		openandclose.Text = "Open Controls"
	else
		maincontrols.Visible = true
		openandclose.Text = "Close Controls"
	end
end)
end))
Part66.Name = "Fire"
Part66.Parent = Script0
Part66.CFrame = CFrame.new(-1.831882, 73.6132507, -122.037445, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part66.Position = Vector3.new(-1.8318819999694824, 73.61325073242188, -122.03744506835938)
Part66.Color = Color3.new(0.694118, 0.654902, 1)
Part66.Size = Vector3.new(2.1200013160705566, 2.1200013160705566, 2.1200013160705566)
Part66.Anchored = true
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.BrickColor = BrickColor.new("Pastel violet")
Part66.Material = Enum.Material.Neon
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.brickColor = BrickColor.new("Pastel violet")
Part66.Shape = Enum.PartType.Ball
ParticleEmitter67.Name = "Sparkles"
ParticleEmitter67.Parent = Part66
ParticleEmitter67.Speed = NumberRange.new(0, 0)
ParticleEmitter67.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter67.LightEmission = 1
ParticleEmitter67.Texture = "rbxassetid://1084970835"
ParticleEmitter67.ZOffset = 0.0020000000949949026
ParticleEmitter67.Size = NumberSequence.new(0,0.30000001192092896,0)
ParticleEmitter67.Lifetime = NumberRange.new(0.4000000059604645, 0.6000000238418579)
ParticleEmitter67.LockedToPart = true
ParticleEmitter67.Rate = 6
ParticleEmitter68.Name = "Beam"
ParticleEmitter68.Parent = Part66
ParticleEmitter68.Speed = NumberRange.new(4, 4)
ParticleEmitter68.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter68.LightEmission = 1
ParticleEmitter68.Texture = "rbxassetid://867619398"
ParticleEmitter68.Transparency = NumberSequence.new(1,0.800000011920929,1)
ParticleEmitter68.Size = NumberSequence.new(0,0.3725401759147644,0.6670861840248108,0.8965805768966675,1.072447657585144,1.2046884298324585,1.3019747734069824,1.371745228767395,1.42029869556427,1.452890157699585,1.4738247394561768,1.4865529537200928,1.4937652349472046,1.4974868297576904,1.4991728067398071,1.4998022317886353,1.4999735355377197,1.4999991655349731,1.5,1.5)
ParticleEmitter68.Lifetime = NumberRange.new(1, 1)
ParticleEmitter68.LockedToPart = true
ParticleEmitter68.Rate = 12
ParticleEmitter69.Name = "Rays"
ParticleEmitter69.Parent = Part66
ParticleEmitter69.Speed = NumberRange.new(0, 0)
ParticleEmitter69.Rotation = NumberRange.new(-180, 180)
ParticleEmitter69.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter69.LightEmission = 1
ParticleEmitter69.Texture = "rbxassetid://1084975295"
ParticleEmitter69.Transparency = NumberSequence.new(1,0.699999988079071,1)
ParticleEmitter69.ZOffset = -0.0010000000474974513
ParticleEmitter69.Size = NumberSequence.new(3,3)
ParticleEmitter69.Lifetime = NumberRange.new(1, 1)
ParticleEmitter69.LockedToPart = true
ParticleEmitter69.Rate = 4
ParticleEmitter69.RotSpeed = NumberRange.new(60, 60)
ParticleEmitter70.Name = "Glow"
ParticleEmitter70.Parent = Part66
ParticleEmitter70.Speed = NumberRange.new(0, 0)
ParticleEmitter70.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter70.LightEmission = 1
ParticleEmitter70.Texture = "rbxassetid://867619398"
ParticleEmitter70.Transparency = NumberSequence.new(1,0.5,1)
ParticleEmitter70.ZOffset = 0.0020000000949949026
ParticleEmitter70.Size = NumberSequence.new(3,3)
ParticleEmitter70.Lifetime = NumberRange.new(2, 2)
ParticleEmitter70.LockedToPart = true
ParticleEmitter70.Rate = 0.800000011920929
ParticleEmitter71.Name = "Wave"
ParticleEmitter71.Parent = Part66
ParticleEmitter71.Speed = NumberRange.new(0, 0)
ParticleEmitter71.Rotation = NumberRange.new(-180, 180)
ParticleEmitter71.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter71.LightEmission = 1
ParticleEmitter71.Texture = "rbxassetid://1084977655"
ParticleEmitter71.Transparency = NumberSequence.new(0,0,1)
ParticleEmitter71.ZOffset = -0.0010000000474974513
ParticleEmitter71.Size = NumberSequence.new(0.8999999761581421,0.9957756996154785,1.0908238887786865,1.1844227313995361,1.2758612632751465,1.3644450902938843,1.4495011568069458,1.530383586883545,1.606477975845337,1.67720627784729,1.7420315742492676,1.8004611730575562,1.8520514965057373,1.896410584449768,1.9332014322280884,1.9621448516845703,1.9830207824707031,1.9956706762313843,1.999998688697815,2)
ParticleEmitter71.Lifetime = NumberRange.new(1, 1)
ParticleEmitter71.LockedToPart = true
ParticleEmitter71.Rate = 3
ParticleEmitter71.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter72.Name = "Specks"
ParticleEmitter72.Parent = Part66
ParticleEmitter72.Speed = NumberRange.new(1, 2)
ParticleEmitter72.Rotation = NumberRange.new(-180, 180)
ParticleEmitter72.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter72.LightEmission = 1
ParticleEmitter72.Texture = "rbxassetid://1084976679"
ParticleEmitter72.Transparency = NumberSequence.new(1,0,1)
ParticleEmitter72.Size = NumberSequence.new(1.25,1.25)
ParticleEmitter72.Lifetime = NumberRange.new(3.5, 4.5)
ParticleEmitter72.LockedToPart = true
ParticleEmitter72.Rate = 2
ParticleEmitter73.Name = "Sparkles_Beam"
ParticleEmitter73.Parent = Part66
ParticleEmitter73.Speed = NumberRange.new(1, 2)
ParticleEmitter73.Color = ColorSequence.new(Color3.new(0.694118, 0.654902, 1),Color3.new(0.694118, 0.654902, 1))
ParticleEmitter73.LightEmission = 1
ParticleEmitter73.Texture = "rbxassetid://1084970835"
ParticleEmitter73.Transparency = NumberSequence.new(1,0.5,1)
ParticleEmitter73.Size = NumberSequence.new(0.20000000298023224,0.20000000298023224)
ParticleEmitter73.Lifetime = NumberRange.new(4, 4.5)
ParticleEmitter73.LockedToPart = true
ParticleEmitter73.Rate = 2
Part74.Name = "baconflake"
Part74.Parent = Script0
Part74.CFrame = CFrame.new(-79.3693695, 75.7631989, -97.0856705, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part74.Position = Vector3.new(-79.36936950683594, 75.76319885253906, -97.0856704711914)
Part74.Color = Color3.new(1, 0, 0)
Part74.Size = Vector3.new(4, 5, 2)
Part74.Anchored = true
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.BrickColor = BrickColor.new("Really red")
Part74.CanCollide = false
Part74.Material = Enum.Material.Neon
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.brickColor = BrickColor.new("Really red")
Decal75.Parent = Part74
Decal75.Texture = "http://www.roblox.com/asset/?id=469359518"
Model76.Name = "BACONPOWER"
Model76.Parent = Script0
Model76.PrimaryPart = Part80
Part77.Name = "Head"
Part77.Parent = Model76
Part77.CFrame = CFrame.new(49.1310234, 98.2524567, 73.6431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part77.Orientation = Vector3.new(0, 90, 0)
Part77.Position = Vector3.new(49.13102340698242, 98.25245666503906, 73.64311981201172)
Part77.Rotation = Vector3.new(0, 90, 0)
Part77.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part77.Size = Vector3.new(2, 1, 1)
Part77.BrickColor = BrickColor.new("Light stone grey")
Part77.CanCollide = false
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.brickColor = BrickColor.new("Light stone grey")
Part77.FormFactor = Enum.FormFactor.Symmetric
Part77.formFactor = Enum.FormFactor.Symmetric
Decal78.Name = "face"
Decal78.Parent = Part77
Decal78.Texture = "http://www.roblox.com/asset/?id=144080495 "
SpecialMesh79.Parent = Part77
SpecialMesh79.MeshId = "http://www.roblox.com/asset/?id=83001675"
SpecialMesh79.Scale = Vector3.new(1.25, 1.25, 1.25)
SpecialMesh79.MeshType = Enum.MeshType.FileMesh
Part80.Name = "Torso"
Part80.Parent = Model76
Part80.CFrame = CFrame.new(49.1310234, 96.7524567, 73.6431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part80.Orientation = Vector3.new(0, 90, 0)
Part80.Position = Vector3.new(49.13102340698242, 96.75245666503906, 73.64311981201172)
Part80.Rotation = Vector3.new(0, 90, 0)
Part80.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part80.Size = Vector3.new(2, 2, 1)
Part80.BrickColor = BrickColor.new("Bright yellow")
Part80.CanCollide = false
Part80.LeftParamA = 0
Part80.LeftParamB = 0
Part80.LeftSurface = Enum.SurfaceType.Weld
Part80.RightParamA = 0
Part80.RightParamB = 0
Part80.RightSurface = Enum.SurfaceType.Weld
Part80.brickColor = BrickColor.new("Bright yellow")
Part80.FormFactor = Enum.FormFactor.Symmetric
Part80.formFactor = Enum.FormFactor.Symmetric
Decal81.Name = "roblox"
Decal81.Parent = Part80
Motor6D82.Name = "Right Shoulder"
Motor6D82.Parent = Part80
Motor6D82.MaxVelocity = 0.10000000149011612
Motor6D82.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D82.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D82.Part0 = Part80
Motor6D82.Part1 = Part89
Motor6D82.part1 = Part89
Motor6D83.Name = "Left Shoulder"
Motor6D83.Parent = Part80
Motor6D83.MaxVelocity = 0.10000000149011612
Motor6D83.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D83.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D83.Part0 = Part80
Motor6D83.Part1 = Part88
Motor6D83.part1 = Part88
Motor6D84.Name = "Right Hip"
Motor6D84.Parent = Part80
Motor6D84.MaxVelocity = 0.10000000149011612
Motor6D84.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D84.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Motor6D84.Part0 = Part80
Motor6D84.Part1 = Part91
Motor6D84.part1 = Part91
Motor6D85.Name = "Left Hip"
Motor6D85.Parent = Part80
Motor6D85.MaxVelocity = 0.10000000149011612
Motor6D85.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D85.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Motor6D85.Part0 = Part80
Motor6D85.Part1 = Part90
Motor6D85.part1 = Part90
Motor6D86.Name = "Neck"
Motor6D86.Parent = Part80
Motor6D86.MaxVelocity = 0.10000000149011612
Motor6D86.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D86.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Motor6D86.Part0 = Part80
Motor6D86.Part1 = Part77
Motor6D86.part1 = Part77
Motor6D87.Name = "Torso"
Motor6D87.Parent = Part80
Motor6D87.Part0 = Part80
Motor6D87.Part1 = Part80
Motor6D87.part1 = Part80
Part88.Name = "Left Arm"
Part88.Parent = Model76
Part88.CFrame = CFrame.new(49.1310234, 96.7524567, 75.1431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part88.Orientation = Vector3.new(0, 90, 0)
Part88.Position = Vector3.new(49.13102340698242, 96.75245666503906, 75.14311981201172)
Part88.Rotation = Vector3.new(0, 90, 0)
Part88.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part88.Size = Vector3.new(1, 2, 1)
Part88.BrickColor = BrickColor.new("Light stone grey")
Part88.CanCollide = false
Part88.brickColor = BrickColor.new("Light stone grey")
Part88.FormFactor = Enum.FormFactor.Symmetric
Part88.formFactor = Enum.FormFactor.Symmetric
Part89.Name = "Right Arm"
Part89.Parent = Model76
Part89.CFrame = CFrame.new(49.1310234, 96.7524567, 72.1431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part89.Orientation = Vector3.new(0, 90, 0)
Part89.Position = Vector3.new(49.13102340698242, 96.75245666503906, 72.14311981201172)
Part89.Rotation = Vector3.new(0, 90, 0)
Part89.Color = Color3.new(0.898039, 0.894118, 0.87451)
Part89.Size = Vector3.new(1, 2, 1)
Part89.BrickColor = BrickColor.new("Light stone grey")
Part89.CanCollide = false
Part89.brickColor = BrickColor.new("Light stone grey")
Part89.FormFactor = Enum.FormFactor.Symmetric
Part89.formFactor = Enum.FormFactor.Symmetric
Part90.Name = "Left Leg"
Part90.Parent = Model76
Part90.CFrame = CFrame.new(49.1310234, 94.7524567, 74.1431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part90.Orientation = Vector3.new(0, 90, 0)
Part90.Position = Vector3.new(49.13102340698242, 94.75245666503906, 74.14311981201172)
Part90.Rotation = Vector3.new(0, 90, 0)
Part90.Color = Color3.new(0.431373, 0.6, 0.792157)
Part90.Size = Vector3.new(1, 2, 1)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.BrickColor = BrickColor.new("Medium blue")
Part90.CanCollide = false
Part90.brickColor = BrickColor.new("Medium blue")
Part90.FormFactor = Enum.FormFactor.Symmetric
Part90.formFactor = Enum.FormFactor.Symmetric
Part91.Name = "Right Leg"
Part91.Parent = Model76
Part91.CFrame = CFrame.new(49.1310234, 94.7524567, 73.1431198, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part91.Orientation = Vector3.new(0, 90, 0)
Part91.Position = Vector3.new(49.13102340698242, 94.75245666503906, 73.14311981201172)
Part91.Rotation = Vector3.new(0, 90, 0)
Part91.Color = Color3.new(0.431373, 0.6, 0.792157)
Part91.Size = Vector3.new(1, 2, 1)
Part91.BottomSurface = Enum.SurfaceType.Smooth
Part91.BrickColor = BrickColor.new("Medium blue")
Part91.CanCollide = false
Part91.brickColor = BrickColor.new("Medium blue")
Part91.FormFactor = Enum.FormFactor.Symmetric
Part91.formFactor = Enum.FormFactor.Symmetric
Humanoid92.Parent = Model76
Humanoid92.LeftLeg = Part90
Humanoid92.NameOcclusion = Enum.NameOcclusion.NoOcclusion
Humanoid92.RightLeg = Part91
Humanoid92.Torso = Part80
Shirt93.Name = "Shirt"
Shirt93.Parent = Model76
Shirt93.ShirtTemplate = "http://www.roblox.com/asset/?id=144076357"
CharacterMesh94.Parent = Model76
CharacterMesh94.BodyPart = Enum.BodyPart.RightArm
CharacterMesh94.MeshId = 82908019
CharacterMesh95.Parent = Model76
CharacterMesh95.BodyPart = Enum.BodyPart.RightLeg
CharacterMesh95.MeshId = 81487710
Pants96.Name = "Pants"
Pants96.Parent = Model76
Pants96.PantsTemplate = "http://www.roblox.com/asset/?id=144076759"
CharacterMesh97.Parent = Model76
CharacterMesh97.BodyPart = Enum.BodyPart.Torso
CharacterMesh97.MeshId = 82907945
CharacterMesh98.Parent = Model76
CharacterMesh98.BodyPart = Enum.BodyPart.LeftArm
CharacterMesh98.MeshId = 82907977
CharacterMesh99.Parent = Model76
CharacterMesh99.BodyPart = Enum.BodyPart.LeftLeg
CharacterMesh99.MeshId = 81487640
Part100.Name = "Handle"
Part100.Parent = Model76
Part100.CFrame = CFrame.new(49.1310234, 98.2524567, 73.6431198, 0, 0, 1, 0, 1, -0, -1, 0, 0)
Part100.Orientation = Vector3.new(0, 90, 0)
Part100.Position = Vector3.new(49.13102340698242, 98.25245666503906, 73.64311981201172)
Part100.Rotation = Vector3.new(0, 90, 0)
Part100.Size = Vector3.new(1, 1, 2)
Part100.Anchored = true
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.CanCollide = false
Part100.Locked = true
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.FormFactor = Enum.FormFactor.Symmetric
Part100.formFactor = Enum.FormFactor.Symmetric
SpecialMesh101.Parent = Part100
SpecialMesh101.MeshId = "http://www.roblox.com/asset/?id=83293901"
SpecialMesh101.Offset = Vector3.new(0, 0.25, -0.30000001192092896)
SpecialMesh101.Scale = Vector3.new(1, 1.0499999523162842, 1)
SpecialMesh101.VertexColor = Vector3.new(1.2000000476837158, 1.399999976158142, 1.399999976158142)
SpecialMesh101.TextureId = "http://www.roblox.com/asset/?id=83284747"
SpecialMesh101.MeshType = Enum.MeshType.FileMesh
Vector3Value102.Name = "OriginalSize"
Vector3Value102.Parent = Part100
Vector3Value102.Value = Vector3.new(1, 1, 2)
Weld103.Parent = Part100
Weld103.Part0 = Part100
Weld103.Part1 = Part77
Weld103.part1 = Part77
Model104.Name = "Cursed"
Model104.Parent = Script0
Model104.PrimaryPart = MeshPart110
Part105.Name = "Hand"
Part105.Parent = Model104
Part105.CFrame = CFrame.new(-15.743762, 120.642128, -108.262192, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part105.Position = Vector3.new(-15.743762016296387, 120.64212799072266, -108.26219177246094)
Part105.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part105.Transparency = 0.6000000238418579
Part105.Size = Vector3.new(4, 4, 4)
Part105.Anchored = true
Part105.BottomSurface = Enum.SurfaceType.Smooth
Part105.BrickColor = BrickColor.new("Bright yellow")
Part105.Material = Enum.Material.Neon
Part105.TopSurface = Enum.SurfaceType.Smooth
Part105.brickColor = BrickColor.new("Bright yellow")
Part106.Name = "Hand2"
Part106.Parent = Model104
Part106.CFrame = CFrame.new(-11.0480156, 118.096306, -108.835442, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part106.Position = Vector3.new(-11.048015594482422, 118.09630584716797, -108.83544158935547)
Part106.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part106.Transparency = 0.6000000238418579
Part106.Size = Vector3.new(4, 4, 4)
Part106.Anchored = true
Part106.BottomSurface = Enum.SurfaceType.Smooth
Part106.BrickColor = BrickColor.new("Bright yellow")
Part106.Material = Enum.Material.Neon
Part106.TopSurface = Enum.SurfaceType.Smooth
Part106.brickColor = BrickColor.new("Bright yellow")
Part107.Name = "Hand3"
Part107.Parent = Model104
Part107.CFrame = CFrame.new(-15.743762, 115.29454, -106.252312, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part107.Position = Vector3.new(-15.743762016296387, 115.29454040527344, -106.25231170654297)
Part107.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part107.Transparency = 0.6000000238418579
Part107.Size = Vector3.new(4, 4, 4)
Part107.Anchored = true
Part107.BottomSurface = Enum.SurfaceType.Smooth
Part107.BrickColor = BrickColor.new("Bright yellow")
Part107.Material = Enum.Material.Neon
Part107.TopSurface = Enum.SurfaceType.Smooth
Part107.brickColor = BrickColor.new("Bright yellow")
Part108.Name = "Hand4"
Part108.Parent = Model104
Part108.CFrame = CFrame.new(-10.6922855, 115.254875, -106.252312, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part108.Position = Vector3.new(-10.692285537719727, 115.25487518310547, -106.25231170654297)
Part108.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part108.Transparency = 0.6000000238418579
Part108.Size = Vector3.new(4, 4, 4)
Part108.Anchored = true
Part108.BottomSurface = Enum.SurfaceType.Smooth
Part108.BrickColor = BrickColor.new("Bright yellow")
Part108.Material = Enum.Material.Neon
Part108.TopSurface = Enum.SurfaceType.Smooth
Part108.brickColor = BrickColor.new("Bright yellow")
Part109.Name = "Hand5"
Part109.Parent = Model104
Part109.CFrame = CFrame.new(-13.3505516, 111.148804, -106.252312, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part109.Position = Vector3.new(-13.35055160522461, 111.1488037109375, -106.25231170654297)
Part109.Color = Color3.new(0.960784, 0.803922, 0.188235)
Part109.Transparency = 0.6000000238418579
Part109.Size = Vector3.new(4, 4, 4)
Part109.Anchored = true
Part109.BottomSurface = Enum.SurfaceType.Smooth
Part109.BrickColor = BrickColor.new("Bright yellow")
Part109.Material = Enum.Material.Neon
Part109.TopSurface = Enum.SurfaceType.Smooth
Part109.brickColor = BrickColor.new("Bright yellow")
MeshPart110.Name = "Ball"
MeshPart110.Parent = Model104
MeshPart110.CFrame = CFrame.new(-15.1999865, 113.330292, -111.200005, 0.985138178, -0.119705357, 0.123180583, 0.134503126, 0.983645141, -0.119796179, -0.106825739, 0.134583965, 0.985127091)
MeshPart110.Orientation = Vector3.new(6.880000114440918, 7.130000114440918, 7.789999961853027)
MeshPart110.Position = Vector3.new(-15.199986457824707, 113.33029174804688, -111.20000457763672)
MeshPart110.Rotation = Vector3.new(6.929999828338623, 7.079999923706055, 6.929999828338623)
MeshPart110.Size = Vector3.new(24, 24, 24)
MeshPart110.Anchored = true
MeshPart110.Material = Enum.Material.Neon
Script111.Name = "Spin"
Script111.Parent = Model104
table.insert(cors,sandbox(Script111,function()
while true do
	script.Parent.Ball.CFrame = script.Parent.Ball.CFrame * CFrame.fromEulerAnglesXYZ(0.1, 0.1, 0.1)
	script.Parent.OuterBall.OuterBall.CFrame = script.Parent.OuterBall.OuterBall.CFrame * CFrame.fromEulerAnglesXYZ(0.1, 0.1, 0.1)
wait()
end 
end))
Model112.Name = "OuterBall"
Model112.Parent = Model104
Model112.PrimaryPart = MeshPart113
MeshPart113.Name = "OuterBall"
MeshPart113.Parent = Model112
MeshPart113.CFrame = CFrame.new(-15.1999865, 113.330292, -111.200005, 0.985138178, -0.119705357, 0.123180583, 0.134503126, 0.983645141, -0.119796179, -0.106825739, 0.134583965, 0.985127091)
MeshPart113.Orientation = Vector3.new(6.880000114440918, 7.130000114440918, 7.789999961853027)
MeshPart113.Position = Vector3.new(-15.199986457824707, 113.33029174804688, -111.20000457763672)
MeshPart113.Rotation = Vector3.new(6.929999828338623, 7.079999923706055, 6.929999828338623)
MeshPart113.Color = Color3.new(0.960784, 0.803922, 0.188235)
MeshPart113.Transparency = 0.4000000059604645
MeshPart113.Size = Vector3.new(26, 26, 26)
MeshPart113.Anchored = true
MeshPart113.BrickColor = BrickColor.new("Bright yellow")
MeshPart113.Material = Enum.Material.Neon
MeshPart113.brickColor = BrickColor.new("Bright yellow")
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
