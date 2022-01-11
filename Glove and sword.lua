loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
--[[NIGHTOWLACE_WEAPONRY]]--
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = game.Workspace.non
local Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 25
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

function clerp(a, b, t)
	return a:lerp(b, t)
end

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
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

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

--[[ Credits to Fenrier for Outline-Remover, Part, Mesh, Weld, Raycase and Sound Creation functions ]]--

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
end
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function CreateBillBoardGui(Img, Pos, Siz) --returns a basic billboard gui object for further manipulation
	local billpar = Create("Part"){
		Transparency = 1,
		Size = Vector3.new(1, 1, 1),
		Anchored = true,
		CanCollide = false,
		CFrame = CFrame.new(Pos),
		Name = "BillboardGuiPart",
	}
	local bill = Create("BillboardGui"){
		Parent = billpar,
		Adornee = billpar,
		Size = UDim2.new(1, 0, 1, 0),
		SizeOffset = Vector2.new(Siz, Siz),
	}
	local d = Create("ImageLabel"){
		Parent = bill,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Image = Img,
	}
	return billpar
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local S = Create("Sound"){
			Volume = vol,
			Pitch = pit or 1,
			SoundId = id,
			Parent = par or workspace,
		}
		swait() 
		S:play() 
		game:GetService("Debris"):AddItem(S, 6)
	end))
end

local function GetNearest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

