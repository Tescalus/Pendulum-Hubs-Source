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
local c = game:GetService("Players").LocalPlayer.Character["Cartoony Rainbow Rifle"].Handle
c.Anchored = false
local cRot = 3.55
game:GetService("RunService").RenderStepped:Connect(function(dt)
    cRot = cRot + 0*dt
    c.Anchored = true
    c.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0,-1,-.2) * CFrame.Angles(math.rad(-285), 359.7, -cRot)
    c.Velocity = Vector3.new(0,0,0)
    c.Anchored = false
end)
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
local hat = Align(char['Cartoony Rainbow Rifle'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(35),math.rad(70),60)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
--RPK-74 Script by DMS don't LEAK it's rarity is nice c:
local RPKTHing = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "So many of ur face"
o1 = Instance.new("Tool")
o1.Name = "RPK-74"
o1.Parent = mas
o1.GripForward = Vector3.new(-0.308719009, -0, -0.951153278)
o1.GripPos = Vector3.new(0, -0.300000012, 0.200000003)
o1.GripRight = Vector3.new(0.951153278, 0, -0.308719009)
o2 = Instance.new("NumberValue")
o2.Name = "Left"
o2.Parent = o1
o2.Value = 30
o3 = Instance.new("NumberValue")
o3.Name = "Recoil"
o3.Parent = o1
o3.Value = 0
o4 = Instance.new("Script")
o4.Parent = o3
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
while true do
wait(.2)
if script.Parent.Value > 3 then
script.Parent.Value = script.Parent.Value - 1
end
end

end,o4)
end))
o5 = Instance.new("NumberValue")
o5.Name = "MaxAmmo"
o5.Parent = o1
o5.Value = 50
o6 = Instance.new("NumberValue")
o6.Name = "Ammo"
o6.Parent = o1
o6.Value = 50
o7 = Instance.new("LocalScript")
o7.Name = "Crouch"
o7.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end,o7)
end))
o8 = Instance.new("NumberValue")
o8.Name = "StoredAmmo"
o8.Parent = o1
o8.Value = math.huge
o9 = Instance.new("LocalScript")
o9.Name = "Shooter"
o9.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
Tool = script.Parent

local arms = nil
local torso = nil
local weld33 = nil -- right arm
local weld55 = nil -- left arm
local welds = {}
local reloading = false
local firing = false
local canreload = true
local canshoot = true
local damage = 0

function ReloadSequence()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.1), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.4), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.6), math.rad(-16), 0.04)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.9), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.2), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.9), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.35)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.315, -1.26)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.17, 0.63)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.99, 0.9)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.2)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.28, -1.12)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.04, 0.56)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.88, 0.8)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.05)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.245, -0.98)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.91, 0.49)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.77, 0.7)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.9)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.21, -0.84)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.78, 0.42)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.66, 0.6)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.75)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.175, -0.7)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.65, 0.35)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.55, 0.5)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.6)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.14, -0.56)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.52, 0.28)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.44, 0.4)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.45)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.105, -0.42)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.39, 0.21)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.33, 0.3)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.3)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.7, -0.28)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.26, 0.14)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.22, 0.2)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.15)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.035, -0.14)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.13, 0.07)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.11, 0.1)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Handle.M2:play()
Tool.Handle.M2.TimePosition = .8
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92.2), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.9, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.8, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
end

function ReloadSequence2()
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Handle.M1:play()
Tool.Mag.Transparency = 1
local mag = Tool.Mag:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag2.Transparency = 1
local mag = Tool.Mag2:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag3.Transparency = 1
local mag = Tool.Mag3:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
Tool.Mag4.Transparency = 1
local mag = Tool.Mag4:clone()
mag.Parent = game.Workspace
mag.CanCollide = false
mag.Transparency = 0
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.1), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.4), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1.2, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1.4, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.6), math.rad(-16), 0.04)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.7), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1.6, math.rad(-0))
wait(.04)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-93.9), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -1, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.2), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, -0.65, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.4, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1.2, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.9), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(320), 1, math.rad(-0))
Tool.Mag.Transparency = 0
Tool.Mag2.Transparency = 0
Tool.Mag3.Transparency = 0
Tool.Mag4.Transparency = 0
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.35)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.315, -1.26)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.17, 0.63)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.99, 0.9)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(315), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.2)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.28, -1.12)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -1.04, 0.56)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.88, 0.8)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(310), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -1.05)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.245, -0.98)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.91, 0.49)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.77, 0.7)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.03)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(305), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.9)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.21, -0.84)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.78, 0.42)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.66, 0.6)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(300), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.75)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.175, -0.7)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.65, 0.35)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.55, 0.5)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-95), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(295), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.6)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.14, -0.56)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.52, 0.28)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.44, 0.4)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(290), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.45)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.105, -0.42)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.39, 0.21)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.33, 0.3)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(285), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.3)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.7, -0.28)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.26, 0.14)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.22, 0.2)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.02)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(280), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, -0.15)
Tool.Mag2.Mesh.Offset = Vector3.new(0, -0.035, -0.14)
Tool.Mag3.Mesh.Offset = Vector3.new(0, -0.13, 0.07)
Tool.Mag4.Mesh.Offset = Vector3.new(0, -0.11, 0.1)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-94.5), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Mag.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Mag4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.Handle.M2:play()
Tool.Handle.M2.TimePosition = .8
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-92.2), math.rad(-16), 0.01)
weld55.C1 = CFrame.new(0.9, 0.05, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), -0.2)
weld55.C1 = CFrame.new(0.9, 0.05, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.4)
weld55.C1 = CFrame.new(0.9, 0.05, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.6)
weld55.C1 = CFrame.new(0.875, 0.05, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.8)
weld55.C1 = CFrame.new(0.85, -0.25, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1)
weld55.C1 = CFrame.new(0.825, -0.45, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.8, -0.65, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
wait(.09)
weld33.C1 = CFrame.new(-0.75, -0.62, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.75, -0.62, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.Handle.M3:play()
Tool.A1.Mesh.Offset = Vector3.new(0, 0.75, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.75, 0)
wait(.09)
weld33.C1 = CFrame.new(-0.75, -0.61, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.85, -0.68, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.6, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.6, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.61, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.95, -0.74, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.45, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.45, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(1.05, -0.8, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(1.15, -0.83, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.15, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.15, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1.2)
weld55.C1 = CFrame.new(0.825, -0.8, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 1, math.rad(-0))
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -1)
weld55.C1 = CFrame.new(0.825, -0.5, 0.75) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.9, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.8)
weld55.C1 = CFrame.new(0.85, -0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.8, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, -0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.6)
weld55.C1 = CFrame.new(0.875, 0.1, 0.65) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.7, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.05) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), -0.4)
weld55.C1 = CFrame.new(0.9, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.6, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-91.1), math.rad(-16), -0.2)
weld55.C1 = CFrame.new(0.9, 1.2, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(275), 0.5, math.rad(-0))
wait(.06)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
end

function Reload()
Tool.Left.Value = Tool.Ammo.Value
	if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 then
		reloading = true
		script.Parent.Ammo.Value = 0
		ReloadChoose()
      script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value + script.Parent.Left.Value
		if script.Parent.StoredAmmo.Value >= script.Parent.MaxAmmo.Value then
			script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value - script.Parent.MaxAmmo.Value
			script.Parent.Ammo.Value = script.Parent.MaxAmmo.Value
         script.Parent.Recoil.Value = 0
		elseif script.Parent.StoredAmmo.Value < script.Parent.MaxAmmo.Value and script.Parent.StoredAmmo.Value >= 1 then
         script.Parent.Ammo.Value = script.Parent.StoredAmmo.Value 
			script.Parent.StoredAmmo.Value = 0
			script.Parent.Recoil.Value = 0
		end
		reloading = false
	end
end

function ReloadChoose()
   if script.Parent.Left.Value == 0 then
      ReloadSequence2()
   elseif script.Parent.Left.Value >= 1 then
      ReloadSequence()
   end
end

function Choosy()
   if script.Parent.Ammo.Value == 0 then
      Thing1()
   elseif script.Parent.Ammo.Value >= 1 then
      Thing2()
   end
end

function Thing2()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, 0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.81, 0.97) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
Tool.Flash.Transparency = .8
Tool.A1.Mesh.Offset = Vector3.new(0, 0.35, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.35, 0)
wait(0.04)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Transparency = 1
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
end

function Thing1()
cam = game.Workspace.CurrentCamera
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, 0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.65, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.81, 0.97) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)
Tool.Flash.Transparency = .8
wait(0.04)
local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
weld33.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
weld55.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
Tool.Flash.Transparency = 1
Tool.Handle.Empty:play()
end

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Tool.Larm:clone()
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new("Light orange") 
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Tool.Rarm:clone()
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new("Light orange") 
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.45, 0.85, 1) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.75, -0.6, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
welds[2] = weld2
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function fire(v)

	Tool.Handle.Fire:play()
	

	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

        

	local spawnPos = vCharacter.PrimaryPart.Position
	


	spawnPos  = spawnPos + (v * 8)

	missile.Position = spawnPos
	missile.Size = Vector3.new(1,1,1)
	missile.Velocity = v * 500 
	missile.BrickColor = BrickColor.new(26)
	missile.Shape = 0
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Bullet"
	missile.Elasticity = 0
	missile.Reflectance = 0
	missile.Friction = .9
   missile.CanCollide = false

	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:getMass() * 196,0)
	force.Parent = missile

	local mesh = Instance.new("SpecialMesh")
	mesh.Scale = Vector3.new(.06,.06,.06)
	mesh.MeshType = "Sphere"
	mesh.Parent = missile


function Blow(Hit)
	if Hit.Name == "Head" then
		Hit.Anchored= false Hit.Size = Vector3.new(2, 0.2, 1)
		Hit.BrickColor = BrickColor.new("Maroon")
		o1 = Instance.new("Sound")
		o1.Parent = Hit
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()
	end
		if Hit.Name == "Right Arm" then
			for i=1,4 do
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5, .5, .5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)

end
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				if Hit.Name == "Right Leg" then
					for i=1,4 do
								o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
					end

		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				
				if Hit.Name == "Left Leg" then
										for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
							for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
								if Hit.Name == "Torso" then
							for i=1,8 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end


		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

								end
								end
function onTouched(part)
     local h = part.Parent:findFirstChild("Humanoid")
     if h~=nil then
               h.Health = h.Health - 0
               wait(.1)
               h.Health = h.Health - 0
               wait(.1)

       end
end

missile.Touched:connect(onTouched)
missile.Touched:connect(Blow)


	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile
	
   missile.Parent = game.Workspace

   cam = game.Workspace.CurrentCamera
   local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.013, -0.013, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, -0.7, 0.25) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-16), 0)
   weld55.C1 = CFrame.new(-0.45, 0.77, 0.94) * CFrame.fromEulerAnglesXYZ(math.rad(310), 0.1, math.rad(-94))
	Tool.Flash.Mesh.Scale = Vector3.new(1.727, 1.7, 1.727)
	Tool.Flash.Transparency = .5
   Tool.A1.Mesh.Offset = Vector3.new(0, 0.7, 0)
   Tool.A2.Mesh.Offset = Vector3.new(0, 0.7, 0)
	wait(0.04)
   Choosy()
end

function KeyDownFunctions(key)
	if key == "r" then
		Reload()
	end
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = game.Workspace.non
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	local ammo = script.Parent.Ammo
	local maxammo = script.Parent.MaxAmmo
	firing = true
	while firing == true do
		wait()
		if reloading == false and humanoid.Health >= 1 then
			if ammo.Value >= 1 then
				ammo.Value = ammo.Value - 1
				local targetPos = humanoid.TargetPoint
				local lookAt = (targetPos - character.Head.Position).unit
				if script.Parent.Recoil.Value < 0 then
					script.Parent.Recoil.Value = script.Parent.Recoil.Value + 0
				end
				fire(lookAt)
			else
				Reload()
				break
			end
		elseif reloading == false and humanoid.Health < 1 then
			Tool:remove()
		end
	end
	Tool.Enabled = true
