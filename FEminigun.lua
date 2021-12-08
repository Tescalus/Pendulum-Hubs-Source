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

Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character

bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 0
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


local script = game:GetObjects("rbxassetid://5460271377")[1]

local Player = game.Workspace.non
local lplr = Player
Mouse = game.Players.LocalPlayer:GetMouse()
Character = game.Workspace.non
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
local sick = Instance.new("Sound",Torso)
sick:Play()

local muting=false
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

    local function weldBetween(a, b)
        local weldd = Instance.new("ManualWeld")
        weldd.Part0 = a
        weldd.Part1 = b
        weldd.C0 = CFrame.new()
        weldd.C1 = b.CFrame:inverse() * a.CFrame
        weldd.Parent = a
        return weldd
    end
 
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local Animation_Speed = 3
local Frame_Speed = 1 / 80 -- (1 / 30) OR (1 / 60)
local Speed = 13
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local ANIM = "Idle"
local ATTACK = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed

local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local SIZE = 1
local TRANSITIONS = false
local FULL = false
local MODE = "Malediction"
local PITCH = 0.9
local VOLUME = 1
local FACE = 2801767831
local MAINRUINCOLOR = BrickColor.new("Fossil")
local SECONDRUINCOLOR  = BrickColor.new("Fossil")
--//=================================\\
--\\=================================//
 
 
--//=================================\\
--\\=================================//

 
function swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, NUMBER do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
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
--//=================================\\
--//          WINGY STUFF
--\\=================================//

function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local Create = function(ty) return function(data) local obj = Instance.new(ty) for k , v in pairs(data) do if type(k) == 'number' then v.Parent = obj else obj[k] = v end end return obj end end

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



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
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

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
local type = type
local rng = Instance.new("Part", Character)
        rng.Anchored = true
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
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
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
--rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
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
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", Character)
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
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", Character)
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
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent.Name ~= Player.Name and hit.Parent.Parent.Name ~= Character.Name and hit.Parent.Parent.Name ~= Player.Name and hit.Parent:FindFirstChild("Head") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:GetService("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
     local HitHealth = h.Health
     --h.MaxHealth = 100   let it
	
     --[[if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        --print("gained kill")
        --dmg(h.Parent)
      end
      --ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), Damage, .03, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      --ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), Damage, .03, Part.BrickColor.Color)
    end]]
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Head
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Leech" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
      end
    elseif Type == "UpKnock" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(5)
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
	elseif Type == "Burn" then

      local humss = hit.Parent:findFirstChildOfClass("Humanoid")
      --[[humss.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(60)
        HHumanoid.PlatformStand = false
      end), humss)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback/25,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
]]
	coroutine.resume(coroutine.create(function()
		if hit.Parent:findFirstChild("Torso")then
		local hitoor=hit.Parent:findFirstChild("Torso")
				local BURNBABYBURN = Create("Sound"){
					Volume = 1,
                    Name = "asdawdwadadw",
					Pitch = 1.2,
					Looped = true,
					SoundId = "rbxassetid://1601946639",
					Parent = hitoor,
				}
				BURNBABYBURN:play()
		for i=1, 2*knockback do
		swait(5)
		end
		BURNBABYBURN:Remove()
		end
	end))
	
    elseif Type == "Spike" then
     -- CreateBigIceSword(hit.Parent.Torso.CFrame)
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
end

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name and c.Name ~= Character.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


