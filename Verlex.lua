loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

Meshes = {
  Blast = "20329976",
  Crown = "1323306",
  Ring = "3270017",
  Claw = "10681506",
  Crystal = "9756362",
  Coil = "9753878",
  Cloud = "1095708"
}
clangsounds = {
  "199149119",
  "199149109",
  "199149072",
  "199149025",
  "199148971"
}
hitsounds = {
  "199149137",
  "199149186",
  "199149221",
  "199149235",
  "199149269",
  "199149297"
}
blocksounds = {"199148933", "199148947"}
armorsounds = {
  "199149321",
  "199149338",
  "199149367",
  "199149409",
  "199149452"
}
woosh = {
  Heavy1 = "320557353",
  Heavy2 = "320557382",
  Heavy3 = "320557453",
  Heavy4 = "199144226",
  Heavy5 = "203691447",
  Heavy6 = "203691467",
  Heavy7 = "203691492",
  Light1 = "320557413",
  Light2 = "320557487",
  Light3 = "199145095",
  Light4 = "199145146",
  Light5 = "199145887",
  Light6 = "199145913",
  Light7 = "199145841",
  Medium1 = "320557518",
  Medium2 = "320557537",
  Medium3 = "320557563",
  Medium4 = "199145204"
}
music = {
  Breaking = "179281636",
  FinalReckoning = "357375770",
  NotDeadYet = "346175829",
  Intense = "151514610",
  JumpP1 = "160536628",
  JumpP2 = "60536666",
  SonsOfWar = "158929777",
  WrathOfSea = "165520893",
  ProtecTorsofEarth = "160542922",
  SkyTitans = "179282324",
  ArchAngel = "144043274",
  Anticipation = "168614529",
  TheMartyred = "186849544",
  AwakeP1 = "335631255",
  AwakeP2 = "335631297",
  ReadyAimFireP1 = "342455387",
  ReadyAimFireP2 = "342455399",
  DarkLordP1 = "209567483",
  DarkLordP2 = "209567529",
  BloodDrainP1 = "162914123",
  BloodDrainP2 = "162914203",
  DanceOfSwords = "320473062",
  Opal = "286415112",
  Calamity = "190454307",
  Hypnotica = "155968128",
  Nemisis = "160453802",
  Breathe = "276963903",
  GateToTheRift = "270655227",
  InfernalBeserking = "244143404",
  Trust = "246184492",
  AwakeningTheProject = "245121821",
  BloodPain = "242545577",
  Chaos = "247241693",
  NightmareFictionHighStake = "248062278",
  TheWhiteWeapon = "247236446",
  Gale = "256851659",
  ImperialCode = "256848383",
  Blitzkrieg = "306431437",
  RhapsodyRage = "348690251",
  TheGodFist = "348541501",
  BattleForSoul = "321185592",
  TheDarkColossus = "305976780",
  EmpireOfAngels = "302580452",
  Kronos = "302205297",
  Exorcist = "299796054",
  CrimsonFlames = "297799220",
  UltimatePower = "295753229",
  DrivingInTheDark = "295753229",
  AscendToPower = "293860654",
  GodOfTheSun = "293612495",
  DarkRider = "293861765",
  Vengeance = "293375555",
  SoundOfWar = "293376196",
  HellsCrusaders = "293012202",
  Legend = "293011823",
  RisingSouls = "290524959"
}
misc = {
  GroundSlam = "199145477",
  LaserSlash = "199145497",
  RailGunFire = "199145534",
  Charge1 = "199145659",
  Charge2 = "169380469",
  Charge3 = "169380479",
  EmptyGun = "203691822",
  GunShoot = "203691837",
  Stomp1 = "200632875",
  Stomp2 = "200632561",
  TelsaCannonCharge = "169445572",
  TelsaCannonShoot = "169445602",
  AncientHymm = "245313442"
}
wait(0.016666666666666666)
local Effects = {}
local Player = game.Players.localPlayer
local Character = game.Workspace.non
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
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
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
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
local co1 = 10
local co2 = 15
local co3 = 15
local co4 = 25
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 0
local critdamageaddmax = 0
local maxstamina = 100
local stamina = 0
local skill1stam = 10
local skill2stam = 10
local skill3stam = 20
local skill4stam = 30
local recovermana = 3
local defensevalue = 1
local speedvalue = 1
local mindamage = 0
local maxdamage = 0
local damagevalue = 0
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
ch = Character
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
RSH, LSH = nil, nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = ch.Torso["Right Hip"]
LH = ch.Torso["Left Hip"]
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = ch.Torso
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "LW"
LW.Part0 = ch.Torso
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
function makelabel(par, text)
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
text1 = makelabel(framesk1, "[3] Skill3")
text2 = makelabel(framesk2, "[4] Skill4")
text3 = makelabel(framesk3, "[2] Skill2")
text4 = makelabel(framesk4, "[1] Skill1")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627450981, 0.6705882352941176, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.23921568627450981, 0.6705882352941176, 1))
staminatext = makelabel(staminabar, "Mana")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.1803921568627451, 0.19215686274509805))
healthtext = makelabel(healthbar, "Health")
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
damagea.Value = damagevalue
function atktype(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end))
end
function turncrit()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end))
end
function subtractstamina(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
function clerp(a, b, t)
  return a:lerp(b, t)
end
function randomizer(percent)
  local randomized = math.random(0, 100)
  if percent >= randomized then
    return true
  elseif percent <= randomized then
    return false
  end
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
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
function rayCast(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end
function makeeffect(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "SmoothPlastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  RemoveOutlines(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  elseif id == nil and type ~= nil then
    mesh.MeshType = type
  elseif id == nil and type == nil then
    mesh.MeshType = "Brick"
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666666666)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
function clangy(cframe)
  wait(0.016666666666666666)
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
      wait(0.016666666666666666)
      dis = dis + 0.2
      local partc = part:clone()
      partc.Parent = workspace
      partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
      partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
      table.insert(clang, partc)
    end
    for i, v in pairs(clang) do
      coroutine.wrap(function()
        for i = 1, 10 do
          wait(0.01)
          v.Transparency = v.Transparency + 0.1
        end
        v:destroy()
      end)()
    end
  end)()
end
function circle(color, pos1)
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
      wait(0.016666666666666666)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
function firespaz1(color, pos1)
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
      wait(0.03333333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
function pickrandom(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
function sound(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end
function clangy(cframe)
  wait(0.016666666666666666)
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
      wait(0.016666666666666666)
      dis = dis + 0.2
      local partc = part:clone()
      partc.Parent = workspace
      partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
      partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
      table.insert(clang, partc)
    end
    for i, v in pairs(clang) do
      coroutine.wrap(function()
        for i = 1, 10 do
          wait(0.01)
          v.Transparency = v.Transparency + 0.1
        end
        v:destroy()
      end)()
    end
  end)()
end
function so(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
local function getclosest(obj, distance)
  local last, lastx = distance + 1, nil
  for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = (t.Position - obj.Position).magnitude
      if distance >= dist and last > dist then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end
function makegui(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
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
    tl.TextColor3 = Color3.new(0.7058823529411765, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.7058823529411765, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
function tag(hum, Player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = Player
  creator.Name = "creator"
end
function untag(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
function tagPlayer(h)
  coroutine.wrap(function()
    tag(h, Player)
    wait(1)
    untag(h)
  end)()
end
function damage(hit, mind, maxd, knock, type, prop)
  if hit.Name:lower() == "Hitbox" then
    do
      local pos = CFrame.new(0, 1, -1)
      sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, Torso, 6)
      coroutine.wrap(function()
        for i = 1, 4 do
          clangy(Torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
        end
      end)()
    end
  end
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for i, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent:IsA("Hat") then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  local D = math.random(mind, maxd) * damagea.Value
  if h.Parent:FindFirstChild("Stats") then
    D = D / h.Parent:FindFirstChild("Stats").Defence.Value
  elseif not h.Parent:FindFirstChild("Stats") then
  end
  if h then
    makegui(h.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if type == 1 then
      tagPlayer(h)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        h.Health = h.Health - D
      else
        h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
      end
      so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
      local vp = Instance.new("BodyVelocity")
      vp.P = 500
      vp.maxForce = Vector3.new(math.huge, 0, math.huge)
      vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
      if knock > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif type == 2 then
      so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        h.Health = h.Health - D
      else
        h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
      end
      tagPlayer(h)
    elseif type == 3 then
      tagPlayer(h)
      local asd = randomizer(critchance)
      if asd == true then
        turncrit()
      end
      if crit == false then
        h.Health = h.Health - D
      else
        h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
      end
      Character.Humanoid.Health = Character.Humanoid.Health + D / 2
      so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
      for i = 1, 10 do
        firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
      end
    elseif type == 4 then
      h.Health = h.Health + D
      so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
      circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
    end
  end
end
function subtrackstamina(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
FakeMain = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Teal", "FakeMain", Vector3.new(0.328999937, 0.200000003, 0.328999937))
FakeMainweld = CreateWeld(m, Character.Torso, FakeMain, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.144948244, 1.09576797, -0.0137405396, 9.2387188E-7, 1, -1.25662482E-4, -7.14142516E-7, -1.25662482E-4, -1, -1, 9.23961579E-7, 7.14026442E-7))
MainPrt = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 1, "Teal", "MainPrt", Vector3.new(0.328999937, 0.200000003, 0.328999937))
MainPrtweld = CreateWeld(m, FakeMain, MainPrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, -2.74225087E-14, 0, 1, -5.68434189E-14, -2.74225087E-14, -5.68434189E-14, 1))
Handle1 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle1", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle1weld = CreateWeld(m, MainPrt, Handle1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.46624374E-4, -3.51667404E-6, -1.70010746, 0.999991238, 7.17976945E-7, 0.00420576893, -7.12883775E-7, 1, -1.2128038E-6, -0.00420576893, 1.20979496E-6, 0.999991238))
CreateMesh("CylinderMesh", Handle1, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00359845161, 1.35302544E-5, -0.655606985, 1.00000012, 6.39293285E-6, -4.3458839E-12, -6.39293285E-6, 1, -1.29156285E-6, 1.59086383E-10, 1.29156285E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01923943E-5, -0.765023232, 0.327973843, 3.38934624E-5, 1, 2.44895364E-5, -7.66317896E-7, -2.44896946E-5, 0.999992549, 0.999992549, -3.37754755E-5, 7.65078482E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363874435, 7.15255737E-6, -0.582875013, 1.00000012, -2.39172368E-6, -4.0583396E-12, 2.39172368E-6, 1, -5.64356696E-7, 6.71847161E-11, 5.64356696E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38418579E-7, 0.109352827, 0.400940299, 2.76297214E-7, 1, 3.73115085E-8, 0.999990642, -1.2847886E-7, 5.91348517E-8, 5.96134981E-8, 3.73098743E-8, -0.999990642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.30481339E-6, 0.109347105, 0.400930166, -2.66067218E-7, -1, -2.27373675E-12, -0.999991596, 1.33833964E-7, 4.1322102E-12, 4.69797978E-10, 7.78044296E-13, -0.999991596))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158E-6, 0.218680859, -0.473920226, -1.41387864E-6, 1, -7.52192477E-8, -1.00000012, -1.41387864E-6, -5.26155439E-8, -5.26143573E-8, 7.52191198E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328145027, 0.4010216, -2.39670044E-8, 1, 4.12373447E-6, 0.999992549, 1.42201316E-7, -5.86774647E-8, -5.81480393E-8, 4.12376403E-6, -0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.57627869E-7, 0.328131557, -0.328133583, -1.49305561E-6, 1, 3.69454392E-6, -1.78342901E-7, 3.6945703E-6, -0.999992549, -0.999992549, -1.61133357E-6, 1.78818127E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.91549683E-5, 1.3589859E-4, 9.00030136E-6, -1.00000012, 3.40558909E-5, 3.88877001E-4, 3.8887604E-4, -2.78815151E-5, 1.00000012, 3.4066732E-5, 1, 2.78682692E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363659859, 1.1920929E-7, -0.218694568, 0.999996364, -2.51297024E-7, 4.61532895E-10, 3.10406904E-7, 1, 5.17275112E-12, -4.69798422E-10, -4.27746727E-12, 0.999996364))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0777366012, 9.23871994E-6, 0.123275518, -0.499999613, 2.70776945E-6, 0.866025746, 8.8378074E-6, 1, 1.97584495E-6, -0.866025686, 8.64169124E-6, -0.499999613))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.96453857E-5, 1.13248825E-5, 0.182301402, 1.00000012, -4.93229891E-6, -3.97517999E-12, 4.93229891E-6, 1, -9.94046673E-7, 1.21487362E-10, 9.94046673E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.64916229E-6, -1.20289695, 0.10937047, -9.47329681E-9, 1, -3.62556875E-6, -4.80574045E-7, 3.62559831E-6, 0.999992073, 0.999992073, 1.33964932E-7, 4.80558299E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.47034836E-6, -0.109358311, -1.12990892, -6.55680196E-7, 1, -7.54181428E-8, -0.999996126, -7.18326191E-7, -6.14631332E-8, -6.14618969E-8, 7.54192939E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, -1.20290005, 0.109323025, -5.01458999E-7, -1, 4.14153055E-6, -1.53132245E-8, 4.14156466E-6, 0.999992073, -0.999992073, 3.7693826E-7, -1.53626978E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0037317276, 1.35302544E-5, 0.0363521576, 1.00000012, -7.15763599E-6, -3.90233852E-12, 7.15763599E-6, 1, -1.05257197E-6, 1.28883584E-10, 1.05257197E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0208580494, 1.02519989E-5, 0.221218228, 0.707107484, -2.59558874E-6, 0.707106233, 7.41328404E-6, 1, -3.74257615E-6, -0.707106233, 7.88838224E-6, 0.707107484))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0796747208, 8.40425491E-6, 0.126610279, -0.500000834, 1.42288627E-6, -0.86602509, 9.03436739E-6, 1, -3.57298995E-6, 0.86602509, -9.61048499E-6, -0.500000834))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0209729671, 1.02519989E-5, 0.221354723, 0.707106233, -4.11131623E-6, -0.707107484, 7.72644853E-6, 1, 1.9121635E-6, 0.707107484, -6.81552774E-6, 0.707106233))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.40802765E-5, 6.55651093E-7, -1.09311724, 1.00000012, 8.37317202E-6, -2.51501202E-8, -8.37317202E-6, 1, -1.0442136E-9, 2.51417056E-8, 1.04430242E-9, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.10934782, -0.400939226, -3.87546606E-7, -1, 2.21122832E-7, 1.00000012, -3.87546606E-7, 1.19205168E-7, -1.19185486E-7, 2.21122889E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.57627869E-6, 2.98023224E-7, -0.400947213, 0.999993503, 1.11627742E-7, -9.35462818E-10, -9.02218744E-9, 1, 4.26325641E-12, 4.61524263E-10, -3.41415785E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929E-7, 0.364495277, 0.182245016, 3.10406904E-7, 1, 5.17275112E-12, 4.69798422E-10, 4.27746727E-12, -0.999996364, -0.999996364, 2.51297024E-7, -4.61532895E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.364495039, 0.182254076, -2.50802259E-7, -1, -5.1159077E-12, 4.69798422E-10, 4.27746727E-12, -0.999996364, 0.999996364, -1.91692379E-7, 4.61530952E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459E-6, 1.1920929E-7, -0.32804513, 0.999996364, -2.51297024E-7, 4.61532895E-10, 3.10406904E-7, 1, 5.17275112E-12, -4.69798422E-10, -4.27746727E-12, 0.999996364))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034832, -0.218741417, -9.05769411E-7, 1, 4.19312846E-6, 6.10700184E-8, 4.19315893E-6, -0.999992549, -0.999992549, -1.02401827E-6, -6.05317965E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737E-7, 1.78813934E-7, -0.765435219, 0.999992073, 4.55474947E-8, -4.69799366E-10, 7.89732439E-8, 1, 3.58113539E-12, 4.61524374E-10, -2.60413913E-12, 0.999992073))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.30481339E-6, -0.109345436, 0.765497923, 2.4025212E-8, 1, -2.68209931E-7, 1.00000012, -2.4025212E-8, -4.19508739E-9, -4.22071045E-9, -2.68209476E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.47034836E-6, 0.109348774, -0.765428185, 1.16197043E-7, -1, -3.36324888E-8, 0.999992549, 2.34431354E-7, 1.25687105E-8, -1.25812418E-8, -3.36311459E-8, 0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.9935112E-6, 0.32812655, -0.32797718, 1.28285319E-6, -1, 3.69483314E-6, 1.79748113E-7, -3.69483246E-6, -1.00000012, 1.00000012, 1.28285319E-6, 1.8020674E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.529953E-6, 0.109344244, -1.12993956, -7.47910235E-7, 1, -7.53396989E-8, -0.999992549, -8.6617365E-7, -5.86691584E-8, -5.91336011E-8, 7.53416955E-8, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.7147274E-5, -0.764549375, 0.329266787, -1.32639398E-5, -1, 2.44386101E-5, 7.65837513E-7, 2.44385956E-5, 1.00000012, -1.00000012, 1.3263947E-5, 7.65550851E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01327896E-5, -1.34622538, 0.181414127, -2.10503786E-5, 1, 2.44417042E-5, -8.12412338E-7, -2.4441917E-5, 0.999992073, 0.999992073, 2.11750303E-5, 8.13039776E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21965909, -4.86373901E-5, -1.12716556, -1.00000012, -1.09744229E-4, -1.01040769E-7, 1.09744244E-4, -1, 2.51859547E-8, -1.01049459E-7, 2.5174927E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.88026237E-5, -1.34452581, 0.182477236, 4.17189003E-5, -1, 2.44082003E-5, 7.96567349E-7, 2.44084276E-5, 0.999992073, -0.999992073, -4.18437121E-5, 7.97217638E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255176306, -3.21865082E-6, -0.80153203, 0.999992549, 1.59391639E-5, -4.09828509E-8, -1.5820784E-5, 1, 5.48646995E-9, 4.05077039E-8, -5.48600099E-9, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.3663044E-5, 0.801941514, -0.183549881, -1.42525751E-5, -1, -3.6352194E-6, 1.24703888E-6, 3.63520121E-6, -1.00000012, 1.00000012, -1.42525751E-5, 1.24657163E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21847558, -6.43730164E-6, -1.12858641, 0.999996126, 4.32885136E-5, -6.19385077E-8, -4.32257075E-5, 1, 1.6741069E-8, 6.19266984E-8, -1.67376299E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256496668, -4.40478325E-5, -0.801550031, -1.00000012, -5.25360374E-5, -5.68048222E-8, 5.2536052E-5, -1, -2.27311148E-9, -5.7280765E-8, -2.27599628E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.83582306E-5, 2.98023224E-7, -1.2392242, 0.999992073, -3.3302058E-7, 4.61535588E-10, 4.57526767E-7, 1, -4.62932803E-10, -4.69739247E-10, 4.63941774E-10, 0.999992073))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.00271606E-5, 0, -1.16637254, 0.999992073, 5.18615707E-7, -1.86679872E-9, -3.9410952E-7, 1, -5.94127414E-10, 1.85858384E-9, 5.95086647E-10, 0.999992073))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.58955765E-6, -0.109353304, 0.765445113, -5.20798494E-7, -1, -1.00829169E-7, -0.999996126, 4.58137947E-7, -3.44548141E-8, 3.44758142E-8, 1.00828743E-7, -0.999996126))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.96046448E-7, -0.4741081, 0.328011036, -4.45533078E-6, -1, 4.13908447E-6, 3.3129135E-9, 4.13908401E-6, 1.00000012, -1.00000012, 4.45534533E-6, 4.19494217E-9))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.74181366E-6, -0.801942706, 0.18223691, 9.97824827E-7, -1, 4.14240367E-6, -1.15878285E-8, 4.14240321E-6, 1.00000012, -1.00000012, -9.97824827E-7, -1.16373631E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.44379044E-6, -0.546818614, 0.218687534, 7.46455044E-7, -1, 4.14206897E-6, -1.11222098E-8, 4.14206806E-6, 1.00000012, -1.00000012, -7.46469595E-7, -1.11717098E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00359892845, 1.35302544E-5, -0.509806633, 1.00000012, 6.39293285E-6, -4.3458839E-12, -6.39293285E-6, 1, -1.29156285E-6, 1.59086383E-10, 1.29156285E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.801843762, 0.182271242, -7.40401447E-7, 1, -3.67873645E-6, -6.4448011E-7, 3.67875145E-6, 0.999996126, 0.999996126, 8.03061994E-7, 6.44471072E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.31130219E-6, -0.473922729, 0.328080893, -7.3715637E-7, 1, 4.14190345E-6, 1.11139533E-8, -4.14193346E-6, 0.999992549, 0.999992549, 8.55419785E-7, -1.16456969E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.55651093E-7, -0.546805501, 0.218739271, -4.84287739E-7, 1, 4.14186161E-6, 1.11139604E-8, -4.14187707E-6, 0.999996126, 0.999996126, 5.46919182E-7, -1.11800258E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, 0.218727827, -0.473888278, 9.16857971E-7, -1, -7.51552989E-8, 0.999996126, 9.79518518E-7, -5.02955864E-8, 5.02777837E-8, -7.5154702E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.327998161, -0.401025414, 8.24336894E-7, -1, 4.13303815E-6, 1.00000012, 8.24351446E-7, 2.78980417E-9, -2.74144751E-9, 4.13303769E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.327976465, 0.401023626, 4.62619937E-7, -1, 4.12383952E-6, -1.00000012, -4.62619937E-7, -6.00661565E-8, 6.0018948E-8, -4.12383861E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.19888306E-6, 0.801867843, -0.182212353, 1.67358521E-5, 1, -3.64418793E-6, -1.22328299E-6, -3.64418224E-6, -0.999996126, -0.999996126, 1.66732789E-5, 1.22329584E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, -0.328078747, -0.401023746, -7.89412297E-7, 1, 4.13298903E-6, -0.999992549, -9.07675712E-7, 9.35488909E-10, 4.04870082E-10, -4.13301905E-6, 0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.401030302, -0.218663692, 7.07121217E-7, -1, 4.19291109E-6, -5.91990705E-8, -4.19290973E-6, -1.00000012, 1.00000012, 7.07135769E-7, -5.91431437E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158E-6, 0.109347105, -0.765441298, 9.38598532E-8, 1, -7.51805942E-8, -1.00000012, 9.38598532E-8, -5.91348517E-8, -5.91336189E-8, 7.51805516E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.12599945E-6, -0.10935235, -0.400942683, 4.89220838E-7, 1, -1.5021817E-7, -0.999996364, 4.30110958E-7, -3.65074328E-7, -3.65063613E-7, 1.50219734E-7, 0.999996364))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Handle2 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle2", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle2weld = CreateWeld(m, MainPrt, Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111517906, 1.51991844E-5, -1.60844827, 0.710074008, 2.94524943E-5, -0.704127133, 4.0445273E-5, 1, 8.26152391E-5, 0.704127133, -8.71415541E-5, 0.710074008))
CreateMesh("CylinderMesh", Handle2, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.55651093E-7, -0.546806574, 0.21873641, -6.64345862E-7, 1, 4.14195529E-6, -5.99989249E-8, -4.14196029E-6, 1, 1, 6.64345862E-7, 5.97045755E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.218725681, -0.473889112, 1.0969452E-6, -1, -7.52226015E-8, 1, 1.0969452E-6, 5.97049379E-8, -5.95142353E-8, -7.52334017E-8, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00365161896, -2.56299973E-6, -0.509857178, 1, 1.26527011E-5, -2.08506336E-7, -1.26526938E-5, 1, 1.51052893E-6, 2.0853561E-7, -1.51053609E-6, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.39746475E-6, -0.546763182, 0.218690395, 5.39628672E-7, -1, 4.14195165E-6, -1.18616256E-7, 4.14194756E-6, 1, -1, -5.39635948E-7, -1.19309121E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.31809235E-6, -0.474463701, 0.328078032, 1.53504661E-5, 1, 4.11596193E-6, -1.19600472E-7, -4.11596375E-6, 1, 1, -1.53504661E-5, 1.78900507E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.35113907E-6, -0.328026295, -0.401193857, -4.83560871E-6, -1, 4.13005182E-6, 1, -4.83560143E-6, 1.1930463E-7, -1.18617677E-7, 4.13005091E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.08616257E-6, 0.327980757, 0.401412964, -1.03989005E-5, -1, 4.11800647E-6, -1.00000012, 1.03988932E-5, -2.38509273E-7, 2.37828402E-7, -4.11800556E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.12599945E-6, -0.328086376, -0.401460886, 1.25639854E-5, 1, 4.10834036E-6, -1, 1.25639926E-5, -1.78902837E-7, -1.19599562E-7, -4.10834718E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.43730164E-6, -0.109349012, -0.400942087, 3.12691554E-7, 1, -1.5014291E-7, -0.999999881, 3.09133611E-7, -4.76936293E-7, -4.7671989E-7, 1.50142114E-7, 0.999999881))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.13927841E-6, 0.401030302, -0.218681335, 7.51511834E-7, -1, 4.19276694E-6, 5.90055542E-8, -4.19276967E-6, -1, 1, 7.5151911E-7, 5.97046466E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.56978989E-6, 0.801870584, -0.182209492, 1.65558522E-5, 1, -3.64412699E-6, -1.13302201E-6, -3.64410153E-6, -1, -1, 1.65558595E-5, 1.13240264E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.90085983E-6, 0.109352827, -0.765426159, 3.00715328E-7, 1, -7.50950448E-8, -1.00000012, 3.00715328E-7, -2.38517714E-7, -2.3831025E-7, 7.50924301E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00369095802, -1.22785568E-5, -0.582944155, 1.00000012, 3.12742486E-6, 1.01983956E-10, -3.12741759E-6, 1, 1.3754435E-6, -6.45562492E-11, -1.37545067E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.37769699E-6, 0.109349489, 0.400937796, -2.36417691E-7, -1, -8.01492206E-11, -1, 2.36417691E-7, -1.19308467E-7, 1.19109927E-7, 8.32756086E-11, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.55651093E-6, -0.765465975, 0.327980995, 4.72471293E-5, 1, 2.4465051E-5, -8.96886149E-7, -2.44650109E-5, 1, 1, -4.72471438E-5, 9.23931964E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00365114212, -2.56299973E-6, -0.655657768, 1, 1.26527011E-5, -2.08506336E-7, -1.26526938E-5, 1, 1.51052893E-6, 2.0853561E-7, -1.51053609E-6, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.84125519E-6, 0.218684912, -0.47386694, -9.55733412E-7, 1, -7.51387006E-8, -1.00000012, -9.55733412E-7, -2.38518766E-7, -2.3831025E-7, 7.51397806E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, 0.109349966, 0.400944471, 5.54209691E-8, 1, 3.73839839E-8, 0.999999821, -5.18630259E-8, 1.19308623E-7, 1.19114368E-7, 3.73916009E-8, -0.999999821))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.58306885E-5, 8.67843628E-5, -6.02006912E-6, -1, 2.73945698E-5, 3.88085755E-4, 3.88082437E-4, -2.93901066E-5, 1, 2.74059785E-5, 1, 2.93794692E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0776987076, -5.84125519E-6, 0.123313427, -0.500000238, -1.93139931E-6, 0.866025388, 2.17702473E-6, 1, 3.48709E-6, -0.866025388, 3.62889841E-6, -0.500000238))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.48362732E-6, 0.328142643, 0.401563883, 1.58123803E-5, 1, 4.09779386E-6, 1, -1.58123803E-5, 8.9493156E-8, 5.99936669E-8, 4.09780296E-6, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.05311584E-6, 0.328567982, -0.328141451, 1.18603275E-5, 1, 3.66989116E-6, -5.92666254E-8, 3.66990162E-6, -1, -1, 1.18603275E-5, -8.94871677E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00364208221, 1.49011612E-6, -0.218691111, 1, -2.77868821E-8, 1.19308638E-7, 2.77868821E-8, 1, 7.65112418E-11, -1.19109927E-7, -7.96376298E-11, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.84125519E-6, -0.10935545, -1.12991405, -8.35752871E-7, 1, -7.53424274E-8, -1, -8.35745595E-7, -1.19309362E-7, -1.19100939E-7, 7.53381073E-8, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.48362732E-5, -4.17232513E-6, 0.182277679, 1.00000012, 1.7283528E-6, 1.0081741E-10, -1.7283528E-6, 1, 5.17106059E-7, 3.77450744E-11, -5.17109584E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.02006912E-6, -1.20289421, 0.109368324, 9.67629603E-8, 1, -3.62550418E-6, -6.55119607E-7, 3.62552919E-6, 0.999993145, 0.999993145, 9.4078132E-9, 6.55750455E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.7949295E-6, -1.20289779, 0.109326124, -6.07666152E-7, -1, 4.14146052E-6, -1.78220958E-7, 4.14148917E-6, 0.999993205, -0.999993205, 5.01495379E-7, -1.78912899E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0208611488, -5.12599945E-6, 0.221178293, 0.707106411, 1.04599167E-6, 0.707107365, 7.52428605E-7, 1, -2.23167808E-6, -0.707107306, 2.11008592E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.079636097, -8.58306885E-6, 0.126631141, -0.50000006, -5.98902261E-7, -0.866025448, 2.37357017E-6, 1, -2.06193727E-6, 0.866025448, -3.08653398E-6, -0.50000006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210033655, -2.98023224E-6, 0.221309662, 0.707107365, 1.60980562E-6, -0.707106411, 1.10650581E-6, 1, 3.38311656E-6, 0.707106411, -3.17463855E-6, 0.707107365))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00371432304, -5.66244125E-6, 0.0365240574, 1.00000012, 2.49977893E-6, 1.01460625E-10, -2.49977893E-6, 1, 6.91561695E-7, 1.69525904E-11, -6.91565219E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-6, 1.78813934E-6, -1.09303927, 1, 4.7954818E-6, 5.97080216E-8, -4.79547452E-6, 1, -9.05743036E-10, -5.95051617E-8, 9.05401976E-10, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, 1.78813934E-6, -0.400944948, 1, -2.77068466E-8, 1.19308638E-7, 2.77068466E-8, 1, 8.01492206E-11, -1.19109927E-7, -8.69135874E-11, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.2584877E-6, -0.109350443, -0.400938272, -3.43097781E-7, -1, 2.21043479E-7, 1.00000012, -3.43097781E-7, 2.38517657E-7, -2.38292856E-7, 2.21039727E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, 0.364491701, 0.182250023, 2.36403139E-7, 1, 8.01492206E-11, 1.19109927E-7, 7.96376298E-11, -1, -1, 2.36410415E-7, -1.19308467E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43051147E-6, 0.364491701, 0.182247639, -1.76798494E-7, -1, -8.01492206E-11, 1.19109927E-7, 7.96376298E-11, -1, 1, -1.7680577E-7, 1.19308524E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.29153442E-6, 0.401577711, -0.218737841, 1.49305706E-5, 1, 4.16718831E-6, 1.19606582E-7, 4.16719968E-6, -1, -1, 1.49305706E-5, -1.78900862E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.31809235E-6, -0.109349728, 0.765439034, 2.30851583E-7, 1, -2.68137114E-7, 1, -2.30851583E-7, 1.19308467E-7, 1.1907796E-7, -2.68140639E-7, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57627869E-6, 1.60932541E-6, -0.765431643, 0.999993205, -7.90096237E-8, 1.7891324E-7, 1.85194949E-7, 1, 8.01492206E-11, -1.78714572E-7, -7.62270247E-11, 0.999993205))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-7, 1.49011612E-6, -0.328041792, 1, -2.77868821E-8, 1.19308638E-7, 2.77868821E-8, 1, 7.65112418E-11, -1.19109927E-7, -7.96376298E-11, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.96046448E-6, 0.109358549, -0.765335798, -2.16087938E-6, -1, -3.37241772E-8, 1, -2.16086482E-6, 1.49109184E-7, -1.48916257E-7, -3.37330448E-8, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.47630882E-5, -0.764933348, 0.329271078, -2.41252783E-5, -1, 2.44325129E-5, 6.58662486E-7, 2.4432491E-5, 1.00000012, -1.00000012, 2.41252928E-5, 6.55571853E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255182505, 4.17232513E-7, -0.801975965, 1, 2.46749551E-6, 8.95084042E-8, -2.46748823E-6, 1, -1.91902245E-8, -5.95029839E-8, 1.91810159E-8, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.88109207E-6, -1.34550643, 0.181307316, -2.90211392E-5, 1, 2.44420626E-5, -8.96883421E-7, -2.44420862E-5, 1, 1, 2.90211174E-5, 8.94193249E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.54323196E-6, 0.109349251, -1.12988377, -5.41076588E-7, 1, -7.52696678E-8, -1.00000012, -5.41076588E-7, -2.38518396E-7, -2.38310236E-7, 7.52668257E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.66893005E-6, 0.328515768, -0.327981472, -9.57866723E-6, -1, 3.68900874E-6, 2.97484178E-7, -3.68900965E-6, -1, 1, -9.57865996E-6, 2.981146E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.54972076E-5, 1.7285347E-6, -1.23922181, 0.999993205, -4.57570422E-7, 1.78912927E-7, 5.63755748E-7, 1, -3.92788024E-10, -1.78714515E-7, 3.9023007E-10, 0.999993205))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219613791, -5.0008297E-5, -1.12662649, -1.00000012, -1.1505968E-4, -2.38613893E-7, 1.15059673E-4, -1, 2.53747885E-8, -2.3831619E-7, 2.53494363E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.54511833E-5, 0.801161766, -0.183481216, -3.94212111E-6, -1, -3.63474828E-6, 1.34143841E-6, 3.6347451E-6, -1, 1, -3.94211384E-6, 1.34120057E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256500244, -4.51207161E-5, -0.801534653, -1.00000012, -5.25311625E-5, -2.08759431E-7, 5.25311552E-5, -1, -2.35388598E-9, -2.38319487E-7, -2.36468622E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.71661377E-5, 1.37090683E-6, -1.16637015, 0.999993205, 3.94058588E-7, 1.78913638E-7, -2.87880539E-7, 1, -5.20117283E-10, -1.78714501E-7, 5.21708898E-10, 0.999993205))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01735306E-5, -1.34452295, 0.182480812, 4.16127223E-5, -1, 2.44081712E-5, 5.99054943E-7, 2.44083585E-5, 0.999993145, -0.999993145, -4.17191623E-5, 5.95912297E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218473434, -5.12599945E-6, -1.12859225, 1, 4.3405933E-5, 5.97402163E-8, -4.34059257E-5, 1, 1.68112138E-8, -5.9507272E-8, -1.68149654E-8, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.90085983E-6, -0.109350443, 0.765447617, -3.40718543E-7, -1, -1.00903094E-7, -1, 3.40718543E-7, -1.19308382E-7, 1.19121943E-7, 1.00906618E-7, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60932541E-6, -0.474097013, 0.328013897, -4.66212077E-6, -1, 4.13894304E-6, -1.18616619E-7, 4.13893895E-6, 1, -1, 4.66212077E-6, -8.9502457E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727E-6, -0.801927328, 0.18224144, 7.90962076E-7, -1, 4.14226452E-6, -1.18616221E-7, 4.14226042E-6, 1, -1, -7.90969352E-7, -1.1930932E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295E-6, -0.801846266, 0.182268858, -9.20488674E-7, 1, -3.67867324E-6, -7.14717942E-7, 3.6786696E-6, 1.00000012, 1.00000012, 9.20481398E-7, 7.15355895E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Handle3 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle3", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle3weld = CreateWeld(m, MainPrt, Handle3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0147044277, -1.02519989E-5, -1.71661234, 0.00420578429, 1.20928409E-4, -0.999991238, 1.25320294E-4, 1, 1.21456549E-4, 0.999991238, -1.25830004E-4, 0.00420576893))
CreateMesh("CylinderMesh", Handle3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00372398924, 1.33514404E-5, -0.583044529, 1.00000012, -4.16461262E-7, -2.08966698E-11, 4.16461262E-7, 1, 1.1433965E-6, -1.60657973E-10, -1.1433965E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01923943E-5, -0.765023232, 0.327973962, 3.38934551E-5, 1, 2.44895382E-5, -7.66231778E-7, -2.44896946E-5, 0.999992549, 0.999992549, -3.37754755E-5, 7.65066318E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38418579E-7, 0.109352618, 0.400939941, 2.76297214E-7, 1, 3.73115085E-8, 0.999990642, -1.28486136E-7, 5.91180367E-8, 5.96301746E-8, 3.73099169E-8, -0.999990642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00368545391, 2.13384628E-5, -0.655753613, 1.00000012, 9.87225212E-6, -2.26625177E-11, -9.87225212E-6, 1, 1.33625349E-6, -1.84219501E-10, -1.33625349E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, 0.10934715, 0.400930405, -2.66074494E-7, -1, -2.18847163E-12, -0.999991596, 1.33826688E-7, 2.09449992E-11, 4.86629348E-10, 7.10542736E-13, -0.999991596))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158E-6, 0.21868071, -0.473920345, -1.41387864E-6, 1, -7.52192761E-8, -1.00000012, -1.41387864E-6, -5.25985158E-8, -5.26315063E-8, 7.52191056E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328145176, 0.401021481, -2.39524525E-8, 1, 4.12373493E-6, 0.999992549, 1.42201316E-7, -5.86943152E-8, -5.81485509E-8, 4.12376403E-6, -0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363649521, 1.78813934E-7, -0.218694687, 0.999996364, -2.51289748E-7, 4.44736359E-10, 3.10406904E-7, 1, 5.1159077E-12, -4.86629903E-10, -4.26325641E-12, 0.999996364))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.09672546E-4, 2.09212303E-5, 0.182165623, 1.00000012, -1.17669697E-6, -2.07661909E-11, 1.17669697E-6, 1, 3.42879133E-7, -6.28580105E-11, -3.42879133E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.57627869E-7, 0.328131676, -0.32813397, -1.49307016E-6, 1, 3.69454369E-6, -1.78341594E-7, 3.69457052E-6, -0.999992549, -0.999992549, -1.61133357E-6, 1.7883518E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0776410103, 1.90734863E-5, 0.12340498, -0.499999613, -3.27883754E-7, 0.866025746, 5.08216908E-6, 1, 3.31279648E-6, -0.866025686, 6.0576931E-6, -0.499999613))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.16197392E-4, 6.67572021E-6, 1.90734863E-5, -1.00000012, 3.02999106E-5, 3.8887703E-4, 3.88876215E-4, -2.92169843E-5, 1.00000012, 3.03112756E-5, 1, 2.92052009E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.58955765E-6, -1.20289612, 0.10937044, -9.4587449E-9, 1, -3.62556852E-6, -4.801405E-7, 3.62559808E-6, 0.999992073, 0.999992073, 1.33964932E-7, 4.80541473E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.47034836E-6, -0.10935843, -1.12990856, -6.55651093E-7, 1, -7.54182565E-8, -0.999996126, -7.18340743E-7, -6.1446201E-8, -6.14790423E-8, 7.54192939E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0795273781, 1.65104866E-5, 0.126692533, -0.500000656, 7.0281385E-7, -0.86602515, 5.27883822E-6, 1, -2.23620827E-6, 0.86602515, -5.68971154E-6, -0.500000656))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0209715366, 1.59740448E-5, 0.221105576, 0.707107484, -1.19752804E-6, 0.707106233, 4.00277349E-6, 1, -2.30921592E-6, -0.707106233, 4.46324702E-6, 0.707107484))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00373155065, 2.348423E-5, 0.0364098549, 1.00000012, -3.52185452E-7, -2.09077009E-11, 3.52185452E-7, 1, 2.24704479E-7, -4.84205037E-11, -2.24704479E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.30481339E-6, -1.20289993, 0.109323181, -5.01437171E-7, -1, 4.14153055E-6, -1.53474726E-8, 4.14156466E-6, 0.999992073, -0.999992073, 3.7693826E-7, -1.53459183E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.109347582, -0.400939941, -3.8753933E-7, -1, 2.21122804E-7, 1.00000012, -3.87546606E-7, 1.19188385E-7, -1.19203243E-7, 2.21122875E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.39653343E-6, 2.98023224E-7, -0.400947094, 0.999993503, 1.11627742E-7, -9.52309787E-10, -9.02218744E-9, 1, 4.17799129E-12, 4.44692866E-10, -3.36797257E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210590363, 1.59144402E-5, 0.221187592, 0.707106411, -7.09020242E-7, -0.707107365, 4.11821384E-6, 1, 3.1155148E-6, 0.707107365, -5.11502003E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38530338E-5, 5.96046448E-7, -1.09311724, 1.00000012, 8.37315747E-6, -2.51681147E-8, -8.37315747E-6, 1, -1.04418518E-9, 2.51248693E-8, 1.0443415E-9, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034355, -0.218741804, -9.05769411E-7, 1, 4.19312892E-6, 6.10692155E-8, 4.19315893E-6, -0.999992549, -0.999992549, -1.02401827E-6, -6.05148216E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.364495754, 0.18225424, -2.50802259E-7, -1, -5.08748599E-12, 4.86629903E-10, 4.26325641E-12, -0.999996364, 0.999996364, -1.91685103E-7, 4.44726117E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.78813934E-7, 0.364495754, 0.182244927, 3.10406904E-7, 1, 5.1159077E-12, 4.86629903E-10, 4.26325641E-12, -0.999996364, -0.999996364, 2.51289748E-7, -4.44736359E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.88481736E-7, 1.78813934E-7, -0.765434742, 0.999992073, 4.55474947E-8, -4.86637064E-10, 7.89732439E-8, 1, 3.58113539E-12, 4.44693005E-10, -2.61479727E-12, 0.999992073))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.63915819E-6, 1.1920929E-7, -0.328045368, 0.999996364, -2.51289748E-7, 4.44736359E-10, 3.10406904E-7, 1, 5.1159077E-12, -4.86629903E-10, -4.26325641E-12, 0.999996364))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.30481339E-6, -0.109345704, 0.765498161, 2.4039764E-8, 1, -2.68209675E-7, 1.00000012, -2.4025212E-8, -4.21191571E-9, -4.20275104E-9, -2.68209277E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.529953E-6, 0.109361745, -0.765333176, -2.34094477E-6, -1, -3.36538051E-8, 0.999996066, -2.27828423E-6, 1.86058742E-8, -1.86515319E-8, -3.36530235E-8, 0.999996066))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.05311584E-6, 0.328126907, -0.327976912, 1.28288229E-6, -1, 3.69483337E-6, 1.79780486E-7, -3.69483314E-6, -1.00000012, 1.00000012, 1.28286774E-6, 1.79724069E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.47034836E-6, 0.109344192, -1.12993956, -7.47924787E-7, 1, -7.53396989E-8, -0.999992549, -8.6617365E-7, -5.86522049E-8, -5.91507465E-8, 7.53416884E-8, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255176544, -3.21865082E-6, -0.801531792, 0.999992549, 1.59391639E-5, -4.1001897E-8, -1.5820784E-5, 1, 5.48808998E-9, 4.0490896E-8, -5.48590151E-9, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.87430191E-5, -1.34452534, 0.182477638, 4.17188712E-5, -1, 2.44082003E-5, 7.96447864E-7, 2.44084295E-5, 0.999992073, -0.999992073, -4.18437121E-5, 7.97240261E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02519989E-5, -1.34549856, 0.181310356, -2.88409356E-5, 1, 2.44418934E-5, -7.89043327E-7, -2.4442008E-5, 0.999996126, 0.999996126, 2.89037125E-5, 7.89269961E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.50015068E-5, -0.764770031, 0.329243183, -1.84655728E-5, -1, 2.44357652E-5, 7.81550057E-7, 2.44357489E-5, 1.00000012, -1.00000012, 1.84655801E-5, 7.80931771E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219659224, -4.86373901E-5, -1.12716579, -1.00000012, -1.09744229E-4, -1.01008695E-7, 1.09744229E-4, -1, 2.51860968E-8, -1.01066391E-7, 2.51748986E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256496549, -4.39882278E-5, -0.801549911, -1.00000012, -5.25360374E-5, -5.67806921E-8, 5.25360665E-5, -1, -2.27279884E-9, -5.72975871E-8, -2.27623786E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.36034393E-5, 0.801941395, -0.183549613, -1.42525751E-5, -1, -3.6352194E-6, 1.24704036E-6, 3.63520098E-6, -1.00000012, 1.00000012, -1.42525751E-5, 1.24655674E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.82585791E-5, 2.98023224E-7, -1.23922396, 0.999992073, -3.33013304E-7, 4.44750459E-10, 4.57526767E-7, 1, -4.62989647E-10, -4.86572616E-10, 4.63927563E-10, 0.999992073))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.529953E-6, -0.109353378, 0.765444756, -5.2080577E-7, -1, -1.00829084E-7, -0.999996126, 4.58123395E-7, -3.44380453E-8, 3.44922206E-8, 1.00828686E-7, -0.999996126))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97226182E-5, -5.96046448E-8, -1.16637278, 0.999992073, 5.18615707E-7, -1.88370208E-9, -3.94094968E-7, 1, -5.94127414E-10, 1.84174986E-9, 5.95122174E-10, 0.999992073))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218475759, -6.43730164E-6, -1.12858582, 0.999996126, 4.32885281E-5, -6.19613516E-8, -4.32256784E-5, 1, 1.67409837E-8, 6.19099367E-8, -1.67375731E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.801843166, 0.182271332, -7.40386895E-7, 1, -3.67873645E-6, -6.44512397E-7, 3.67875145E-6, 0.999996126, 0.999996126, 8.03076546E-7, 6.44454133E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, -0.474107742, 0.328011096, -4.45532351E-6, -1, 4.13908401E-6, 3.27867533E-9, 4.13908401E-6, 1.00000012, -1.00000012, 4.45534533E-6, 4.21115498E-9))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.68220901E-6, -0.801942825, 0.182236776, 9.97839379E-7, -1, 4.14240412E-6, -1.16220802E-8, 4.14240321E-6, 1.00000012, -1.00000012, -9.97824827E-7, -1.16203926E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737E-7, -0.546804905, 0.218738884, -4.84258635E-7, 1, 4.14186161E-6, 1.11145475E-8, -4.14187707E-6, 0.999996126, 0.999996126, 5.46933734E-7, -1.11969332E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00368600525, 2.13980675E-5, -0.509953499, 1.00000012, 9.87225212E-6, -2.26625177E-11, -9.87225212E-6, 1, 1.33625349E-6, -1.84219501E-10, -1.33625349E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, 0.218727753, -0.47388792, 9.16857971E-7, -1, -7.51551852E-8, 0.999996126, 9.7953307E-7, -5.03125541E-8, 5.02612707E-8, -7.51546736E-8, 0.999996126))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.31130219E-6, -0.473922729, 0.328080833, -7.37170922E-7, 1, 4.14190345E-6, 1.11145404E-8, -4.14193391E-6, 0.999992549, 0.999992549, 8.55419785E-7, -1.16626468E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.44379044E-6, -0.54681921, 0.218687579, 7.46469595E-7, -1, 4.14206852E-6, -1.11564606E-8, 4.14206806E-6, 1.00000012, -1.00000012, -7.46469595E-7, -1.11547749E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.327976406, 0.401024342, 4.62619937E-7, -1, 4.12383906E-6, -1.00000012, -4.62619937E-7, -6.00492598E-8, 6.00531251E-8, -4.12383906E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.327998251, -0.401025772, 8.24351446E-7, -1, 4.13303769E-6, 1.00000012, 8.24351446E-7, 2.77285817E-9, -2.77566015E-9, 4.13303769E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.328078896, -0.401023388, -7.89426849E-7, 1, 4.13298949E-6, -0.999992549, -9.07675712E-7, 9.52446344E-10, 4.05419753E-10, -4.1330195E-6, 0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.40103054, -0.218663603, 7.07121217E-7, -1, 4.19291064E-6, -5.91646057E-8, -4.19291064E-6, -1.00000012, 1.00000012, 7.07135769E-7, -5.91600724E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.109352425, -0.400942802, 4.89228114E-7, 1, -1.50218199E-7, -0.999996364, 4.30103682E-7, -3.65057559E-7, -3.65081064E-7, 1.50219691E-7, 0.999996364))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.2584877E-6, 0.801867485, -0.182212248, 1.67358739E-5, 1, -3.6441877E-6, -1.22325082E-6, -3.64418202E-6, -0.999996126, -0.999996126, 1.66732643E-5, 1.22331028E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, 0.109347031, -0.765441418, 9.38744051E-8, 1, -7.51805374E-8, -1.00000012, 9.38598532E-8, -5.91180331E-8, -5.91507678E-8, 7.51805089E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Handle4 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle4", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle4weld = CreateWeld(m, MainPrt, Handle4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00936150551, 1.43051147E-6, -1.63004971, -0.704127133, 2.13191088E-4, -0.710074008, 2.14881671E-4, 1, 8.71558077E-5, 0.710074008, -9.12131145E-5, -0.704127133))
CreateMesh("CylinderMesh", Handle4, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01923943E-5, -0.765022755, 0.327973843, 3.38934769E-5, 1, 2.44895309E-5, -7.48309958E-7, -2.44896983E-5, 0.99999249, 0.99999249, -3.37754827E-5, 7.44922659E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00357699394, 3.33786011E-6, -0.582902193, 1.00000012, 1.46072125E-7, -1.8562156E-10, -1.46072125E-7, 1, -1.21232233E-7, -1.70225112E-10, 1.21231892E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0035378933, 1.13844872E-5, -0.655618191, 1.00000012, 8.61143053E-6, -1.98156103E-10, -8.61141598E-6, 1, -9.15250212E-7, -7.08015521E-11, 9.15249927E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, 0.109346867, 0.400929689, -2.66067218E-7, -1, 2.27373675E-13, -0.999991536, 1.33833964E-7, 1.85205518E-10, 1.8540379E-10, 2.84217094E-12, -0.999991536))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38418579E-7, 0.109352589, 0.40094018, 2.76297214E-7, 1, 3.73108833E-8, 0.999990582, -1.2847886E-7, 8.92217571E-8, 8.95970445E-8, 3.73107696E-8, -0.999990582))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, 0.218680859, -0.473920107, -1.41386408E-6, 1, -7.52190772E-8, -1.00000012, -1.41387864E-6, 1.87498794E-10, -1.75987475E-10, 7.52123697E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328144789, 0.401020765, -2.39379006E-8, 1, 4.12372901E-6, 0.99999249, 1.42201316E-7, -8.95925822E-8, -8.87052067E-8, 4.12376767E-6, -0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.17232513E-7, 0.328132153, -0.328134298, -1.49305561E-6, 1, 3.69454187E-6, -1.78165919E-7, 3.69457348E-6, -0.99999249, -0.99999249, -1.61133357E-6, 1.79001731E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.52859497E-5, 1.11103058E-4, 3.9935112E-6, -1, 3.27003145E-5, 3.88085988E-4, 3.88082088E-4, -2.84393118E-5, 1, 3.27113594E-5, 1, 2.84266207E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0776863098, 4.23192978E-6, 0.123247027, -0.500000238, 1.54649751E-6, 0.866025388, 7.48245657E-6, 1, 2.53425219E-6, -0.866025388, 7.74711225E-6, -0.500000238))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363659859, 5.96046448E-8, -0.218693972, 0.999996305, -2.51297024E-7, -1.85032475E-10, 3.10421456E-7, 1, 7.04858394E-12, -1.85405108E-10, -6.13908924E-12, 0.999996305))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.50339508E-5, 6.19888306E-6, 0.182297707, 1.00000012, -3.5769699E-6, -1.801089E-10, 3.5769699E-6, 1, -4.35739139E-7, -1.30844807E-10, 4.35731522E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.58955765E-6, -1.20289683, 0.10937047, -9.44419298E-9, 1, -3.62555897E-6, -4.16963957E-7, 3.62559331E-6, 0.999992013, 0.999992013, 1.33964932E-7, 4.1704692E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.41074371E-6, -0.109358549, -1.1299088, -6.55651093E-7, 1, -7.54082521E-8, -0.999996066, -7.18340743E-7, 1.86468146E-10, -1.75961801E-10, 7.54101848E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, -1.20290017, 0.109323502, -5.01458999E-7, -1, 4.14152237E-6, 8.97401549E-8, 4.14154511E-6, 0.999992013, -0.999992013, 3.7693826E-7, 8.95918149E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.020816803, 7.21216202E-6, 0.221129894, 0.707106411, -2.14679312E-6, 0.707107365, 6.1399187E-6, 1, -3.10386918E-6, -0.707107306, 6.53634925E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00367951393, -1.49011612E-6, 0.0364735126, 1.00000012, -5.58170723E-6, -1.77140524E-10, 5.58170723E-6, 1, -3.19360197E-7, -1.45415915E-10, 3.19363494E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0796647072, 3.51667404E-6, 0.12671566, -0.500000298, 1.28735337E-6, -0.866025269, 7.70765473E-6, 1, -2.96352323E-6, 0.866025269, -8.15678504E-6, -0.500000298))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210647583, 9.00030136E-6, 0.221395195, 0.707107365, -2.68693111E-6, -0.707106411, 6.32012961E-6, 1, 2.52023506E-6, 0.707106411, -6.2510735E-6, 0.707107365))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.43186951E-5, 5.36441803E-7, -1.09311652, 1, 8.37318657E-6, -8.9604768E-8, -8.37317202E-6, 1, -1.04068931E-9, 8.92216931E-8, 1.03284492E-9, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.06639481E-6, -0.10934782, -0.400939465, -3.87546606E-7, -1, 2.21123855E-7, 1.00000012, -3.87546606E-7, 8.92221337E-8, -8.95646863E-8, 2.21122264E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.33786011E-6, 2.98023224E-7, -0.400946617, 0.999993384, 1.11642294E-7, -2.99878913E-8, -9.02218744E-9, 1, -2.27373675E-13, 2.96169187E-8, -8.18545232E-12, 0.999993384))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.96046448E-8, 0.364495039, 0.182245016, 3.10421456E-7, 1, 7.04858394E-12, 1.85405108E-10, 6.13908924E-12, -0.999996305, -0.999996305, 2.51297024E-7, 1.85032475E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.364494562, 0.182254314, -2.50816811E-7, -1, -1.43245416E-11, 1.85405108E-10, 6.13908924E-12, -0.999996305, 0.999996305, -1.91692379E-7, -1.85120738E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034117, -0.218741655, -9.0575486E-7, 1, 4.1931271E-6, 6.03151022E-8, 4.19316302E-6, -0.99999249, -0.99999249, -1.02401827E-6, -5.94177259E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316E-7, 1.78813934E-7, -0.76543498, 0.999992013, 4.55474947E-8, -8.95924401E-8, 7.89877959E-8, 1, -2.27373675E-13, 8.92215652E-8, -1.98951966E-11, 0.999992013))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.48362732E-6, 5.96046448E-8, -0.328044653, 0.999996305, -2.51297024E-7, -1.85032475E-10, 3.10421456E-7, 1, 7.04858394E-12, -1.85405108E-10, -6.13908924E-12, 0.999996305))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.24520874E-6, -0.109345913, 0.765497923, 2.4039764E-8, 1, -2.68206577E-7, 1.00000012, -2.4025212E-8, -8.95923336E-8, -8.92551455E-8, -2.68195095E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.109348297, -0.765428066, 1.16182491E-7, -1, -3.36292487E-8, 0.99999249, 2.34431354E-7, 2.96165723E-8, -2.99919378E-8, -3.36289077E-8, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.05311584E-6, 0.328126431, -0.327976704, 1.28286774E-6, -1, 3.69483337E-6, 1.78536695E-7, -3.69482473E-6, -1.00000012, 1.00000012, 1.28286774E-6, 1.78626635E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.529953E-6, 0.109344244, -1.12993932, -7.47910235E-7, 1, -7.53354925E-8, -0.99999249, -8.6617365E-7, 1.86686389E-10, -1.75970821E-10, 7.53308314E-8, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255176544, -3.21865082E-6, -0.801531553, 0.99999249, 1.59391639E-5, -8.96159733E-8, -1.5820784E-5, 1, 5.47856871E-9, 8.9220876E-8, -5.49061951E-9, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02519989E-5, -1.34549904, 0.181310654, -2.8840921E-5, 1, 2.44418989E-5, -7.78106312E-7, -2.44420153E-5, 0.999996066, 0.999996066, 2.8903698E-5, 7.74632156E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.50015068E-5, -0.764770269, 0.329243183, -1.84655801E-5, -1, 2.44357616E-5, 7.77734726E-7, 2.44357434E-5, 1.00000012, -1.00000012, 1.84655801E-5, 7.75018464E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219659328, -4.85777855E-5, -1.12716532, -1, -1.09744244E-4, -5.92567417E-8, 1.09744229E-4, -1, 2.51750407E-8, -5.9786899E-8, 2.51693564E-8, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.87430191E-5, -1.34452581, 0.182477474, 4.17188712E-5, -1, 2.44081893E-5, 8.67138283E-7, 2.4408424E-5, 0.999991953, -0.999991953, -4.18437121E-5, 8.64514732E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256496429, -4.39286232E-5, -0.801549673, -1, -5.2536052E-5, 5.98678369E-8, 5.2536052E-5, -1, -2.27714736E-9, -1.85691185E-10, -2.28351382E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.36034393E-5, 0.801941156, -0.183549643, -1.42525751E-5, -1, -3.63521735E-6, 1.1629312E-6, 3.63521212E-6, -1.00000012, 1.00000012, -1.42525751E-5, 1.1621263E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.8119812E-5, 2.38418579E-7, -1.2392242, 0.999992013, -3.3302058E-7, -8.95918788E-8, 4.57541319E-7, 1, -4.65888661E-10, 8.92216221E-8, 4.46561899E-10, 0.999992013))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.95503235E-5, -5.96046448E-8, -1.16637206, 0.999992013, 5.18615707E-7, -8.95931365E-8, -3.94094968E-7, 1, -5.8957994E-10, 8.92216363E-8, 5.77983883E-10, 0.999992013))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218475819, -6.43730164E-6, -1.12858629, 0.999996066, 4.32885136E-5, -5.98541448E-8, -4.32256638E-5, 1, 1.67490271E-8, 5.94171468E-8, -1.67385679E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.529953E-6, -0.109353304, 0.765445471, -5.20813046E-7, -1, -1.00837269E-7, -0.999996066, 4.58123395E-7, 1.84726165E-10, 1.98030398E-10, 1.00834427E-7, -0.999996066))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, -0.474108696, 0.328011036, -4.45535261E-6, -1, 4.13908128E-6, 8.97398422E-8, 4.13906946E-6, 1.00000012, -1.00000012, 4.45534533E-6, 1.19388105E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.68220901E-6, -0.801942825, 0.182236671, 9.97824827E-7, -1, 4.14239912E-6, 8.97402543E-8, 4.14238684E-6, 1.00000012, -1.00000012, -9.97824827E-7, 8.9593847E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.54972076E-6, -0.801843405, 0.182271242, -7.40372343E-7, 1, -3.67873167E-6, -5.95771212E-7, 3.67874918E-6, 0.999996066, 0.999996066, 8.03061994E-7, 5.95859831E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-6, -0.546818733, 0.218687773, 7.46455044E-7, -1, 4.1420717E-6, 8.97402117E-8, 4.14205169E-6, 1.00000012, -1.00000012, -7.46469595E-7, 8.95934775E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00353837013, 1.13844872E-5, -0.509818077, 1.00000012, 8.61143053E-6, -1.98156103E-10, -8.61141598E-6, 1, -9.15250212E-7, -7.08015521E-11, 9.15249927E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, -0.473922014, 0.328080893, -7.3715637E-7, 1, 4.14190436E-6, -7.04038994E-10, -4.14193573E-6, 0.99999249, 0.99999249, 8.55419785E-7, -1.86670471E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.74860382E-7, -0.546804905, 0.218738794, -4.84244083E-7, 1, 4.1418607E-6, 5.89006106E-8, -4.14188435E-6, 0.999996066, 0.999996066, 5.46919182E-7, -5.97908567E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, 0.218727827, -0.473888874, 9.16843419E-7, -1, -7.51531388E-8, 0.999996066, 9.79518518E-7, -5.97914962E-8, 5.94098317E-8, -7.51571179E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.327976704, 0.40102458, 4.62619937E-7, -1, 4.12384543E-6, -1.00000012, -4.62619937E-7, -8.9220876E-8, 8.90760035E-8, -4.12384543E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.3279984, -0.401025534, 8.24336894E-7, -1, 4.13303496E-6, 1.00000012, 8.24351446E-7, -1.86625881E-10, 3.32116029E-10, 4.13303678E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, -0.328078985, -0.401023149, -7.89412297E-7, 1, 4.13298767E-6, -0.99999249, -9.07675712E-7, 1.86747839E-10, -7.02922887E-10, -4.13302268E-6, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.401029587, -0.218663692, 7.07135769E-7, -1, 4.19290882E-6, -8.97465782E-8, -4.19290245E-6, -1.00000012, 1.00000012, 7.07135769E-7, -8.95934207E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.19888306E-6, 0.801867962, -0.182212353, 1.67358812E-5, 1, -3.64418543E-6, -1.25196846E-6, -3.64418111E-6, -0.999996066, -0.999996066, 1.66732789E-5, 1.25185829E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.109352112, -0.400942326, 4.8923539E-7, 1, -1.50212372E-7, -0.999996305, 4.30110958E-7, -3.57443099E-7, -3.57794477E-7, 1.50215897E-7, 0.999996305))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle4, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, 0.109347343, -0.765440702, 9.38598532E-8, 1, -7.51826974E-8, -1.00000012, 9.38598532E-8, 1.85266302E-10, -1.75992415E-10, 7.51729203E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Handle5 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle5", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle5weld = CreateWeld(m, MainPrt, Handle5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00193095207, -7.74860382E-7, -1.73069441, -0.999991238, 2.51574733E-4, -0.00420576893, 2.51575664E-4, 1, 3.02405738E-7, 0.00420576893, -7.55665951E-7, -0.999991238))
CreateMesh("CylinderMesh", Handle5, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.327998161, -0.401025653, 8.24351446E-7, -1, 4.13303815E-6, 1.00000012, 8.24351446E-7, 2.85567281E-9, -2.67790812E-9, 4.13303769E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, -0.328078985, -0.401023269, -7.89412297E-7, 1, 4.13298903E-6, -0.999992549, -9.07675712E-7, 8.69577299E-10, 4.7221127E-10, -4.13301905E-6, 0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.37769699E-6, 0.801858544, -0.182211161, 1.67801336E-5, 1, -3.64416655E-6, -1.22334677E-6, -3.64418293E-6, -0.999990404, -0.999990404, 1.66289392E-5, 1.22370466E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.401029944, -0.218663692, 7.07121217E-7, -1, 4.19291109E-6, -5.92625824E-8, -4.19291018E-6, -1.00000012, 1.00000012, 7.07135769E-7, -5.90773368E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.10935235, -0.400942683, 4.8923539E-7, 1, -1.50218114E-7, -0.999996364, 4.30110958E-7, -3.65139556E-7, -3.64998243E-7, 1.50219705E-7, 0.999996364))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.529953E-6, 0.109345198, -0.765378833, 5.25105861E-7, 1, -7.51836637E-8, -1.00000012, 5.25120413E-7, -6.01313559E-8, -5.9999536E-8, 7.51837206E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00367069244, 1.31130219E-6, -0.582827091, 1.00000012, 2.26456905E-7, 6.14140891E-11, -2.26456905E-7, 1, 3.51169865E-6, 8.47848458E-11, -3.51169865E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06096268E-5, -0.764877677, 0.32796526, 3.23299755E-5, 1, 2.44894873E-5, -7.61584602E-7, -2.44896983E-5, 0.999990404, 0.999990404, -3.21789557E-5, 7.60470527E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00365710258, 1.53183937E-5, -0.655514121, 1.00000012, 8.66832852E-6, 6.55241139E-11, -8.66832852E-6, 1, 3.93604796E-6, 3.13523096E-11, -3.93604796E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, 0.109347105, 0.400930405, -2.6608177E-7, -1, -2.21689334E-12, -0.999991596, 1.33833964E-7, -6.12381534E-11, 4.04358075E-10, 7.38964445E-13, -0.999991596))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.78813934E-7, 0.109352589, 0.400940061, 2.76297214E-7, 1, 3.73114517E-8, 0.999990642, -1.28493411E-7, 5.92002252E-8, 5.95480394E-8, 3.73098032E-8, -0.999990642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.22544098E-6, 0.21867919, -0.473479271, -1.18173921E-5, 1, -8.09099561E-8, -1.00000012, -1.18174066E-5, -8.38860856E-8, -8.3747544E-8, 8.09072276E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328145266, 0.401021123, -2.39524525E-8, 1, 4.12373447E-6, 0.999992549, 1.42201316E-7, -5.86119491E-8, -5.82153774E-8, 4.12376403E-6, -0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.65595245E-5, 9.69171524E-5, 7.9870224E-6, -1.00000012, 3.25691653E-5, 3.88876942E-4, 3.8887604E-4, -3.03262223E-5, 1.00000012, 3.25809451E-5, 1, 3.03135566E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0777630806, 8.16583633E-6, 0.123301029, -0.499999613, -1.52875145E-7, 0.866025746, 7.3520423E-6, 1, 4.42122246E-6, -0.866025686, 8.57766281E-6, -0.499999613))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.57627869E-7, 0.328131318, -0.328134298, -1.49305561E-6, 1, 3.69454392E-6, -1.78410033E-7, 3.6945703E-6, -0.999992549, -0.999992549, -1.61133357E-6, 1.78751847E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363826752, 1.1920929E-7, -0.218697667, 0.999993503, 1.11627742E-7, -8.69964822E-10, -9.02218744E-9, 1, 4.206413E-12, 5.26964306E-10, -3.35376171E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.7949295E-5, 9.7155571E-6, 0.182281256, 1.00000012, -3.4464174E-6, 5.96259084E-11, 3.4464174E-6, 1, 1.45120498E-6, -1.21426605E-10, -1.45120498E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.82797623E-6, -1.20289469, 0.109372854, 3.21204425E-7, 1, -3.6255351E-6, -4.81441646E-7, 3.62553533E-6, 1.00000012, 1.00000012, -3.21204425E-7, 4.81554935E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00379562378, 6.37769699E-6, 0.0365071297, 1.00000012, -5.56622399E-6, 7.74918988E-7, 5.56622399E-6, 1, 4.04457705E-6, -7.74842704E-7, -4.04457296E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.60283661E-6, -1.20289814, 0.109320402, -8.32107617E-7, -1, 4.14149281E-6, -1.66466823E-8, 4.14149326E-6, 1.00000012, -1.00000012, 8.32122169E-7, -1.68247052E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.64916229E-6, -0.109358311, -1.12989628, -6.11296855E-7, 1, -7.54172333E-8, -0.999990404, -7.62665877E-7, -6.10633037E-8, -6.13964914E-8, 7.54199618E-8, 0.999990404))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0208950043, 6.91413879E-6, 0.221197844, 0.707107484, -3.47728928E-6, 0.707106233, 6.07673428E-6, 1, -1.15909961E-6, -0.707106233, 5.11649705E-6, 0.707107484))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.020960331, 1.29342079E-5, 0.221328974, 0.707106411, -2.50292942E-8, -0.707107365, 5.93405275E-6, 1, 5.89863612E-6, 0.707107365, -8.36696563E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0796303749, 9.29832458E-6, 0.126628637, -0.500000834, 2.85634815E-6, -0.86602509, 7.57725502E-6, 1, -1.07651317E-6, 0.86602509, -7.1003451E-6, -0.500000834))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.10934782, -0.400939703, -3.87561158E-7, -1, 2.21122832E-7, 1.00000012, -3.87546606E-7, 1.1927041E-7, -1.19120145E-7, 2.21122889E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295E-6, 5.36441803E-7, -1.09302139, 0.999990404, 4.72240208E-6, -1.530322E-8, -4.5709894E-6, 1, -9.86915438E-10, 1.49625894E-8, 9.89075488E-10, 0.999990404))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57627869E-7, 0.364456534, 0.182253122, -6.0912862E-7, -1, -1.05728759E-11, 1.33568179E-9, 8.52651283E-12, -0.999990404, 0.999990404, -4.57788701E-7, 9.92402938E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929E-7, 0.364497423, 0.182245255, -9.02218744E-9, 1, 4.206413E-12, -5.26964306E-10, 3.35376171E-12, -0.999993503, -0.999993503, -1.11627742E-7, 8.69964822E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.33786011E-6, 2.98023224E-7, -0.400946856, 0.999993503, 1.11627742E-7, -8.69964822E-10, -9.02218744E-9, 1, 4.206413E-12, 5.26964306E-10, -3.35376171E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.66893005E-6, 4.17232513E-7, -0.765432954, 1.00000012, -1.52096618E-7, 6.12297921E-11, 1.52096618E-7, 1, 6.0254024E-12, 6.13030807E-11, -6.0254024E-12, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034355, -0.218741894, -9.05769411E-7, 1, 4.19312892E-6, 6.10026518E-8, 4.19315893E-6, -0.999992549, -0.999992549, -1.02401827E-6, -6.05977704E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.05311584E-6, 1.1920929E-7, -0.328047752, 0.999993503, 1.11627742E-7, -8.69964822E-10, -9.02218744E-9, 1, 4.206413E-12, 5.26964306E-10, -3.35376171E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.12599945E-6, -0.109343767, 0.7654351, 4.55285772E-7, 1, -2.68208339E-7, 1.00000012, -4.55285772E-7, -3.19854676E-9, -3.35470474E-9, -2.68208396E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.9935112E-6, 0.32812655, -0.327976942, 1.28285319E-6, -1, 3.69483314E-6, 1.79684378E-7, -3.69483269E-6, -1.00000012, 1.00000012, 1.28285319E-6, 1.80272849E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.29153442E-6, 0.109343052, -1.12987673, -3.16649675E-7, 1, -7.53428822E-8, -1.00000012, -3.16649675E-7, -5.96660996E-8, -5.95338534E-8, 7.53428253E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.70876694E-6, 0.109352827, -0.765389562, -4.93455445E-7, -1, -3.36373205E-8, 0.999990404, -3.42086423E-7, 1.35653142E-8, -1.39127705E-8, -3.36357857E-8, 0.999990404))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219606638, -4.88162041E-5, -1.12661898, -1, -1.14987721E-4, -8.62646274E-8, 1.1498775E-4, -1, 2.54401584E-8, -8.60828351E-8, 2.54302677E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0073185E-5, -1.34548378, 0.1813097, -2.87964358E-5, 1, 2.44417552E-5, -7.88586931E-7, -2.44420098E-5, 0.999990404, 0.999990404, 2.89480377E-5, 7.88905595E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.2551682, -3.63588333E-6, -0.801386237, 0.999990404, 1.75356836E-5, -4.55649669E-8, -1.7384169E-5, 1, 5.49096058E-9, 4.52297577E-8, -5.4877205E-9, 0.999990404))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.7147274E-5, -0.764549494, 0.329266787, -1.3263947E-5, -1, 2.44386101E-5, 7.65891741E-7, 2.44385938E-5, 1.00000012, -1.00000012, 1.32639543E-5, 7.65492302E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.41398811E-5, 0.801157355, -0.183474541, -4.16651892E-6, -1, -3.63463391E-6, 1.21716937E-6, 3.63462891E-6, -1.00000012, 1.00000012, -4.1665262E-6, 1.21729784E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.07424164E-5, 5.36441803E-7, -1.23922169, 1.00000012, -5.30664693E-7, 9.92368077E-10, 5.30664693E-7, 1, -4.6054538E-10, -8.6996077E-10, 4.6054538E-10, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.24113464E-5, 2.38418579E-7, -1.16637027, 1.00000012, 3.20986146E-7, -1.33552369E-9, -3.20986146E-7, 1, -5.91853677E-10, 1.45836221E-9, 5.91796834E-10, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.90410423E-5, -1.34452355, 0.18247509, 4.13878588E-5, -1, 2.44079893E-5, 7.95224537E-7, 2.44080202E-5, 1.00000012, -1.00000012, -4.13878442E-5, 7.96199345E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256492853, -4.39286232E-5, -0.801529884, -1, -5.24585921E-5, -5.78288422E-8, 5.24586212E-5, -1, -2.28129693E-9, -5.76809853E-8, -2.28436647E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218474627, -6.2584877E-6, -1.1285733, 0.999990404, 4.33328532E-5, -6.23162109E-8, -4.31810768E-5, 1, 1.674141E-8, 6.19921465E-8, -1.67369194E-8, 0.999990404))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.56299973E-6, -0.801923156, 0.182234764, 5.66535164E-7, -1, 4.14230135E-6, -1.3386952E-8, 4.14230135E-6, 1.00000012, -1.00000012, -5.66535164E-7, -1.35657574E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57627869E-7, -0.474095702, 0.328005552, -4.88650403E-6, -1, 4.13898124E-6, 1.51379198E-9, 4.13898169E-6, 1.00000012, -1.00000012, 4.88649675E-6, 1.33805911E-9))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.70876694E-6, -0.109353065, 0.765436411, -5.65152732E-7, -1, -1.00829084E-7, -0.999990404, 4.13798261E-7, -3.40543771E-8, 3.4410327E-8, 1.00828004E-7, -0.999990404))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.20537186E-6, -0.546761394, 0.218683243, 3.15194484E-7, -1, 4.14197893E-6, -1.29213307E-8, 4.14197893E-6, 1.00000012, -1.00000012, -3.15194484E-7, -1.30999736E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00365757942, 1.53183937E-5, -0.509713769, 1.00000012, 8.66832852E-6, 6.55241139E-11, -8.66832852E-6, 1, 3.93604796E-6, 3.13523096E-11, -3.93604796E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.7285347E-6, -0.801834583, 0.182270527, -6.96018105E-7, 1, -3.67871507E-6, -6.44416389E-7, 3.67875191E-6, 0.999990404, 0.999990404, 8.47401679E-7, 6.44071292E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.66893005E-6, -0.473919988, 0.328080416, -4.85859346E-7, 1, 4.14190072E-6, 1.0249976E-8, -4.14193028E-6, 0.999992549, 0.999992549, 6.04122761E-7, -1.06486118E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929E-6, 0.218726397, -0.473883271, 8.72503733E-7, -1, -7.51554126E-8, 0.999990404, 1.0238582E-6, -5.06952773E-8, 5.03432602E-8, -7.51539915E-8, 0.999990404))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.47034836E-6, 0.327976465, 0.401024103, 4.62619937E-7, -1, 4.12383952E-6, -1.00000012, -4.62619937E-7, -6.0131832E-8, 5.99554042E-8, -4.12383861E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle5, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-7, -0.546799064, 0.218737602, -4.39889845E-7, 1, 4.14183842E-6, 1.11813057E-8, -4.14187616E-6, 0.999990404, 0.999990404, 5.91258868E-7, -1.15799415E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Handle6 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle6", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle6weld = CreateWeld(m, MainPrt, Handle6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0122375488, 7.15255737E-6, -1.62821221, -0.710074008, 2.1579655E-4, 0.704127133, 2.15675987E-4, 1, -8.89763032E-5, -0.704127133, 8.86835624E-5, -0.710074008))
CreateMesh("CylinderMesh", Handle6, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.82797623E-6, 0.109338284, -0.765522599, 2.08854908E-6, 1, -7.51824132E-8, -1.00000012, 2.08853453E-6, -8.94947689E-8, -8.93082088E-8, 7.51841753E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.73532486E-6, 0.802004039, -0.182219028, 1.83435841E-5, 1, -3.64417065E-6, -1.28204852E-6, -3.64417156E-6, -0.99999249, -0.99999249, 1.82254589E-5, 1.28142347E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.109352589, -0.400942773, 4.8923539E-7, 1, -1.50212088E-7, -0.999996305, 4.30110958E-7, -3.57716857E-7, -3.57519667E-7, 1.50214703E-7, 0.999996305))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00362062454, -8.22544098E-6, -0.582877219, 1.00000012, -1.33889262E-6, 8.83310716E-11, 1.33889262E-6, 1, 2.41133966E-6, -2.14705073E-10, -2.41134717E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01923943E-5, -0.765023172, 0.327973843, 3.38934697E-5, 1, 2.44895309E-5, -7.48056038E-7, -2.44896946E-5, 0.99999249, 0.99999249, -3.37754755E-5, 7.4512343E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.1856041E-6, 0.109347105, 0.400930196, -2.66067218E-7, -1, -5.68434189E-14, -0.999991536, 1.33833964E-7, -8.91837437E-11, -8.9278418E-11, 6.82121026E-12, -0.999991536))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00350809097, 7.9870224E-6, -0.655552447, 1.00000012, 7.82235293E-6, 9.48191178E-11, -7.82235293E-6, 1, 1.99054193E-6, -1.6165573E-10, -1.99053466E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328145266, 0.401021272, -2.39379006E-8, 1, 4.12372901E-6, 0.99999249, 1.42201316E-7, -8.9317588E-8, -8.89763854E-8, 4.12376949E-6, -0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.16583633E-6, 0.21867919, -0.473479599, -1.18174066E-5, 1, -8.09158678E-8, -1.00000012, -1.18174066E-5, -8.95046171E-8, -8.93074912E-8, 8.09110929E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.78813934E-7, 0.109352589, 0.400940359, 2.76297214E-7, 1, 3.73111675E-8, 0.999990582, -1.2847886E-7, 8.94961545E-8, 8.93223913E-8, 3.73095759E-8, -0.999990582))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929E-5, 1.78813934E-7, 0.182324529, 1.00000012, -3.0639203E-6, 8.7109403E-11, 3.06393486E-6, 1, 1.02775084E-6, -4.02832247E-11, -1.02775084E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00362873077, 7.74860382E-7, -0.218800426, 0.99999249, -2.11391307E-6, 8.77815182E-11, 2.23214738E-6, 1, 7.33280103E-12, 8.9277731E-11, -1.22781785E-11, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.30481339E-6, -1.20305264, 0.109366417, 2.12114537E-6, 1, -3.62510764E-6, -5.06093215E-7, 3.62509809E-6, 1.00000012, 1.00000012, -2.12113082E-6, 5.06727247E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158E-7, 0.328131437, -0.328133821, -1.49305561E-6, 1, 3.6945421E-6, -1.7843746E-7, 3.69456802E-6, -0.99999249, -0.99999249, -1.61133357E-6, 1.78723511E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.1709671E-5, 1.28924847E-4, -2.02655792E-6, -1, 3.21864427E-5, 3.88085784E-4, 3.88082175E-4, -2.99025814E-5, 1, 3.21980478E-5, 1, 2.98900814E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0777006745, 2.20537186E-6, 0.123247147, -0.500000238, 2.24536052E-8, 0.866025388, 6.96910138E-6, 1, 3.99768032E-6, -0.866025388, 8.03425792E-6, -0.500000238))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.96046448E-6, -1.20304251, 0.109313965, -2.39552173E-6, -1, 4.14150054E-6, 6.11373119E-10, 4.14149463E-6, 1.00000012, -1.00000012, 2.39550718E-6, -8.75827744E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.94718552E-6, -0.109366179, -1.13004291, 9.52117261E-7, 1, -7.54152438E-8, -0.99999249, 8.33853846E-7, -8.86880638E-11, 9.87856186E-11, 7.54087637E-8, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.020819664, 3.15904617E-6, 0.221182764, 0.707106411, -2.86259456E-6, 0.707107365, 5.65945084E-6, 1, -1.61112257E-6, -0.707107306, 5.14107523E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.02519989E-5, 8.34465027E-7, -1.09316802, 0.99999249, 3.12588236E-6, -8.93154777E-8, -3.00758984E-6, 1, -9.82197434E-10, 8.94963677E-8, 9.80094228E-10, 0.99999249))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.10934782, -0.400939614, -3.87546606E-7, -1, 2.21123571E-7, 1.00000012, -3.87546606E-7, 8.94959697E-8, -8.92898129E-8, 2.21122491E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0797023773, -4.64916229E-6, 0.12669003, -0.500000536, 2.53169856E-6, -0.86602515, 7.30983447E-6, 1, -1.29697946E-6, 0.86602515, -6.9789894E-6, -0.500000536))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363206863, -1.24573708E-5, 0.0365399718, 1.00000012, -8.48505442E-6, 8.32701269E-11, 8.48504715E-6, 1, 2.11370934E-6, -1.77184087E-10, -2.11371298E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210361481, -1.07288361E-6, 0.221367836, 0.707107365, -1.24533835E-6, -0.707106411, 5.77635365E-6, 1, 4.01518628E-6, 0.707106411, -6.92366302E-6, 0.707107365))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.364600211, 0.182235718, 2.23214738E-6, 1, 7.33280103E-12, -8.9277731E-11, 1.22781785E-11, -0.99999249, -0.99999249, 2.11391307E-6, -8.77815182E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.33786011E-6, 2.98023224E-7, -0.400947005, 0.999993384, 1.11627742E-7, -2.97129645E-8, -9.02218744E-9, 1, 5.68434189E-14, 2.98916021E-8, -8.01492206E-12, 0.999993384))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737E-7, 0.364600033, 0.182261229, -2.17255729E-6, -1, -7.33280103E-12, -8.9277731E-11, 1.22781785E-11, -0.99999249, 0.99999249, -2.05430842E-6, 8.78237344E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.58306885E-6, 7.74860382E-7, -0.765576661, 1.00000012, -1.74863089E-6, 8.8040894E-11, 1.74863089E-6, 1, 7.33280103E-12, 8.9279209E-11, -5.68434189E-13, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034504, -0.218741894, -9.05769411E-7, 1, 4.1931271E-6, 6.00439733E-8, 4.19315757E-6, -0.99999249, -0.99999249, -1.02401827E-6, -5.96946492E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.3589859E-5, 7.74860382E-7, -0.328150243, 0.99999249, -2.11391307E-6, 8.77815182E-11, 2.23214738E-6, 1, 7.33280103E-12, 8.9277731E-11, -1.22781785E-11, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.42402267E-6, -0.109336853, 0.765579045, 2.01869989E-6, 1, -2.68206293E-7, 1.00000012, -2.01871444E-6, 8.78496234E-11, -1.23090274E-10, -2.68204758E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.58955765E-6, 0.109336376, -1.1300211, 1.24679354E-6, 1, -7.53352083E-8, -1.00000012, 1.24679354E-6, -8.94953658E-8, -8.93081946E-8, 7.5335663E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.06639481E-6, 0.109363794, -0.76551044, -2.36729102E-6, -1, -3.3622257E-8, 0.99999249, -2.24904215E-6, 8.76858239E-11, 8.50379558E-11, -3.36441985E-8, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.9935112E-6, 0.328126431, -0.32797718, 1.28286774E-6, -1, 3.69484769E-6, 1.78258873E-7, -3.6948245E-6, -1.00000012, 1.00000012, 1.28285319E-6, 1.78904116E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.29832458E-6, -1.34620869, 0.18135643, -2.40026857E-5, 1, 2.44416151E-5, -7.48050013E-7, -2.44416333E-5, 1, 1.00000012, 2.40026711E-5, 7.45164357E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.92794609E-5, -1.34469593, 0.182392836, 4.51437372E-5, -1, 2.44079711E-5, 8.37631319E-7, 2.44080093E-5, 1.00000012, -1.00000012, -4.51437227E-5, 8.3434378E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219599724, -4.91142273E-5, -1.12676358, -1.00000012, -1.13390954E-4, -8.95765524E-8, 1.13390939E-4, -1, 2.5436691E-8, -8.93144829E-8, 2.54300971E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255176544, -3.21865082E-6, -0.801531851, 0.99999249, 1.59391639E-5, -8.93063969E-8, -1.5820784E-5, 1, 5.47885293E-9, 8.94955576E-8, -5.49351853E-9, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.7147274E-5, -0.764549434, 0.329266548, -1.32639325E-5, -1, 2.44386174E-5, 7.78030483E-7, 2.44385883E-5, 1.00000012, -1.00000012, 1.32639543E-5, 7.74780517E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218482733, -5.90085983E-6, -1.12872005, 0.99999249, 4.17363335E-5, -8.92881289E-8, -4.161775E-5, 1, 1.67493113E-8, 8.94941365E-8, -1.67400458E-8, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256485939, -4.42266464E-5, -0.801674306, -1, -5.0861956E-5, -5.97299419E-8, 5.0861956E-5, -1, -2.28470753E-9, 8.89907731E-11, -2.28857289E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.93254852E-5, 5.36441803E-7, -1.16651487, 1.00000012, -1.27554813E-6, 8.83759385E-11, 1.27554813E-6, 1, -5.82019766E-10, 8.93535038E-11, 5.88784133E-10, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.06639481E-6, -0.109361172, 0.765581608, -2.12856685E-6, -1, -1.00830277E-7, -0.99999249, 2.01031798E-6, -8.785489E-11, -7.65674954E-11, 1.00835848E-7, -0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.4497509E-5, 0.801301062, -0.183467627, -5.72994759E-6, -1, -3.63464642E-6, 1.22226413E-6, 3.63463801E-6, -1, 1, -5.72995486E-6, 1.22198048E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.78949738E-5, 8.94069672E-7, -1.23936701, 1.00000012, -2.12719897E-6, 8.7772789E-11, 2.12719897E-6, 1, -4.65604444E-10, 8.93379121E-11, 4.65092853E-10, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.86102295E-6, -0.802066982, 0.182228088, -9.96893505E-7, -1, 4.1423009E-6, 6.11474593E-10, 4.14229953E-6, 1.00000012, -1.00000012, 9.96908057E-7, -8.85732668E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.55651093E-7, -0.47423932, 0.327998877, -6.44994725E-6, -1, 4.1389867E-6, 6.1105726E-10, 4.13898897E-6, 1.00000012, -1, 6.44995453E-6, -5.96893557E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.02655792E-6, -0.801980019, 0.182278633, 8.67381459E-7, 1, -3.67872781E-6, -5.65691096E-7, 3.67874827E-6, 0.99999249, 0.99999249, -7.49118044E-7, 5.66332858E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.44379044E-6, -0.546904624, 0.218676567, -1.24823418E-6, -1, 4.14197712E-6, 6.11434237E-10, 4.14197939E-6, 1.00000012, -1.00000012, 1.24823418E-6, -8.83952772E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00350856781, 8.04662704E-6, -0.509752214, 1.00000012, 7.82235293E-6, 9.48191178E-11, -7.82235293E-6, 1, 1.99054193E-6, -1.6165573E-10, -1.99053466E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-7, -0.546943367, 0.218745947, 1.12352427E-6, 1, 4.14184979E-6, 8.89741045E-8, -4.14188617E-6, 0.99999249, 0.99999249, -1.00526086E-6, -8.9318398E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, -0.473922372, 0.328080893, -7.3715637E-7, 1, 4.14190436E-6, -4.32870406E-10, -4.14193755E-6, 0.99999249, 0.99999249, 8.55419785E-7, 8.98844194E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.327998638, -0.401025563, 8.24351446E-7, -1, 4.1330386E-6, 1.00000012, 8.24351446E-7, 8.98630961E-11, 6.10306972E-10, 4.13303724E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.327976465, 0.401024073, 4.62634489E-7, -1, 4.12384179E-6, -1.00000012, -4.62619937E-7, -8.94965737E-8, 8.87978189E-8, -4.12384543E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.34465027E-7, 0.218734741, -0.474027187, -6.90924935E-7, -1, -7.5153423E-8, 0.99999249, -5.7266152E-7, -8.93180925E-8, 8.94867753E-8, -7.51585389E-8, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.401030272, -0.218663692, 7.07135769E-7, -1, 4.19291246E-6, -9.00248196E-8, -4.19290291E-6, -1.00000012, 1.00000012, 7.07135769E-7, -8.93171901E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle6, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, -0.328078985, -0.401023477, -7.89412297E-7, 1, 4.13299131E-6, -0.99999249, -9.07675712E-7, -8.99214245E-11, -4.31746805E-10, -4.1330245E-6, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Handle7 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle7", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle7weld = CreateWeld(m, MainPrt, Handle7, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0158288963, -1.60932541E-6, -1.71403384, -0.0042057531, 1.27868072E-4, 0.999991238, 1.25993887E-4, 1, -1.27339285E-4, -0.999991238, 1.25457227E-4, -0.00420576893))
CreateMesh("CylinderMesh", Handle7, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218477353, -9.77516174E-6, -1.12803817, 0.999992549, 5.93605509E-5, -1.09467813E-7, -5.92418364E-5, 1, 4.27875761E-8, 1.08933854E-7, -4.27820339E-8, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.70876694E-6, -0.1093532, 0.765436351, -5.65167284E-7, -1, -1.00829027E-7, -0.999990404, 4.1378371E-7, -3.39678863E-8, 3.44971731E-8, 1.00828117E-7, -0.999990404))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.08616257E-6, -0.473851442, 0.328035653, 2.51806341E-7, -1, 4.13915996E-6, -1.39368428E-8, 4.13919861E-6, 0.999991119, -0.999991119, -3.91402864E-7, -1.30129667E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.56299973E-6, -0.801917553, 0.182238758, 7.53978384E-7, -1, 4.14236229E-6, -1.30051143E-8, 4.14240139E-6, 0.999991119, -0.999991119, -8.93574907E-7, -1.25472042E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.801943839, 0.182259366, -3.16793739E-6, 1, -3.67872963E-6, -6.37515598E-7, 3.67872758E-6, 1.00000012, 1.00000012, 3.16793739E-6, 6.37464211E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.14576721E-6, -0.546754479, 0.218687564, 5.02623152E-7, -1, 4.14203987E-6, -1.25394939E-8, 4.14207898E-6, 0.999991119, -0.999991119, -6.42234227E-7, -1.20815935E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00354466029, 1.51991844E-5, -0.509792089, 1.00000012, 8.22918082E-6, -2.71260635E-11, -8.22918082E-6, 1, 2.5037528E-7, -5.71746678E-11, -2.5037528E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.60932541E-6, -0.473920345, 0.328080297, -4.85859346E-7, 1, 4.14190072E-6, 1.01602646E-8, -4.14193028E-6, 0.999992549, 0.999992549, 6.04137313E-7, -1.07358016E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.55651093E-7, -0.546840668, 0.218735397, -1.01994374E-6, 1, 4.14182614E-6, 1.29542457E-8, -4.14182659E-6, 1.00000012, 1.00000012, 1.01994374E-6, -1.30641924E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.47034836E-6, 0.327976406, 0.401023984, 4.62605385E-7, -1, 4.12383952E-6, -1.00000012, -4.62619937E-7, -6.00447407E-8, 6.00392553E-8, -4.12383861E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863E-6, 0.218744293, -0.473922253, 1.7919956E-6, -1, -7.6445275E-8, 0.999992549, 1.91027357E-6, -3.86757399E-8, 3.8149075E-8, -7.64438823E-8, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.327998251, -0.401025414, 8.24336894E-7, -1, 4.13303769E-6, 1.00000012, 8.24351446E-7, 2.76833112E-9, -2.76175172E-9, 4.13303769E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, 0.401030302, -0.218663618, 7.07106665E-7, -1, 4.19291109E-6, -5.9178781E-8, -4.19291018E-6, -1.00000012, 1.00000012, 7.07135769E-7, -5.9164595E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.328078926, -0.401023626, -7.89397745E-7, 1, 4.13298949E-6, -0.999992549, -9.07690264E-7, 9.56975721E-10, 3.82506193E-10, -4.1330195E-6, 0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.109352425, -0.400942802, 4.89220838E-7, 1, -1.5021817E-7, -0.999996364, 4.30110958E-7, -3.65053069E-7, -3.65084901E-7, 1.50219734E-7, 0.999996364))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.2584877E-6, 0.801967859, -0.182200342, 1.43081998E-5, 1, -3.64418111E-6, -1.23024745E-6, -3.64416314E-6, -1.00000012, -1.00000012, 1.43081998E-5, 1.23029974E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, 0.109350272, -0.765375137, 5.88988769E-7, 1, -7.5176871E-8, -0.999991119, 4.49406798E-7, -6.09762481E-8, -6.14832416E-8, 7.51792157E-8, 0.999991119))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210539103, 5.00679016E-6, 0.221351266, 0.707106411, -3.04485729E-6, -0.707107365, 6.49962021E-6, 1, 2.19351477E-6, 0.707107365, -6.1469691E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0796691179, -8.34465027E-7, 0.126670897, -0.500000656, 1.11187546E-6, -0.86602515, 7.83641008E-6, 1, -3.24047619E-6, 0.86602515, -8.40676512E-6, -0.500000656))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.07157975E-5, 4.76837158E-7, -1.09311569, 1.00000012, 1.0176489E-5, -3.07611643E-8, -1.0176489E-5, 1, -1.05802656E-9, 3.0708307E-8, 1.05828235E-9, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.109347567, -0.400939465, -3.87561158E-7, -1, 2.21122889E-7, 1.00000012, -3.87546606E-7, 1.19183895E-7, -1.1920676E-7, 2.2112286E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.39746475E-6, 2.98023224E-7, -0.400947213, 0.999993503, 1.11627742E-7, -9.56815627E-10, -9.02218744E-9, 1, 4.17799129E-12, 4.40190273E-10, -3.38218342E-12, 0.999993503))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.57627869E-7, 0.364491343, 0.182252109, -2.95171048E-7, -1, -5.62749847E-12, 2.54709934E-11, 3.72324394E-12, -0.999990642, 0.999990642, -1.47338142E-7, -4.91102159E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.1920929E-7, 0.364452124, 0.182246163, 2.73386831E-7, 1, -1.00897068E-11, 4.91130359E-10, -1.17807986E-11, -0.999991119, -0.999991119, 1.33804861E-7, 2.5443616E-11))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034594, -0.218741775, -9.0575486E-7, 1, 4.19312892E-6, 6.10924005E-8, 4.19315893E-6, -0.999992549, -0.999992549, -1.02403283E-6, -6.05102883E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.5860728E-6, 3.57627869E-7, -0.328041553, 0.999990642, -2.06942786E-7, -4.91090169E-10, 3.54775693E-7, 1, 5.62749847E-12, -2.54709934E-11, -3.72324394E-12, 0.999990642))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.56816769E-7, 2.98023224E-7, -0.765440047, 1.00000012, 1.49011612E-7, -9.56823287E-10, -1.49011612E-7, 1, 4.94537744E-12, 9.05851172E-10, -4.97379915E-12, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.12599945E-6, -0.109347656, 0.765429556, 2.67857104E-7, 1, -2.6821624E-7, 0.999991119, -1.28260581E-7, -3.28507377E-9, -2.80246071E-9, -2.68220219E-7, -0.999991119))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.58955765E-6, 0.109350115, -0.765432894, 8.66129994E-8, -1, -3.3632773E-8, 1.00000012, 8.66129994E-8, 1.16160441E-8, -1.16712622E-8, -3.36327872E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.29153442E-6, 0.109347939, -1.12988305, -5.04063792E-7, 1, -7.53482254E-8, -1.00000012, -5.04078344E-7, -5.95790723E-8, -5.96205751E-8, 7.53482254E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.05311584E-6, 0.328126788, -0.327976882, 1.28286774E-6, -1, 3.69483337E-6, 1.79768534E-7, -3.69483314E-6, -1.00000012, 1.00000012, 1.28286774E-6, 1.79719521E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.25518617, -4.23192978E-6, -0.801426947, 0.999992549, 1.84220989E-5, -3.35567876E-8, -1.830369E-5, 1, 6.77914613E-9, 3.30356222E-8, -6.77820822E-9, 0.999992549))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02519989E-5, -1.34639049, 0.181484863, -1.62538054E-5, 1, 2.44415605E-5, -8.26409575E-7, -2.44415733E-5, 1.00000012, 1.00000012, 1.62537908E-5, 8.26985683E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.88622284E-5, -1.34453344, 0.182478458, 4.17693373E-5, -1, 2.44081184E-5, 7.96552058E-7, 2.44081493E-5, 1.00000012, -1.00000012, -4.17693082E-5, 7.97711664E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.35709953E-5, -0.76492393, 0.329267442, -2.41623784E-5, -1, 2.44326948E-5, 7.94692539E-7, 2.44328949E-5, 0.999991119, -0.999991119, 2.4023022E-5, 7.94904452E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256522387, -4.55379486E-5, -0.801287293, -0.999991119, -5.73827856E-5, -7.40031325E-8, 5.72426798E-5, -1, -2.15931095E-9, -7.45315489E-8, -2.16198259E-9, 0.999991119))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.41994858E-5, 0.801151812, -0.183478504, -3.97913391E-6, -1, -3.63468052E-6, 1.21725873E-6, 3.63470645E-6, -0.999991119, 0.999991119, -3.83958104E-6, 1.21674827E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.21961087, -4.88162041E-5, -1.12661505, -0.999991179, -1.1495949E-4, -8.60987441E-8, 1.14818875E-4, -1, 2.54446491E-8, -8.66352536E-8, 2.54364494E-8, 0.999991119))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.82893127E-5, 3.57627869E-7, -1.23923159, 1.00000012, -2.29571015E-7, -2.54245843E-11, 2.29556463E-7, 1, -4.61596983E-10, -2.54123129E-11, 4.61596983E-10, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97552145E-5, 0, -1.16637945, 1.00000012, 6.22079824E-7, -2.35390241E-9, -6.22094376E-7, 1, -5.92763172E-10, 2.30291075E-9, 5.92763172E-10, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.74860382E-7, 0.328145146, 0.401021361, -2.39524525E-8, 1, 4.12373447E-6, 0.999992549, 1.42215868E-7, -5.869882E-8, -5.81256785E-8, 4.12376448E-6, -0.999992549))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.57627869E-7, 0.328131437, -0.328134, -1.49305561E-6, 1, 3.69454392E-6, -1.78320633E-7, 3.69457075E-6, -0.999992549, -0.999992549, -1.61134813E-6, 1.78839727E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.32724303E-5, 1.22308731E-4, 4.05311584E-6, -1.00000012, 3.2829179E-5, 3.8887703E-4, 3.88875982E-4, -2.81624962E-5, 1.00000012, 3.28401366E-5, 1, 2.81497269E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0777075291, 4.35113907E-6, 0.123262465, -0.499999613, 1.85078534E-6, 0.866025746, 7.61124102E-6, 1, 2.25724398E-6, -0.866025686, 7.72014755E-6, -0.499999613))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363650545, 3.57627869E-7, -0.218692064, 0.999990642, -2.06942786E-7, -4.91090169E-10, 3.54775693E-7, 1, 5.62749847E-12, -2.54709934E-11, -3.72324394E-12, 0.999990642))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.49480319E-6, 6.13927841E-6, 0.182285309, 1.00000012, -3.70576163E-6, -2.47253468E-11, 3.70576163E-6, 1, -7.12631959E-7, 6.47666434E-11, 7.12631959E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, -1.20290446, 0.109365903, -1.12432463E-6, 1, -3.62554465E-6, -4.78266202E-7, 3.62554397E-6, 1.00000012, 1.00000012, 1.12432463E-6, 4.78208449E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.64916229E-6, -0.109356076, -1.12994158, -1.30959961E-6, 1, -7.54227472E-8, -1.00000012, -1.30959961E-6, -5.91132476E-8, -5.91549032E-8, 7.54226193E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.42402267E-6, -1.20290709, 0.109323673, -4.5086199E-7, -1, 4.14151555E-6, -1.53335336E-8, 4.14151509E-6, 1.00000012, -1.00000012, 4.5086199E-7, -1.53414419E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0208177567, 5.12599945E-6, 0.22116065, 0.707107484, -1.92725565E-6, 0.707106233, 6.1867031E-6, 1, -3.46115166E-6, -0.707106233, 6.82205427E-6, 0.707107484))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0036433246, 2.44379044E-6, 0.036539197, 1.00000012, -3.99498094E-6, -2.46671711E-11, 3.99498094E-6, 1, -1.00436682E-6, 1.01707739E-10, 1.00436682E-6, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.12652779E-5, -0.764918089, 0.327983588, 3.14105564E-5, 1, 2.44908297E-5, -7.73796103E-7, -2.44909897E-5, 0.999992549, 0.999992549, -3.12925404E-5, 7.72512919E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00361569691, 7.56978989E-6, -0.582903504, 1.00000012, -1.87011028E-6, -2.50945896E-11, 1.87011028E-6, 1, 1.46268746E-7, -4.39921224E-11, -1.46268746E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.24520874E-6, 0.10934715, 0.400930405, -2.6608177E-7, -1, -2.18847163E-12, -0.999991596, 1.33833964E-7, 2.54436212E-11, 4.91131913E-10, 7.67386155E-13, -0.999991596))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00354410894, 1.51991844E-5, -0.655592263, 1.00000012, 8.22918082E-6, -2.71260635E-11, -8.22918082E-6, 1, 2.5037528E-7, -5.71746678E-11, -2.5037528E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38418579E-7, 0.109352611, 0.400940418, 2.76297214E-7, 1, 3.73114801E-8, 0.999990642, -1.2847886E-7, 5.9113539E-8, 5.96348428E-8, 3.73099454E-8, -0.999990642))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle7, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.64916229E-6, 0.218682006, -0.473859429, -9.18735168E-7, 1, -7.52155529E-8, -0.999991119, -1.05833169E-6, -5.4456688E-8, -5.496398E-8, 7.5217784E-8, 0.999991119))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Handle8 = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle8", Vector3.new(0.728999913, 0.200000003, 0.728999913))
Handle8weld = CreateWeld(m, MainPrt, Handle8, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0103318691, 2.98023224E-6, -1.60662031, 0.704127133, 3.78578479E-5, 0.710074008, 3.83442311E-5, 1, -9.13384501E-5, -0.710074008, 9.15411219E-5, 0.704127133))
CreateMesh("CylinderMesh", Handle8, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00359249115, 3.09944153E-6, -0.582895398, 1.00000012, -1.19510514E-6, 2.25432201E-10, 1.19510514E-6, 1, 1.25436804E-6, 6.97526412E-11, -1.25436782E-6, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02519989E-5, -0.765023291, 0.327973843, 3.38934624E-5, 1, 2.44895382E-5, -7.47912111E-7, -2.44896946E-5, 0.99999249, 0.99999249, -3.37754755E-5, 7.45224554E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00359487534, 7.92741776E-6, -0.655618846, 1, 7.64841388E-6, -2.08374829E-7, -7.64839933E-6, 1, 4.69139422E-7, 2.08784826E-7, -4.69139195E-7, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.1856041E-6, 0.109347105, 0.400930405, -2.6608177E-7, -1, -7.50333129E-12, -0.999991536, 1.33833964E-7, -2.27349764E-10, -2.27591723E-10, 1.59161573E-12, -0.999991536))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.78813934E-7, 0.109352589, 0.400940388, 2.76297214E-7, 1, 3.7311338E-8, 0.999990582, -1.28464308E-7, 8.96343266E-8, 8.91840699E-8, 3.73054263E-8, -0.999990582))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.76837158E-6, 0.21868062, -0.473920643, -1.41386408E-6, 1, -7.52186224E-8, -1.00000012, -1.41387864E-6, -2.30151051E-10, 2.37058012E-10, 7.52128244E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.291599959, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.79221344E-5, 1.4513731E-4, 3.9935112E-6, -1, 3.26811496E-5, 3.88085668E-4, 3.8808235E-4, -2.96416056E-5, 1, 3.26926529E-5, 1, 2.96289181E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.466559947, 0.466559947, 1.55276954))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363636017, 5.96046448E-8, -0.218694627, 0.999996305, -2.51297024E-7, 2.27138391E-10, 3.10421456E-7, 1, 1.47792889E-11, 2.27592362E-10, -3.75166564E-12, 0.999996305))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0777289867, 4.17232513E-6, 0.123238921, -0.500000238, 4.95903805E-7, 0.866025388, 7.46354635E-6, 1, 3.73645912E-6, -0.866025388, 8.33184458E-6, -0.500000238))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.15255737E-7, 0.328145027, 0.401021421, -2.39379006E-8, 1, 4.12372901E-6, 0.99999249, 1.42201316E-7, -8.91791174E-8, -8.91156517E-8, 4.12376312E-6, -0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.17232513E-7, 0.328131497, -0.328133821, -1.49305561E-6, 1, 3.6945496E-6, -1.78576627E-7, 3.69456893E-6, -0.99999249, -0.99999249, -1.61133357E-6, 1.78583434E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.48362732E-6, 5.90085983E-6, 0.182321608, 1.00000012, -3.55820521E-6, 2.21158078E-10, 3.55819066E-6, 1, 7.66624225E-7, 1.31126554E-10, -7.66627522E-7, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.47034836E-6, -0.109358549, -1.12990892, -6.55651093E-7, 1, -7.54077973E-8, -0.999996066, -7.18326191E-7, -2.288921E-10, 2.37082132E-10, 7.54117764E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, -1.20291007, 0.109356403, 2.27068085E-7, 1, -3.62513288E-6, -4.16548772E-7, 3.62516039E-6, 0.999992013, 0.999992013, -1.02547347E-7, 4.17459916E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00370025635, 6.37769699E-6, 0.0363714695, 1.00000012, -5.9017184E-6, 2.16919371E-10, 5.9017184E-6, 1, 7.08016387E-7, 1.38501821E-10, -7.08016046E-7, 1.00000012))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-6, -1.20290005, 0.109323025, -5.01458999E-7, -1, 4.14151873E-6, 9.01557087E-8, 4.14154783E-6, 0.999992013, -0.999992013, 3.7693826E-7, 8.91800553E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0208425522, 4.82797623E-6, 0.221169949, 0.707106411, -2.86868453E-6, 0.707107365, 6.03908848E-6, 1, -1.98214525E-6, -0.707107306, 5.67187089E-6, 0.707106411))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-5, 5.36441803E-7, -1.09311748, 1, 8.37318657E-6, -8.91642316E-8, -8.37317202E-6, 1, -1.04023457E-9, 8.96346961E-8, 1.04046194E-9, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.12599945E-6, -0.109347582, -0.400939584, -3.87546606E-7, -1, 2.211234E-7, 1.00000012, -3.87546606E-7, 8.96338577E-8, -8.91515484E-8, 2.21115442E-7, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0796976984, 3.15904617E-6, 0.126634598, -0.500000536, 2.26060365E-6, -0.86602515, 7.6602737E-6, 1, -1.81233531E-6, 0.86602515, -7.54015491E-6, -0.500000536))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0210251808, 4.94718552E-6, 0.221366644, 0.707107365, -1.89457205E-6, -0.707106411, 6.35213655E-6, 1, 3.67281996E-6, 0.707106411, -7.08871812E-6, 0.707107365))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.765449822, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.364495218, 0.182254314, -2.50816811E-7, -1, -7.50333129E-12, -2.27592362E-10, 3.75166564E-12, -0.999996305, 0.999996305, -1.91692379E-7, 2.27246194E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.96046448E-8, 0.364495516, 0.182244778, 3.10421456E-7, 1, 1.47792889E-11, -2.27592362E-10, 3.75166564E-12, -0.999996305, -0.999996305, 2.51297024E-7, -2.27138391E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.33786011E-6, 2.98023224E-7, -0.400947034, 0.999993384, 1.11627742E-7, -2.95745277E-8, -9.02218744E-9, 1, 2.27373675E-13, 3.00299128E-8, -7.8443918E-12, 0.999993384))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.291599929, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459E-6, 5.96046448E-8, -0.328045249, 0.999996305, -2.51297024E-7, 2.27138391E-10, 3.10421456E-7, 1, 1.47792889E-11, 2.27592362E-10, -3.75166564E-12, 0.999996305))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.728999794, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099796))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737E-7, 1.78813934E-7, -0.765435159, 0.999992013, 4.55474947E-8, -8.91792951E-8, 7.89877959E-8, 1, 7.50333129E-12, 8.96345611E-8, -1.69393388E-11, 0.999992013))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999794, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158E-7, 0.401034474, -0.218741894, -9.05769411E-7, 1, 4.19313437E-6, 5.99046928E-8, 4.19315847E-6, -0.99999249, -0.99999249, -1.02401827E-6, -5.98340861E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.24520874E-6, -0.109345436, 0.765498161, 2.4039764E-8, 1, -2.68206122E-7, 1.00000012, -2.4025212E-8, -8.91794159E-8, -8.96683119E-8, -2.68202712E-7, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.109348774, -0.765428007, 1.16182491E-7, -1, -3.36297035E-8, 0.99999249, 2.34431354E-7, 3.00303391E-8, -2.95789633E-8, -3.36318635E-8, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.11272049E-6, 0.328126699, -0.327976704, 1.28286774E-6, -1, 3.69482927E-6, 1.78121411E-7, -3.69483269E-6, -1.00000012, 1.00000012, 1.28286774E-6, 1.79043852E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.529953E-6, 0.109344244, -1.12993956, -7.47910235E-7, 1, -7.53350378E-8, -0.99999249, -8.6617365E-7, -2.29158692E-10, 2.37071612E-10, 7.53281029E-8, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.86834145E-5, -1.34455323, 0.182402134, 4.70381055E-5, -1, 2.44081239E-5, 9.27170959E-7, 2.44083476E-5, 0.999991953, -0.999991953, -4.71630046E-5, 9.23559071E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.36034393E-5, 0.801941454, -0.183549404, -1.42525823E-5, -1, -3.63522145E-6, 1.16252045E-6, 3.63521212E-6, -1.00000012, 1.00000012, -1.42525751E-5, 1.16249237E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.256496668, -4.40478325E-5, -0.80155021, -1, -5.25360374E-5, 5.928203E-8, 5.2536052E-5, -1, -2.28487806E-9, 2.27306451E-10, -2.28317276E-9, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.656099975, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.50015068E-5, -0.764769971, 0.329243183, -1.84655801E-5, -1, 2.4435758E-5, 7.78162814E-7, 2.44357543E-5, 1.00000012, -1.00000012, 1.84655873E-5, 7.74666205E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.583199918))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.255176544, -3.21865082E-6, -0.80153203, 0.99999249, 1.59391639E-5, -8.91505465E-8, -1.5820784E-5, 1, 5.48629941E-9, 8.96338719E-8, -5.4864131E-9, 0.99999249))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.219659328, -4.85777855E-5, -1.12716568, -1, -1.09744244E-4, -6.00307288E-8, 1.09744229E-4, -1, 2.51818619E-8, 2.30760036E-10, 2.51625352E-8, 1.00000012))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.364499956, 0.218699992))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.89437103E-6, -1.346066, 0.181346178, -2.58969376E-5, 1, 2.44417606E-5, -6.58499118E-7, -2.44419953E-5, 0.999991894, 0.999991834, 2.60216621E-5, 7.15530405E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97887421E-5, -5.96046448E-8, -1.16637254, 0.999992013, 5.18615707E-7, -8.91784353E-8, -3.94094968E-7, 1, -5.81849235E-10, 8.96346322E-8, 5.80939741E-10, 0.999992013))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999436))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.529953E-6, -0.109353304, 0.765445173, -5.20813046E-7, -1, -1.00830448E-7, -0.999996066, 4.58137947E-7, -2.26764232E-10, -2.14904719E-10, 1.00832835E-7, -0.999996066))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218475819, -6.49690628E-6, -1.12858629, 0.999996066, 4.32885281E-5, -5.92987561E-8, -4.32256784E-5, 1, 1.67494818E-8, 5.98301355E-8, -1.67441385E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999913, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.291599989))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.85966492E-5, 2.98023224E-7, -1.23922431, 0.999992013, -3.3302058E-7, -8.91799772E-8, 4.57541319E-7, 1, -4.58157956E-10, 8.9634618E-8, 4.49517756E-10, 0.999992013))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999972, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.49011612E-6, -0.801843822, 0.182271481, -7.40372343E-7, 1, -3.67872758E-6, -5.95355971E-7, 3.67874327E-6, 0.999996066, 0.999996066, 8.03061994E-7, 5.9627547E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.74181366E-6, -0.801943064, 0.182236671, 9.97824827E-7, -1, 4.14239548E-6, 9.01558153E-8, 4.14239457E-6, 1.00000012, -1.00000012, -9.97824827E-7, 8.91775684E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.36441803E-7, -0.474108547, 0.328011274, -4.45534533E-6, -1, 4.13907401E-6, 9.0155396E-8, 4.13907719E-6, 1.00000012, -1.00000012, 4.45534533E-6, 1.18989753E-7))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, 0.218727827, -0.473888695, 9.16843419E-7, -1, -7.51463176E-8, 0.999996066, 9.7953307E-7, -5.93752816E-8, 5.98227814E-8, -7.51626885E-8, 0.999996066))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.728999972, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00359535217, 7.9870224E-6, -0.509818494, 1, 7.64841388E-6, -2.08374829E-7, -7.64839933E-6, 1, 4.69139422E-7, 2.08784826E-7, -4.69139195E-7, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 0.765449822, 0.728999913))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.37090683E-6, -0.47392267, 0.328080654, -7.3715637E-7, 1, 4.14191163E-6, -2.93600561E-10, -4.14193846E-6, 0.99999249, 0.99999249, 8.55419785E-7, 2.29139235E-10))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38418579E-6, -0.546819091, 0.218687534, 7.46455044E-7, -1, 4.14206443E-6, 9.01557726E-8, 4.14205942E-6, 1.00000012, -1.00000012, -7.46469595E-7, 8.91780232E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737E-7, -0.546805441, 0.218739033, -4.84244083E-7, 1, 4.1418607E-6, 5.93110521E-8, -4.1418898E-6, 0.999996066, 0.999996066, 5.46933734E-7, -5.93760632E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.41074371E-6, 0.327976465, 0.401024103, 4.62634489E-7, -1, 4.12384543E-6, -1.00000012, -4.62619937E-7, -8.96353995E-8, 8.86604568E-8, -4.12383815E-6, -1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.64916229E-6, -0.3279984, -0.401025444, 8.24336894E-7, -1, 4.13303496E-6, 1.00000012, 8.24351446E-7, 2.29084779E-10, 7.4766715E-10, 4.13303769E-6, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147E-6, -0.328078747, -0.401023626, -7.89412297E-7, 1, 4.13299131E-6, -0.99999249, -9.07675712E-7, -2.29233757E-10, -2.92478985E-10, -4.13302541E-6, 0.99999249))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499956))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.30481339E-6, 0.401030302, -0.218663454, 7.07135769E-7, -1, 4.19290882E-6, -9.01621675E-8, -4.19291064E-6, -1.00000012, 1.00000012, 7.07135769E-7, -8.91780942E-8))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.728999972))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0.30000001192093, "Teal", "Part", Vector3.new(0.200000003, 0.583199918, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.2584877E-6, 0.801867843, -0.182212353, 1.67358812E-5, 1, -3.64418497E-6, -1.25238375E-6, -3.6441761E-6, -0.999996066, -0.999996066, 1.66732643E-5, 1.25150007E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.364499956, 1, 0.364499986))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.656099975))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.70876694E-6, 0.109347105, -0.765441597, 9.38598532E-8, 1, -7.51749667E-8, -1.00000012, 9.38598532E-8, -2.27424024E-10, 2.37053072E-10, 7.51733751E-8, 1.00000012))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle8, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.06639481E-6, -0.109352589, -0.400942802, 4.8923539E-7, 1, -1.50219194E-7, -0.999996305, 4.30110958E-7, -3.57854674E-7, -3.57381367E-7, 1.50218057E-7, 0.999996305))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.728999794, 0.364499956, 0.364499986))
local Lite = Create("PointLight")({
  Parent = MainPrt,
  Color = BrickColor.new("Teal").Color,
  Shadows = true,
  Range = 20,
  Brightness = 0.5
})
local Spin2 = Create("Sound")({
  Parent = MainPrt,
  SoundId = "rbxassetid://149560784",
  Volume = 0.7,
  Pitch = 0.2,
  Looped = true
})
Spin2:Play()
function Laser(Part, Dmg)
  local sp = Part.Position
  local dirr = Part.CFrame * CFrame.Angles(math.rad(90), 0, 0)
  local hit, pos = rayCast(sp, dirr.lookVector, 100, Character)
  local las = Instance.new("Part", Character)
  las.Material = "Neon"
  las.Anchored = true
  las.Locked = true
  las.CanCollide = false
  las.TopSurface = 0
  las.BottomSurface = 0
  las.FormFactor = "Custom"
  las.BrickColor = BrickColor.new("Toothpaste")
  las.Size = Vector3.new(1, 1, 1)
  las.CFrame = CFrame.new((Part.Position + pos) / 2, pos) * CFrame.Angles(math.rad(90), 0, 0)
  local msh = Instance.new("CylinderMesh", las)
  local mag = (Part.Position - pos).magnitude
  msh.Scale = Vector3.new(0.1, mag, 0.1)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.1
      Mesh.Scale = Mesh.Scale + Vector3.new(0.15, 0.7, 0.15)
    end
    Part.Parent = nil
  end), las, msh)
  if pos ~= nil then
    local las2 = Instance.new("Part", Character)
    las2.Material = "Neon"
    las2.Anchored = true
    las2.Locked = true
    las2.CanCollide = false
    las2.TopSurface = 0
    las2.BottomSurface = 0
    las2.FormFactor = "Custom"
    las2.BrickColor = BrickColor.new("Toothpaste")
    las2.Size = Vector3.new(1, 1, 1)
    las2.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(90), 0, 0)
    local msh = Instance.new("SpecialMesh", las2)
    msh.MeshType = "Sphere"
    mag = (Part.Position - pos).magnitude
    msh.Scale = Vector3.new(0.1, 0.1, 0.1)
    coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 1, 0.1 do
        wait()
        Part.Transparency = Part.Transparency + 0.1
        Mesh.Scale = Mesh.Scale + Vector3.new(0.5, 0, 0.5)
      end
      Part.Parent = nil
    end), las2, msh)
  end
  if hit ~= nil and pos ~= nil then
    if hit.Parent.className == "Hat" then
      hit:BreakJoints()
      hit.Velocity = Vector3.new(math.random(-5, 5), 20, math.random(-5, 5))
    end
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
      hit.Parent.Humanoid:TakeDamage(Dmg)
    end
  end