end

function nofiar(mouse)
firing = false
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=49912389"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() nofiar(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)

end,o9)
end))
o10 = Instance.new("LocalScript")
o10.Name = "BackupWeld"
o10.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o10)
end))
o11 = Instance.new("LocalScript")
o11.Name = "GuiScript"
o11.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()

local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o11)
end))
o12 = Instance.new("LocalScript")
o12.Name = "GuiScript(backup)"
o12.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()


local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.15, 0, 0.825, 0)
	Text.Size = UDim2.new(0, -60, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o12)
end))
o13 = Instance.new("SpecialMesh")
o13.Name = "Larm"
o13.Parent = o1
o13.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
o13.MeshType = Enum.MeshType.FileMesh
o14 = Instance.new("SpecialMesh")
o14.Name = "Rarm"
o14.Parent = o1
o14.Scale = Vector3.new(0.99000001, 0.99000001, 0.99000001)
o14.MeshType = Enum.MeshType.FileMesh
o15 = Instance.new("LocalScript")
o15.Name = "Zoom Script"
o15.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
RPKTHing(function()
local Tool = script.Parent
a=false
cam=nil
wut = Tool.Parent



function onEquipped(mouse2)
	mouse2.KeyDown:connect(onkeyDown)
	mouse = mouse2
end
function onkeyDown(key) 
	if key == "q" then
	if not a then 
		cam=game.Workspace.CurrentCamera:clone()
		cam.Parent=game.Workspace
		game.Workspace.CurrentCamera.CameraSubject = Tool.Zoom
		game.Workspace.CurrentCamera.CameraType=1
		Tool.Recoil.Value = 0
		Tool.ZoomedInXD.Value = true
		Tool.Parent.Humanoid.WalkSpeed = 10
		a=true
	else
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character
		game.Workspace.CurrentCamera:Remove()
		game.Workspace.CurrentCamera=cam
		Tool.ZoomedInXD.Value = false
		Tool.Recoil.Value = 0
		Tool.Parent.Humanoid.WalkSpeed = 16
		a=false
	end
end 
end




script.Parent.Equipped:connect(onEquipped)

end,o15)
end))
o16 = Instance.new("BoolValue")
o16.Name = "ZoomedInXD"
o16.Parent = o1
o17 = Instance.new("Part")
o17.Name = "Flash"
o17.Parent = o1
o17.Material = Enum.Material.SmoothPlastic
o17.BrickColor = BrickColor.new("Bright orange")
o17.Transparency = 1
o17.Position = Vector3.new(-113.539955, 1.41896844, 64.0666275)
o17.Rotation = Vector3.new(90.0000076, -5.12203633e-006, 180)
o17.Anchored = true
o17.CFrame = CFrame.new(-113.539955, 1.41896844, 64.0666275, -1, -1.50995419e-007, -8.93963943e-008, 8.93963801e-008, 1.04308192e-007, -1, 1.50995433e-007, -1, -1.04308178e-007)
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(0.216666669, 0.516666651, 0.216666669)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.854902, 0.521569, 0.254902)
o18 = Instance.new("SpecialMesh")
o18.Parent = o17
o18.Scale = Vector3.new(2, 1.70000005, 2)
o18.MeshType = Enum.MeshType.Sphere
o19 = Instance.new("Part")
o19.Name = "Mag4"
o19.Parent = o1
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Neon orange")
o19.Position = Vector3.new(-113.539955, 0.229444504, 60.9571648)
o19.Rotation = Vector3.new(118.099487, 3.31188382e-010, 180)
o19.Anchored = true
o19.CFrame = CFrame.new(-113.539955, 0.229444504, 60.9571648, -1, -5.07987836e-012, 5.78032761e-012, -8.24089842e-012, 0.471000105, -0.882123709, 1.93443677e-012, -0.882123709, -0.471000105)
o19.FormFactor = Enum.FormFactor.Custom
o19.Size = Vector3.new(0.200000003, 0.349999994, 0.333333343)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.835294, 0.45098, 0.239216)
o20 = Instance.new("BlockMesh")
o20.Parent = o19
o20.Scale = Vector3.new(0.833333373, 1, 1)
o21 = Instance.new("Part")
o21.Parent = o1
o21.Material = Enum.Material.SmoothPlastic
o21.BrickColor = BrickColor.new("Really black")
o21.Position = Vector3.new(-113.564957, 1.57731104, 61.0416603)
o21.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o21.Anchored = true
o21.CFrame = CFrame.new(-113.564957, 1.57731104, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o22 = Instance.new("CylinderMesh")
o22.Parent = o21
o22.Scale = Vector3.new(0.666666687, 0.333333343, 0.666666687)
o23 = Instance.new("Part")
o23.Parent = o1
o23.Material = Enum.Material.SmoothPlastic
o23.BrickColor = BrickColor.new("Neon orange")
o23.Position = Vector3.new(-113.539955, 1.48563385, 61.6083183)
o23.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o23.Anchored = true
o23.CFrame = CFrame.new(-113.539955, 1.48563385, 61.6083183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o23.Color = Color3.new(0.835294, 0.45098, 0.239216)
o24 = Instance.new("BlockMesh")
o24.Parent = o23
o24.Scale = Vector3.new(0.916666687, 0.333333343, 0.25)
o25 = Instance.new("Part")
o25.Parent = o1
o25.Material = Enum.Material.SmoothPlastic
o25.BrickColor = BrickColor.new("Really black")
o25.Position = Vector3.new(-113.639954, 1.42504084, 59.9866371)
o25.Rotation = Vector3.new(-79.9999847, -4.91393648e-010, 90)
o25.Anchored = true
o25.CFrame = CFrame.new(-113.639954, 1.42504084, 59.9866371, 7.54961107e-008, -1, -8.5764373e-012, 0.173648521, 1.31013387e-008, 0.984807789, -0.984807789, -7.43506305e-008, 0.173648506)
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(0.333333343, 0.200000003, 0.200000003)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o26 = Instance.new("BlockMesh")
o26.Parent = o25
o26.Scale = Vector3.new(1, 0.0833333358, 0.25)
o27 = Instance.new("Part")
o27.Parent = o1
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Really black")
o27.Position = Vector3.new(-113.539955, 1.54396498, 59.6333504)
o27.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o27.Anchored = true
o27.CFrame = CFrame.new(-113.539955, 1.54396498, 59.6333504, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o27.FormFactor = Enum.FormFactor.Custom
o27.Size = Vector3.new(0.200000003, 0.316666663, 0.200000003)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28 = Instance.new("BlockMesh")
o28.Parent = o27
o28.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o29 = Instance.new("Part")
o29.Parent = o1
o29.Material = Enum.Material.SmoothPlastic
o29.BrickColor = BrickColor.new("Really black")
o29.Position = Vector3.new(-113.503296, 1.67397296, 63.7049255)
o29.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o29.Anchored = true
o29.CFrame = CFrame.new(-113.503296, 1.67397296, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o29.FormFactor = Enum.FormFactor.Custom
o29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o30 = Instance.new("BlockMesh")
o30.Parent = o29
o30.Scale = Vector3.new(0.0416666679, 0.333333343, 0.116666667)
o31 = Instance.new("Part")
o31.Name = "A1"
o31.Parent = o1
o31.Material = Enum.Material.SmoothPlastic
o31.Position = Vector3.new(-113.594955, 1.53563416, 60.4333305)
o31.Rotation = Vector3.new(90.0000534, 5.02050989e-006, -180)
o31.Anchored = true
o31.CFrame = CFrame.new(-113.594955, 1.53563416, 60.4333305, -1, 1.50991113e-007, 8.76244286e-008, -8.76243078e-008, 8.19564661e-007, -1, -1.50991184e-007, -1, -8.19564661e-007)
o31.FormFactor = Enum.FormFactor.Custom
o31.Size = Vector3.new(0.200000003, 0.483333319, 0.200000003)
o31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32 = Instance.new("BlockMesh")
o32.Parent = o31
o32.Scale = Vector3.new(0.0833333358, 1, 0.583333313)
o33 = Instance.new("Part")
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Neon orange")
o33.Position = Vector3.new(-113.539955, 1.50229883, 61.1333237)
o33.Rotation = Vector3.new(-90, -5.40231693e-010, -180)
o33.Anchored = true
o33.CFrame = CFrame.new(-113.539955, 1.50229883, 61.1333237, -1, 2.13871629e-012, -9.42882144e-012, -9.42882057e-012, -1.19209389e-007, 1, 2.1387152e-012, 1, 1.19209389e-007)
o33.FormFactor = Enum.FormFactor.Custom
o33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.835294, 0.45098, 0.239216)
o34 = Instance.new("SpecialMesh")
o34.Parent = o33
o34.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o34.MeshType = Enum.MeshType.Wedge
o35 = Instance.new("Part")
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Really black")
o35.Position = Vector3.new(-113.589958, 1.68949139, 60.6720581)
o35.Rotation = Vector3.new(92.0000153, 5.39824214e-006, -180)
o35.Anchored = true
o35.CFrame = CFrame.new(-113.589958, 1.68949139, 60.6720581, -1, 1.50990815e-007, 9.42170999e-008, -8.88901752e-008, 0.0348996483, -0.999390841, -1.54186978e-007, -0.999390841, -0.0348996483)
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o36 = Instance.new("BlockMesh")
o36.Parent = o35
o36.Scale = Vector3.new(0.333333343, 0.0833333358, 0.166666672)
o37 = Instance.new("Part")
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Really black")
o37.Position = Vector3.new(-113.639954, 1.31208479, 59.9074783)
o37.Rotation = Vector3.new(-79.9999847, 1.02127977e-007, 180)
o37.Anchored = true
o37.CFrame = CFrame.new(-113.639954, 1.31208479, 59.9074783, -1, -1.50989592e-007, 1.78246939e-009, 2.79745027e-008, -0.173648521, 0.984807789, -1.48386178e-007, 0.984807789, 0.173648506)
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38 = Instance.new("SpecialMesh")
o38.Parent = o37
o38.Scale = Vector3.new(0.0833333358, 1, 0.333333343)
o38.MeshType = Enum.MeshType.Wedge
o39 = Instance.new("Part")
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Neon orange")
o39.Position = Vector3.new(-113.539955, 1.2939744, 60.8916626)
o39.Rotation = Vector3.new(-14.9999905, 9.48099853e-007, 90)
o39.Anchored = true
o39.CFrame = CFrame.new(-113.539955, 1.2939744, 60.8916626, -4.37199184e-008, -1, 1.65474638e-008, 0.965925932, -3.79474017e-008, 0.258818895, -0.258818895, 2.72991603e-008, 0.965925932)
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.835294, 0.45098, 0.239216)
o40 = Instance.new("CylinderMesh")
o40.Parent = o39
o40.Scale = Vector3.new(0.666666687, 0.916666687, 0.666666687)
o41 = Instance.new("Part")
o41.Name = "Mag"
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Neon orange")
o41.Position = Vector3.new(-113.539955, 1.07309115, 60.3711433)
o41.Rotation = Vector3.new(-96.9999847, -5.9200047e-006, 180)
o41.Anchored = true
o41.CFrame = CFrame.new(-113.539955, 1.07309115, 60.3711433, -1, -1.50992278e-007, -1.03323572e-007, -1.20954695e-007, 0.12186902, 0.99254626, -1.37274853e-007, 0.99254626, -0.12186902)
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 0.333333343, 0.50999999)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.835294, 0.45098, 0.239216)
o42 = Instance.new("BlockMesh")
o42.Parent = o41
o42.Scale = Vector3.new(0.833333373, 1, 1)
o43 = Instance.new("Part")
o43.Name = "A2"
o43.Parent = o1
o43.Material = Enum.Material.SmoothPlastic
o43.Position = Vector3.new(-113.686623, 1.50230181, 60.6583405)
o43.Rotation = Vector3.new(90.0000076, 6.21862455e-008, -180)
o43.Anchored = true
o43.CFrame = CFrame.new(-113.686623, 1.50230181, 60.6583405, -1, 1.50991127e-007, 1.0853547e-009, -1.08533893e-009, 1.04308192e-007, -1, -1.50991127e-007, -1, -1.04308192e-007)
o43.FormFactor = Enum.FormFactor.Custom
o43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44 = Instance.new("BlockMesh")
o44.Parent = o43
o44.Scale = Vector3.new(0.833333373, 0.166666672, 0.25)
o45 = Instance.new("Part")
o45.Name = "Handle"
o45.Parent = o1
o45.Material = Enum.Material.SmoothPlastic
o45.BrickColor = BrickColor.new("Really black")
o45.Transparency = 1
o45.Position = Vector3.new(-113.539955, 1.01230443, 59.8150177)
o45.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o45.Anchored = true
o45.CFrame = CFrame.new(-113.539955, 1.01230443, 59.8150177, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o45.FormFactor = Enum.FormFactor.Custom
o45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46 = Instance.new("BlockMesh")
o46.Parent = o45
o46.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o47 = Instance.new("Sound")
o47.Name = "Empty"
o47.Parent = o45
o47.SoundId = "rbxasset://sounds//clickfast.wav"
o47.Volume = 1
o48 = Instance.new("Sound")
o48.Name = "M1"
o48.Parent = o45
o48.Pitch = 1
o48.SoundId = "http://roblox.com/asset/?id=233931573"
o48.Volume = 1
o49 = Instance.new("Sound")
o49.Name = "M2"
o49.Pitch = 1.7
o49.Parent = o45
o49.SoundId = "http://roblox.com/asset/?id=147323220"
o49.Volume = 1
o50 = Instance.new("Sound")
o50.Name = "Fire"
o50.Parent = o45
o50.Pitch = 1.25
o50.Volume = 4
o50.SoundId = "http://roblox.com/asset/?id=258193800"
o50.PlayOnRemove = true
o51 = Instance.new("Sound")
o51.Name = "M3"
o51.Parent = o45
o51.SoundId = "http://roblox.com/asset/?id=152206337"
o51.Volume = 1
o51.PlayOnRemove = true
o53 = Instance.new("Part")
o53.Name = "Mag2"
o53.Parent = o1
o53.Material = Enum.Material.SmoothPlastic
o53.BrickColor = BrickColor.new("Neon orange")
o53.Position = Vector3.new(-113.539955, 0.701820016, 60.4757118)
o53.Rotation = Vector3.new(-117.412865, -4.27430313e-010, 180)
o53.Anchored = true
o53.CFrame = CFrame.new(-113.539955, 0.701820016, 60.4757118, -1, -1.888052e-012, -7.46006642e-012, -8.24089842e-012, 0.460395187, 0.88770467, 1.93443677e-012, 0.88770467, -0.460395187)
o53.FormFactor = Enum.FormFactor.Custom
o53.Size = Vector3.new(0.200000003, 0.333333343, 0.400000006)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.835294, 0.45098, 0.239216)
o54 = Instance.new("BlockMesh")
o54.Parent = o53
o54.Scale = Vector3.new(0.833333373, 1, 1)
o55 = Instance.new("Part")
o55.Name = "Mag3"
o55.Parent = o1
o55.Material = Enum.Material.SmoothPlastic
o55.BrickColor = BrickColor.new("Neon orange")
o55.Position = Vector3.new(-113.539955, 0.422861636, 60.6890869)
o55.Rotation = Vector3.new(133.099686, 2.44571335e-010, 180)
o55.Anchored = true
o55.CFrame = CFrame.new(-113.539955, 0.422861636, 60.6890869, -1, -6.40285958e-012, 4.26857508e-012, -8.24089842e-012, 0.683264196, -0.730159819, 1.93443677e-012, -0.730159819, -0.683264196)
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.200000003, 0.449999988, 0.333333343)
o55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.835294, 0.45098, 0.239216)
o56 = Instance.new("BlockMesh")
o56.Parent = o55
o56.Scale = Vector3.new(0.833333373, 1, 1)
o57 = Instance.new("Part")
o57.Parent = o1
o57.Material = Enum.Material.SmoothPlastic
o57.BrickColor = BrickColor.new("Really black")
o57.Position = Vector3.new(-113.539955, 1.20230353, 59.8150177)
o57.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o57.Anchored = true
o57.CFrame = CFrame.new(-113.539955, 1.20230353, 59.8150177, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o57.FormFactor = Enum.FormFactor.Custom
o57.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58 = Instance.new("BlockMesh")
o58.Parent = o57
o58.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o59 = Instance.new("Sound")
o59.Name = "Empty"
o59.Parent = o57
o59.SoundId = "rbxasset://sounds//clickfast.wav"
o59.Volume = 1
o60 = Instance.new("Sound")
o60.Name = "M1"
o60.Parent = o57
o60.Pitch = 1
o60.SoundId = "http://roblox.com/asset/?id=233931573"
o60.Volume = 1
o61 = Instance.new("Sound")
o61.Name = "M2"
o61.Parent = o57
o61.Pitch = 1.7
o61.SoundId = "http://roblox.com/asset/?id=147323220"
o61.Volume = 1
o62 = Instance.new("Sound")
o62.Name = "Fire"
o62.Parent = o57
o62.Pitch = 1.25
o62.SoundId = "http://roblox.com/asset/?id=258193800"
o62.PlayOnRemove = true
o62.Volume = 4
o63 = Instance.new("Sound")
o63.Name = "M3"
o63.Parent = o57
o63.SoundId = "http://roblox.com/asset/?id=10209881"
o63.Volume = 1
o63.PlayOnRemove = true
o64 = Instance.new("Part")
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Neon orange")
o64.Position = Vector3.new(-113.539955, 1.50229979, 61.2999878)
o64.Rotation = Vector3.new(-89.9999924, -5.01429398e-010, 1.22437713e-010)
o64.Anchored = true
o64.CFrame = CFrame.new(-113.539955, 1.50229979, 61.2999878, 1, -2.13694123e-012, -8.75159407e-012, 8.75159493e-012, 2.38418806e-007, 1, -2.13693885e-012, -1, 2.38418806e-007)
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.835294, 0.45098, 0.239216)
o65 = Instance.new("SpecialMesh")
o65.Parent = o64
o65.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o65.MeshType = Enum.MeshType.Wedge
o66 = Instance.new("Part")
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Neon orange")
o66.Position = Vector3.new(-113.5373, 0.891278505, 58.2646141)
o66.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o66.Anchored = true
o66.CFrame = CFrame.new(-113.5373, 0.891278505, 58.2646141, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o66.CanCollide = false
o66.FormFactor = Enum.FormFactor.Symmetric
o66.Size = Vector3.new(1, 1, 1)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.835294, 0.45098, 0.239216)
o67 = Instance.new("SpecialMesh")
o67.Parent = o66
o67.Scale = Vector3.new(0.192307696, 0.0384615399, 0.653846145)
o67.MeshType = Enum.MeshType.Wedge
o68 = Instance.new("Part")
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Really black")
o68.Position = Vector3.new(-113.539955, 1.49396372, 62.1166382)
o68.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o68.Anchored = true
o68.CFrame = CFrame.new(-113.539955, 1.49396372, 62.1166382, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69 = Instance.new("BlockMesh")
o69.Parent = o68
o69.Scale = Vector3.new(0.333333343, 0.0833333358, 0.666666687)
o70 = Instance.new("Part")
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Neon orange")
o70.Position = Vector3.new(-113.539955, 1.11064351, 59.6583519)
o70.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o70.Anchored = true
o70.CFrame = CFrame.new(-113.539955, 1.11064351, 59.6583519, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.835294, 0.45098, 0.239216)
o71 = Instance.new("BlockMesh")
o71.Parent = o70
o71.Scale = Vector3.new(0.916666687, 0.5, 0.333333343)
o72 = Instance.new("Part")
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Neon orange")
o72.Position = Vector3.new(-113.539955, 1.50229979, 61.5666542)
o72.Rotation = Vector3.new(-89.9999924, -4.79929207e-010, 1.22844804e-010)
o72.Anchored = true
o72.CFrame = CFrame.new(-113.539955, 1.50229979, 61.5666542, 1, -2.14404623e-012, -8.37634476e-012, 8.37634562e-012, 2.23517574e-007, 1, -2.14404427e-012, -1, 2.23517588e-007)
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.835294, 0.45098, 0.239216)
o73 = Instance.new("SpecialMesh")
o73.Parent = o72
o73.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o73.MeshType = Enum.MeshType.Wedge
o74 = Instance.new("Part")
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Really black")
o74.Position = Vector3.new(-113.539955, 1.06898797, 59.508358)
o74.Rotation = Vector3.new(-89.9999924, -5.20843257e-010, 1.22437671e-010)
o74.Anchored = true
o74.CFrame = CFrame.new(-113.539955, 1.06898797, 59.508358, 1, -2.13694058e-012, -9.0904298e-012, 9.0904298e-012, 1.63912873e-007, 1, -2.13693885e-012, -1, 1.63912887e-007)
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75 = Instance.new("BlockMesh")
o75.Parent = o74
o75.Scale = Vector3.new(0.916666687, 1, 0.75)
o76 = Instance.new("Part")
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Neon orange")
o76.Position = Vector3.new(-113.539955, 1.48563385, 61.3499832)
o76.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o76.Anchored = true
o76.CFrame = CFrame.new(-113.539955, 1.48563385, 61.3499832, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.835294, 0.45098, 0.239216)
o77 = Instance.new("BlockMesh")
o77.Parent = o76
o77.Scale = Vector3.new(0.916666687, 0.416666687, 0.25)
o78 = Instance.new("Part")
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Really black")
o78.Position = Vector3.new(-113.539955, 1.09897149, 59.8350143)
o78.Rotation = Vector3.new(-119.999992, 5.93669711e-006, -1.54809596e-010)
o78.Anchored = true
o78.CFrame = CFrame.new(-113.539955, 1.09897149, 59.8350143, 1, 2.7019372e-012, 1.03614909e-007, -8.97317989e-008, -0.499999911, 0.866025507, 5.18097814e-008, -0.866025507, -0.499999911)
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o79 = Instance.new("SpecialMesh")
o79.Parent = o78
o79.Scale = Vector3.new(0.166666672, 0.166666672, 0.416666687)
o79.MeshType = Enum.MeshType.Wedge
o80 = Instance.new("Part")
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Neon orange")
o80.Position = Vector3.new(-113.5373, 1.04512715, 58.2646141)
o80.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o80.Anchored = true
o80.CFrame = CFrame.new(-113.5373, 1.04512715, 58.2646141, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o80.CanCollide = false
o80.FormFactor = Enum.FormFactor.Symmetric
o80.Size = Vector3.new(1, 1, 1)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.835294, 0.45098, 0.239216)
o81 = Instance.new("BlockMesh")
o81.Parent = o80
o81.Scale = Vector3.new(0.192307696, 0.269230783, 0.653846145)
o82 = Instance.new("Part")
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Neon orange")
o82.Position = Vector3.new(-113.539955, 1.50229883, 61.3999901)
o82.Rotation = Vector3.new(-90, -5.61757252e-010, -180)
o82.Anchored = true
o82.CFrame = CFrame.new(-113.539955, 1.50229883, 61.3999901, -1, 2.14582128e-012, -9.80451397e-012, -9.80451397e-012, -1.04308192e-007, 1, 2.14582041e-012, 1, 1.04308192e-007)
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.835294, 0.45098, 0.239216)
o83 = Instance.new("SpecialMesh")
o83.Parent = o82
o83.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o83.MeshType = Enum.MeshType.Wedge
o84 = Instance.new("Part")
o84.Parent = o1
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Really black")
o84.Position = Vector3.new(-113.539955, 1.6573081, 60.983326)
o84.Rotation = Vector3.new(90.0000076, 5.29337331e-006, -180)
o84.Anchored = true
o84.CFrame = CFrame.new(-113.539955, 1.6573081, 60.983326, -1, 1.50991141e-007, 9.23867916e-008, -9.2386756e-008, 1.93715223e-007, -1, -1.50991141e-007, -1, -1.93715223e-007)
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o85 = Instance.new("BlockMesh")
o85.Parent = o84
o85.Scale = Vector3.new(0.666666687, 0.25, 0.25)
o86 = Instance.new("Part")
o86.Parent = o1
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Dark stone grey")
o86.Position = Vector3.new(-113.539955, 1.61896086, 61.0416603)
o86.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o86.Anchored = true
o86.CFrame = CFrame.new(-113.539955, 1.61896086, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.388235, 0.372549, 0.384314)
o87 = Instance.new("BlockMesh")
o87.Parent = o86
o87.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o88 = Instance.new("Part")
o88.Parent = o1
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Really black")
o88.Position = Vector3.new(-113.569962, 1.69896829, 63.7049255)
o88.Rotation = Vector3.new(-90, 24.9996357, -2.59040348e-007)
o88.Anchored = true
o88.CFrame = CFrame.new(-113.569962, 1.69896829, 63.7049255, 0.906310558, 4.09752721e-009, 0.422612488, -0.422612458, 1.3219902e-007, 0.906310558, -5.21553183e-008, -1, 1.21545028e-007)
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o89 = Instance.new("BlockMesh")
o89.Parent = o88
o89.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o90 = Instance.new("Part")
o90.Parent = o1
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Really black")
o90.Position = Vector3.new(-113.639954, 1.38396943, 59.6916847)
o90.Rotation = Vector3.new(-89.9999924, -5.20461618e-010, 90)
o90.Anchored = true
o90.CFrame = CFrame.new(-113.639954, 1.38396943, 59.6916847, 7.54973826e-008, -1, -9.08376846e-012, 2.23517574e-007, -9.06689307e-012, 1, -1, -7.54973826e-008, 2.23517588e-007)
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o91 = Instance.new("CylinderMesh")
o91.Parent = o90
o91.Scale = Vector3.new(0.666666687, 0.0833333358, 0.666666687)
o92 = Instance.new("Part")
o92.Parent = o1
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Really black")
o92.Position = Vector3.new(-113.48996, 1.68949139, 60.6720581)
o92.Rotation = Vector3.new(92.0000153, 5.39824214e-006, -180)
o92.Anchored = true
o92.CFrame = CFrame.new(-113.48996, 1.68949139, 60.6720581, -1, 1.50990815e-007, 9.42170999e-008, -8.88901752e-008, 0.0348996483, -0.999390841, -1.54186978e-007, -0.999390841, -0.0348996483)
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93 = Instance.new("BlockMesh")
o93.Parent = o92
o93.Scale = Vector3.new(0.333333343, 0.0833333358, 0.166666672)
o94 = Instance.new("Part")
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Really black")
o94.Position = Vector3.new(-113.539955, 1.52947271, 63.6085854)
o94.Rotation = Vector3.new(-59.9999962, -3.89844712e-010, 3.66455755e-010)
o94.Anchored = true
o94.CFrame = CFrame.new(-113.539955, 1.52947271, 63.6085854, 1, -6.39585954e-012, -6.8040738e-012, 9.0904298e-012, 0.500000119, 0.866025388, -2.13693885e-012, -0.866025388, 0.500000119)
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o95 = Instance.new("BlockMesh")
o95.Parent = o94
o95.Scale = Vector3.new(0.333333343, 0.0833333358, 0.583333313)
o96 = Instance.new("Part")
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Neon orange")
o96.Position = Vector3.new(-113.5373, 1.04512715, 58.7069168)
o96.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o96.Anchored = true
o96.CFrame = CFrame.new(-113.5373, 1.04512715, 58.7069168, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o96.CanCollide = false
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 1, 1)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.835294, 0.45098, 0.239216)
o97 = Instance.new("SpecialMesh")
o97.Parent = o96
o97.Scale = Vector3.new(0.192307696, 0.269230783, 0.230769232)
o97.MeshType = Enum.MeshType.Wedge
o98 = Instance.new("Part")
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Neon orange")
o98.Position = Vector3.new(-113.5373, 1.23742986, 58.3800011)
o98.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o98.Anchored = true
o98.CFrame = CFrame.new(-113.5373, 1.23742986, 58.3800011, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o98.CanCollide = false
o98.FormFactor = Enum.FormFactor.Symmetric
o98.Size = Vector3.new(1, 1, 1)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.835294, 0.45098, 0.239216)
o99 = Instance.new("BlockMesh")
o99.Parent = o98
o99.Scale = Vector3.new(0.192307696, 0.115384616, 0.884615362)
o100 = Instance.new("Part")
o100.Parent = o1
o100.Material = Enum.Material.SmoothPlastic
o100.BrickColor = BrickColor.new("Dark stone grey")
o100.Position = Vector3.new(-113.539955, 1.33564579, 59.3583641)
o100.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o100.Anchored = true
o100.CFrame = CFrame.new(-113.539955, 1.33564579, 59.3583641, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.200000003, 0.200000003, 0.216666669)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.388235, 0.372549, 0.384314)
o101 = Instance.new("BlockMesh")
o101.Parent = o100
o101.Scale = Vector3.new(0.833333373, 0.5, 1)
o102 = Instance.new("Part")
o102.Parent = o1
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Really black")
o102.Position = Vector3.new(-113.539955, 1.41896677, 61.7166557)
o102.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o102.Anchored = true
o102.CFrame = CFrame.new(-113.539955, 1.41896677, 61.7166557, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103 = Instance.new("CylinderMesh")
o103.Parent = o102
o103.Scale = Vector3.new(0.583333313, 0.25, 0.583333313)
o104 = Instance.new("Part")
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Really black")
o104.Position = Vector3.new(-113.539955, 1.41896856, 63.2416458)
o104.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o104.Anchored = true
o104.CFrame = CFrame.new(-113.539955, 1.41896856, 63.2416458, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o104.FormFactor = Enum.FormFactor.Custom
o104.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105 = Instance.new("CylinderMesh")
o105.Parent = o104
o105.Scale = Vector3.new(0.5, 1, 0.5)
o106 = Instance.new("Part")
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Really black")
o106.Position = Vector3.new(-113.539955, 1.37730253, 63.4383125)
o106.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o106.Anchored = true
o106.CFrame = CFrame.new(-113.539955, 1.37730253, 63.4383125, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o106.FormFactor = Enum.FormFactor.Custom
o106.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o107 = Instance.new("BlockMesh")
o107.Parent = o106
o107.Scale = Vector3.new(0.166666672, 0.5, 0.333333343)
o108 = Instance.new("Part")
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Really black")
o108.Position = Vector3.new(-113.539955, 1.18563902, 60.0650139)
o108.Rotation = Vector3.new(-89.9999924, -5.91999378e-006, 180)
o108.Anchored = true
o108.CFrame = CFrame.new(-113.539955, 1.18563902, 60.0650139, -1, -1.50991156e-007, -1.0332338e-007, -1.03323345e-007, -2.23517574e-007, 1, -1.5099117e-007, 1, 2.23517574e-007)
o108.FormFactor = Enum.FormFactor.Custom
o108.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o109 = Instance.new("BlockMesh")
o109.Parent = o108
o109.Scale = Vector3.new(0.833333373, 0.5, 0.916666687)
o110 = Instance.new("Part")
o110.Parent = o1
o110.Material = Enum.Material.SmoothPlastic
o110.BrickColor = BrickColor.new("Neon orange")
o110.Position = Vector3.new(-113.514954, 1.57730913, 61.6666527)
o110.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o110.Anchored = true
o110.CFrame = CFrame.new(-113.514954, 1.57730913, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o110.FormFactor = Enum.FormFactor.Custom
o110.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.835294, 0.45098, 0.239216)
o111 = Instance.new("CylinderMesh")
o111.Parent = o110
o111.Scale = Vector3.new(0.666666687, 0.25, 0.666666687)
o112 = Instance.new("Part")
o112.Parent = o1
o112.Material = Enum.Material.SmoothPlastic
o112.BrickColor = BrickColor.new("Really black")
o112.Position = Vector3.new(-113.539955, 1.56063223, 61.9083138)
o112.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o112.Anchored = true
o112.CFrame = CFrame.new(-113.539955, 1.56063223, 61.9083138, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o112.FormFactor = Enum.FormFactor.Custom
o112.Size = Vector3.new(0.200000003, 0.433333337, 0.200000003)
o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o113 = Instance.new("CylinderMesh")
o113.Parent = o112
o113.Scale = Vector3.new(0.333333343, 1, 0.333333343)
o114 = Instance.new("Part")
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Really black")
o114.Position = Vector3.new(-113.539955, 1.20231974, 59.5666847)
o114.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o114.Anchored = true
o114.CFrame = CFrame.new(-113.539955, 1.20231974, 59.5666847, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o114.FormFactor = Enum.FormFactor.Custom
o114.Size = Vector3.new(0.200000003, 0.316666663, 0.200000003)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o115 = Instance.new("BlockMesh")
o115.Parent = o114
o115.Scale = Vector3.new(0.833333373, 1, 0.583333313)
o116 = Instance.new("Part")
o116.Parent = o1
o116.Material = Enum.Material.SmoothPlastic
o116.BrickColor = BrickColor.new("Neon orange")
o116.Position = Vector3.new(-113.539955, 1.43563318, 61.6666527)
o116.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o116.Anchored = true
o116.CFrame = CFrame.new(-113.539955, 1.43563318, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o116.FormFactor = Enum.FormFactor.Custom
o116.Size = Vector3.new(0.200000003, 0.200000003, 0.283333331)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.835294, 0.45098, 0.239216)
o117 = Instance.new("BlockMesh")
o117.Parent = o116
o117.Scale = Vector3.new(0.916666687, 0.25, 1)
o118 = Instance.new("Part")
o118.Parent = o1
o118.Material = Enum.Material.SmoothPlastic
o118.BrickColor = BrickColor.new("Really black")
o118.Position = Vector3.new(-113.48996, 1.67825508, 60.750042)
o118.Rotation = Vector3.new(-87.9999847, -2.80858876e-006, 90)
o118.Anchored = true
o118.CFrame = CFrame.new(-113.48996, 1.67825508, 60.750042, -4.37141736e-008, -1, -4.90191212e-008, 0.0348996781, -5.0514867e-008, 0.999390841, -0.999390841, 4.197679e-008, 0.0348996781)
o118.FormFactor = Enum.FormFactor.Custom
o118.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o119 = Instance.new("CylinderMesh")
o119.Parent = o118
o119.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o120 = Instance.new("Part")
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Neon orange")
o120.Position = Vector3.new(-113.539955, 1.61896086, 61.3583183)
o120.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o120.Anchored = true
o120.CFrame = CFrame.new(-113.539955, 1.61896086, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o120.FormFactor = Enum.FormFactor.Custom
o120.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.835294, 0.45098, 0.239216)
o121 = Instance.new("BlockMesh")
o121.Parent = o120
o121.Scale = Vector3.new(0.25, 1, 0.25)
o122 = Instance.new("Part")
o122.Parent = o1
o122.Material = Enum.Material.SmoothPlastic
o122.BrickColor = BrickColor.new("Neon orange")
o122.Position = Vector3.new(-113.514954, 1.57731104, 61.3583183)
o122.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o122.Anchored = true
o122.CFrame = CFrame.new(-113.514954, 1.57731104, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o122.FormFactor = Enum.FormFactor.Custom
o122.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.835294, 0.45098, 0.239216)
o123 = Instance.new("CylinderMesh")
o123.Parent = o122
o123.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o124 = Instance.new("Part")
o124.Parent = o1
o124.Material = Enum.Material.SmoothPlastic
o124.BrickColor = BrickColor.new("Really black")
o124.Position = Vector3.new(-113.539955, 1.51565146, 59.4416924)
o124.Rotation = Vector3.new(112.000015, 5.29329009e-006, -180)
o124.Anchored = true
o124.CFrame = CFrame.new(-113.539955, 1.51565146, 59.4416924, -1, 1.50987916e-007, 9.2385342e-008, -2.90970945e-008, 0.374606788, -0.927183807, -1.74601695e-007, -0.927183807, -0.374606788)
o124.FormFactor = Enum.FormFactor.Custom
o124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o124.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o125 = Instance.new("BlockMesh")
o125.Parent = o124
o125.Scale = Vector3.new(0.333333343, 0.333333343, 0.25)
o126 = Instance.new("Part")
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Neon orange")
o126.Position = Vector3.new(-113.539955, 1.46897125, 61.1333237)
o126.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o126.Anchored = true
o126.CFrame = CFrame.new(-113.539955, 1.46897125, 61.1333237, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o126.FormFactor = Enum.FormFactor.Custom
o126.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.835294, 0.45098, 0.239216)
o127 = Instance.new("SpecialMesh")
o127.Parent = o126
o127.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o127.MeshType = Enum.MeshType.Wedge
o128 = Instance.new("Part")
o128.Parent = o1
o128.Material = Enum.Material.SmoothPlastic
o128.BrickColor = BrickColor.new("Really black")
o128.Position = Vector3.new(-113.539955, 1.34397781, 62.5949593)
o128.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o128.Anchored = true
o128.CFrame = CFrame.new(-113.539955, 1.34397781, 62.5949593, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o128.FormFactor = Enum.FormFactor.Custom
o128.Size = Vector3.new(0.200000003, 1.80666661, 0.200000003)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129 = Instance.new("CylinderMesh")
o129.Parent = o128
o129.Scale = Vector3.new(0.166666672, 1, 0.166666672)
o130 = Instance.new("Part")
o130.Parent = o1
o130.Material = Enum.Material.SmoothPlastic
o130.BrickColor = BrickColor.new("Neon orange")
o130.Position = Vector3.new(-113.5373, 1.39128041, 58.5915298)
o130.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o130.Anchored = true
o130.CFrame = CFrame.new(-113.5373, 1.39128041, 58.5915298, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o130.CanCollide = false
o130.FormFactor = Enum.FormFactor.Symmetric
o130.Size = Vector3.new(1, 1, 2)
o130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o130.Color = Color3.new(0.835294, 0.45098, 0.239216)
o131 = Instance.new("SpecialMesh")
o131.Parent = o130
o131.Scale = Vector3.new(0.192307696, 0.115384616, 0.769230783)
o131.MeshType = Enum.MeshType.Wedge
o132 = Instance.new("Part")
o132.Parent = o1
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Really black")
o132.Position = Vector3.new(-113.539955, 1.24397194, 60.1083488)
o132.Rotation = Vector3.new(-90, -5.21097721e-010, -180)
o132.Anchored = true
o132.CFrame = CFrame.new(-113.539955, 1.24397194, 60.1083488, -1, 2.13516336e-012, -9.09487069e-012, -9.09487069e-012, -7.45058344e-008, 1, 2.13516271e-012, 1, 7.45058344e-008)
o132.FormFactor = Enum.FormFactor.Custom
o132.Size = Vector3.new(0.200000003, 1.43333328, 0.200000003)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o133 = Instance.new("SpecialMesh")
o133.Parent = o132
o133.Scale = Vector3.new(0.916666687, 1, 0.333333343)
o133.MeshType = Enum.MeshType.Wedge
o134 = Instance.new("Part")
o134.Parent = o1
o134.Material = Enum.Material.SmoothPlastic
o134.BrickColor = BrickColor.new("Neon orange")
o134.Position = Vector3.new(-113.539955, 1.32259893, 61.0306549)
o134.Rotation = Vector3.new(-14.9999905, 9.48099853e-007, 90)
o134.Anchored = true
o134.CFrame = CFrame.new(-113.539955, 1.32259893, 61.0306549, -4.37199184e-008, -1, 1.65474638e-008, 0.965925932, -3.79474017e-008, 0.258818895, -0.258818895, 2.72991603e-008, 0.965925932)
o134.FormFactor = Enum.FormFactor.Custom
o134.Size = Vector3.new(0.200000003, 0.200000003, 0.283333331)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.835294, 0.45098, 0.239216)
o135 = Instance.new("BlockMesh")
o135.Parent = o134
o135.Scale = Vector3.new(0.583333313, 0.916666687, 1)
o136 = Instance.new("Part")
o136.Parent = o1
o136.Material = Enum.Material.SmoothPlastic
o136.BrickColor = BrickColor.new("Really black")
o136.Position = Vector3.new(-113.539955, 1.46064508, 63.6715851)
o136.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o136.Anchored = true
o136.CFrame = CFrame.new(-113.539955, 1.46064508, 63.6715851, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o136.FormFactor = Enum.FormFactor.Custom
o136.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o137 = Instance.new("BlockMesh")
o137.Parent = o136
o137.Scale = Vector3.new(0.333333343, 1, 0.25)
o138 = Instance.new("Part")
o138.Parent = o1
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Really black")
o138.Position = Vector3.new(-113.556625, 1.56064665, 60.2416763)
o138.Rotation = Vector3.new(-90, -5.00939223e-006, 180)
o138.Anchored = true
o138.CFrame = CFrame.new(-113.556625, 1.56064665, 60.2416763, -1, -8.74191883e-008, -8.74303865e-008, -8.74303652e-008, -1.34110536e-007, 1, -8.74191954e-008, 1, 1.34110536e-007)
o138.FormFactor = Enum.FormFactor.Custom
o138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o139 = Instance.new("SpecialMesh")
o139.Parent = o138
o139.Scale = Vector3.new(0.5, 0.166666672, 0.333333343)
o139.MeshType = Enum.MeshType.Wedge
o140 = Instance.new("Part")
o140.Parent = o1
o140.Material = Enum.Material.SmoothPlastic
o140.BrickColor = BrickColor.new("Really black")
o140.Position = Vector3.new(-113.539955, 1.46897125, 62.2333107)
o140.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o140.Anchored = true
o140.CFrame = CFrame.new(-113.539955, 1.46897125, 62.2333107, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o140.FormFactor = Enum.FormFactor.Custom
o140.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o141 = Instance.new("SpecialMesh")
o141.Parent = o140
o141.Scale = Vector3.new(0.333333343, 0.583333313, 0.25)
o141.MeshType = Enum.MeshType.Wedge
o142 = Instance.new("Part")
o142.Parent = o1
o142.Material = Enum.Material.SmoothPlastic
o142.BrickColor = BrickColor.new("Really black")
o142.Position = Vector3.new(-113.556625, 1.60230219, 60.4500046)
o142.Rotation = Vector3.new(90.0000076, 5.20843257e-010, 180)
o142.Anchored = true
o142.CFrame = CFrame.new(-113.556625, 1.60230219, 60.4500046, -1, -2.13694058e-012, 9.0904298e-012, -9.0904298e-012, 1.63912873e-007, -1, 2.13693885e-012, -1, -1.63912887e-007)
o142.FormFactor = Enum.FormFactor.Custom
o142.Size = Vector3.new(0.200000003, 0.449999988, 0.200000003)
o142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o142.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o143 = Instance.new("BlockMesh")
o143.Parent = o142
o143.Scale = Vector3.new(0.5, 1, 0.0833333358)
o144 = Instance.new("Part")
o144.Parent = o1
o144.Material = Enum.Material.SmoothPlastic
o144.BrickColor = BrickColor.new("Neon orange")
o144.Position = Vector3.new(-113.5373, 1.23742986, 59.0915222)
o144.Rotation = Vector3.new(-180, -2.50457879e-006, -4.2913037e-010)
o144.Anchored = true
o144.CFrame = CFrame.new(-113.5373, 1.23742986, 59.0915222, 1, 7.489738e-012, -4.37131469e-008, 8.24089842e-012, -0.999991596, 4.37110295e-008, -4.3712955e-008, -4.37110295e-008, -0.999991596)
o144.CanCollide = false
o144.FormFactor = Enum.FormFactor.Symmetric
o144.Size = Vector3.new(1, 1, 1)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.835294, 0.45098, 0.239216)
o145 = Instance.new("SpecialMesh")
o145.Parent = o144
o145.Scale = Vector3.new(0.192307696, 0.115384616, 0.538461566)
o145.MeshType = Enum.MeshType.Wedge
o146 = Instance.new("Part")
o146.Parent = o1
o146.Material = Enum.Material.SmoothPlastic
o146.BrickColor = BrickColor.new("Neon orange")
o146.Position = Vector3.new(-113.564957, 1.57730913, 61.6666527)
o146.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o146.Anchored = true
o146.CFrame = CFrame.new(-113.564957, 1.57730913, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o146.FormFactor = Enum.FormFactor.Custom
o146.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.835294, 0.45098, 0.239216)
o147 = Instance.new("CylinderMesh")
o147.Parent = o146
o147.Scale = Vector3.new(0.666666687, 0.25, 0.666666687)
o148 = Instance.new("Part")
o148.Parent = o1
o148.Material = Enum.Material.SmoothPlastic
o148.BrickColor = BrickColor.new("Neon orange")
o148.Position = Vector3.new(-113.539955, 1.37730265, 61.2333298)
o148.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o148.Anchored = true
o148.CFrame = CFrame.new(-113.539955, 1.37730265, 61.2333298, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o148.FormFactor = Enum.FormFactor.Custom
o148.Size = Vector3.new(0.200000003, 0.816666663, 0.200000003)
o148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o148.Color = Color3.new(0.835294, 0.45098, 0.239216)
o149 = Instance.new("BlockMesh")
o149.Parent = o148
o149.Scale = Vector3.new(0.916666687, 1, 0.833333373)
o150 = Instance.new("Part")
o150.Parent = o1
o150.Material = Enum.Material.SmoothPlastic
o150.BrickColor = BrickColor.new("Really black")
o150.Position = Vector3.new(-113.539955, 1.52730358, 63.7299118)
o150.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o150.Anchored = true
o150.CFrame = CFrame.new(-113.539955, 1.52730358, 63.7299118, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o150.FormFactor = Enum.FormFactor.Custom
o150.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o150.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o150.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o151 = Instance.new("BlockMesh")
o151.Parent = o150
o151.Scale = Vector3.new(0.333333343, 0.0833333358, 0.416666687)
o152 = Instance.new("Part")
o152.Parent = o1
o152.Material = Enum.Material.SmoothPlastic
o152.BrickColor = BrickColor.new("Really black")
o152.Position = Vector3.new(-113.539955, 1.56564903, 60.8416634)
o152.Rotation = Vector3.new(90.0000076, 5.20458232e-010, -180)
o152.Anchored = true
o152.CFrame = CFrame.new(-113.539955, 1.56564903, 60.8416634, -1, 1.50991141e-007, 9.08370948e-012, -9.05445944e-012, 1.93715223e-007, -1, -1.50991127e-007, -1, -1.93715238e-007)
o152.FormFactor = Enum.FormFactor.Custom
o152.Size = Vector3.new(0.200000003, 0.333333343, 0.200000003)
o152.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o152.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o152.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o152.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o152.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o152.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o152.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o153 = Instance.new("BlockMesh")
o153.Parent = o152
o153.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o154 = Instance.new("Part")
o154.Parent = o1
o154.Material = Enum.Material.SmoothPlastic
o154.BrickColor = BrickColor.new("Really black")
o154.Position = Vector3.new(-113.539955, 1.02732003, 59.8650208)
o154.Rotation = Vector3.new(-89.9999924, -5.91999378e-006, 180)
o154.Anchored = true
o154.CFrame = CFrame.new(-113.539955, 1.02732003, 59.8650208, -1, -1.50991156e-007, -1.0332338e-007, -1.03323345e-007, -2.23517574e-007, 1, -1.5099117e-007, 1, 2.23517574e-007)
o154.FormFactor = Enum.FormFactor.Custom
o154.Size = Vector3.new(0.200000003, 0.233333334, 0.200000003)
o154.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o154.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o154.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o154.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o154.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o154.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o154.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o155 = Instance.new("BlockMesh")
o155.Parent = o154
o155.Scale = Vector3.new(0.833333373, 1, 0.166666672)
o156 = Instance.new("Part")
o156.Parent = o1
o156.Material = Enum.Material.SmoothPlastic
o156.BrickColor = BrickColor.new("Really black")
o156.Position = Vector3.new(-113.539955, 1.54396701, 59.4333611)
o156.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o156.Anchored = true
o156.CFrame = CFrame.new(-113.539955, 1.54396701, 59.4333611, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o156.FormFactor = Enum.FormFactor.Custom
o156.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o156.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o156.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o157 = Instance.new("SpecialMesh")
o157.Parent = o156
o157.Scale = Vector3.new(0.666666687, 0.416666687, 0.666666687)
o157.MeshType = Enum.MeshType.Wedge
o158 = Instance.new("Part")
o158.Parent = o1
o158.Material = Enum.Material.SmoothPlastic
o158.BrickColor = BrickColor.new("Really black")
o158.Position = Vector3.new(-113.539955, 1.67565107, 60.8250008)
o158.Rotation = Vector3.new(92.0000153, 5.24563802e-006, -180)
o158.Anchored = true
o158.CFrame = CFrame.new(-113.539955, 1.67565107, 60.8250008, -1, 1.50990815e-007, 9.15536518e-008, -8.62283471e-008, 0.0348996483, -0.999390841, -1.54094025e-007, -0.999390841, -0.0348996483)
o158.FormFactor = Enum.FormFactor.Custom
o158.Size = Vector3.new(0.200000003, 0.300000012, 0.200000003)
o158.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o158.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o158.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o158.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o158.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o158.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o158.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o159 = Instance.new("BlockMesh")
o159.Parent = o158
o159.Scale = Vector3.new(0.5, 1, 0.0833333358)
o160 = Instance.new("Part")
o160.Parent = o1
o160.Material = Enum.Material.SmoothPlastic
o160.BrickColor = BrickColor.new("Really black")
o160.Position = Vector3.new(-113.539955, 1.48563671, 60.9749908)
o160.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o160.Anchored = true
o160.CFrame = CFrame.new(-113.539955, 1.48563671, 60.9749908, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o160.FormFactor = Enum.FormFactor.Custom
o160.Size = Vector3.new(0.200000003, 0.300000012, 0.200000003)
o160.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o160.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o160.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o160.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o160.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o160.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o160.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o161 = Instance.new("BlockMesh")
o161.Parent = o160
o161.Scale = Vector3.new(0.916666687, 1, 0.25)
o162 = Instance.new("Part")
o162.Parent = o1
o162.Material = Enum.Material.SmoothPlastic
o162.BrickColor = BrickColor.new("Really black")
o162.Position = Vector3.new(-113.569962, 1.64896476, 63.7049255)
o162.Rotation = Vector3.new(-90, -24.9996357, 2.5930288e-007)
o162.Anchored = true
o162.CFrame = CFrame.new(-113.569962, 1.64896476, 63.7049255, 0.906310558, -4.10167988e-009, -0.422612488, 0.422612488, 1.3219875e-007, 0.906310558, 5.21514458e-008, -1, 1.21546535e-007)
o162.FormFactor = Enum.FormFactor.Custom
o162.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o162.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o162.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o162.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o162.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o162.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o162.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o162.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o163 = Instance.new("BlockMesh")
o163.Parent = o162
o163.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o164 = Instance.new("Part")
o164.Parent = o1
o164.Material = Enum.Material.SmoothPlastic
o164.BrickColor = BrickColor.new("Really black")
o164.Position = Vector3.new(-113.539955, 1.12770569, 59.7194443)
o164.Rotation = Vector3.new(-20.9999943, 7.03878584e-007, 5.00940268e-006)
o164.Anchored = true
o164.CFrame = CFrame.new(-113.539955, 1.12770569, 59.7194443, 1, -8.74305712e-008, 1.22849988e-008, 7.72209248e-008, 0.933580458, 0.358367831, -4.28013394e-008, -0.358367831, 0.933580458)
o164.FormFactor = Enum.FormFactor.Custom
o164.Size = Vector3.new(0.200000003, 0.233333334, 0.200000003)
o164.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o164.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o164.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o164.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o164.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o164.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o164.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o165 = Instance.new("BlockMesh")
o165.Parent = o164
o165.Scale = Vector3.new(0.833333373, 1, 0.166666672)
o166 = Instance.new("Part")
o166.Parent = o1
o166.Material = Enum.Material.SmoothPlastic
o166.BrickColor = BrickColor.new("Neon orange")
o166.Position = Vector3.new(-113.539955, 1.46897221, 61.5666542)
o166.Rotation = Vector3.new(90.0000153, 5.00935221e-006, 180)
o166.Anchored = true
o166.CFrame = CFrame.new(-113.539955, 1.46897221, 61.5666542, -1, -2.1435733e-012, 8.74296902e-008, -8.74296902e-008, 2.38418806e-007, -1, 2.12272821e-012, -1, -2.38418806e-007)
o166.FormFactor = Enum.FormFactor.Custom
o166.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o166.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o166.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o166.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o166.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o166.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o166.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o166.Color = Color3.new(0.835294, 0.45098, 0.239216)
o167 = Instance.new("SpecialMesh")
o167.Parent = o166
o167.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o167.MeshType = Enum.MeshType.Wedge
o168 = Instance.new("Part")
o168.Parent = o1
o168.Material = Enum.Material.SmoothPlastic
o168.BrickColor = BrickColor.new("Neon orange")
o168.Position = Vector3.new(-113.539955, 1.46897125, 61.3999939)
o168.Rotation = Vector3.new(90.0000076, -5.00841907e-006, -1.11534677e-010)
o168.Anchored = true
o168.CFrame = CFrame.new(-113.539955, 1.46897125, 61.3999939, 1, 1.94664727e-012, -8.74134045e-008, -8.74119266e-008, -1.1920865e-007, -0.999991596, -2.13294204e-012, 0.999991596, -1.1920865e-007)
o168.FormFactor = Enum.FormFactor.Custom
o168.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o168.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o168.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o168.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o168.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o168.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o168.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o168.Color = Color3.new(0.835294, 0.45098, 0.239216)
o169 = Instance.new("SpecialMesh")
o169.Parent = o168
o169.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o169.MeshType = Enum.MeshType.Wedge
o170 = Instance.new("Part")
o170.Parent = o1
o170.Material = Enum.Material.SmoothPlastic
o170.BrickColor = BrickColor.new("Really black")
o170.Position = Vector3.new(-113.576622, 1.67397296, 63.7049255)
o170.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o170.Anchored = true
o170.CFrame = CFrame.new(-113.576622, 1.67397296, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o170.FormFactor = Enum.FormFactor.Custom
o170.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o170.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o170.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o170.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o170.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o170.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o170.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o170.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o171 = Instance.new("BlockMesh")
o171.Parent = o170
o171.Scale = Vector3.new(0.0416666679, 0.333333343, 0.116666667)
o172 = Instance.new("Part")
o172.Parent = o1
o172.Material = Enum.Material.SmoothPlastic
o172.BrickColor = BrickColor.new("Really black")
o172.Position = Vector3.new(-113.581627, 1.53563416, 60.233345)
o172.Rotation = Vector3.new(90.0000534, 5.02050989e-006, -180)
o172.Anchored = true
o172.CFrame = CFrame.new(-113.581627, 1.53563416, 60.233345, -1, 1.50991113e-007, 8.76244286e-008, -8.76243078e-008, 8.19564661e-007, -1, -1.50991184e-007, -1, -8.19564661e-007)
o172.FormFactor = Enum.FormFactor.Custom
o172.Size = Vector3.new(0.200000003, 0.883333325, 0.200000003)
o172.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o172.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o172.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o172.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o172.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o172.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o172.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o173 = Instance.new("BlockMesh")
o173.Parent = o172
o173.Scale = Vector3.new(0.0833333358, 1, 0.583333313)
o174 = Instance.new("Part")
o174.Parent = o1
o174.Material = Enum.Material.SmoothPlastic
o174.BrickColor = BrickColor.new("Really black")
o174.Position = Vector3.new(-113.539955, 1.66896427, 63.7049255)
o174.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o174.Anchored = true
o174.CFrame = CFrame.new(-113.539955, 1.66896427, 63.7049255, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o174.FormFactor = Enum.FormFactor.Custom
o174.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o174.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o174.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o175 = Instance.new("BlockMesh")
o175.Parent = o174
o175.Scale = Vector3.new(0.0500000045, 0.166666672, 0.166666672)
o176 = Instance.new("Part")
o176.Parent = o1
o176.Material = Enum.Material.SmoothPlastic
o176.BrickColor = BrickColor.new("Really black")
o176.Position = Vector3.new(-113.556625, 1.56897795, 60.0083504)
o176.Rotation = Vector3.new(90.0000076, 5.29337331e-006, -180)
o176.Anchored = true
o176.CFrame = CFrame.new(-113.556625, 1.56897795, 60.0083504, -1, 1.50991141e-007, 9.23867916e-008, -9.2386756e-008, 1.93715223e-007, -1, -1.50991141e-007, -1, -1.93715223e-007)
o176.FormFactor = Enum.FormFactor.Custom
o176.Size = Vector3.new(0.200000003, 0.433333337, 0.200000003)
o176.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o176.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o176.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o176.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o176.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o176.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o176.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o177 = Instance.new("BlockMesh")
o177.Parent = o176
o177.Scale = Vector3.new(0.5, 1, 0.416666687)
o178 = Instance.new("Part")
o178.Parent = o1
o178.Material = Enum.Material.SmoothPlastic
o178.BrickColor = BrickColor.new("Really black")
o178.Position = Vector3.new(-113.539955, 1.37730074, 62.1583138)
o178.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o178.Anchored = true
o178.CFrame = CFrame.new(-113.539955, 1.37730074, 62.1583138, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o178.FormFactor = Enum.FormFactor.Custom
o178.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o178.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o178.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o178.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o178.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o178.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o178.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o178.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o179 = Instance.new("BlockMesh")
o179.Parent = o178
o179.Scale = Vector3.new(0.166666672, 0.5, 0.333333343)
o180 = Instance.new("Part")
o180.Parent = o1
o180.Material = Enum.Material.SmoothPlastic
o180.BrickColor = BrickColor.new("Neon orange")
o180.Position = Vector3.new(-113.539955, 1.32731259, 59.3583603)
o180.Rotation = Vector3.new(-89.9999924, -5.20639698e-010, 1.22437713e-010)
o180.Anchored = true
o180.CFrame = CFrame.new(-113.539955, 1.32731259, 59.3583603, 1, -2.13694123e-012, -9.08687708e-012, 9.08687708e-012, 2.53319939e-007, 1, -2.13693885e-012, -1, 2.53319968e-007)
o180.FormFactor = Enum.FormFactor.Custom
o180.Size = Vector3.new(0.200000003, 0.200000003, 0.233333334)
o180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o180.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o180.Color = Color3.new(0.835294, 0.45098, 0.239216)
o181 = Instance.new("SpecialMesh")
o181.Parent = o180
o181.Scale = Vector3.new(0.916666687, 0.333333343, 1)
o181.MeshType = Enum.MeshType.Wedge
o182 = Instance.new("Part")
o182.Parent = o1
o182.Material = Enum.Material.SmoothPlastic
o182.BrickColor = BrickColor.new("Really black")
o182.Position = Vector3.new(-113.539955, 1.61062944, 63.7049179)
o182.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o182.Anchored = true
o182.CFrame = CFrame.new(-113.539955, 1.61062944, 63.7049179, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o182.FormFactor = Enum.FormFactor.Custom
o182.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o182.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o182.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o182.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o182.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o182.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o182.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o182.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o183 = Instance.new("BlockMesh")
o183.Parent = o182
o183.Scale = Vector3.new(0.333333343, 0.333333343, 0.416666687)
o184 = Instance.new("Part")
o184.Parent = o1
o184.Material = Enum.Material.SmoothPlastic
o184.BrickColor = BrickColor.new("Really black")
o184.Position = Vector3.new(-113.539955, 0.896721542, 59.4836807)
o184.Rotation = Vector3.new(-73.9999924, -4.66918282e-010, 2.61258543e-010)
o184.Anchored = true
o184.CFrame = CFrame.new(-113.539955, 0.896721542, 59.4836807, 1, -4.5598217e-012, -8.14926165e-012, 9.0904298e-012, 0.275637537, 0.96126169, -2.13693885e-012, -0.96126169, 0.275637507)
o184.FormFactor = Enum.FormFactor.Custom
o184.Size = Vector3.new(0.200000003, 0.216666669, 0.449999988)
o184.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o184.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o184.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o184.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o184.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o184.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o184.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o185 = Instance.new("BlockMesh")
o185.Parent = o184
o185.Scale = Vector3.new(0.916666687, 1, 1)
o186 = Instance.new("Part")
o186.Parent = o1
o186.Material = Enum.Material.SmoothPlastic
o186.BrickColor = BrickColor.new("Really black")
o186.Position = Vector3.new(-113.539955, 0.956089139, 59.6394043)
o186.Rotation = Vector3.new(-73.9999924, -5.12302313e-006, -180)
o186.Anchored = true
o186.CFrame = CFrame.new(-113.539955, 0.956089139, 59.6394043, -1, 8.74258674e-008, -8.94136178e-008, -1.10047722e-007, -0.275637537, 0.96126169, 5.93933862e-008, 0.96126169, 0.275637507)
o186.FormFactor = Enum.FormFactor.Custom
o186.Size = Vector3.new(0.200000003, 0.200000003, 0.316666663)
o186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o186.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o186.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o187 = Instance.new("SpecialMesh")
o187.Parent = o186
o187.Scale = Vector3.new(0.916666687, 0.25, 1)
o187.MeshType = Enum.MeshType.Wedge
o188 = Instance.new("Part")
o188.Parent = o1
o188.Material = Enum.Material.SmoothPlastic
o188.BrickColor = BrickColor.new("Really black")
o188.Position = Vector3.new(-113.539955, 1.46064496, 59.3583641)
o188.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o188.Anchored = true
o188.CFrame = CFrame.new(-113.539955, 1.46064496, 59.3583641, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o188.FormFactor = Enum.FormFactor.Custom
o188.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o188.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o188.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o188.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o188.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o188.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o188.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o188.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o189 = Instance.new("SpecialMesh")
o189.Parent = o188
o189.Scale = Vector3.new(0.916666687, 0.333333343, 0.166666672)
o189.MeshType = Enum.MeshType.Wedge
o190 = Instance.new("Part")
o190.Parent = o1
o190.Material = Enum.Material.SmoothPlastic
o190.BrickColor = BrickColor.new("Neon orange")
o190.Position = Vector3.new(-113.5373, 1.31434989, 58.6492157)
o190.Rotation = Vector3.new(2.50447852e-006, 2.50457879e-006, 4.2913037e-010)
o190.Anchored = true
o190.CFrame = CFrame.new(-113.5373, 1.31434989, 58.6492157, 1, -7.489738e-012, 4.37131469e-008, 8.24089842e-012, 0.999991596, -4.37110295e-008, -4.3712955e-008, 4.37110295e-008, 0.999991596)
o190.CanCollide = false
o190.FormFactor = Enum.FormFactor.Symmetric
o190.Size = Vector3.new(1, 1, 1)
o190.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o190.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o190.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o190.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o190.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o190.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o190.Color = Color3.new(0.835294, 0.45098, 0.239216)
o191 = Instance.new("BlockMesh")
o191.Parent = o190
o191.Scale = Vector3.new(0.192307696, 0.0384615399, 1.42307687)
o192 = Instance.new("Part")
o192.Parent = o1
o192.Material = Enum.Material.SmoothPlastic
o192.BrickColor = BrickColor.new("Really black")
o192.Position = Vector3.new(-113.539955, 1.40230477, 60.75)
o192.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o192.Anchored = true
o192.CFrame = CFrame.new(-113.539955, 1.40230477, 60.75, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o192.FormFactor = Enum.FormFactor.Custom
o192.Size = Vector3.new(0.200000003, 0.200000003, 0.25)
o192.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o192.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o192.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o192.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o192.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o192.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o192.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o193 = Instance.new("BlockMesh")
o193.Parent = o192
o193.Scale = Vector3.new(0.916666687, 0.75, 1)
o194 = Instance.new("Part")
o194.Parent = o1
o194.Material = Enum.Material.SmoothPlastic
o194.BrickColor = BrickColor.new("Neon orange")
o194.Position = Vector3.new(-113.5373, 1.10281682, 57.8800049)
o194.Rotation = Vector3.new(-2.50447738e-006, 2.50457879e-006, -180)
o194.Anchored = true
o194.CFrame = CFrame.new(-113.5373, 1.10281682, 57.8800049, -1, 7.49355959e-012, 4.37131469e-008, -8.24089842e-012, -0.999991596, 4.37110117e-008, 4.3712955e-008, 4.37110117e-008, 0.999991596)
o194.CanCollide = false
o194.FormFactor = Enum.FormFactor.Symmetric
o194.Size = Vector3.new(1, 1, 1)
o194.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o194.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o194.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o194.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o194.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o194.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o194.Color = Color3.new(0.835294, 0.45098, 0.239216)
o195 = Instance.new("SpecialMesh")
o195.Parent = o194
o195.Scale = Vector3.new(0.192307696, 0.461538464, 0.115384616)
o195.MeshType = Enum.MeshType.Wedge
o196 = Instance.new("Part")
o196.Parent = o1
o196.Material = Enum.Material.SmoothPlastic
o196.BrickColor = BrickColor.new("Really black")
o196.Position = Vector3.new(-113.509956, 1.64896476, 63.7049255)
o196.Rotation = Vector3.new(-90, 24.9996357, -2.59040348e-007)
o196.Anchored = true
o196.CFrame = CFrame.new(-113.509956, 1.64896476, 63.7049255, 0.906310558, 4.09752721e-009, 0.422612488, -0.422612458, 1.3219902e-007, 0.906310558, -5.21553183e-008, -1, 1.21545028e-007)
o196.FormFactor = Enum.FormFactor.Custom
o196.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o196.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o196.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o196.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o196.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o196.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o196.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o196.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o197 = Instance.new("BlockMesh")
o197.Parent = o196
o197.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o198 = Instance.new("Part")
o198.Parent = o1
o198.Material = Enum.Material.SmoothPlastic
o198.BrickColor = BrickColor.new("Really black")
o198.Position = Vector3.new(-113.539955, 1.37730229, 60.0333443)
o198.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o198.Anchored = true
o198.CFrame = CFrame.new(-113.539955, 1.37730229, 60.0333443, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o198.FormFactor = Enum.FormFactor.Custom
o198.Size = Vector3.new(0.200000003, 1.2833333, 0.200000003)
o198.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o198.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o198.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o198.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o198.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o198.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o198.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o199 = Instance.new("BlockMesh")
o199.Parent = o198
o199.Scale = Vector3.new(0.916666687, 1, 1)
o200 = Instance.new("Part")
o200.Parent = o1
o200.Material = Enum.Material.SmoothPlastic
o200.BrickColor = BrickColor.new("Really black")
o200.Position = Vector3.new(-113.539955, 1.05897915, 60.0933495)
o200.Rotation = Vector3.new(-87.9999847, -5.91998833e-006, 180)
o200.Anchored = true
o200.CFrame = CFrame.new(-113.539955, 1.05897915, 60.0933495, -1, -1.50990829e-007, -1.03323288e-007, -9.79908066e-008, -0.0348997675, 0.999390841, -1.54504804e-007, 0.999390841, 0.0348997675)
o200.FormFactor = Enum.FormFactor.Custom
o200.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o200.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o200.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o200.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o200.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o200.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o200.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o200.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o201 = Instance.new("BlockMesh")
o201.Parent = o200
o201.Scale = Vector3.new(0.666666687, 0.166666672, 0.416666687)
o202 = Instance.new("Part")
o202.Parent = o1
o202.Material = Enum.Material.SmoothPlastic
o202.BrickColor = BrickColor.new("Really black")
o202.Position = Vector3.new(-113.589958, 1.67825508, 60.750042)
o202.Rotation = Vector3.new(-87.9999847, -2.80858876e-006, 90)
o202.Anchored = true
o202.CFrame = CFrame.new(-113.589958, 1.67825508, 60.750042, -4.37141736e-008, -1, -4.90191212e-008, 0.0348996781, -5.0514867e-008, 0.999390841, -0.999390841, 4.197679e-008, 0.0348996781)
o202.FormFactor = Enum.FormFactor.Custom
o202.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o202.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o202.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o202.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o202.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o202.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o202.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o202.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o203 = Instance.new("CylinderMesh")
o203.Parent = o202
o203.Scale = Vector3.new(0.25, 0.333333343, 0.25)
o204 = Instance.new("Part")
o204.Parent = o1
o204.Material = Enum.Material.SmoothPlastic
o204.BrickColor = BrickColor.new("Neon orange")
o204.Position = Vector3.new(-113.539955, 1.54396534, 61.3583183)
o204.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o204.Anchored = true
o204.CFrame = CFrame.new(-113.539955, 1.54396534, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o204.FormFactor = Enum.FormFactor.Custom
o204.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o204.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o204.Color = Color3.new(0.835294, 0.45098, 0.239216)
o205 = Instance.new("BlockMesh")
o205.Parent = o204
o205.Scale = Vector3.new(0.916666687, 1, 0.333333343)
o206 = Instance.new("Part")
o206.Parent = o1
o206.Material = Enum.Material.SmoothPlastic
o206.BrickColor = BrickColor.new("Neon orange")
o206.Position = Vector3.new(-113.564957, 1.57731104, 61.3583183)
o206.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o206.Anchored = true
o206.CFrame = CFrame.new(-113.564957, 1.57731104, 61.3583183, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o206.FormFactor = Enum.FormFactor.Custom
o206.Size = Vector3.new(0.200000003, 0.566666663, 0.200000003)
o206.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o206.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o206.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o206.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o206.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o206.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o206.Color = Color3.new(0.835294, 0.45098, 0.239216)
o207 = Instance.new("CylinderMesh")
o207.Parent = o206
o207.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o208 = Instance.new("Part")
o208.Parent = o1
o208.Material = Enum.Material.SmoothPlastic
o208.BrickColor = BrickColor.new("Neon orange")
o208.Position = Vector3.new(-113.539955, 1.54396534, 61.0416641)
o208.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o208.Anchored = true
o208.CFrame = CFrame.new(-113.539955, 1.54396534, 61.0416641, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o208.FormFactor = Enum.FormFactor.Custom
o208.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o208.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o208.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o208.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o208.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o208.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o208.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o208.Color = Color3.new(0.835294, 0.45098, 0.239216)
o209 = Instance.new("BlockMesh")
o209.Parent = o208
o209.Scale = Vector3.new(0.916666687, 0.333333343, 0.333333343)
o210 = Instance.new("Part")
o210.Parent = o1
o210.Material = Enum.Material.SmoothPlastic
o210.BrickColor = BrickColor.new("Really black")
o210.Position = Vector3.new(-113.514954, 1.57731104, 61.0416603)
o210.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o210.Anchored = true
o210.CFrame = CFrame.new(-113.514954, 1.57731104, 61.0416603, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o210.FormFactor = Enum.FormFactor.Custom
o210.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o210.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o210.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o211 = Instance.new("CylinderMesh")
o211.Parent = o210
o211.Scale = Vector3.new(0.666666687, 0.333333343, 0.666666687)
o212 = Instance.new("Part")
o212.Parent = o1
o212.Material = Enum.Material.SmoothPlastic
o212.BrickColor = BrickColor.new("Neon orange")
o212.Position = Vector3.new(-113.539955, 1.61895657, 61.6666527)
o212.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o212.Anchored = true
o212.CFrame = CFrame.new(-113.539955, 1.61895657, 61.6666527, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o212.FormFactor = Enum.FormFactor.Custom
o212.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o212.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o212.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o212.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o212.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o212.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o212.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o212.Color = Color3.new(0.835294, 0.45098, 0.239216)
o213 = Instance.new("BlockMesh")
o213.Parent = o212
o213.Scale = Vector3.new(0.25, 0.25, 0.25)
o214 = Instance.new("Part")
o214.Parent = o1
o214.Material = Enum.Material.SmoothPlastic
o214.BrickColor = BrickColor.new("Really black")
o214.Position = Vector3.new(-113.639954, 1.3777262, 59.9190521)
o214.Rotation = Vector3.new(-79.9999847, -4.91393648e-010, 90)
o214.Anchored = true
o214.CFrame = CFrame.new(-113.639954, 1.3777262, 59.9190521, 7.54961107e-008, -1, -8.5764373e-012, 0.173648521, 1.31013387e-008, 0.984807789, -0.984807789, -7.43506305e-008, 0.173648506)
o214.FormFactor = Enum.FormFactor.Custom
o214.Size = Vector3.new(0.449999988, 0.200000003, 0.200000003)
o214.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o214.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o214.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o214.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o214.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o214.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o214.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o215 = Instance.new("BlockMesh")
o215.Parent = o214
o215.Scale = Vector3.new(1, 0.0833333358, 0.333333343)
o216 = Instance.new("Part")
o216.Parent = o1
o216.Material = Enum.Material.SmoothPlastic
o216.BrickColor = BrickColor.new("Really black")
o216.Position = Vector3.new(-113.539955, 1.61063278, 63.6465836)
o216.Rotation = Vector3.new(90.0000076, 5.00937449e-006, 180)
o216.Anchored = true
o216.CFrame = CFrame.new(-113.539955, 1.61063278, 63.6465836, -1, -8.74234445e-008, 8.7430081e-008, -8.74300881e-008, 1.93715223e-007, -1, 8.74234232e-008, -1, -1.93715252e-007)
o216.FormFactor = Enum.FormFactor.Custom
o216.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o216.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o216.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o217 = Instance.new("SpecialMesh")
o217.Parent = o216
o217.Scale = Vector3.new(0.333333343, 0.25, 0.416666687)
o217.MeshType = Enum.MeshType.Wedge
o218 = Instance.new("Part")
o218.Parent = o1
o218.Material = Enum.Material.SmoothPlastic
o218.BrickColor = BrickColor.new("Really black")
o218.Position = Vector3.new(-113.539955, 1.49396372, 62.1833)
o218.Rotation = Vector3.new(90.0000076, -5.00833175e-006, -1.2209328e-010)
o218.Anchored = true
o218.CFrame = CFrame.new(-113.539955, 1.49396372, 62.1833, 1, 2.13092976e-012, -8.74118768e-008, -8.74118768e-008, -1.04308192e-007, -1, -2.14004747e-012, 1, -1.04308192e-007)
o218.FormFactor = Enum.FormFactor.Custom
o218.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o218.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o218.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o218.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o218.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o218.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o218.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o218.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o219 = Instance.new("SpecialMesh")
o219.Parent = o218
o219.Scale = Vector3.new(0.333333343, 0.583333313, 0.666666687)
o219.MeshType = Enum.MeshType.Wedge
o220 = Instance.new("Part")
o220.Parent = o1
o220.Material = Enum.Material.SmoothPlastic
o220.BrickColor = BrickColor.new("Really black")
o220.Position = Vector3.new(-113.48996, 1.54398501, 60.233345)
o220.Rotation = Vector3.new(90.0000153, 5.00939313e-006, 180)
o220.Anchored = true
o220.CFrame = CFrame.new(-113.48996, 1.54398501, 60.233345, -1, -2.13552136e-012, 8.74304007e-008, -8.74304007e-008, 2.68221214e-007, -1, 2.11207028e-012, -1, -2.68221214e-007)
o220.FormFactor = Enum.FormFactor.Custom
o220.Size = Vector3.new(0.200000003, 0.883333325, 0.200000003)
o220.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o220.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o220.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o220.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o220.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o220.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o220.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o221 = Instance.new("BlockMesh")
o221.Parent = o220
o221.Scale = Vector3.new(0.166666672, 1, 0.666666687)
o222 = Instance.new("Part")
o222.Name = "Zoom"
o222.Parent = o1
o222.Material = Enum.Material.SmoothPlastic
o222.BrickColor = BrickColor.new("Really black")
o222.Transparency = 1
o222.Position = Vector3.new(-113.539955, 1.72229445, 59.8150215)
o222.Rotation = Vector3.new(-179.999985, 1.15806685e-007, 180)
o222.Anchored = true
o222.CFrame = CFrame.new(-113.539955, 1.72229445, 59.8150215, -1, -1.51002368e-007, 2.02120787e-009, -1.51002368e-007, 1, 3.27825802e-007, -2.02125738e-009, 3.27825802e-007, -1)
o222.FormFactor = Enum.FormFactor.Custom
o222.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o222.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o222.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o223 = Instance.new("BlockMesh")
o223.Parent = o222
o223.Scale = Vector3.new(0.166666672, 0.75, 0.166666672)
o224 = Instance.new("Sound")
o224.Name = "Empty"
o224.Parent = o222
o224.SoundId = "rbxasset://sounds//clickfast.wav"
o224.Volume = 1
o225 = Instance.new("Sound")
o225.Name = "M1"
o225.Parent = o222
o225.Pitch = 1
o225.SoundId = "http://roblox.com/asset/?id=233931573"
o225.Volume = 1
o226 = Instance.new("Sound")
o226.Name = "M2"
o226.Pitch = 1.7
o226.Parent = o222
o226.SoundId = "0"
o226.Volume = 1
o227 = Instance.new("Sound")
o227.Name = "Fire"
o227.Parent = o222
o227.Pitch = 1.25
o227.SoundId = "http://roblox.com/asset/?id=258193800"
o227.PlayOnRemove = true
o228 = Instance.new("Sound")
o228.Name = "M3"
o228.Parent = o222
o228.SoundId = "0"
o228.Volume = 1
o228.PlayOnRemove = true
o229 = Instance.new("Part")
o229.Parent = o1
o229.Material = Enum.Material.SmoothPlastic
o229.BrickColor = BrickColor.new("Neon orange")
o229.Position = Vector3.new(-113.539955, 1.46897221, 61.2999878)
o229.Rotation = Vector3.new(90.0000153, 5.00937495e-006, 180)
o229.Anchored = true
o229.CFrame = CFrame.new(-113.539955, 1.46897221, 61.2999878, -1, -1.94638273e-012, 8.74300881e-008, -8.74301023e-008, 2.38417329e-007, -0.999991596, 2.10141236e-012, -0.999991596, -2.38417329e-007)
o229.FormFactor = Enum.FormFactor.Custom
o229.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o229.Color = Color3.new(0.835294, 0.45098, 0.239216)
o230 = Instance.new("SpecialMesh")
o230.Parent = o229
o230.Scale = Vector3.new(0.916666687, 0.0833333358, 0.0833333358)
o230.MeshType = Enum.MeshType.Wedge
o231 = Instance.new("Part")
o231.Parent = o1
o231.Material = Enum.Material.SmoothPlastic
o231.BrickColor = BrickColor.new("Really black")
o231.Position = Vector3.new(-113.539955, 1.41896868, 62.2083168)
o231.Rotation = Vector3.new(-90, -5.20843257e-010, 1.22437671e-010)
o231.Anchored = true
o231.CFrame = CFrame.new(-113.539955, 1.41896868, 62.2083168, 1, -2.13694036e-012, -9.0904298e-012, 9.0904298e-012, 1.34110536e-007, 1, -2.13693885e-012, -1, 1.3411055e-007)
o231.FormFactor = Enum.FormFactor.Custom
o231.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o231.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o232 = Instance.new("CylinderMesh")
o232.Parent = o231
o232.Scale = Vector3.new(0.5, 1, 0.5)
o233 = Instance.new("Part")
o233.Parent = o1
o233.Material = Enum.Material.SmoothPlastic
o233.BrickColor = BrickColor.new("Really black")
o233.Position = Vector3.new(-113.539955, 1.41896856, 62.8066254)
o233.Rotation = Vector3.new(-89.9999924, -5.20843257e-010, 1.22437671e-010)
o233.Anchored = true
o233.CFrame = CFrame.new(-113.539955, 1.41896856, 62.8066254, 1, -2.13694058e-012, -9.0904298e-012, 9.0904298e-012, 1.63912873e-007, 1, -2.13693885e-012, -1, 1.63912887e-007)
o233.FormFactor = Enum.FormFactor.Custom
o233.Size = Vector3.new(0.200000003, 2.13000011, 0.200000003)
o233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o234 = Instance.new("Decal")
o234.Parent = o233
o234.Texture = "http://www.roblox.com/asset/?id=47760372"
o234.Face = Enum.NormalId.Bottom
o235 = Instance.new("CylinderMesh")
o235.Parent = o233
o235.Scale = Vector3.new(0.416666687, 1, 0.416666687)
o236 = Instance.new("Part")
o236.Parent = o1
o236.Material = Enum.Material.SmoothPlastic
o236.BrickColor = BrickColor.new("Really black")
o236.Position = Vector3.new(-113.509956, 1.69896829, 63.7049255)
o236.Rotation = Vector3.new(-90, -24.9996357, 2.5930288e-007)
o236.Anchored = true
o236.CFrame = CFrame.new(-113.509956, 1.69896829, 63.7049255, 0.906310558, -4.10167988e-009, -0.422612488, 0.422612488, 1.3219875e-007, 0.906310558, 5.21514458e-008, -1, 1.21546535e-007)
o236.FormFactor = Enum.FormFactor.Custom
o236.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o236.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o236.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o236.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o236.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o236.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o236.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o236.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o237 = Instance.new("BlockMesh")
o237.Parent = o236
o237.Scale = Vector3.new(0.0416666679, 0.333333343, 0.166666672)
o238 = Instance.new("Part")
o238.Parent = o1
o238.Material = Enum.Material.SmoothPlastic
o238.BrickColor = BrickColor.new("Really black")
o238.Position = Vector3.new(-113.539955, 1.07028496, 60.0163193)
o238.Rotation = Vector3.new(-134.999985, -5.91992693e-006, 180)
o238.Anchored = true
o238.CFrame = CFrame.new(-113.539955, 1.07028496, 60.0163193, -1, -1.50998176e-007, -1.03322215e-007, -1.79831659e-007, 0.707106709, 0.707106948, -3.37120198e-008, 0.707106948, -0.707106709)
o238.FormFactor = Enum.FormFactor.Custom
o238.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o238.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o238.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o238.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o238.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o238.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o238.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o238.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o239 = Instance.new("BlockMesh")
o239.Parent = o238
o239.Scale = Vector3.new(0.833333373, 0.666666687, 0.166666672)
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end

for i=1,#cors do
coroutine.resume(cors[i])
end
o1.Parent = game.Players.LocalPlayer.Backpack