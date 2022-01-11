-----------------------------------
--WATCH OUT HERE COMES THE COPPAS--
----------------------------------------------------------------
--By CKbackup (Sugarie Saffron)                               --
--YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw--
--Discord: Sugarie Saffron#4705                               --
----------------------------------------------------------------
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

print([[
--Script Cop--
By CKbackup (Sugarie Saffron)                               
YT: https://www.youtube.com/channel/UC8n9FFz7e6Zo13ob_5F9MJw
Discord: Sugarie Saffron#4705    
--------------------------------
As I've been demoted from my SB
Mod rank in VSB, I don't see the
need to hold this back any longer.

Also, if the anims look weird or
the weapon looks out of place,
it's because it's actually modeled
off a scaled rig with a package.
It looks better with the Boy
package.
--------------------------------
(Keys)
M - Mute/Play Music

Click - Baton Swing
(Hold) Q - Run
Z - Pistol
X - Arrest

P - Move Jail(s)
]])
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
warn("Netless Activated!")
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
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)

wait(1/60)
Effects = { }
local Player = game:service'Players'.localPlayer
local chara = game.Workspace.non
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local Mouse = Player:GetMouse()
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
local RootPart = chara.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary("RbxUtility").Create
Humanoid.WalkSpeed = 16



Humanoid.Animator.Parent = nil
chara.Animate.Parent = nil

local pos = Vector3.new(0,0,-50)

local newMotor = function(part0, part1, c0, c1)
	local w = Create('Motor'){
		Parent = part0,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)


local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
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
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
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


function so(id,par,pit,vol)
  local sou = Instance.new("Sound", par or workspace)
  if par == chara then
    sou.Parent = chara.Torso
  end
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "rbxassetid://" .. id
  sou.PlayOnRemove = true
  sou:Destroy()
end

local mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://345868687"
mus.Looped = true
mus.Volume = 1
mus:Play()

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local PoliceHat = New("Part",chara,"PoliceHat",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(2, 0.400000006, 1),CFrame = CFrame.new(18.3999939, 1.20000005, -23.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local Mesh = New("SpecialMesh",PoliceHat,"Mesh",{Scale = Vector3.new(1.10000002, 1.20000005, 1.10000002),MeshId = "rbxassetid://1028788",TextureId = "rbxassetid://152240477",MeshType = Enum.MeshType.FileMesh,})
local Weld = New("ManualWeld",PoliceHat,"Weld",{Part0 = PoliceHat,Part1 = Head,C1 = CFrame.new(0, 0.700000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
for i, v in pairs(chara:children()) do
if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
v:Destroy()
elseif v.Name == "FakeHeadM" then
v.Ahoge.Mesh.Scale = Vector3.new()
elseif v.Name == "Chest" then
for a, b in pairs(v:children()) do
if b.Name ~= "Tail" then
b.Transparency = 1
end
end
end
end
local sh = Instance.new("Shirt",chara)
local pn = Instance.new("Pants",chara)
sh.ShirtTemplate = "rbxassetid://133284214"
pn.PantsTemplate = "rbxassetid://15224239"


bdefc0 = CFrame.new(.8,-1,0)*CFrame.Angles(math.rad(30),0,0)
gdefc0 = CFrame.new(-.8,-1,0)*CFrame.Angles(math.rad(130),0,0)

local baton = Instance.new("Part",chara)
baton.Name = "Baton"
baton.Size = Vector3.new(.2,.2,3.2)
baton.BrickColor = BrickColor.new("Really black")
baton.CanCollide = false
CFuncs.Mesh.Create("SpecialMesh", baton, "FileMesh", "rbxassetid://11820238", Vector3.new(), Vector3.new(1.5,1.5,1.5))

local bweld = Instance.new("Weld",baton)
bweld.Part0 = Torso
bweld.Part1 = baton
bweld.C0 = bdefc0

local att1 = Instance.new("Attachment",baton)
att1.Position = Vector3.new(-baton.Size.X/2,baton.Size.Y/2,baton.Size.Z/2)
local att2 = Instance.new("Attachment",baton)
att2.Position = Vector3.new(-baton.Size.X/2,-baton.Size.Y/2,-baton.Size.Z/2)
local tr1 = Instance.new("Trail",baton)
tr1.Color = ColorSequence.new(Color3.new(1,1,1))
tr1.Transparency = NumberSequence.new(0,1)
tr1.Lifetime = .5
tr1.Enabled = false
tr1.LightEmission = 1
tr1.Attachment0 = att1
tr1.Attachment1 = att2
local att3 = Instance.new("Attachment",RightLeg)
att3.Position = Vector3.new(0,1,0)
local att4 = Instance.new("Attachment",RightLeg)
att4.Position = Vector3.new(0,-1,0)
local tr2 = Instance.new("Trail",RightLeg)
tr2.Color = ColorSequence.new(Color3.new(1,1,1))
tr2.Transparency = NumberSequence.new(0,1)
tr2.Lifetime = .5
tr2.Enabled = false
tr2.LightEmission = 1
tr2.Attachment0 = att3
tr2.Attachment1 = att4

local gun = Instance.new("Part",chara)
gun.Name = "Gun"
gun.Size = Vector3.new(.2,.2,.2)
gun.BrickColor = BrickColor.new("Really black")
gun.CanCollide = false
CFuncs.Mesh.Create("SpecialMesh", gun, "FileMesh", "rbxassetid://72012879", Vector3.new(), Vector3.new(2,2,2))

local gweld = Instance.new("Weld",gun)
gweld.Part0 = Torso
gweld.Part1 = gun
gweld.C0 = gdefc0

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function mdmg(Part, Magnitude, HitType)
	for _, c in pairs(workspace:GetDescendants()) do
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name and c:FindFirstChild("MagDmgd")==nil then 
				if c.Name ~= chara then
				if c.Name ~= "CKbackup" or c.Name ~= "Nebula_Zorua" or c.Name ~= "Salvo_Starly" then
			local val = Instance.new("BoolValue",c)
			val.Name = 0
			local asd = Instance.new("ParticleEmitter",head)
			asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			asd.LightEmission = .1
			asd.Size = NumberSequence.new(0.2)
			asd.Texture = "rbxassetid://771221224"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 1)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			asd.Transparency = bbb
			asd.Size = aaa
			asd.ZOffset = .9
			asd.Acceleration = Vector3.new(0, -5, 0)
			asd.LockedToPart = false
			asd.EmissionDirection = "Back"
			asd.Lifetime = NumberRange.new(1, 2)
			asd.Rate = 1000
			asd.Rotation = NumberRange.new(-100, 100)
			asd.RotSpeed = NumberRange.new(-100, 100)
			asd.Speed = NumberRange.new(6)
			asd.VelocitySpread = 10000
			asd.Enabled = false
			asd:Emit(20)
			game:service'Debris':AddItem(asd,3)
					--Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
				if HitType == "Blunt" then				
				so(386946017,head,.95,3)
				game:service'Debris':AddItem(val,1)
				elseif HitType == "Shot" then
				so(144884872,head,.9,3)
				game:service'Debris':AddItem(val,.05)	
				end
				local soaa = Instance.new("Sound",c.Head)
				soaa.Volume = .5
				local cho = math.random(1,5)
				if cho == 1 then
				soaa.SoundId = "rbxassetid://111896685"
				elseif cho == 2 then
				soaa.SoundId = "rbxassetid://535528169"
				elseif cho == 3 then
				soaa.SoundId = "rbxassetid://1080363252"
				elseif cho == 4 then
				soaa.SoundId = "rbxassetid://147758746"
				elseif cho == 5 then
				soaa.SoundId = "rbxassetid://626777433"
				soaa.Volume = .2
				soaa.TimePosition = 1
				end
				game:service'Debris':AddItem(soaa,6)
				soaa:Play()
					for i,v in pairs(c:children()) do
					if v:IsA("LocalScript") or v:IsA("Tool") then
					v:Destroy()
					end
					end
					hum.PlatformStand = true
					head.Velocity = RootPart.CFrame.lookVector*50
					head.RotVelocity = Vector3.new(10,0,0)
					chatfunc("Let that be a warning!")
					coroutine.wrap(function()
					swait(5)
					print("e") end)()
				       else
					end
				end
			end
		end
	end
	end
end

--[[FindNearestTorso = function(pos)
	local list = (game.workspace:GetDescendants())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= chara.Name then
			temp = temp2:findFirstChild("Torso")
			human = temp2:FindFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end]]


function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Head.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= chara then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end


--Chat Function--
function chatfunc(text)
coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
swait()
end
swait(30)
for i = 1, 5 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)()
end



EffectModel = Create("Model"){
	Parent = chara,
	Name = "Effects",
}


Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end;
	};

		Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())		
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end;

	};
	
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};


	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end;
	};
	
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end;
	};
	
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top",
			}
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom",
			}
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end;
	};
	
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					do
						do
							li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
							curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
							game.Debris:AddItem(li, 10)
							table.insert(Effects, {
								li,
								"Disappear",
								last
							})
						end
					end
				end
			end
		end
	};

	EffectTemplate = {

	};
}


function smek()
attack = true
bweld.Part0 = RightArm
bweld.C0 = CFrame.new(-.2,-2,.4)*CFrame.Angles(math.rad(90),0,math.rad(180))
Humanoid.WalkSpeed = 40
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, 0.499998987),
CFrame.new(0, 1.49999714, 0, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
CFrame.new(1.6195364, 0.256343663, -3.60019794e-06, 0.939692736, -0.342020124, -8.94069672e-08, 0.342020154, 0.939692676, -4.35416268e-07, 2.08616257e-07, 3.87430191e-07, 1),
CFrame.new(-1.65980804, 0.323206544, 5.72385352e-06, 0.866025329, 0.500000238, -2.98023224e-07, -0.500000179, 0.866025388, -1.34623383e-06, -4.47034836e-07, 1.29640102e-06, 1.00000012),
CFrame.new(0.500001073, -2.00000095, -1.57952309e-06, 0.939692616, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692616),
CFrame.new(-0.499998212, -2.00000095, 1.49011612e-06, 0.766043544, 0, 0.642788708, 0, 1, 0, -0.642788708, 0, 0.766043544),
}, .3, false)
end
Humanoid.WalkSpeed = 2
tr1.Enabled = true
so(536642316,baton,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-0.0116844922, 0, -0.381816059, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
CFrame.new(-0.0728889629, 1.49999714, 0.038963601, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
CFrame.new(1.06065702, 1.09677029, -0.161810428, 0.400286436, 0.242276207, 0.88378346, 0.734158754, -0.661962748, -0.151050553, 0.548435688, 0.709300876, -0.442843854),
CFrame.new(-1.59605861, 0.10887894, 1.11486224e-06, 0.984807909, 0.173648059, -2.23517418e-06, -0.173648059, 0.984807849, 3.82394944e-07, 2.29477882e-06, 1.86264515e-08, 1),
CFrame.new(0.685087919, -1.96527183, 0.0673596561, 0.92541647, -0.163175598, -0.342020869, 0.173647985, 0.984807849, 2.90093368e-07, 0.336824894, -0.0593915246, 0.939692438),
CFrame.new(-0.499999702, -2.00000095, 8.68737698e-06, 0.766045451, 0, 0.642786503, 0, 1, 0, -0.642786503, 0, 0.766045511),
}, .3, false)
end
swait(5)
bweld.Part0 = Torso
bweld.C0 = bdefc0
Humanoid.WalkSpeed = 16
tr1.Enabled = false
attack = false
end

