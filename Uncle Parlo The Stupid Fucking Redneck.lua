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
        print("no")
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

loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
print("Made by SezHu for Void's Script Builder. If logged, please do not remove credit.")
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = game.Workspace.non
local Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 50
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local Create = LoadLibrary("RbxUtility").Create
Head.face.Texture = "http://www.roblox.com/asset/?id=948473243"
Humanoid.Health = math.huge
Instance.new("ForceField",Character).Visible = false
hit = nil
oof = false


pants = Instance.new("Pants", Character)
pants.PantsTemplate = "http://www.roblox.com/asset/?id=242242068"
 DHandle = Instance.new("Part")
 DMesh = Instance.new("SpecialMesh")
DWeld = Instance.new("Weld")
DHandle.Parent = Character
DHandle.Name = "Handle"
DHandle.CanCollide = false
DHandle.Locked = true
DHandle.Size = Vector3.new(1.93, 1.77, 1.6)
DMesh.Parent = DHandle
DMesh.Scale = DMesh.Scale
DWeld.Parent = DHandle
DWeld.Name = "no"
DWeld.Part0 = Head 
DWeld.Part1 = DHandle
DWeld.C0 = CFrame.new(0,.4,0) * CFrame.fromEulerAnglesXYZ(math.rad(-1),0,0)VertexColor = Vector3.new(1,1,1)
DHandle.Transparency = 0
DMesh.MeshId = "http://www.roblox.com/asset/?id=12259089"
DMesh.TextureId = "http://www.roblox.com/asset/?id=12259192"
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

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

ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 500
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
	Part = {
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
			if Size == Vector3.new() then
				Part.Size = Vector3.new(0.2, 0.2, 0.2)
			else
				Part.Size = Size
			end
			return Part
		end;
	};
	
	Mesh = {
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

	Weld = {
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

	Sound = {
		Create = function(id, par, vol, pit) 
			local Sound = Create("Sound"){
				Volume = vol,
				Pitch = pit or 1,
				SoundId = "rbxassetid://" .. id,
				Parent = par or workspace,
			}
			Sound:play() 
			return Sound
		end;
	};
	
	Decal = {
		Create = function(Color, Texture, Transparency, Name, Parent)
			local Decal = Create("Decal"){
				Color3 = Color,
				Texture = "rbxassetid://" .. Texture,
				Transparency = Transparency,
				Name = Name,
				Parent = Parent,
			}
			return Decal
		end;
	};
	
	BillboardGui = {
		Create = function(Parent, Image, Position, Size)
			local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
			BillPar.CFrame = CFrame.new(Position)
			local Bill = Create("BillboardGui"){
				Parent = BillPar,
				Adornee = BillPar,
				Size = UDim2.new(1, 0, 1, 0),
				SizeOffset = Vector2.new(Size, Size),
			}
			local d = Create("ImageLabel", Bill){
				Parent = Bill,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "rbxassetid://" .. Image,
			}
			return BillPar
		end
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
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
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
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

function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Part")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Part") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent.Name ~= "Base" and hit ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		local Damage = 0
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit
                                hit.Parent = workspace
                                hit.Anchored = false
                                hit.CanCollide = true
                                print("hi")
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Garamond",
		TextColor3 = Torso.Color,
		TextScaled = true,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end




function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = hit
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
			CFuncs.Sound.Create("324867021", head, 1, 1)
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, HitSound, HitPitch)
				end
			end
		end
	end
end


Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Bright green","Handle",Vector3.new(1, 1.20000005, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.435136795, -0.716373444, -0.168147802, -0.184279382, -0.967371345, 0.173878923, -0.0978992507, -0.157963246, -0.982580066, 0.977986097, -0.198091835, -0.0655955523))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.36849213e-05, 4.00039482, -5.86509705e-05, 3.83518636e-06, 8.29994678e-06, -1, 4.9972441e-06, -1.00000012, -8.29994678e-06, -1.00000012, -4.9949158e-06, -3.83518636e-06))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 0.0500000007))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.67979431e-05, -4.00035858, 0.499849081, -0.999994338, 5.56639861e-06, 1.65775418e-06, 5.24974894e-06, 0.999995232, -5.0291419e-06, -3.25776637e-06, -5.08874655e-06, -0.999990761))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 1, 0.600000024))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.17232513e-05, 3.20031929, -3.71932983e-05, 3.83518636e-06, 8.29994678e-06, -1, 4.9972441e-06, -1.00000012, -8.29994678e-06, -1.00000012, -4.9949158e-06, -3.83518636e-06))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.60000002, 0.400000006, 0.0500000007))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.48905945e-05, -4.00033379, 0.499926567, 1, -5.21628408e-06, -3.65823939e-06, 5.21626544e-06, 1, -5.09625352e-06, 3.658266e-06, 5.09623442e-06, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 1, 0.600000024))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.74724579e-05, 2.90030861, -2.95639038e-05, 3.83518636e-06, 8.29994678e-06, -1, 4.9972441e-06, -1.00000012, -8.29994678e-06, -1.00000012, -4.9949158e-06, -3.83518636e-06))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0976924896, -1.42856026, 1.57356262e-05, 3.90782952e-06, 0.275675088, -0.961250901, 5.61308116e-06, -0.96125102, -0.275675088, -1.00000012, -4.33286186e-06, -5.2973628e-06))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.200000003))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.93119049e-05, -0.700065613, 1.33514404e-05, 3.83518636e-06, 8.29994678e-06, -1, 4.9972441e-06, -1.00000012, -8.29994678e-06, -1.00000012, -4.9949158e-06, -3.83518636e-06))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0726666451, 1.43006897, 1.62124634e-05, -5.01610339e-06, 0.258840203, 0.96592015, -3.55858356e-06, 0.96592021, -0.258840173, -1.00000012, -4.73321415e-06, -3.92459333e-06))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.200000003))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1.20000005, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.14848328e-05, 4.36306e-05, 2.00019836, 1, -5.38327731e-06, -2.46055424e-06, -2.4586916e-06, 8.36700201e-06, -1, 5.40760811e-06, 1, 8.37445259e-06))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 0.200000003))
Shaft=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Shaft",Vector3.new(1, 3.60000014, 1))
ShaftWeld=CFuncs.Weld.Create(m,Handle,Shaft,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21729279e-05, 1.20008087, -2.24113464e-05, 3.14228237e-06, 4.38094139e-06, -1.00000012, 2.94635538e-06, -1, -4.38839197e-06, -1, -2.95066275e-06, -3.14228237e-06))
CFuncs.Mesh.Create("CylinderMesh",Shaft,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Hitbox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","Hitbox",Vector3.new(7, 3, 3))
HitboxWeld=CFuncs.Weld.Create(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19377899, -0.184207916, -0.14117223, -0.00053447485, 0.99471724, -0.102652542, -0.999858558, 0.00119461119, 0.0167820305, 0.0168160032, 0.102646977, 0.994575679))


