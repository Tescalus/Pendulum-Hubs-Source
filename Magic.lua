--[[Magic Unknown, By KillerDarkness0105/Codex#6685.]]--

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
Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
attacktype2=1
vt=Vector3.new
it=Instance.new
cf=CFrame.new
cn=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
combo = 0
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false
attackdebounce = false
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
stance = false
local ff = 2
noleg = false
evadecooldown = false
Humanoid.Animator.Parent = nil
local equip = false
local Effects = {}
 attackspeed = 0.14 
 df = false
 Swing = 1
local sine = 0
local change = 1
local val = 0
local speed = 0
local rs = game:GetService("RunService").RenderStepped
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
deb = game:GetService("Debris")
Face:Destroy()

--game.Lighting.TimeOfDay = 210

		        local eye1 = Instance.new("Part")
eye1.Parent = Character
eye1.Size = Vector3.new(0.2,0.2,0.2)
eye1.Archivable = true
eye1.Transparency = 0
eye1.CanCollide = false
eye1.Material = "Neon"
eye1.Color = Color3.fromRGB(48,0,211)
local eye1mesh = Instance.new("SpecialMesh",eye1)
eye1mesh.MeshType = "Sphere"
eye1mesh.Scale = Vector3.new(0.66,1.22,0.66)
ko2 = eye1mesh.Scale
local eye1weld = Instance.new("Weld")
eye1weld.Parent = eye1
eye1weld.Part0 = Head
eye1weld.Part1 = eye1
eye1weld.C0 = CFrame.new(.13,.19,-.55)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
		eye1weld.Part0 = Head
 



local eye2 = Instance.new("Part")
eye2.Parent = Character
eye2.Size = Vector3.new(0.2,0.2,0.2)
eye2.Archivable = true
eye2.Transparency = 0
eye2.CanCollide = false
eye2.Material = "Neon"
eye2.Color = Color3.fromRGB(48,0,211)
local eye2mesh = Instance.new("SpecialMesh",eye2)
eye2mesh.MeshType = "Sphere"
eye2mesh.Scale = Vector3.new(0.66,1.22,0.66)
local eye2weld = Instance.new("Weld")
eye2weld.Parent = eye2
eye2weld.Part0 = Head
eye2weld.Part1 = eye2
eye2weld.C0 = CFrame.new(-.13,.19,-.55)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
		eye2weld.Part0 = Head
		



		music = Instance.new("Sound",PlayerGui)
		music.Volume = 1
		music.TimePosition = 0
		music.Pitch = 1
		music.SoundId = "rbxassetid://1849245030"
		music.Looped = true
		music:Play()



















		
				       so = function(id,par,vol,pit)
		coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		sou:play()
		game:GetService("Debris"):AddItem(sou,8)
		end))
		end
		
		--save shoulders
		RSH, LSH=nil, nil
		--welds
		RW, LW=Instance.new("Weld"), Instance.new("Weld")
		RW.Name="Right Shoulder" LW.Name="Left Shoulder"
		LH=Torso["Left Hip"]
		RH=Torso["Right Hip"]
		TorsoColor=Torso.BrickColor
		function NoOutline(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
		end
		player=Player
		ch=Character
		RSH=ch.Torso["Right Shoulder"]
		LSH=ch.Torso["Left Shoulder"]
		--
		RSH.Parent=nil
		LSH.Parent=nil
		--
		RW.Name="Right Shoulder"
		RW.Part0=ch.Torso
		RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
		RW.C1=cf(0, 0.5, 0)
		RW.Part1=ch["Right Arm"]
		RW.Parent=ch.Torso
		--
		LW.Name="Left Shoulder"
		LW.Part0=ch.Torso
		LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
		LW.C1=cf(0, 0.5, 0)
		LW.Part1=ch["Left Arm"]
		LW.Parent=ch.Torso
		 
		 
		newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		    local wld = Instance.new("Weld", wp1)
		    wld.Part0 = wp0
		    wld.Part1 = wp1
		    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
		end
		 local rs = game:GetService("RunService").RenderStepped
		 
		newWeld(RootPart, Torso, 0, -1, 0)
		Torso.Weld.C1 = CFrame.new(0, -1, 0)
		newWeld(Torso, LeftLeg, -0.5, -1, 0)
		LeftLeg.Weld.C1 = CFrame.new(0, 1, 0)
		newWeld(Torso, RightLeg, 0.5, -1, 0)
		RightLeg.Weld.C1 = CFrame.new(0, 1, 0)
		
		    Player=game:GetService('Players').LocalPlayer
		    Character=Player.Character
		    mouse=Player:GetMouse()
		    m=Instance.new('Model',Character)
		 
		 
		    local function weldBetween(a, b)
		        local weldd = Instance.new("ManualWeld")
		        weldd.Part0 = a
		        weldd.Part1 = b
		        weldd.C0 = CFrame.new()
		        weldd.C1 = b.CFrame:inverse() * a.CFrame
		        weldd.Parent = a
		        return weldd
		    end
		   
		    ArtificialHB = Instance.new("BindableEvent", script)
		ArtificialHB.Name = "Heartbeat"
		 
		script:WaitForChild("Heartbeat")
		 
		frame = 1 / 80
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
		 
--[[]
		function swait(num)
		    if num == 0 or num == nil then
		        ArtificialHB.Event:wait()
		    else
		        for i = 0, num do
		            ArtificialHB.Event:wait()
		        end
		    end
	end

	]]
	

	function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait()
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait()
		end
	end
