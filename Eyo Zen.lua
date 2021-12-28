-----------------------
--[[ Name : Eyozen, the Eye ]]--
-------------------------------------------------------

--[[ "Haha, I'm a funny guy, but once you anger me..." ]]--
	--[[ "There's no coming back =)" ]]--

--A script By makhail07

--Discord Creterisk#2958 

--NOTE THIS SCRIPT WAS PURELY MADE FROM MY FUCKING IMAGINATION
--IF IT HAPPENS TO LOOK LIKE ANOTHER SCRIPT
--DONT CALL IT A FUCKING BOOTLEG THANK YOU AND ENJOY THE SCRIPT
--YOU FUCKING SKIDS,
--For Those who log/decompile this, If you sell or trade this,
--and I find out who you are, i will take massive action.
-------------------------------------------------------
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
local FavIDs = {
	340106355, --Nefl Crystals
	927529620, --Dimension
	876981900, --Fantasy
	398987889, --Ordinary Days
	1117396305, --Oh wait, it's you.
	885996042, --Action Winter Journey
	919231299, --Sprawling Idiot Effigy
	743466274, --Good Day Sunshine
	727411183, --Knife Fight
	1402748531, --The Earth Is Counting On You!
	595230126 --Robot Language
	}

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

--The reality of my life isn't real but a Universe -makhail07
wait()
local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
local char = game.Workspace.non
local hum = char.Humanoid
hum.WalkSpeed = 35
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Institutional white")

-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
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
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
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
		if m00 < m11 then
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
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
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
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
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
				vp.Parent = hit.Parent.Torso
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
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
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
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
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
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
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
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
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
    end
  },
  Cylinder = {
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
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
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
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
    end
  }
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
	local fp = IT("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = tors.Position 
	RemoveOutlines(fp)
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh = IT(Mesh) 
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
	if meshid ~= "nil" then
		mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

function Magic(bonuspeed, type, pos, scale, value, color, MType)
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
	rngm.MeshType = MType
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
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
		end
		rng:Destroy()
	end))
end

function Eviscerate(dude)
    print("no")
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
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
	rngm.MeshType = MType
	rngm.Scale = Vector3.new(x1, y1, z1)
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
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = IT("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end
function CameraEnshaking(Length, Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1 * Intensity
		local rotM = 0.01 * Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05 * Intensity / Length
			rotM = rotM - 5.0E-4 * Intensity / Length
			hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
			cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
		end
		hum.CameraOffset = Vector3.new(0, 0, 0)
	end))
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------


