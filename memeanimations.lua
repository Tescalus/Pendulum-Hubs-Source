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
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()


local model = game.Workspace.non
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local Torso = model.Torso
local RS = Torso:FindFirstChild("Right Shoulder")
local LS = Torso:FindFirstChild("Left Shoulder")
local RH = Torso:FindFirstChild("Right Hip")
local LH = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local Torso = model.Torso
local Head = model.Head
local Humanoid = model.Humanoid
local LeftArm = model["Left Arm"]
local LeftLeg = model["Left Leg"]
local RightArm = model["Right Arm"]
local RightLeg = model["Right Leg"]
local RootPart = model.HumanoidRootPart
local attack = false
local idle = 0
local Gen = "Girl"
local ToolMode = 1
local sprintmode=false
local jp = 50
local ws = 6
local inAir=true
local inAir2=true
local equipped = true
local MoveTH = true
local MoveArms = true
local MoveLegs = true
local toolAon = false
local stopTA = false
local sine = 0
local change = 1
local toolAnim = "None"
local toolAnimTime = 0
local Anim="Idle"
local RJ = model.HumanoidRootPart:FindFirstChild("RootJoint")
local cn = CFrame.new
local cf = CFrame.new
local ca2 = CFrame.Angles
local mf = math.floor
local Create = FELOADLIBRARY.Create
local canstoptuant1 = false
local stoptuant1 = false
local MenyOpen = false
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.RenderStepped:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.RenderStepped:wait(0)
		end
	end
end

function stopAnimations()
	coroutine.resume(coroutine.create(function()
	model.Animate:Destroy()
	end))
	coroutine.resume(coroutine.create(function()
	for _,v in pairs(Humanoid:GetPlayingAnimationTracks()) do
		v:Stop()
		
	end
end))
end


stopAnimations()
wait(.1)

local rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
RS.C1 = cn(0, 0.5, 0) 
LS.C1 = cn(0, 0.5, 0) 
RH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
LH.C1 = cn(0, 1, 0) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14) 
local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)





function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	

CFuncs = {
Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Weld = {Create = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
}
, 
Sound = {Create = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId  = "http://www.roblox.com/asset/?id="..id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, 6)
	end
))
end
}
, 

Sound2 = {Create = function(id, par, vol, pit, SoundTime)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId  = "http://www.roblox.com/asset/?id="..id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, SoundTime)
	end
))
end
}
, 
ParticleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
	
	local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
	return fp
end
}
}

local so = function(id, par, vol, pit, AlTime)

if AlTime ~= nil then

CFuncs.Sound2.Create(id, par, vol, pit, AlTime)	

else
CFuncs.Sound.Create(id, par, vol, pit)
end

end



local ParticEffect1 = Create("ParticleEmitter"){
Color = ColorSequence.new(Color3.new (0, 1, 0), Color3.new (0, 0, 0)),
Transparency =  NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(1,1)}),
Size = NumberSequence.new({NumberSequenceKeypoint.new(0,.15),NumberSequenceKeypoint.new(0.5,.01),NumberSequenceKeypoint.new(1,0)}),
Texture = "rbxassetid://596872069",
Lifetime = NumberRange.new(0.8),
Rate = 100,
VelocitySpread = 360,
RotSpeed = NumberRange.new(-100,100),
Speed = NumberRange.new(2),
LightEmission = 1,
LockedToPart = false,
Acceleration = Vector3.new(0, -5, 0),
EmissionDirection = "Back",

}	

--[[
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1/30
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















--]]

Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)


for i = 1,3,.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),1)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),1)



end












local function JumpAfterEffect()
	if attack == false then
	attack = true

if RootPart.Velocity.y < -65  then
Humanoid.WalkSpeed= 0
Humanoid.JumpPower= 0	
for i = 1,3,.1 do
	swait()	
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-3 * math.cos(sine / 15)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, .3, -.8 +-.05 * math.cos(sine / 15.5)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .7- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(20)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .7- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.15+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.15+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)

end

else
if sprintmode == true then
Humanoid.WalkSpeed= 10
else
Humanoid.WalkSpeed= 3
end
Humanoid.JumpPower= 0	
for i = 1,2,.1 do
	swait()	
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-3 * math.cos(sine / 15)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, .3, -.6 +-.05 * math.cos(sine / 15.5)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .7- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(20)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .7- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.65+ .05 * math.cos(sine / 15), -.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.65+ .05 * math.cos(sine / 15), -.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.2)

end

end
attack = false
end
end



local function SlashAnim()
	if toolAon == false then
	toolAon= true
	MoveArms = false
for i = 1,2,.1 do
	if stopTA == false then
	swait()	
		RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.8- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(160- 1 * math.cos(sine / 20)),math.rad(-10),math.rad(5- 1 * math.cos(sine / 20))),.2)
	end
	
		
	
end	

for i = 1,3,.1 do
	if stopTA == false then
	swait()	
		RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.3- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(0- 1 * math.cos(sine / 20)),math.rad(10),math.rad(-20- 1 * math.cos(sine / 20))),.5)
	
	end
	
	
end	

toolAnim = "None"
toolAon = false


	end
end



local function LungeAnim()
 stopTA = true
MoveArms = false		 
	
	swait(10)
	if toolAon == false then

	toolAon= true
	
for i = 1,3,.1 do
toolAon= true

	swait()		
		RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.7- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(170- 1 * math.cos(sine / 20)),math.rad(0),math.rad(0- 1 * math.cos(sine / 20))),.1)
	
	
		
	
end	

for i = 1,2,.1 do
	swait()	
		RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.5- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(30- 1 * math.cos(sine / 20)),math.rad(10),math.rad(-20- 1 * math.cos(sine / 20))),.2)
	
	
	toolAon= true	
	
end	


toolAnim = "None"
toolAon = false
stopTA = false
	end
end




local function getTool()	
	for _, kid in ipairs(model:GetChildren()) do
		if kid.className == "Tool" then return kid end
	end
	return nil
end
local function getToolAnim(tool)
	for _, c in ipairs(tool:GetChildren()) do
		if c.Name == "toolanim" and c.className == "StringValue" then
			return c
		end
	end
	return nil