function asmek()
attack = true
--local par
--coroutine.wrap(function()
--repeat swait() par = rayCast(RootPart.Position,Vector3.new(0,-1,0),3,chara) until par~=nil or Torso.Velocity.Y == 0
--tr2.Enabled = false
--attack = false
--end)()
--for i=0,1,.2 do
--swait()
--PlayAnimationFromTable({		
--CFrame.new(0, -0.0460019112, -0.0689063296, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
--CFrame.new(0, 1.52556431, -0.222140759, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
--CFrame.new(1.59158015, 0.575856388, 6.13234874e-07, 0.642787039, -0.766044974, -4.38231467e-07, 0.766045034, 0.642787039, 1.78813934e-07, 1.63912773e-07, -4.39584255e-07, 1.00000012),
--CFrame.new(-1.59158027, 0.575856209, 6.13234988e-07, 0.642787039, 0.766044974, 4.38231467e-07, -0.766045034, 0.642787039, 1.78813934e-07, -1.63912773e-07, -4.39584255e-07, 1.00000012),
--CFrame.new(0.499998927, -1.99999928, 3.81469772e-06, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
--CFrame.new(-0.5, -1.41182017, 0.232474089, 1, 0, 0, 0, 0.642786622, 0.766045392, 0, -0.766045392, 0.642786622),
--}, .3, false)
--end
tr2.Enabled = true
so(536642316,RightLeg,1,1)
for i=0,1.5,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.11843279, 0.00109164417, 1, 0, 0, 0, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414)*CFrame.Angles(math.rad(-360*i),0,0),
CFrame.new(0, 1.36002374, -0.491580963, 1, 0, 0, 0, 0.642787457, 0.766044736, 0, -0.766044736, 0.642787457),
CFrame.new(1.59157825, 0.575854659, 4.30346518e-06, 0.64278698, -0.766045034, -1.0103544e-07, 0.766045094, 0.64278698, -5.36441803e-07, 5.06639481e-07, 2.98023224e-07, 1.00000012),
CFrame.new(-1.59158015, 0.575855613, 2.39611677e-06, 0.64278698, 0.766045034, 1.0103544e-07, -0.766045094, 0.64278698, -5.36441803e-07, -5.06639481e-07, 2.98023224e-07, 1.00000012),
CFrame.new(0.399999022, -1.92074621, -0.716740668, 1, 0, 0, 0, 0.766044736, -0.642787457, 0, 0.642787457, 0.766044736),
CFrame.new(-0.5, -1.41181993, 0.232477784, 1, 0, 0, 0, 0.642787457, 0.766044736, 0, -0.766044736, 0.642787457),
}, .3, false)
if i >= .4 then
mdmg(RightLeg,3.5,"Blunt")
end
end
tr2.Enabled = false
attack = false
end

