loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
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
    Part0:BreakJoints()
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
  plr = game.Players.LocalPlayer
  repeat
    wait(0.4)
  until plr.Character
  chr = game.Workspace.non
  human = chr:FindFirstChild("Humanoid")
  mouse = plr:GetMouse()
  cam = workspace.CurrentCamera
  selected = false
  equipd = false
  tors = chr.Torso
  rarm = chr["Right Arm"]
  larm = chr["Left Arm"]
  rleg = chr["Right Leg"]
  lleg = chr["Left Leg"]
  hrp = chr.HumanoidRootPart
  hed = chr.Head
  anim = human.Animator
  activu = false
  ragged = false
  batting = false
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
  tool.TextureId = "rbxassetid://291302154"
  tool.ToolTip = "NANI"
  tool.Name = "AAAAAAAAAAAAAA"
  tool.Parent = plr.Backpack
  modz = Instance.new("Model")
  modz.Name = "efx"
  modz.Parent = chr
  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  nscale.Changed:connect(function()
    RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end)
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
  function makepart(color, name, reflec, trans, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    port.Transparency = trans
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
  local lauf1 = Instance.new("Sound")
  lauf1.SoundId = "rbxassetid://137473066"
  lauf1.Volume = 1.5
  lauf1.Pitch = 2
  lauf1.Parent = hrp
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
    LH.C1 = LHC1
  end
  function test()
    if selected == false or activu == true then
      return
    end
    if ragged == false then
      ragged = true
      human.PlatformStand = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makegloo(tors, RightShoulderC0, RightShoulderC1, tors, rarm, "Right Shoulder")
        maketouchy(rarm, rarm, CFrame.new(0, 0.5, 0))
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makegloo(tors, LeftShoulderC0, LeftShoulderC1, tors, larm, "Left Shoulder")
        maketouchy(larm, larm, CFrame.new(0, 0.5, 0))
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makegloo(tors, RightHipC0, RightHipC1, tors, rleg, "Right Hip")
        maketouchy(rleg, rleg, CFrame.new(0, 0.5, 0))
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makegloo(tors, LeftHipC0, LeftHipC1, tors, lleg, "Left Hip")
        maketouchy(lleg, lleg, CFrame.new(0, 0.5, 0))
      end
    elseif ragged == true then
      ragged = false
      human.Jump = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makejoint(tors, RSC0, RSC1, tors, rarm, "Right Shoulder")
        rarm:FindFirstChild("touchy"):Destroy()
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makejoint(tors, LSC0, LSC1, tors, larm, "Left Shoulder")
        larm:FindFirstChild("touchy"):Destroy()
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makejoint(tors, RHC0, RHC1, tors, rleg, "Right Hip")
        rleg:FindFirstChild("touchy"):Destroy()
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makejoint(tors, LHC0, LHC1, tors, lleg, "Left Hip")
        lleg:FindFirstChild("touchy"):Destroy()
      end
      RS = tors:FindFirstChild("Right Shoulder")
      LS = tors:FindFirstChild("Left Shoulder")
      RH = tors:FindFirstChild("Right Hip")
      LH = tors:FindFirstChild("Left Hip")
      RJ = hrp:FindFirstChild("RootJoint")
      N = tors:FindFirstChild("Neck")
    end
  end
  function makegloo(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Glue")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function makejoint(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Motor6D")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function maketouchy(parent, limb, cframe)
    local pr = Instance.new("Part")
    pr.Name = "touchy"
    pr.Size = Vector3.new(1 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    pr.Transparency = 1
    pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5)
    pr.CanCollide = true
    pr.Anchored = false
    pr.Parent = parent
    local w = Instance.new("Weld")
    w.Part0 = pr
    w.Part1 = limb
    w.C0 = cframe
    w.Parent = pr
  end
  local clibat, spec
  local dipperhat = chr:FindFirstChild("DXD_DipperHat")
  local dipperrot
  if dipperhat then
    dipperrot = dipperhat.Handle.HatAttachment.Rotation
  end
  function bat()
    if selected == false or activu == true then
      return
    end
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local hmes = makemesh("Head", Vector3.new(2, 9, 2), nil, hnd)
        local hwel = makeweld(hnd, hnd, rarm, ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt1 = makepart("Bright yellow", "pt1", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p1m = makemesh("Head", Vector3.new(2.5, 2.5, 2.5), nil, pt1)
        local p1w = makeweld(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt2 = makepart("Bright yellow", "pt2", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p2m = makemesh("FileMesh", Vector3.new(0.375, 0.375, 0.375), "rbxassetid://250640098", pt2)
        p2m.TextureId = "rbxassetid://250639536"
        local p2w = makeweld(pt2, pt2, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p3m = makemesh("Head", Vector3.new(2.5, 2.5, 2.5), nil, pt3)
        local p3w = makeweld(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), nil)
        local pt4 = makepart("Bright yellow", "pt4", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(0.025, 0.025, 0.025), "rbxassetid://703458158", pt4)
        local p4w = makeweld(pt4, pt4, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), nil)
        local pt5 = makepart("Bright yellow", "pt5", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p5m = makemesh("Cylinder", Vector3.new(21.5, 6.25, 6.25), nil, pt5)
        local p5w = makeweld(pt5, pt5, hnd, ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), nil)
        local pt6 = makepart("Bright yellow", "pt6", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p6m = makemesh("Head", Vector3.new(6.5, 6.5, 6.5), nil, pt6)
        local p6w = makeweld(pt6, pt6, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p7m = makemesh("FileMesh", Vector3.new(0.95, 0.95, 0.95), "rbxassetid://272942659", pt7)
        p7m.TextureId = "rbxassetid://272942750"
        local p7w = makeweld(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), nil)
        local swingwoo = Instance.new("Sound")
        swingwoo.SoundId = "rbxassetid://10209640"
        swingwoo.Pitch = rd2(10, 11) / 10
        swingwoo.Name = "sweae"
        swingwoo.Volume = 1
        swingwoo.Parent = hrp
        clibat = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
          for _ = 1, 5 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          local bon = Instance.new("Sound")
          bon.SoundId = "rbxassetid://135436482"
          bon.Pitch = rd2(10, 12) / 10
          bon.Volume = 1
          bon.Parent = hrp
          game.Debris:AddItem(bon, 1)
          bon:Play()
          swingwoo:Play()
          for X = 1, 5 do
            swait()
            if X > 1 then
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)))
            end
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          activu = false
        end)
        spec = mouse.KeyDown:connect(function(keya)
          if selected == false or activu == true or ragged == true then
            return
          end
          if keya == "e" then
            activu = true
            local speed = human.WalkSpeed
            human.WalkSpeed = 0
            human:SetStateEnabled(3, false)
            local function expa()
              local sond = Instance.new("Sound")
              sond.Volume = 1.25
              sond.Pitch = 1
              sond.EmitterSize = 15
              sond.SoundId = "rbxassetid://315152748"
              sond.Parent = pt6
              sond:Play()
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(6, 27, 6), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.125, 1.125, 1.125), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 3.6750000000000003, 0.22499999999999998), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.07500000000000001, 0.07500000000000001, 0.07500000000000001), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -3.75, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(64.5, 18.75, 18.75), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -12.075000000000001, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(19.5, 19.5, 19.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -18.15, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(2.8499999999999996, 2.8499999999999996, 2.8499999999999996), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -18.6, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(4, 18, 4), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 2, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(0.75, 0.75, 0.75), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 2.45, 0.15), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -2, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.05, 0.05, 0.05), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -2.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(43, 12.5, 12.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -8.05, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(13, 13, 13), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -12.1, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(1.9, 1.9, 1.9), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -12.4, 0), 0.7)
              end
              sond.Pitch = 0.75
              sond:Play()
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(12, 54, 12), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 6, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.25, 2.25, 2.25), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 7.3500000000000005, 0.44999999999999996), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.15000000000000002, 0.15000000000000002, 0.15000000000000002), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -7.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(129, 37.5, 37.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -24.150000000000002, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(39, 39, 39), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -36.3, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 5.699999999999999, 5.699999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -37.2, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(8, 36, 8), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 4, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 4.9, 0.3), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.1, 0.1, 0.1), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(86, 25, 25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -16.1, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(26, 26, 26), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -24.2, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(3.8, 3.8, 3.8), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -24.8, 0), 0.7)
              end
              sond.Pitch = 0.4
              sond:Play()
              game.Debris:AddItem(sond, 2)
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(18, 81, 18), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 9, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(3.375, 3.375, 3.375), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 11.025, 0.6749999999999999), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -9, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.225, 0.225, 0.225), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -11.25, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(193.5, 56.25, 56.25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -36.225, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(58.5, 58.5, 58.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -54.449999999999996, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 8.549999999999999, 8.549999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -55.800000000000004, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(14, 63, 14), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(17.5, 17.5, 17.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 7, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.625, 2.625, 2.625), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 8.575000000000001, 0.525), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(17.5, 17.5, 17.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -7, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.17500000000000002, 0.17500000000000002, 0.17500000000000002), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -8.75, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(150.5, 43.75, 43.75), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -28.175000000000004, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(45.5, 45.5, 45.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -42.35, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(6.6499999999999995, 6.6499999999999995, 6.6499999999999995), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -43.4, 0), 0.7)
              end
            end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0.2, -0.2) * ang(rd(70), rd(-60), rd(-100)), 0.5)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(0, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(35), rd(-50), rd(-100)), 0.3)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(15, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 30 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(1.1, 0.6, 0) * ang(rd(0), rd(0), rd(-120)), 0.2)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.2)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(-20), rd(80)), 0.2)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.2)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.2)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.2)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
            end
            expa()
            for O = 1, 10 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0.3, 0) * ang(rd(0), rd(0), rd(60)), 0.001 + O * 0.01)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.001 + O * 0.01)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(-20), rd(80)), 0.001 + O * 0.01)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.001 + O * 0.01)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.001 + O * 0.01)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.001 + O * 0.01)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
            end
            local whoooo = Instance.new("Sound")
            whoooo.Volume = 3
            whoooo.TimePosition = 0.15
            whoooo.Pitch = 0.5
            whoooo.SoundId = "rbxassetid://320557353"
            whoooo.Parent = pt5
            whoooo:Play()
            game.Debris:AddItem(whoooo, 2)
            for O = 1, 6 do
              swait()
              hito(pt5, 25, 40, 0.75, hrp.CFrame.rightVector * -100 + Vector3.new(0, 50, 0), Vector3.new(0, rd2(-25, 25), rd2(-160, 160)))
              lerpz(RJ, "C0", RJC0 * cf(0.9, -0.7, 0) * ang(rd(0), rd(0), rd(120)), 0.1 + O * 0.05)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.1 + O * 0.05)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(20), rd(20)), 0.1 + O * 0.05)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.1 + O * 0.05)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.1 + O * 0.05)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.1 + O * 0.05)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
            end
            for O = 1, 13 do
              swait()
              hmes.Scale = hmes.Scale:lerp(Vector3.new(2, 9, 2), 0.05 + O * 0.075)
              p1m.Scale = p1m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), 0.05 + O * 0.075)
              p2m.Scale = p2m.Scale:lerp(Vector3.new(0.375, 0.375, 0.375), 0.05 + O * 0.075)
              p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), 0.05 + O * 0.075)
              p3m.Scale = p3m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), 0.05 + O * 0.075)
              p4m.Scale = p4m.Scale:lerp(Vector3.new(0.025, 0.025, 0.025), 0.05 + O * 0.075)
              p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), 0.05 + O * 0.075)
              p5m.Scale = p5m.Scale:lerp(Vector3.new(21.5, 6.25, 6.25), 0.05 + O * 0.075)
              p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), 0.05 + O * 0.075)
              p6m.Scale = p6m.Scale:lerp(Vector3.new(6.5, 6.5, 6.5), 0.05 + O * 0.075)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), 0.05 + O * 0.075)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(0.95, 0.95, 0.95), 0.05 + O * 0.075)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), 0.05 + O * 0.075)
              lerpz(RJ, "C0", RJC0 * cf(1.1, -0.8, 0) * ang(rd(0), rd(0), rd(150)), 0.05 + O * 0.075)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.05 + O * 0.075)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(30), rd(10)), 0.05 + O * 0.075)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(20), rd(20), rd(-20)), 0.05 + O * 0.075)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.05 + O * 0.075)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.05 + O * 0.075)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
            end
            if dipperhat then
              dipperhat.Handle.HatAttachment.Rotation = dipperrot
            end
            human.WalkSpeed = speed
            human:SetStateEnabled(3, true)
            activu = false
          end
          if keya == "q" then
            activu = true
            do
              local checkkey = true
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "q" then
                  checkkey = false
                end
              end)
              repeat
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  if T == 2 then
                    hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)))
                  end
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-30), rd(20), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-40), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(35)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  if T == 2 then
                    hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)))
                  end
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(40), rd(40), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(30)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(-65)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
              until not checkkey
              keyingup:Disconnect()
              activu = false
            end
          end
          if keya == "f" then
            activu = true
            do
              local speed = human.WalkSpeed
              human.WalkSpeed = 2
              human:SetStateEnabled(3, false)
              local checkkey = true
              local chargecounter = 0
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "f" then
                  checkkey = false
                end
              end)
              local firederp
              for _ = 1, 8 do
                swait()
                hwel.C0 = hwel.C0:lerp(ang(rd(65), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, 0.5, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(60)), 0.5)
                lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(70), rd(-10), rd(80)), 0.5)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(-10), rd(-70), rd(-75)), 0.5)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.5)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(0), rd(80), rd(-5)), 0.5)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.5)
              end
              repeat
                swait()
                chargecounter = chargecounter + 1
                lerpz(RS, "C0", RSC0 * cf(rd2(-5, 5) / 100, rd2(-5, 5) / 100, rd2(-5, 5) / 100) * ang(rd(rd2(65, 75)), rd(rd2(-15, 5)), rd(rd2(75, 85))), 0.05 + chargecounter * 0.019)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(rd2(-15, -5)), rd(rd2(-75, -65)), rd(rd2(-80, -70))), 0.05 + chargecounter * 0.019)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(rd2(-25, -15)), rd(0)), 0.05 + chargecounter * 0.019)
                if chargecounter > 30 and firederp == nil then
                  firederp = Instance.new("Fire")
                  firederp.Parent = pt5
                end
              until not checkkey or chargecounter > 50
              swingwoo:Play()
              for U = 1, 10 do
                swait()
                if U < 3 then
                  hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * (80 + chargecounter * 3) + Vector3.new(0, 6 + 6 * (chargecounter / 5), 0), Vector3.new(0, rd2(-25, 25) * (chargecounter / 25), rd2(-80, 80) * (chargecounter / 25)))
                  if chargecounter > 30 then
                    tagexplode(pt5, 5, 1)
                  end
                end
                hwel.C0 = hwel.C0:lerp(ang(rd(135), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, -0.5, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-30)), 0.6)
                lerpz(RS, "C0", RSC0 * cf(0.75, 0.5, -0.5) * ang(rd(0), rd(60), rd(120)), 0.4)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(100), rd(0)), 0.4)
                lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(20), rd(-125)), 0.4)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.4)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.6)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
                lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(-6)), 0.6)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.6)
              end
              if firederp then
                firederp:Destroy()
              end
              swait(10)
              hwel.C0 = ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0)
              keyingup:Disconnect()
              human.WalkSpeed = speed
              human:SetStateEnabled(3, true)
              activu = false
            end
          end
        end)
      end
    elseif batting == true then
      batting = false
      clibat:Disconnect()
      spec:Disconnect()
      hrp.sweae:Destroy()
      local batmod = chr:FindFirstChild("bmodel")
      batmod.hnd.Weld:Destroy()
      batmod.PrimaryPart = batmod.hnd
      batmod:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
      for _, A in pairs(batmod:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      batmod.Parent = workspace
      game.Debris:AddItem(batmod, 8)
    end
  end
  local movin = false
  local cliham, hamspec
  function ham()
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local makemotor = function(parent, p0, p1, c0, c1)
          local wel = Instance.new("Motor6D")
          wel.Part0 = p0
          wel.Part1 = p1
          wel.C0 = c0
          if c1 ~= nil then
            wel.C1 = c1
          end
          wel.Parent = parent
          return wel
        end
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        hnd.Anchored = true
        local hmes = makemesh("Head", Vector3.new(5, 30, 5), nil, hnd)
        movin = true
        hnd.CFrame = hrp.CFrame
        coroutine.resume(coroutine.create(function()
          while hnd.Anchored == true do
            swait()
            if movin then
              hnd.CFrame = hnd.CFrame:lerp(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, 11, 0), 0.65)
            end
          end
        end))
        local pt1 = makepart("Br. yellowish green", "pt1", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p1m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt1)
        local p1w = makemotor(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), nil)
        local pt2 = makepart("Br. yellowish green", "pt2", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p2m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt2)
        local p2w = makemotor(pt2, pt2, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p3m = makemesh("Head", Vector3.new(6.5, 6.5, 6.5), nil, pt3)
        local p3w = makemotor(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3.75, 0), nil)
        local pt4 = makepart("Br. yellowish green", "pt4", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://250640098", pt4)
        p4m.TextureId = "rbxassetid://250639536"
        local p4w = makemotor(pt4, pt4, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 4.25, 0.25), nil)
        local pt5 = makepart("Bright blue", "pt5", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p5m = makemesh("Head", Vector3.new(5, 90, 4), nil, pt5)
        local p5w = makemotor(pt5, pt5, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -12, 0), nil)
        local pt6 = makepart("Bright blue", "pt6", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p6m = makemesh("FileMesh", Vector3.new(0.16, 0.4, 0.16), "rbxassetid://703458158", pt6)
        local p6w = makemotor(pt6, pt6, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -16, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p7m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt7)
        local p7w = makemotor(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -27, 0), nil)
        local hdec1 = Instance.new("Decal")
        hdec1.Texture = "rbxasset://textures/face.png"
        hdec1.Face = "Front"
        hdec1.Parent = pt7
        local pt8 = makepart("Bright yellow", "pt8", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p8m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt8)
        local p8w = makemotor(pt8, pt8, hnd, ang(rd(0), rd(-90), rd(0)) * cf(0, -27, 0), nil)
        local hdec2 = Instance.new("Decal")
        hdec2.Texture = "rbxasset://textures/face.png"
        hdec2.Face = "Front"
        hdec2.Parent = pt8
        local pt9 = makepart("Bright yellow", "pt9", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p9m = makemesh("FileMesh", Vector3.new(12, 11, 11), "rbxassetid://272942659", pt9)
        local p9w = makemotor(pt9, pt9, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -30, 0), nil)
        p9m.TextureId = "rbxassetid://272942750"
        local pt10 = makepart("Bright yellow", "pt10", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p10m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt10)
        local p10w = makemotor(pt10, pt10, pt7, ang(rd(0), rd(0), rd(90)) * cf(11, 0, 0), nil)
        local hdec3 = Instance.new("Decal")
        hdec3.Texture = "rbxasset://textures/face.png"
        hdec3.Face = "Front"
        hdec3.Parent = pt10
        local pt11 = makepart("Bright yellow", "pt11", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p11m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt11)
        local p11w = makemotor(pt11, pt11, pt7, ang(rd(0), rd(180), rd(90)) * cf(11, 0, 0), nil)
        local hdec4 = Instance.new("Decal")
        hdec4.Texture = "rbxasset://textures/face.png"
        hdec4.Face = "Front"
        hdec4.Parent = pt11
        local pt12 = makepart("Bright yellow", "pt12", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p12m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt12)
        local p12w = makemotor(pt12, pt12, pt7, ang(rd(0), rd(0), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec5 = Instance.new("Decal")
        hdec5.Texture = "rbxasset://textures/face.png"
        hdec5.Face = "Front"
        hdec5.Parent = pt12
        local pt13 = makepart("Bright yellow", "pt13", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p13m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt13)
        local p13w = makemotor(pt13, pt13, pt7, ang(rd(0), rd(180), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec6 = Instance.new("Decal")
        hdec6.Texture = "rbxasset://textures/face.png"
        hdec6.Face = "Front"
        hdec6.Parent = pt13
        cliham = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
          movin = false
          for B = 1, 20 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.4)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(0), rd(0)), 0.4)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(170)), 0.4)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(10)), 0.4)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(-10)), 0.4)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(10)), 0.4)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 0.1 + B * 0.045)
          end
          for B = 1, 30 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.8, 0) * ang(rd(-25), rd(0), rd(-50)), 0.1 + B / 80)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-18), rd(0), rd(40)), 0.1 + B / 80)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-30), rd(-5), rd(160)), 0.1 + B / 80)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-20), rd(-150)), 0.1 + B / 80)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(-10)), 0.1 + B / 80)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(-5), rd(60), rd(-110)), 0.1 + B / 80)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 7 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(40)), 0.015 + B / 15)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.015 + B / 15)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-50), rd(100)), 0.015 + B / 15)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.015 + B / 15)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(10)), 0.015 + B / 15)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(-20)), 0.015 + B / 15)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 4 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, -0.8, 0) * ang(rd(70), rd(0), rd(40)), 0.38 + B * 0.1)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.38 + B * 0.1)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-40), rd(100)), 0.38 + B * 0.1)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.38 + B * 0.1)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(60)), 0.38 + B * 0.1)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(70)), 0.38 + B * 0.1)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          swait(15)
          movin = true
          activu = false
        end)
      end
    elseif batting == true then
      batting = false
      cliham:Disconnect()
      local badevz = chr:FindFirstChild("bmodel")
      badevz.PrimaryPart = badevz.hnd
      for _, A in pairs(badevz:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      movin = false
      badevz.Parent = workspace
      badevz:SetPrimaryPartCFrame(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, -11, 0))
      game.Debris:AddItem(badevz, 8)
    end
  end
  game:GetService("ContentProvider"):Preload("rbxassetid://725969678")
  function lauf()
    if selected == false or activu == true then
      return
    end
    lauf1:Play()
  end
  function makenoob(cfrem, scalo, rags)
    nscale.Value = scalo
    local md = Instance.new("Model")
    md.Name = "Noob"
    md.Parent = workspace
    local hu = Instance.new("Humanoid")
    hu.RigType = "R6"
    hu.MaxHealth = 100 * scalo
    hu.Health = 100 * scalo
    hu.Parent = md
    local anm = Instance.new("Animator")
    anm.Parent = hu
    hu.PlatformStand = true
    local light = function(part)
      part.CustomPhysicalProperties = PhysicalProperties.new(0.35, 0.3, 0.5)
    end
    local hd = Instance.new("Part")
    hd.Name = "Head"
    hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    hd.TopSurface = "Smooth"
    hd.BottomSurface = "Inlet"
    hd.Locked = true
    hd.BrickColor = BrickColor.new("Bright yellow")
    hd.CanCollide = true
    hd.Anchored = false
    light(hd)
    hd.Parent = md
    local hm = Instance.new("SpecialMesh")
    hm.MeshType = "Head"
    hm.Scale = Vector3.new(1.25, 1.25, 1.25)
    hm.Parent = hd
    local hf = Instance.new("Decal")
    hf.Texture = "rbxasset://textures/face.png"
    local gen = math.random(1, 40)
    if gen == 3 then
      hf.Texture = "rbxassetid://260884109"
    end
    if gen == 8 then
      hf.Texture = "rbxassetid://260569492"
    end
    if gen == 12 then
      hf.Texture = "rbxassetid://259580505"
    end
    if gen == 16 then
      hf.Texture = "rbxassetid://259579232"
    end
    if gen == 24 then
      hf.Texture = "rbxassetid://259571525"
    end
    if gen == 28 then
      hf.Texture = "rbxassetid://258283210"
    end
    if gen == 32 then
      hf.Texture = "rbxassetid://258940032"
    end
    if gen == 38 then
      hf.Texture = "rbxassetid://673220970"
      hf.Color3 = Color3.new(0, 0, 0)
    end
    hf.Face = "Front"
    hf.Parent = hd
    local hrpa = Instance.new("Part")
    hrpa.Name = "HumanoidRootPart"
    hrpa.TopSurface, hrpa.BottomSurface = 0, 0
    hrpa.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    hrpa.Transparency = 1
    hrpa.CanCollide = false
    hrpa.Locked = true
    light(hrpa)
    hrpa.Parent = md
    local tagbomb = Instance.new("BoolValue")
    tagbomb.Name = "tagbomb"
    tagbomb.Value = false
    tagbomb.Parent = hrpa
    local learm = Instance.new("Part")
    learm.Name = "Left Arm"
    learm.BrickColor = BrickColor.new("Bright yellow")
    learm.CanCollide = false
    learm.Locked = true
    learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    light(learm)
    learm.Parent = md
    local riarm = Instance.new("Part")
    riarm.Name = "Right Arm"
    riarm.BrickColor = BrickColor.new("Bright yellow")
    riarm.CanCollide = false
    riarm.Locked = true
    light(riarm)
    riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    riarm.Parent = md
    local leleg = Instance.new("Part")
    leleg.Name = "Left Leg"
    leleg.BrickColor = BrickColor.new("Br. yellowish green")
    leleg.CanCollide = false
    leleg.Locked = true
    light(leleg)
    leleg.BottomSurface = 0
    leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    leleg.Parent = md
    local rileg = Instance.new("Part")
    rileg.Name = "Right Leg"
    rileg.BrickColor = BrickColor.new("Br. yellowish green")
    rileg.CanCollide = false
    rileg.Locked = true
    light(rileg)
    rileg.BottomSurface = 0
    rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    rileg.Parent = md
    local tor = Instance.new("Part")
    tor.Name = "Torso"
    tor.BrickColor = BrickColor.new("Bright blue")
    tor.Locked = true
    light(tor)
    tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
    tor.Parent = md
    md.PrimaryPart = hrpa
    md:SetPrimaryPartCFrame(cfrem)
    md:makeJoints()
    makejoint(hrpa, RootJointC0, RootJointC1, hrpa, tor, "RootJoint")
    makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")
    if rags == true then
      makegloo(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makegloo(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makegloo(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makegloo(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      maketouchy(riarm, riarm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(learm, learm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(leleg, leleg, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(rileg, rileg, CFrame.new(0, 0.5 * nscale.Value, 0))
    elseif rags == false then
      makejoint(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makejoint(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makejoint(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makejoint(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      hu.PlatformStand = false
    end
    nscale.Value = 1
    hu.Touched:connect(function(tpart, uwot)
      if tagbomb.Value == true and tpart.Parent ~= md and tpart.Parent.Parent ~= md and tpart.Parent.Parent.Parent ~= md then
        tagbomb.Value = false
        hu.Health = 0
        local derp = Instance.new("Explosion")
        derp.BlastPressure = 200
        derp.BlastRadius = 8
        derp.DestroyJointRadiusPercent = 0
        derp.ExplosionType = 2
        derp.Visible = true
        derp.Position = uwot.Position - Vector3.new(0, 0.5, 0)
        derp.Parent = workspace
        game.Debris:AddItem(md, 8)
      end
    end)
    return md
  end
  function makecircle(cfrem, scalo)
    local mcir1 = Instance.new("Part")
    mcir1.Anchored = true
    mcir1.CanCollide = false
    mcir1.Size = Vector3.new(0.2, 0.2, 0.2)
    mcir1.Transparency = 1
    mcir1.CFrame = cfrem
    mcir1.Parent = modz
    game.Debris:AddItem(mcir1, 8)
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://602615043"
    d1.Face = "Front"
    d1.Parent = mcir1
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://602617463"
    d2.Face = "Back"
    d2.Parent = mcir1
    local bme = Instance.new("BlockMesh")
    bme.Parent = mcir1
    for _ = 1, 9 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(35 * scalo, 35 * scalo, 0), 0.3)
    end
    coroutine.resume(coroutine.create(function()
      swait(15)
      for _ = 1, 12 do
        swait()
        d1.Transparency = d1.Transparency + 0.08
        d2.Transparency = d2.Transparency + 0.08
      end
      mcir1:Destroy()
    end))
    return mcir1
  end
  function spawnnoob(circlecf, noobcf, scalez, ragd)
    local aearae = makecircle(circlecf, scalez)
    local nananb
    if ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, true)
    elseif not ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, false)
    end
    return nananb
  end
  function tagexplode(partoz, magn, bombdelay)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy.Name == "Noob" and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          swait(bombdelay * 30)
          guy:FindFirstChild("HumanoidRootPart").tagbomb.Value = true
        end))
      end
    end
  end
  function hito(partoz, magn, dmg, debtim, bodyfdire, bodyrot)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
          
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
          local b = Instance.new("Part")
          nooutline(b)
          b.Size = Vector3.new(0.2, 0.2, 0.2)
          b.Transparency = 0.25
          b.Anchored = true
          b.CanCollide = false
          b.BrickColor = BrickColor.new("Institutional white")
          b.Locked = true
          b.CFrame = horp.CFrame * CFrame.new(rd2(-1, 1), rd2(-2, 2), rd2(-1, 1))
          b.Parent = modz
          local c = Instance.new("SpecialMesh")
          c.MeshType = "Sphere"
          c.Scale = Vector3.new(3.5, 3.5, 3.5)
          c.Parent = b
          game.Debris:AddItem(b, 1)
          if bodyfdire then
            local boopyve = Instance.new("BodyVelocity")
            boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
            boopyve.P = 9999999999
            boopyve.Velocity = bodyfdire
            boopyve.Parent = horp
            game.Debris:AddItem(boopyve, debtim)
          end
          if bodyrot then
            local boopyro = Instance.new("BodyAngularVelocity")
            boopyro.MaxTorque = Vector3.new(999999, 999999, 999999)
            boopyro.P = math.huge
            boopyro.AngularVelocity = bodyrot
            boopyro.Parent = horp
            game.Debris:AddItem(boopyro, debtim)
          end
          local bet = Instance.new("Sound")
          bet.Pitch = rd2(9, 11) / 10
          bet.Volume = rd2(12, 14) / 10
          bet.SoundId = "rbxassetid://305526724"
          bet.Parent = b
          bet:Play()
          coroutine.resume(coroutine.create(function()
            for _ = 1, 5 do
              swait()
              b.Transparency = b.Transparency + 0.175
              c.Scale = c.Scale + Vector3.new(0.8 * dmg, 0.8 * dmg, 0.8 * dmg)
            end
          end))
        end
      end
    end
  end
  function cleannoobs()
    for _, nib in pairs(workspace:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        if nib.Name == "Noob" then
          if nib:FindFirstChild("HumanoidRootPart") then
            local g = Instance.new("Part")
            g.CanCollide, g.Anchored = false, true
            g.Transparency = 1
            g.CFrame = nib:FindFirstChild("HumanoidRootPart").CFrame
            g.Parent = workspace
            game.Debris:AddItem(g, 3.5)
            local sou = Instance.new("Sound")
            sou.Pitch = math.random(7, 11) / 10
            sou.Volume = 0.8
            sou.SoundId = "rbxassetid://111124523"
            sou.Parent = g
            local pe = Instance.new("ParticleEmitter")
            pe.Acceleration = Vector3.new(0, 8, 0)
            pe.Lifetime = NumberRange.new(1, 1.5)
            pe.Rate = 0.005
            pe.RotSpeed = NumberRange.new(-30, 30)
            pe.Rotation = NumberRange.new(0, 360)
            pe.Size = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 4.38, 0),
              NumberSequenceKeypoint.new(0.672, 4.14, 0),
              NumberSequenceKeypoint.new(1, 1.48, 0)
            })
            pe.Texture = "rbxassetid://244221440"
            pe.Transparency = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 0, 0),
              NumberSequenceKeypoint.new(0.529, 0.3, 0),
              NumberSequenceKeypoint.new(1, 1, 1)
            })
            pe.ZOffset = 5
            pe.Enabled = true
            pe.VelocitySpread = 360
            pe.Parent = g
            swait(5)
            pe:Emit(6)
            sou:Play()
          end
          nib:Destroy()
        end
      end))
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
    if key == "r" then
      test()
    end
    if key == "m" then
      lauf()
    end
    if key == "c" and plr.UserId == 8488617 then
      ham()
    end
    if key == "x" then
      bat()
    end
    if key == "l" and plr.UserId == 8488617 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, true)
    end
    if key == ";" and plr.UserId == 8488617 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 60, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 10, true)
    end
    if key == "k" and plr.UserId == 8488617 and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, false)
    end
    if key == "p" then
      cleannoobs()
    end
    if key == "z" then
      if selected == false or activu == true then
        return
      end
      if human.WalkSpeed == 25 then
        human.WalkSpeed = 70
        human.JumpPower = 75
      else
        human.WalkSpeed = 25
        human.JumpPower = 50
      end
    end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)
  animo(false)
  human.WalkSpeed = 25
  sine = 0
  charge = 1
  cos = math.cos
  game:GetService("RunService").RenderStepped:connect(function()
    if ragged == false and activu == false then
      local checkfloor = Ray.new(hrp.Position, Vector3.new(0, -5, 0))
      local checkpart = workspace:FindPartOnRayWithIgnoreList(checkfloor, {chr}, false, false)
      local checkstate = human:GetState()
      if checkstate.Value == 13 then
        animpose = "Sitting"
      elseif hrp.Velocity.y > 1 and checkpart == nil then
        animpose = "Jumping"
      elseif hrp.Velocity.y < -1 and checkpart == nil then
        animpose = "Falling"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
        animpose = "Idle"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 40 then
        animpose = "Walking"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude > 40 then
        animpose = "TooFast"
      end
      if animpose == "Idle" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0.05 * cos(sine / 40), 0, -0.05 - 0.05 * cos(sine / 20)) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(4 + 2 * cos(sine / 20)), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), 0.05 * cos(sine / 40)) * ang(rd(-5), rd(-5), rd(1)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), -0.05 * cos(sine / 40)) * ang(rd(-5), rd(5), rd(1)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Walking" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.025 * cos(sine / 4)) * ang(rd(-5), math.sin(hrp.RotVelocity.Y / 30), math.sin(hrp.RotVelocity.Y / 5)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Jumping" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(-5), rd(-20)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-20), rd(-20), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Falling" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(-5), rd(-20)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-15), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(15), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "TooFast" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.35 * cos(sine / 2)) * ang(rd(-20), math.sin(hrp.RotVelocity.Y / 20), math.sin(hrp.RotVelocity.Y / 2)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15 - 5 * cos(sine / 2)), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Sitting" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
    end
  end)