end
local function animateTool()
	
	if (toolAnim == "None") then
		if ToolMode == 1 then
		RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.6- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(75- 1 * math.cos(sine / 20)),math.rad(20),math.rad(-15- 1 * math.cos(sine / 20))),.1)
		elseif  ToolMode == 2 then 
		RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.55- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(90- 1 * math.cos(sine / 20)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 20))),.1)	      
		elseif  ToolMode == 3 then  			
		RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.6- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(90 - 1 * math.cos(sine / 20)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 20))),.1)	      
	   	LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.6- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(90 - 1 * math.cos(sine / 20)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 20))),.1)	      			
		elseif  ToolMode == 4 then  
		RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), -.0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 20)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 20))),.1)	      
	   	LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), -.0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 20)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 20))),.1)	      
		elseif  ToolMode == 5 then     
MoveArms = true		
		
		
			
        end		
		return
	end

	if (toolAnim == "Slash") then
		SlashAnim()
		
		return
	end

	if (toolAnim == "Lunge") then
		LungeAnim()
		return
	end
end



game:GetService'RunService'.Stepped:connect(function()
	
sine = sine + change

  local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    local hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, model)


if sprintmode == true then
jp = 60
ws = 24
else	
jp = 50
ws = 6
end

if hitfloor ~= nil then
inAir = true
else
inAir = false	
end

if inAir == true then
if inAir2 == false then	


JumpAfterEffect()

end	
end

if hitfloor ~= nil then
inAir2 = true
else
inAir2 = false	
end
--[

if RootPart.Velocity.y > 1 and hitfloor == nil then
Anim = "Jump"
elseif RootPart.Velocity.y < -1 and hitfloor == nil then
Anim = "Fall"
elseif Humanoid.Sit == true then
Anim = "Sit"	
elseif torvel < 1 and hitfloor ~= nil then
Anim = "Idle"
elseif torvel > 2 and  hitfloor ~= nil then
if sprintmode == true then
Anim = "Run"
else
Anim = "Walk"
end	
else
Anim = ""
	
end



--]]









if attack == false then
Humanoid.JumpPower=jp
Humanoid.WalkSpeed=ws	

	local tool = getTool()
	if tool and tool:FindFirstChild("Handle") then
	
MoveArms = false

		local animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			
		end



		animateTool()	


if ToolMode == 1 or ToolMode == 2 then
if Anim == "Jump" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(20 -1* math.cos(sine / 10)),math.rad(0),math.rad(-5)),.3)
elseif Anim == "Fall" then	
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, 1- .03 * math.cos(sine / 15), .3) * CFrame.Angles(math.rad(15 -1* math.cos(sine / 10)),math.rad(0),math.rad(-100)),.05)
elseif Anim == "Idle" then
if Gen == "Boy" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
end
if Gen == "Girl" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.3- .03 * math.cos(sine / 26),  .1) * CFrame.Angles(math.rad(6),math.rad(20),math.rad(23+ 0 * math.cos(sine / 25))),.1)
end
elseif Anim == "Sit" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
elseif Anim == "Walk" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(-30 * math.cos(sine / 7)),math.rad(0),math.rad(0)),.1)
elseif Anim == "Run" then
LS.C0 = LS.C0:lerp(CFrame.new(-1.49, 0.6, 0) * CFrame.Angles(math.rad(10+75*math.cos(sine / 4)), math.rad(5+-35*math.cos(sine / 4)), math.rad(-2+10*math.cos(sine / 4))), .3)
else
LS.C0 = LS.C0:lerp(CFrame.new(-1.3, 0.8, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-35)),.05)
end
end

			
	else
MoveArms = true
	end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if Anim == "Jump" then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if MoveTH == true then
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15-3 * math.cos(sine / 15)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, 1.3 +-.05 * math.cos(sine / 15)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.15)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(20 +1* math.cos(sine / 10)),math.rad(0),math.rad(5)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(20 -1* math.cos(sine / 10)),math.rad(0),math.rad(-5)),.3)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.85+ .05 * math.cos(sine / 15), -.2) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.35+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-25 +1* math.cos(sine / 10)),math.rad(0),math.rad(0)),.2)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
elseif Anim == "Fall" then	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if MoveTH == true then		
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-3 * math.cos(sine / 15)),math.rad(0),math.rad(0)),.05)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.3 +-.05 * math.cos(sine / 15)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.08)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.1, 1- .03 * math.cos(sine / 15), .3) * CFrame.Angles(math.rad(15 +1* math.cos(sine / 10)),math.rad(0),math.rad(100)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, 1- .03 * math.cos(sine / 15), .3) * CFrame.Angles(math.rad(15 -1* math.cos(sine / 10)),math.rad(0),math.rad(-100)),.05)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.15+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-15 -1* math.cos(sine / 10)),math.rad(0),math.rad(0)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.55+ .05 * math.cos(sine / 15), -.4) * CFrame.Angles(math.rad(-0 +1* math.cos(sine / 10)),math.rad(0),math.rad(0)),.1)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
elseif Anim == "Sit" then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if MoveTH == true then
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
end
if MoveArms == true then
if Gen == "Girl" then
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.3- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-30- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.3, 0.3- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(30+ 1 * math.cos(sine / 20))),.1)
end
if Gen == "Boy" then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), -.0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-0- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), -.0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0+ 1 * math.cos(sine / 20))),.1)
end

end
if MoveLegs == true then
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.85+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.85+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
elseif Anim == "Idle" then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if Gen == "Girl" then
	
if MoveTH == true then
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 25)),math.rad(-7 * math.cos(sine / 26)),math.rad(2 * math.cos(sine / 26))),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(.07 * math.cos(sine / 26), 0, -.1 +-.03 * math.cos(sine / 25)) * CFrame.Angles(math.rad(0),math.rad(4 * math.cos(sine / 26)),math.rad(-3 * math.cos(sine / 26))),.15)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .01 * math.cos(sine / 25), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 2 * math.cos(sine / 26))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.3- .03 * math.cos(sine / 26),  .1) * CFrame.Angles(math.rad(6),math.rad(20),math.rad(23+ 0 * math.cos(sine / 25))),.1)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 25), .02) * CFrame.Angles(math.rad(-3),math.rad(0),math.rad(2.5- 0.0 * math.cos(sine / 25)))*CFrame.new(0, -.03 * math.cos(sine / 26), 0-0.03 * math.cos(sine / 26)) * CFrame.Angles(math.rad(0.5 * math.cos(sine / 26)),math.rad(2 * math.cos(sine / 26)),math.rad(-4 * math.cos(sine / 26))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 25), -.25) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 25)))*CFrame.new(0, .03 * math.cos(sine / 26), 0) * CFrame.Angles(math.rad(-0 -2 * math.cos(sine / 26)),math.rad(-20 +2 * math.cos(sine / 26)),math.rad(-4 * math.cos(sine / 26))),.15)
end

