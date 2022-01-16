--Stolen and fixed by chromium ty fang for fixing anims 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
Player = game.Players.LocalPlayer
Character = game.Workspace.non
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local gun = false
local shoot = false
player = nil
mana = 0
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
TorsoColor = Torso.BrickColor
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
NoOutline = function(Part)
  Part.TopSurface = 10
end

player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
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
end
)
nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local m = Instance.new("Model", RightArm)
m.Name = "Rigormortis\' Right Glove"
GloveHandle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
GloveHandleweld = weld(m, Character["Right Arm"], GloveHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929e-005, 0.000109910965, 0.00443553925, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
mesh("SpecialMesh", GloveHandle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 5.25, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.620000124, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.869999886, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1.5, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0184423923, 0.00541090965, 1, 0, 0, 0, 0.258819193, -0.965925813, 0, 0.965925813, 0.258819193))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00707101822, 0.00707101822, 0.465586424, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999999046, 0, 0.465586424, 0, 0.99999994, 0, -0.99999994, 0, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
GloveEyePart = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "GloveEyePart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
GloveEyePartweld = weld(m, GloveHandle, GloveEyePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.00999999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
GloveEyePartmesh = mesh("SpecialMesh", GloveEyePart, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0192146301, 0.000453591347, 1, 0, 0, 0, 0.50000006, -0.866025388, 0, 0.866025388, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.00999999046, 0.465586424, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413562, 0.00707125664, 0.00707101822, 1.3767874e-007, -6.21808951e-008, -1, -0.70710659, 0.707106948, -1.4132209e-007, 0.707106948, 0.70710659, 5.33850653e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0186772346, -0.004535079, 1, 0, 0, 0, 0.707106829, -0.707106709, 0, 0.707106709, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413681, 0.00999999046, 0, -4.37113883e-008, -9.70964606e-008, -1, 0, 1, -9.70964606e-008, 1, -4.24422121e-015, -4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00921452045, 0.0168669224, 1, 0, 0, 0, -0.499999851, -0.866025507, 0, 0.866025507, -0.499999851))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0132659674, 0.0139074326, 1, 0, 0, 0, -0.258818924, -0.965925872, 0, 0.965925872, -0.258818924))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0168671608, -0.00921428204, 1, 0, 0, 0, 0.866025448, -0.499999911, 0, 0.499999911, 0.866025448))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
LaserReferencePart = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Really black", "LaserReferencePart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
LaserReferencePartweld = weld(m, GloveHandle, LaserReferencePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.980000019, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1))
mesh("SpecialMesh", LaserReferencePart, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 4, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.974999905, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413681, 0.00707101822, -0.00707149506, -3.09086268e-008, -1.0640651e-007, -1, 0.707106948, 0.70710659, -9.70964535e-008, 0.70710659, -0.707106948, 5.33850901e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413562, 1.1920929e-007, 0.00999999046, 7.54979013e-008, 7.54978799e-008, -1, -1, 2.68220901e-007, -7.54978799e-008, 2.68220901e-007, 1, 7.54979013e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00707101822, 0.00707101822, 0.465586424, 0.707106709, -0.707106829, 0, 0.707106829, 0.707106709, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0164134502, 0.00999999046, 1, 0, 0, 0, 7.54979013e-008, -1, 0, 1, 7.54979013e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, -0.00453495979, -0.0186769962, 1, 0, 0, 0, 0.707106709, 0.707106888, 0, -0.707106888, 0.707106709))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.000453591347, -0.0192143917, 1, 0, 0, 0, 0.866025329, 0.500000119, 0, -0.500000119, 0.866025329))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00541114807, -0.0184421539, 1, 0, 0, 0, 0.965925813, 0.258819163, 0, -0.258819163, 0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00999999046, -0.0164134502, 1, 0, 0, 0, 1, 1.34110465e-007, 0, -1.34110465e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0139074326, -0.0132658482, 1, 0, 0, 0, 0.965925872, -0.258818865, 0, 0.258818865, 0.965925872))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Finger1Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Handleweld = weld(m, Character["Right Arm"], Finger1Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, -0.395564556, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger1Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger1ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger1ClawFingerweld = weld(m, Finger1Handle, Glove1Finger1ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103747845, 0.500191927, -0.00441360474, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger1ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Handleweld = weld(m, Character["Right Arm"], Finger2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, 0.00143527985, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger2ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger2ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger2ClawFingerweld = weld(m, Finger2Handle, Glove1Finger2ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.499370575, -0.00141334534, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger2ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Handleweld = weld(m, Character["Right Arm"], Finger3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, 0.403035164, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger3Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger3ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger3ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger3ClawFingerweld = weld(m, Finger3Handle, Glove1Finger3ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.499370575, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger3ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger4Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Handleweld = weld(m, Character["Right Arm"], Finger4Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.145614386, 1.14687657, -0.40422225, -0.965925813, 0.258819103, 4.72798973e-008, 0.258819133, 0.965925694, -1.68990979e-007, -8.94069672e-008, -1.50995788e-007, -1))
mesh("SpecialMesh", Finger4Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637042, 0, 0.866025329, -0.500000179, 0, 0.500000179, 0.866025329, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249997377, 0.200000048, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925753, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger4ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove4Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger4ClawFingerweld = weld(m, Finger4Handle, Glove1Finger4ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.134217024, 0.491147041, -0.00118684769, -0.866025329, 0.500000119, -1.2544109e-007, 0.500000119, 0.866025329, -1.22710517e-007, 4.72798973e-008, -1.68990979e-007, -1))
mesh("SpecialMesh", Glove1Finger4ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
local m2 = Instance.new("Model", Head)
m2.Name = "Rigormortis\' Hood"
HoodHandle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Really black", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
HoodHandleweld = weld(m, Character.Head, HoodHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929e-005, -0.0898900032, 2.19345093e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", HoodHandle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=64560031", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1.10000002))
Hoodpart2 = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Hoodpart2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hoodpart2weld = weld(m, HoodHandle, Hoodpart2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -0.0299999714, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Hoodpart2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=64560031", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 1.20000005, 1.10000002))
Eye1 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Eye1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Eye1weld = weld(m, HoodHandle, Eye1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200000048, 0, 0.619999886, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Eye1mesh = mesh("SpecialMesh", Eye1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2, 1))
Eye2 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Eye2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Eye2weld = weld(m, HoodHandle, Eye2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200000048, 0.064807415, 0.616603374, 1, 0, 0, 0, 0.994521916, 0.104528464, 0, -0.104528464, 0.994521916))
Eye2mesh = mesh("SpecialMesh", Eye2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2, 1))
local m3 = Instance.new("Model", LeftArm)
m3.Name = "Rigormortis\' Left Glove"
Glove2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Handleweld = weld(m, Character["Left Arm"], Glove2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21593475e-005, 0.000111103058, 0.00443267822, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
mesh("SpecialMesh", Glove2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 5.25, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.620001078, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.870001078, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1.5, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0184402466, 0.00540876389, 1, 0, 0, 0, 0.258819193, -0.965925813, 0, 0.965925813, 0.258819193))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00706958771, 0.00706958771, 0.465587616, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999808311, 0, 0.465587616, 0, 0.99999994, 0, -0.99999994, 0, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.00999808, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0192146301, 0.000451087952, 1, 0, 0, 0, 0.50000006, -0.866025388, 0, 0.866025388, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.00999808311, 0.465587616, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00706958771, 0.00706955791, 1.3767874e-007, -6.21808951e-008, -1, -0.70710659, 0.707106948, -1.4132209e-007, 0.707106948, 0.70710659, 5.33850653e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0186767578, -0.00453662872, 1, 0, 0, 0, 0.707106829, -0.707106709, 0, 0.707106709, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00999832153, 0, -4.37113883e-008, -9.70964606e-008, -1, 0, 1, -9.70964606e-008, 1, -4.24422121e-015, -4.37113883e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00921630859, 0.016866684, 1, 0, 0, 0, -0.499999851, -0.866025507, 0, 0.866025507, -0.499999851))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0132675171, 0.0139055252, 1, 0, 0, 0, -0.258818924, -0.965925872, 0, 0.965925872, -0.258818924))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.016866684, -0.00921630859, 1, 0, 0, 0, 0.866025448, -0.499999911, 0, 0.499999911, 0.866025448))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.979999065, -2.38418579e-007, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 4, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.974999905, -2.38418579e-007, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00706964731, -0.00706958771, -3.09086268e-008, -1.0640651e-007, -1, 0.707106948, 0.70710659, -9.70964535e-008, 0.70710659, -0.707106948, 5.33850901e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0, 0.00999808311, 7.54979013e-008, 7.54978799e-008, -1, -1, 2.68220901e-007, -7.54978799e-008, 2.68220901e-007, 1, 7.54979013e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00706958771, 0.00706982613, 0.465587616, 0.707106709, -0.707106829, 0, 0.707106829, 0.707106709, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0164146423, 0.00999808311, 1, 0, 0, 0, 7.54979013e-008, -1, 0, 1, 7.54979013e-008))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, -0.00453662872, -0.0186767578, 1, 0, 0, 0, 0.707106709, 0.707106888, 0, -0.707106888, 0.707106709))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.000451087952, -0.0192146301, 1, 0, 0, 0, 0.866025329, 0.500000119, 0, -0.500000119, 0.866025329))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00540876389, -0.0184402466, 1, 0, 0, 0, 0.965925813, 0.258819163, 0, -0.258819163, 0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00999808311, -0.0164146423, 1, 0, 0, 0, 1, 1.34110465e-007, 0, -1.34110465e-007, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0139064789, -0.0132675171, 1, 0, 0, 0, 0.965925872, -0.258818865, 0, 0.258818865, 0.965925872))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Glove2Finger1Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger1Handleweld = weld(m, Character["Left Arm"], Glove2Finger1Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578571, 1.14794111, 0.398792267, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-008, 1.92835312e-008, 7.19670723e-008, -1))
mesh("SpecialMesh", Glove2Finger1Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249929428, 0.199998975, 0, 0.965925813, -0.258819133, -1.92835294e-008, 0.258819133, 0.965925813, 2.79754886e-009, 1.79023978e-008, -7.6931741e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger1ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger1ClawFingerweld = weld(m, Glove2Finger1Handle, Glove2Finger1ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103525162, 0.49937129, 0, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Glove2Finger1ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger2Handleweld = weld(m, Character["Left Arm"], Glove2Finger2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578094, 1.14794099, -0.00280952454, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-008, 1.92835312e-008, 7.19670723e-008, -1))
mesh("SpecialMesh", Glove2Finger2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249934196, 0.199998975, 1.90734863e-006, 0.965925813, -0.258819133, -1.92835294e-008, 0.258819133, 0.965925813, 2.79754886e-009, 1.79023978e-008, -7.6931741e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger2ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger2ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger2ClawFingerweld = weld(m, Glove2Finger2Handle, Glove2Finger2ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.10352397, 0.499371529, -0.00141334534, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Glove2Finger2ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger3Handleweld = weld(m, Character["Left Arm"], Glove2Finger3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578094, 1.14794099, -0.399812698, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-008, 1.92835312e-008, 7.19670723e-008, -1))
mesh("SpecialMesh", Glove2Finger3Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249962807, 0.199998975, 1.90734863e-006, 0.965925813, -0.258819133, -1.92835294e-008, 0.258819133, 0.965925813, 2.79754886e-009, 1.79023978e-008, -7.6931741e-009, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger3ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger3ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger3ClawFingerweld = weld(m, Glove2Finger3Handle, Glove2Finger3ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103745937, 0.500193119, -0.00440788269, 0.866025448, -0.500000119, -3.72529136e-008, 0.500000119, 0.866025329, -9.98188199e-009, 3.72529101e-008, -9.98188909e-009, 1))
mesh("SpecialMesh", Glove2Finger3ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger4Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger4Handleweld = weld(m, Character["Left Arm"], Glove2Finger4Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.134407997, 1.14387655, 0.400022507, 0.965925813, 0.258819103, -8.94069672e-008, -0.258819133, 0.965925694, 2.38418579e-007, 1.48067784e-007, -2.071544e-007, 1))
mesh("SpecialMesh", Glove2Finger4Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526354, 0.386366606, 0, 0.866025329, -0.500000238, 1.07231074e-007, 0.500000238, 0.866025329, 3.19420792e-008, -1.0883587e-007, 2.59529003e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.025002718, 0.199998975, 0, 0.965925753, -0.258819312, 8.84631604e-008, 0.258819312, 0.965925753, 1.30108901e-008, -8.88163285e-008, 1.03283924e-008, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger4ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger4ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger4ClawFingerweld = weld(m, Glove2Finger4Handle, Glove2Finger4ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.134222269, 0.491146207, -0.00118637085, -0.866025329, 0.500000238, -1.96638027e-007, 0.500000238, 0.866025329, -8.72672246e-008, 1.26659884e-007, -1.73894662e-007, -1))
mesh("SpecialMesh", Glove2Finger4ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
coroutine.resume(coroutine.create(function(Part, Weld)
  while Part.Parent ~= nil do
    wait(5)
    for i = 0, 1, 0.2 do
      wait()
      Eye1mesh.Scale = Vector3.new(0.5, 2 - 1.9 * i, 1)
      Eye2mesh.Scale = Vector3.new(0.5, 2 - 1.9 * i, 1)
    end
    for i = 0, 1, 0.2 do
      wait()
      Eye1mesh.Scale = Vector3.new(0.5, 0.1 + 1.9 * i, 1)
      Eye2mesh.Scale = Vector3.new(0.5, 0.1 + 1.9 * i, 1)
    end
  end
end
), Eye1, Eye1weld)
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
for i,v in pairs(Character.Head:GetChildren()) do
  if v.className == "BlockMesh" then
    v:destroy()
    head = Instance.new("SpecialMesh", Head)
    head.MeshType = "Head"
  end
end
local CloakEffect = Instance.new("ParticleEmitter", Torso)
CloakEffect.VelocitySpread = 360
CloakEffect.Lifetime = NumberRange.new(1)
CloakEffect.Speed = NumberRange.new(20)
CloakEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 1), NumberSequenceKeypoint.new(1, 0)})
CloakEffect.Enabled = false
CloakEffect.RotSpeed = NumberRange.new(-360, 360)
CloakEffect.Rate = 1000
CloakEffect.Rotation = NumberRange.new(-360, 360)
CloakEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(1, 1)})
CloakEffect.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
CloakEffect.LightEmission = 1
CloakEffect.Texture = "http://www.roblox.com/asset/?id=243664672"
CloakEffectLight = Instance.new("PointLight", Torso)
CloakEffectLight.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight.Range = 10
CloakEffectLight.Brightness = 10
CloakEffectLight.Enabled = false
CloakEffectLight2 = Instance.new("PointLight", Torso)
CloakEffectLight2.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight2.Range = 7.5
CloakEffectLight2.Brightness = 7.5
CloakEffectLight2.Enabled = false
local CloakEffect2 = Instance.new("ParticleEmitter", Torso)
CloakEffect2.VelocitySpread = 360
CloakEffect2.Lifetime = NumberRange.new(1)
CloakEffect2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 6), NumberSequenceKeypoint.new(1, 5)})
CloakEffect2.Enabled = false
CloakEffect2.RotSpeed = NumberRange.new(9000)
CloakEffect2.Rate = 200
CloakEffect2.Rotation = NumberRange.new(-360, 360)
CloakEffect2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(1, 1)})
CloakEffect2.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
CloakEffect2.Texture = "http://www.roblox.com/asset/?id=321556991"
local TrailEffect = Instance.new("ParticleEmitter", Torso)
TrailEffect.Lifetime = NumberRange.new(1)
TrailEffect.Speed = NumberRange.new(0)
TrailEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0)})
TrailEffect.Enabled = false
TrailEffect.RotSpeed = NumberRange.new(-360, 360)
TrailEffect.Rate = 500
TrailEffect.Rotation = NumberRange.new(-360, 360)
TrailEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0.5), NumberSequenceKeypoint.new(1, 1)})
TrailEffect.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
TrailEffect.LightEmission = 0.5
TrailEffect.Texture = "http://www.roblox.com/asset/?id=243728206"
local GhostEffect = Instance.new("ParticleEmitter", Torso)
GhostEffect.Lifetime = NumberRange.new(0.25, 0.5)
GhostEffect.Speed = NumberRange.new(12.5, 15)
GhostEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3, 0.3), NumberSequenceKeypoint.new(1, 0, 0)})
GhostEffect.Acceleration = Vector3.new(0, 0, 0)
GhostEffect.RotSpeed = NumberRange.new(9000)
GhostEffect.Rate = 1000
GhostEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0.25), NumberSequenceKeypoint.new(1, 1)})
GhostEffect.LightEmission = 0.75
GhostEffect.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1))
GhostEffect.Texture = "http://www.roblox.com/asset/?id=321556991"
GhostEffect.VelocitySpread = 360
GhostEffect.LockedToPart = false
GhostEffect.Enabled = false
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 0
local co2 = 0
local co3 = 0
local co4 = 0
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = -math.huge
local critdamageaddmax = -math.huge
local maxstamina = 100
local stamina = 0
local maxjumpstamina = 100
local jumpstamina = 0
local maxstealth = 100
local stealth = 0
local skill1stam = 100
local skill2stam = 100
local skill3stam = 100
local skill4stam = 100
local recovermana = 100
local recoverstealth = 5
local recoverjumpstamina = 25
local defensevalue = 1
local speedvalue = 1
local mindamage = -math.huge
local maxdamage = -math.huge
local damagevalue = -math.huge
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[C] Cometal Blast/Planet Shatter")
text2 = makelabel(framesk2, "[V] Dark Void")
text3 = makelabel(framesk3, "[X] Celestial Matter Distortion")
text4 = makelabel(framesk4, "[Z] Galactic Lunge/Spiral Dispursion")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminatext = makelabel(staminabar, "Mana")
stealthbar = makeframe(scrn, 0.5, ud(0.23, 0, 0.78, 0), ud(0.26, 0, 0.03, 0), c3(0.22745098039216, 0.49019607843137, 0.082352941176471))
stealthcover = makeframe(stealthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0, 0.7843137254902, 0))
stealthtext = makelabel(stealthbar, "Stealth")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
jumpstaminabar = makeframe(scrn, 0.5, ud(0.5, 0, 0.78, 0), ud(0.26, 0, 0.03, 0), c3(1, 0.61960784313725, 0))
jumpstaminacover = makeframe(jumpstaminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 0))
jumpstaminatext = makelabel(jumpstaminabar, "Jump Stamina")
local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = -math.huge
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  nooutline(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end
)()
  return p