end








		function RemoveOutlines(part)
		    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
		end
		   
		
		part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
		  local fp = it("Part")
		  fp.formFactor = formfactor
		  fp.Parent = parent
		  fp.Reflectance = reflectance
		  fp.Transparency = transparency
		  fp.CanCollide = false
		  fp.Locked = true
		  fp.BrickColor = brickcolor
		  fp.Name = name
		  fp.Size = size
		  fp.Position = Torso.Position
		  NoOutline(fp)
		  if fp.BrickColor == BrickColor.new("Dark indigo") then
		    fp.Material = "Neon"
		  else
		    if fp.BrickColor == BrickColor.new("Really black") then
		      fp.BrickColor = BrickColor.new("Really black")
		      fp.Material = "Metal"
		    else
		      fp.Material = "Neon"
		    end
		  end
		  fp:BreakJoints()
		  return fp
		end
		
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
		weld = function(parent, part0, part1, c0)
		  local weld = it("Weld")
		  weld.Parent = parent
		  weld.Part0 = part0
		  weld.Part1 = part1
		  weld.C0 = c0
		  return weld
		end
		
		F1 = Instance.new("Folder", Character)
		F1.Name = "Effects Folder"
		F2 = Instance.new("Folder", F1)
		F2.Name = "Effects"
		Triangle = function(a, b, c)
		end
		
MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0})
      end
    end
  end
end
MagicSkull = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "14028428", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Skull", delay, x3, y3, z3, msh, goe})
end
MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end
MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, goe)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder2", delay, x3, y3, z3, msh, goe})
end
MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end
MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
MagicFire = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Fire", delay, 1, 1, 1, msh})
end
MagicFireWave = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, workspace, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Top"
  d = Instance.new("Decal")
  d.Parent = prt
  d.Texture = "http://www.roblox.com/asset/?id=26356434"
  d.Face = "Bottom"
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "FireWave", 1, 30, math.random(400, 600) / 100, msh})
end
ElecEffect = function(cff, x, y, z)
  local prt = part(3, workspace, 0, 0, BrickColor.new("White"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 10)
  xval = math.random() / 3
  yval = math.random() / 3
  zval = math.random() / 3
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.2, x, y, z, xval, yval, zval, msh}
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
local prt=CreatePart(workspace,"Neon",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
		
function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= Character and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end
		
		
		
		function clerp(a,b,t)
		local qa = {QuaternionFromCFrame(a)}
		local qb = {QuaternionFromCFrame(b)}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1-t
		return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
		end
		 
		function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
		else
		local i = 0
		if m11 > m00 then
		i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
		i = 2
		end
		if i == 0 then
		local s = math.sqrt(m00-m11-m22+1)
		local recip = 0.5/s
		return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
		elseif i == 1 then
		local s = math.sqrt(m11-m22-m00+1)
		local recip = 0.5/s
		return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
		elseif i == 2 then
		local s = math.sqrt(m22-m00-m11+1)
		local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
		end
		end
	end
			local lerp = function(a, b, t)
	return a * (1 - t) + b * t
end
	
		

		
		function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w*xs, w*ys, w*zs
		local xx = x*xs
		local xy = x*ys
		local xz = x*zs
		local yy = y*ys
		local yz = y*zs
		local zz = z*zs
		return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
		end
		function QuaternionSlerp(a, b, t)
		local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
		local startInterp, finishInterp;
		if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
		local theta = math.acos(cosTheta)
		local invSinTheta = 1/math.sin(theta)
		startInterp = math.sin((1-t)*theta)*invSinTheta
		finishInterp = math.sin(t*theta)*invSinTheta  
		else
		startInterp = 1-t
		finishInterp = t
		end
		else
		if (1+cosTheta) > 0.0001 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1/math.sin(theta)
		startInterp = math.sin((t-1)*theta)*invSinTheta
		finishInterp = math.sin(t*theta)*invSinTheta
		else
		startInterp = t-1
		finishInterp = t
		end
		end
		return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp
		end
		 
		function weld5(part0, part1, c0, c1)
		    weeld=Instance.new("Weld", part0)
		    weeld.Part0=part0
		    weeld.Part1=part1
		    weeld.C0=c0
		    weeld.C1=c1
		    return weeld
		end
		 
		--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		 
		function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
		return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
	end
	
	
	function Bullets(thinggy,place,size,color,velocity,damage,bounce,collide,rotation)
    swait()
	   local Bullet = Instance.new("Part",Workspace)
	Bullet.Locked = true
	Bullet.Name = "Bullet"
	Bullet.Anchored = bounce
	Bullet.CanCollide = collide
	Bullet.Transparency = 0.24
	Bullet.Reflectance = 0
	Bullet.BottomSurface = 0
	Bullet.TopSurface = 0
	Bullet.Shape = 0
	Bullet.BrickColor = BrickColor.new(color)
	Bullet.Size = Vector3.new(size,size,size)
	Bullet.Material = "Neon"
	Bullet.Orientation = vt(-90,0,0)
	local Bulletthing = Instance.new("SpecialMesh",Bullet)
	Bulletthing.MeshType = "Sphere"
		local Bulletforce = Instance.new("BodyForce")
	Bulletforce.force = Vector3.new(0,Bullet:GetMass()*166.2,0)
	Bulletforce.Parent = Bullet
	Bullet.CFrame = thinggy.CFrame*CFrame.new(math.random(-place,place),math.random(-place,place),math.random(-place,place))
	local bv = Instance.new("BodyVelocity",Bullet)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    Bullet.CFrame = CFrame.new(Bullet.Position,mouse.Hit.p)
		bv.velocity = Bullet.CFrame.lookVector*velocity

			
			Bullet.Touched:connect(function(hit)

	if (hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "prt" and hit.Name ~= "Effect" and hit.Name ~= "orb" and Bullet.Anchored == false) then
	    	    local orbexplode = Instance.new("Sound", Bullet)
    orbexplode.Volume = 4
    orbexplode.PlayOnRemove = true
    orbexplode.SoundId = "http://roblox.com/asset/?id=142070127"
    orbexplode.Pitch = 1
    orbexplode:Destroy()
    deb:AddItem(orbexplode, 4)
	Bullet.Anchored = true
	Bullet.Transparency = 1
	deb:AddItem(Bullet, 4)
	local Explode = Instance.new("Explosion") 
	Explode.Position = Bullet.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 0
	Explode.BlastRadius = Bullet.Size.X	*5.6
	Explode.Visible = false

	Explode.Hit:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid")~=nil and hit.Parent ~= Character then
    		    if hit.Parent:FindFirstChildOfClass("Humanoid").MaxHealth > 500 then
		        hit.Parent:FindFirstChildOfClass("Humanoid").MaxHealth = 100
		        hit.Parent:FindFirstChildOfClass("Humanoid").Health = 100
		        end
if attackdebounce == false then
    attackdebounce = true
 hit.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0))
 wait(0.02)