-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
local SONG = 1494452913
local SONG2 = 1130685064
local Music = Instance.new("Sound",tors)
Music.Volume = 2.5
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
----------------------------------------------------------------------------------
hum.WalkSpeed = 35
hum.JumpPower = 57
hum.Animator.Parent = nil
----------------------------------------------------------------------------------
local naeeym2 = IT("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = hed
naeeym2.Name = "Name"
--naeeym2.PlayerToHideFrom = Player
local tecks2 = IT("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Eyo-zen"
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.fromRGB(177, 167, 255)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2
local top = Instance.new("Shirt")
top.ShirtTemplate = "rbxassetid://338740550"
top.Parent = char
top.Name = "Cloth"
local bottom = Instance.new("Pants")
bottom.PantsTemplate = "rbxassetid://338750779"
bottom.Parent = char
bottom.Name = "Cloth"
----------------------------------------------------------------------------------
--[[
		Thanks for using Build-To-Lua by jarredbcv.
]]--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Eyo = New("Model",char,"Eyo",{})
Eye = New("Part",Eyo,"Eye",{BrickColor = BrickColor.new("Institutional white"),Shape = Enum.PartType.Ball,Size = Vector3.new(1.96000075, 1.96000075, 1.96000075),CFrame = CFrame.new(-137.175568, 1.33095813, -17.0833168, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Pupil = New("Part",Eyo,"Pupil",{BrickColor = BrickColor.new("Black"),Shape = Enum.PartType.Ball,Size = Vector3.new(0.37000075, 0.37000075, 0.37000075),CFrame = CFrame.new(-137.235779, 1.42530513, -18.0334377, 1.00000072, -7.15256022e-07, 3.57628181e-07, -7.15256022e-07, 1.00000036, 2.01165761e-07, 3.57628181e-07, 2.01165761e-07, 1.00000215),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Pupil,"mot",{Part0 = Pupil,Part1 = Eye,C0 = CFrame.new(0, 0, 0, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),C1 = CFrame.new(-0.0602111816, 0.0943470001, -0.950120926, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),})
TopHat2 = New("Part",Eyo,"TopHat2",{BrickColor = BrickColor.new("Really black"),Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.0500000007, 1, 1),CFrame = CFrame.new(-137.740799, 2.24810791, -17.0272255, 0.458347857, 0.877660632, -0.140108809, -0.888243496, 0.446898967, -0.106327571, -0.0307050757, 0.173186749, 0.984412611),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",TopHat2,"mot",{Part0 = TopHat2,Part1 = Eye,C0 = CFrame.new(0, 0, 0, 0.458347201, -0.88824302, -0.0307050198, 0.877660394, 0.446899265, 0.173186243, -0.140109047, -0.106327735, 0.98441118),C1 = CFrame.new(-0.565231323, 0.917149663, 0.0560913086, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),})
TopHat1 = New("Part",Eyo,"TopHat1",{BrickColor = BrickColor.new("Really black"),Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.54000056, 1.80000043, 0.780000567),CFrame = CFrame.new(-138.100586, 2.94428444, -17.0250435, 0.457500041, 0.889210463, 3.57628181e-07, -0.88921082, 0.45749861, 2.01165761e-07, -1.52640816e-08, 4.10039718e-07, 1.00000215),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",TopHat1,"mot",{Part0 = TopHat1,Part1 = Eye,C0 = CFrame.new(0, 0, 0, 0.457499385, -0.889210343, -5.08804376e-09, 0.889210224, 0.457498908, 1.36679802e-07, 1.1920929e-07, 6.70552254e-08, 1.00000072),C1 = CFrame.new(-0.925018311, 1.61332572, 0.0582733154, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),})
OuterPupil = New("Part",Eyo,"OuterPupil",{BrickColor = BrickColor.new("Alder"),Material = Enum.Material.Neon,Shape = Enum.PartType.Ball,Size = Vector3.new(1.0000006, 1.0000006, 1.0000006),CFrame = CFrame.new(-137.20755, 1.40179217, -17.6748943, 1.00000072, -7.15256022e-07, 3.57628181e-07, -7.15256022e-07, 1.00000036, 2.01165761e-07, 3.57628181e-07, 2.01165761e-07, 1.00000215),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.705882, 0.501961, 1),})
mot = New("Motor",OuterPupil,"mot",{Part0 = OuterPupil,Part1 = Eye,C0 = CFrame.new(0, 0, 0, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),C1 = CFrame.new(-0.0319824219, 0.0708340406, -0.59157753, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),})
TopHat3 = New("Part",Eyo,"TopHat3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.779999912, 0.5, 0.769999981),CFrame = CFrame.new(-138.460098, 3.63034701, -17.0150394, -0.258819818, -0.455481321, 0.851792634, -5.44427401e-08, 0.881841302, 0.471547186, -0.965928435, 0.122045919, -0.228237376),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",TopHat3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",TopHat3,"mot",{Part0 = TopHat3,Part1 = Eye,C0 = CFrame.new(0, 0, 0, -0.258819461, -4.83165614e-08, -0.965926886, -0.455480665, 0.881840825, 0.122045726, 0.851792514, 0.471547544, -0.228237316),C1 = CFrame.new(-1.28453064, 2.29938841, 0.068277359, 1.00000024, -2.38418579e-07, 1.1920929e-07, -2.38418579e-07, 1.00000012, 6.70552254e-08, 1.1920929e-07, 6.70552254e-08, 1.00000072),})

local NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local HW = NewInstance('Weld',char,{Part0=tors, Part1=Eye, C0 = CF(0,4,0) * angles(0,0,0)})
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

hed.Transparency = 1
hed.face:Remove()
-------------------------------------------------------
--End Customization--
-------------------------------------------------------


-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
function Taunt1()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 9, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(15), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(0), Rad(78), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(15)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-78), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-15)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-9), Rad(0), Rad(155 + 25 * Sin(sine / 2.5))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	attack = false
	hum.WalkSpeed = 35
end
function Taunt2()
	attack = true
	hum.WalkSpeed = 0
	--Cso("221057812", hed, 10, 1.1)
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, .2 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 2) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.15)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1.2 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1.2 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 4 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0 - 255.45 * i), Rad(0), Rad(0)), 0.15)
	end
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.5 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.6 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 1.8, 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	attack = false
	hum.WalkSpeed = 35
