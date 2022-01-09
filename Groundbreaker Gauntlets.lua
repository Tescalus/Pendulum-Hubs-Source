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
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
  Effects = {}
  local Player = game.Players.LocalPlayer
  local Character = game.Workspace.non
  local Humanoid = Character.Humanoid
  local mouse = Player:GetMouse()
  local m = Instance.new("Model", Character)
  m.Name = "WeaponModel"
  local rearRotor = Instance.new("Model", Character)
  rearRotor.Name = "RearRotor"
  local rail = Instance.new("Model", Character)
  rail.Name = "Rail"
  local shield = Instance.new("Model", Character)
  shield.Name = "Shield"
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
  local aim = false
  local vHold = false
  local Anim = "Idle"
  local idle = 0
  local attacktype = 1
  local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1).magnitude).x or (RootPart.Velocity * Vector3.new(1, 0, 1).magnitude).z
  local velocity = RootPart.Velocity.y
  local sine = 0
  local change = 1
  local lapse = 0
  local grabbed = false
  local cn = CFrame.new
  local mr = math.rad
  local angles = CFrame.Angles
  local euler = CFrame.fromEulerAnglesXYZ
  local ud = UDim2.new
  local c3 = Color3.new
  local donum = 0
  local donum2 = 0
  local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  Humanoid.Animator:Destroy()
  Character.Animate:Destroy()
  local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
  local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
  local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
  RSH = nil
  RW = Instance.new("Weld")
  LW = Instance.new("Weld")
  RH = Torso["Right Hip"]
  LH = Torso["Left Hip"]
  RSH = Torso["Right Shoulder"]
  LSH = Torso["Left Shoulder"]
  RSH.Parent = nil
  LSH.Parent = nil
  RW.Name = "RW"
  RW.Part0 = Torso
  RW.C0 = cn(1.5, 0.5, 0)
  RW.C1 = cn(0, 0.5, 0)
  RW.Part1 = RightArm
  RW.Parent = Torso
  LW.Name = "LW"
  LW.Part0 = Torso
  LW.C0 = cn(-1.5, 0.5, 0)
  LW.C1 = cn(0, 0.5, 0)
  LW.Part1 = LeftArm
  LW.Parent = Torso
  local co1 = 2
  local co2 = 2
  local co3 = 2
  local co4 = 2
  local cooldown1 = 0
  local cooldown2 = 0
  local cooldown3 = 0
  local cooldown4 = 0
  local maxMana = 100
  local Mana = 100
  local skill1stam = 0
  local skill2stam = 0
  local skill3stam = 0
  local skill4stam = 0
  local skill4absorbrate = 2
  local blockDrainRate = 0.5
  local recovermana = 100
  local skillcolorscheme = Color3.new(1, 1, 1)
  local scrn = Instance.new("ScreenGui", Player.PlayerGui)
  makeframe = function(par, trans, pos, size, color)
    local frame = Instance.new("Frame", par)
    frame.BackgroundTransparency = trans
    frame.BorderSizePixel = 0
    frame.Position = pos
    frame.Size = size
    frame.BackgroundColor3 = Color3.new(color)
    return frame
  end

  makelabel = function(par, text)
    local label = Instance.new("TextLabel", par)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.TextColor3 = Color3.new(255, 255, 255)
    label.TextStrokeTransparency = 0
    label.FontSize = Enum.FontSize.Size32
    label.Font = Enum.Font.SourceSansBold
    label.BorderSizePixel = 0
    label.TextScaled = true
    label.Text = text
  end

  local colorscheme2 = Torso.BrickColor.Color
  framesk1 = makeframe(scrn, 0.5, UDim2.new(0.23, 0, 0.93, 0), UDim2.new(0.26, 0, 0.06, 0), colorscheme2)
  framesk2 = makeframe(scrn, 0.5, UDim2.new(0.5, 0, 0.93, 0), UDim2.new(0.26, 0, 0.06, 0), colorscheme2)
  framesk3 = makeframe(scrn, 0.5, UDim2.new(0.5, 0, 0.86, 0), UDim2.new(0.26, 0, 0.06, 0), colorscheme2)
  framesk4 = makeframe(scrn, 0.5, UDim2.new(0.23, 0, 0.86, 0), UDim2.new(0.26, 0, 0.06, 0), colorscheme2)
  bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
  bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
  bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
  bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
  text1 = makelabel(framesk1, "[C] Rail Dominator")
  text2 = makelabel(framesk2, "[V + HOLD] Gluon Drive")
  text3 = makelabel(framesk3, "[X] Arcus Surge")
  text4 = makelabel(framesk4, "[Z] Ground Breaker")
  Manabar = makeframe(scrn, 0.5, UDim2.new(0.23, 0, 0.82, 0), UDim2.new(0.26, 0, 0.03, 0), BrickColor.new("Really black").Color)
  Manacover = makeframe(Manabar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Cyan").Color)
  Manatext = makelabel(Manabar, "Energy")
  healthbar = makeframe(scrn, 0.5, UDim2.new(0.5, 0, 0.82, 0), UDim2.new(0.26, 0, 0.03, 0), BrickColor.new("Really black").Color)
  healthcover = makeframe(healthbar, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), BrickColor.new("Lime green").Color)
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
  defense.Value = 1.2
  local speed = Instance.new("NumberValue", stats)
  speed.Name = "Speed"
  speed.Value = 0.7
  local damagea = Instance.new("NumberValue", stats)
  damagea.Name = "Damage"
  damagea.Value = 0
  clerp = function(a, b, t)
    return a:lerp(b, t)
  end

  ArtificialHB = Instance.new("BindableEvent", script)
  ArtificialHB.Name = "Heartbeat"
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
  swait = function(num)
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
  RemoveOutlines = function(part)
    part.TopSurface = 10
  end

  CreateWeaponPart = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
    local fp = Create("Part")({formFactor = formfactor, Parent = parent, Reflectance = reflectance, Transparency = transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(brickcolor)), Name = name, Size = size, Material = material})
    RemoveOutlines(fp)
    return fp
  end

  CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
    local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
    RemoveOutlines(Part)
    return Part
  end

  CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
    local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
    if Mesh == "SpecialMesh" then
      Msh.MeshType = MeshType
      Msh.MeshId = MeshId
    end
    return Msh
  end

  CreateWeld = function(Parent, Part0, Part1, C0, C1)
    local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
    return Weld
  end

  rayCast = function(Position, Direction, Range, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
  end

  CreateSound = function(id, par, vol, pit, looped)
    local sou = Instance.new("Sound", par or Character)
    coroutine.resume(coroutine.create(function()
      sou.Volume = vol
      sou.Pitch = pit or 1
      sou.SoundId = id
      sou.Looped = looped or false
      swait()
      sou:play()
      if looped == nil or looped == false then
        game:GetService("Debris"):AddItem(sou, 6)
      end
    end
))
    return sou
  end

  local getclosest = function(obj, distance)
    local last, lastx = distance + 1, nil
    for i,v in pairs(workspace:GetChildren()) do
      if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
        local t = v.Torso
        local dist = (t.Position - obj.Position).magnitude
        if dist <= distance and dist < last then
          last = dist
          lastx = v
        end
      end
    end
    return lastx
  end

  makegui = function(cframe, text)
    local a = math.random(-10, 10) / 100
    local c = Instance.new("Part")
    c.Transparency = 1
    Instance.new("BodyGyro").Parent = c
    c.Parent = Character
    c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
    local f = Instance.new("BodyPosition")
    f.P = 2000
    f.D = 100
    f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    f.position = c.Position + Vector3.new(0, 3, 0)
    f.Parent = c
    game:GetService("Debris"):AddItem(c, 6.5)
    c.CanCollide = false
    c.Parent = Character
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
        swait()
        c.Transparency = 1
        tl.TextTransparency = tl.TextTransparency + 0.1
      end
    end
)()
  end

  Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock, blockreduction)
    if hit.Parent == nil or hit.Name == "Laser" or hit.Name == "Reference" then
      return 
    end
    local h = nil
    if hit.Parent:FindFirstChild("Humanoid") then
      h = hit.Parent:FindFirstChild("Humanoid")
    else
      if hit.Parent.Parent:FindFirstChild("Humanoid") then
        h = hit.Parent.Parent:FindFirstChild("Humanoid")
      else
        if hit.Parent.Parent:FindFirstChild("Parent") and hit.Parent.Parent.Parent:FindFirstChild("Humanoid") then
          h = hit.Parent.Parent.Parent:FindFirstChild("Humanoid")
        end
      end
    end
    h = nil
    if h == nil then
      return 
    end
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
    if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil and hit.Parent:FindFirstChild("Armed") ~= nil then
      if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
        return 
      end
      local c = Instance.new("ObjectValue")
      c.Name = "creator"
      c.Value = game:service("Players").LocalPlayer
      c.Parent = h
      game:GetService("Debris"):AddItem(c, 0.5)
      local Damage = 0
      local blocked = false
      local stats = (hit.Parent:FindFirstChild("Stats"))
      local block = nil
      if stats ~= nil then
        block = stats.Block
      end
      if blockreduction == nil then
        blockreduction = 3
      end
      if block ~= nil then
        if block.className == "NumberValue" and block.Value > 0 then
          blocked = true
          if decreaseblock == nil then
            block.Value = block.Value - 1
          end
        end
        if block.className == "BoolValue" and block.Value == true then
          blocked = true
          local vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = (Property.CFrame.lookVector * knockback + Property.Velocity / 1.05) / blockreduction
          else
            if KnockbackType == 2 then
              vp.velocity = Property.CFrame.lookVector * knockback / blockreduction
            end
          end
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        end
        do
          if block.className == "IntValue" and block.Value > 0 then
            blocked = true
            if decreaseblock ~= nil then
              block.Value = block.Value - 1
            end
          end
          if blocked == false then
            h.Health = h.Health - Damage
            ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Hitbox.BrickColor.Color)
          else
            h.Health = h.Health - (Damage / blockreduction or 3)
            ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), math.floor(-Damage / blockreduction or 3) + 0.5, 1.5, BrickColor.new("Bright blue").Color)
          end
          if Type == "Knockdown" and blocked == false then
            local hum = hit.Parent.Humanoid
            hum.PlatformStand = true
            coroutine.resume(coroutine.create(function(HHumanoid)
      swait(1)
      HHumanoid.PlatformStand = false
    end
), hum)
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            local rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Normal" and blocked == false then
                local vp = Instance.new("BodyVelocity")
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
                do
                  if Type == "Up" and blocked == false then
                    local bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.velocity = vt(0, 60, 0)
                    bodyVelocity.P = 5000
                    bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                    bodyVelocity.Parent = hit
                    game:GetService("Debris"):AddItem(bodyVelocity, 1)
                    local rl = Instance.new("BodyAngularVelocity")
                    rl.P = 3000
                    rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                    rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                    rl.Parent = hit
                    game:GetService("Debris"):AddItem(rl, 0.5)
                  else
                    do
                      if Type == "Snare" and blocked == false then
                        local bp = Instance.new("BodyPosition")
                        bp.P = 2000
                        bp.D = 100
                        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bp.position = hit.Parent.Torso.Position
                        bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)
                      else
                        do
                          if Type == "Target" and blocked == false then
                            local Targetting = false
                            if Targetting == false then
                              ZTarget = hit.Parent.Torso
                              coroutine.resume(coroutine.create(function(Part)
      CreateSound("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
      swait(5)
      CreateSound("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    end
), ZTarget)
                              local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                              local targetgui = Instance.new("BillboardGui")
                              targetgui.Parent = ZTarget
                              targetgui.Size = UDim2.new(10, 100, 10, 100)
                              local targ = Instance.new("ImageLabel")
                              targ.Parent = targetgui
                              targ.BackgroundTransparency = 1
                              targ.Image = "rbxassetid://4834067"
                              targ.Size = UDim2.new(1, 0, 1, 0)
                              cam.CameraType = "Scriptable"
                              cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                              local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                              workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                              Targetting = true
                              RocketTarget = ZTarget
                              for i = 1, Property do
                                if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                                  swait()
                                end
                                cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                                dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                                cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                              end
                              Targetting = false
                              RocketTarget = nil
                              targetgui.Parent = nil
                              cam.CameraType = "Custom"
                            end
                          end
                          do
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

  ShowDamage = function(Pos, Text, Time, Color)
    local Rate = 0.033333333333333
    if not Pos then
      local Pos = Vector3.new(0, 0, 0)
    end
    local Text = Text or ""
    local Time = Time or 2
    if not Color then
      local Color = Color3.new(1, 0, 0)
    end
    local EffectPart = CreateWeaponPart("Custom", Character, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Size = UDim2.new(3, 0, 3, 0)
    BillboardGui.Adornee = EffectPart
    local TextLabel = Instance.new("TextLabel")
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Text = Text
    TextLabel.TextColor3 = Color
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.ArialBold
    TextLabel.Parent = BillboardGui
    BillboardGui.Parent = EffectPart
    game.Debris:AddItem(EffectPart, Time + 0.1)
    EffectPart.Parent = Character
    Delay(0, function()
      local Frames = Time / Rate
      for Frame = 1, Frames do
        wait(Rate)
        local Percent = Frame / Frames
        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
        TextLabel.TextTransparency = Percent
      end
      if EffectPart and EffectPart.Parent then
        EffectPart:Destroy()
      end
    end
)
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
            Damagefunc(Part, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1)
          end
        end
      end
    end
  end

  LeftHandle = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  LeftHandleweld = CreateWeld(m, Character["Left Arm"], LeftHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0481894873, 0.0176233053, 1.05672896, 7.91948478e-005, -0.0114456406, -0.999934554, -1, -0.000125397128, -7.77646856e-005, -0.000124498867, 0.999934435, -0.0114456518))
  CreateMesh("SpecialMesh", LeftHandle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
  SMnrgRng = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "nrgRng", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  SMnrgRngweld = CreateWeld(m, LeftHandle, SMnrgRng, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150001682, 0.0078753233, 1.20272875, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", SMnrgRng, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.79999995, 0.300000012, 0.300000012))
  Partweld = CreateWeld(m, LeftHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0289917998, -0.0111817122, -0.157007813, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, LeftHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.39512122e-005, 4.9829483e-005, -0.400003552, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
  LGnrgRng = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "nrgRng", Vector3.new(1, 1, 0.200000003))
  LGnrgRngweld = CreateWeld(m, LeftHandle, LGnrgRng, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0596184209, 0.00756621361, 3.90246272, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", LGnrgRng, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(3, 3, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, LeftHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0022751987, 2.46763229e-005, -0.20001471, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(2.0999999, 2.0999999, 1.20000005))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, LeftHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0022752136, 2.46763229e-005, -0.20001328, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.79999995, 1.79999995, 2))
  Hitbox = CreateWeaponPart(Enum.FormFactor.Brick, m, Enum.Material.Plastic, 0, 1, "Really black", "Hitbox", Vector3.new(2.48000002, 1.44999993, 2.5999999))
  Hitboxweld = CreateWeld(m, LeftHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0208437443, 0.118899107, -0.0742249787, 7.91661951e-005, -0.99999994, -0.000124600119, -0.0114456592, -0.000125502178, 0.999934554, -0.999934494, -7.7734876e-005, -0.0114456508))
  RightHandle = CreateWeaponPart(Enum.FormFactor.Symmetric, m, Enum.Material.Plastic, 0, 1, "Pastel brown", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  RightHandleweld = CreateWeld(m, Character["Right Arm"], RightHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 5.96046448e-008, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.210000008, 0.200000003))
  Partweld = CreateWeld(m, RightHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00615789229, -0.00749695301, -0.713596702, 0.00343851582, -0.0130101992, 0.99990952, 0.999908209, 0.0131466873, -0.00326745468, -0.0131029878, 0.999828994, 0.0130542098))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.19999981, 5, 3))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.26000002))
  Partweld = CreateWeld(m, RightHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00633427128, -0.00812423229, 0.316169471, 0.00343851, -0.0130097354, 0.99990952, 0.999983072, -0.00467376411, -0.00349957286, 0.00471886946, 0.999904513, 0.0129934428))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.19999981, 5.0999999, 3))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, RightHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00592672965, -0.512394786, 0.348286837, 0.00343851582, -0.0130101992, 0.99990952, 0.999908209, 0.0131466873, -0.00326745468, -0.0131029878, 0.999828994, 0.0130542098))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
  RotorHandle = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "RotorHandle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  RotorHandleweld = CreateWeld(m, LeftHandle, RotorHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0022752136, 2.46763229e-005, -0.20001328, 1.00000012, 0, 0, 0, 1, -3.97903932e-013, 0, -3.97903932e-013, 1.00000012))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.38300407, 0.455274403))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0708336234, -1.50832129, 0.498044372, 0.707035065, 0.707131386, 0.0081796376, -0.547542334, 0.540074348, 0.639153421, 0.447547853, -0.456382543, 0.769035935))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.28300405, 0.465274394))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0788677931, 1.42347693, -0.449401736, 0.707083941, -0.707084417, 0.00800593756, -0.554244578, -0.561204016, -0.614705682, 0.43914175, 0.430211216, -0.788716078))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0787920952, -0.413565874, 1.75803661, -0.707136631, 0.707032025, -0.00797253475, 0.311199784, 0.301081628, -0.901390433, -0.634911597, -0.639887214, -0.432934046))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.171932191, 2.06318712, 0.343864322))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.51300383, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0787450075, -1.02296484, 1.68831527, -0.707139432, 0.707029164, -0.00797644071, 0.464936852, 0.456450999, -0.758608103, -0.532717288, -0.540150166, -0.651498377))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0789119005, -2.71741366, 1.07279229, 0.707086623, -0.707081854, 0.00799725484, 0.394271672, 0.403612196, 0.82561934, -0.587008238, -0.580631137, 0.564171076))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0788670778, -2.44238925, 0.834575415, 0.707086623, -0.707081854, 0.00799725484, 0.394271672, 0.403612196, 0.82561934, -0.587008238, -0.580631137, 0.564171076))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.38300407, 0.455274403))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0788627863, -1.51101875, 0.500322938, 0.707086146, -0.707082272, 0.00800287351, 0.532733202, 0.540109992, 0.651518703, -0.464999825, -0.456416398, 0.75859046))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.28300405, 0.465274394))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.128174901, 1.40868759, -0.438068837, -0.707084, 0.707084417, -0.0080038365, 0.568168223, 0.561356604, -0.601717353, -0.42097193, -0.430012137, -0.7986691))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.128249526, -0.4056243, 1.74116552, 0.707135856, -0.707032025, 0.00803845003, -0.290484756, -0.300854653, -0.90835309, 0.644653141, 0.639993906, -0.418127179))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.171932191, 2.06318712, 0.343864322))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.51300383, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.128296375, -1.01092637, 1.67407274, 0.707138777, -0.707029164, 0.00803461019, -0.447449356, -0.456259429, -0.769166112, 0.547488809, 0.540312052, -0.638998449))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.12812984, -2.70677805, 1.05749547, -0.707086444, 0.707081854, -0.00801257882, -0.413065463, -0.403818071, 0.816277027, 0.573939025, 0.580487967, 0.577605367))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.12817502, -2.43175316, 0.819277644, -0.707086444, 0.707081854, -0.00801257882, -0.413065463, -0.403818071, 0.816277027, 0.573939025, 0.580487967, 0.577605367))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.38300407, 0.455274403))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.128179669, -1.4967854, 0.488298923, -0.707086086, 0.707082272, -0.00800695177, -0.5475052, -0.540271878, 0.639018416, 0.447512656, 0.456224799, 0.76914984))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.28300405, 0.465274394))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.120145082, 1.41149151, -0.440217525, -0.70703721, -0.70712924, -0.00818065181, -0.554282606, 0.561320245, -0.614565372, 0.439169079, -0.429986089, -0.788823605))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120219231, -0.407127917, 1.74436224, 0.706984401, 0.707181513, 0.00821406581, 0.311306417, -0.300748885, -0.901464701, -0.63502878, 0.639878511, -0.432774931))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.171932191, 2.06318712, 0.343864322))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.51300383, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.120266378, -1.0132066, 1.67677212, 0.706981599, 0.707184374, 0.00821016077, 0.465069741, -0.456127822, -0.758721054, -0.532810807, 0.540220141, -0.651364028))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.120099187, -2.70879459, 1.060395, -0.707034528, -0.707131803, -0.00818933453, 0.394292414, -0.403798521, 0.82551837, -0.587057054, 0.580440879, 0.564316154))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.120144725, -2.43376923, 0.82217741, -0.707034528, -0.707131803, -0.00818933453, 0.394292414, -0.403798521, 0.82551837, -0.587057054, 0.580440879, 0.564316154))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.38300407, 0.455274403))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.120149255, -1.49948359, 0.490578234, -0.707035005, -0.707131386, -0.00818371587, 0.532770336, -0.540236235, 0.651383698, -0.465034902, 0.456190914, 0.758704364))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.28300405, 0.465274394))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0708386302, 1.42067397, -0.447253823, 0.707037151, 0.70712924, 0.00818275195, 0.568206251, -0.561167657, -0.601857662, -0.420999259, 0.430185169, -0.798561573))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0707631111, -0.412062526, 1.75484037, -0.706985176, -0.707181513, -0.00814815145, -0.290591359, 0.300975889, -0.908278823, 0.644770324, -0.639771819, -0.418286294))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.171932191, 2.06318712, 0.343864322))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.51300383, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0707163811, -1.02068484, 1.68561661, -0.706982255, -0.707184374, -0.00815199129, -0.447582245, 0.456319392, -0.769053161, 0.547582328, -0.540058255, -0.639132917))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0708848238, -2.71539783, 1.06989348, 0.707034707, 0.707131803, 0.00817401055, -0.413086206, 0.403592646, 0.816377997, 0.573987842, -0.580584049, 0.577460289))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 2.88846183, 0.687728643))
  Partweld = CreateWeld(m, RotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0708384514, -2.44037342, 0.831676602, 0.707034707, 0.707131803, 0.00817401055, -0.413086206, 0.403592646, 0.816377997, 0.573987842, -0.580584049, 0.577460289))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.687728763, 1, 1))
  RearRotorHandle = CreateWeaponPart(Enum.FormFactor.Brick, rearRotor, Enum.Material.Plastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  RearRotorHandleweld = CreateWeld(rearRotor, Character["Left Arm"], RearRotorHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000138282776, -0.763178706, 0.0102877412, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152360201, -0.7086851, 2.94673538, -1, 9.55974247e-005, 4.89801168e-005, -9.55983123e-005, -0.999999762, -1.76297326e-005, 4.89784325e-005, -1.76344111e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 3, 0.5))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.20000005, 1.20000005))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0879260302, -2.49646044, 1.15150487, 3.2633543e-005, 1.7081331e-005, -1, -0.96591121, 0.258873641, -2.7099195e-005, 0.258873731, 0.965911031, 2.49470213e-005))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0877985284, -3.83579588, 1.5019176, 8.10176134e-005, 6.36921541e-005, -1, -0.865989804, 0.500061631, -3.83104125e-005, 0.50006175, 0.865989625, 9.56705771e-005))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0876546949, -4.2356863, 1.84832323, 8.10176134e-005, 6.36921541e-005, -1, -0.865989804, 0.500061631, -3.83104125e-005, 0.50006175, 0.865989625, 9.56705771e-005))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0881010816, -1.6923486, 2.80422521, 2.66134703e-005, -1.39818931e-005, 1, -0.258923441, -0.96589762, -6.61423292e-006, 0.965897858, -0.258923382, -2.93261346e-005))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0880328566, -0.708874345, 2.94670677, 5.02169132e-006, 6.38468555e-005, 1, -9.67959641e-005, -0.999999762, 6.38473575e-005, 1, -9.67962624e-005, -5.01551131e-006))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 3, 0.5))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0882927999, -3.83751416, 1.49840403, -7.78734611e-005, 8.45296672e-005, 1, 0.866055846, 0.499947369, 2.51823622e-005, -0.499947459, 0.866055608, -0.000112140064))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.20000005, 1.20000005))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0883924663, -2.49747229, 1.14758539, -0.000127851948, 8.4142237e-005, 1, 0.965971649, 0.258648068, 0.000101738129, -0.258648127, 0.96597147, -0.000114347713))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0882568434, -1.69534659, 2.80337143, 4.76986097e-005, -7.78390458e-005, -1, 0.258832425, -0.965922058, 8.75324404e-005, -0.965922296, -0.258832365, -2.59258759e-005))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0883531645, -4.23755169, 1.8447659, -7.78734611e-005, 8.45296672e-005, 1, 0.866055846, 0.499947369, 2.51823622e-005, -0.499947459, 0.866055608, -0.000112140064))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0881102905, -0.711688459, -2.94676971, 5.02169132e-006, 6.38468555e-005, 1, -9.67959641e-005, -0.999999762, 6.38473575e-005, 1, -9.67962624e-005, -5.01551131e-006))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 3, 0.5))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152352452, -3.83745646, 1.49872386, -1, 2.19111753e-005, -5.33312559e-005, -3.52297939e-005, 0.500015736, 0.866016209, 4.56419148e-005, 0.86601609, -0.500015855))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.20000005, 1.20000005))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152505159, -2.49745202, 1.14781475, -1, 4.78689872e-005, 3.06963921e-006, 1.53502097e-005, 0.258728802, 0.965950012, 4.544486e-005, 0.965949833, -0.258728862))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.15264535, -1.69557297, 2.80329514, 1, -8.55391263e-005, -6.28978087e-005, -6.63380342e-005, -0.965902925, 0.25890404, -8.28996126e-005, -0.25890395, -0.965903103))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152270079, -4.23744345, 1.84510767, -1, 2.19111753e-005, -5.33312559e-005, -3.52297939e-005, 0.500015736, 0.866016209, 4.56419148e-005, 0.86601609, -0.500015855))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152536869, -0.7119295, -2.94669724, -1, 9.55974247e-005, 4.89801168e-005, -9.55983123e-005, -0.999999762, -1.76297326e-005, 4.89784325e-005, -1.76344111e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 3, 0.5))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.20000005, 1.20000005))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.15265131, -2.49634123, 1.15168691, 1, -1.49821371e-005, 2.75075436e-005, 3.04488494e-005, 0.258942276, -0.965892792, 7.34827427e-006, 0.965892553, 0.258942336))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.152612925, -3.83569002, 1.50197709, 1, -2.76630253e-005, 2.7552247e-005, 3.76933967e-005, 0.500079393, -0.865979493, 1.01773057e-005, 0.865979373, 0.500079513))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 4.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.15270555, -4.23561811, 1.84841764, 1, -2.76630253e-005, 2.7552247e-005, 3.76933967e-005, 0.500079393, -0.865979493, 1.01773057e-005, 0.865979373, 0.500079513))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, rearRotor, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Part", Vector3.new(0.200000003, 2.19999981, 1))
  Partweld = CreateWeld(rearRotor, RearRotorHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.152220964, -1.69214988, 2.80436611, -1, 0.000166705737, 5.29289318e-005, -0.000174724628, -0.965919554, -0.258841753, 7.97468692e-006, -0.258841693, 0.965919793))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  ShieldHandle = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0, 1, "Toothpaste", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  handleweld = CreateWeld(shield, Character["Right Arm"], ShieldHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.238033935, -0.224113405, -0.75435853, 2.45124138e-005, 0.707114398, 0.70709914, 7.06314813e-006, -0.70709908, 0.707114458, 1, -1.23387335e-005, -2.232716e-005))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.707103133, 0.707110465, 4.77082322e-005, -0.707110465, 0.707103133, -3.04873265e-005, -5.52925521e-005, -1.21773119e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 5.5999999, 0.400000006))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, -1.8189894e-012, 0, -1.8189894e-012, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 5.5999999, 0.200000003))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.707103133, 0.707110465, 4.77082322e-005, -0.707110465, 0.707103133, -3.04873265e-005, -5.52925521e-005, -1.21773119e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 6, 0.200000003))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 5.66244125e-007, 1, -5.63711073e-005, -1, 5.66244125e-007, -0.000140726566, -0.000140726537, 5.63711837e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 5.19999981, 0.400000006))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.707094014, -0.707119584, 0.000157117916, 0.707119584, 0.707094014, -1.47577284e-005, -0.000100661651, 0.000121536257, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 5.5999999, 0.400000006))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 5.66244125e-007, 1, -5.63711073e-005, -1, 5.66244125e-007, -0.000140726566, -0.000140726537, 5.63711837e-005, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 5.5999999, 0.200000003))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Cyan", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 0.707094014, -0.707119584, 0.000157117916, 0.707119584, 0.707094014, -1.47577284e-005, -0.000100661651, 0.000121536257, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 6, 0.200000003))
  Part = CreateWeaponPart(Enum.FormFactor.Custom, shield, Enum.Material.Plastic, 0.5, 1, "Toothpaste", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Partweld = CreateWeld(shield, ShieldHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, -1.8189894e-012, 0, -1.8189894e-012, 1))
  CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.600000024, 5.19999981, 0.400000006))
  Blocker = CreateWeaponPart(Enum.FormFactor.Brick, shield, Enum.Material.Plastic, 0, 1, "Medium stone grey", "Blocker", Vector3.new(0.200000003, 5.76000023, 6.46999979))
  Blockerweld = CreateWeld(shield, ShieldHandle, Blocker, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000354290009, -0.399796933, 0.0251437165, 2.45124138e-005, 7.06314813e-006, 1, 0.707114458, -0.70709914, -1.23387354e-005, 0.70709914, 0.707114458, -2.232716e-005))
  LRingsHandle = CreateWeaponPart(Enum.FormFactor.Brick, m, Enum.Material.Plastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  LRingsHandleWeld = CreateWeld(m, Character["Left Arm"], LRingsHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 5.96046448e-008, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
  LRingShoulderWeld = CreateWeld(m, LRingsHandle, LRingShoulder, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.590000212, -6.36577606e-005, -6.8128109e-005, -0.000151079468, 0.999999762, 4.60445881e-005, 0.865981996, 0.000107806307, 0.500075221, 0.500075221, 0.000115424853, -0.865981996))
  LRingMiddleWeld = CreateWeld(m, LRingsHandle, LRingMiddle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.130000055, -4.79730807e-006, -1.28746033e-005, -9.91046691e-005, 0.999999762, -3.68952788e-005, 7.15851929e-005, 3.69023655e-005, 1, 1, 9.91020061e-005, -7.15888527e-005))
  LRingHandWeld = CreateWeld(m, LRingsHandle, LRingHand, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309999973, 2.86102295e-006, -2.70605087e-005, 5.17578083e-005, 0.999999762, 7.09593296e-005, -0.86608696, 9.35464323e-006, 0.499893606, 0.499893546, -8.73303215e-005, 0.866086841))
  generateRail = function()
    local RailHandle = CreateWeaponPart(Enum.FormFactor.Brick, rail, Enum.Material.Plastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
    local RailHandleweld = CreateWeld(m, Character["Left Arm"], RailHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 4, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
  end

  BaseLaser = CreateWeaponPart(Enum.FormFactor.Brick, m, Enum.Material.Neon, 0.10000000149012, 1, "Toothpaste", "Handle", Vector3.new(1, 0.800000012, 1))
  BaseLaserweld = CreateWeld(m, Character["Left Arm"], BaseLaser, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.800000072, 3.57627869e-007, -1.43051352e-007, 4.68747942e-007, 0.999999881, 1.78813934e-007, -1, 4.68747771e-007, 5.66653569e-007, 5.66653512e-007, -1.78814176e-007, 1))
  CreateMesh("SpecialMesh", BaseLaser, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.800000012, 0.200000003))
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Model") then
      for _,c in pairs(v:GetChildren()) do
        if c:IsA("Part") then
          c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
        end
      end
    end
  end
  BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    if Type == 1 or Type == nil then
      table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
    else
      if Type == 2 then
        table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
      end
    end
    return prt
  end

  SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
    return prt
  end

  RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
    prt.Anchored = true
    prt.CFrame = cframe * CFrame.new(x1, y1, z1)
    local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
    return prt
  end

  CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
    return prt
  end

  WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
    return prt
  end

  SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
    return prt
  end

  BreakEffect = function(brickcolor, cframe, x1, y1, z1)
    local prt = CreatePart(Character, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
    prt.Anchored = true
    prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    local num = math.random(10, 50) / 1000
    game:GetService("Debris"):AddItem(prt, 10)
    table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
    return prt
  end

  ChargeEffect = function(part, x1, y1, z1, x2, y2, z2, x3, y3, z3, color)
    local S = Create("Part")({Material = "SmoothPlastic", Name = "Effect", formFactor = 0, Size = Vector3.new(x1, y1, z1), BrickColor = color, Reflectance = 0, TopSurface = 0, BottomSurface = 0, Transparency = 0, Anchored = false, CanCollide = false, Material = "Neon", CFrame = part.CFrame * cn(x2, y2, z2) * euler(x3, y3, z3), Parent = m})
    local msh1 = Create("SpecialMesh")({Scale = Vector3.new(0.5, 0.5, 0.5), MeshType = "Sphere", Parent = S})
    coroutine.resume(coroutine.create(function(Part, CF)
      local f = Instance.new("BodyPosition")
      f.P = 800
      f.D = 100
      f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      f.position = part.Position
      f.Parent = Part
      for i = 0, 1, 0.1 do
        wait()
        Part.Transparency = Part.Transparency + 0.1
      end
      Part.Parent = nil
    end
), S, S.CFrame)
  end

  attackone = function()
    attack = true
    CreateSound("http://www.roblox.com/asset/?id=442069814", LeftArm, 0.5, 1)
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 2, 4, 1, "Normal", RootPart, 0.2, 1)
    end
)
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(15)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(0.5, 0.4, -0.5) * angles(math.rad(83), math.rad(0), math.rad(-40)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.2, -0.4) * angles(math.rad(88), math.rad(0), math.rad(0)), 0.33)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(12), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(10), math.rad(0)), 0.33)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    for i = 0, 1, 0.13 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.1) * angles(math.rad(85), math.rad(0), math.rad(-60)), 0.33)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.33)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.33)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.33)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    CreateSound("http://www.roblox.com/asset/?id=356425259", LeftArm, 1, 2)
    CreateSound("http://www.roblox.com/asset/?id=412756170", LeftArm, 1, 0.8)
    for i = 0, 1, 0.05 do
      swait()
      SMnrgRng.Transparency = 1 - i
      if SMnrgRng.Transparency <= 0.4 then
        SMnrgRng.Transparency = 0.5
      end
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.1) * angles(math.rad(85), math.rad(0), math.rad(-60)), 0.33)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.33)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.33)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.33)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.005), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.005), 0.33)
    end
    SMnrgRng.Transparency = 1
    con:disconnect()
    attack = false
  end

  attacktwo = function()
    attack = true
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 3, 7, math.random(2, 3), "Normal", RootPart, 0.2, 1)
    end
)
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.7) * angles(math.rad(85), math.rad(-20), math.rad(15)), 0.33)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.33)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    CreateSound("http://www.roblox.com/asset/?id=356215636", LeftArm, 1, 1)
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.35)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.35)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.35)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.1) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 0.35)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.35)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.35)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    con:disconnect()
    attack = false
  end

  attackthree = function()
    attack = true
    CreateSound("http://www.roblox.com/asset/?id=356425259", SMnrgRng, 1, 1)
    for i = 0, 1, 0.03 do
      do
        swait()
        coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Handle" then
          if v.Transparency <= 0.3 then
            v.Transparency = 0
          else
            v.Transparency = 1 - i - 0.2
          end
        end
      end
    end
))
        LGnrgRng.Transparency = 1 - i
        if LGnrgRng.Transparency <= 0.4 then
          LGnrgRng.Transparency = 0.5
        end
        SMnrgRng.Transparency = 1 - i
        if SMnrgRng.Transparency <= 0.4 then
          SMnrgRng.Transparency = 0.5
        end
        BlockEffect("Toothpaste", LeftArm.CFrame * CFrame.new(0, -1, 0), 0.5, 0.5, 0.5, 0.8, 0.8, 0.8, 0.05, 1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.33)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), 0.33)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.33)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.1) * angles(math.rad(85), math.rad(0), math.rad(-60)), 0.33)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(40), math.rad(0)), 0.33)
        LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
        LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
        LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
        RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.03), 0.33)
        RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, -5, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.33)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      end
    end
    CreateSound("http://roblox.com/asset/?id=315744661", LGnrgRng, 1, 1)
    CreateSound("http://www.roblox.com/asset/?id=300916014", LGnrgRng, 1, 1)
    RootPart.Velocity = RootPart.CFrame.lookVector * -70
    SphereEffect("Toothpaste", LeftArm.CFrame * CFrame.new(0, -3, 0), 0.5, 0.5, 0.5, 0.8, 0.8, 0.8, 0.05)
    MagniDamage(LGnrgRng, 8, 6, 16, 100, "Normal")
    for i = 1, 10 do
      BreakEffect("Toothpaste", LeftArm.CFrame * CFrame.new(0, -1, 0), 1, 3, 2)
    end
    for i = 0, 1, 0.13 do
      swait()
      coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v:IsA("BasePart") then
          v.Transparency = i
        end
      end
    end
))
      LGnrgRng.Transparency = i
      SMnrgRng.Transparency = i
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-4), math.rad(0), math.rad(40)), 0.33)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-5), math.rad(-40)), 0.33)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.33)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.1) * angles(math.rad(120), math.rad(0), math.rad(30)), 0.33)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-10), math.rad(-40), math.rad(5)), 0.33)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-10), math.rad(-40), math.rad(-5)), 0.33)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v:IsA("BasePart") then
          v.Transparency = 1
        end
      end
    end
))
    LGnrgRng.Transparency = 1
    SMnrgRng.Transparency = 1
    attack = false
  end

  Block = function()
    attack = true
    block.Value = true
    Humanoid.WalkSpeed = Humanoid.WalkSpeed - 6
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.05 do
        wait()
        if attack ~= false then
          for _,v in pairs(shield:getChildren()) do
            if v:IsA("BasePart") and v.Name ~= "Handle" and v.Name ~= "Blocker" then
              v.Transparency = i - 0.05
            end
          end
        else
          do
            do
              for _,v in pairs(shield:getChildren()) do
                if v:IsA("BasePart") and v.Name ~= "Handle" and v.Name ~= "Blocker" then
                  v.Transparency = 1
                end
              end
              do break end
            end
          end
        end
      end
    end
))
    coroutine.resume(coroutine.create(function()
      wait(0.3)
      Blocker.CanCollide = true
    end
))
    coroutine.resume(coroutine.create(function()
      while Blocking == true do
        swait(2)
        subtractMana(blockDrainRate)
        if Mana <= blockDrainRate then
          Blocking = false
        end
      end
    end
))
    while Blocking == true do
      while Blocking == true do
        swait()
        if Blocking == true then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.33)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.33)
          RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -0.4) * angles(math.rad(90), math.rad(0), math.rad(-32)), 0.33)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(20), math.rad(15), math.rad(-70)), 0.3)
          if Torsovelocity > 2 then
            RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(20 * math.cos(sine / 4))), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(20 * math.cos(sine / 4))), 0.3)
          else
            if Torsovelocity < 1 then
              RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(-30), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(-30), math.rad(0)), 0.3)
            end
          end
          LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
          LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
          LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
          RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
          RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
          Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
        end
      end
      if Blocking == false then
        break
      end
    end
    coroutine.resume(coroutine.create(function()
      for _,v in pairs(shield:getChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Handle" then
          v.Transparency = 1
        end
      end
    end
))
    Humanoid.WalkSpeed = Humanoid.WalkSpeed + 6
    block.Value = false
    Blocker.CanCollide = false
    attack = false
  end

  groundBreaker = function()
    attack = true
    Humanoid.WalkSpeed = 0
    local AntiJump = Humanoid.Changed:connect(function()
      Humanoid.Jump = false
    end
)
    CreateSound("http://www.roblox.com/asset/?id=412756170", LeftArm, 1, 0.8)
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.8) * angles(math.rad(40), math.rad(0), math.rad(-10)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(18)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(8)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.2, 0.3) * angles(math.rad(40), math.rad(0), math.rad(-10)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -0.2, -0.3) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -0.6, -0.25) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), 0.3)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.2) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.005), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    MagniDamage(Torso, 10, 20, 30, 70, "Knockdown")
    for i = 1, 10 do
      BreakEffect("Toothpaste", LeftArm.CFrame * CFrame.new(0, -1, 0), 1, 3, 2)
    end
    local hitfloor = nil
    while hitfloor == nil do
      swait()
      hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
    end
    local hit, pos = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if hit ~= nil then
      local Color = hit.BrickColor
      local refpart = CreatePart(Character, "SmoothPlastic", 0, 1, "Really black", "Effect", Vector3.new())
      refpart.Anchored = true
      refpart.CFrame = CFrame.new(pos)
      game:GetService("Debris"):AddItem(refpart, 1)
      CreateSound("http://www.roblox.com/asset/?id=199145477", refpart, 0.8, 0.75)
      CreateSound("http://www.roblox.com/asset/?id=142070127", refpart, 0.7, 0.9)
      for i = 1, 10 do
        local Color = hit.BrickColor
        local Materials = hit.Material
        local groundpart = CreatePart(Character, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(50, 100) / 100, math.random(50, 100) / 100, math.random(50, 100) / 100))
        groundpart.Anchored = false
        groundpart.Material = Materials
        groundpart.CanCollide = true
        groundpart.Friction = 0.1
        groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
        groundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 10)
      end
      for i = 1, 10 do
        local Color = hit.BrickColor
        local Materials = hit.Material
        local actualgroundpart = CreatePart(Character, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
        actualgroundpart.Anchored = true
        actualgroundpart.Material = Materials
        actualgroundpart.Friction = 1
        actualgroundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(actualgroundpart, 10)
      end
      WaveEffect(hit.BrickColor, refpart.CFrame, 0.2, 0.2, 0.2, 0.5, 0.5, 0.5, 0.04)
      SphereEffect(hit.BrickColor, refpart.CFrame, 0.2, 0.2, 0.2, 3, 3, 3, 0.04)
      RingEffect(hit.BrickColor, refpart.CFrame * CFrame.Angles(math.random(5, 6), math.random(2, 7), math.random(3, 6)), 0.2, 0.2, 0.2, 1, 1, 1, 0.05)
    end
    do
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.65) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.6, 0.4, 0) * angles(math.rad(-15), math.rad(0), math.rad(30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(-30), math.rad(-30)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -0.2, -0.3) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.6, -0.25) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(3)), 0.3)
        LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
        LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
        LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
        RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
        RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      end
      Humanoid.WalkSpeed = 16
      AntiJump:disconnect()
      attack = false
    end
  end

  LaunchRail = function()
    attack = true
    local blocked = false
    local hitPlayer = false
    CreateSound("http://www.roblox.com/asset/?id=298660207", LeftArm, 1, 1)
    Aim()
    CreateSound("http://www.roblox.com/asset/?id=188590169", LeftArm, 1, 1)
    local MainPos = LeftArm.Position
    local MainPos2 = mouse.Hit.p
    local spread = Vector3.new((math.random(-0, -0) + math.random()) * -0, (math.random(-0, -0) + math.random()) * -0, (math.random(-0, -0) + math.random()) * -0) * (LeftArm.Position - mouse.Hit.p).magnitude / 100
    local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
    num = math.huge
    coroutine.resume(coroutine.create(function(Spreaded)
      repeat
        wait()
        local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RootPart.Parent)
        local TheHit = mouse.Hit.p
        local mag = (MainPos - pos).magnitude
        CylinderEffect("Toothpaste", CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 0, 1.5, 0.1)
        MainPos = MainPos + MouseLook.lookVector * 10
        num = num - 1
        local fakevec = pos - LeftArm.CFrame * CFrame.new(Vector3.new(0, 0.25, -1.7)).p.unit
        if hit ~= nil and hit.Name ~= "Rail" then
          print(hit)
          num = 0
          local ref = CreateWeaponPart(3, Character, "Neon", 0, 1, BrickColor.new("Institutional white"), "Reference", Vector3.new())
          do
            ref.Anchored = true
            ref.CFrame = cn(pos)
            game:GetService("Debris"):AddItem(ref, 5)
            local h = nil
            if hit.Parent:FindFirstChild("Humanoid") then
              h = hit.Parent:FindFirstChild("Humanoid")
            else
              if hit.Parent.Parent:FindFirstChild("Humanoid") then
                h = hit.Parent.Parent:FindFirstChild("Humanoid")
              else
                if hit.Parent.Parent:FindFirstChild("Parent") and hit.Parent.Parent.Parent:FindFirstChild("Humanoid") then
                  h = hit.Parent.Parent.Parent:FindFirstChild("Humanoid")
                end
              end
            end
            h = nil
            print(h)
            if h ~= nil and h.Health > 0 then
              if hit.Name == "Blocker" and hit.CanCollide == true then
                blocked = true
                CreateSound("http://www.roblox.com/asset/?id=199148947", hit, 1, 1)
              else
                hitPlayer = true
                h.WalkSpeed = h.WalkSpeed - 5
                coroutine.resume(coroutine.create(function()
        for i = 1, 10 do
          if h.Health > 0 then
            wait(1)
          end
        end
        for i = 0, 1, 0.1 do
          wait()
        end
        h.WalkSpeed = h.WalkSpeed + 5
      end
))
              end
            end
            if blocked == false then
              if hit.Name == "Blocker" and hit.CanCollide == true then
                CreateSound("http://www.roblox.com/asset/?id=199148947", hit, 1, 1)
              else
                if not hit.Anchored then
                  hit.CFrame = hit.CFrame + Vector3.new(0, 0.1, 0)
                end
                if hitPlayer == false then
                end
                if not hit.Anchored then
                  do
                    hit.Velocity = hit.Velocity + fakevec * 50
                  end
                end
              end
            end
          end
        else
        end
      until num <= 0
    end
))
    for i = -0, 1, 0.05 do
      do
        coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Handle" then
          v.Transparency = i
        end
      end
    end
))
        LGnrgRng.Transparency = i + 0.05
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(-0, -0, -0) * angles(math.rad(-0), math.rad(-0), math.rad(-50)), 0.5)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-0), math.rad(-0), math.rad(50)), 0.5)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0) * angles(math.rad(-10), math.rad(-0), math.rad(20)), 0.5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0) * angles(math.rad(90), math.rad(-0), math.rad(-50)), 0.5)
        RH.C0 = clerp(RH.C0, cn(0.5, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(85), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-0.5, -1, 0.2) * LHCF * angles(math.rad(-2), math.rad(85), math.rad(-0)), 0.3)
        LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(-0, -0, -0) * angles(math.rad(-0), math.rad(30) - donum / 0.08, math.rad(-0)), 0.3)
        LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(-0, -0, -0) * angles(math.rad(-0), math.rad(30) + donum / 0.05, math.rad(-0)), 0.3)
        LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(-0, -0, -0) * angles(math.rad(-0), math.rad(30) - donum / 0.03, math.rad(-0)), 0.3)
        RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(-0, -0, -1.5) * angles(math.rad(-0), math.rad(-0), math.rad(30) - donum / 0.045), 0.33)
        RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(-0, -2.5, -0) * angles(math.rad(-0), math.rad(30) + donum / 0.07, math.rad(-0)), 0.33)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(-0, -0, -0) * angles(math.rad(-0), math.rad(-0), math.rad(-0)), 0.33)
      end
    end
    game:GetService("Debris"):AddItem(railM, 15)
    Humanoid.WalkSpeed = Humanoid.WalkSpeed + 10
    SMnrgRng.Transparency = 1
    LGnrgRng.Transparency = 1
    for _,v in pairs(rearRotor:getChildren()) do
      coroutine.resume(coroutine.create(function()
      if v:IsA("BasePart") and v.Name ~= "Handle" then
        v.Transparency = 1
      end
    end
))
    end
    cooldown3 = -0
    attack = false
  end

  Pulse = function()
    attack = true
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 1, 3, 1, "Normal", RootPart, 0.2, 1)
    end
)
    CreateSound("http://www.roblox.com/asset/?id=412756170", LeftArm, 1, 0.8)
    for i = 0, 1, 0.05 do
      swait()
      SMnrgRng.Transparency = 1 - i
      if SMnrgRng.Transparency <= 0.4 then
        SMnrgRng.Transparency = 0.5
      end
      BlockEffect("Toothpaste", LeftArm.CFrame * CFrame.new(0, -1, 0), 0.5, 0.5, 0.5, 0.8, 0.8, 0.8, 0.05, 1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(15), math.rad(0), math.rad(-50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(-40)), 0.3)
      RH.C0 = clerp(RH.C0, cn(0.7, -1, -0.7) * RHCF * angles(math.rad(-4), math.rad(40), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-0.7, -1, 0.7) * LHCF * angles(math.rad(-4), math.rad(40), math.rad(20)), 0.3)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.005), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    con:disconnect()
    local vel2 = Instance.new("BodyVelocity")
    vel2.Parent = Torso
    vel2.maxForce = Vector3.new(400000, 400000, 400000) * 1
    vel2.velocity = RootPart.CFrame.lookVector * -90
    Humanoid.Jump = true
    local prt = CreatePart(Character, "SmoothPlastic", 0, 1, "Toothpaste", "Part", Vector3.new(5, 5, 5))
    prt.Position = SMnrgRng.Position
    prt.Anchored = true
    CreateSound("http://www.roblox.com/asset/?id=300916105", prt, 1, 1)
    WaveEffect("Toothpaste", prt.CFrame, 0.2, 0.2, 0.2, 0.5, 0.5, 0.5, 0.06)
    SphereEffect("Toothpaste", prt.CFrame, 0.2, 0.2, 0.2, 3, 3, 3, 0.06)
    RingEffect("Toothpaste", prt.CFrame * CFrame.Angles(math.random(5, 6), math.random(2, 7), math.random(3, 6)), 0.2, 0.2, 0.2, 1, 1, 1, 0.07)
    MagniDamage(prt, 13, 17, 23, 13, "Knockdown")
    for i = 0, 1, 0.15 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(20), math.rad(-20)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-60), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-4), math.rad(10), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-4), math.rad(10), math.rad(20)), 0.3)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    vel2:Destroy()
    SMnrgRng.Transparency = 1
    prt:Destroy()
    attack = false
  end

  AimLaserMethod = function()
    attack = true
    CreateSound("http://www.roblox.com/asset/?id=445796756", LeftArm, 1, 1)
    Humanoid.WalkSpeed = Humanoid.WalkSpeed - 10
    local Beam = BaseLaser:Clone()
    Beam.Parent = m
    Beam.Name = "Laser"
    Beam.Mesh.Scale = Vector3.new(1, 1, 1)
    Beam.Anchored = true
    RootJoint.C0 = RootCF * cn(0, 0, 0) * euler(0, 0, -0.7005)
    local gyro = Create("BodyGyro")({Parent = RootPart, maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 2500, cframe = RootPart.CFrame})
    coroutine.resume(coroutine.create(function()
      for i = 1, 10, 0.1 do
        swait()
        ChargeEffect(SMnrgRng, 2, 2, 2, math.random(-10, 10), math.random(-10, 10), math.random(-10, 10), 0, 0, 0, BrickColor.new("Toothpaste"))
      end
    end
))
    for i = 0, 1, 0.008 do
      do
        swait()
        local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
        gyro.cframe = cn(Head.Position, gunpos)
        coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v.Name ~= "Handle" and v:IsA("BasePart") then
          if v.Transparency <= 0.3 then
            v.Transparency = 0
          else
            v.Transparency = 1 - i - 0.2
          end
        end
      end
      SMnrgRng.Transparency = 1 - i
      LGnrgRng.Transparency = 1 - i
      if i <= 0.4 then
        SMnrgRng.Transparency = 0.5
        LGnrgRng.Transparency = 0.5
      end
    end
))
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6, 0.4) * angles(math.rad(-15), math.rad(-50), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-40)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-4), math.rad(20), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-4), math.rad(20), math.rad(0)), 0.3)
        LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
        LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
        LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
        RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.025), 0.33)
        RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, -5, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.33)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      end
    end
    local dV = 1
    local offset = nil
    lapse = 0
    local hitRef = CreatePart(Character, "Neon", 0, 0.4, "Toothpaste", "Reference", Vector3.new())
    do
      CreateMesh("SpecialMesh", hitRef, "Sphere", "", Vector3.new(), Vector3.new(8, 8, 8))
      hitRef.Anchored = true
      local laserLoop = CreateSound("http://www.roblox.com/asset/?id=445796828", LeftArm, 1, 1, true)
      coroutine.resume(coroutine.create(function()
      while vHold == true do
        swait(3)
        subtractMana(skill4absorbrate)
        if Mana <= skill4absorbrate then
          vHold = false
        end
      end
    end
))
      while vHold==true do
        if vHold == true then
          swait()
          dV = dV + 10
          local StartPos = LeftArm.CFrame * CFrame.new(0, -1, 0)
          local MainPos = LeftArm.Position
          local MainPos2 = mouse.Hit.p
          local spread = Vector3.new((math.random(0, 0) + math.random()) * 0, (math.random(0, 0) + math.random()) * 0, (math.random(0, 0) + math.random()) * 0) * (LeftArm.Position - mouse.Hit.p).magnitude / 100
          local MouseLook = cn((MainPos + MainPos2) / 2, MainPos2 + spread)
          local hit, pos = rayCast(MainPos, MouseLook.lookVector, dV, Character)
          local TheHit = mouse.Hit.p
          local mag = (MainPos - pos).magnitude
          MainPos = MainPos + MouseLook.lookVector * 10
          if hit and hit.Name:lower() == "terrain" and not hit:IsA("BasePart") then
            hit:SetCell(pos.X, pos.Y + 2, pos.Z, 0, 0, 0)
          end
          hitRef.CFrame = StartPos * cn(0, -mag + 1, 0) * angles(0, 0, math.rad(90))
          local vary = math.random(5, 10) / 100
          do
            SphereEffect("Toothpaste", hitRef.CFrame, 8, 8, 8, 1, 1, 1, vary)
            BlockEffect("Toothpaste", hitRef.CFrame, 8, 8, 8, 0.8, 0.8, 0.8, vary, 1)
            if hit ~= nil then
              local h = nil
              if hit.Parent:FindFirstChild("Humanoid") then
                h = hit.Parent:FindFirstChild("Humanoid")
              else
                if hit.Parent.Parent:FindFirstChild("Humanoid") then
                  h = hit.Parent.Parent:FindFirstChild("Humanoid")
                else
                  if hit.Parent.Parent:FindFirstChild("Parent") and hit.Parent.Parent.Parent:FindFirstChild("Humanoid") then
                    h = hit.Parent.Parent.Parent:FindFirstChild("Humanoid")
                  end
                end
              end
              h = nil
              local sounds = {445796485, 445796549, 445796638}
              local rnd = math.random(1, #sounds)
              local hitSound = CreateSound("http://www.roblox.com/asset/?id=" .. sounds[rnd], hitRef, 1, 1)
              if h and h.Health > 0 then
                Damagefunc(hitRef, h, 2, 4, 0.7, "Normal", RootPart, 0.2, 1, nil, 2)
              end
              if hit.Anchored == false and h and h.Health <= 0 then
                local bv = Instance.new("BodyVelocity", hit)
                local hih = math.huge
                bv.maxForce = Vector3.new(hih, hih, hih)
                bv.velocity = Head.CFrame.lookVector * 100 + Vector3.new(0, -2, 0)
                spawn(function()
      wait()
      bv:Destroy()
    end
)
              end
              do
                local bv = Instance.new("BodyVelocity", hit)
                do
                  do
                    local hih = math.huge
                    bv.maxForce = Vector3.new(hih, hih, hih)
                    bv.velocity = Head.CFrame.lookVector * 100 + Vector3.new(0, -2, 0)
                    spawn(function()
      wait()
      bv:Destroy()
    end
)
                    mag = (MainPos - pos).magnitude
                    mag = (MainPos - pos).magnitude
                    Beam.Transparency = 0.4
                    lapse = lapse + 1
                    Beam.Mesh.Scale = Vector3.new(mag + 9, 2, 2)
                    Beam.CFrame = StartPos * cn(0, -mag / 2 - 4.5, 0) * angles(0, 0, math.rad(90))
                    local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
                    offset = (Torso.Position.y - mouse.Hit.p.y) / 40
                    local mag2 = (Torso.Position - mouse.Hit.p).magnitude / 80
                    offset = offset / mag2
                    gyro.cframe = cn(Head.Position, gunpos)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * euler(0, 0, 0.75), 0.3)
                    LW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * euler(offset, 0, 0), 0.5)
                    if Torsovelocity > 2 then
                      RH.C0 = clerp(RH.C0, cn(1, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(20), math.rad(15 * math.cos(sine / 6))), 0.3)
                      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(20), math.rad(15 * math.cos(sine / 6))), 0.3)
                    else
                      if Torsovelocity < 1 then
                        RH.C0 = clerp(RH.C0, cn(1, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(20), math.rad(0)), 0.3)
                        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(20), math.rad(0)), 0.3)
                      end
                    end
                    LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
                    LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
                    LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
                    RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.005), 0.33)
                    RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, -5, 0) * angles(math.rad(0), math.rad(30) + donum / 0.01, math.rad(0)), 0.33)
                    Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
                  end
                end
              end
            end
          end
        end
      end
      laserLoop:stop()
      laserLoop.Parent = nil
      CreateSound("http://www.roblox.com/asset/?id=445796907", LeftArm, 1, 1)
      for i = 0, 1, 0.05 do
        coroutine.resume(coroutine.create(function()
      for _,v in pairs(rearRotor:getChildren()) do
        if v:IsA("BasePart") and v.Name ~= "Handle" then
          if i >= 0.9 then
            v.Transparency = 1
          else
            v.Transparency = i
          end
        end
      end
    end
))
        if Beam.Transparency <= i and lapse > 1 then
          Beam.Transparency = i
          hitRef.Transparency = i
        end
        if lapse > 1 then
          Beam.Transparency = 0.4
          hitRef.Transparency = 0.4
        end
        LGnrgRng.Transparency = i + 0.05
        SMnrgRng.Transparency = i + 0.05
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.5)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.5)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.5)
        RH.C0 = clerp(RH.C0, cn(1, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(20), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(20), math.rad(0)), 0.3)
        LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
        LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
        LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
        RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) + donum / 0.045), 0.33)
        RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, -5, 0) * angles(math.rad(0), math.rad(30) - donum / 0.07, math.rad(0)), 0.33)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      end
      Beam.Parent = nil
      hitRef.Parent = nil
      Humanoid.WalkSpeed = Humanoid.WalkSpeed + 10
      gyro.Parent = nil
      LW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      LGnrgRng.Transparency = 1
      cooldown4 = 0
      attack = false
    end
  end

  Aim = function()
    Humanoid.WalkSpeed = Humanoid.WalkSpeed - 10
    for i = 0, 1, 0.2 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.5)
      RH.C0 = clerp(RH.C0, cn(0.5, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(85), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-0.5, -1, 0.2) * LHCF * angles(math.rad(-2), math.rad(85), math.rad(0)), 0.3)
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    aim = true
    RootJoint.C0 = RootCF * cn(0, 0, 0) * euler(0, 0, -1.57)
    local gyro = (Create("BodyGyro")({Parent = RootPart, maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, cframe = RootPart.CFrame}))
    local offset = nil
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.1 do
        swait()