attackdebounce = false
end
end
end)
coroutine.resume(coroutine.create(function()

	    MagicCircle(BrickColor.new("Royal purple"), cf(Bullet.Position), 10, 10, 10, 50, 50, 50, 0.065)
	    MagicCircle(BrickColor.new("Royal purple"), cf(Bullet.Position), 0, 1, 0, 15, 0, 15, 0.025)
	    MagicRing(BrickColor.new("Royal purple"), cf(Bullet.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 4, 4, 4, 0, 0.025)
    MagicRing(BrickColor.new("Royal purple"), cf(Bullet.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 0.5, -1, -1, 0, 0.025)
	        end))
		end
	end)
coroutine.resume(coroutine.create(function()
    for i = 0,16,0.1 do
        swait()
end
if Bullet.Anchored == false then
    Bullet:Destroy()
    end
end))

		end
	
	
	
	
	
	local bl = Instance.new("BlurEffect",cam)
bl.Size = 0
 
 
function Dash()
evadecooldown = true
attack = true
so("http://www.roblox.com/asset/?id=231917788", Torso, 1, 1)
 
        so("http://www.roblox.com/asset/?id=231917788", Torso, 1, 1)
 
 

 
 
 
 
 
 
 
bl.Size = 84
 
 
  	        MagicCircle(BrickColor.new("White"), cf(RootPart.Position), 800, 5, 800, 0, 0, 0, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(RootPart.Position), 800, 10, 800, -40, 0, -40, 0.025)
	        MagicCircle(BrickColor.new("White"), cf(RootPart.Position), 800, 10, 800, -42, 1000, -42, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(RootPart.Position), 1000, 10, 1000, -62, 1200, -62, 0.05)
 
 RootPart.CFrame = RootPart.CFrame*CFrame.new(0,0,-96)
 RootPart.Velocity = RootPart.CFrame.lookVector *280
 
	for i, v in pairs(FindNearestHead(Torso.CFrame.p, 52.5)) do
		if v:FindFirstChild("Torso") and v:FindFirstChild("Humanoid") then
		    
so("http://www.roblox.com/asset/?id=138186576", v.Torso, 10, 1)
			v:FindFirstChild("Humanoid"):TakeDamage(math.random(0,0))
			SphereEffect(BrickColor.new("Royal purple"), cf(v.Torso.Position) , 1, 1, 1, 6.8, 6.8, 6.8, 0.04)
				        MagicBlock(BrickColor.new("White"), cf(v.Torso.Position), 2000, 2000, 2000, -100, -100, -100, 0.05, 1)
	        MagicBlock(BrickColor.new("Royal purple"), cf(v.Torso.Position), 2500, 2500, 2500, -150, -150, -150, 0.05, 1)
	        MagicBlock(BrickColor.new("White"), cf(v.Torso.Position), 3000, 3000, 3000, -200, -200, -200, 0.05, 1)
	        MagicCircle(BrickColor.new("Royal purple"), cf(v.Torso.Position), 800, 2, 800, 150, 2, 150, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(v.Torso.Position), 800, 2, 800, 100, 4, 100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(v.Torso.Position), 800, 2, 800, 50, 6, 50, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(v.Torso.Position), 0, 0, 0, 100, 100, 100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(v.Torso.Position), 0, 0, 0, 200, 200, 200, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(v.Torso.Position), 0, 0, 0, 300, 300, 300, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(v.Torso.Position), 0, 0, 0, 400, 400, 400, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(v.Torso.Position), 800, 2, 800, 4, 350, 4, 0.005)
	        MagicCircle(BrickColor.new("Royal purple"), cf(v.Torso.Position), 600, 2, 600, 4, 300, 4, 0.005)
	        MagicCircle(BrickColor.new("White"), cf(v.Torso.Position), 400, 2, 400, 4, 250, 4, 0.005)
		end
end

for i = 0,1,0.064 do
swait()
cam.FieldOfView = lerp(cam.FieldOfView, 110, 0.5)
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,12),0.24)
RootPart.Velocity = RootPart.CFrame.lookVector * 175
bl.Size = bl.Size - 8.5
SphereEffect(BrickColor.new("Royal purple"),RootPart.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,5.5,10,5.5,0.03)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, -12) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)),.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.4)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, -0.4) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.8)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -0.7, -0.7) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)), 0.8)

     
 
end
 
 
 
attack = false
attackdebounce = false
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.1)
wait(.2)
bl.Size = 0
evadecooldown = false

 
 
end
		
		
	
	
	
	
	
	
	
	
	
	
	local shooting = false
 
 
 
function shoot()
    attack = true
shooting = true
    
    
                    local thing = Instance.new("BodyGyro",RootPart)
thing.D = 50
thing.P = 6000
thing.MaxTorque = vt(100000,math.huge,0)
thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
      for i = 0,2,0.16 do
        swait()
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1.0, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1.0, 0)  * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
end


while shooting == true do
        swait(1)
	
	RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
        so("http://roblox.com/asset/?id=200633327",Torso,2,1)
        thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
            Torso.Velocity =  RootPart.CFrame.lookVector * -13
    Bullets(RightArm,0,1.5,"Royal purple",700,25.5,false,false)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(40), math.rad(80)),.2)
            coroutine.resume(coroutine.create(function()
    for i = 0, 0.5, 0.1 do
        swait()
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.24)
end
end))
end

