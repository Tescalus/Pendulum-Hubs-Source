--Enjoy this shit
--When you Click its explode asf
--Touch kids with the sword to kill them.
--Made by N3xul
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


local runDummyScript = function(f,scri)
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
mas.Name = "CompiledModel"
o1 = Instance.new("HopperBin")
o2 = Instance.new("LocalScript")
o1.Name = "OPSwords"
o1.Parent = mas
o1.TextureId = "http://www.roblox.com/asset/?id=23722071"
o2.Name = "AnimDeath"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
print("Animator Loaded.");

--Animation Manager--
local bin = script.Parent;
while (game.Players.LocalPlayer.Character == nil) do
	wait()
end
print("Player found. :)");
local player = game.Workspace.non
local human = player.Humanoid;

--Tool Variables--
local tselected = false;

--Base Part--
local block = Instance.new("Part");
block.FormFactor = "Symmetric";
block.Size = Vector3.new(1, 1, 1);
block.Transparency = 1;
block.CanCollide = false;
block.Locked = true;

local sword = Instance.new("Part");
sword.FormFactor = "Plate";
sword.Shape = "Block";
sword.Size = Vector3.new(1, 0.8, 4);
sword.Transparency = 1;
sword.CanCollide = false;
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=11998777"
SlashSound.Pitch = 1.4;
SlashSound.Looped = true;
SlashSound.Name = "Voom";
SlashSound.Volume = 1
SlashSound.Parent = sword
snd = Instance.new("Sound")
snd.SoundId = "http://www.roblox.com/asset/?id=2233908"
snd.Volume = 1
snd.Name = "Boom"
snd.Parent =  sword
local UnsheathSound = Instance.new("Sound")
UnsheathSound.SoundId = "http://www.roblox.com/asset/?id=11998770"
UnsheathSound.Name = "Go"
UnsheathSound.Volume = 10
UnsheathSound.Parent = sword
local mesh = Instance.new("SpecialMesh");
mesh.MeshType = "FileMesh";
mesh.MeshId = "http://www.roblox.com/asset/?id=11996935";
mesh.Scale = Vector3.new(1.4,1.4,1.4);
mesh.TextureId = "http://www.roblox.com/asset/?id=23719291";
mesh.Parent = sword;
local sparkle = Instance.new("Sparkles")
sparkle.SparkleColor = Color3.new(0, 255, 155);
sparkle.Parent = sword;
sparkle.Enabled = false;
local sword2 = sword:Clone();

local lsweld = Instance.new("Weld");
local rsweld = Instance.new("Weld");
--Left Arm Positioners and Welders--
local lPosBase = block:Clone();
local lPosWeld = Instance.new("Weld");
local lRotBase = block:Clone();
local lRotWeld = Instance.new("Weld");
local lArmWeld = Instance.new("Weld");

--Right Arm Positioners and Welders--
local rPosBase = block:Clone();
local rPosWeld = Instance.new("Weld");
local rRotBase = block:Clone();
local rRotWeld = Instance.new("Weld");
local rArmWeld = Instance.new("Weld");

--Head Welder--
local hRotBase = block:Clone();
local hRotWeld = Instance.new("Weld");
local headWeld = Instance.new("Weld");

--Bind the base parts to the Torso. Tricky.

--Left--
lPosBase.Name = "LPosBase";
lPosWeld.Name = "LPosWeld";
lRotBase.Name = "LRotBase";
lRotWeld.Name = "LRotWeld";
lPosWeld.Part0 = player.Torso;
lPosWeld.Part1 = lPosBase;
lPosWeld.C1 = CFrame.new(1.5, -0.5, 0);
lPosWeld.Parent = player.Torso;
lPosBase.Parent = player;
lRotWeld.Part0 = lPosBase;
lRotWeld.Part1 = lRotBase;
lRotWeld.Parent = player.Torso;
lRotBase.Parent = player;
lArmWeld.Part0 = lRotBase;
lArmWeld.C1 = CFrame.new(0, 0.5, 0);
lArmWeld.Parent = player.Torso;

--Right--
rPosBase.Name = "RPosBase";
rPosWeld.Name = "RPosWeld";
rRotBase.Name = "RRotBase";
rRotWeld.Name = "RRotWeld";
rPosWeld.Part0 = player.Torso;
rPosWeld.Part1 = rPosBase;
rPosWeld.C1 = CFrame.new(-1.5, -0.5, 0);
rPosWeld.Parent = player.Torso;
rPosBase.Parent = player;
rRotWeld.Part0 = rPosBase;
rRotWeld.Part1 = rRotBase;
rRotWeld.Parent = player.Torso;
rRotBase.Parent = player;
rArmWeld.Part0 = rRotBase;
rArmWeld.C1 = CFrame.new(0, 0.5, 0);
rArmWeld.Parent = player.Torso;