local shots = 12
zhold = true
function shoot()
attack = true
so(169799883,gun,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.0524868444, 0, -0.0110093001, 0.64278698, 0, 0.766044974, 0, 1, 0, -0.766044974, 0, 0.64278698),
CFrame.new(-0.0421711877, 1.49999738, -0.0331315249, 0.852868021, -0.0612752885, -0.518518507, 0.17364794, 0.969846606, 0.171008661, 0.492404759, -0.235887513, 0.837791562),
CFrame.new(0.611007333, -0.00932076573, -0.639356554, 0.653100669, 0.696805716, -0.296515375, -0.748181939, 0.533255994, -0.394793421, -0.116975725, 0.479687244, 0.869607329),
CFrame.new(-1.29161143, -0.030067116, -0.0939707607, 0.98480773, -0.163176328, 0.0593894422, 0.173647985, 0.925416648, -0.336824149, 1.78813934e-06, 0.342019945, 0.939692736),
CFrame.new(0.499998003, -2.00000095, 3.84449959e-06, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(-0.499998897, -2.00000095, 1.59442425e-06, 0.98480767, 0, 0.173648536, 0, 1, 0, -0.173648536, 0, 0.98480767),
}, .3, false)
end
Humanoid.WalkSpeed = 2
local ref = Instance.new("Part",chara)
ref.Size = Vector3.new(0,0,0)
ref.Anchored = true
ref.CanCollide = false
ref.Transparency = 1
gweld.Part0 = RightArm
gweld.C0 = CFrame.new(.1,-1.5,-.2)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-40))
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301527902, -0.171009317, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984806046, 1.48289788, -0.00301507115, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.9734447, 0.943128467, -1.04116416, 0.76604414, 0.642788053, 0, 0.219846308, -0.262002349, -0.939692736, -0.604023278, 0.719846129, -0.342019886),
CFrame.new(-0.516993761, 0.475136518, -0.924885869, 0, -0.499998987, 0.866025984, 0.939692736, -0.29619813, -0.171009615, 0.342019886, 0.813798308, 0.469845414),
CFrame.new(0.5, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000238, -1.99999905, 5.96046164e-08, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
swait(5)
repeat
so(470245800,gun,1,1)
ref.CFrame = Mouse.Hit
mdmg(ref,3,"Shot")
local hitpt = Instance.new("Part",EffectModel)
hitpt.Size = Vector3.new(0,0,.3)
local bf = Instance.new("BodyVelocity",hitpt)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
game:service'Debris':AddItem(bf,.1)
hitpt.CFrame = gun.CFrame * CFrame.new(0,-.5,.5) * CFrame.Angles(math.rad(90),0,0)
bf.Velocity = Vector3.new(0,5,0) + RootPart.CFrame.rightVector*10
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=94295100"
hitm.TextureId = "http://www.roblox.com/asset/?id=94287792"
hitm.Scale = Vector3.new(3,3,3.5)
coroutine.wrap(function()
swait(120)
for i = 0,1.1 do
swait()
hitpt.Transparency = i
end

end)()
Effects.Block.Create(BrickColor.new("Bright yellow"), gun.CFrame*CFrame.new(0,.6,.3), 0,0,0,1,1,1, 0.05)
shots = shots - 1
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.973445654, 1.13885617, -0.660623372, 0.766044199, 0.642787933, 5.27496837e-08, 0.413175672, -0.492403269, -0.766045034, -0.492404401, 0.586824477, -0.64278698),
CFrame.new(-0.516991675, 0.65931946, -0.711421967, 0, -0.499999166, 0.866025925, 0.766044796, -0.556670487, -0.321393073, 0.642787218, 0.663414717, 0.383021772),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301527902, -0.171009317, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984806046, 1.48289788, -0.00301507115, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.9734447, 0.943128467, -1.04116416, 0.76604414, 0.642788053, 0, 0.219846308, -0.262002349, -0.939692736, -0.604023278, 0.719846129, -0.342019886),
CFrame.new(-0.516993761, 0.475136518, -0.924885869, 0, -0.499998987, 0.866025984, 0.939692736, -0.29619813, -0.171009615, 0.342019886, 0.813798308, 0.469845414),
CFrame.new(0.5, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000238, -1.99999905, 5.96046164e-08, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
if shots == 0 then
so(147323220,gun,1,1)
for i=0,1.3,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.973445654, 1.13885617, -0.660623372, 0.766044199, 0.642787933, 5.27496837e-08, 0.413175672, -0.492403269, -0.766045034, -0.492404401, 0.586824477, -0.64278698),
CFrame.new(-1.29161143, -0.030067116, -0.0939707607, 0.98480773, -0.163176328, 0.0593894422, 0.173647985, 0.925416648, -0.336824149, 1.78813934e-06, 0.342019945, 0.939692736),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
local MagPartt = New("Part",chara,"MagPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000033, 0.399999976, 1),CFrame = CFrame.new(-9.29999638, 0.700002313, -0.200002074, 1, 0, 0, 0, 0, 1, 0, -1, 0),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MagPartt.CFrame = gun.CFrame * CFrame.new(0,-.5,-.5) * CFrame.Angles(0,0,0)
coroutine.wrap(function()
swait(5)
MagPartt.CanCollide = true
swait(120)
for i = 0,1.1 do
swait()
MagPartt.Transparency = i
end
MagPartt:Destroy()
end)()
swait(10)
local MagPart = New("Part",chara,"MagPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(.2,.4,1),CFrame = CFrame.new(-9.29999638, 0.700002313, -0.200002074, 1, 0, 0, 0, 0, 1, 0, -1, 0),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local Weld = New("ManualWeld",MagPart,"Weld",{Part0 = MagPart,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),C1 = CFrame.new(0.200001717, -1.20000005, -0.200000286, 1, 0, 0, 0, 0, 1, 0, -1, 0),})
for i=0,1.4,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.973445654, 1.13885617, -0.660623372, 0.766044199, 0.642787933, 5.27496837e-08, 0.413175672, -0.492403269, -0.766045034, -0.492404401, 0.586824477, -0.64278698),
CFrame.new(-0.516991675, 0.65931946, -0.711421967, 0, -0.499999166, 0.866025925, 0.766044796, -0.556670487, -0.321393073, 0.642787218, 0.663414717, 0.383021772),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
MagPart:Destroy()
swait(5)
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(1.16020393, 0.666379213, -0.905047119, 0.76604414, 0.604023218, 0.219846413, 0.219846308, 0.0751920938, -0.972632408, -0.604023278, 0.793411791, -0.0751917362),
CFrame.new(-0.629211903, 0.930547178, -0.87133497, 0.262002915, -0.642787874, -0.71984607, -0.958213985, -0.262002975, -0.114805877, -0.114805937, 0.71984601, -0.684573948),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
so(506273075,gun,1,1)
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(1.16020393, 0.666379213, -0.905047119, 0.76604414, 0.604023218, 0.219846413, 0.219846308, 0.0751920938, -0.972632408, -0.604023278, 0.793411791, -0.0751917362),
CFrame.new(-0.629361629, 0.793605626, -0.495871037, 0.262002915, -0.642787874, -0.71984607, -0.958213985, -0.262002975, -0.114805877, -0.114805937, 0.71984601, -0.684573948),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301530343, -0.171007201, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984815434, 1.48289728, -0.00301322341, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(1.16020393, 0.666379213, -0.905047119, 0.76604414, 0.604023218, 0.219846413, 0.219846308, 0.0751920938, -0.972632408, -0.604023278, 0.793411791, -0.0751917362),
CFrame.new(-0.629211903, 0.930547178, -0.87133497, 0.262002915, -0.642787874, -0.71984607, -0.958213985, -0.262002975, -0.114805877, -0.114805937, 0.71984601, -0.684573948),
CFrame.new(0.499999523, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000954, -1.99999809, -1.84774399e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
shots = 7
swait(10)
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, -0.0301527902, -0.171009317, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.0984806046, 1.48289788, -0.00301507115, 0.984807849, 0.173648134, -3.13053391e-07, -0.171010122, 0.969846427, -0.173647895, -0.0301533248, 0.171009824, 0.984807849),
CFrame.new(0.9734447, 0.943128467, -1.04116416, 0.76604414, 0.642788053, 0, 0.219846308, -0.262002349, -0.939692736, -0.604023278, 0.719846129, -0.342019886),
CFrame.new(-0.516993761, 0.475136518, -0.924885869, 0, -0.499998987, 0.866025984, 0.939692736, -0.29619813, -0.171009615, 0.342019886, 0.813798308, 0.469845414),
CFrame.new(0.5, -1.72638702, -0.751741886, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.500000238, -1.99999905, 5.96046164e-08, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .3, false)
end
end
until zhold == false
swait(5)
ref:Destroy()
so(211134014,gun,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.0524868444, 0, -0.0110093001, 0.64278698, 0, 0.766044974, 0, 1, 0, -0.766044974, 0, 0.64278698),
CFrame.new(-0.0421711877, 1.49999738, -0.0331315249, 0.852868021, -0.0612752885, -0.518518507, 0.17364794, 0.969846606, 0.171008661, 0.492404759, -0.235887513, 0.837791562),
CFrame.new(0.611007333, -0.00932076573, -0.639356554, 0.653100669, 0.696805716, -0.296515375, -0.748181939, 0.533255994, -0.394793421, -0.116975725, 0.479687244, 0.869607329),
CFrame.new(-1.29161143, -0.030067116, -0.0939707607, 0.98480773, -0.163176328, 0.0593894422, 0.173647985, 0.925416648, -0.336824149, 1.78813934e-06, 0.342019945, 0.939692736),
CFrame.new(0.499998003, -2.00000095, 3.84449959e-06, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(-0.499998897, -2.00000095, 1.59442425e-06, 0.98480767, 0, 0.173648536, 0, 1, 0, -0.173648536, 0, 0.98480767),
}, .3, false)
end
gweld.Part0 = Torso
gweld.C0 = gdefc0
Humanoid.WalkSpeed = 16
attack = false
end