end

clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
end

circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end

sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end

clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end
)()
    end
  end
)()
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par)
    sou.Volume = vol
    sou.Pitch = pit
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 10)
  end
))
end

getclosest = function(obj, dis, player)
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and v.Torso.Position - obj.magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      
    end
  end
end

tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end

untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end

tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end
)()
end

randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end

turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end
))
end

subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    fat.Event:wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

local clerp = CFrame.new().lerp
QuaternionFromCFrame = function(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end

QuaternionToCFrame = function(px, py, pz, x, y, z, w)
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

QuaternionSlerp = function(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end

local PartOnRay = workspace.FindPartOnRay
local RayNew = Ray.new
rayCast = function(Pos, Dir, Max, Ignore)
  return PartOnRay(workspace, RayNew(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = workspace
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  c.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", c)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      fat.Event:wait()
      c.Transparency = 1
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end
)()
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      local D = -math.huge
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        do
          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
          TagService:NewTag(h.Parent, Player, "Rigormortis", D)
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          local D = math.random(minim, maxim) * damagea.Value
          if h.Parent:FindFirstChild("Stats") then
            D = D / h.Parent:FindFirstChild("Stats").Defence.Value
          else
          end
          if not h.Parent:FindFirstChild("Stats") then
            do
              game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D / 2, 1)
              makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
              if Type == "Knockdown" then
                local humanoid = hit.Parent.Humanoid
                humanoid.PlatformStand = true
                coroutine.resume(coroutine.create(function(Humanoid)
    fat.Event:wait()
    Humanoid.PlatformStand = false
  end
), humanoid)
                local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
                local bodvol = Instance.new("BodyVelocity")
                bodvol.velocity = angle * knockback
                bodvol.P = 5000
                bodvol.maxForce = Vector3.new(8000, 8000, 8000)
                bodvol.Parent = hit
                rl = Instance.new("BodyAngularVelocity")
                rl.P = 3000
                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                rl.Parent = hit
                game:GetService("Debris"):AddItem(bodvol, 0.5)
                game:GetService("Debris"):AddItem(rl, 0.5)
              else
                do
                  if Type == "Normal" then
                    so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                    vp = Instance.new("BodyVelocity")
                    vp.P = 500
                    vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                    if KnockbackType == 1 then
                      vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                    else
                      if KnockbackType == 2 then
                        vp.velocity = Property.CFrame.lookVector * knockback
                      end
                    end
                    if knockback > 0 then
                      vp.Parent = hit.Parent.Torso
                    end
                    game:GetService("Debris"):AddItem(vp, 0.5)
                  else
                    if Type == "SlashLifeSteal" then
                      so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                      Humanoid.Health = Humanoid.Health + math.random(1, 2) / 2.5
                      vp = Instance.new("BodyVelocity")
                      vp.P = 500
                      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                      if KnockbackType == 1 then
                        vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                      else
                        if KnockbackType == 2 then
                          vp.velocity = Property.CFrame.lookVector * knockback
                        end
                      end
                      if knockback > 0 then
                        vp.Parent = hit.Parent.Torso
                      end
                      game:GetService("Debris"):AddItem(vp, 0.5)
                    else
                      if Type == "SlashLifeSteal2" then
                        so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                        Humanoid.Health = Humanoid.Health + math.random(2, 3) / 2.5
                        vp = Instance.new("BodyVelocity")
                        vp.P = 500
                        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                        if KnockbackType == 1 then
                          vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        else
                          if KnockbackType == 2 then
                            vp.velocity = Property.CFrame.lookVector * knockback
                          end
                        end
                        if knockback > 0 then
                          vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, 0.5)
                      else
                        if Type == "BlackHoleDamage" then
                          Humanoid.Health = Humanoid.Health + math.random(2, 4) / 5
                          local floatingvelocity = Instance.new("BodyVelocity")
                          floatingvelocity.Parent = hit.Parent.Torso
                          floatingvelocity.Velocity = Vector3.new(0, math.random(2.5, 5), 0)
                          game:GetService("Debris"):AddItem(floatingvelocity, 1)
                        else
                          do
                            if Type == "BlackHoleDamage2" then
                              vp = Instance.new("BodyVelocity")
                              vp.P = 500
                              vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                              if KnockbackType == 1 then
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                              else
                                if KnockbackType == 2 then
                                  vp.velocity = Property.CFrame.lookVector * knockback
                                end
                              end
                              if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                              end
                              game:GetService("Debris"):AddItem(vp, 0.5)
                            else
                              if Type == "Up" then
                                local bodyVelocity = Instance.new("BodyVelocity")
                                bodyVelocity.velocity = vt(0, 60, 0)
                                bodyVelocity.P = 5000
                                bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                                bodyVelocity.Parent = hit
                                game:GetService("Debris"):AddItem(bodyVelocity, 1)
                                rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                                rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                rl.Parent = hit
                                game:GetService("Debris"):AddItem(rl, 0.5)
                              else
                                do
                                  if Type == "Snare" then
                                    wait()
                                    bp = Instance.new("BodyPosition")
                                    bp.P = 2000
                                    bp.D = 100
                                    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    bp.position = hit.Parent.Torso.Position
                                    bp.Parent = hit.Parent.Torso
                                    game:GetService("Debris"):AddItem(bp, 1)
                                  else
                                    if Type == "Target" then
                                      so("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
                                      vp = Instance.new("BodyVelocity")
                                      vp.P = 500
                                      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                      if KnockbackType == 1 then
                                        vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                                      else
                                        if KnockbackType == 2 then
                                          vp.velocity = Property.CFrame.lookVector * knockback
                                        end
                                      end
                                      if knockback > 0 then
                                        vp.Parent = hit.Parent.Torso
                                      end
                                      game:GetService("Debris"):AddItem(vp, 0.5)
                                    end
                                  end
                                  local debounce = Instance.new("BoolValue")
                                  debounce.Name = "DebounceHit"
                                  debounce.Parent = hit.Parent
                                  debounce.Value = true
                                  game:GetService("Debris"):AddItem(debounce, Delay)
                                  c = Instance.new("ObjectValue")
                                  c.Name = "creator"
                                  c.Value = Player
                                  c.Parent = h
                                  game:GetService("Debris"):AddItem(c, 0.5)
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
            end
          end
        end
      end
    end
  end
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end

JumpEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(90), 0, 0)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

OrbEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end
), prt, msh)
end

BlockShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

canwalk = true
canidle = true
cloaked = false
cloaked2 = false
portal = false
usedstealth = false
invisible = false
Face.Parent = nil
candoublejump = true
MMouse = mouse
TrailSound = Instance.new("Sound", Torso)
TrailSound.Pitch = 2
TrailSound.Volume = 0.25
TrailSound.Looped = true
TrailSound.SoundId = "http://www.roblox.com/asset/?id=338601253"
TrailSound2 = Instance.new("Sound", Torso)
TrailSound2.Pitch = 0.5
TrailSound2.Volume = 0.25
TrailSound2.Looped = true
TrailSound2.SoundId = "http://www.roblox.com/asset/?id=338601253"
Cloak = function()
  cloaked = true
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      TrailEffect.Enabled = true
      speed.Value = 0.1
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency + 0.1
    end
    GhostEffect.Enabled = true
    CloakEffectLight2.Enabled = true
    defense.Value = 0.6
    Humanoid.CameraOffset = Vector3.new(0, 1, 0)
    TrailSound:Play()
    TrailSound2:Play()
    TrailEffect.Enabled = true
    v.CanCollide = false
    speed.Value = 0.1
    v.Transparency = 1
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency + 0.1
    end
    hatty.Transparency = 1
  end
), hatp)
          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