attack = false
thing:Destroy()
    end

	
	
	function dshoot()
    attack = true
shooting = true
    
    
                    local thing = Instance.new("BodyGyro",RootPart)
thing.D = 50
thing.P = 6000
thing.MaxTorque = vt(100000,math.huge,0)
thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
so("http://roblox.com/asset/?id=1268159756",Torso,5,1)
      for i = 0,3,0.16 do
        swait()
        MagicRing(BrickColor.new("Royal purple"), RootPart.CFrame*CFrame.new(0,0,-8), 9, 9, 1, -0.7, -0.7, 0, 0.07)
        MagicCircle(BrickColor.new("Royal purple"), RootPart.CFrame*CFrame.new(0,0,-8), 9, 9, 9, -0.7, -0.7, -0.7, 0.07)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.4) * angles(math.rad(90), math.rad(0), math.rad(-20)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(90), math.rad(0), math.rad(20)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.0, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.0, 0)  * CFrame.Angles(math.rad(25), math.rad(0), math.rad(25)), 0.1)
end



while shooting == true do
        swait(0.5)
        coroutine.resume(coroutine.create(function()
        MagicRing(BrickColor.new("Royal purple"), RootPart.CFrame*CFrame.new(0,0,-8), 3, 3, 1, 10.2, 10.2, 0, 0.07)
        end))
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.0, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(-25)), 0.3)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.0, 0)  * CFrame.Angles(math.rad(25), math.rad(0), math.rad(25)), 0.3)
        so("http://roblox.com/asset/?id=200633327",Torso,2,1)
        thing.CFrame = CFrame.new(RootPart.Position,mouse.Hit.p)
            Torso.Velocity =  RootPart.CFrame.lookVector * -63
            
     
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.4)
    Bullets(RightArm,0,2.5,"Royal purple",1200,45.5,false,false)
            coroutine.resume(coroutine.create(function()
    for i = 0, 0.5, 0.1 do
        swait()
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.55*4.8,0.55*4.8),math.random(-0.55*4.8,0.55*4.8),math.random(-0.55*4.8,0.55*4.8)),0.44)
end
end))
       
    Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.2)
    Bullets(LeftArm,0,2.5,"Royal purple",1200,45.5,false,false)
            coroutine.resume(coroutine.create(function()
    for i = 0, 0.5, 0.1 do
        swait()
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.24)
end
end))
       
end

attack = false
thing:Destroy()
    end

	
	
	
	
	function finaldev()
	    attack = true
	    so("http://roblox.com/asset/?id=815032096",Head,6,0.84)
	    so("http://roblox.com/asset/?id=200633529",Workspace,3,0.84)

	    for i = 0,14,0.1 do
        swait()
            WaveEffect(BrickColor.new("White"), RootPart.CFrame*CFrame.new(0,-1,0)*angles(0,math.rad(0+90*i),0) , 1, 1, 1, 7, 0.8, 7, 0.09) 
            WaveEffect(BrickColor.new("Royal purple"), RootPart.CFrame*CFrame.new(0,-1,0)*angles(0,math.rad(0-90*i),0) , 1, 1, 1, 5, 0.8, 5, 0.05) 
        Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.25*2.8,0.25*2.8),math.random(-0.25*2.8,0.25*2.8),math.random(-0.25*2.8,0.25*2.8)),0.16)
        Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.15)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(14),math.rad(0),math.rad(0)),.15)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(87)),.15)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0) * angles(math.rad(0), math.rad(0), math.rad(-87)),.15)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, 0, -0.5) * CFrame.Angles(math.rad(16), math.rad(0), math.rad(0)), 0.15)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.14, 0.2) * CFrame.Angles(math.rad(-17), math.rad(0), math.rad(0)), 0.15)
       
end
so("http://roblox.com/asset/?id=197161452",Torso,7,1)
	    for i = 0,6,0.1 do
swait()
 WaveEffect(BrickColor.new("White"), RootPart.CFrame*CFrame.new(0,-1,0)*angles(0,math.rad(0+90*i),0) , 1, 1, 1, 7, 0.8, 7, 0.09) 
            WaveEffect(BrickColor.new("Royal purple"), RootPart.CFrame*CFrame.new(0,-1,0)*angles(0,math.rad(0-90*i),0) , 1, 1, 1, 5, 0.8, 5, 0.05) 
        Head.Velocity = Vector3.new(0,320,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0+260*i), math.rad(0), math.rad(0)), 0.6)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(70),math.rad(0),math.rad(0)),.1)
RW.C0 = clerp(RW.C0, CFrame.new(.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.1)
LW.C0 = clerp(LW.C0, CFrame.new(-.7, -0.22, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.34, -0.7) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(0)), 0.1)
end


	local bel = part(3, Character, 0, 1, BrickColor.new("Royal purple"), "Ball", vt(0.126,0.126,0.126))
	 local belmsh = mesh("SpecialMesh", bel, "Sphere", "nil", vt(0, 0, 0), vt(10, 10, 10))



    local Charge = Instance.new("Sound", bel)
    Charge.Volume = 10
    Charge.SoundId = "http://roblox.com/asset/?id=244578827"
    Charge.Pitch = 0.8
    Charge.PlayOnRemove = true
    Charge:Play()
    Charge:Destroy()
bel.Anchored = true
	    for i = 0,47,0.1 do
        swait()
        	          bel.CFrame = RootPart.CFrame * cf(0, 90*i/3.5, 0)
        bel.Transparency = bel.Transparency - 0.0034
        belmsh.Scale = belmsh.Scale + Vector3.new(24,24,24)
        Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0+1*i,0+1*i),0.15)
        cam.FieldOfView = lerp(cam.FieldOfView, 40+1*i, 0.15)