end
function Astigmatism()
	attack = true
	hum.WalkSpeed = 0
	local Ring1 = Instance.new("Part", char)
	Ring1.Anchored = true
	Ring1.BrickColor = maincolor
	Ring1.CanCollide = false
	Ring1.FormFactor = 3
	Ring1.Name = "Ring"
	Ring1.Material = "Neon"
	Ring1.Size = Vector3.new(1, 0.05, 1)
	Ring1.Transparency = 1
	Ring1.TopSurface = 0
	Ring1.BottomSurface = 0
	local Ring1Mesh = Instance.new("SpecialMesh", Ring1)
	Ring1Mesh.MeshType = "Brick"
	Ring1Mesh.Name = "SizeMesh"
	Ring1Mesh.Scale = Vector3.new(0, 1, 0)
	local InnerRing1 = Ring1:Clone()
	InnerRing1.Parent = char
	InnerRing1.Transparency = 0
	InnerRing1.BrickColor = BrickColor.new("New Yeller")
	InnerRing1.Size = Vector3.new(1, 1, 1)
	local InnerRing1Mesh = InnerRing1.SizeMesh
	InnerRing1Mesh.Scale = Vector3.new(0, 0, 0)
	InnerRing1Mesh.MeshType = "Sphere"
	Ring1:Destroy()
	for i = 0, 6, 0.1 do
		swait()
		--orb.CFrame = Pupil.CFrame
		Aura(7, 0.12, "Add", Pupil.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0, "Sphere")
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 1) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(165 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-165 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 3 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	InnerRing1.Transparency = 1
	InnerRing1.CFrame = Pupil.CFrame + root.CFrame.lookVector * 5
	Cso("294188875", char, 2.3, 1)
	local a = IT("Part", char)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = BrickC("Pastel violet")
	a.Material = "SmoothPlastic"
	a.Transparency = 0
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = IT("Part", char)
	a2.Name = "Direction"
	a2.Anchored = true
	a2.BrickColor = maincolor
	a2.Color = maincolor.Color
	a2.Material = "Neon"
	a2.Transparency = 0.7
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = IT("Part", char)
	ba.Name = "HitDirect"
	ba.Anchored = true
	ba.BrickColor = maincolor
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (InnerRing1.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
	a.CFrame = a.CFrame * angles(0, Rad(90), 0)
	a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
	game:GetService("Debris"):AddItem(a, 20)
	game:GetService("Debris"):AddItem(a2, 20)
	game:GetService("Debris"):AddItem(ba, 20)
	local msh = Instance.new("SpecialMesh", a)
	msh.MeshType = "Brick"
	msh.Scale = Vector3.new(1, 5, 5)
	local msh2 = Instance.new("SpecialMesh", a2)
	msh2.MeshType = "Brick"
	msh2.Scale = Vector3.new(1, 7, 7)
	for i = 0, 10, 0.1 do
		swait()
		CameraEnshaking(1, 5)
		a2.Color = maincolor.Color
		root.CFrame = FaceMouse()[1]
		InnerRing1.CFrame = Pupil.CFrame + root.CFrame.lookVector * 4
		ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (InnerRing1.CFrame.p - position).magnitude
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
		a.CFrame = a.CFrame * angles(0, Rad(90), 0)
		a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
		msh.Scale = msh.Scale - Vector3.new(0, 0.05, 0.05)
		msh2.Scale = msh2.Scale - Vector3.new(0, 0.03, 0.03)
		Aura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0, "Sphere")
		for i, v in pairs(FindNearestHead(ba.CFrame.p, 14.5)) do
		if v:FindFirstChild("Head") then
				Eviscerate(v)
			end
		end
	end
	a:Destroy()
	a2:Destroy()
	ba:Destroy()
	InnerRing1:Destroy()
	attack = false
	hum.WalkSpeed = 35
	hum.CameraOffset = Vector3.new(0,0,0)
end
function EyeThrow()
	attack = true
	hum.WalkSpeed = 3.01
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.7 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(215 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
    local Head01 = Eye:Clone()
    Head01.Parent = char
	Eye.Transparency = 1
    local weldHead01 = IT("Weld")
    weldHead01.Parent = Head01
	weldHead01.Part0 = ra
    weldHead01.Part1 = Head01
	weldHead01.C1 = CF(0, 0, 1.2) * angles(Rad(90), Rad(0), Rad(0))
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(-20)), 0.2)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(20)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(145 + 2.5 * Sin(sine / 20))), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(25), Rad(0), Rad(-15)), 0.2)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(20), Rad(0)), 0.1)
	end
	local A = IT("Attachment",Head01)
	A.Position = Vector3.new(-0, 0.2, 0.136)
	local B = IT("Attachment",Head01)
	B.Position = Vector3.new(-0, -0.95, -0.982)
	local Trail = IT("Trail",Head01)
	Trail.Attachment0 = B
	Trail.Attachment1 = A
	Trail.Lifetime = 0.6
	Trail.Transparency = NumberSequence.new(0.5, 1)
	Trail.Texture = "http://www.roblox.com/asset/?id=1472703539"
	Trail.Enabled = true
	weldHead01:Destroy()
        Head01.CanCollide = true
        local bodyVelocity2 = Create("BodyVelocity")({
          velocity = (mouse.Hit.p - Head01.CFrame.p).unit * 165,
          P = 5000,
          maxForce = Vector3.new(8000, 8000, 8000),
          Parent = Head01
        })
       game:GetService("Debris"):AddItem(bodyVelocity2, 0.05)
		Head01.Touched:connect(function(hit)
			if(not char:IsAncestorOf(hit))then
				local hum = (hit and hit.Parent and hit.Parent:FindFirstChildOfClass'Humanoid')
				local hedder = (hit and hit.Parent and hit.Parent:FindFirstChild'Head')
				if(hum and hedder and hum.Health > 0)then
				Eviscerate(hit.Parent)
			Cso("491296320", hit.Parent.Torso, 10, 1)
			end
		end
	end)
	for i = 0, 2, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(40)), 0.2)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(-40)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-134), Rad(0), Rad(145 + 2.5 * Sin(sine / 20))), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.1)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(-40), Rad(0)), 0.2)
	end
	for i = 0, 6, 0.1 do
		swait()
		Eye.Transparency = Eye.Transparency - 0.05
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(40)), 0.2)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(-40)), 0.2)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.2)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-134), Rad(0), Rad(145 + 2.5 * Sin(sine / 20))), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(-15)), 0.2)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(-40), Rad(0)), 0.1)
	end
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1.8, 0.05 do
			swait()
			Head01.Transparency = i
		end
		Head01:Destroy()
	end))
	--Head01:Destory()
	attack = false
	Trail.Enabled = false
	hum.WalkSpeed = 35