end





if Gen == "Boy" then
if MoveTH == true then
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)
end







end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
elseif Anim == "Walk" then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if Gen == "Girl" then

if MoveTH == true then	
Neck.C0 = Neck.C0:lerp(NeckCF * cf(0, 0, 0 + 0.025 * math.cos(sine / 3.5)) * CFrame.Angles(math.rad(0 - 1.5 * math.cos(sine / 3.5)), math.rad(5.5 * math.cos(sine / 7) ), math.rad(-7.5 * math.cos(sine / 7)) + RootPart.RotVelocity.Y / 14), 0.15)
RJ.C0 = RJ.C0:lerp(RootCF * cf(0, 0, -0.075 + 0.025 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * CFrame.Angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(-5 * math.cos(sine / 7)), math.rad(10 * math.cos(sine / 7))), 0.15)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(30 * math.cos(sine / 7)),math.rad(0),math.rad(4 * math.cos(sine / 7))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(-30 * math.cos(sine / 7)),math.rad(0),math.rad(4 * math.cos(sine / 7))),.1)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp( cf(.5, -0.925 - 0.5 * math.cos(sine / 7) / 2,-0.1+ 0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-7.5 - 15 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(-90), math.rad(5 * math.cos(sine / 7))), 0.15)
LH.C0 = LH.C0:lerp( cf(-.5, -0.925 + 0.5 * math.cos(sine / 7) / 2,-0.1+ -0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-7.5 + 15 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(90), math.rad(5 * math.cos(sine / 7))), 0.15)
end	

end


if Gen == "Boy" then
if MoveTH == true then	
Neck.C0 = Neck.C0:lerp(NeckCF * cf(0, 0, 0 + 0.025 * math.cos(sine / 3.5)) * CFrame.Angles(math.rad(0 - 1.5 * math.cos(sine / 3.5)), math.rad(1.5 * math.cos(sine / 7) ), math.rad(-7.5 * math.cos(sine / 7)) + RootPart.RotVelocity.Y / 14), 0.15)
RJ.C0 = RJ.C0:lerp(RootCF * cf(0, 0, -0.075 + 0.025 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * CFrame.Angles(math.rad(3 - 2.5 * math.cos(sine / 3.5)), math.rad(0), math.rad(10 * math.cos(sine / 7))), 0.15)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(30 * math.cos(sine / 7)),math.rad(0),math.rad(-0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 15), 0) * CFrame.Angles(math.rad(-30 * math.cos(sine / 7)),math.rad(0),math.rad(0)),.1)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp( cf(.5, -0.925 - 0.5 * math.cos(sine / 7) / 2,-0.1+ 0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-7.5 - 15 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(-90), math.rad(0)), 0.15)
LH.C0 = LH.C0:lerp( cf(-.5, -0.925 + 0.5 * math.cos(sine / 7) / 2,-0.1+ -0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-7.5 + 15 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(90), math.rad(0)), 0.15)
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
elseif Anim == "Run" then
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if MoveTH == true then	
Neck.C0 = Neck.C0:lerp(NeckCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-8.5 * math.cos(sine / 4)) + RootPart.RotVelocity.Y / 14), .3)
RJ.C0 = RJ.C0:lerp(RootCF * cf(0, 0, -0.1 + 0.15 * math.cos(sine / 3)) * CFrame.Angles(math.rad(15), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(10 * math.cos(sine / 4))), .4)
end
if MoveArms == true then
RS.C0 = RS.C0:lerp(CFrame.new(1.49, 0.62, .3*math.cos(sine / 4)) * CFrame.Angles(math.rad(10+-75*math.cos(sine / 4)), math.rad(5+-35*math.cos(sine / 4)), math.rad(2+10*math.cos(sine / 4))), .3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.49, 0.62, -.3*math.cos(sine / 4)) * CFrame.Angles(math.rad(10+75*math.cos(sine / 4)), math.rad(5+-35*math.cos(sine / 4)), math.rad(-2+10*math.cos(sine / 4))), .3)
end
if MoveLegs == true then
RH.C0 = RH.C0:lerp( cf(.5, -1.0 - -0.3 * math.cos(sine / 4), -.1 - 0.1 * math.cos(sine / 4)) * CFrame.Angles(math.rad(-10 + 50 * math.cos(sine / 4)), math.rad(0), math.rad(2)), .4)
LH.C0 = LH.C0:lerp( cf(-.5, -1.0 + -0.3 * math.cos(sine / 4), -.1 + 0.1 * math.cos(sine / 4)) * CFrame.Angles(math.rad(10 -50 * math.cos(sine / 4)), math.rad(0), math.rad(-2)), .4)
end


--[[

					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.15 * math.cos(sine / 3)) * angles(math.rad(15), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(10 * math.cos(sine / 4))), .5)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-8.5 * math.cos(sine / 4)) + RootPart.RotVelocity.Y / 9), .4)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10+-75*math.cos(sine / 4)), math.rad(5+-35*math.cos(sine / 4)), math.rad(2+10*math.cos(sine / 4))), .4)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10+75*math.cos(sine / 4)), math.rad(5+-35*math.cos(sine / 4)), math.rad(-2+10*math.cos(sine / 4))), .4)
					RH.C0 = clerp(RH.C0, cn(1, -1.0 - -0.3 * math.cos(sine / 4), -.1 - 0.1 * math.cos(sine / 4)) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(-10 + 50 * math.cos(sine / 4))), .5)
					LH.C0 = clerp(LH.C0, cn(-1, -1.0 + -0.3 * math.cos(sine / 4), -.1 + 0.1 * math.cos(sine / 4)) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10 +50 * math.cos(sine / 4))), .5)



--]]







else
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
--                   If anim is an false value so errors will not come
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.8, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(35)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.3, 0.8, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-35)),.05)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(10)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-10)),.05)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end
end

if Humanoid.Health < 0.1 and attack == false then
attack = true 