--[[ Credits to Kert109 (Ninja_Deer) for the Damage function. Fenrier for the Magnitude Damage ]]--

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("DebounceHit")
			if not find then
				if v.Parent:findFirstChild("Head") then
					local BillG = Create("BillboardGui"){
						Parent = v.Parent.Head,
						Size = UDim2.new(1, 0, 1, 0),
						Adornee = v.Parent.Head,
						StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
					}
					local TL = Create("TextLabel"){
						Parent = BillG,
						Size = UDim2.new(3, 3, 3, 3),
						BackgroundTransparency = 1,
						Text = tostring(damage).."-",
						TextColor3 = Color1.Color,
						TextStrokeColor3 = Color2.Color,
						TextStrokeTransparency = 0,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						FontSize = Enum.FontSize.Size18,
						Font = "ArialBold",
					}
					coroutine.resume(coroutine.create(function()
						swait(1)
						for i = 0, 1, .1 do
							swait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = "DebounceHit",
				}
				if HSound ~= nil and HPitch ~= nil then
					CreateSound(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end

function MagnitudeDamage(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damage(head.Parent, math.random(mindam, maxdam), 0, Color1, Color2, HSound, HPitch)
				end
			end
		end
	end
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(3.20000005, 0.320000023, 0.200000003))
HandleWeld = CreateWeld(m, Character["Torso"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57640076, -0.105987549, -0.672006607, 0.866025388, 0.500000119, -8.94076351e-008, -0.500000119, 0.866025388, 1.49014454e-007, 1.51936518e-007, -8.43464605e-008, 1))
CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(1.92000008, 0.320000023, 0.200000003))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1))
BladeHitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladeHitbox", Vector3.new(6.87999964, 1.28000009, 0.320000023))
BladeHitboxWeld = CreateWeld(m, FakeHandle, BladeHitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.83992767, 7.62939453e-006, 0.00178432465, 1.00000012, 0, 1.78815313e-007, 0, -1.00000012, 2.0861782e-007, 1.78815299e-007, -2.0861782e-007, -1))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePrt", Vector3.new(6.71999979, 0.640000045, 0.200000003))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.75999451, 0.320018768, -9.53674316e-007, -1.00000012, 0, -6.70215812e-008, 0, -1.00000012, 3.87433118e-007, -6.70215812e-008, 3.87433118e-007, 1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.0104, 0.0104, 0.00800000038))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "BladePrt", Vector3.new(4.96000051, 0.320000023, 0.480000019))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.35999298, 0.176017761, -9.53674316e-007, -1.00000012, 0, -8.74827464e-008, 0, -1.00000012, 4.61938924e-007, -8.74827464e-008, 4.61938953e-007, 1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.00879999995, 0.00560000027, 0.0160000008))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "BladePrt", Vector3.new(6.71999979, 0.320000023, 0.200000003))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.75999451, 0.159992218, 9.53674316e-007, -1, 1.49011612e-007, -9.26303798e-008, 1.49011612e-007, 1, -4.17235356e-007, 9.26303159e-008, -4.17235412e-007, -1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.00960000046, 0.00520000001, 0.00960000046))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "BladePrt", Vector3.new(6.71999979, 0.320000023, 0.200000003))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.75999451, 0.160015106, 0, -1.00000012, 0, -8.7701622e-008, 0, -1.00000012, 3.87433118e-007, -8.7701622e-008, 3.87433118e-007, 1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.00960000046, 0.00520000001, 0.00960000046))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePrt", Vector3.new(4.32000065, 0.200000003, 0.480000019))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.5599823, 0.0879821777, 0, -1.00000012, 0, -8.89660754e-008, 0, 1.00000012, -5.36444873e-007, 8.89660896e-008, -5.36444816e-007, -1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.0064000003, 0.00320000015, 0.0200000014))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "BladePrt", Vector3.new(4.96000004, 0.320000023, 0.480000019))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36000061, 0.167987823, 9.53674316e-007, -1, 1.49011612e-007, -9.26303798e-008, 1.49011612e-007, 1, -4.17235356e-007, 9.26303159e-008, -4.17235412e-007, -1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.00879999995, 0.00560000027, 0.0160000008))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePrt", Vector3.new(6.71999979, 0.640000045, 0.200000003))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.76000214, 0.319988251, -9.53674316e-007, -1.00000012, 2.68220901e-007, -1.42108547e-014, 2.68220901e-007, 1.00000012, -2.9802888e-007, -6.59472477e-014, -2.9802888e-007, -1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.0104, 0.0104, 0.00800000038))
BladePrt = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "BladePrt", Vector3.new(4.32000065, 0.200000003, 0.480000019))
BladePrtWeld = CreateWeld(m, FakeHandle, BladePrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.5599823, 0.112014771, -9.53674316e-007, -1.00000012, 0, -8.74827464e-008, 0, -1.00000012, 4.61938924e-007, -8.74827464e-008, 4.61938953e-007, 1))
CreateMesh("SpecialMesh", BladePrt, Enum.MeshType.FileMesh, "rbxassetid://433431848", Vector3.new(0, 0, 0), Vector3.new(0.0064000003, 0.00320000015, 0.0200000014))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.59932709, 0.159358978, 1.23977661e-005, 1.00000012, 0, 0, 0, -1.00000012, 0, 0, 0, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.59998322, 0.0799942017, -9.53674316e-007, -1, 1.49011612e-007, -9.10118445e-007, 1.49011612e-007, 1, -5.66248389e-007, 9.10118445e-007, -5.66248559e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.59931946, -0.160633087, 1.23977661e-005, 1.00000012, 0, 0, 0, -1.00000012, 0, 0, 0, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(3.20000005, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-006, 0.079990387, 0, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.960000038, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.83992767, 1.14440918e-005, 0.00178432465, 1.00000012, 0, 1.78815313e-007, 0, -1.00000012, 2.0861782e-007, 1.78815299e-007, -2.0861782e-007, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.320000023, 3.20000005, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.160007477, 7.62939453e-006, 0, 0, -1.00000012, 0, -1.00000012, 0, 1.42108547e-014, -1.42108547e-014, 7.10542736e-015, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(3.20000005, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0800018311, 0, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.320007324, 1.6799469, -1.90734863e-006, -5.66244125e-007, -1, 5.23353265e-007, 1, -5.66244125e-007, 7.59964848e-007, -7.59964678e-007, 5.23353719e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.320000023, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.59998322, -0.0799980164, -9.53674316e-007, -1, 1.49011612e-007, -9.10118445e-007, 1.49011612e-007, 1, -5.66248389e-007, 9.10118445e-007, -5.66248559e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.319988251, 1.67993927, -1.90734863e-006, -5.66244125e-007, -1, 5.23353265e-007, 1, -5.66244125e-007, 7.59964848e-007, -7.59964678e-007, 5.23353719e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 3.20000005, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159992218, 1.52587891e-005, 0, 0, -1.00000012, 0, -1.00000012, 0, 1.42108547e-014, -1.42108547e-014, 7.10542736e-015, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.320000023, 0.320000023, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.480003357, -2.07992554, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.480003357, -1.8399353, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.320000023, 0.320000023, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.479980469, -2.07992554, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.320000023, 0.960000038, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.07992554, 1.52587891e-005, 0.00178432465, 1.00000012, 0, 1.78815313e-007, 0, -1.00000012, 2.0861782e-007, 1.78815299e-007, -2.0861782e-007, -1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.480003357, -2.3199234, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.960000038, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.31991577, 1.14440918e-005, 0.00178432465, 1.00000012, 0, 1.78815313e-007, 0, -1.00000012, 2.0861782e-007, 1.78815299e-007, -2.0861782e-007, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.479984283, -1.8399353, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.320000023, 0.200000003, 0.320000023))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.479980469, -2.3199234, 0.00178527832, 3.87430191e-007, -1, 8.24703648e-007, -1, -3.87430191e-007, -7.15261194e-007, 7.15261535e-007, -8.2470342e-007, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.640000045, 0.200000003))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.67993164, 7.62939453e-006, 0, 1.00000012, 0, 1.78815313e-007, 0, -1.00000012, 2.0861782e-007, 1.78815299e-007, -2.0861782e-007, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000072, 1, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.351999998, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, 1.41417694, 1.52728844, -8.94076351e-008, 1.49014454e-007, 1, 0.707107067, -0.70710665, 1.68589878e-007, 0.70710665, 0.707107067, -4.21484252e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.351999998, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, -1.52731323, -1.41415596, -8.94076351e-008, 1.49014454e-007, 1, -0.707106829, 0.707106829, -1.68589878e-007, -0.707106829, -0.707106829, 4.2148379e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(0.336000025, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, -2.15991974, 0.0800132751, -8.94076351e-008, 1.49014454e-007, 1, -1.00000012, 0, -8.94076351e-008, 0, -1.00000012, 1.49014454e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(0.336000025, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, -0.0800132751, -1.99993896, -8.94076351e-008, 1.49014454e-007, 1, 0, 1.00000012, -1.49014454e-007, -1.00000012, 0, -8.94076351e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(0.336000025, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, -0.079990387, 2.15991974, -8.94076351e-008, 1.49014454e-007, 1, -1.49011612e-007, -1, 1.49014426e-007, 1, -1.49011612e-007, 8.94076493e-008))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(0.336000025, 0.200000003, 0.200000003))
WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00178337097, 1.99992371, 0.0799865723, -8.94076351e-008, 1.49014454e-007, 1, 1, -1.49011612e-007, 8.94076493e-008, 1.49011612e-007, 1, -1.49014426e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000072, 0.800000072))
CreateMesh("BlockMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.800000072))
HandleL = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "HandleL", Vector3.new(1, 2, 1.01999998))
HandleLWeld = CreateWeld(m, Character["Left Arm"], HandleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00849914551, 0.00999999046, 6.77108765e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
EffectPrt1 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0.30000001192093, "Really black", "EffectPrt1", Vector3.new(0.600000024, 0.600000024, 0.400000036))
EffectPrt1Weld = CreateWeld(m, HandleL, EffectPrt1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999355316, -0.499996185, -0.509780884, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", EffectPrt1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
EffectPrt2 = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Mid gray", "EffectPrt2", Vector3.new(0.600000024, 0.600000024, 0.400000036))
EffectPrt2Weld = CreateWeld(m, HandleL, EffectPrt2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0100440979, 0.499996185, 0.509773254, 4.06801701e-005, 8.90720813e-008, 1, 2.13165718e-014, -1, 8.90720813e-008, 1, -3.60215091e-012, -4.06801701e-005))
CreateMesh("SpecialMesh", EffectPrt2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.379999906, 0.399999678, 2.21999955))
HitboxL = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "HitboxL", Vector3.new(1.20000005, 1.39999998, 1.01999998))
HitboxLWeld = CreateWeld(m, HandleL, HitboxL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0999908447, 0.699999809, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.12071991, 0.312129974, -0.409996033, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 1.01999998))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354278564, 0.31212616, 0, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.600000024, 0.200000003, 1.01999998))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200004578, 0.899998903, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.12071991, 0.312129974, 0.410003662, 0.965925872, 0.258819103, 0, -0.258819103, 0.965925872, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 1.20000005, 1.00999999))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409751892, -0.412899256, 0.00154209137, -1, -5.71118512e-008, 0, -5.71118512e-008, 1, 1.6609139e-008, -9.48578645e-016, 1.6609139e-008, -1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0.19999998807907, "Really black", "Part", Vector3.new(0.400000036, 0.400000036, 0.400000006))
PartWeld = CreateWeld(m, HandleL, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0105276108, -0.491856098, -0.509765625, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
ThunderHoleL = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "ThunderHoleL", Vector3.new(0.200000003, 1.05000007, 0.200000003))
ThunderHoleLWeld = CreateWeld(m, HandleL, ThunderHoleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699999809, -0.000227928162, 0.228645325, 0, -1, 0, 0, 0, -1, 1, -0, 0))
CreateMesh("CylinderMesh", ThunderHoleL, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.21999836, 0.600001812, 0.62865448, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.232361794, 0.0286483765, 1.10000181, -5.96046448e-008, 1.07931243e-007, 1, 1, 5.49689858e-008, 5.96046412e-008, -5.49689787e-008, 1, -1.07931243e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.21999836, -0.528648376, 1.10000181, 0, 0, -1, -1, -5.96046377e-008, 0, -5.96046377e-008, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21999836, 0.0286483765, 1.10000181, -5.96046448e-008, 1.07931243e-007, 1, 1, 5.49689858e-008, 5.96046412e-008, -5.49689787e-008, 1, -1.07931243e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.01999998, 1.80999994, 0.619999945))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.104995966, -0.199783325, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.03999996, 1.00999999, 1.01999998))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.494999886, -0.018661499, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232361794, 0.600001812, 0.62865448, 0, 0, -1, 0, 1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(m, HandleL, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232361794, -0.528648376, 1.10000181, 0, 0, -1, -1, -5.96046377e-008, 0, -5.96046377e-008, 1, 0))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
HandleR = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "HandleR", Vector3.new(1, 2, 1.01999998))
HandleRWeld = CreateWeld(m, Character["Right Arm"], HandleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00468444824, 0.0100209713, -0.00353145599, -1, -5.71118512e-008, 0, -5.71118512e-008, 1, 1.6609139e-008, -9.48578645e-016, 1.6609139e-008, -1))
Barrel1 = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "Barrel1", Vector3.new(0.600000024, 1.20000005, 0.400000036))
Barrel1Weld = CreateWeld(m, HandleR, Barrel1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.299865723, 0.599565029, 0.718658447, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Barrel1, Enum.MeshType.FileMesh, "rbxassetid://433397018", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Barrel2 = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "Barrel2", Vector3.new(0.600000024, 1.20000005, 0.400000036))
Barrel2Weld = CreateWeld(m, HandleR, Barrel2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300126076, 0.599565029, 0.718658447, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Barrel2, Enum.MeshType.FileMesh, "rbxassetid://433397018", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Choke1 = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "Choke1", Vector3.new(0.600000024, 0.400000006, 0.400000036))
Choke1Weld = CreateWeld(m, HandleR, Choke1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.297118187, 1.39956522, 0.718673706, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Choke1, Enum.MeshType.FileMesh, "rbxassetid://433397231", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
Choke2 = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "Choke2", Vector3.new(0.600000024, 0.400000006, 0.400000036))
Choke2Weld = CreateWeld(m, HandleR, Choke2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.303283691, 1.3995651, 0.718673706, -1.49011612e-007, -6.73397207e-015, -1, 0, 1, -7.10542736e-015, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh", Choke2, Enum.MeshType.FileMesh, "rbxassetid://433397231", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
HitboxR = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Mid gray", "HitboxR", Vector3.new(1.20000005, 0.99999994, 1.01999998))
HitboxRWeld = CreateWeld(m, HandleR, HitboxR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100006104, 0.700003862, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120735168, 0.312120438, 0.40998745, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.400000006, 0.819999993, 1.01999998))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.718658447, -0.4104321, -1.43051147e-005, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.600000024, 0.200000003, 1.01999998))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199996948, 0.900001049, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.409999996, 2.01999998, 1.01999998))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.313659668, -0.00999617577, 0, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.75, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120735168, 0.312120438, -0.410010338, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.409999967, 0.200000003, 1.01999998))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0863342285, -0.919991493, -3.05175781e-005, 1, 0, 0, 0, 1, 5.41750795e-023, 0, 5.41750795e-023, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Part", Vector3.new(0.200000003, 0.200000003, 1.01999998))
PartWeld = CreateWeld(m, HandleR, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.354248047, 0.312124252, -1.43051147e-005, 0.965925872, 0.258819222, -5.53058896e-008, -0.258819222, 0.965925872, 3.094436e-008, 6.14303701e-008, -1.55757274e-008, 1))
ThunderHoleR = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "ThunderHoleR", Vector3.new(0.200000003, 1.05000007, 0.200000003))
ThunderHoleRWeld = CreateWeld(m, HandleR, ThunderHoleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700005054, -0.000213623047, 0.228675842, -1.0658141e-014, -1, -1.0658141e-014, 9.48578222e-016, 1.0658141e-014, -1, 1, -1.0658141e-014, 9.48578116e-016))
CreateMesh("CylinderMesh", ThunderHoleR, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232376099, 0.600004911, 0.628646851, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219985962, 0.0286712646, 1.10000277, -3.12924385e-007, 1.07931264e-007, 1, 1, 5.49689787e-008, 3.12924385e-007, -5.49689467e-008, 1, -1.07931285e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.232376099, -0.528656006, 1.100003, 9.48580657e-016, -3.19744231e-014, -1, -1, -5.9604659e-008, -9.48578539e-016, -5.9604659e-008, 1, -3.19744231e-014))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.400000006))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147e-005, -0.920844555, 0.718658447, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.03999996, 1.00999999, 1.01999998))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.495002031, -0.0186691284, -9.48580657e-016, 3.19744231e-014, 1, 0, 1, -3.19744231e-014, -1, 0, -9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.600000024, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.232390404, 0.0286712646, 1.100003, -3.12924385e-007, 1.07931264e-007, 1, 1, 5.49689787e-008, 3.12924385e-007, -5.49689467e-008, 1, -1.07931285e-007))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.400000006, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.219985962, -0.528671265, 1.100003, 9.48580657e-016, -3.19744231e-014, -1, -1, -5.9604659e-008, -9.48578539e-016, -5.9604659e-008, 1, -3.19744231e-014))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.01999998, 0.200000003, 0.400000006))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43051147e-005, -0.100847006, 0.718658447, 2.45555211e-015, -5.96046306e-008, 1, -1.42108547e-014, -1, -5.96046306e-008, 1, -1.42108547e-014, -2.45555296e-015))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.800000012, 0.200000003))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.220002174, 0.600004911, 0.628662109, 9.48580657e-016, -3.19744231e-014, -1, 0, 1, -3.19744231e-014, 1, 0, 9.48580551e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Wedge = CreatePart(m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Mid gray", "Wedge", Vector3.new(1.00999999, 0.410000026, 0.410000026))
WedgeWeld = CreateWeld(m, HandleR, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00409030914, 0.623651981, 0.0869140625, 7.5121838e-016, 3.45568019e-009, -1, -5.9604659e-008, -1, -3.45568019e-009, -1, 5.9604659e-008, -5.45243684e-016))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))