end
function Call_Upon_The_Eyes()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(145), Rad(0), Rad(15 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 3.5 + 0.2 * Cos(sine / 20), 0) * angles(Rad(90), Rad(0), Rad(0)), 0.1)
	end
	Magic(5, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
	Magic(10, "Add", mouse.Hit * CFrame.new(0, -2.9, 0), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
	Magic(1, "Add", mouse.Hit, Vector3.new(1, 100000, 1), 0.5, maincolor, "Sphere")
	Magic(1, "Add", mouse.Hit, Vector3.new(1, 1, 1), 0.75, maincolor, "Sphere")
	CameraEnshaking(4, 25)
	for i, v in pairs(FindNearestHead(mouse.Hit.p, 14.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.4 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(45), Rad(0), Rad(15 + 2.5 * Sin(sine / 20))), 0.2)
		LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 3 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0 - 255.45 * i), Rad(0), Rad(0)), 0.15)
	end
	attack = false
	hum.WalkSpeed = 35
end
function Eyeyeyeyeyeyey_Slammo()
	attack = true
	hum.WalkSpeed = 0
	local Blobby = IT("Part", char)
	Blobby.Name = "Blob"
	Blobby.CanCollide = false
	Blobby.BrickColor = BrickC("Really black")
	Blobby.Transparency = 0
	Blobby.Material = "Plastic"
	Blobby.Size = Vector3.new(1, 1, 2)
	Blobby.TopSurface = Enum.SurfaceType.Smooth
	Blobby.BottomSurface = Enum.SurfaceType.Smooth

	local Weld = IT("Weld", Blobby)
	Weld.Part0 = hed
	Weld.Part1 = Blobby
	Weld.C1 = CF(0, -17.6, 1.4)
	Weld.C0 = angles(Rad(0),0,0)

	local M2 = IT("SpecialMesh")
	M2.Parent = Blobby
	M2.MeshId = "http://www.roblox.com/asset/?id=1185246"
	M2.TextureId = "http://www.roblox.com/asset/?id=28301750"
	M2.Scale = Vector3.new(45.65, 45.65, 45.65)
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.2)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 1) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(165 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-165 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	Magic(1, "Add", root.CFrame * CF(0, -1.9, -20), Vector3.new(1, 1, 1), 0.75, maincolor, "Sphere")
	Magic(5, "Add", root.CFrame * CF(0, -1.9, -20), Vector3.new(0, 0, 0), 1, maincolor, "Sphere")
	Magic(10, "Add", root.CFrame * CF(0, -1.9, -20), Vector3.new(0, 0, 0), 2, maincolor, "Sphere")
	for i, v in pairs(FindNearestHead(root.CFrame.p, 25.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
		end
	end
	CameraEnshaking(4, 25)
	for i = 0, 6, 0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(90 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
		neck.C0 = clerp(neck.C0, necko * CF(0, 0, 1) * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1.3 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(90)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -1.3 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-90)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(165 + 2.5 * Sin(sine / 20))), 0.12)
		LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.06 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-35), Rad(0), Rad(-165 + 2.5 * Sin(sine / 20))), 0.12)
		HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
	end
	Blobby:Destroy()
	attack = false
	hum.WalkSpeed = 35
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == 't' then
			Taunt1()
		elseif key == 'y' then
			Taunt2()
		elseif key == 'z' then
			Astigmatism()
		elseif key == 'x' then
			EyeThrow()
		elseif key == 'c' then
			Call_Upon_The_Eyes()
		elseif key == 'v' then
			Eyeyeyeyeyeyey_Slammo()
		end
	end