sref = CFuncs.Part.Create(Character, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
sref.Anchored = true

EffectModel = Create("Model"){
	Parent = Character,
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
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
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
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("New Yeller"), "Part", Vector3.new(1, 1, 1))
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


function ears()
	local quote = math.random(1, 10)
	if quote == 1 then
			ow = CFuncs.Sound.Create("276916733", Character, 10, 1)
                        Instance.new("DistortionSoundEffect", ow).Level = .95
	elseif quote == 2 then
			ow = CFuncs.Sound.Create("222045669", Character, 10, 1)
                        Instance.new("DistortionSoundEffect", ow).Level = .95
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "I played college ball yaknow", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 3 then
			ow = CFuncs.Sound.Create("657527128", Character, 10, 1)
                        Instance.new("DistortionSoundEffect", ow).Level = .95      
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "Oof", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 4 then
			CFuncs.Sound.Create("230292394", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "AAAAAH", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 5 then
			CFuncs.Sound.Create("230255621", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "SO", 1.5, BrickColor.new("Grey").Color)
wait(.2)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "DAH", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 6 then
			CFuncs.Sound.Create("230255698", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "Y E S", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 7 then
			CFuncs.Sound.Create("230255738", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "OH", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 8 then
			CFuncs.Sound.Create("230292118", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "AAAAAAAA", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 9 then
			CFuncs.Sound.Create("230292073", Character, 10, 1)
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "UWEEEEEEEEEEH", 1.5, BrickColor.new("Grey").Color)
	elseif quote == 10 then
			ow = CFuncs.Sound.Create("225279648", Character, 10, 1)
                        Instance.new("DistortionSoundEffect", ow).Level = .95
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), "help", 1.5, BrickColor.new("Grey").Color)
	end
	end





function joj()
while oof == true do
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
	Damage(Hitbox, hit, 0, 0, math.random(0,0), "Normal", RootPart, 0.2, "148862502", 1)end)
CFuncs.Sound.Create("233856140", Hitbox, 10, 1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.318533748, 1.11758709e-08, -0.186876655, 0.571150839, -0.107324705, 0.813798547, -0.321393877, 0.883022606, 0.342018932, -0.755309701, -0.456894249, 0.469845593) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.136643112, 1.46224117, -0.102674514, 0.571150839, -0.321393877, -0.755309701, -0.107324705, 0.883022606, -0.456894249, 0.813798547, 0.342018932, 0.469845593) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.34420753, 1.19733691, -0.575926542, -0.0377464592, -0.0365618169, 0.998618245, -0.0365605801, -0.998610795, -0.0379435122, 0.998618245, -0.0379423201, 0.0363572836) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.54852927, 1.0183481, -0.403962731, 0.992945313, -0.0193823874, 0.11697869, 0.0193829238, -0.946746707, -0.321395338, 0.116978586, 0.321395338, -0.93969202) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.30056286, -1.52663183, -0.684036016, 0.872286201, -0.321393877, -0.368541837, 0.13550131, 0.883022606, -0.449344397, 0.469847292, 0.342018932, 0.813797712) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0819230229, -1.98630714, -0.796365142, 0.843013644, -0.321393877, 0.431316614, 0.431316495, 0.883022606, -0.185032547, -0.321394026, 0.342018932, 0.883022547) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.70452857, 1.34110451e-07, -0.85472101, 0.0479760207, 0.375900865, -0.925417125, -0.321394145, 0.883022726, 0.342018545, 0.945729494, 0.281014919, 0.163176239) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.332258016, 1.42813265, -0.198432297, 0.0479760207, -0.321394145, 0.945729494, 0.375900865, 0.883022726, 0.281014919, -0.925417125, 0.342018545, 0.163176239) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.3427434, 0.740131199, -1.01291919, 0.0505371541, -0.0144109726, 0.998618364, 0.883102953, 0.467642725, -0.0379427671, -0.466449738, 0.883800209, 0.0363596678) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.46270001, 0.38253215, -1.0271579, 0.992945492, -0.11697793, -0.01938124, 0.0193838775, 0.321395963, -0.946746528, 0.116977483, 0.939691901, 0.321396172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.30056417, -1.52663159, -0.684035659, 0.872286379, -0.321394145, -0.368541002, 0.1355021, 0.883022726, -0.449344009, 0.469846606, 0.342018545, 0.813798249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0819211155, -1.98630702, -0.796365023, 0.84301424, -0.321394145, 0.431315303, 0.431316257, 0.883022726, -0.18503274, -0.321392775, 0.342018545, 0.883023262) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		end
		con:Disconnect()
		attack = false