Head.Velocity = Vector3.new(0,2.4+0.8*i,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-13),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(140)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(-140)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.0, 0) * CFrame.Angles(math.rad(-45), math.rad(34), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.0, 0)  * CFrame.Angles(math.rad(-45), math.rad(-34), math.rad(25)), 0.1)
end
so("http://roblox.com/asset/?id=160212892",Head,10,0.84)
	    for i = 0,4,0.1 do
        swait()
        Head.Velocity = Vector3.new(0,2.4,0)
                Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(13),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(140)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(0), math.rad(0), math.rad(-140)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.0, 0) * CFrame.Angles(math.rad(-45), math.rad(34), math.rad(-25)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.0, 0)  * CFrame.Angles(math.rad(-45), math.rad(-34), math.rad(25)), 0.1)
end





bel.Anchored = false
	local bv = Instance.new("BodyVelocity",bel)
	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
    bel.CFrame = CFrame.new(bel.Position,mouse.Hit.p)
		bv.velocity = bel.CFrame.lookVector*350
		
		
		
--[[		
					bel.Touched:connect(function(hit)

	if hit.Parent.Parent ~= Character and hit.Parent ~= Character and hit.Name ~= "prt" and hit.Name ~= "Effect" and hit.Name ~= "orb" and Bullet.Anchored == false then
	    	    local orbexplode = Instance.new("Sound", bel)
    orbexplode.Volume = 10
    orbexplode.PlayOnRemove = true
    orbexplode.SoundId = "http://roblox.com/asset/?id=142070127"
    orbexplode.Pitch = 1
    orbexplode:Destroy()
    deb:AddItem(orbexplode, 4)
	bel.Anchored = true
	bel.Transparency = 1
	deb:AddItem(bel, 4)
	local Explode = Instance.new("Explosion") 
	Explode.Position = bel.Position
	Explode.Parent = Workspace 
	Explode.BlastPressure = 90
	Explode.BlastRadius = Bullet.Size.X	*25.6
	Explode.Visible = false

coroutine.resume(coroutine.create(function()



	        MagicBlock(BrickColor.new("White"), cf(bel.Position), 2000, 2000, 2000, -100, -100, -100, 0.05, 1)
	        MagicBlock(BrickColor.new("Royal purple"), cf(bel.Position), 2500, 2500, 2500, -150, -150, -150, 0.05, 1)
	        MagicBlock(BrickColor.new("White"), cf(bel.Position), 3000, 3000, 3000, -200, -200, -200, 0.05, 1)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1800, 2, 1800, 1150, 2, 1150, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 1800, 2, 1800, 1100, 4, 1100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1800, 2, 1800, 150, 16, 150, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 0, 0, 0, 1100, 4100, 1100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 0, 0, 1200, 1200, 1200, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 0, 0, 0, 1300, 1300,1300, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 0, 0, 1400, 1400, 1400, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 4800, 2, 1800, 4, 1350, 4, 0.005)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1600, 2, 1600, 4, 1300, 4, 0.005)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 1400, 2, 1400, 4, 1250, 4, 0.005)


	    MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 10, 10, 10, 50, 50, 50, 0.065)
	    MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 1, 0, 15, 0, 15, 0.025)
	    MagicRing(BrickColor.new("Royal purple"), cf(bel.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 4, 4, 4, 0, 0.025)
    MagicRing(BrickColor.new("Royal purple"), cf(bel.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0, 0, 0.5, -1, -1, 0, 0.025)
	        end))
		end
	end)
		
		]]
		
		con5=bel.Touched:connect(function(hit)
		    
	    	    local orbexplode = Instance.new("Sound", bel)
    orbexplode.Volume = 10
    orbexplode.PlayOnRemove = true
    orbexplode.SoundId = "http://roblox.com/asset/?id=167115397"
    orbexplode.Pitch = 1
    orbexplode:Destroy()
    deb:AddItem(orbexplode, 4)
	bel.Anchored = true
	bel.Transparency = 1
	deb:AddItem(bel, 5.2)




coroutine.resume(coroutine.create(function()
so("http://www.roblox.com/asset/?id=167115397", Workspace, 6, 1)
so("http://www.roblox.com/asset/?id=138186576", Workspace, 6, 1)
for i = 0, 0.4, 0.1 do
    swait()
    
    
    	for i, v in pairs(FindNearestHead(bel.CFrame.p, 252.5)) do
		if v:FindFirstChild("Torso") and v:FindFirstChild("Humanoid") then
    		    if v:FindFirstChildOfClass("Humanoid").MaxHealth > 500 then
		         v:FindFirstChildOfClass("Humanoid").MaxHealth = 100
		         v:FindFirstChildOfClass("Humanoid").Health = 100
		        end
			v.Humanoid:TakeDamage(math.random(0,0))
			coroutine.resume(coroutine.create(function()
    for i = 0,2,0.1 do
        swait()
        v.Head.Velocity = -v.Head.CFrame.lookVector*660 + Vector3.new(0,684,0)
    end
    end))
end
end

coroutine.resume(coroutine.create(function()
    for i = 0, 2.4, 0.1 do
        swait()
Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(math.random(-0.55*4.8,0.55*4.8),math.random(-0.55*4.8,0.55*4.8),math.random(-0.55*4.8,0.55*4.8)),0.44)
end
end))

	        MagicBlock(BrickColor.new("White"), cf(bel.Position), 2000, 2000, 2000, -100, -100, -100, 0.05, 1)
	        MagicBlock(BrickColor.new("Royal purple"), cf(bel.Position), 2500, 2500, 2500, -150, -150, -150, 0.05, 1)
	        MagicBlock(BrickColor.new("White"), cf(bel.Position), 3000, 3000, 3000, -200, -200, -200, 0.05, 1)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1800,222, 1800, 1150, 222, 1150, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 1800, 222, 1800, 1100, 224, 1100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1800, 222, 1800, 150, 216, 150, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 0, 0, 0, 1100, 4100, 1100, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 0, 0, 1200, 1200, 1200, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 0, 0, 0, 1300, 1300,1300, 0.05)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 0, 0, 1400, 1400, 1400, 0.05)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 4800, 222, 1800, 224, 1350, 224, 0.005)
	        MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 1600, 222, 1600, 224, 1300, 224, 0.005)
	        MagicCircle(BrickColor.new("White"), cf(bel.Position), 1400, 222, 1400, 224, 1250, 224, 0.005)

            WaveEffect(BrickColor.new("White"), cf(bel.Position)*angles(0,math.rad(0+90*i),0) , 1, 1, 1, 24, 5.4, 24, 0.09) 
            WaveEffect(BrickColor.new("Royal purple"), cf(bel.Position)*angles(0,math.rad(0-90*i),0) , 1, 1, 1, 22, 4.8, 22, 0.05) 
            
	    MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 10, 10, 10, 50, 50, 50, 0.065)
	    MagicCircle(BrickColor.new("Royal purple"), cf(bel.Position), 0, 1, 0, 15, 0, 15, 0.025)
	    MagicRing(BrickColor.new("White"), cf(bel.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 24, 24, 1, 12, 12, 0, 0.015)
    MagicRing(BrickColor.new("Royal purple"), cf(bel.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 24, 24, 1, 12, 12, 0, 0.015)
    MagicRing(BrickColor.new("White"), cf(bel.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 24, 24, 1, 8, 8, 0, 0.015)
    MagicRing(BrickColor.new("Royal purple"), cf(bel.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 24, 24, 1, 12, 12, 0, 0.015)
    end
	        end))


end)

		
		
		
	    for i = 0,32,0.1 do
        swait()
        Head.Velocity = Vector3.new(0,2.4,0)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-35), math.rad(0), math.rad(0)), 0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(43),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.0, 0.5, -0.4) * angles(math.rad(80), math.rad(12), math.rad(-30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1., 0.5, -0.4) * angles(math.rad(80), math.rad(-12), math.rad(30)),.2)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.0, 0) * CFrame.Angles(math.rad(75), math.rad(34), math.rad(-35)), 0.2)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.0, 0)  * CFrame.Angles(math.rad(75), math.rad(-34), math.rad(35)), 0.2)
