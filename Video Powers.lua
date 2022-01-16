  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
  plr = game.Players.LocalPlayer
  local CoreGui = game:GetService("StarterGui")
  CoreGui:SetCore("SendNotification", {
    Title = "READ ME!";
    Text = "THIS SCRIPT ONLY WORKS WITH SYN X AND SCRIPT WARE!";
    Duration = 10;
})
  chr = game.Workspace.non
  human = chr:FindFirstChild("Humanoid")
  mouse = plr:GetMouse()
  selected = false
  equipd = false
  tors = chr.Torso
  rarm = chr["Right Arm"]
  larm = chr["Left Arm"]
  rleg = chr["Right Leg"]
  lleg = chr["Left Leg"]
  hrp = chr.HumanoidRootPart
  head = chr.Head
  anim = human.Animator
  activu = false
  torrent = false
  boxingu = false
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  frame = 0.03333333333333333
  tf = 0
  game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
      for i = 1, math.floor(tf / frame) do
        Heartbeat:Fire()
      end
      tf = tf - frame * math.floor(tf / frame)
    end
  end)
  function swait(num)
    if num == 0 or num == nil then
      Heartbeat.Event:wait()
    else
      for i = 1, num do
        Heartbeat.Event:wait()
      end
    end
  end
  tool = Instance.new("Tool")
  
  tool.CanBeDropped = false
  tool.RequiresHandle = false
  tool.TextureId = "rbxassetid://37338767"
  tool.ToolTip = "hehe yea boi"
  tool.Name = "fir"
  tool.Parent = plr.Backpack
  modz = Instance.new("Model")
  modz.Name = "memes"
  modz.Parent = chr
  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RS = tors:FindFirstChild("Right Shoulder")
  LS = tors:FindFirstChild("Left Shoulder")
  RH = tors:FindFirstChild("Right Hip")
  LH = tors:FindFirstChild("Left Hip")
  RJ = hrp:FindFirstChild("RootJoint")
  N = tors:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random
  function nooutline(p)
    p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BottomSurface = 10, 10, 10, 10, 10, 10
  end
  function makepart(color, name, reflec, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    port.Transparency = 1
    nooutline(port)
    port.Reflectance = reflec
    port.Material = mater
    port.Anchored = false
    port.CanCollide = false
    port.Locked = true
    port.Size = Vector3.new(0.2, 0.2, 0.2)
    port.Parent = parnt
    return port
  end
  function makemesh(meshtype, scale, meshid, parent)
    local mes = Instance.new("SpecialMesh")
    mes.MeshType = meshtype
    mes.Scale = scale
    if meshtype == "FileMesh" then
      mes.MeshId = meshid
    end
    mes.Parent = parent
    return mes
  end
  function makeweld(parent, p0, p1, c0, c1)
    local wel = Instance.new("Weld")
    wel.Part0 = p0
    wel.Part1 = p1
    wel.C0 = c0
    if c1 ~= nil then
      wel.C1 = c1
    end
    wel.Parent = parent
    return wel
  end
  function vidp(prnt)
    local s = Instance.new("ParticleEmitter")
    s.Enabled = false
    s.LockedToPart = true
    s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    s.LightEmission = 0.6
    s.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.275, 0),
      NumberSequenceKeypoint.new(0.406, 0.762, 0),
      NumberSequenceKeypoint.new(0.433, 2.05, 0.75),
      NumberSequenceKeypoint.new(0.476, 0.625, 0),
      NumberSequenceKeypoint.new(1, 0.05, 0)
    })
    s.Texture = "rbxassetid://31270182"
    s.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.6, 0),
      NumberSequenceKeypoint.new(0.89, 0.6, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    s.Name = "vid"
    s.Lifetime = NumberRange.new(0.2)
    s.Rate = 25
    s.Speed = NumberRange.new(7, 10)
    s.VelocitySpread = 360
    s.Parent = prnt
    local s2 = Instance.new("ParticleEmitter")
    s2.Enabled = false
    s2.LockedToPart = false
    s2.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    s2.LightEmission = 0.6
    s2.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0, 0),
      NumberSequenceKeypoint.new(0.853, 0.125, 0.1),
      NumberSequenceKeypoint.new(1, 0, 0)
    })
    s2.Texture = "rbxassetid://31270182"
    s2.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.6, 0),
      NumberSequenceKeypoint.new(0.89, 0.6, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    s2.Name = "vid2"
    s2.Lifetime = NumberRange.new(0.5)
    s2.Rate = 150
    s2.Speed = NumberRange.new(2, 6)
    s2.VelocitySpread = 360
    s2.Parent = prnt
  end
  function glow(tz, paz, length)
    if tz.Parent:FindFirstChildOfClass("Humanoid") and paz.Transparency == 1 then
      do
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://221727606"
        s.Volume = 0.25
        s.Pitch = math.random(9, 11) / 10
        s.Parent = paz
        s:Play()
        local hmesh = Instance.new("SpecialMesh")
        hmesh.MeshType = "FileMesh"
        hmesh.MeshId = "NOSSIN"
        hmesh.Parent = paz.Parent
        paz.Transparency = 0.55
        paz.vid.Enabled = true
        paz.vid2.Enabled = true
        delay(length, function()
          paz.Transparency = 1
          paz.vid.Enabled = false
          paz.vid2.Enabled = false
          hmesh:Destroy()
          s:Destroy()
        end)
      end
    end
  end
  function makeglow()
    for _, p in pairs(chr:GetChildren()) do
      if p.ClassName == "Accessory" then
        do
          local h = p:FindFirstChildOfClass("Part")
          local nh = h:Clone()
          for _, n in ipairs(nh:GetChildren()) do
            if n.ClassName == "Attachment" or n.ClassName == "Motor6D" then
              n:Destroy()
            end
          end
          nooutline(nh)
          nh.Parent = nil
          nh.CFrame = h.CFrame
          nh.Transparency = 1
          nh.Name = "Glow"
          nh.Material = "Neon"
          nh.BrickColor = BrickColor.new("Teal")
          nh.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          nh.CanCollide = false
          nh.Parent = h
          makeweld(nh, nh, h, cf(0, 0, 0))
          local m = nh:FindFirstChildOfClass("SpecialMesh")
          m.Scale = m.Scale + Vector3.new(0.06, 0.06, 0.06)
          m.TextureId = ""
          vidp(nh)
          nh.Touched:connect(function(po)
            glow(po, nh, 0.8)
          end)
        end
      elseif p.ClassName == "Part" and p ~= hrp then
        do
          local n = p:Clone()
          for _, m in ipairs(n:GetChildren()) do
            if m.ClassName == "Attachment" or m.ClassName == "Motor6D" then
              m:Destroy()
            end
          end
          nooutline(n)
          n.Parent = nil
          n.Transparency = 1
          n.Material = "Neon"
          n.Name = "Glow"
          n.BrickColor = BrickColor.new("Teal")
          n.CFrame = p.CFrame
          n.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          n.CanCollide = false
          n.Parent = p
          makeweld(n, n, p, cf(0, 0, 0))
          vidp(n)
          n.Touched:connect(function(po)
            glow(po, n, 0.8)
          end)
          if n:FindFirstChildOfClass("Decal") then
            n:FindFirstChildOfClass("Decal"):Destroy()
          end
          if p:FindFirstChildOfClass("SpecialMesh") then
            local c = p:FindFirstChildOfClass("SpecialMesh"):Clone()
            c.Parent = nil
            c.Scale = c.Scale + Vector3.new(0.05, 0.05, 0.05)
            c.Parent = n
          else
            local m = Instance.new("BlockMesh")
            m.Scale = Vector3.new(1.05, 1.025, 1.05)
            if p == tors then
              m.Scale = Vector3.new(1.05, 1.05, 1.05)
            end
            m.Parent = n
          end
        end
      end
    end
  end
  makeglow()
  function lerpz(joint, prop, cfrmz, alp)
    joint[prop] = joint[prop]:lerp(cfrmz, alp)
  end
  lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  function resetlerp()
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
  end
  local ign = {chr}
  function proj(cframe)
    coroutine.resume(coroutine.create(function()
      local mis = Instance.new("Part")
      mis.Anchored = true
      mis.CanCollide = false
      mis.Size = Vector3.new(1, 1, 1)
      mis.Transparency = 1
      mis.Name = "pew"
      mis.CFrame = cframe
      mis.Parent = workspace
      local s = Instance.new("ParticleEmitter")
      s.Enabled = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.0241, 0.0625, 0),
        NumberSequenceKeypoint.new(0.0299, 0.66, 0.22),
        NumberSequenceKeypoint.new(0.0344, 0.0225, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.6, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(1)
      s.ZOffset = 0
      s.Rate = 3000
      s.Speed = NumberRange.new(25, 50)
      s.VelocitySpread = 20
      s.EmissionDirection = "Back"
      s.Parent = mis
      game.Debris:AddItem(mis, 10)
      table.insert(ign, mis)
      local wat = 0
      local derp = false
      local v = Instance.new("Sound")
      v.SoundId = "rbxassetid://221727606"
      v.Volume = 0.5
      v.Looped = true
      v.EmitterSize = 15
      v.MaxDistance = 40
      v.Pitch = math.random(12, 13) / 10
      v.Parent = mis
      v:Play()
      repeat
        swait()
        wat = wat + 1
        local ry = Ray.new(mis.Position, mis.CFrame.lookVector * 8)
        local prt, pos = workspace:FindPartOnRayWithIgnoreList(ry, ign, false, true)
        if prt and pos and 1 > prt.Transparency then
          derp = true
          mis.CFrame = CFrame.new(pos)
          v:Stop()
          s.Enabled = false
          s.Speed = NumberRange.new(15, 25)
          s.Lifetime = NumberRange.new(5)
          s.VelocitySpread = 360
          s:Emit(40)
          local n = Instance.new("Sound")
          n.Volume = 0.75
          n.Pitch = rd2(9, 11) / 10
          n.SoundId = "rbxassetid://184374162"
          n.Parent = mis
          n:Play()
          hito(mis, 300, 500000, 0.01)
        else
          mis.CFrame = mis.CFrame * CFrame.new(0, 0, -5)
        end
      until wat == 50 or derp == true
      if wat == 50 then
        mis:Destroy()
      end
      if derp == true then
        game.Debris:AddItem(mis, 1)
      end
    end))
  end
  function makesword(swocfrm, weldp1, cframe0)
    local ay = function(name, size, parnt, cfram)
      local port = Instance.new("Part")
      port.BrickColor = BrickColor.new("Teal")
      port.Name = name
      port.Transparency = 1
      nooutline(port)
      port.Material = "Neon"
      port.Anchored = false
      port.CanCollide = false
      port.Locked = true
      port.Size = size
      port.Parent = parnt
      return port
    end
    local swordmo = Instance.new("Model")
    swordmo.Name = "swod"
    swordmo.Parent = modz
    local booval = Instance.new("BoolValue")
    booval.Value = true
    booval.Name = "mememem"
    booval.Parent = swordmo
    local function pr(par, amt, sped)
      local s = Instance.new("ParticleEmitter")
      s.Enabled = false
      s.LockedToPart = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.15, 0),
        NumberSequenceKeypoint.new(0.05, 0.3, 0.3),
        NumberSequenceKeypoint.new(0.1, 0.15, 0),
        NumberSequenceKeypoint.new(0.8, 0.2, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7, 0),
        NumberSequenceKeypoint.new(0.89, 0.7, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(0.75)
      s.Rate = 1
      s.Speed = sped
      s.VelocitySpread = 3
      s.Parent = par
      coroutine.resume(coroutine.create(function()
        while booval.Value do
          swait()
          s:Emit(amt)
        end
      end))
      return s
    end
    local ping = function(derp)
      local s3 = Instance.new("ParticleEmitter")
      s3.Enabled = false
      s3.LockedToPart = false
      s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s3.LightEmission = 0.6
      s3.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.35, 0),
        NumberSequenceKeypoint.new(0.2, 0.25, 0.25),
        NumberSequenceKeypoint.new(0.4, 0.15, 0),
        NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s3.Texture = "rbxassetid://31270182"
      s3.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s3.Name = "vid3"
      s3.Lifetime = NumberRange.new(0.5)
      s3.Acceleration = Vector3.new(0, 5, 0)
      s3.Rate = 350
      s3.Speed = NumberRange.new(10, 15)
      s3.VelocitySpread = 360
      s3.Parent = derp
      swait()
      s3:Emit(120)
    end
    local b1 = ay("b1", Vector3.new(0.3, 2.5, 0.3), swordmo, swocfrm)
    local p1 = pr(b1, 5, NumberRange.new(0, 1))
    if weldp1 then
      local w1 = makeweld(b1, b1, weldp1, cframe0, nil)
    end
    local bla = Instance.new("Sound")
    bla.SoundId = "rbxassetid://61425219"
    bla.Volume = 0.75
    bla.Pitch = math.random(7, 9) / 10
    bla.Parent = b1
    bla:Play()
    local b2 = ay("b2", Vector3.new(0.6, 0.75, 0.4), swordmo, swocfrm)
    local p2 = pr(b2, 1, NumberRange.new(0, 1))
    local w2 = makeweld(b2, b2, b1, ang(rd(180), rd(0), rd(0)) * cf(0, 1.5, 0), nil)
    local b3 = ay("b3", Vector3.new(0.7, 0.75, 0.5), swordmo, swocfrm)
    local p3 = pr(b3, 1, NumberRange.new(0, 3))
    local w3 = makeweld(b3, b3, b1, ang(rd(180), rd(90), rd(0)) * cf(0, -1.5, 0), nil)
    local b4 = ay("b4", Vector3.new(0.3, 0.75, 0.3), swordmo, swocfrm)
    local p4 = pr(b4, 1, NumberRange.new(1, 2))
    local w4 = makeweld(b4, b4, b3, cf(0, -0.5, 0) * ang(rd(70), rd(0), rd(0)), nil)
    local b5 = ay("b5", Vector3.new(0.3, 0.75, 0.3), swordmo, swocfrm)
    local p5 = pr(b5, 1, NumberRange.new(1, 2))
    local w5 = makeweld(b5, b5, b3, cf(0, -0.5, 0) * ang(rd(290), rd(0), rd(0)), nil)
    local b6 = ay("b6", Vector3.new(0.3, 0.5, 0.3), swordmo, swocfrm)
    local p6 = pr(b6, 1, NumberRange.new(1, 2))
    local w6 = makeweld(b6, b6, b3, cf(0, -0.25, 0) * ang(rd(35), rd(0), rd(0)), nil)
    local b7 = ay("b7", Vector3.new(0.3, 0.5, 0.3), swordmo, swocfrm)
    local p7 = pr(b7, 1, NumberRange.new(1, 2))
    local w7 = makeweld(b7, b7, b3, cf(0, -0.25, 0) * ang(rd(325), rd(0), rd(0)), nil)
    local b8 = ay("b8", Vector3.new(0.5, 5.5, 0.2), swordmo, swocfrm)
    local p8 = pr(b8, 9, NumberRange.new(1, 3))
    local w8 = makeweld(b8, b8, b1, ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), nil)
    local anbo = Instance.new("Part")
    anbo.Anchored = true
    anbo.CanCollide = false
    anbo.Size = Vector3.new(2.5, 9, 1)
    anbo.CFrame = b8.CFrame * cf(0, -1.5, 0)
    anbo.Transparency = 1
    anbo.Parent = workspace
    game.Debris:AddItem(anbo, 2)
    ping(anbo)
    local whos = Instance.new("ParticleEmitter")
    whos.Enabled = false
    whos.LockedToPart = false
    whos.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    whos.LightEmission = 0.6
    whos.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.15, 0),
      NumberSequenceKeypoint.new(0.05, 0.3, 0.3),
      NumberSequenceKeypoint.new(0.1, 0.15, 0),
      NumberSequenceKeypoint.new(0.8, 0.2, 0),
      NumberSequenceKeypoint.new(1, 0, 0)
    })
    whos.Texture = "rbxassetid://31270182"
    whos.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.7, 0),
      NumberSequenceKeypoint.new(0.89, 0.7, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    whos.Name = "whoos"
    whos.Lifetime = NumberRange.new(0.75)
    whos.Rate = 2000
    whos.Speed = NumberRange.new(0)
    whos.VelocityInheritance = 0.8
    whos.VelocitySpread = 3
    whos.Parent = b8
    return swordmo
  end
  function removesword(swordmodel)
    swordmodel.mememem.Value = false
    local hn = swordmodel.b1
    hn.Anchored = true
    if hn:FindFirstChildOfClass("Weld") then
      hn:FindFirstChildOfClass("Weld"):Destroy()
    end
    local bla = Instance.new("Sound")
    bla.SoundId = "rbxassetid://192783601"
    bla.Volume = 1.25
    bla.Pitch = math.random(9, 10) / 10
    bla.Parent = hn
    bla:Play()
    local ping = function(derp)
      local s3 = Instance.new("ParticleEmitter")
      s3.Enabled = false
      s3.LockedToPart = false
      s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s3.LightEmission = 0.6
      s3.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.35, 0),
        NumberSequenceKeypoint.new(0.2, 0.25, 0.25),
        NumberSequenceKeypoint.new(0.4, 0.15, 0),
        NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s3.Texture = "rbxassetid://31270182"
      s3.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s3.Name = "vid3"
      s3.Lifetime = NumberRange.new(0.5)
      s3.Acceleration = Vector3.new(0, 5, 0)
      s3.Rate = 350
      s3.Speed = NumberRange.new(10, 15)
      s3.VelocitySpread = 360
      s3.Parent = derp
      swait()
      s3:Emit(180)
    end
    local anbo = Instance.new("Part")
    anbo.Anchored = true
    anbo.CanCollide = false
    anbo.Size = Vector3.new(2.5, 9, 1)
    anbo.CFrame = swordmodel.b8.CFrame * cf(0, -1.5, 0)
    anbo.Transparency = 1
    anbo.Parent = workspace
    game.Debris:AddItem(anbo, 2)
    ping(anbo)
    game.Debris:AddItem(swordmodel, 1.25)
  end
  function eswing()
    if activu == true or selected == false then
      return
    end
    activu = true
    local sw = makesword(hrp.CFrame, rarm, ang(rd(90), rd(0), rd(90)) * cf(0, 1, 0.5))
    animo(false)
    local hwel = sw.b1:FindFirstChildOfClass("Weld")
    local hwelc0 = hwel.C0
    local whoo = sw.b8:FindFirstChild("whoos")
    for _ = 1, 12 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0.75, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(-6), rd(70)), 0.5)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(-13), rd(0), rd(0)), 0.5)
      lerpz(RS, "C0", RSC0 * cf(0.3, 0.25, 0.55) * ang(rd(-30), rd(-70), rd(15)), 0.5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(0)), 0.5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(10), rd(5), rd(10)), 0.5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(RH, "C0", RHC0 * cf(0.45, 0.05, -0.15) * ang(rd(-5), rd(60), rd(0)), 0.5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LH, "C0", LHC0 * cf(0.45, 0.05, -0.35) * ang(rd(-5), rd(75), rd(0)), 0.5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      hwel.C0 = hwel.C0:lerp(cf(-0.25, 0.25, 0) * ang(rd(0), rd(0), rd(40)) * hwelc0, 0.5)
    end
    for c = 1, 3 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, -0.25, 0) * ang(rd(0), rd(0), rd(10)), 0.1 + c / 5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(-10)), 0.1 + c / 5)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(RS, "C0", RSC0 * cf(-0.2, 0.35, 0.9) * ang(rd(-20), rd(170), rd(15)), 0.1 + c / 5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(5), rd(10)), 0.1 + c / 5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(1)), 0.1 + c / 5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(-1)), 0.1 + c / 5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      hwel.C0 = hwel.C0:lerp(cf(-0.15, 0.15, 0) * ang(rd(0), rd(0), rd(10)) * hwelc0, 0.1 + c / 5)
    end
    whoo.Enabled = true
    for _ = 1, 14 do
      swait()
      hito(sw.b8, 3, 35, 0.8)
      lerpz(RJ, "C0", RJC0 * cf(0, -0.75, 0) * ang(rd(0), rd(0), rd(60)), 0.6)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-40)), 0.6)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(RS, "C0", RSC0 * cf(-0.1, 0.65, 0.9) * ang(rd(-15), rd(135), rd(-165)), 0.6)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-30), rd(5), rd(10)), 0.6)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(RH, "C0", RHC0 * cf(-0.25, 0, 0) * ang(rd(-5), rd(-50), rd(1)), 0.6)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(-1)), 0.6)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      hwel.C0 = hwel.C0:lerp(cf(-0.25, 0.25, 0) * ang(rd(0), rd(0), rd(40)) * hwelc0, 0.6)
    end
    whoo.Enabled = false
    removesword(sw)
    animo(true)
    for _ = 1, 10 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    resetlerp()
    activu = false
  end
  function torentmod()
    if selected == false or activu == true then
      return
    end
    if torrent == false then
      torrent = true
      do
        local viarm = Instance.new("Part")
        nooutline(viarm)
        viarm.CanCollide = false
        viarm.Transparency = 1
        viarm.Name = "shootingu"
        viarm.Size = Vector3.new(1.25, 1, 1.25)
        viarm.CFrame = rarm.CFrame
        viarm.Parent = modz
        makeweld(viarm, viarm, rarm, cf(0, 1, 0))
        s = Instance.new("ParticleEmitter")
        s.Enabled = true
        s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s.LightEmission = 0.6
        s.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.0241, 0.0925, 0),
          NumberSequenceKeypoint.new(0.0299, 0.56, 0.25),
          NumberSequenceKeypoint.new(0.0344, 0.0925, 0),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s.Texture = "rbxassetid://31270182"
        s.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s.Name = "vid"
        s.Acceleration = viarm.CFrame.upVector * 5
        s.Lifetime = NumberRange.new(1)
        s.ZOffset = 1
        s.Rate = 1250
        s.Speed = NumberRange.new(2, 3)
        s.VelocitySpread = 180
        s.Parent = viarm
        coroutine.resume(coroutine.create(function()
          while s do
            swait()
            s.Acceleration = viarm.CFrame.upVector * 6
          end
        end))
        coroutine.resume(coroutine.create(function()
          while torrent == true do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
          end
        end))
        local shootinz = false
        hd = tool.Activated:connect(function()
          shootinz = true
          repeat
            swait(3)
            lerpz(RS, "C0", RSC0 * cf(rd2(-3, -1) / 10, 0, 0) * ang(rd(rd2(-5, 5)), rd(rd2(-5, 5)), rd(rd2(95, 105))), 0.8)
            proj(CFrame.new(viarm.Position, mouse.Hit.p + Vector3.new(rd2(-1, 1), rd2(-1, 1), 0)))
            local sd = Instance.new("Sound")
            sd.Volume = 0.3
            sd.Pitch = rd2(11, 13) / 10
            sd.SoundId = "rbxassetid://221727606"
            sd.Parent = viarm
            local sd2 = sd:Clone()
            sd2.SoundId = "rbxassetid://238381567"
            sd2.Parent = viarm
            sd:Play()
            sd2:Play()
            game.Debris:AddItem(sd, 1)
            game.Debris:AddItem(sd2, 1)
          until shootinz == false or torrent == false
        end)
        hu = tool.Deactivated:connect(function()
          shootinz = false
        end)
      end
    elseif torrent == true then
      hd:Disconnect()
      hu:Disconnect()
      torrent = false
      modz:FindFirstChild("shootingu"):FindFirstChild("vid").Enabled = false
      for _ = 1, 10 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      end
      resetlerp()
      modz:FindFirstChild("shootingu"):Destroy()
    end
  end
  function suprfast()
    if selected == false or activu == true then
      return
    end
    activu = true
    human.WalkSpeed = human.WalkSpeed + 30
    human.JumpPower = human.JumpPower + 45
    for _, d in ipairs(chr:GetChildren()) do
      if d.ClassName == "Accessory" then
        swait()
        glow(hrp, d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"), 2)
        coroutine.resume(coroutine.create(function()
          local clones = {}
          for i = 1, 5 do
            local v = d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"):Clone()
            v.Name = "nyoo"
            v.vid:Destroy()
            v.vid2:Destroy()
            v.AccessoryWeld:Destroy()
            v.Weld:Destroy()
            v.Transparency = 0.9
            v.Anchored = true
            v.Parent = modz
            table.insert(clones, v)
          end
          num = 0
          repeat
            swait()
            num = num % 5 + 1
            clones[num].CFrame = d:FindFirstChildOfClass("Part"):FindFirstChild("Glow").CFrame
          until activu == false
          for _, b in ipairs(clones) do
            swait()
            b:Destroy()
          end
        end))
      elseif d.ClassName == "Part" and d ~= hrp then
        swait()
        glow(hrp, d:FindFirstChild("Glow"), 2)
        coroutine.resume(coroutine.create(function()
          local clones = {}
          for i = 1, 5 do
            local v = d:FindFirstChild("Glow"):Clone()
            v.Name = "lel"
            v.vid:Destroy()
            v.vid2:Destroy()
            v.Weld:Destroy()
            v.Transparency = 0.9
            v.Anchored = true
            v.Parent = modz
            table.insert(clones, v)
          end
          num = 0
          repeat
            swait()
            num = num % 5 + 1
            clones[num].CFrame = d:FindFirstChild("Glow").CFrame
          until activu == false
          for _, b in ipairs(clones) do
            swait()
            b:Destroy()
          end
        end))
      end
    end
    wait(2)
    activu = false
    human.WalkSpeed = human.WalkSpeed - 30
    human.JumpPower = human.JumpPower - 45
  end
  function fly()
    if selected == false or activu == true or torrent == true then
      return
    end
    local memedon = {}
    activu = true
    local emi = true
    local mp = Instance.new("Part")
    mp.Size = Vector3.new(0.2, 0.2, 0.2)
    mp.CanCollide = false
    mp.Transparency = 1
    mp.Parent = modz
    table.insert(memedon, mp)
    makeweld(mp, mp, tors, ang(rd(-30), rd(0), rd(0)) * CFrame.new(0, -0.5, -0.5), nil)
    local function pr(par, amt)
      local s = Instance.new("ParticleEmitter")
      s.Enabled = false
      s.LockedToPart = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.3, 0),
        NumberSequenceKeypoint.new(0.8, 0.3, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7, 0),
        NumberSequenceKeypoint.new(0.89, 0.7, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(0.75)
      s.Rate = 1
      s.Speed = NumberRange.new(10, 15)
      s.VelocitySpread = 3
      s.Parent = par
      coroutine.resume(coroutine.create(function()
        while emi do
          swait()
          s:Emit(amt)
        end
      end))
      return s
    end
    for _, d in ipairs(chr:GetChildren()) do
      if d.ClassName == "Accessory" then
        glow(hrp, d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"), 1.5)
      elseif d.ClassName == "Part" and d ~= hrp then
        glow(hrp, d:FindFirstChild("Glow"), 1.5)
      end
    end
    local f1 = makepart("Teal", "w1", 1, "Neon", modz, hrp.CFrame)
    f1.Size = Vector3.new(0.4, 0.4, 0.4)
    local p1 = pr(f1, 12)
    p1.Acceleration = Vector3.new(-15, 0, 15)
    local w1 = makeweld(f1, f1, mp, CFrame.Angles(rd(-5), rd(10), rd(-50)) * CFrame.new(0.25, 0, 0), nil)
    local f2 = makepart("Teal", "w2", 1, "Neon", modz, hrp.CFrame)
    f2.Size = Vector3.new(0.4, 0.4, 0.4)
    local p2 = pr(f2, 12)
    p2.Acceleration = Vector3.new(15, 0, 15)
    local w2 = makeweld(f2, f2, mp, CFrame.Angles(rd(-5), rd(-10), rd(50)) * CFrame.new(-0.25, 0, 0), nil)
    local f3 = makepart("Teal", "w3", 1, "Neon", modz, hrp.CFrame)
    f3.Size = Vector3.new(1.3, 0.6, 0.6)
    p3 = pr(f3, 4)
    p3.Speed = NumberRange.new(10, 12)
    local w3 = makeweld(f3, f3, mp, CFrame.Angles(rd(-40), rd(10), rd(-145)) * CFrame.new(2, -1, -0.5), nil)
    local f4 = makepart("Teal", "w4", 1, "Neon", modz, hrp.CFrame)
    f4.Size = Vector3.new(1.3, 0.6, 0.6)
    p4 = pr(f4, 4)
    p4.Speed = NumberRange.new(10, 12)
    local w4 = makeweld(f4, f4, mp, CFrame.Angles(rd(-40), rd(-10), rd(145)) * CFrame.new(-2, -1, -0.5), nil)
    local f5 = makepart("Teal", "w5", 1, "Neon", modz, hrp.CFrame)
    f5.Size = Vector3.new(1.3, 0.6, 0.6)
    p5 = pr(f5, 4)
    p5.Speed = NumberRange.new(10, 12)
    local w5 = makeweld(f5, f5, mp, CFrame.Angles(rd(-30), rd(-10), rd(-115)) * CFrame.new(3, -1.75, -1), nil)
    local f6 = makepart("Teal", "w6", 1, "Neon", modz, hrp.CFrame)
    f6.Size = Vector3.new(1.3, 0.6, 0.6)
    p6 = pr(f6, 4)
    p6.Speed = NumberRange.new(10, 12)
    local w6 = makeweld(f6, f6, mp, CFrame.Angles(rd(-30), rd(10), rd(115)) * CFrame.new(-3, -1.75, -1), nil)
    local f7 = makepart("Teal", "w7", 1, "Neon", modz, hrp.CFrame)
    f7.Size = Vector3.new(1.9, 0.6, 0.6)
    p7 = pr(f7, 6)
    p7.Speed = NumberRange.new(10, 12)
    local w7 = makeweld(f7, f7, mp, CFrame.Angles(rd(-40), rd(-5), rd(-140)) * CFrame.new(2.5, -1.65, -0.65), nil)
    local f8 = makepart("Teal", "w8", 1, "Neon", modz, hrp.CFrame)
    f8.Size = Vector3.new(1.9, 0.6, 0.6)
    p8 = pr(f8, 6)
    p8.Speed = NumberRange.new(10, 12)
    local w8 = makeweld(f8, f8, mp, CFrame.Angles(rd(-40), rd(5), rd(140)) * CFrame.new(-2.5, -1.65, -0.65), nil)
    t1 = pr(f1, 2)
    t1.LockedToPart = false
    t2 = pr(f2, 2)
    t2.LockedToPart = false
    t3 = pr(f3, 2)
    t3.LockedToPart = false
    t4 = pr(f4, 2)
    t4.LockedToPart = false
    t5 = pr(f5, 2)
    t5.LockedToPart = false
    t6 = pr(f6, 2)
    t6.LockedToPart = false
    t7 = pr(f7, 2)
    t7.LockedToPart = false
    t8 = pr(f8, 2)
    t8.LockedToPart = false
    table.insert(memedon, f1)
    table.insert(memedon, f2)
    table.insert(memedon, f3)
    table.insert(memedon, f4)
    table.insert(memedon, f5)
    table.insert(memedon, f6)
    table.insert(memedon, f7)
    table.insert(memedon, f8)
    local sd = Instance.new("Sound")
    sd.Volume = 1.5
    sd.Pitch = rd2(10, 12) / 10
    sd.SoundId = "rbxassetid://201858072"
    sd.Parent = hrp
    sd:Play()
    game.Debris:AddItem(sd, 1)
    human.PlatformStand = true
    local bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(15000, 15000, 15000)
    bg.P = 2500
    bg.D = 100
    bg.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
    bg.Parent = hrp
    local bf = Instance.new("BodyVelocity")
    bf.MaxForce = Vector3.new(15000, 15000, 15000)
    bf.P = 2500
    bf.Velocity = mouse.Hit.p - hrp.Position.unit * 200
    bf.Parent = hrp
    for d = 1, 100 do
      swait()
      bg.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
      bf.Velocity = mouse.Hit.p - hrp.Position.unit * (200 - d * 2)
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(80), rd(0), math.sin(-hrp.RotVelocity.Y / 5)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-70), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    bf:Destroy()
    bg:Destroy()
    human.PlatformStand = false
    emi = false
    p1.LockedToPart = false
    p2.LockedToPart = false
    p3.LockedToPart = false
    p4.LockedToPart = false
    p5.LockedToPart = false
    p6.LockedToPart = false
    p7.LockedToPart = false
    p8.LockedToPart = false
    for _ = 1, 10 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    delay(0.5, function()
      for _, l in ipairs(memedon) do
        l:Destroy()
      end
    end)
    resetlerp()
    activu = false
  end
  function musiclel()
    if selected == false or activu == true then
      return
    end
    if boxingu == false then
      boxingu = true
      do
        local watz = 1
        local hmm = 1
        local intens = 30
        local deg = 20
        local derp = makepart("Teal", "hurr", 0.25, "Neon", modz, hrp.CFrame)
        derp.Locked = true
        local s = Instance.new("ParticleEmitter")
        s.Enabled = true
        s.LockedToPart = true
        s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s.LightEmission = 0.6
        s.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.275, 0),
          NumberSequenceKeypoint.new(0.406, 0.762, 0),
          NumberSequenceKeypoint.new(0.433, 1.5, 0.75),
          NumberSequenceKeypoint.new(0.476, 0.625, 0),
          NumberSequenceKeypoint.new(1, 0.05, 0)
        })
        s.Texture = "rbxassetid://31270182"
        s.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s.Name = "vid"
        s.Lifetime = NumberRange.new(0.2)
        s.Rate = 75
        s.Speed = NumberRange.new(7, 10)
        s.VelocitySpread = 360
        s.ZOffset = 1
        s.Parent = derp
        local s2 = Instance.new("ParticleEmitter")
        s2.Enabled = true
        s2.LockedToPart = false
        s2.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s2.LightEmission = 0.6
        s2.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.853, 0.125, 0.1),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s2.Texture = "rbxassetid://31270182"
        s2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s2.Name = "vid2"
        s2.Lifetime = NumberRange.new(0.5)
        s2.Rate = 350
        s2.Speed = NumberRange.new(2, 6)
        s2.VelocitySpread = 360
        s2.ZOffset = 1
        s2.Parent = derp
        local s3 = Instance.new("ParticleEmitter")
        s3.Enabled = false
        s3.LockedToPart = false
        s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s3.LightEmission = 0.6
        s3.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.45, 0),
          NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s3.Texture = "rbxassetid://31270182"
        s3.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s3.Name = "vid3"
        s3.Lifetime = NumberRange.new(0.5)
        s3.Acceleration = Vector3.new(0, 30, 0)
        s3.Rate = 350
        s3.Speed = NumberRange.new(20, 30)
        s3.VelocitySpread = 360
        s3.Parent = derp
        derp.Anchored = true
        derp.Transparency = 0.5
        derp.Size = Vector3.new(3, 2, 2)
        derp.CFrame = hrp.CFrame
        local lol = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://151760030", derp)
        local sound = Instance.new("Sound")
        sound.Name = "moose"
        sound.Volume = 1
        sound.EmitterSize = 40
        sound.MaxDistance = 40
        sound.Looped = true
        sound.Parent = derp
        coroutine.resume(coroutine.create(function()
          local hey = false
          while derp do
            swait()
            watz = watz + hmm
            derp.CFrame = derp.CFrame:lerp(hrp.CFrame * cf(-1.5, 3, 2.5) * ang(0, 0, rd(deg * math.cos(watz / intens))), 0.4)
            derp.Size = derp.Size:lerp(Vector3.new(3 * (1 + sound.PlaybackLoudness / 500), 2 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 1000)), 0.7)
            lol.Scale = lol.Scale:lerp(Vector3.new(1 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 500)), 0.7)
            if hey == false and (3 < lol.Scale).magnitude then
              hey = true
              s3:Emit(20)
              delay(0.25, function()
                hey = false
              end)
            end
          end
        end))
        local sg = Instance.new("ScreenGui")
        sg.Name = "simpleflips"
        sg.Parent = plr.PlayerGui
        local fr = Instance.new("Frame")
        fr.AnchorPoint = Vector2.new(1, 0.5)
        fr.BackgroundColor3 = Color3.new(0.09411764705882353, 0.9568627450980393, 1)
        fr.BorderSizePixel = 2
        fr.Position = UDim2.new(0.975, 0, 0.5, 0)
        fr.Size = UDim2.new(0, 200, 0, 100)
        fr.Parent = sg
        local mbox = Instance.new("TextBox")
        mbox.AnchorPoint = Vector2.new(0.5, 0.5)
        mbox.BackgroundColor3 = Color3.new(0.45098039215686275, 0.7803921568627451, 1)
        mbox.BorderSizePixel = 2
        mbox.Position = UDim2.new(0.5, 0, 0.25, 0)
        mbox.Size = UDim2.new(0, 150, 0, 40)
        mbox.Font = "SourceSansBold"
        mbox.FontSize = "Size24"
        mbox.Text = "MEME"
        mbox.TextWrapped = true
        mbox.Parent = fr
        local pley = Instance.new("TextButton")
        pley.AnchorPoint = Vector2.new(0.5, 0.5)
        pley.BackgroundColor3 = Color3.new(0.25098039215686274, 1, 0.3137254901960784)
        pley.BorderSizePixel = 2
        pley.Position = UDim2.new(0.25, 0, 0.75, 0)
        pley.Size = UDim2.new(0, 75, 0, 35)
        pley.Font = "SourceSansBold"
        pley.FontSize = "Size18"
        pley.Text = "kappa"
        pley.Parent = fr
        local stap = Instance.new("TextButton")
        stap.AnchorPoint = Vector2.new(0.5, 0.5)
        stap.BackgroundColor3 = Color3.new(1, 0.25098039215686274, 0.11764705882352941)
        stap.BorderSizePixel = 2
        stap.Position = UDim2.new(0.75, 0, 0.75, 0)
        stap.Size = UDim2.new(0, 75, 0, 35)
        stap.Font = "SourceSansBold"
        stap.FontSize = "Size18"
        stap.Text = "pride"
        stap.Parent = fr
        pl = pley.MouseButton1Click:connect(function()
          sound.SoundId = "rbxassetid://" .. mbox.Text
          sound:Play()
        end)
        st = stap.MouseButton1Click:connect(function()
          sound:Stop()
        end)
      end
    elseif boxingu == true then
      activu = true
      boxingu = false
      local derp = modz:FindFirstChild("hurr")
      local s3 = derp:FindFirstChild("vid3")
      local s1 = derp:FindFirstChild("vid")
      local s2 = derp:FindFirstChild("vid2")
      local sound = derp:FindFirstChild("moose")
      local sg = plr.PlayerGui:FindFirstChild("simpleflips")
      pl:Disconnect()
      st:Disconnect()
      s3:Emit(40)
      s1.Enabled = false
      s2.Enabled = false
      sound:Stop()
      sg:Destroy()
      derp.Transparency = 1
      local poo = Instance.new("Sound")
      poo.SoundId = "rbxassetid://174658105"
      poo.Volume = 1.25
      poo.TimePosition = 0.65
      poo.Parent = derp
      poo:Play()
      wait(0.75)
      derp:Destroy()
      activu = false
    end
  end
  function hito(partoz, magn, dmg, debtim)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Head") and guy ~= chr and magn > (guy:FindFirstChild("Head").Position - partoz.Position).magnitude and guy:FindFirstChild("Head"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local hed = guy:FindFirstChild("Head")
          humz:TakeDamage(0)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = hed
          delay(debtim, function()
            db:Destroy()
          end)
        end
      end
    end
  end
  function animo(yep)
    if yep == true then
      anim.Parent = human
      chr.Animate.Disabled = false
    elseif yep == false then
      chr.Animate.Disabled = true
      anim.Parent = nil
    end
  end
  mouse.KeyDown:connect(function(key)
    if key == "f" then
      suprfast()
    end
    if key == "q" then
      torentmod()
    end
    if key == "c" then
      fly()
    end
    if key == "e" then
      eswing()
    end
    if key == "m" then
      musiclel()
    end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)