local Jails = Instance.new("Model",chara)
Jails.Name = "Jails"
function arrest()
attack = true
if Mouse.Target~= nil then
local dude = Mouse.Target.Parent
local ply = game:service'Players':GetPlayerFromCharacter(dude)
if dude:FindFirstChildOfClass("Humanoid") then
Humanoid.WalkSpeed = 0
for i,v in pairs(dude:children()) do
if v:IsA("LocalScript") or v:IsA("Tool") then
v:Destroy()
end
end
local haed = dude:FindFirstChild("Head")
local JailCell = New("Model",Jails,"JailCell",{})
local SpawnPart = New("Part",JailCell,"SpawnPart",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(-76.1000137, 3.00000596, -1.99999905, 1, 0, 0, 0, 0, 1, 0, -1, 0),Anchored = true,CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
local removescriptspart = New("Part",JailCell,"removescriptspart",{Transparency = 1,Transparency = 1,Size = Vector3.new(16, 9, 13),CFrame = CFrame.new(-69.5999985, 5.5000062, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(6, 9, 1),CFrame = CFrame.new(-75.0999985, 5.5000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(19, 1, 16),CFrame = CFrame.new(-69.5999985, 0.50000602, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(-68.5999985, 6.0000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(1, 9, 16),CFrame = CFrame.new(-78.5999985, 5.5000062, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-77.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(-69.5999985, 6.0000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.600000024, 1.60000014),CFrame = CFrame.new(-62.3000031, 2.70000601, 0.600000381, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(-61.5, 3.10000563, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(35, 1, 6),CFrame = CFrame.new(-69.5999985, 0.50000602, 12, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 2.50000572, 4.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.400000006, 0.400000006, 0.400000036),CFrame = CFrame.new(-61.2999992, 3.40000558, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 5.5000062, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 16),CFrame = CFrame.new(-85.0999985, 0.50000602, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.600000024, 1.60000014),CFrame = CFrame.new(-65.8999939, 2.10000563, -4.79999924, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 0.200000003, 2.00000024),CFrame = CFrame.new(-62.1000023, 2.30000591, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.19999993, 0.600000024, 0.400000036),CFrame = CFrame.new(-65.1000061, 2.10000563, -4.19999886, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 0.600000143, 0.400000155),CFrame = CFrame.new(-61.3000031, 2.70000529, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.600000024, 1.60000014),CFrame = CFrame.new(-62.3000031, 2.70000505, 2.19999886, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Bright blue"),Material = Enum.Material.Granite,Size = Vector3.new(1.19999981, 0.400000036, 1.20000005),CFrame = CFrame.new(-62.1000023, 2.60000587, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0509804, 0.411765, 0.67451),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.Glass,Reflectance = 1,Size = Vector3.new(2, 2.80000019, 0.200000003),CFrame = CFrame.new(-61.1999969, 5.20000648, 1.40000057, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Metal,Size = Vector3.new(0.599999964, 0.200000033, 0.200000003),CFrame = CFrame.new(-64.5999985, 3.70000505, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.39999998, 1.20000005, 1.39999998),CFrame = CFrame.new(-61.8000031, 1.6000061, 1.39999962, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.19999993, 0.600000024, 0.400000036),CFrame = CFrame.new(-62.9000015, 2.70000601, 1.3999958, 0, 0, -1, 0, 1, 0, 1, 0, 0),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-71.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 0.200000003, 2.00000024),CFrame = CFrame.new(-65.0999985, 1.70000601, -5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.39999998, 0.600000024, 1.39999998),CFrame = CFrame.new(-65.0999985, 1.30000627, -5.29999924, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(-67.5999985, 6.0000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-74.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(-71.5999985, 6.0000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(19, 1, 16),CFrame = CFrame.new(-69.5999985, 10.5000114, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Bright blue"),Material = Enum.Material.Granite,Size = Vector3.new(1.19999981, 0.400000036, 1.20000005),CFrame = CFrame.new(-65.0999985, 2.00000572, -5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0509804, 0.411765, 0.67451),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-72.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-76.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-75.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(3.99999976, 0.400000095, 6),CFrame = CFrame.new(-76.1000137, 2.6000061, -1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(2, 2.40000033, 0.400000155),CFrame = CFrame.new(-65.0999985, 3.00000525, -5.79999924, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.600000024, 1.60000014),CFrame = CFrame.new(-64.3000031, 2.10000491, -4.79999924, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 3),CFrame = CFrame.new(-81.0999985, 0.50000602, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-70.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-73.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(3.99999976, 0.400000036, 8),CFrame = CFrame.new(-76.1000137, 2.20000601, -2, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(1, 9, 16),CFrame = CFrame.new(-60.5999985, 5.5000062, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-77.5999985, 1.50000584, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(-70.5999985, 6.0000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(3.99999976, 0.400000095, 2),CFrame = CFrame.new(-76.1000137, 2.6000061, -5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 4.50000572, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 3.50000572, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 1.50000584, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 7.5000062, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 6.5000062, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 9.50000572, -2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 3, 1),CFrame = CFrame.new(-81.0999985, 2.5000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 3),CFrame = CFrame.new(-81.0999985, 0.50000602, 7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(1, 3, 21),CFrame = CFrame.new(-86.5999985, 2.50000596, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 8.50000572, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(6, 9, 1),CFrame = CFrame.new(-64.0999985, 5.5000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(5, 3, 1),CFrame = CFrame.new(-69.5999985, 2.50000572, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(5, 2, 1),CFrame = CFrame.new(-69.5999985, 9.00000572, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-81.0999985, 10.5000114, -3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-62.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-74.5999985, 1.50000584, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-74.5999985, 1.50000584, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-77.5999985, 1.50000584, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-69.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-66.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-67.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-65.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-68.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-64.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-63.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{BrickColor = BrickColor.new("Smoky grey"),Material = Enum.Material.Metal,Size = Vector3.new(1, 9, 1),CFrame = CFrame.new(-61.5999985, 5.5000062, 8.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.356863, 0.364706, 0.411765),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 6.5000062, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 2.50000572, 4.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 10.5000114, -3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 4.50000572, 2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 3.50000572, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 8.50000572, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 9.50000572, -2.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 16),CFrame = CFrame.new(-54.0999985, 0.50000602, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 3),CFrame = CFrame.new(-58.0999985, 0.50000602, -5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 5.5000062, 1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 3),CFrame = CFrame.new(-58.0999985, 0.50000602, 7.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 7.5000062, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 1, 1),CFrame = CFrame.new(-58.0999985, 1.50000584, 5.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(1, 3, 21),CFrame = CFrame.new(-52.5999985, 2.50000596, 3.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(4, 3, 1),CFrame = CFrame.new(-58.0999985, 2.5000062, -6.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Part = New("Part",JailCell,"Part",{Material = Enum.Material.Concrete,Size = Vector3.new(35, 3, 1),CFrame = CFrame.new(-69.5999985, 2.50000596, 14.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
JailCell:MoveTo(pos)
removescriptspart.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= chara then
for i,v in pairs(hit.Parent:children()) do
if v:IsA("LocalScript") or v:IsA("Tool") then
v:Destroy()
end
end
end
end)
    for _, v in pairs(chara:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        do
          local p = v:clone()
          p.Name = "trail"
          p.Parent = workspace
          p.Transparency = 0.5
          p.Anchored = true
          p.BrickColor = BrickColor.White()
          p.Material = "Neon"
          p.CanCollide = false
		  if v == chara.Head then
		  for a, b in pairs(p:children()) do
		  if b:IsA("Sound") then
		  b:Destroy()
		  end
		  end
		  end
          coroutine.resume(coroutine.create(function()
            for i = 1, 50 do
              swait()
              p.Transparency = i / 50
            end
            p:Destroy()
          end))
        end
      end
      if v.className == "Accessory" then
      end
end
so(1055279036,Torso,1,3)
if haed~=nil then
haed.Anchored = true
Head.CFrame = haed.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(0,math.rad(180),0)
end
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.174721688, 0, -0.147934705, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(3.35276127e-06, 1.44895828, -0.0894558877, 0.939692616, 3.12924385e-07, -0.342020482, 0.0593909845, 0.98480773, 0.163176119, 0.336824477, -0.173648328, 0.925416529),
CFrame.new(1.5, 0.499998093, -0.40000084, 0.939692676, -0.342020601, 0, 0, 0, -1, 0.342020601, 0.939692676, 0),
CFrame.new(-1.52924228, 0.286380947, -3.51718177e-06, 0.939692855, 0.342019916, 2.08616257e-07, -0.342019856, 0.939692736, -1.5155652e-07, -2.08616257e-07, 8.94069672e-08, 1.00000024),
CFrame.new(0.499998987, -2.00000095, -1.14738941e-06, 0.939692676, 0, -0.342020601, 0, 1, 0, 0.342020601, 0, 0.939692676),
CFrame.new(-0.499998212, -2.00000095, 1.90734909e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
}, .3, false)
end
chatfunc("You are under arrest! Now face your sentence!")
swait(50)
				local soaa = Instance.new("Sound",haed)
				soaa.Volume = 1
				local cho = math.random(1,5)
				if cho == 1 then
				soaa.SoundId = "rbxassetid://111896685"
				elseif cho == 2 then
				soaa.SoundId = "rbxassetid://535528169"
				elseif cho == 3 then
				soaa.SoundId = "rbxassetid://1080363252"
				elseif cho == 4 then
				soaa.SoundId = "rbxassetid://147758746"
				elseif cho == 5 then
				soaa.SoundId = "rbxassetid://626777433"
				soaa.Volume = .3
				soaa.TimePosition = 1
				end
				game:service'Debris':AddItem(soaa,6)
				soaa:Play()
if haed~=nil then
haed.Anchored = false
end
Humanoid.WalkSpeed = 16
local jc = JailCell
if ply~=nil then
local p = ply
coroutine.wrap(function()
while true do
swait()
if p~=nil and p.Character ~= nil and p.Character:FindFirstChild("Head") and jc ~= nil then
if (p.Character:FindFirstChild("Head").Position - removescriptspart.Position).magnitude >= 10 then
p.Character:FindFirstChild("Head").CFrame = SpawnPart.CFrame*CFrame.new(0,2,0)
end
elseif p==nil then
jc:Destroy()
break
elseif jc==nil then
break
end
end
end)()
coroutine.wrap(function()
while true do
swait()
if p~=nil and p.Character ~= nil then
for i,v in pairs(p.Character:children()) do
if v:IsA("LocalScript") or v:IsA("Tool") then
if v:IsA("LocalScript") then
v.Disabled = true
end
v:Destroy()
end
end
end
end
end)()
p.CharacterAdded:connect(function()
if p~=nil and p.Character ~= nil and p.Character:FindFirstChild("Head") and jc~=nil then
p.Character:FindFirstChild("Head").CFrame = SpawnPart.CFrame*CFrame.new(0,2,0)
end
end)
elseif ply == nil then
coroutine.wrap(function()
local ch = dude
while true do
swait()
if ch ~= nil and ch:FindFirstChild("Head") and jc~=nil and jc:FindFirstChild("SpawnPart")~=nil then
if (ch:FindFirstChild("Head").Position - removescriptspart.Position).magnitude >= 10 then
ch:FindFirstChild("Head").CFrame = SpawnPart.CFrame*CFrame.new(0,2,0)
end
elseif ch.Parent==nil then
jc:Destroy()
break
elseif jc.Parent==nil then
break
end
end
end)()
end
end
end
attack = false
end


qhold = false
justsprinted = false
function sprint()
attack = true
--print("supurinto?")
--justsprinted = true
--coroutine.wrap(function()
--swait(10)
--justsprinted = false
--end)()
repeat
swait()
PlayAnimationFromTable({		
CFrame.new(-2.4138464e-07, 0.123327732, -0.188363045, 1, -4.38293796e-07, 1.20420327e-06, 0, 0.939692736, 0.342019886, -1.28148622e-06, -0.342019916, 0.939692736) * CFrame.new(0, 0- .08 * math.cos((sine/2.5)), 0),
CFrame.new(0, 1.41422474, 0.0894482136, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, -.6 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 + 60 * math.cos((sine) / 2.5)), 0, 0), 
CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, .6 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 - 60 * math.cos((sine) / 2.5)), 0, 0), 
CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ 1 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 - 60 * math.cos((sine) / 2.5)), 0, 0), 
CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- 1 * math.cos((sine) / 2.5)) * CFrame.Angles(math.rad(0 + 60 * math.cos((sine) / 2.5)), 0, 0), 
}, .3, false)
Humanoid.WalkSpeed = 40
until qhold == false or Torso.Velocity == Vector3.new(0,0,0)
--print'sutoppu'
Humanoid.WalkSpeed = 16
attack = false
end


function movejails()
pos = Mouse.Hit.p
for i,v in pairs(Jails:children()) do
swait(5)
v:MoveTo(pos)
end
end

Mouse.Button1Down:connect(function()
	if attack == false then
	if Anim == "Jump" or Anim == "Fall" then
	asmek()
	else
	smek()
	end
	end
end)

local sprintt = 0


Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k=='m' then
	if mus.IsPlaying == true then
	mus:Stop()
	elseif mus.IsPaused == true then
	mus:Play()
	end
	end
	if attack == false then
	if k == 'q' then
	qhold = true
	sprint()
	elseif k == 'x' then
	arrest()
	elseif k == 'z' then
	zhold = true
	shoot()
	elseif k == 'p' then
	movejails()
	end
	end
end)


Mouse.KeyUp:connect(function(k)
	k = k:lower()
	if k == 'q' then
	qhold = false
	elseif k == 'z' then
	zhold = false
	end
end)


coroutine.wrap(function()
while 1 do
swait()
if doe <= 360 then
	doe = doe + 2
else
	doe = 0
end
end
end)()
while true do
	swait()
	for i, v in pairs(chara:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
while true do
swait()
	if sprintt >= 1 then
	sprintt = sprintt - 1
	end
	
	if Head:FindFirstChild("mus")==nil then
	mus = Instance.new("Sound",Head)
	mus.Name = "mus"
	mus.SoundId = "rbxassetid://345868687"
	mus.Looped = true
	mus.Volume = 1
	mus:Play()
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, chara)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
		PlayAnimationFromTable({
CFrame.new(0, 0.0382082276, -0.0403150208, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(0, 1.46579528, 0.0939689279, 1, 0, 0, 0, 0.939692855, -0.342019796, 0, 0.342019796, 0.939692855),
CFrame.new(1.20945489, -0.213504896, 3.55388607e-07, 0.939692736, 0.342019916, 1.53461215e-07, -0.342019945, 0.939692736, 1.93715096e-07, -8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(-1.20945573, -0.213503733, 5.0439985e-07, 0.939692736, -0.342019916, -1.53461215e-07, 0.342019945, 0.939692736, 1.93715096e-07, 8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(0.5, -1.99739456, -0.0180913229, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.5, -1.30000103, -0.39999947, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
		}, .3, false)
					end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
		PlayAnimationFromTable({
CFrame.new(0, -0.0646628663, 0.0399149321, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0, 1.4913609, -0.128171027, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
CFrame.new(1.55285025, 0.466259956, -9.26282269e-08, 0.766043842, -0.642788351, -6.46188241e-08, 0.642788291, 0.766043961, -7.4505806e-08, 1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(-1.5605253, 0.475036323, -2.10609159e-07, 0.766043842, 0.642788351, 6.46188241e-08, -0.642788291, 0.766043961, -7.4505806e-08, -1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
		}, .3, false)
					end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
CFrame.new(0, 1.49999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0.89930898, -0.180769742, 0.30436784, 0.766043901, 0.642788172, 8.56792951e-07, -0.556670964, 0.663412929, 0.500000715, 0.321393967, -0.383022994, 0.866024971),
CFrame.new(-0.899309754, -0.180769712, 0.304367989, 0.766043901, -0.642788172, -8.56792951e-07, 0.556670964, 0.663412929, 0.500000715, -0.321393967, -0.383022994, 0.866024971),
CFrame.new(0.5, -1.99999893, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
CFrame.new(-0.5, -1.99999893, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
		}, .3, false)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
		PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 3.5), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-2.09923631e-14, 1.48262846, -0.0984891504, 1, -1.42108547e-14, 0, 0, 0.984807491, 0.173649743, 0, -0.173649758, 0.984807491),
CFrame.new(0.89930898, -0.180769742, 0.30436784, 0.766043901, 0.642788172, 8.56792951e-07, -0.556670964, 0.663412929, 0.500000715, 0.321393967, -0.383022994, 0.866024971),
CFrame.new(-0.899309754, -0.180769712, 0.304367989, 0.766043901, -0.642788172, -8.56792951e-07, 0.556670964, 0.663412929, 0.500000715, -0.321393967, -0.383022994, 0.866024971),
CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 5)), 0, 0), 
CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 5)), 0, 0), 
		}, .3, false)
			end
		end
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							else
								if Thing[8] == 2 then
									Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
									if (hit.Parent:FindFirstChildOfClass("Humanoid")) ~= nil or (hit.Parent.Parent:FindFirstChildOfClass("Humanoid")) ~= nil then
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = CFrame.new(pos)
										CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
										game:GetService("Debris"):AddItem(ref, 0.2)
										Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
										Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
										MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
									end
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
								if Thing[1].Transparency <= 1 then
									if Thing[2] == "Block1" then
										Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
										Mesh = Thing[7]
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Block2" then
											Thing[1].CFrame = Thing[1].CFrame
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Elec" then
															Mesh = Thing[10]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															else
																if Thing[2] == "Shatter" then
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
														Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
														Thing[6] = Thing[6] + Thing[5]
																end
															end
														end
													end
												end
											end
										end
									end
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
						end
					end
				end
			end
		end
	end
end
end