--[[ Credits to Fenrier for the Effect Functions. ]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

--[[ Attack Functions ]]--

local Mode = "Normal"

RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"]
RH = Torso["Right Hip"] 
LH = Torso["Left Hip"]
Animate = Character.Animate
Animator = Humanoid.Animator

function Equip()
	attack = true
	equipped = true
	RSH.Parent = nil 
	LSH.Parent = nil
	Animator.Parent = nil
	Animate.Disabled = true
	change = 3
	RW = Create("Weld"){
		Name = "Right Shoulder",
		Part0 = Torso ,
		C0 = CFrame.new(1.5, 0.5, 0),
		C1 = CFrame.new(0, 0.5, 0), 
		Part1 = RightArm ,
		Parent = Torso ,
	}
	LW = Create("Weld"){
		Name = "Left Shoulder",
		Part0 = Torso ,
		C0 = CFrame.new(-1.5, 0.5, 0),
		C1 = CFrame.new(0, 0.5, 0) ,
		Part1 = LeftArm ,
		Parent = Torso ,
	}
	CreateSound("http://roblox.com/asset/?id=346134880", Torso, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(90)), .25)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-110)), .25)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(5)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-5)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	CreateSound("http://roblox.com/asset/?id=346134880", Torso, 1, .9)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(0), math.rad(170), math.rad(95)), .34)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -.7) * angles(math.rad(0), math.rad(-170), math.rad(-120)), .34)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(5)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-5)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.7) * angles(math.rad(0), math.rad(170), math.rad(110)), .25)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.3, -.5) * angles(math.rad(0), math.rad(-170), math.rad(-90)), .25)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(5)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-5)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.7) * angles(math.rad(0), math.rad(170), math.rad(120)), .34)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.3, -.7) * angles(math.rad(0), math.rad(-180), math.rad(-95)), .34)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(5)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-5)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	attack = false