end
end

Mouse.Button1Down:connect(function()
	if attack == false and oof == false then
		oof = true
        joj()
	end
end)



Mouse.Button1Up:connect(function()
	if attack == true and oof == true then
		oof = false
	end
end)




Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k == 't' then
ears()
	end
end)

while true do
	swait()
	sref.CFrame = RightArm.CFrame * CFrame.new(0, -1.5, 0) * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if RootPart.Velocity.y > 1 and hit == nil then 
		Anim = "Jump"
		if attack == false then
			PlayAnimationFromTable({
				CFrame.new(0, 0.0486936681, -0.0429394133, 1, 0, -0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0, 1.48698187, -0.0992434025, 1, 0, 0, 0, 0.98480767, 0.173648626, -0, -0.173648626, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.66118193, 0.583681226, 0.430878729, 0.556951106, -0.772693694, -0.30454877, 0.830109596, 0.506009281, 0.234249175, -0.026898358, -0.383274168, 0.923242927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.65963519, 0.695907593, 0.339572817, 0.482961893, 0.810776234, 0.330741376, -0.866026103, 0.498096228, 0.0435779653, -0.129409045, -0.307477146, 0.94271481) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.499997795, -1.71809137, -0.102601528, 0.984807849, 3.55863392e-007, -0.173647791, 0.0593907312, 0.939692557, 0.336824298, 0.163175657, -0.342020214, 0.925416589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.599241376, -1.29528463, -0.396836221, 0.992403984, 0.086823605, 0.0871558413, -0.118890785, 0.858931601, 0.498097867, -0.0316142589, -0.504676282, 0.862729669) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
	elseif RootPart.Velocity.y < -1 and hit == nil then 
		Anim = "Fall"
		if attack == false then
			PlayAnimationFromTable({
				CFrame.new(-0, -0.0520263538, -0.0354017057, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0, 1.51533091, -0.10684365, 1, 0, 0, 0, 0.965925872, 0.258819342, 0, -0.258819342, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.67554009, 0.885679007, 0.385592818, 0.374123871, -0.696466088, -0.61234498, 0.914592147, 0.386364758, 0.119345918, 0.153468132, -0.604696095, 0.781530797) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.67474985, 0.999329269, 0.296636045, 0.250219911, 0.753912985, 0.607457995, -0.927206695, 0.367205799, -0.0738086402, -0.278707415, -0.544770718, 0.79091537) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.504494727, -1.81757987, -0.0935191363, 0.984807849, -0.0449431092, -0.167730823, 0.059390761, 0.99484998, 0.0821366012, 0.163175508, -0.0908504426, 0.982405365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.623603821, -1.49203336, -0.421764404, 0.992403865, 0.122534379, 0.0109562073, -0.118891656, 0.978150725, -0.17054674, -0.0316146575, 0.167948633, 0.985288799) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
	elseif Torsovelocity < 1 and hit ~= nil then
		Anim = "Idle"
		if attack == false then
			change = 1
		PlayAnimationFromTable({
         CFrame.new(1.90734863e-06, 0, 0, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-06, 1.49520886, -0.307131112, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.37194049, -0.0753216743, -0.606283188, 0.229498088, 0.301554978, 0.925416291, 0.481514871, 0.791113436, -0.377204269, -0.845857084, 0.532169282, 0.0363558233) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, 0.0121572316, -0.267316073, 1, 0, -0, 0, 0.642788708, -0.766043544, 0, 0.766043544, 0.642788708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.699996471, -1.87938261, -0.684038877, 0.866025388, 0, -0.500000238, -0.171010032, 0.939692736, -0.296197921, 0.469846606, 0.342019886, 0.813797772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.756342053, -1.83849907, -0.79636544, 0.939692736, 0, 0.342019886, 0.116977625, 0.939692736, -0.321393639, -0.321393639, 0.342019886, 0.883022428) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		end
	elseif Torsovelocity > 2 and hit ~= nil then
		Anim = "Walk"
		if attack == false then
			change = 2
		PlayAnimationFromTable({
         CFrame.new(1.90734863e-06, 0, 0, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-06, 1.49520886, -0.307131112, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.37194049, -0.0753216743, -0.606283188, 0.229498088, 0.301554978, 0.925416291, 0.481514871, 0.791113436, -0.377204269, -0.845857084, 0.532169282, 0.0363558233) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, 0.0121572316, -0.267316073, 1, 0, -0, 0, 0.642788708, -0.766043544, 0, 0.766043544, 0.642788708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(.5, -1.64 - 0.5 * math.cos(sine / 8) / 2, 0 + 2 *  math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(-70 *  math.sin(sine / 8)), math.rad(-3), math.rad(0)),
				CFrame.new(-.5, -1.64 + 0.5 * math.cos(sine / 8) / 2, 0 - 2 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(70 *  math.sin(sine / 8)), math.rad(3), math.rad(0)),
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
						local move = 5
						local hit, pos = rayCast(Thing[4], Thing[1], move, Character)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects.Elect.Create(CFrame.new((Thing[4] + pos) / 2, pos), 4, 4, 4)
						Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, 3, 3, 5, 5, 5, 0.15)
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							MagnitudeDamage(hit, 5, 10, 15, 0, "Normal", "161006093", 0.8)
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects.Block.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 1, 1, 1, 2, 2, 2, .05)
							Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.03)
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
															Thing[1].Size = Thing[1].Size + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