for i = 1,3,.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.07)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.07)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(1),math.rad(0),math.rad(10)),.07)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-10)),.07)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.07)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),.07)



end
for i = 1,15,.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.07)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -2.5) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),.07)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)),.07)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),.07)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5)),.07)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5)),.07)



end
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
Humanoid.Health = 0
end

end)








mouse.KeyDown:connect(function(k)
if k == "0" and attack == false then	
sprintmode=true	
end
if k == "9" and attack == false then	
if Gen == "Boy" then
Gen = "Girl"
else
Gen = "Boy"	
end
print(Gen.." Anims")
end
if k == "8" and attack == false then	

ToolMode = ToolMode + 1	

if ToolMode >5 then

ToolMode = 1	
end
print("Tool Anim "..ToolMode)
end


		end)
mouse.KeyUp:connect(function(k)
if k == "0" and attack == false then	
sprintmode=false	
end

end)

mouse.KeyDown:connect(function(k)

if k == "t" and attack == false then	
local Song = Instance.new("Sound", Torso)
Song.SoundId  = "http://www.roblox.com/asset/?id=748575516"


Song.Volume = 10

attack= true
--[






	Song:Play()
Humanoid.JumpPower=0
Humanoid.WalkSpeed=0	
for i = 0,3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.05)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.05)

end
for i = 0,3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.05)

end
for i = 0,10,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, .5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(50)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, .5, 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-50)),.05)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.05)

end
for i = 0,12,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)),.02)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.02)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),.02)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(-0)),.02)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.02)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.02)

end
for i = 0,15,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.01)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.02)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.01)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.01)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.02)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.02)

end

for i = 1,2 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, -0) * CFrame.Angles(math.rad(5),math.rad(10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -0) * CFrame.Angles(math.rad(5),math.rad(-10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
end
for i = 0,5.25,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 2, -2.2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.6, -.4) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.6, -.4) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.1)

end
for i = 0,0.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.3) * CFrame.Angles(math.rad(130),math.rad(0),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.6, -.4) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.6, -.4) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-4)),.3)

end
for i = 0,0.2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.4) * CFrame.Angles(math.rad(125),math.rad(0),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.6, -.4) * CFrame.Angles(math.rad(85),math.rad(0),math.rad(4)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.6, -.4) * CFrame.Angles(math.rad(85),math.rad(0),math.rad(-4)),.1)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.3) * CFrame.Angles(math.rad(130),math.rad(0),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.6, -.4) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.6, -.4) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-4)),.3)

end
for i = 1,2 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, -0) * CFrame.Angles(math.rad(-25),math.rad(10),math.rad(180)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.4) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.4) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-4)),.3)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -0) * CFrame.Angles(math.rad(-25),math.rad(-10),math.rad(180)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.3) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.4) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.4) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-4)),.3)

end
end

for i = 0,3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, .5, 0) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(-20)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.3, .5, 0) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(20)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
local Model2 = Instance.new("Model", model)
game:GetService("Debris"):AddItem(Model2, 20)	
local Rleg2 = Instance.new("Part", Model2)
local Lleg2 = Instance.new("Part", Model2)
local NewPantsHum = Instance.new("Humanoid", Model2)
Rleg2.Size = RightLeg.Size
Rleg2.BrickColor = RightLeg.BrickColor
Rleg2.CFrame = RightLeg.CFrame
Rleg2.Name = RightLeg.Name
Lleg2.Size = LeftLeg.Size
Lleg2.BrickColor = LeftLeg.BrickColor
Lleg2.CFrame = LeftLeg.CFrame
Lleg2.Name = LeftLeg.Name

Lleg2.CanCollide = false	
Rleg2.CanCollide = false
coroutine.resume(coroutine.create(function()	
	
	for _,v in pairs(model:GetChildren()) do
		if v:isA("Pants") then
			v:Clone().Parent = Model2 	
		end
		if v:isA("CharacterMesh") then
			v:Clone().Parent = Model2 	
		end		
		
	end

end))

local RLW = Instance.new("Weld")
RLW.Name = "Pants Weld"
RLW.Part0 = RightLeg 
RLW.C0 = cn(0, 0, 0)
RLW.C1 = cn(0, 0, 0) 
RLW.Part1 = Rleg2
RLW.Parent = RightLeg 
local LLW = Instance.new("Weld")
LLW.Name = "Pants Weld"
LLW.Part0 = LeftLeg 
LLW.C0 = cn(0, 0, 0)
LLW.C1 = cn(0, 0, 0) 
LLW.Part1 = Lleg2
LLW.Parent = LeftLeg 
game:GetService("Debris"):AddItem(RLW, 4)	
game:GetService("Debris"):AddItem(LLW, 4)	

local lval = 0
for i = 0,3,0.1 do
	swait()
lval = .5*i/1.5
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0+lval*4) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(-0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -1, -0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -1, -0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)


Rleg2.Size = RightLeg.Size*i
Lleg2.Size = LeftLeg.Size*i
local RLW = Instance.new("Weld")
RLW.Name = "Pants Weld"
RLW.Part0 = RightLeg 
RLW.C0 = cn(0, 0-i/1.51, 0)
RLW.C1 = cn(0, 0, 0) 
RLW.Part1 = Rleg2
RLW.Parent = RightLeg 
local LLW = Instance.new("Weld")
LLW.Name = "Pants Weld"
LLW.Part0 = LeftLeg 
LLW.C0 = cn(0, 0-i/1.51, 0)
LLW.C1 = cn(0, 0, 0) 
LLW.Part1 = Lleg2
LLW.Parent = LeftLeg 
game:GetService("Debris"):AddItem(RLW, 4)	
game:GetService("Debris"):AddItem(LLW, 4)	
end



for i = 1,2 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, -0+lval*4) * CFrame.Angles(math.rad(5),math.rad(10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2+lval*4) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -0+lval*4) * CFrame.Angles(math.rad(5),math.rad(-10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2+lval*4) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
end
for i = 1,6 do
for i = 0,.6,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, 0+lval*4) * CFrame.Angles(math.rad(5),math.rad(10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2+lval*4) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.6,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -0+lval*4) * CFrame.Angles(math.rad(5),math.rad(-10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2+lval*4) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-lval, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
end

for i = 1,2 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, -0) * CFrame.Angles(math.rad(5),math.rad(10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.8,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -0) * CFrame.Angles(math.rad(5),math.rad(-10),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.8, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.8,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.3)

end
end

for i = 0,2.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.5, -0.3) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(4)),.2)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.5, -0.3) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-4)),.2)