end

UnCloak = function()
  cloaked = false
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1.2)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      TrailEffect.Enabled = false
      speed.Value = 1.25
      TrailEffect.Enabled = false
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency - 0.1
    end
    GhostEffect.Enabled = false
    CloakEffectLight2.Enabled = false
    defense.Value = 0.9
    Humanoid.CameraOffset = Vector3.new(0, 0, 0)
    TrailSound:Stop()
    TrailSound2:Stop()
    speed.Value = 1.25
    v.Transparency = 0
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency - 0.1
    end
    hatty.Transparency = 0
  end
), hatp)
          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
end

Cloak2 = function()
  cloaked2 = true
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency + 0.1
    end
    hatty.Transparency = 1
  end
), hatp)
          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end
))
    end
  end
end

UnCloak2 = function()
  cloaked2 = false
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1.2)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency - 0.1
    end
    hatty.Transparency = 0
  end
), hatp)
          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
    end
  end
end

GottaFlip = function()
  attack = true
  for i = 0, 1, 0.5 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(205), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(205), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.02 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  attack = false
end

attackone = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(-20), math.rad(190), math.rad(-90)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=338586299", LeftArm, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  attack = false
end

attacktwo = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(-20), math.rad(160), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(-75)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=338586318", RightArm, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(40)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  attack = false
end