end

coroutine.resume(coroutine.create(function()
    for i = 0, 63, 0.1 do
        swait()
    end
    if bel.Anchored == false then
        bel:Destroy() 
    end
    end))




	attack = false
	end
	
	
	
	  mouse.Button1Down:connect(function(key)
if attack == false then
shoot()
end
end)
 
 
 
 
  mouse.Button1Up:connect(function(key)
if shooting == true then
shooting = false
end
end)




  mouse.KeyDown:connect(function(key)
if key == 'e' and attack == false then
dshoot()
end
end)




  mouse.KeyDown:connect(function(key)
if key == 'q' and attack == false then
finaldev()
end
end)

  mouse.KeyUp:connect(function(key)
if key == 'e' and shooting == true then
shooting = false
end
end)


	          
	          		 mouse.KeyDown:connect(function(key)
		     if key == 'f' and attack == false and evadecooldown == false then
		         Dash()
	         end
	         end)

	
	local orb = part(3, Character, 0, 0.9, BrickColor.new("White"), "Effect", vt())
	 local msh = mesh("SpecialMesh", orb, "Sphere", "nil", vt(0, 0, 0), vt(15, 15, 15))
	     
     	local orb2 = part(3, Character, 0, 0.9, BrickColor.new("White"), "Effect", vt())
	 local msh = mesh("SpecialMesh", orb2, "Sphere", "nil", vt(0, 0, 0), vt(15, 15, 15))
		          orb.Anchored = true
		          orb2.Anchored = true
		          Humanoid.WalkSpeed = 30
	          
	          
	           local f = 0
 game:GetService("RunService"):BindToRenderStep("W0tT", 0, function()


f = f+1
 cam.FieldOfView = lerp(cam.FieldOfView, 70, 0.076)
if f >= 6 then
    f=0
    SphereEffect(BrickColor.new("Royal purple"),cf(orb.Position)*angles(math.random(-360, 360),math.random(-360, 360),math.random(-360, 360)),1,5,1,.05,4,.05,0.03)
    SphereEffect(BrickColor.new("Royal purple"),cf(orb2.Position)*angles(math.random(-360, 360),math.random(-360, 360),math.random(-360, 360)),1,5,1,.05,4,.05,0.03)
 MagicRing(BrickColor.new("Royal purple"), cf(orb.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 3, 3, 1, -0.2, -0.2, 0, 0.07)
 MagicCircle(BrickColor.new("Royal purple"), cf(orb.Position), 0, 0, 0, 1.25, 1.25, 1.25, 0.05)
  MagicRing(BrickColor.new("Royal purple"), cf(orb2.Position) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 3, 3, 1, -0.2, -0.2, 0, 0.07)
 MagicCircle(BrickColor.new("Royal purple"), cf(orb2.Position), 0, 0, 0, 1.25, 1.25, 1.25, 0.05)
 	      MagicBlock(BrickColor.new("Royal purple"), cf(orb.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 1, 1, 1, 1, 1, 1, 0.1, 2)
	      MagicBlock(BrickColor.new("Royal purple"), cf(orb2.Position) * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100) * euler(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)), 1, 1, 1, 1, 1, 1, 0.1, 2)

end
end)

Humanoid.MaxHealth = 400
	          
	       print("Move list")
print("---------")
print("F: Time Dash")
print("Hold Click: Lesser Bullets")
print("Hold E: Mega Bullets")
print("Q: Final Devastator")

	          
	          
	          
					while true do
    swait()
sine = sine + change
--speed = speed + music.PlaybackLoudness/90
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
    local TiltVelocity = CFrame.new(RootPart.CFrame:vectorToObjectSpace(RootPart.Velocity))
    if attack==true or attack==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end

Humanoid.Health = Humanoid.Health + 4

	          orb.CFrame = RightArm.CFrame * cf(0, -1, 0)
	           orb2.CFrame = LeftArm.CFrame * cf(0, -1, 0)
		if RootPart.Velocity.y > 1 and hitfloor==nil then