end
for i = 0,3.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.1)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end

for i = 1,3 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(1, 0, -1) * CFrame.Angles(math.rad(-0),math.rad(45),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end


for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-1, 0, -1) * CFrame.Angles(math.rad(-0),math.rad(-45),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end

for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(180)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end

end

for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.1)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end
for i = 1,2 do
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(2.3, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(45)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end	
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(2, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(45)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end

for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-2.3, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-45)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-2, 0, -1.5) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-45)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(-45)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.2, .5, -.1) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(45)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(45)),.1)
LH.C0 = LH.C0:lerp(CFrame.new(-.25, .1, -0.3) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-45)),.1)

end

end

for i = 0,3.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.05)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.05)

end

for i = 1,4 do
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75),math.rad(0),math.rad(10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(.5, 0, -0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.3) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.7, -.1) * CFrame.Angles(math.rad(-1),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.7, -.1) * CFrame.Angles(math.rad(-1),math.rad(0),math.rad(-4)),.3)

end
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-75),math.rad(0),math.rad(-10)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-.5, 0, -0) * CFrame.Angles(math.rad(5),math.rad(-5),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10)),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.3) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.7, -.1) * CFrame.Angles(math.rad(-1),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.7, -.1) * CFrame.Angles(math.rad(-1),math.rad(0),math.rad(-4)),.3)

end
end

for i = 1,14 do
for i = 0,.3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(5)),.4)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(.5, 0, -0) * CFrame.Angles(math.rad(20),math.rad(15),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5, -.2) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-10)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(14)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-14)),.3)

end
for i = 0,.1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),.4)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.3) * CFrame.Angles(math.rad(27),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.7, -.1) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(14)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.7, -.1) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-14)),.3)

end
for i = 0,.3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-5)),.4)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-.5, 0, -0) * CFrame.Angles(math.rad(20),math.rad(-15),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(10)),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5, -.2) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(14)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-14)),.3)

end
for i = 0,.1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),.4)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0.3) * CFrame.Angles(math.rad(27),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-10)),.3)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.7, -.1) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(14)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.7, -.1) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-14)),.3)

end
end
--]]
local Paper = Instance.new("Part", model)


Paper.Size = Vector3.new(0.1,1,1.5)
Paper.BrickColor = BrickColor.new("White")
Paper.CFrame = RightArm.CFrame
Paper.Name = "Note"

local PLW = Instance.new("Weld")
PLW.Name = "Shirt Weld"
PLW.Part0 = RightArm 
PLW.C0 = cn(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(-0),math.rad(-45))
PLW.C1 = cn(0, 0, 0) 
PLW.Part1 = Paper
PLW.Parent = RightArm 

game:GetService("Debris"):AddItem(PLW, 1.6)	
game:GetService("Debris"):AddItem(Paper, 3)



for i = 0,8,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),.5)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, .5, -.3) * CFrame.Angles(math.rad(75),math.rad(0),math.rad(-30)),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.5)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.5)

end
PLW.C0 = cn(0, -1, 0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(-0))
for i = 0,2,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(10)),.3)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, .5, -.4) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.5)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.5)

end

							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 10, 0)+Paper.CFrame.lookVector*50, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = Paper})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.1)
for i = 0,3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(-30)),.5)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, -.0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45)),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.5)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.5)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.5)

end


local Model2 = Instance.new("Model", model)
game:GetService("Debris"):AddItem(Model2, 20)	
local Rleg2 = Instance.new("Part", Model2)

local NewShirtHum = Instance.new("Humanoid", Model2)
Rleg2.Size = Torso.Size
Rleg2.BrickColor = Torso.BrickColor
Rleg2.CFrame = Torso.CFrame
Rleg2.Name = Torso.Name

Rleg2.CanCollide = false
coroutine.resume(coroutine.create(function()	
	
	for _,v in pairs(model:GetChildren()) do
		if v:isA("Shirt") then
			v:Clone().Parent = Model2 	
		end
		if v:isA("CharacterMesh") then
			v:Clone().Parent = Model2 	
		end		
		
	end

end))

local RLW = Instance.new("Weld")
RLW.Name = "Shirt Weld"
RLW.Part0 = Torso 
RLW.C0 = cn(0, 0, 0)
RLW.C1 = cn(0, 0, 0) 
RLW.Part1 = Rleg2
RLW.Parent = Torso 
Torso.Transparency = 1
game:GetService("Debris"):AddItem(RLW, 4)	



local TorH = 0

for i = 0,3,0.1 do
	swait()
TorH =  i

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.5)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5+TorH, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5+TorH, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)

Rleg2.Size = Vector3.new(Torso.Size.x,Torso.Size.y+i,Torso.Size.z)
local RLW = Instance.new("Weld")
RLW.Name = "Shirt Weld"
RLW.Part0 = Torso 
RLW.C0 = cn(0, 0+i/2, 0)
RLW.C1 = cn(0, 0, 0) 
RLW.Part1 = Rleg2
RLW.Parent = Torso 
Torso.Transparency = 1
game:GetService("Debris"):AddItem(RLW, 14)
end

for i = 0,1,0.1 do
	swait()
Torso.Transparency = 1

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5+TorH, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5+TorH, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end

for i = 1,4 do
for i = 0,1.7,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(1)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(2),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.1, .5+TorH, -.2) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(-40)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1.7,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-1)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(-2),math.rad(0)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.1, .5+TorH, -.2) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(40)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.1) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-4)),.3)

end
for i = 0,.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-10)),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -.1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -.1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)

end
end
for i = 0,1.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)),.3)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -1.0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(-10)),.3)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -.2, -.2) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -.2, -.2) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-4)),.3)

end
for i = 0,1.5,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0+TorH) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5+TorH, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-0)),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-4)),.3)

end
Torso.Transparency = 0
coroutine.resume(coroutine.create(function()	
Model2:Destroy()	
Torso.Transparency = 0	
	
	
end))
--]]
for i = 0,1,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)

end






coroutine.resume(coroutine.create(function()	
Torso.Transparency = 0
Head.Transparency = 0
RightArm.Transparency = 1
LeftArm.Transparency = 1
RightLeg.Transparency = 1
LeftLeg.Transparency = 1

end))