attackthree = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  for i = 0, 1, 0.6 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(105), math.rad(45), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(105), math.rad(-45), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=338586331", Torso, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(45), math.rad(-75)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(75), math.rad(-45), math.rad(75)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end

attackfour = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=338586299", Torso, 1, 1.3)
  for i = 0, 1, 0.125 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0 - 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end

SpiralDispursion = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  for i = 1, 4 do
    so("http://roblox.com/asset/?id=338586331", Torso, 1, math.random(120, 140) / 100)
    for i = 0, 1, 0.125 do
      fat.Event:wait()
      Torso.Velocity = RootPart.CFrame.lookVector * 25
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(-180), math.rad(0 - 360 * i)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.45)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, 0.5, -1) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.5, -1) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  attack = false
end

GalacticLunge = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  for i = 1, 1 do
    for i = 0, 1, 0.125 do
      fat.Event:wait()
      Torso.Velocity = RootPart.CFrame.lookVector * 50
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 4) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(105), math.rad(45), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(105), math.rad(-45), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(75), math.rad(45), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(75), math.rad(-45), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=338586331", Torso, 1, math.random(120, 140) / 100)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(45), math.rad(-75)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(75), math.rad(-45), math.rad(75)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end

CelestialMatterDistortion = function()
  if cloaked == true then
    UnCloak()
  end
  invisible = true
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 16 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 0 * speed.Value
  canidle = false
  canwalk = false
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.45) * angles(math.rad(-35), math.rad(45), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * angles(math.rad(45), math.rad(-105), math.rad(0)) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Head.Transparency = 1
  Cloak2()
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    Head.Transparency = 1
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.45) * angles(math.rad(-35), math.rad(45), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * angles(math.rad(45), math.rad(-105), math.rad(0)) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  wait(0.5)
  Head.Transparency = 1
  Humanoid.WalkSpeed = 16 * speed.Value
  canidle = true
  canwalk = true
  attack = false
  wait(5)
  UnCloak2()
  invisible = false
end

DemolishingGroundPound = function()
  if cloaked == true then
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Torso.Velocity = RootPart.CFrame.lookVector * 25
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5 + 2 * i) * angles(math.rad(-15 - 15 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(30 + 15 * i), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75 + 0.25 * i, -0.5 + 0.5 * i) * angles(math.rad(135 + 30 * i), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75 + 0.25 * i, -0.5 + 0.5 * i) * angles(math.rad(135 + 30 * i), math.rad(0), math.rad(15)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  do
    for i = 0, 1, 0.5 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 0 * speed.Value
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * angles(math.rad(135), math.rad(0), math.rad(0)), 0.6)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.6)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, -0.5) * angles(math.rad(205), math.rad(0), math.rad(-15)), 0.6)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, -0.5) * angles(math.rad(205), math.rad(0), math.rad(15)), 0.6)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    end
  end
  hitfloor = nil
  while hitfloor == nil do
    fat.Event:wait()
    hitfloor = rayCast(Head.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  end
  Col = hitfloor.BrickColor
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  refpart.Anchored = true
  refpart.Parent = workspace
  refpart.CFrame = cf(posfloor)
  game:GetService("Debris"):AddItem(refpart, 3)
  for i = 1, 20 do
    local Color = hitfloor.BrickColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(10, 50) / 100, math.random(10, 50) / 100, math.random(10, 50) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-25, 25), math.random(50, 75), math.random(-25, 25))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 0, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    actualgroundpart.Anchored = true
    actualgroundpart.Material = Materials
    actualgroundpart.CanCollide = false
    actualgroundpart.Friction = 1
    actualgroundpart.CFrame = cf(posfloor) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(actualgroundpart, 10)
    game:GetService("Debris"):AddItem(groundpart, 10)
    coroutine.resume(coroutine.create(function()
    wait(5)
    while 1 do
      fat.Event:wait()
      groundpart.Transparency = groundpart.Transparency + 0.025
      actualgroundpart.Transparency = actualgroundpart.Transparency + 0.05
    end
  end
))
  end
  so("http://roblox.com/asset/?id=200632875", Torso, 1, 1)
  so("http://roblox.com/asset/?id=263610131", Torso, 1, 1)
  so("http://roblox.com/asset/?id=263610111", Torso, 1, 1)
  JumpEffect(Col, cf(refpart.Position), 1, 1, 1, 1, 1, 4, 0.05)
  JumpEffect(Col, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
  MagniDamage(refpart, 12, 15, 20, 10, "Normal")
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * angles(math.rad(135 + 15 * i), math.rad(0), math.rad(0)), 0.6)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45 - 15 * i), math.rad(0), math.rad(0)), 0.6)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, -0.5) * angles(math.rad(205 + 15 * i), math.rad(0), math.rad(-15)), 0.6)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, -0.5) * angles(math.rad(205 + 15 * i), math.rad(0), math.rad(15)), 0.6)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.05 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(-15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, 0.8, -0.8) * angles(math.rad(35), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  canidle = true
  canwalk = true
  attack = false
end

CometalBlast = function()
  attack = true
  canidle = false
  canwalk = false
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-60)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-30)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  so("http://roblox.com/asset/?id=199145659", LeftArm, 1, math.random(150, 200) / 100)
  do
    for i = 0, 1, 0.12 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 0 * speed.Value
      OrbEffect(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      BlockShockwave(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-60)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-30)), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  canidle = true
  canwalk = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 16 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(30)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-15), math.rad(-90)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = false
  canwalk = false
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  refpart.Anchored = true
  refpart.CFrame = RootPart.CFrame * cf(0, 0, -10)
  game:GetService("Debris"):AddItem(refpart, 3)
  for i = 1, 20 do
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, TorsoColor, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    groundpart.Anchored = false
    groundpart.Material = "Neon"
    groundpart.CanCollide = false
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(75, 100), math.random(-50, 50))
    groundpart.CFrame = cf(refpart.Position) * cf(math.random(-250, 250) / 100, 0, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 5)
    coroutine.resume(coroutine.create(function()
    while 1 do
      fat.Event:wait()
      groundpart.Transparency = groundpart.Transparency + 0.025
    end
  end
))
  end
  so("http://roblox.com/asset/?id=199145534", refpart, 1, math.random(150, 200) / 100)
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
    Shockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
  end
  MagniDamage(refpart, 20, 8, 16, 20, "Normal")
  Humanoid.Jump = true
  Torso.Velocity = Vector3.new(0, 7.5, 0)
  Torso.Velocity = RootPart.CFrame.lookVector * -75
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.075)
    BlockShockwave(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.075)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 2, 0) * angles(math.rad(-20 - 45 * i), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(45), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(-45), math.rad(-15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(45), math.rad(90), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(45), math.rad(-90), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  attack = false
end

BlackHole = function()
  if cloaked == true then
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  Humanoid.Jump = true
  so("http://roblox.com/asset/?id=199145761", Torso, 1, math.random(75, 125) / 100)
  for i = 1, 2 do
    for i = 0, 1, 0.12 do
      fat.Event:wait()
      Torso.Velocity = vt(0, 20, 0)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 + 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(15)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
      BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    end
  end
  so("http://roblox.com/asset/?id=199145659", RightArm, 1, math.random(100, 150) / 100)
  for i = 0, 1, 0.04 do
    fat.Event:wait()
    Torso.Velocity = vt(0, 4, 0)
    OrbEffect(TorsoColor, RightArm.CFrame * cf(0, -1, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.075)
    BlockShockwave(TorsoColor, RightArm.CFrame * cf(0, -1, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(105), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(15), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
  end
  portal = true
  portalrefpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  portalrefpart.Anchored = true
  portalrefpart.CFrame = Head.CFrame * cf(0, 0, -15)
  game:GetService("Debris"):AddItem(portalrefpart, 3)
  portalrefpart2 = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  portalrefpart2.Anchored = true
  portalrefpart2.CFrame = Head.CFrame * cf(0, 0, -15)
  game:GetService("Debris"):AddItem(portalrefpart2, 10)
  so("http://roblox.com/asset/?id=203691653", portalrefpart, 1, math.random(100, 150) / 100)
  so("http://roblox.com/asset/?id=203691562", portalrefpart, 1, math.random(100, 150) / 100)
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.025)
    BlockShockwave(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.025)
  end
  coroutine.resume(coroutine.create(function()
    while portalrefpart.Parent == workspace do
      fat.Event:wait()
      PWN = {}
      for _,v in pairs(workspace:children()) do
        if v.className == "Model" and v:FindFirstChild("Humanoid") ~= nil and v.Humanoid.Health > 0 and v:FindFirstChild("Torso") ~= nil and v ~= Character and v.Torso.Position - portalrefpart.Position.magnitude <= 35 then
          table.insert(PWN, v.Torso)
        end
      end
      for _,t in pairs(PWN) do
        Mag = portalrefpart.Position - t.Position.magnitude / 2
        rl = it("BodyAngularVelocity")
        rl.P = 2000
        rl.maxTorque = vt(9999, 9999, 9999)
        rl.angularvelocity = vt(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20)) / 10
        rl.Parent = t
        game:GetService("Debris"):AddItem(rl, 0.1)
        if Mag <= 2 then
          do
            vl = it("BodyVelocity")
            vl.P = 2000
            vl.maxForce = vt(9999, 9999, 9999)
            vl.velocity = t.Position - portalrefpart.Position.unit * -(50 / Mag)
            vl.Parent = t
            game:GetService("Debris"):AddItem(vl, 0.1)
            -- DECOMPILER ERROR at PC144: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC144: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      so("http://roblox.com/asset/?id=203691610", portalrefpart, 1, math.random(100, 150) / 100)
      MagniDamage(portalrefpart, 35, 1, 2, 1, "BlackHoleDamage")
      OrbEffect(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.075)
      BlockShockwave(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.05)
    end
    if portalrefpart.Parent ~= workspace then
      so("http://roblox.com/asset/?id=203691699", portalrefpart2, 1, math.random(100, 150) / 100)
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        for i = 1, math.random(3, 6) do
          OrbEffect(TorsoColor, cf(portalrefpart2.Position), 20, 20, 20, -1.5, -1.5, -1.5, 0.075)
          BlockShockwave(TorsoColor, cf(portalrefpart2.Position), 20, 20, 20, -1.5, -1.5, -1.5, 0.075)
        end
      end
      wait(0.5)
      so("http://roblox.com/asset/?id=203691510", portalrefpart2, 1, math.random(100, 150) / 100)
      so("http://roblox.com/asset/?id=199145534", portalrefpart2, 1, math.random(100, 150) / 100)
      MagniDamage(portalrefpart2, 50, 10, 20, 10, "BlackHoleDamage2")
      for i = 1, math.random(3, 6) do
        OrbEffect(TorsoColor, cf(portalrefpart2.Position), 0.1, 0.1, 0.1, 2, 2, 2, 0.025)
        BlockShockwave(TorsoColor, cf(portalrefpart2.Position), 0.1, 0.1, 0.1, 2, 2, 2, 0.025)
      end
    end
  end
))
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Torso.Velocity = vt(0, 4, 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(15), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
  end
  canidle = true
  canwalk = true
  attack = false
end

DoubleJump = function()
  canidle = false
  canwalk = false
  attack = true
  Torso.Velocity = vt(0, 70, 0)
  JumpEffect("Light stone grey", cf(Torso.Position), 0.1, 0.1, 0.75, 0.75, 0.75, 0.5, 0.075)
  so("http://roblox.com/asset/?id=161006221", Torso, 0.5, math.random(150, 200) / 100)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, 0.5, -1) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.5, -1) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  canidle = true
  canwalk = true
  attack = false
end

mouse.Button1Down:connect(function()
  if attack == false then
    if attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthree()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfour()
          end
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        fat.Event:wait()
      end
    end
    if attack == false then
      attacktype = 1
    end
  end
))
end
)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and attack == false and usedstealth == false and invisible == false then
    if cloaked == false and stealth >= 50 then
      usedstealth = true
      Cloak()
      wait(0.5)
      usedstealth = false
    else
      if cloaked == true then
        usedstealth = true
        UnCloak()
        wait(0.5)
        usedstealth = false
      end
    end
    while 1 do
      while 1 do
        if cloaked == true and stealth >= 0 then
          fat.Event:wait()
          stealth = stealth - 0.66666666666667
          if Humanoid.Health > 30 then
            Torso.Velocity = RootPart.CFrame.lookVector * (25 * Humanoid.Health / 50)
            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      if Humanoid.Health < 30 then
        Torso.Velocity = RootPart.CFrame.lookVector * 20
      end
    end
    if stealth <= 0 then
      UnCloak()
    end
  end
  if k == "z" then
    if attack == false and cloaked == true and co1 <= cooldown1 and skill1stam <= stamina then
      cooldown1 = 0
      subtractstamina(skill1stam)
      SpiralDispursion()
    else
      if attack == false and cloaked == false and co1 <= cooldown1 and skill1stam <= stamina then
        cooldown1 = cooldown1 / 2
        subtractstamina(skill1stam)
        GalacticLunge()
      end
    end
  end
  if k == "x" and attack == false and stealth >= 30 and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    stealth = stealth - 30
    CelestialMatterDistortion()
  end
  if k == "c" then
    if attack == false and cloaked == true and co3 <= cooldown3 and skill3stam <= stamina then
      cooldown3 = 0
      subtractstamina(skill3stam)
      DemolishingGroundPound()
    else
      if attack == false and cloaked == false and co3 <= cooldown3 and skill3stam <= stamina then
        cooldown3 = cooldown3 / 2
        subtractstamina(skill3stam)
        CometalBlast()
      end
    end
  end
  if k == "v" and attack == false and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    BlackHole()
  end
  if k == " " and attack == false and cloaked == false and Anim == "Jump" and jumpstamina == 100 then
    DoubleJump()
    jumpstamina = 0
  end