Anim="Jump"





if attack==false then
change = 1
look = 0
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(0)), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10+2.05*math.cos(sine/5)),math.rad(0),math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20+2.05*math.cos(sine/5)), math.rad(-10), math.rad(50-2.05*math.cos(sine/5))), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20+2.05*math.cos(sine/5)), math.rad(-10), math.rad(-50+2.05*math.cos(sine/5))), 0.07)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, -0.6) * CFrame.Angles(math.rad(-25+3.05*math.cos(sine/5)), math.rad(-3), math.rad(0)), 0.1)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -.47, -0.7) * CFrame.Angles(math.rad(-12+3.05*math.cos(sine/5)), math.rad(0), math.rad(0)), 0.1)
end

elseif RootPart.Velocity.y < -1 and hitfloor==nil then
Anim="Fall"
change = 1



if attack==false then
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(7+4*math.sin(sine/1.3)), math.rad(0), math.rad(0)),0.07)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(140+12*math.cos(sine/1.3))), 0.07)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-140+12*math.cos(sine/1.3))), 0.07)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(40+7*math.sin(sine/1.3)),math.rad(0),math.rad(0)),0.07)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.17*math.cos(sine/1.3), -0.13) * CFrame.Angles(math.rad(18+7*math.cos(sine/1.3)), math.rad(3), math.rad(0)), 0.1)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -.37+0.17*math.cos(sine/1.3), -0.2) * CFrame.Angles(math.rad(32+7*math.cos(sine/1.3)), math.rad(0), math.rad(0)), 0.1)
end

elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
change = 1
if attack==false and equip == false then
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
			       
			       
			       
			       	          orb.CFrame = orb.CFrame:lerp(RightArm.CFrame*cf(0+2*math.cos(sine/40), -5+2*math.sin(sine/40), 0),0.1) 
	          orb2.CFrame = orb2.CFrame:lerp(LeftArm.CFrame*cf(0-2*math.cos(sine/40), -5+2*math.sin(sine/40), 0),0.1) 
			       
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.04*math.cos(sine/40), -0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.25)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10+2.6*math.sin(sine/40)),math.rad(0),math.rad(60)),0.25)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.55+0.04*math.sin(sine/40), 0.2) * angles(math.rad(-32+1.3*math.cos(sine/40)), math.rad(0+4*math.sin(sine/40)), math.rad(-22.3+2.2*math.cos(sine/40))),0.25)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.55+0.04*math.sin(sine/40), -0.3-0.04*math.cos(sine/40)) * angles(math.rad(28+1.3*math.cos(sine/40)), math.rad(0-4*math.sin(sine/40)), math.rad(26.3-2.2*math.cos(sine/40))),0.25)
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.04*math.cos(sine/40), 0) * CFrame.Angles(math.rad(0), math.rad(8), math.rad(-7)),0.25)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.57, -1+0.04*math.cos(sine/40), 0)  * CFrame.Angles(math.rad(0), math.rad(-2), math.rad(3)),0.25)
end