local TorColor = nil
TorColor=Torso.BrickColor

coroutine.resume(coroutine.create(function()
TorColor = model["Body Colors"].TorsoColor
end))
local NewTorsoMesh= Instance.new("SpecialMesh", Torso)
NewTorsoMesh.MeshId = "rbxassetid://502406430"
NewTorsoMesh.Scale = Vector3.new(3,3,2)




Torso.BrickColor = BrickColor.new("New Yeller")
coroutine.resume(coroutine.create(function()
	
model["Body Colors"].TorsoColor = BrickColor.new("New Yeller")
end))

for i = 0,3,0.1 do
	swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)

end
--Front
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,.5,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
--Front
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,.5,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end

for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,.5,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,.5,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -2, -0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,.5,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
--Left
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(2, -0, -0) * CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end



--Right
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-2, -0, -0) * CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end
for i = 0,1,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end



for i = 0,55,0.1 do
swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, -.5, -1) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0)),.2)	
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, 5+.5 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(i*25)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-0)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.4, .5, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(4)),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -1, -0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-4)),.3)
end



coroutine.resume(coroutine.create(function()
NewTorsoMesh:Destroy()





end))
Torso.BrickColor = TorColor

coroutine.resume(coroutine.create(function()

 model["Body Colors"].TorsoColor = TorColor

end))
coroutine.resume(coroutine.create(function()	
Torso.Transparency = 0
Head.Transparency = 0
RightArm.Transparency = 0
LeftArm.Transparency = 0
RightLeg.Transparency = 0
LeftLeg.Transparency = 0

end))

attack= false	
Humanoid.JumpPower=jp
Humanoid.WalkSpeed=ws	
Song:Destroy()
end



if k == " " and canstoptuant1 == true then	
wait(.3)
 print(1)
stoptuant1 = true	
Humanoid.JumpPower=jp
Humanoid.WalkSpeed=ws		
	
	
end



if k == "b"  and attack == false then
attack = true
Humanoid.JumpPower=0
Humanoid.WalkSpeed=0.01	
local GunPart = Instance.new("Part",model)	
GunPart.Transparency = 0
GunPart.CanCollide = false
GunPart.Anchored = false
GunPart.CFrame = CFrame.new(0,0,0)
GunPart.Size = Vector3.new(0.85,.85,.05)
GunPart.Material = "Neon"
GunPart.BrickColor = BrickColor.new("Shamrock")
local GunPartWeld = Instance.new("Weld",GunPart)	
GunPartWeld.C0 = CFrame.new(0,0,0.99) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
GunPartWeld.Part0 = GunPart
GunPartWeld.Part1 = RightArm


for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)),.15)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end



for i = 1,1 do
for i = 0,1.5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	
	
	
	
	


	coroutine.resume(coroutine.create(function()	

local Glow1 = Color3.new(0,1,0)
local Glow2 = Color3.new(0,1,0)
   local hitray,pos = rayCast(GunPart.Position, GunPart.CFrame.lookVector, 5000, model)

so("138335183", RightArm, 10, .9)

local WalkPart = Instance.new("Part",model)	
WalkPart.Transparency = 1
WalkPart.CanCollide = false
WalkPart.Anchored = true
WalkPart.CFrame = CFrame.new(0,0,0)
WalkPart.Size = Vector3.new(.1,.1,.1)
local WalkPart2 = Instance.new("Part",model)	
WalkPart2.Transparency = 1
WalkPart2.CanCollide = false
WalkPart2.Anchored = true
WalkPart2.CFrame = GunPart.CFrame
WalkPart2.Size = Vector3.new(.1,.1,.1)

local Attach1 = Instance.new("Attachment",WalkPart2)	
local Attach2 = Instance.new("Attachment",WalkPart)	
local Beam1 = Instance.new("Beam",WalkPart)	
Attach2.Position = pos
Attach1.Position = Vector3.new(0,0,0)


Beam1.Texture = "rbxassetid://1134824633"
Beam1.Width0 = .0
Beam1.Width1 = .0
Beam1.FaceCamera = true	
Beam1.Color = ColorSequence.new(Glow1,Glow2)
Beam1.Transparency = NumberSequence.new(0,0)
Beam1.TextureLength = 1
Beam1.Attachment0 = Attach1
Beam1.Attachment1 = Attach2
Beam1.TextureSpeed = 10
Beam1.LightEmission = 1





	local HitModel = nil
	

	
	if hitray ~= nil then
	HitModel = hitray.Parent
	
	if hitray.Parent:isA("Accessory") or hitray.Parent:isA("Hat") then
	HitModel = hitray.Parent.Parent	
	end
	end			
	local HasHum = false
	local ModelCanSlap = false
	local slaped2 = nil
	coroutine.resume(coroutine.create(function()	
	
	for _,v in pairs(HitModel:GetChildren()) do
		if v:isA("Humanoid") then
			v.Parent:BreakJoints()
			v.Health = 0
		end
		
	end

end))



	coroutine.resume(coroutine.create(function()	
if hitray ~= nil then

local HitEffectPart = Instance.new("Part",model)		

HitEffectPart.Transparency = 1
HitEffectPart.CanCollide = false
HitEffectPart.Anchored = true
HitEffectPart.CFrame =CFrame.new(0,0,0)+pos
HitEffectPart.Size = Vector3.new(.05,.05,.05)


local NewParticEffect1=ParticEffect1:Clone()
NewParticEffect1.Parent=	HitEffectPart


game:GetService("Debris"):AddItem(HitEffectPart, 5)	
	coroutine.resume(coroutine.create(function()	
for i = 1,0,-0.1 do
	wait()
	NewParticEffect1.Rate = i*100
end

end))
end

for i = 0,1,0.1 do
	swait(.7)
Beam1.Transparency = NumberSequence.new(i,i)

GunPart.Transparency = i*1.5
GunPart.Size = Vector3.new(0.85-i,.85-i,.05)
local GunPartWeld = Instance.new("Weld",GunPart)	
GunPartWeld.C0 = CFrame.new(0,0,0.99) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
GunPartWeld.Part0 = GunPart
GunPartWeld.Part1 = RightArm
Beam1.Width0 = 1 - i
Beam1.Width1 = 1 - i



end
game:GetService("Debris"):AddItem(GunPart, .4)
game:GetService("Debris"):AddItem(WalkPart2, .4)	
game:GetService("Debris"):AddItem(WalkPart, .4)	
game:GetService("Debris"):AddItem(Attach1, .4)	
game:GetService("Debris"):AddItem(Attach2, .4)	

	end))
	
	
	
	

	
	

	end))
	for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), .2) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	