end
function MagicBlock2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, decrease)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  local CF = prt.CFrame
  local num = math.random(5, 20)
  coroutine.resume(coroutine.create(function(CreatePart, Mesh, CF2, Num)
    for i = 0, 1.05, 0.05 do
      wait()
      CreatePart.CFrame = CF2 * CFrame.new(0, i * Num, 0) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      CreatePart.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
      Num = Num - decrease
    end
    CreatePart.Parent = nil
  end), prt, msh, CF, num)
end
function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(CreatePart, Mesh)
    for i = 0, 1, delay do
      wait()
      CreatePart.CFrame = CreatePart.CFrame
      CreatePart.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    CreatePart.Parent = nil
  end), prt, msh)
end
function attackone()
  attack = true
  FakeMainweld.Part0 = RootPart
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-5), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(7, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.08 do
    wait()
    Laser(MainPrt, 10)
    so("http://www.roblox.com/asset/?id=161006182", MainPrt, 1, 2)
    so("http://www.roblox.com/asset/?id=161006182", MainPrt, 1, 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(5), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(0), math.rad(20), math.rad(130)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(5)), 0.3)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(7, 0, 0) * angles(math.rad(0), math.rad(0), 0), 0.2)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
  end
  FakeMainweld.Part0 = Torso
  attack = false