end

function Unequip()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
	end
	equipped = false
	RW.Parent = nil 
	LW.Parent = nil 
	RSH.Parent = Torso
	LSH.Parent = Torso
	Torso.Neck.C0 = NeckCF
	RootJoint.C0 = RootCF
	Animator.Parent = Humanoid
	Animate.Disabled = false
	RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	attack = false
end

function attackone()
	attack = true
	local Con1 = HitboxL.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.3) * angles(math.rad(0), math.rad(0), math.rad(70)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -.3) * angles(math.rad(180), math.rad(-20), math.rad(10)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -.7) * angles(math.rad(0), math.rad(-150), math.rad(-90)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -.8, 0) * RHCF * angles(math.rad(-4), math.rad(-40), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-4), math.rad(-40), math.rad(30)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=200632136", HitboxL, 1, 1)
	for i = 0, 1, 0.12 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.3) * angles(math.rad(20), math.rad(0), math.rad(-80)), .54)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(-10), math.rad(80)), .54)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, .3) * angles(math.rad(50), math.rad(20), math.rad(0)), .54)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, -.3) * angles(math.rad(0), math.rad(-20), math.rad(-110)), .54)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-4), math.rad(40), math.rad(-10)), .54)
		LH.C0 = clerp(LH.C0, cn(-1, -.7, 0) * LHCF * angles(math.rad(-4), math.rad(40), math.rad(-20)), .54)
	end
	Con1:disconnect()
	attack = false