print"a"
      end
    end
))
    coroutine.resume(coroutine.create(function()
      for i = 1, 0.5, -0.1 do
        SMnrgRng.Transparency = i
        LGnrgRng.Transparency = i
      end
    end
))
    coroutine.resume(coroutine.create(function()
      for i = 1, 0, -0.05 do
        wait()
        if attack ~= false then
          for _,v in pairs(rearRotor:getChildren()) do
            if v:IsA("BasePart") and v.Name ~= "Handle" then
              v.Transparency = i - 0.05
            end
          end
        else
          do
            do
              for _,v in pairs(rearRotor:getChildren()) do
                if v:IsA("BasePart") and v.Name ~= "Handle" then
                  v.Transparency = 1
                end
              end
              do break end
            end
          end
        end
      end
    end
))
    local aimLoop = CreateSound("http://www.roblox.com/asset/?id=141268701", LeftArm, 1, 1, true)
    while aim == true do
      swait()
      local gunpos = Vector3.new(mouse.Hit.p.x, Head.Position.Y, mouse.Hit.p.z)
      offset = (Torso.Position.y - mouse.Hit.p.y) / 40
      local mag = (Torso.Position - mouse.Hit.p).magnitude / 80
      offset = offset / mag
      gyro.cframe = cn(Head.Position, gunpos)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * euler(0, 0, 1.57), 0.3)
      LW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * euler(offset, 0, 0), 0.5)
      if Torsovelocity > 2 then
        RH.C0 = clerp(RH.C0, cn(0.5, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(85), math.rad(15 * math.cos(sine / 6))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-0.5, -1, 0.2) * LHCF * angles(math.rad(-2), math.rad(85), math.rad(15 * math.cos(sine / 6))), 0.3)
      else
        if Torsovelocity < 1 then
          RH.C0 = clerp(RH.C0, cn(0.5, -1, -0.2) * RHCF * angles(math.rad(-2), math.rad(85), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cn(-0.5, -1, 0.2) * LHCF * angles(math.rad(-2), math.rad(85), math.rad(0)), 0.3)
        end
      end
      LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.08, math.rad(0)), 0.3)
      LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.3)
      LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - donum / 0.03, math.rad(0)), 0.3)
      RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, -1.5) * angles(math.rad(0), math.rad(0), math.rad(30) - donum / 0.025), 0.33)
      RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, -5, 0) * angles(math.rad(0), math.rad(30) + donum / 0.05, math.rad(0)), 0.33)
      Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
    end
    do
      aimLoop:Stop()
      LW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * euler(0, 0, 0), 0.5)
      gyro:Destroy()
      rail:ClearAllChildren()
      offset = nil
      aimLoop:Destroy()
    end
  end

  subtractMana = function(k)
    if k <= Mana then
      Mana = Mana - k
    end
  end

  combo = 0
  mouse1d = function(mouse)
    if attack == true and aim == false then
      return 
    end
    if attack == true and aim == true then
      aim = false
      return 
    end
    hold = true
    if combo == 0 then
      combo = 1
      attackone()
    else
      if combo == 1 then
        combo = 2
        attacktwo()
      else
        if combo == 2 then
          combo = 0
          attackthree()
        end
      end
    end
    coroutine.resume(coroutine.create(function()
      for i = 1, 20 do
        if attack == false or block.Value == true then
          swait()
        end
      end
      do
        if attack == false or block.Value == true then
          combo = 0
        end
      end
    end
))
  end

  mouse1u = function(mouse)
    hold = false
  end

  buttonhold = false
  mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and k == "z" and co1 <= cooldown1 and skill1stam <= Mana then
      cooldown1 = 0
      subtractMana(skill1stam)
      groundBreaker()
    else
      if attack == false and k == "x" and co2 <= cooldown2 and skill2stam <= Mana then
        cooldown2 = 0
        subtractMana(skill2stam)
        Pulse()
      else
        if attack == false and k == "e" then
          Blocking = true
          Block()
        else
          if attack == false and k == "c" and co3 <= cooldown3 and skill3stam <= Mana then
            cooldown3 = 0
            subtractMana(skill3stam)
            LaunchRail()
          else
            if attack == false and k == "v" and co4 <= cooldown4 and skill4stam <= Mana then
              cooldown4 = 0
              subtractMana(skill4stam)
              vHold = true
              AimLaserMethod()
            end
          end
        end
      end
    end
  end
)
  mouse.KeyUp:connect(function(k)
    if attack == true and k == "e" and Blocking == true then
      Blocking = false
    end
    if attack == true and k == "v" and vHold == true then
      vHold = false
    end
  end
)
  mouse.Button1Down:connect(function()
    mouse1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    mouse1u(mouse)
  end
)
  numbb = 0
  datnumb = 0
  local Blink = 0
  local BlinkEff = false
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
    if Mana <= skill1stam then
      bar4.BackgroundColor3 = Color3.new(0.4078431372549, 0.4078431372549, 0.4078431372549)
    else
      bar4.BackgroundColor3 = skillcolorscheme
    end
    if Mana <= skill2stam then
      bar3.BackgroundColor3 = Color3.new(0.4078431372549, 0.4078431372549, 0.4078431372549)
    else
      bar3.BackgroundColor3 = skillcolorscheme
    end
    if Mana <= skill3stam then
      bar1.BackgroundColor3 = Color3.new(0.4078431372549, 0.4078431372549, 0.4078431372549)
    else
      bar1.BackgroundColor3 = skillcolorscheme
    end
    if Mana <= skill4stam then
      bar2.BackgroundColor3 = Color3.new(0.4078431372549, 0.4078431372549, 0.4078431372549)
    else
      bar2.BackgroundColor3 = skillcolorscheme
    end
    if Mana <= maxMana then
      Mana = Mana + recovermana / 30
    end
  end

  while wait() do
    swait()
    for i,v in pairs(Character:GetChildren()) do
      if v:IsA("Part") then
        v.Material = "SmoothPlastic"
      else
        if v:IsA("Hat") then
          v:WaitForChild("Handle").Material = "SmoothPlastic"
        end
      end
    end
    updateskills()
    healthcover:TweenSize(UDim2.new(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
    Manacover:TweenSize(UDim2.new(1 * (Mana / maxMana), 0, 1, 0), "Out", "Quad", 0.5)
    bar4:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
    bar3:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
    bar1:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
    bar2:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
    Blink = Blink + 0.55
    if 15 - 5 * (Humanoid.WalkSpeed / 16) <= Blink then
      Blink = 0
      if BlinkEff == true then
        BlinkEff = false
      else
        if BlinkEff == false then
          BlinkEff = true
        end
      end
    end
    Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    velocity = RootPart.Velocity.y
    sine = sine + change
    local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if 0.5 <= donum2 then
      handidle = true
    else
      if donum2 <= 0 then
        handidle = false
      end
    end
    if handidle == false then
      donum2 = donum2 + 0.003
    else
      donum2 = donum2 - 0.003
    end
    donum = donum + 0.003
    if equipped == true or equipped == false then
      if 1 < RootPart.Velocity.y and hit == nil then
        Anim = "Jump"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
          RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, -0.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-20)), 0.3)
          LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
          LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.08, math.rad(0)), 0.3)
          LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + (donum) / 0.05, math.rad(0)), 0.3)
          LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.03, math.rad(0)), 0.3)
          RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
          RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
          Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
        end
      else
        if RootPart.Velocity.y < -1 and hit == nil then
          Anim = "Fall"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
            RH.C0 = clerp(RH.C0, CFrame.new(1, -0.8, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
            LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
            LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.08, math.rad(0)), 0.3)
            LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + (donum) / 0.05, math.rad(0)), 0.3)
            LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.03, math.rad(0)), 0.3)
            RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
            RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
            Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
          end
        else
          if Torsovelocity < 1 and hit ~= nil then
            Anim = "Idle"
            if attack == false then
              change = 1
              Jumping = false
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.15 + 0.1 * math.cos((sine) / 15)) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-11), math.rad(-10), math.rad(15 + 5 * math.cos((sine) / 15))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25 - 3 * math.cos((sine) / 15)), math.rad(-20), math.rad(-45 - 3 * math.cos((sine) / 15))), 0.3)
              RH.C0 = clerp(RH.C0, cn(1.05, -0.8 - 0.1 * math.cos((sine) / 15), 0) * RHCF * angles(math.rad(-4 - 1 * math.cos((sine) / 35)), math.rad(15), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1.05, -0.8 - 0.1 * math.cos((sine) / 15), 0) * LHCF * angles(math.rad(-4 - 1 * math.cos((sine) / 35)), math.rad(15), math.rad(0)), 0.3)
              LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.08, math.rad(0)), 0.3)
              LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + (donum) / 0.05, math.rad(0)), 0.3)
              LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.03, math.rad(0)), 0.3)
              RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
              RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
              Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
            end
          else
            if 2 < Torsovelocity and hit ~= nil then
              Anim = "Walk"
              if attack == false then
                change = 3
                Jumping = false
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10 + 1 * math.cos((sine) / 15)), math.rad(0), math.rad(0 + 3 * math.cos((sine) / 15))), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 - 1 * math.cos((sine) / 15)), math.rad(0), math.rad(0 - 1 * math.cos((sine) / 15))), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.45 + 0.1 * math.cos((sine) / 13), 0.5, 0 - 0.1 * math.cos((sine) / 13)) * angles(math.sin(40) * math.cos((sine) / 13), math.rad(0), math.rad(10 + 1 * math.cos((sine) / 13))), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(10 + 1 * math.cos((sine) / 14)), math.rad(0), math.rad(-45 + 3 * math.cos((sine) / 14))), 0.3)
                RH.C0 = clerp(RH.C0, cn(1, -1, 0 - 0.5 * math.cos((sine) / 15) / 2) * RHCF * angles(math.rad(-4), math.rad(0), math.rad(40 * math.cos((sine) / 15))), 0.3)
                LH.C0 = clerp(LH.C0, cn(-1, -1, 0 + 0.5 * math.cos((sine) / 15) / 2) * LHCF * angles(math.rad(-4), math.rad(0), math.rad(40 * math.cos((sine) / 15))), 0.3)
                LRingShoulderWeld.C0 = clerp(LRingShoulderWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.08, math.rad(0)), 0.3)
                LRingMiddleWeld.C0 = clerp(LRingMiddleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) + (donum) / 0.05, math.rad(0)), 0.3)
                LRingHandWeld.C0 = clerp(LRingHandWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30) - (donum) / 0.03, math.rad(0)), 0.3)
                RotorHandleweld.C0 = clerp(RotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
                RearRotorHandleweld.C0 = clerp(RearRotorHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
                Hitboxweld.C0 = clerp(Hitboxweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.33)
              end
            end
          end
        end
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
            if Thing[1].Transparency <= 1 then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Block2" then
                  Thing[1].CFrame = Thing[1].CFrame
                  Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Cylinder" then
                    Mesh = Thing[1].Mesh
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Blood" then
                      Mesh = Thing[7]
                      Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Elec" then
                        Mesh = Thing[1].Mesh
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
            else
              Part.Parent = nil
              table.remove(Effects, e)
            end
          end
        end
      end
    end
    do
      do
        datnumb = 0
        BaseNumb = 6.28
        if attack == false then
          Blocker.CanCollide = false
        end
      end
    end
  end