end
function attacktwo()
  attack = true
  Humanoid.WalkSpeed = 2
  FakeMainweld.Part0 = RightArm
  for i = 0, 1, 0.2 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.3) * angles(math.rad(0), math.rad(70), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(10)), 0.3)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-5)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", MainPrt, 1, 1.5)
  MagicCircle(BrickColor.new("Toothpaste"), MainPrt.CFrame * CFrame.new(0, 2, 0), 1, 1, 1, 0.2, 0.2, 0.2, 0.05)
  for i = 1, 10 do
    MagicBlock2(BrickColor.new("Toothpaste"), MainPrt.CFrame * CFrame.fromEulerAnglesXYZ((math.random(-1, 0) + math.random()) / 2, (math.random(-1, 0) + math.random()) / 2, (math.random(-1, 0) + math.random()) / 2), 0, 0, 0, 0.2, 0.2, 0.2, 0)
  end
  for i = 0, 1, 0.12 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-10), math.rad(-90)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.4)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-8), math.rad(-40), math.rad(-5)), 0.4)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-8), math.rad(-40), math.rad(10)), 0.4)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, -2, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.35)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(6 * i, math.rad(0), math.rad(90)), 0.4)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, -0.8) * angles(math.rad(20), math.rad(0), math.rad(5)), 0.35)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(-0.4, 0, -0.4) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.35)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(-0.8, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.35)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(-0.4, 0, 0.4) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.35)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0.8) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.35)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0.4, 0, 0.4) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.35)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0.8, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.35)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0.4, 0, -0.4) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.35)
  end
  FakeMainweld.Part0 = RootPart
  for i = 0, 1, 0.5 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(50)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.4)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-8), math.rad(40), math.rad(-5)), 0.4)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-8), math.rad(40), math.rad(10)), 0.4)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, 0, -4) * angles(math.rad(0), math.rad(0), math.rad(0)), 1)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(0, math.rad(0), math.rad(0)), 1)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-5)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
  end
  so("http://www.roblox.com/asset/?id=161006182", MainPrt, 1, 1.2)
  MagicCircle(BrickColor.new("Toothpaste"), MainPrt.CFrame * CFrame.new(0, 2, 0), 1, 1, 1, 0.2, 0.2, 0.2, 0.05)
  for i = 1, 10 do
    MagicBlock2(BrickColor.new("Toothpaste"), MainPrt.CFrame * CFrame.fromEulerAnglesXYZ((math.random(-1, 0) + math.random()) / 2, (math.random(-1, 0) + math.random()) / 2, (math.random(-1, 0) + math.random()) / 2), 0, 0, 0, 0.2, 0.2, 0.2, 0)
  end
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(50), math.rad(0), math.rad(20)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.5)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.5)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, 0, -7) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.35)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), 6 * i, math.rad(0)), 0.4)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, -0.8) * angles(math.rad(20), math.rad(0), math.rad(5)), 0.35)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(-0.4, 0, -0.4) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.35)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(-0.8, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.35)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(-0.4, 0, 0.4) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.35)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0.8) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.35)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0.4, 0, 0.4) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.35)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0.8, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.35)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0.4, 0, -0.4) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.35)
  end
  Humanoid.WalkSpeed = 16
  FakeMainweld.Part0 = Torso
  attack = false