end

function attacktwo()
	attack = true
	local Con1 = HitboxR.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.4) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(-90), math.rad(0)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.4) * angles(math.rad(120), math.rad(0), math.rad(10)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-40)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -.7, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=200632136", HitboxR, 1, 1.1)
	for i = 0, 1, 0.12 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0) * angles(math.rad(0), math.rad(0), math.rad(80)), .55)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .55)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6, -.3) * angles(math.rad(180), math.rad(-20), math.rad(10)), .55)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), .55)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .55)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .55)
	end
	Con1:disconnect()
	attack = false
end

function attackthree()
	attack = true
	local Con1 = HitboxL.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	local Con2 = HitboxR.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(90), math.rad(50), math.rad(0)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.5) * angles(math.rad(90), math.rad(-50), math.rad(0)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(20)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=200632136", Torso, 1, .8)
	Torso.Velocity = RootPart.CFrame.lookVector * 120
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), .55)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), .55)
		RW.C0 = clerp(RW.C0, CFrame.new(.8, 0.5, -.8) * angles(math.rad(120), math.rad(60), math.rad(0)), .55)
		LW.C0 = clerp(LW.C0, CFrame.new(-.8, 0.5, -.8) * angles(math.rad(120), math.rad(-60), math.rad(0)), .55)
		RH.C0 = clerp(RH.C0, cn(1, -.6, -.2) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -.8, -.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), .3)
	end
	Con1:disconnect()
	Con2:disconnect()
	attack = false
end