end
)
mouse.KeyUp:connect(function(k)
  k = k:lower()
end
)
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
  if stamina <= skill1stam then
    bar4.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar4.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill2stam then
    bar3.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar3.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill3stam then
    bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar1.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill4stam then
    bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar2.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
  if stealth <= maxstealth then
    stealth = stealth + recoverstealth / 30
  end
  if jumpstamina <= maxjumpstamina then
    jumpstamina = jumpstamina + recoverjumpstamina / 30
    if maxjumpstamina <= jumpstamina then
      jumpstamina = 100
    end
    if maxstealth <= stealth then
      stealth = 100
    end
    if co1 <= cooldown1 then
      cooldown1 = 20
    end
    if co2 <= cooldown2 then
      cooldown2 = 30
    end
    if co3 <= cooldown3 then
      cooldown3 = 40
    end
    if co4 <= cooldown4 then
      cooldown4 = 100
    end
  end
end

Character.Humanoid.Died:connect(function()
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Model") then
      v:Clone()
      v.Parent = workspace
      v.Children.CanCollide = true
    end
  end
end
)
game:GetService("RunService").Heartbeat:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  stealthcover:TweenSize(ud(1 * (stealth / maxstealth), 0, 1, 0), "Out", "Quad", 0.5)
  jumpstaminacover:TweenSize(ud(1 * (jumpstamina / maxjumpstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
end
)
local sine = 0
local change = 1
local val = 0
fat.Event:connect(function()
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
      Anim = "Jump"
      if attack == false and cloaked == false then
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      else
        if attack == false and cloaked == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and cloaked == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(-10), math.rad(0), math.rad(135)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(-10), math.rad(0), math.rad(-135)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
          Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(-0.15, -0.15, -0.15) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.45)
          Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(-0.25, -0.15, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.45)
          Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(-0.45, -0.35, 0.1) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
          Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-0.15, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.45)
          Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0.15, -0.15, -0.15) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.45)
          Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0.25, -0.15, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.45)
          Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0.45, -0.35, 0.1) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
          Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0.15, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.45)
        else
          if attack == false and cloaked == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          end
        end
      else
        if torvel.x < 1 and torvel.z < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 15)) * angles(math.rad(10 - 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(-45)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 2.5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0 - 2.5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(45)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 15) + -math.sin(sine / 15) / 15, 0) * angles(math.rad(15), math.rad(0), math.rad(15 + 5 * math.cos(sine / 15))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.55 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, -0.5) * angles(math.rad(105 + 5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0), math.rad(45)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.9 - 0.05 * math.cos(sine / 15), 0.1) * angles(math.rad(-10 - 2.5 * math.cos(sine / 15)), math.rad(75), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1.2, -0.9 - 0.15 * math.cos(sine / 15), 0.1) * angles(math.rad(15 - 2.5 * math.cos(sine / 15)), math.rad(-60), math.rad(0)) * angles(math.rad(-10 + 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(0)), 0.3)
            Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
          else
            if attack == true and canidle == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            end
          end
        else
          if torvel.x > 2 or torvel.z > 2 and torvel.x < 22 or torvel.z <22 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false and cloaked == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.25 + 0.2 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-60 + 5 * math.cos(sine / 7))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0 + 0.05 * math.cos(sine / 3.5)) * angles(math.rad(0), math.rad(2.5 * math.cos(sine / 7)), math.rad(60 - 5 * math.cos(sine / 7)) + Head.RotVelocity.Y / 15), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7, 0) * angles(math.rad(10), math.rad(-30), math.rad(60 + 5 * math.cos(sine / 3.5))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.55 + 0.05 * math.cos(sine / 3.5) + math.sin(sine / 3.5) / 7, -0.5) * angles(math.rad(105 + 5 * math.cos(sine / 7)), math.rad(0), math.rad(45)), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.9 + 0.25 * math.cos(sine / 7) / 2, -1.1 - 0.25 * math.cos(sine / 7) / 2, 0.25 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 5 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(-20 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1 - 0.25 * math.cos(sine / 7) / 2, -0.65 + 0.25 * math.cos(sine / 7) / 2, -0.25 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 5 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(-30 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
              Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
              Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            else
              if attack == true and canwalk == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-25 - 45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-25 + 45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            end
          else
            if torvel.x >= 22 or torvel.z >= 22 and hitfloor ~= nil then
              Anim = "Run"
              if attack == false and cloaked == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
              end
            end
          end
        end
      end
    end
  end
end
)