so("165487479", Torso, 9, 1)	
for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(10)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	

for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-40)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(10)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	

for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-20)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(-10)),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	

for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-20)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.15)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	
for i = 0,.5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-20)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.6- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	
for i = 0,.5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-20)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.4- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end	
for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),.3)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end		
	end
attack = false	
end





if k == "f" then	
   local hitray = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, model)
	local HitModel = nil
	

	
	if hitray ~= nil then
	HitModel = hitray.Parent
	
	if hitray.Parent:isA("Accessory") or hitray.Parent:isA("Hat") then
	HitModel = hitray.Parent.Parent	
	end
	end			
	local HasHum = false
	local ModelCanSlap = false
	local slaped2 = nil
	coroutine.resume(coroutine.create(function()	
	
	for _,v in pairs(HitModel:GetChildren()) do
		if v:isA("Humanoid") then
			HasHum = true	
		end
		if v:isA("BoolValue")then if v.Name == "Slap" and v.Value == false then
			ModelCanSlap= true	
			slaped2 = v
		end	
end
	
		
	end

end))


	
	if canstoptuant1 == false and attack == false then
	

		canstoptuant1 = true
attack = true
Humanoid.JumpPower=0
Humanoid.WalkSpeed=0	

local slaped = Instance.new("BoolValue",model)
slaped.Name = "Slap"
for i = 0,0.5,0.1 do
swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)
	
end


	if HasHum == true and 	ModelCanSlap == true and slaped2 ~= nil  then
	else
	  so("887591869", Torso, 10, 1)		
	
	end

while   slaped.Value == false do


swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(10)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-3+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)
if stoptuant1 == true then
	slaped.Value = true
end

	if HasHum == true and 	ModelCanSlap == true and slaped2 ~= nil  then

	
if HitModel:FindFirstChild("HumanoidRootPart")	 then
	
	
	
local rainto = HitModel.HumanoidRootPart.CFrame.lookVector*0
local rainto2 = CFrame.new(0,0,0) * HitModel.HumanoidRootPart.CFrame.lookVector*3.5
local rainpos = HitModel.HumanoidRootPart.CFrame	
rainto = rainto + rainto2	
	
	

local Laserpart = Instance.new("Part",model)

Laserpart.Size = Vector3.new(.1,.1,.1)
Laserpart.CanCollide = false
Laserpart.Transparency = 1
Laserpart.Anchored = true
Laserpart.CFrame = rainpos* cn(0,0, 0)+rainto	
game:GetService("Debris"):AddItem(Laserpart, .05)	
	
	

	
RootPart.CFrame = Laserpart.CFrame * CFrame.Angles(math.rad(-0),math.rad(180),math.rad(0))
	
end

	slaped.Value = true
	slaped2.Value = true
	
	

	end


end
canstoptuant1 = false
if slaped.Value == true and stoptuant1 == false then
	
	
	
	for i = 0,4,.1 do
swait()
	
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(10)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(170),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-3+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)
end	
	
	
	
for i = 0,2,.1 do
swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(20)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.35, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(210),math.rad(0),math.rad(20- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-3+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)


end	
so("146163534", Torso, 10, 1.3)
for i = 0,2,0.1 do
swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(-60)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(-.05, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(135),math.rad(90),math.rad(0- 1 * math.cos(sine / 20))),.5)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-3+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)


end	

stoptuant1 = false	
else
 stoptuant1 = false
end







attack = false	
	coroutine.resume(coroutine.create(function()	
		slaped:Destoy()
	end))
		


end



















end





if k == "g" and canstoptuant1 == false and attack == false and MenyOpen == false then	
attack = true
canstoptuant1 = true 
MenyOpen = true
local stillwaiting = true
print("Fet Tuant stuff")
while stillwaiting == true  do swait()
Humanoid.JumpPower=0
Humanoid.WalkSpeed=0
 -- canstoptuant1 


Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)


RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)

RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)


if stoptuant1 == true then	
stillwaiting = false	
	
end


end


canstoptuant1 = false
 stoptuant1 = false


if MenyOpen == true then
attack = false
MenyOpen = false
print("Closed Tuant stuff")
end
end

--[[

if k == "" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true


attack = false	
end





for i = 0,6,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end



--]]


-- so("285615370", Torso, 1, 1,17)

if k == "e" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true

for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+2 * math.cos(sine / 20)),math.rad(0),math.rad(-15)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, 0.6- .03 * math.cos(sine / 20), -.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(-50- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
so("666675542", Torso, 10, 1)
for i = 0,3,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+2 * math.cos(sine / 20)),math.rad(0),math.rad(-15)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.2, 0.6- .03 * math.cos(sine / 20), -.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(-50- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,6,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+6 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-23+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.2)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(-3),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.2)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-3),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-3),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end


attack = false	
end



if k == "q" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("145303015", Torso, 10, 1,25)


for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(150+1 * math.cos(sine / 20)),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end




for i = 0,10,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 4)),math.rad(0),math.rad(20)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.4, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(180+5 * math.cos(sine / 3)),math.rad(0),math.rad(-15- 0 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end



for i = 0,3,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,36,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+4 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,10,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-13+4 * math.cos(sine / 3)),math.rad(0),math.rad(30)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,10,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-6+4 * math.cos(sine / 3)),math.rad(0),math.rad(00)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6+4 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,10,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-6+4 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6+4 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6+4 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(-45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end








attack = false	
end


if k == "r" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true

for i = 0,3,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
so("1058417264", Torso, 10, 1)
for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2.5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
--so("593142105", Torso, 10, .8)
for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-8+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(98),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end








attack = false	
end




if k == "p" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("252252871", Torso, 10, 1,9)
-- 10 sec start
for i = 0,3,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0+20 * math.cos(sine / 20*2)),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(1),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(1),math.rad(0),math.rad(-10+ 1 * math.cos(sine / 20))),1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(10.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-10.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, 3.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0+0 * math.cos(sine / 20*2)),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0- 1 * math.cos(sine / 20))),1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(-0+ 1 * math.cos(sine / 20))),1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0.5- .1 * math.cos(sine / 20))),.3)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-0.5+ .1 * math.cos(sine / 20))),.3)