function attackfour()
	attack = true
	Torso.Velocity = Vector3.new(0, 100, 0)
	Humanoid.Jump = true
	CreateSound("http://roblox.com/asset/?id=199145327", Torso, 1, .8)
	for i = 0, 1, 0.12 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(6 * i, math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-40)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(40)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -.2, -.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -.1, -.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .3)
	end
	for i = 0, 1, 0.12 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10 * i), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(60)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), .5)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(40)), .5)
		LH.C0 = clerp(LH.C0, cn(-1, 0, -.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), .5)
	end
	local hitfloor = nil
	while hitfloor == nil do
		swait()
		hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 3, Character)
	end
	MagnitudeDamage(RootPart, 0, 0, 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 6, Character)
	if hit ~= nil then
		local Color = hit.BrickColor
		local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", Vector3.new())
		refpart.Anchored = true
		refpart.CFrame = CFrame.new(pos)
		game:GetService("Debris"):AddItem(refpart, 1)
		CreateSound("http://www.roblox.com/asset/?id=199145477", refpart, .8, 1)
		for i = 1, 5 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local groundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
			groundpart.Anchored = false
			groundpart.Material = Materials
			groundpart.CanCollide = true
			groundpart.Friction = 0.1
			groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
			groundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(groundpart, 10)
		end
		for i = 1, 6 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local actualgroundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
			actualgroundpart.Anchored = true
			actualgroundpart.Material = Materials
			actualgroundpart.CanCollide = true
			actualgroundpart.Friction = 1
			actualgroundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(actualgroundpart, 10)
		end 
		WaveEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, .5, .5, .5, .04)
		SphereEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, 3, 3, 3, .04)
		RingEffect(hit.BrickColor, refpart.CFrame * CFrame.Angles(math.random(5, 6), math.random(2, 7), math.random(3, 6)), .2, .2, .2, 1, 1, 1, .05)
	end
	attack = false
end

function ShootCannon(asd)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	num = 100
	coroutine.resume(coroutine.create(function() 
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RootPart.Parent)
			local mag = (MainPos - pos).magnitude 
			CylinderEffect(BrickColor.new("New Yeller"), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, mag * 5, 100, .1, 0, 1.5, 0.1)
			MainPos = MainPos + (MouseLook.lookVector * 10)
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("New Yeller"), "Reference", Vector3.new())
				ref.Anchored = true
				ref.CFrame = CFrame.new(pos)
				BlockEffect(BrickColor.new("New Yeller"), CFrame.new(pos), 20, 20, 20, 5, 5, 5, 0.1)
                MagnitudeDamage(ref, 0, 0, 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
				game:GetService("Debris"):AddItem(ref, 1)
			end
		until num <= 0
	end))
end

gun = false

shoot = false

gunidle = false

local Loaded = false

function GunStance()
	attack = true
	gun = true
	change = 3
	Barrel1.Transparency = 0
	Barrel2.Transparency = 0
	Choke1.Transparency = 0
	Choke2.Transparency = 0
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
		HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	local offset = nil
	gunidle = true
	while gun == true do
		swait()
		local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
		offset = (Torso.Position.y - mouse.Hit.p.y) / 60
		local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
		offset = offset / mag 
		RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, offset), .5)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	if shoot == true then
		gunidle = false
		CreateSound("rbxassetid://131632972", Torso, 1, 1.2)
		CreateSound("rbxassetid://131632972", Torso, 1, 1)
		CreateSound("rbxassetid://131632972", Torso, 1, .7)
		ShootCannon(Choke1)
		ShootCannon(Choke2)
		for i = 0, 1, 0.15 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(150)), .5)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
			HandleWeld.C0 = clerp(HandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			if Torsovelocity < 1 then
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
			elseif Torsovelocity > 2 then
				RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 10) / 2, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 10) / 2, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			end
		end
		Loaded = false
	end
	RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), 1)
	Barrel1.Transparency = 1
	Barrel2.Transparency = 1
	Choke1.Transparency = 1
	Choke2.Transparency = 1
	gun = false
	gunidle = false
	shoot = false
	attack = false
end

function Disappear()
	for _, i in pairs(m:children()) do
		if i.Name == "BladePrt" then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 1
			end), i)
		end
	end
end


function Reappear()
	for _, i in pairs(m:children()) do
		if i.Name == "BladePrt" then
			coroutine.resume(coroutine.create(function(Part) 
				for i = 0, 1, 0.1 do
					swait()
					Part.Transparency = i
				end
				Part.Transparency = 0
			end), i)
		end
	end
end

function BladeEquip()
	attack = true
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, 0) * angles(math.rad(210), math.rad(0), math.rad(30)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://roblox.com/asset/?id=199145327", FakeHandle, .6, 1)
	HandleWeld:remove()
	HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.032043457, 0.996201754, -0.111961365, 8.94076351e-008, 1.1920929e-007, 1, -1.49014454e-007, 1, -1.19209275e-007, -1, -1.4901444e-007, 8.94076564e-008))
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(70)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(90), math.rad(0), -6 * i), .3)
	end
	Reappear()
	Mode = "Sword"
	attack = false
end

function UnequipBlade()
	attack = true
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, 0) * angles(math.rad(210), math.rad(0), math.rad(30)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(40), math.rad(-60)), .3)
	end
	Disappear()
	HandleWeld:remove()
	HandleWeld = CreateWeld(m, Character["Torso"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57640076, -0.105987549, -0.672006607, 0.866025388, 0.500000119, -8.94076351e-008, -0.500000119, 0.866025388, 1.49014454e-007, 1.51936518e-007, -8.43464605e-008, 1))
	Mode = "Normal"
	attack = false
end