end
function attackthree()
  attack = true
  FakeMainweld.Part0 = RootPart
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.4) * angles(math.rad(80), math.rad(0), math.rad(-40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(80), math.rad(0), math.rad(40)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-50), math.rad(-5)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-50), math.rad(10)), 0.3)
    FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.3)
    Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(2, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(2, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(-2, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(-2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(-2, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 1, 4 do
    for i = 0, 1, 0.1 do
      wait()
      so("http://roblox.com/asset/?id=243711414", Handle1, 0.4, 1.5)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0.5) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.05)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.05)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(80)), 0.05)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-80)), 0.05)
      RH.C0 = clerp(RH.C0, cn(1, -0.8, -0.5) * RHCF * angles(math.rad(5), math.rad(0), math.rad(-10)), 0.05)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(3), math.rad(0), math.rad(10)), 0.05)
      FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0, 0, -1) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.35)
      MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(-6 * i, math.rad(0), math.rad(90)), 0.2)
      Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(2, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(2, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(-2, 0, -2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(-2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(-2, 0, 2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  FakeMainweld.Part0 = Torso
  attack = false
end
mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  end
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.One and typing == false and cooldown3 >= co1 and stamina >= skill1stam then
  elseif k.KeyCode == Enum.KeyCode.Two and typing == false and cooldown3 >= co2 and stamina >= skill2stam then
  elseif k.KeyCode == Enum.KeyCode.Three and typing == false and cooldown3 >= co3 and stamina >= skill3stam then
  elseif k.KeyCode ~= Enum.KeyCode.Four or typing ~= false or not (cooldown3 >= co4) or stamina >= skill4stam then
  end
end)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    do
      local fin
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
        if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
          typing = false
          fin:disconnect()
        end
      end)
    end
  end
end)
function updateskills()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.03333333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.03333333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.03333333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.03333333333333333
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end
local donum = 0
game:GetService("RunService").Heartbeat:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  donum = donum + 0.003
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil and stun.Value ~= true then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.7, -0.5) * RHCF * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(5), math.rad(0), math.rad(20)), 0.3)
        FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0) + donum / 0.1, math.rad(0)), 0.3)
        Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    elseif RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.8, -0.3) * RHCF * angles(math.rad(2), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9, -0.1) * LHCF * angles(math.rad(2), math.rad(0), math.rad(0)), 0.3)
        FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0) + donum / 0.1, math.rad(0)), 0.3)
        Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    elseif Torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
      Anim = "Idle"
      if attack == false then
        change = 1
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + 0.05 * math.cos(sine / 15)) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3.5 * math.cos(sine / 15)), math.rad(-5), math.rad(-10)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30 + 3.5 * math.cos(sine / 15)), math.rad(-20), math.rad(20 - 2 * math.cos(sine / 15))), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30 + 3.5 * math.cos(sine / 15)), math.rad(20), math.rad(-20 - 2 * math.cos(sine / 15))), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos(sine / 15), 0) * RHCF * angles(math.rad(-3 + 0.1 * math.cos(sine / 15)), math.rad(-5), math.rad(0 - 3 * math.cos(sine / 15))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos(sine / 15), 0) * LHCF * angles(math.rad(-3 + 0.1 * math.cos(sine / 15)), math.rad(-5), math.rad(0 - 3 * math.cos(sine / 15))), 0.3)
        FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0) + donum / 0.1, math.rad(0)), 0.3)
        Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    elseif Torsovelocity > 2 and hit ~= nil and stun.Value ~= true then
      Anim = "Walk"
      if attack == false then
        change = 1
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30 + 2 * math.cos(sine / 15)), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0) + RootPart.RotVelocity.Y / 15), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(10) + RootPart.RotVelocity.Y / 30), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-10) + RootPart.RotVelocity.Y / 30), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(2) - RootPart.RotVelocity.Y / 15, math.rad(0), math.rad(-5 + 3 * math.cos(sine / 35))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(3) + RootPart.RotVelocity.Y / 15, math.rad(0), math.rad(5 - 3 * math.cos(sine / 35))), 0.3)
        FakeMainweld.C0 = clerp(FakeMainweld.C0, CFrame.new(0.05, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MainPrtweld.C0 = clerp(MainPrtweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0) + donum / 0.1, math.rad(0)), 0.3)
        Handle1weld.C0 = clerp(Handle1weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle2weld.C0 = clerp(Handle2weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle3weld.C0 = clerp(Handle3weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle4weld.C0 = clerp(Handle4weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle5weld.C0 = clerp(Handle5weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle6weld.C0 = clerp(Handle6weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle7weld.C0 = clerp(Handle7weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        Handle8weld.C0 = clerp(Handle8weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    end
  end
end)