end

for i = 0,5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0+20 * math.cos(sine / 20*2)),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+ 1 * math.cos(sine / 20))),1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(10.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-10.5+ .1 * math.cos(sine / 20))),.15)

end

local Paper = Instance.new("Part", model)

local PaperMesh = Instance.new("SpecialMesh", Paper)
PaperMesh.MeshId = "http://www.roblox.com/asset/?id=40312463"
PaperMesh.TextureId = "http://www.roblox.com/asset/?id=40311968"
PaperMesh.Scale =  Vector3.new(2.2, 2.2, 2.2)
Paper.Size = Vector3.new(1,1,1)
Paper.BrickColor = BrickColor.new("White")
Paper.CFrame = RightArm.CFrame
Paper.Name = "Pie"

local PLW = Instance.new("Weld")
PLW.Name = "Pie Weld"
PLW.Part0 = Head 
PLW.C0 = cn(0, -0, -.7)*CFrame.Angles(math.rad(-10),math.rad(-0),math.rad(-0))
PLW.C1 = cn(0, 0, 0) 
PLW.Part1 = Paper
PLW.Parent = RightArm 

game:GetService("Debris"):AddItem(PLW, 10000)	
game:GetService("Debris"):AddItem(Paper, 6)

for i = 0,6,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0+10 * math.cos(sine / 2)),math.rad(0),math.rad(i*100)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,7,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40+2 * math.cos(sine / 20)),math.rad(0+10 * math.cos(sine / 1)),math.rad(0)),.4)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(i*200),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.4)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-i*200),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.4)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(i*200),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.4)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-i*200),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.4)

end
local explosionRadius = 0 -- Radius of 12 currently
local explosionPressure = 0 -- Really high pressure that packs a punch!	
	local explosion = Instance.new("Explosion",workspace)
	explosion.BlastRadius = explosionRadius
	explosion.BlastPressure = explosionPressure
	explosion.Position = Torso.Position

		coroutine.resume(coroutine.create(function()	
			Paper:Destroy()
		end))
	

	


attack = false	
end





if k == "f" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true

for i = 0,.2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, 100 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),1)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),.13)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,1,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(90)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.6- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
so("140364784", Torso, 10, 1)
for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2.5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)

end
--so("593142105", Torso, 10, .8)
for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-8+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(98),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,1.5,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,4,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-8+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(98),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(5.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-5.5+ .1 * math.cos(sine / 20))),.15)

end





attack = false	
end

if k == "x" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("135359981", Torso, 10, 1.2)
for i = 0,14.8,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0+ 15 * math.cos(sine / 4))),.6)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, .5, -.15 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.6- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(180- 15 * math.cos(sine / 4)),math.rad(0),math.rad(-30- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.3, 0.6- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(180+ 15 * math.cos(sine / 4)),math.rad(0),math.rad(30+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end

if k == "t" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("138110466", Torso, 10, 1)
for i = 0,2,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),.13)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,4,.1 do swait()
Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(3+2 * math.cos(sine / 20)),math.rad(0),math.rad(90)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(180)),.05)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.6- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,4,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end




if k == "c" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("288824798", Torso, 10, 1)


for i = 0,4,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-45- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.3, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end



if k == "z" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("275278234", Torso, 10, 1)


for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 3)),math.rad(0),math.rad(0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0+2 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.55- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(90-5 * math.cos(sine / 2)),math.rad(0),math.rad(-45- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.55- .03 * math.cos(sine / 20), -.2) * CFrame.Angles(math.rad(90+5 * math.cos(sine / 2)),math.rad(0),math.rad(45+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

attack = false	
end


if k == "h" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("135891629", Torso, 10, 1)


for i = 0,7,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+1 * math.cos(sine / 20)),math.rad(0),math.rad(-20)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.5- .03 * math.cos(sine / 20), -.1) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(-45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.6- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(175),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.6- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(175),math.rad(0),math.rad(-45+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(175),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(175),math.rad(0),math.rad(-45+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.1)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-5- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(5+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end


if k == "v" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
so("290082048", Torso, 10, 1)


for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.2)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.2)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10+2 * math.cos(sine / 5)),math.rad(0),math.rad(0)),.3)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, -.5, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.2)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(100),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.2)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

attack = false	
end
if k == "u" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
so("150611842", Torso, 10, 1)


for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15+1 * math.cos(sine / 20)),math.rad(0),math.rad(10)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,0.5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(105),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,1.0,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-10)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end

if k == "b" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true
for i = 0,1,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
so("141349049", Torso, 10, 1)


for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(10- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,0.5,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(105),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,2.0,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end




for i = 0,3.0,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(45+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,3.0,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.15)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(91),math.rad(0),math.rad(45- 1 * math.cos(sine / 20))),.1)
LS.C0 = LS.C0:lerp(CFrame.new(-1.25, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(91),math.rad(0),math.rad(-45+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end






if k == "y" and  MenyOpen == true and canstoptuant1 == true then
MenyOpen = false
stoptuant1 = true

so("738087836", Torso, 10, 1)

for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end

for i = 0,2,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
for i = 0,3,.1 do swait()

Neck.C0 = Neck.C0:lerp(NeckCF*CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10+1 * math.cos(sine / 20)),math.rad(0),math.rad(-0)),.08)
RJ.C0 = RJ.C0:lerp(RootCF*CFrame.new(0, 0, -.1 +-.03 * math.cos(sine / 20)) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(0)),.15)
RS.C0 = RS.C0:lerp(CFrame.new(1.5, 0.5- .03 * math.cos(sine / 20), .2) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(1- 1 * math.cos(sine / 20))),.05)
LS.C0 = LS.C0:lerp(CFrame.new(-1.5, 0.5- .03 * math.cos(sine / 20), .2) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-1+ 1 * math.cos(sine / 20))),.1)
RH.C0 = RH.C0:lerp(CFrame.new(.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(2.5- .1 * math.cos(sine / 20))),.15)
LH.C0 = LH.C0:lerp(CFrame.new(-.5, -0.95+ .03 * math.cos(sine / 20), 0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(-2.5+ .1 * math.cos(sine / 20))),.15)

end
attack = false	
end








end)