function BladeAttackOne()
	attack = true
	local Con1 = BladeHitbox.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.5) * angles(math.rad(0), math.rad(150), math.rad(120)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.7) * angles(math.rad(0), math.rad(70), math.rad(90)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(30)), .3)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	CreateSound("http://roblox.com/asset/?id=356430004", BladeHitbox, 1, .8)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1) * angles(math.rad(10), math.rad(0), math.rad(-60)), .4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(-5), math.rad(60)), .4)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, 0) * angles(math.rad(0), math.rad(70), math.rad(80)), .4)
		LW.C0 = clerp(LW.C0, CFrame.new(-.4, 0.5, -1) * angles(math.rad(0), math.rad(20), math.rad(70)), .4)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .4)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -.9, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(-10)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	Con1:disconnect()
	attack = false
end

function BladeAttackTwo()
	attack = true
	local Con1 = BladeHitbox.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.7) * angles(math.rad(0), math.rad(-70), math.rad(-90)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-120)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(30)), .3)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	CreateSound("http://roblox.com/asset/?id=356430004", BladeHitbox, 1, 1)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1) * angles(math.rad(10), math.rad(0), math.rad(60)), .4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(5), math.rad(-60)), .4)
		RW.C0 = clerp(RW.C0, CFrame.new(.4, 0.5, -1) * angles(math.rad(0), math.rad(-20), math.rad(-70)), .4)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-80)), .4)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(80)), .4)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -.9, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(-10)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	Con1:disconnect()
	attack = false
end

function BladeAttackThree()
	attack = true
	local Con1 = BladeHitbox.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .34)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .34)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 1, -.5) * angles(math.rad(120), math.rad(0), math.rad(-40)), .34)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 1, -.5) * angles(math.rad(120), math.rad(0), math.rad(40)), .34)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), .4)
		if Torsovelocity < 1 then
		    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), .34)
		    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), .34)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	CreateSound("http://roblox.com/asset/?id=356430004", BladeHitbox, 1, .7)
	for i = 0, 1, 0.13 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.3) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1, .3, -.3) * angles(math.rad(10), math.rad(0), math.rad(-40)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, .3, -.3) * angles(math.rad(10), math.rad(0), math.rad(40)), .5)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), .5)
		if Torsovelocity < 1 then
		    RH.C0 = clerp(RH.C0, cn(1, -.8, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), .34)
		    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), .34)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -.8, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(0), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	Con1:disconnect()
	attack = false
end

function BladeAttackFour()
	attack = true
	local Con1 = BladeHitbox.Touched:connect(function(hit)
		Damage(hit.Parent, math.random(0, 0), 0, BrickColor.new("Really black"), BrickColor.new("Mid gray"), "rbxassetid://199149186" ,1)
	end)
	for i = 1,2 do
	for i = 0, 1, 0.3 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-60)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.5) * angles(math.rad(0), math.rad(150), math.rad(120)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.7) * angles(math.rad(0), math.rad(70), math.rad(90)), .5)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(30)), .5)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .5)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .5)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .5)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .5)
		end
	end
	CreateSound("http://roblox.com/asset/?id=356430004", BladeHitbox, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1) * angles(math.rad(10), math.rad(0), math.rad(-60)), .4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(-5), math.rad(60)), .4)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, 0) * angles(math.rad(0), math.rad(70), math.rad(80)), .4)
		LW.C0 = clerp(LW.C0, CFrame.new(-.4, 0.5, -1) * angles(math.rad(0), math.rad(20), math.rad(70)), .4)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .4)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -.9, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(-10)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	for i = 0, 1, 0.3 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.7) * angles(math.rad(0), math.rad(-70), math.rad(-110)), .5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-120)), .5)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(30)), .5)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .5)
			LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), .5)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-0), math.rad(0) - math.sin(sine / 10)), .5)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(30), math.rad(0) - math.sin(sine / 10)), .5)
		end
	end
	CreateSound("http://roblox.com/asset/?id=356430004", BladeHitbox, 1, .8)
	for i = 0, 1, 0.3 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1) * angles(math.rad(10), math.rad(0), math.rad(60)), .4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(5), math.rad(-60)), .4)
		RW.C0 = clerp(RW.C0, CFrame.new(.4, 0.5, -1) * angles(math.rad(0), math.rad(-20), math.rad(-70)), .4)
		LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-80)), .4)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(80)), .4)
		if Torsovelocity < 1 then
			RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), .2)
			LH.C0 = clerp(LH.C0, cn(-1, -.9, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(-10)), .2)
		elseif Torsovelocity > 2 then
			RH.C0 = clerp(RH.C0, cn(1, -1, -.05 + math.sin(sine / 10) / 2) * RHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -.05 - math.sin(sine / 10) / 2) * LHCF * angles(math.rad(-1), math.rad(-30), math.rad(0) - math.sin(sine / 10)), .3)
		end
	end
	end
	Con1:disconnect()
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 and equipped == true and Mode == "Normal" then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 and equipped == true and Mode == "Normal" then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 and equipped == true and Mode == "Normal" then
		attacktype = 4
		attackthree()
	elseif attack == false and attacktype == 4 and equipped == true and Mode == "Normal" then
		attacktype = 1
		attackfour()
	end
	if attack == false and attacktype == 1 and equipped == true and Mode == "Sword" then
		attacktype = 2
		BladeAttackOne()
	elseif attack == false and attacktype == 2 and equipped == true and Mode == "Sword" then
		attacktype = 3
		BladeAttackTwo()
	elseif attack == false and attacktype == 3 and equipped == true and Mode == "Sword" then
		attacktype = 4
		BladeAttackThree()
	elseif attack == false and attacktype == 4 and equipped == true and Mode == "Sword" then
		attacktype = 1
		BladeAttackFour()
	end
	if gun == true and shoot == false and equipped == true then
		shoot = true
		gun = false
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and equipped == false and k == 'f' and Mode == "Normal" then
		Equip()
	elseif attack == false and equipped == true and k == 'f' and Mode == "Normal" then
		Unequip()
	elseif attack == false and equipped == true and Mode == "Normal" and k == 'g' then
		BladeEquip()
	elseif attack == false and equipped == true and Mode == "Sword" and k == 'g' then
		UnequipBlade()
	elseif k == 'e' and gun == false and shoot == false and Mode == "Normal" and attack == false and equipped == true then
		GunStance()
	elseif k == 'e' and shoot == false and equipped == true and Mode == "Normal" then
		if gun == true then
			gun = false
		end
	end