local m = Instance.new("Model",Character)
--------------
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb,RightArm,sorb,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWeld(sorb2,LeftArm,sorb2,0,1,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

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

function CreateSoundWithEmitter(ID, PARENT, VOLUME, PITCH, EMITTERSIZE, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		if EMITTERSIZE then
		NEWSOUND.EmitterSize = EMITTERSIZE
		else
		NEWSOUND.EmitterSize = 5
		end
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
	local WAITTOTWEEN = (Table.WaitToTween or 0)
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
		elseif TYPE == "Cylinder" then
            MSH = CreateMesh("SpecialMesh", EFFECT, "Cylinder", "", "", SIZE, VT(0,0,-SIZE.X/8))
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
		elseif TYPE == "Swirl2" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		elseif TYPE == "Star" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2546401234", "", SIZE, VT(0,0,0))
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

local Beams = New("Model",Effects,"Beams",{})
local fail = false
BeamRing = New("Model",nil,"BeamRing",{})
local Quantumn = New("Model",nil,"Quantumn",{})
local EffectHolder = New("Part",Quantumn,"EffectHolder",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.05, 0.05, 0.05),CFrame = CFrame.new(0, 5.5000329, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Anchored = true,})
EffectHolder.CanCollide = false
Attachment01 = New("Attachment",EffectHolder,"Attachment01",{CFrame = CFrame.new(1.80000019, -1.34110451e-07, -1.80000019, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment02 = New("Attachment",EffectHolder,"Attachment02",{CFrame = CFrame.new(-1.7999866, 4.47034836e-08, 1.80000019, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment03 = New("Attachment",EffectHolder,"Attachment03",{CFrame = CFrame.new(-1.80000007, -1.34110451e-07, -1.80000019, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment04 = New("Attachment",EffectHolder,"Attachment04",{CFrame = CFrame.new(1.80001354, 4.47034836e-08, 1.80000019, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment05 = New("Attachment",EffectHolder,"Attachment05",{CFrame = CFrame.new(2.60000038, -1.34110451e-07, -2.98023224e-08, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment06 = New("Attachment",EffectHolder,"Attachment06",{CFrame = CFrame.new(-2.59998679, 4.47034836e-08, 1.49011612e-08, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment07 = New("Attachment",EffectHolder,"Attachment07",{CFrame = CFrame.new(1.49011612e-08, -1.34110451e-07, -2.60000038, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
Attachment08 = New("Attachment",EffectHolder,"Attachment08",{CFrame = CFrame.new(1.34855509e-05, 4.47034836e-08, 2.60000038, 1, 0, 0, 0, -5.96046377e-08, -1, 0, 1, -5.96046377e-08),})
local Beams = New("Model",EffectHolder,"Beams",{})
Beaamstart2 = New("Part",BeamRing,"BeamHolder",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(77.3999939, 5.40723991, 119.900009, 0, 0, -1, 0, -1, 0, -1, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Attachment0 = New("Attachment",Beaamstart2,"Attachment0",{CFrame = CFrame.new(0, 0, .75, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
Attachment1 = New("Attachment",Beaamstart2,"Attachment1",{CFrame = CFrame.new(0, 0, -.75, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
Beaamstart2.CanCollide = false
local Beam2 = New("Beam",Beams,"Beam",{Texture = "rbxassetid://457102813",})
Beam2.Parent = BeamRing
Beam2.Width0 = 1.5
Beam2.Width1 = 1.5
Beam2.FaceCamera = false	

Beam2.Transparency = NumberSequence.new(0,0)
Beam2.TextureLength = .05
Beam2.LightEmission = 1
Beam2.CurveSize0 = 1
Beam2.CurveSize1 = -1
Beam2.Attachment0 = Beaamstart2.Attachment0
Beam2.Attachment1 = Beaamstart2.Attachment1
local Beam2 = New("Beam",Beams,"Beam",{Texture = "rbxassetid://457102813",})
Beam2.Parent = BeamRing
Beam2.Width0 = 1.5
Beam2.Width1 = 1.5
Beam2.FaceCamera = false	

Beam2.Transparency = NumberSequence.new(0,0)
Beam2.TextureLength = .05
Beam2.LightEmission = 1
Beam2.CurveSize0 = -1
Beam2.CurveSize1 = 1
Beam2.Attachment0 = Beaamstart2.Attachment0
Beam2.Attachment1 = Beaamstart2.Attachment1
Beam2.TextureSpeed = -1
local badcombo = {{1,7}, {1,5}, {2,8}, {2,6}, {3,7}, {3,6}, {4,5}, {4,8}}
function scan(scannum1,scannum2)
for i = 1,#badcombo do	
local comb = badcombo[i]
if scannum1 == comb[1] and scannum2 == comb[2]then
fail = true
end
if scannum1 == comb[2] and scannum2 == comb[1]then
fail = true
end
--swait()
end
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
coroutine.resume(coroutine.create(function()
	wait(1)
for i, v2 in pairs(GatherAllInstances(Character)) do
		if v2:IsA("BasePart") then
			v2.Locked = true
		end end
end))

local AttachmentSelect = function(BeamSelect,Value1,Value2)
local Select1 = 0
local Select2 = 0
scan(Value1,Value2)
if fail == false then 
if Value1 == 1 then
Select1=Attachment01
elseif Value1 == 2 then
Select1=Attachment02
elseif Value1 == 3 then
Select1=Attachment03
elseif Value1 == 4 then
Select1=Attachment04
elseif Value1 == 5 then
Select1=Attachment05
elseif Value1 == 6 then
Select1=Attachment06
elseif Value1 == 7 then
Select1=Attachment07
elseif Value1 == 8 then	
Select1=Attachment08	
elseif Value1 == 0 or 9 then
Select1=nil			
end
if Value2 == 1 then
Select2=Attachment01
elseif Value2 == 2 then
Select2=Attachment02
elseif Value2 == 3 then
Select2=Attachment03
elseif Value2 == 4 then
Select2=Attachment04
elseif Value2 == 5 then
Select2=Attachment05
elseif Value2 == 6 then
Select2=Attachment06
elseif Value2 == 7 then
Select2=Attachment07
elseif Value2 == 8 then	
Select2=Attachment08
elseif Value2 == 0 or 9 then
Select2=nil			
end
BeamSelect.Attachment0 = Select1
BeamSelect.Attachment1 = Select2
else
fail = false	
BeamSelect:Destroy()
end
end

local Glow1 = Color3.new(255/255, 184/255, 56/255)
local Glow2 = Color3.new(1,0,0)
for i = 1,8 do
	swait()
for v = 1,8 do
	--swait()
if i ~= v then	
	swait()
local Beam = New("Beam",Beams,"Beam",{Texture = "rbxassetid://1191605952",})
Beam.Parent = Beams
Beam.Width0 = .1
Beam.Width1 = .1
Beam.FaceCamera = true	
Beam.Color = ColorSequence.new(Glow1,Glow2)
Beam.Transparency = NumberSequence.new(0,0)
Beam.TextureLength = 1
Beam.LightEmission = 1
AttachmentSelect(Beam,i,v)	
end
end
end

function MakeBeamWaveEffect(QPlayer,BeamColor,CFPos,QLifeTime,NumberV1,NumberV2,Scale1,T1,BSize,MoveCF)
	QStart = 1.6
	coroutine.resume(coroutine.create(function()
local CQuan = BeamRing:Clone()
CQuan.Parent = QPlayer
	game:GetService("Debris"):AddItem(CQuan, 20)
CQuan.BeamHolder.CFrame = CFrame.new(CFPos)

	for i, v in pairs(GatherAllInstances(CQuan)) do
		coroutine.resume(coroutine.create(function()
			
			
								coroutine.resume(coroutine.create(function()		
			if v:isA("Beam") then
				
				
v.Color = ColorSequence.new(BeamColor,BeamColor)				
				
				
				
			coroutine.resume(coroutine.create(function()
			local CS0S=v.CurveSize0*Scale1
			local CS1S=v.CurveSize1*Scale1			
for i = QStart + NumberV1,QStart + (QStart*QLifeTime),NumberV2 do swait()
v.CurveSize0=CS0S* COS(i)
v.CurveSize1=CS1S* COS(i)
end				
end))			
				
				
			for i = 0,QStart*QLifeTime,NumberV2/(1+T1) do swait()


v.Transparency = NumberSequence.new(i/(QStart*QLifeTime),i/(QStart*QLifeTime))	




v.Width0 = (1 - i/(QStart*QLifeTime))*BSize
v.Width1 = (1 - i/(QStart*QLifeTime))*BSize


			end	
			v.Transparency = NumberSequence.new(1,1)
wait()			
			CQuan:Destroy()			
			end			
			end))		
			
					coroutine.resume(coroutine.create(function()
			if v:isA("Attachment") then
local QX = v.CFrame.X*Scale1
local QY = v.CFrame.Y*Scale1
local QZ = v.CFrame.Z*Scale1
v.CFrame = CFrame.new(QX*0 ,QY* 0,QZ*0)		
	
for i = QStart + NumberV1,QStart + (QStart*QLifeTime),NumberV2 do swait()
v.CFrame = CFrame.new(QX* COS(i) ,QY* COS(i),QZ* COS(i))	


end
		
				
			end
		
					end))

		end))
	end
	local CFPos2 = CFrame.new(CFPos)
local endloop=false
			while endloop==false do 
			
			
CQuan.BeamHolder.CFrame = Clerp(CQuan.BeamHolder.CFrame,CFPos2*MoveCF	,.1)	
			
			
			
			CFPos2=	CQuan.BeamHolder.CFrame

		swait() 		if CQuan == nil or CQuan.Parent == nil then
			endloop=true
		end		end	end))
end

function createBGCircle(size,parent,color)
local bgui = Instance.new("BillboardGui",parent)
bgui.Size = UDim2.new(size, 0, size, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 0
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547" --997291547,521073910
imgc.ImageColor3 = color
return bgui,imgc
end

function symbolizeBlink(guipar,size,img,color,bonussize,vol,pit,soundid,spar,rotationenabled,rotsp,delay)
local bgui,imgc = createBGCircle(size,guipar,color)
bgui.AlwaysOnTop = true
imgc.Image = "rbxassetid://" ..img
local rrot = math.random(1,2)
CFuncs["Sound"].Create("rbxassetid://" ..soundid, spar, vol,pit)
coroutine.resume(coroutine.create(function()
for i = 0, 24*delay do
Swait()
if rotationenabled == true then
if rrot == 1 then
imgc.Rotation = imgc.Rotation + rotsp
elseif rrot == 2 then
imgc.Rotation = imgc.Rotation - rotsp
end
end
bgui.Size = bgui.Size + UDim2.new(1*bonussize/delay,0,1*bonussize/delay,0)
imgc.ImageTransparency = imgc.ImageTransparency + 0.04/delay
end
bgui:Destroy()
end))
end


function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",nil)
PE.LightEmission=.8
PE.Color = ColorSequence.new(BRICKC("Really red").Color)
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,1.5)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=999
PE.VelocitySpread = 10000
PE.Acceleration = Vector3.new(0,0,0)
PE.Drag = 5
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1351966707"
PE.ZOffset = -0
PE.Name = "PE"
PE.Enabled = false

function particles(art)
	local PARTICLES = PE:Clone()
	PARTICLES.Parent = art
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end
	
function turnto2(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,position.Y,position.Z)) * CFrame.new(0, 0, 0)
end
	
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
				FADER.Material = "ForceField"
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
			CHUNK.CanCollide = true
			wait(MRANDOM(15,25)/5)
			for i = 1, 25 do
				Swait()
				CHUNK.Transparency = CHUNK.Transparency + 1/25
			end
			CHUNK:remove()
		end))
	end
end

function CreateDebreeRing(FLOOR,POSITION,SIZE,BLOCKSIZE,SWAIT)
	if FLOOR ~= nil then
		coroutine.resume(coroutine.create(function()
			local PART = CreatePart(3, Effects, "Plastic", 0, 1, "Pearl", "DebreeCenter", VT(0,0,0))
			PART.CFrame = CF(POSITION)
			for i = 1, 45 do
				local RingPiece = CreatePart(3, Effects, "Plastic", 0, 1, "Pearl", "DebreePart", BLOCKSIZE)
				RingPiece.Material = FLOOR.Material
				RingPiece.Color = FLOOR.Color
				RingPiece.CFrame = PART.CFrame * ANGLES(RAD(0), RAD(i*8), RAD(0)) * CF(SIZE, 0, 0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
				coroutine.resume(coroutine.create(function()
				repeat
				RingPiece.Transparency = RingPiece.Transparency - 0.05
				swait()
				until RingPiece.Transparency==1 or RingPiece.Transparency<0.01
				swait(SWAIT)
				repeat
				RingPiece.Transparency = RingPiece.Transparency + 0.01
				swait()
				until RingPiece.Transparency==0 or RingPiece.Transparency>0.99
				Debris:AddItem(RingPiece,1)
				end))
			end
			PART:remove()
		end))
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

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
    local mesh = IT("SpecialMesh",wave)
    mesh.MeshType = "Sphere"
    mesh.Scale = SIZE
    mesh.Offset = VT(0,0,0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + (1/WAIT)
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function LobbingObject(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
    if DoesCourontine == false then
        local Direction = CF(Part.Position,ToLocation)
        local Distance = (Part.Position - ToLocation).magnitude
        for i = 1, AmountOfTime do
            Swait()
            Part.CFrame = Direction*CF(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
            Direction = Part.CFrame
        end
    elseif DoesCourontine == true then
        coroutine.resume(coroutine.create(function()
            local Direction = CF(Part.Position,ToLocation)
            local Distance = (Part.Position - ToLocation).magnitude
            for i = 1, AmountOfTime do
                Swait()
                Part.CFrame = Direction*CF(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
                Direction = Part.CFrame
            end
        end))
    end
end

function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,100,0,40)
	Bill.StudsOffset = Vector3.new(0,3,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Fantasy"
	Hehe.TextSize = 40
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			swait()	
			Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))	
			--Hehe.Rotation = math.random(-5,5)
			Hehe.TextColor3 = Color3.new(27/255,42/255,53/255)
			Hehe.TextStrokeColor3 = Color3.new(0,0,0)
		end
	end))
	for i = 1,string.len(text),1 do
		swait()
		Hehe.Text = string.sub(text,1,i)
	end
	wait(1)--Re[math.random(1, 93)]
	for i = 0, 1, .025 do
		swait()
		Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		Hehe.TextStrokeTransparency = i
		Hehe.TextTransparency = i
	end
	Bill:Destroy()
	end)
chat()
end

function onChatted(msg)
	chatfunc(msg)
end

function Tween(object,property,time,easingstyle,easingdirection,repet,reverse,deelay)
	local infos=TweenInfo.new(time,Enum.EasingStyle[easingstyle],Enum.EasingDirection[easingdirection],repet,reverse,deelay)
	local tween=game:GetService('TweenService'):Create(object,infos,property)
	tween:Play()
	return tween
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

MINIGUN = script.Things.Minigun
MINIGUN.Parent = Character
BODY = MINIGUN.Body
hello = BODY.hello
BARREL = MINIGUN.Barrel
SPINJOINT = BODY.Holder.SpinJoint
BODYWELD = CreateWeldOrSnapOrMotor("Weld", RightArm, BODY.Handle, RightArm, CF(0, 0, 0), CF(0, 0, 0))

BRO=BARREL.MiniBarrel
Fire=BRO.Barrel1.ParticleEmitter 
Fire2=BRO.Barrel2.ParticleEmitter
Fire3=BRO.Barrel3.ParticleEmitter
Fire4=BRO.Barrel4.ParticleEmitter
Fire5=BRO.Barrel5.ParticleEmitter
Fire6=BRO.Barrel6.ParticleEmitter

Humanoid.Died:connect(function()
	
end)

--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p,CFRAME.p+VT(MRANDOM(-5,5),MRANDOM(0,5),MRANDOM(-5,5)))
	local BODYGYRO = IT("BodyGyro", STATPART)
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
	TEXTLABEL.Font = "Antique"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 0
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		for i = 1, 50 do
			Swait()
			STATPART.CFrame = STATPART.CFrame * CF(0,0,-0.2)
			TEXTLABEL.TextTransparency = TEXTLABEL.TextTransparency + (1/50)
			TEXTLABEL.TextStrokeTransparency = TEXTLABEL.TextTransparency
		end
		THEPART.Parent = nil
	end),STATPART, TEXTLABEL)
end

--//=================================\\
--||			DAMAGING
--\\=================================//

function ApplyDamage(Humanoid,Damage,TorsoPart)
	return true
end

function EffectsAoE(POSITION,RANGE,MINDMG,MAXDMG,EFFECTS,TYPES,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	local knock=false
	local Poisoning=false
	local Fire=false
	local Durability=0
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD.Name ~= Character.Name and CHILD.Name ~= Player.Name then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local HEAD = CHILD:FindFirstChild("Head")
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if EFFECTS > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity",c) 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									if TYPES=="Fling" then
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									elseif TYPES=="Up" then
									bv.maxForce = Vector3.new(0, 1e9, 0)
									elseif TYPES=="UpKnock" then
									knock=true
									bv.maxForce = Vector3.new(0, 1e9, 0)
									elseif TYPES=="Knock" then
									knock=true
									bv.maxForce = Vector3.new(0, 0, 0)
									elseif TYPES=="KnockOut" then
									knock=true
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									elseif TYPES=="Poison" then
									Poisoning=true
									bv.maxForce = Vector3.new(0, 0, 0)
									elseif TYPES=="Fire" then
									Fire=true
									bv.maxForce = Vector3.new(0, 0, 0)
									elseif TYPES=="Move" then
									bv.maxForce = Vector3.new(1e9, 0, 1e9)
									end
									if TYPES~="Normal" then
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*EFFECTS
									end
									coroutine.resume(coroutine.create(function()
									if knock==true then
									HUM.PlatformStand = true
									wait(EFFECTS/25)
									if HUM.PlatformStand== true then
									HUM.PlatformStand = false
									end
									end
									if Poisoning==true then
									Durability=1+EFFECTS/1.5
									repeat
									CreateSound(264001217,TORSO,0.01,0.6)
									Durability=Durability-1
									HUM.Sit = true
									HUM.Sit = false
									HUM.Jump = true
									HUM.Jump = false
									wait(1)
									until Durability<1 or Durability==0
									end
									end))
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

function KillChildren(v)
	for _, c in pairs(v:GetChildren()) do
		if c:IsA("BasePart") then
			if c.Transparency < 1 then
				particles(c)
				c.PE.Enabled = true
				c.Parent = Effects
				coroutine.resume(coroutine.create(function()
                    Swait(20)
					c.PE.Enabled = false
					Debris:AddItem(c,2)
				end))
			end
		end
	end
end

function ApplyAoE(POSITION,RANGE)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local LISTED = false
			if LISTED == false then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO then
						if (TORSO.Position - POSITION).Magnitude <= RANGE+TORSO.Size.Magnitude then
							KillChildren(CHILD)
						end
					end
				end
			end
		end
	end
end

function ApplyDamage(Humanoid,Damage,TorsoPart)
	local defence = Instance.new("BoolValue",Humanoid.Parent)
	defence.Name = ("HitBy"..Player.Name)
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = Damage
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1,100)
		if Damage > Humanoid.Health then
			Damage = math.ceil(Humanoid.Health)
			if Damage == 0 then
				Damage = 0.1
			end
		end
	end
end

function ApplyAoE2(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
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

--//=================================\\
--||	     RAGDOLL STUFF
--\\=================================//

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(character, part0, part1, attachmentName, className, properties)
	attachmentName = attachmentName.."RigAttachment"
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
end

function getAttachment0(character, attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

function ArtificialHitbox(Part)
	local HITBOX = CreatePart(3, Part, "Metal", 0, 1, "Really black", "Hitbox", Part.Size/2, false)
	HITBOX.CanCollide = true
	HITBOX.CFrame = Part.CFrame
	weldBetween(Part,HITBOX)
end

function R15Ragdoll(character,KeepArms)
	return true
end

function Ragdoll(Character2,CharTorso,KeepArms)
	return true
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function StartShake(Settings)
	return true
end


function CameraEnshaking(TIMER,SHAKE)
	return true
end

function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your live is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, ","You already died, "}
	warn(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end

local TOBANISH = {}

function ApplyDamage(Humanoid,Damage,OneShot)
	Damage = Damage * DAMAGEMULTIPLIER
	local DEAD = false
	if Humanoid.Health < 2000 and OneShot == false then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Banish(Humanoid.Parent)
			DEAD = true
		end
	else
		DEAD = true
		Banish(Humanoid.Parent)
	end
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
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z), Size2 = (VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z))*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0,0,0), SoundID = 0, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					else
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = PIECE.Size, Size2 = PIECE.Size*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(0,0,0), SoundID = 0, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					end
					PIECE:remove()
				end
			until #PARTS == 0
		end))
	end
end


function Banish(Foe)
	if Foe and Foe.Name ~= Character.Name and Foe.Name ~= Player.Name and false then
		coroutine.resume(coroutine.create(function()
			--if game.Players:FindFirstChild(Foe.Name) then
				table.insert(TOBANISH,Foe.Name)
				printbye(Foe.Name)
			--end
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			CLONE.Parent = Effects
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
 						CreateSound(340722848, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = C3(1,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CF(MRANDOM(-2,2)/2,MRANDOM(-2,2)/2,MRANDOM(-2,2)/2)
						elseif A == true then
							c.CFrame = c.CFrame*CF(MRANDOM(-2,2)/2,MRANDOM(-2,2)/2,MRANDOM(-2,2)/2)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end

function ApplyAoE(POSITION,RANGE,ISBANISH)
	return true
end

SSExit = New("Part",hello,"SSExit",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0, 0.0, 0.299999803),CFrame = CFrame.new(0.0000076, 0.67517471, 0.1282616, 0, 0, 0, -0.173647001, 0.984807968, 0, -0.984807968, -0.173647001, 0),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",SSExit,"Weld",{Part0 = SSExit,Part1 = hello,C0 = CFrame.new(0, 0, 0, 0, 0, 0.5, 0, 0.984807968, -0.173647001, 1, 0, 0),C1 = CFrame.new(-0.567811257, 0.3, 0.299995422, 0, -0.173647001, -0.984807968, 0, 0.984807968, -0.173647001, 1, 0, 0),})

EffectModel = Create("Model"){
Parent = Character,
Name = "Effects",
}

MOUSEHOLD = false



SHOOTSOUND = Instance.new("Sound", BRO)
SHOOTSOUND.Volume = 5
SHOOTSOUND.Looped = true
SHOOTSOUND.SoundId = "rbxassetid://146830885"

SPINSOUND = Instance.new("Sound", BRO)
SPINSOUND.Volume = 2.5
SPINSOUND.Looped = true
SPINSOUND.SoundId = "rbxassetid://2028334518"


function whenthemewhen()
	CreateSound(4473138327,Torso,3,1,false)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
				BODYWELD.C0 = CF(0,0.5,0.3) * ANGLES(RAD(0), RAD(90), RAD(0))
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(40)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4, 0) * ANGLES(RAD(-17), RAD(40), RAD(0)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 0 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(0), RAD(0), RAD(-40)), 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.3, 0.3, -0.8) * ANGLES(RAD(100), RAD(-70), RAD(30)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 35), -0.01) * ANGLES(RAD(0), RAD(87), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 35), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				end
	repeat
		StartShake({
					Duration=.1;
					Intensity=2;
					Position=Vector3.new(.1,.1,.1);
					Rotation=Vector3.new(.2,.2,.2);
        })
		for i=0, 0.5, 0.1 / Animation_Speed do
		        Swait()
				BODYWELD.C0 = CF(0,0.5,0.3) * ANGLES(RAD(0), RAD(90), RAD(0))
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(40)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4, 0) * ANGLES(RAD(-17), RAD(40), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 0 + 0.1 * COS(SINE / 35)) * ANGLES(RAD(0), RAD(0), RAD(-40)), 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.3, 0.3, -0.8) * ANGLES(RAD(100), RAD(-70), RAD(30)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 35), -0.01) * ANGLES(RAD(0), RAD(87), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 35), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				Fire3.Enabled=true
				Fire4.Enabled=true
				Fire5.Enabled=true
				Fire6.Enabled=true
		SPINNING = true
		SHOOTSOUND:Resume()
		SPINSOUND:Resume()
		turnto(Mouse.Hit.Position)
		local RANDOM = MRANDOM(1, 2)
		if RANDOM == 1 then
			Fire:Emit(5)
			local POS1 = CF(Fire.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		elseif RANDOM == 2 then
			Fire2:Emit(5)
			local POS1 = CF(Fire2.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire2.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire2.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire2.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire2.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		elseif RANDOM == 3 then
			Fire3:Emit(5)
			local POS1 = CF(Fire3.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire3.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire3.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire3.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire3.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		elseif RANDOM == 4 then
			Fire4:Emit(5)
			local POS1 = CF(Fire4.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire4.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire4.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire4.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire4.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		elseif RANDOM == 5 then
			Fire5:Emit(5)
			local POS1 = CF(Fire5.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire5.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire5.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire5.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire5.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		elseif RANDOM == 6 then
			Fire6:Emit(5)
			local POS1 = CF(Fire6.Parent.WorldPosition,Mouse.Hit.p)*CF(0,0,-45).p
			local AIMPOS = CF(Fire6.Parent.WorldPosition,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
			local HIT,POS = CastProperRay(Fire6.Parent.WorldPosition,AIMPOS,1000,Character)
			local DISTANCE = (POS - Fire6.Parent.WorldPosition).Magnitude
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
			WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(0.1,0.1,DISTANCE), Size2 = VT(0.05,0.05,DISTANCE), Transparency = 0, Transparency2 = 1, CFrame = CF(Fire6.Parent.WorldPosition,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
	until MOUSEHOLD == false
				Fire3.Enabled=false
				Fire4.Enabled=false
				Fire5.Enabled=false
				Fire6.Enabled=false
	CreateSound(4498806901,Head,6,1,false)
	CreateSound(4473119880,Torso,3,1,false)
	SHOOTSOUND:Stop()
	SPINSOUND:Stop()
	SPINNING = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//
local sec=0
local sec1=0

SPINNING = false

function MouseDown(Mouse)
	MOUSEHOLD = true
	if ATTACK==false then
		whenthemewhen()
	end
end

function MouseUp(Mouse)
	MOUSEHOLD = false
end

function KeyDown(Key)
	if Key ~= "w" and Key ~= "a" and Key ~= "s" and Key ~= "d" then
		KEYHOLD = true
		if Key == "q" and ATTACK == false then
 		elseif Key == "l" and muting==false then
			muting=true
        elseif Key == "l" and muting==true then
			muting=false
		 end
	  end
   end

function KeyUp(Key)
	if Key ~= "w" and Key ~= "a" and Key ~= "s" and Key ~= "d" then
		KEYHOLD = false
	end
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


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local Blocc = CreatePart(0,RightArm,"Neon",1,1,BrickColor.Random(),"aa",VT(0.005,0.005,0.005),false)
local BW = CreateWeldOrSnapOrMotor("Weld",RightArm,RightArm,Blocc,CF(0,-2,0),CF(0,0,0))

local BLINKLOOP = 0
ANIMATE.Parent = nil

local bguis = Instance.new("BillboardGui",Torso)
bguis.Size = UDim2.new(25, 0, 25, 0)
local imgca = Instance.new("ImageLabel",bguis)
imgca.BackgroundTransparency = 1
imgca.ImageTransparency = 1
imgca.Size = UDim2.new(3,0,3,0)
imgca.Image = "rbxassetid://0"
imgca.ImageColor3 = Color3.new(0,0,0)
local EFFECTPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)

local infrotate = 0.1

ROTATE = 0

game:GetService"RunService".RenderStepped:Connect(function()
	ROTATE = ROTATE + 25
	if SPINNING == true then
		Tween(SPINJOINT, {C0 = ANGLES(RAD(ROTATE), 0, 0)}, .1, "Linear", "Out", 0, false, 0)
		coroutine.resume(coroutine.create(function()
			local hitm = script.Things.Shell:Clone()
			hitm.Parent = EffectModel
			hitm.CFrame = SSExit.CFrame * CFrame.Angles(math.rad(math.random(-360, 360)),math.rad(math.random(-360, 360)),math.rad(math.random(-360, 360)))
			hitm.Velocity = RootPart.CFrame.rightVector*30+Vector3.new(MRANDOM(-5, 5),15,MRANDOM(-5, 5))
			wait(1)
			for i = 0,1,.1 do
				swait()
				hitm.Transparency = i
			end
			hitm:Destroy()
		end))
	elseif SPINNING == false then
		Tween(SPINJOINT, {C0 = ANGLES(0, 0, 0)}, 1.2, "Linear", "Out", 0, false, 0)
	end
end)

while true do
	Swait()
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	ANIMATE.Parent = nil
	SINE = SINE + CHANGE*2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
	if FULL == false then
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), .5 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), .5 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.2) * ANGLES(RAD(-20), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, .5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.2) * ANGLES(RAD(-20), RAD(0), RAD(15)) * LEFTSHOULDERC0, .5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5, -0.5) * ANGLES(RAD(-15), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), .5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), .5 / Animation_Speed)
            end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = 'Fall'
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), .5 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), .5 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-10), RAD(0), RAD(25)) * RIGHTSHOULDERC0, .5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-10), RAD(0), RAD(-25)) * LEFTSHOULDERC0, .5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5, -0.5) * ANGLES(RAD(-15), RAD(80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), .5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-4), RAD(0), RAD(0)), .5 / Animation_Speed)
            end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			ANIM = "Idle"
			if ATTACK == false then
				BODYWELD.C0 = CF(0,0.5,0.3) * ANGLES(RAD(0), RAD(90), RAD(0))
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 5.5* SIN(SINE / 60)), RAD(10), RAD(40)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4, 0) * ANGLES(RAD(30), RAD(40), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 0 + 0.05 * COS(SINE / 60)) * ANGLES(RAD(-10), RAD(10), RAD(-40)), 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.3, 0.3, -0.8) * ANGLES(RAD(150), RAD(-70), RAD(40)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 60), -0.01) * ANGLES(RAD(-20), RAD(87), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 60), -0.01) * ANGLES(RAD(-12), RAD(-75), RAD(0)) * ANGLES(RAD(-7), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		    end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			ANIM = "Walk"
			if ATTACK == false then
				local Testwalk1 = Humanoid.MoveDirection*Torso.CFrame.LookVector
	            local Testwalk2 = Humanoid.MoveDirection*Torso.CFrame.RightVector
	            LOOKVEC = Testwalk1.X+Testwalk1.Z
	            RIGHTVEC = Testwalk2.X+Testwalk2.Z
		        local RIGHTHIPSECOND = CF(LOOKVEC/10 * COS(SINE / 18),0,0)*ANGLES(SIN(RIGHTVEC/5) * COS(SINE / 18),0,SIN(-LOOKVEC/2) * COS(SINE / 18))
		        local LEFTHIPSECOND = CF(-LOOKVEC/10 * COS(SINE / 18),0,0)*ANGLES(SIN(RIGHTVEC/5) * COS(SINE / 18),0,SIN(-LOOKVEC/2) * COS(SINE / 18))
				BODYWELD.C0 = CF(0,0.5,0.3) * ANGLES(RAD(0), RAD(90), RAD(0))
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.4, 0) * ANGLES(RAD(30), RAD(40), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
	 			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2* SIN(SINE / 10)), RAD(0), RAD(40)), 0.8 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.3, 0.3, -0.8) * ANGLES(RAD(150), RAD(-70), RAD(40)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1 , -0.185 + 0.055 * COS(SINE / 10) + -SIN(SINE / 10) / 8) * ANGLES(RAD((LOOKVEC  - LOOKVEC/5  * COS(SINE / 10))*10), RAD((-RIGHTVEC - -RIGHTVEC/5  * COS(SINE / 10))*5) , RAD(-40)), 0.8 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1+ 0.2 * SIN(SINE / 18), -0.5)* ANGLES(RAD(0),RAD(120),RAD(0))*RIGHTHIPSECOND*ANGLES(RAD(0),RAD(0),RAD(0 - 5 * COS(SINE / 18))), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.3, -0.8- 0.2 * SIN(SINE / 18), -.05)* ANGLES(RAD(0),RAD(-50),RAD(0))*LEFTHIPSECOND*ANGLES(RAD(-5),RAD(0),RAD(0 - 5 * COS(SINE / 18))), 0.8 / Animation_Speed)
            end
		end
	end
	if Rooted == false then
		Disable_Jump = false
		Humanoid.JumpPower = 0
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://1138145518" --song here
	sick.Looped = true
	sick.Pitch = PITCH
	sick.Volume = VOLUME
	sick.Playing = true
	sick.EmitterSize = 25
	if sick.Parent ~= Torso then
		print("Fixing music")
		sick = IT("Sound", Torso)
	    sick.SoundId = "rbxassetid://1138145518" --song here
		sick.Looped = true
		sick.Pitch = PITCH
		sick.Volume = VOLUME
		sick.Playing = true
		sick.EmitterSize = 25
		sick.TimePosition = TIMESTAMP
		FIXING = true
	elseif FIXING == false then
		TIMESTAMP = sick.TimePosition
	else
		FIXING = false
	end
    if muting==false then
    sick.Volume = VOLUME
    else
	sick.Volume = 0
	end
	Humanoid.DisplayDistanceType = "None"
	Humanoid.PlatformStand = false
	Humanoid.Sit = false
end
--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--