--Head--
hRotBase.Name = "HRotBase";
hRotWeld.Name = "HRotWeld";
headWeld.Name = "HeadWeld";
hRotWeld.Part0 = player.Torso;
hRotWeld.Part1 = hRotBase;
hRotWeld.C1 = CFrame.new(0, -1.5, 0);
hRotWeld.Parent = player.Torso;
hRotBase.Parent = player;
headWeld.Part0 = hRotBase;
headWeld.Parent = player.Torso;

--Le Swords--
lsweld.Part0 = lRotBase;
rsweld.Part0 = rRotBase;
lsweld.Part1 = sword;
rsweld.Part1 = sword2;
lsweld.C1 = CFrame.new(0, 0, -3.5)*CFrame.Angles(math.rad(270), math.rad(90), 0);
rsweld.C1 = CFrame.new(0, 0, -3.5)*CFrame.Angles(math.rad(270), math.rad(90), 0);
lsweld.Parent = player.Torso;
rsweld.Parent = player.Torso;
sword.Parent = player;
sword2.Parent = player;
sword.Voom:Stop();
sword2.Voom:Stop();
print("Bases binded.");

--Binds the arms and head to the base parts.
function bind()
	lArmWeld.Part1 = player:FindFirstChild("Left Arm");
	rArmWeld.Part1 = player:FindFirstChild("Right Arm");
	headWeld.Part1 = player:FindFirstChild("Head");
	sword.Transparency = 0;
	sword2.Transparency = 0;
	sword.Go:Play();
	sword2.Go:Play();
	sword.Sparkles.Enabled = true;
	sword2.Sparkles.Enabled = true;
	human.WalkSpeed = 28;
	sword.Voom:Play();
	sword2.Voom:Play();
end

--Releases the arms and head from the base parts.
function unbind()
	lArmWeld.Part1 = nil;
	rArmWeld.Part1 = nil;
	headWeld.Part1 = nil;
	sword.Transparency = 1;
	sword2.Transparency = 1;
	sword.Sparkles.Enabled = false;
	sword2.Sparkles.Enabled = false;
	human.WalkSpeed = 28;
	sword.Go:Play();
	sword2.Go:Play();
	sword.Voom:Stop();
	sword2.Voom:Stop();
end

function boom(part)
	wait();
	if part == nil or tselected == false then return end;
	if part.Anchored then return end;
	if part.Parent == player or part.Parent.Parent == player then return end;
	human:TakeDamage(0);
	
	sword.Go:Play();
	sword2.Go:Play();
	wait(0.5)
	
	
	game.Debris:AddItem(part, math.huge);
end

local load = true;

function selected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	bind();
	human.MaxHealth = 9999999;
	if player:FindFirstChild("ForceField") then
		print("found forcefield")
	end
	tselected = true;
	mouse.Button1Down:connect(function()
		if (load) then
			mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
			load = false
			sword.Boom:Play();
			sword2.Boom:Play();
			local e = Instance.new("Explosion");
			e.Hit:connect(boom);
			e.Position = player.Torso.Position;
			e.BlastPressure = 0;
			e.BlastRadius = 1000;
			e.Parent = game.Workspace;
			human:TakeDamage(0);
			wait(1)
			mouse.Icon = "rbxasset://textures\\GunCursor.png"
			load = true
		end
	end)
	while tselected do
		lRotWeld.C1 = CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)));
		rRotWeld.C1 = CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)));
		human:TakeDamage(0);
		wait();
	end
end

function deselected()
	tselected = false;
	unbind();
	human.MaxHealth = 9999999;
end

--Event Listeners--
sword.Touched:connect(boom);
sword2.Touched:connect(boom);
human.Jumping:connect(function()if tselected == false then return end player.Torso.Velocity = Vector3.new(player.Torso.Velocity.X, player.Torso.Velocity.Y + 40, player.Torso.Velocity.Z)end);
--Tool--
bin.Selected:connect(selected);
bin.Deselected:connect(deselected);
end,o2)
end))
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
	ypcall(function() mas1[i]:MakeJoints() end)
end

for i=1,#cors do
coroutine.resume(cors[i])
end