end)

--[[ Credits to Fenrier for the Movement Detection and Effects table. ]]--

while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Hat") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	if gun == true then
		local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
		local direction = aim.lookVector
		local headingA = math.atan2(direction.x, direction.z)
		headingA = math.deg(headingA)
		Humanoid.AutoRotate = false
		RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))		
	else
		Humanoid.AutoRotate = true			
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(20)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.8, 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(-20)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false and Mode == "Normal" then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1 + .1 * math.sin(sine / 27)) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos(sine / 23)), math.rad(-2 - 3 * math.cos(sine / 23)), math.rad(-30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.6 + .07 * math.cos(sine / 23), -.2) * angles(math.rad(110 + 2 * math.cos(sine / 24)), math.rad(35 + 3 * math.cos(sine / 23)), math.rad(-30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.6 + .07 * math.cos(sine / 23), -.5) * angles(math.rad(120 + 2 * math.cos(sine / 24)), math.rad(-40 + 3 * math.cos(sine / 23)), math.rad(40)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.9 - .1 * math.sin(sine / 27), 0) * RHCF * angles(math.rad(-4 + 1 * math.cos(sine / 23)), math.rad(-30), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.9 - .1 * math.sin(sine / 27), 0) * LHCF * angles(math.rad(-4 + 1 * math.cos(sine / 23)), math.rad(-30), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			elseif attack == false and Mode == "Sword" then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1 + .1 * math.sin(sine / 27)) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.cos(sine / 23)), math.rad(-2 + 3 * math.cos(sine / 23)), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, 0) * angles(math.rad(150 + 3 * math.cos(sine / 23)), math.rad(0), math.rad(10)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(10 + 2 * math.cos(sine / 23)), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 23))), 0.3)
				RH.C0 = clerp(RH.C0, cn(1, -.9 - .1 * math.sin(sine / 27), 0) * RHCF * angles(math.rad(-4 + 1 * math.cos(sine / 23)), math.rad(20), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.9 - .1 * math.sin(sine / 27), 0) * LHCF * angles(math.rad(-4 + 1 * math.cos(sine / 23)), math.rad(20), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false and Mode == "Normal" then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.2) * angles(math.rad(30), math.rad(0), math.rad(5 * math.cos(sine / 10) / 2)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-5 * math.cos(sine / 10) / 2)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6 + .07 * math.cos(sine / 23), -.2) * angles(math.rad(110), math.rad(40), math.rad(-40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6 + .07 * math.cos(sine / 23), -.2) * angles(math.rad(110), math.rad(-40), math.rad(40)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.8 - 0.3 * math.cos(sine / 8) / 2, -.05 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-4), math.rad(0), math.rad(10) - math.sin(sine / 8)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 8) / 2, -.05 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-4), math.rad(0), math.rad(-10) - math.sin(sine / 8)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			elseif attack == false and Mode == "Sword" then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1 + .1 * math.sin(sine / 27)) * angles(math.rad(15), math.rad(0), math.rad(-60 + 10 * math.cos(sine / 13))), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(-5), math.rad(60 - 10 * math.cos(sine / 13))), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(150 + 3 * math.cos(sine / 23)), math.rad(0), math.rad(-20)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.3, 0.7, -1) * angles(math.rad(150 + 2 * math.cos(sine / 23)), math.rad(0), math.rad(40)), 0.3)
				RH.C0 = clerp(RH.C0, cn(1, -1 - 0.3 * math.cos(sine / 8) / 2, -.05 + math.sin(sine / 8) / 2) * RHCF * angles(math.rad(-4), math.rad(40), math.rad(10) - math.sin(sine / 8)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.8 + 0.3 * math.cos(sine / 8) / 2, -.05 - math.sin(sine / 8) / 2) * LHCF * angles(math.rad(-4), math.rad(40), math.rad(-10) - math.sin(sine / 8)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
			end
		end
	end
	if #Effects > 0 then
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
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
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