elseif torvel>1.5 and torvel<22 and hitfloor~=nil then
Anim="Walk"
change = 0.84
look = 0
if attack==false and equip == false then
			       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.02)
Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1+0.14*math.cos(sine/5),  -0.3) * angles(math.rad(-2)*-math.rad(TiltVelocity.z)*9.5, math.rad(0+2*math.cos(sine/10)), math.rad(8)*-math.rad(TiltVelocity.x)*7.5+ RootPart.RotVelocity.Y / 46), 0.08)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(4-3*math.sin(sine/5)),math.rad(0),math.rad(2) + RootPart.RotVelocity.Y / 13), 0.08)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0+0.34*math.sin(sine/10)) * angles(math.rad(0-26*math.sin(sine/10))+ RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(6+8*math.cos(sine/5))- RootPart.RotVelocity.Y / 34), 0.08)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0-0.34*math.sin(sine/10)) * angles(math.rad(0+26*math.sin(sine/10))+ RootPart.RotVelocity.Y / 34, math.rad(0), math.rad(-6-8*math.cos(sine/5))+ RootPart.RotVelocity.Y / -34), 0.08)
--LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.21*math.cos(sine/10), -0.03+0.19*math.cos(sine/10)) * CFrame.Angles(math.rad(-8-25*math.sin(sine/10)*-math.rad(TiltVelocity.z)*12.5), math.rad(0)- RootPart.RotVelocity.Y / -24, math.rad(0-25*math.sin(sine/10)*math.rad(TiltVelocity.x)*11.5+ RootPart.RotVelocity.Y / -34)),  0.08)
--RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.21*math.cos(sine/10),-0.03-0.19*math.cos(sine/10)) * CFrame.Angles(math.rad(-8+25*math.sin(sine/10)*-math.rad(TiltVelocity.z)*12.5), math.rad(0)+ RootPart.RotVelocity.Y / 24, math.rad(0-25*math.sin(sine/10)*-math.rad(TiltVelocity.x)*11.5- RootPart.RotVelocity.Y / 34)),  0.08)
end
if attack == false or attack==true and noleg == false then
LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.21*math.cos(sine/10), -0.03+0.19*math.cos(sine/10)) * CFrame.Angles(math.rad(-8-25*math.sin(sine/10)*-math.rad(TiltVelocity.z)*9.5), math.rad(0)- RootPart.RotVelocity.Y / -24, math.rad(0-25*math.sin(sine/10)*math.rad(TiltVelocity.x)*6.5- RootPart.RotVelocity.Y / 34)),  0.08)
RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.21*math.cos(sine/10),-0.03-0.19*math.cos(sine/10)) * CFrame.Angles(math.rad(-8+25*math.sin(sine/10)*-math.rad(TiltVelocity.z)*9.5), math.rad(0)+ RootPart.RotVelocity.Y / 24, math.rad(0-25*math.sin(sine/10)*-math.rad(TiltVelocity.x)*6.5- RootPart.RotVelocity.Y / 34)),  0.08)
end

		elseif torvel>=22 and hitfloor~=nil then
		Anim="Run"
		change = 0.84+ Character.Humanoid.WalkSpeed/112
		if attack==false and equip == false then
					       Humanoid.CameraOffset = Humanoid.CameraOffset:lerp(Vector3.new(0,0,0),0.02)
			Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1-0.5*math.cos(sine/2.5), -.8) * angles(math.rad(-23+4*math.cos(sine/5)), math.rad(0+4*math.sin(sine/5)), math.rad(0)+ RootPart.RotVelocity.Y / 26), .1)
	Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-12+20*math.sin(sine/2.5)),math.rad(0),math.rad(0+5*math.sin(sine/5)) + RootPart.RotVelocity.Y / 13),.1)
	RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0-0.34*math.cos(sine/5)) * angles(math.rad(10+57*math.cos(sine/5))+ RootPart.RotVelocity.Y / -34, math.rad(0+43*math.cos(sine/5)), math.rad(5)- RootPart.RotVelocity.Y / 34),.25)
	LW.C0=clerp(LW.C0,cf(-1.5,0.5,0+0.34*math.cos(sine/5))*angles(math.rad(10-57*math.cos(sine/5))+ RootPart.RotVelocity.Y / 34,math.rad(0+43*math.cos(sine/5)),math.rad(-5)+ RootPart.RotVelocity.Y / -34),.25)
		
		
	LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1+0.56*math.cos(sine/5), 0-0.48*math.cos(sine/5)) * CFrame.Angles(math.rad(0+73*math.sin(sine/5)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)+ RootPart.RotVelocity.Y / -54), 0.3)
 RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1-0.56*math.cos(sine/5),0+0.48*math.cos(sine/5)) * CFrame.Angles(math.rad(0-73*math.sin(sine/5)), math.rad(0)+ RootPart.RotVelocity.Y / 42, math.rad(0)- RootPart.RotVelocity.Y / 54), 0.3)
		end
		
		--[[
		if attack==false then
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.4*math.cos(sine/5.5)/2, 0 *math.sin(sine/6.6)/2) * CFrame.Angles(math.rad(0) + -math.sin(sine/5.5)/1.2, math.rad(0), 0), .8)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.4*math.cos(sine/5.5)/2,0 *-math.sin(sine/6.6)/2) * CFrame.Angles(math.rad(0) + math.sin(sine/5.5)/1.2, math.rad(0), 0), .8)
		end
		]]
		if attack==true and noleg == false then
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1-0.24*math.cos(sine/5), 0.+0.24*math.cos(sine/5)) * CFrame.Angles(math.rad(0-74*math.sin(sine/5)), math.rad(0), math.rad(0)), 0.3)
		   RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1+0.24*math.cos(sine/5),0.-0.24*math.cos(sine/5)) * CFrame.Angles(math.rad(0+74*math.sin(sine/5)), math.rad(0), math.rad(0)), 0.3)
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
              if Thing[2] == "CylinderClang" then
                if Thing[3] <= 1 then
                  Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                  Thing[7] = Thing[1].CFrame
                  effect("New Yeller", 0, Thing[8], Thing[7])
                  Thing[8] = Thing[7]
                  Thing[3] = Thing[3] + Thing[4]
                else
                  Part.Parent = nil
                  table.remove(Effects, e)
                end
              end
              if Thing[2] == "showDamage" then
                if Thing[6] < Thing[5] then
                  Thing[6] = Thing[6] + 1
                else
                  if Thing[6] < Thing[7] then
                    Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                    Thing[6] = Thing[6] + 1
                  else
                    if Thing[6] < Thing[8] then
                      Thing[6] = Thing[6] + 1
                    else
                      if Thing[6] < Thing[9] then
                        Thing[6] = Thing[6] + 1
                        Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                        Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                        Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                      else
                        Thing[1].Parent = nil
                        table.remove(Effects, e)
                      end
                    end
                  end
                end
              end
              if Thing[2] == "PartiEmi" then
                Thing[3] = Thing[3] - 1
                if Thing[3] <= 0 then
                  Thing[1].Enabled = false
                  table.remove(Effects, e)
                end
              end
              if Thing[2] == "AdjuEff" then
                if 0 < Thing[3] then
                  Thing[3] = Thing[3] - 1
                  Thing[1].Size = Thing[1].Size + UDim2.new(0.2, 0, 0.2, 0)
                  Thing[1].StudsOffset = Thing[1].StudsOffset + vt(0, -0.2, 0)
                  Thing[4].ImageTransparency = Thing[4].ImageTransparency + 0.1
                else
                  Thing[1].Parent = nil
                  table.remove(Effects, e)
                end
              end
              if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" and Thing[2] ~= "showDamage" and Thing[2] ~= "PartiEmi" and Thing[2] ~= "AdjuEff" then
                if Thing[1].Transparency <= 1 then
                  if Thing[2] == "Block1" then
                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                    Mesh = Thing[7]
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Block2" then
                      Thing[1].CFrame = Thing[1].CFrame
                      Mesh = Thing[7]
                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Block3" then
                        Thing[9] = Thing[9] + 0.5
                        Thing[1].CFrame = Thing[8] * cf(0, Thing[9], 0)
                        Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        Mesh = Thing[7]
                        Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Skull" then
                          Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8] / 2, -Thing[8])
                          Mesh = Thing[7]
                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          if Thing[2] == "Cylinder" then
                            Mesh = Thing[7]
                            Mesh.Scale = Mesh.Scale + vt(Thing[4]-Thing[1].Transparency, Thing[5]-Thing[1].Transparency, Thing[6]-Thing[1].Transparency)
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          else
                            if Thing[2] == "Cylinder2" then
                              Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
                              Mesh = Thing[7]
                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            else
                              if Thing[2] == "Blood" then
                                Mesh = Thing[7]
                                Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                              else
                                if Thing[2] == "Elec" then
                                  Mesh = Thing[10]
                                  Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
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