end)


 






-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = .5
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, -.2* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-2 + 2 * Cos(sine / 12)), Rad(-74), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(-4)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.06 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
				HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(3 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(6 - 2.5 * Sin(sine / 7)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.8 - 0.5 * Cos(sine / 7) / 2, 0.6 * Cos(sine / 7) / 2)  * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1, -0.8 + 0.5 * Cos(sine / 7) / 2, -0.6 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 3 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(-25 + 2.5 * Sin(sine / 20)), Rad(-55 + 2.5 * Sin(sine / 20))), 0.12)
				LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.3 + 0.02 * Sin(sine / 20)* Player_Size, .6* Player_Size) * angles(Rad(-35), Rad(25 + 2.5 * Sin(sine / 20)), Rad(55 + 2.5 * Sin(sine / 20))), 0.12)
				HW.C0 = clerp(HW.C0, CF(0, 2 + 0.2 * Cos(sine / 20), 0) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if attack == false then
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-2.5 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         	LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.7 * Cos(sine / 7) / 2) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 30), 0.34 * Cos(sine / 7)) * angles(Rad(110)  * Cos(sine / 7) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 30), -0.34 * Cos(sine / 7)) * angles(Rad(-110)  * Cos(sine / 7) , Rad(0) ,	Rad(-13) + la.RotVelocity.Y / 75), 0.15)
			end
		end
	end
	for _, c in pairs(char:GetChildren()) do
		if c.ClassName == "Part" and c.Name ~= "Detail" then
			--c.Material = "Fabric"
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			if c ~= hed then
				--c.Color = C3(0,0,0)
			else
				c.Color = Color3.new(1,1,1)
			end
		elseif c.ClassName == "CharacterMesh" or c.ClassName == "Accessory" or c.Name == "Body Colors" then
			print("hola")
		elseif (c.ClassName == "Shirt" or c.ClassName == "Pants") and c.Name ~= "Cloth" then
			c:remove()
		end
	end
	Music.SoundId = "rbxassetid://"..SONG
	Music.Looped = true
	Music.Pitch = 1
	Music.Volume = 5
	Music.Parent = tors
	Music:Resume()
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
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
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
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------