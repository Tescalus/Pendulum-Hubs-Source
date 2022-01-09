-----------//MASTER OF ELEMENTS\\-----------
--[[Movelist
Q = Water Barrier
E = Rock Tower Blast
R = Fireball
T = Taunt
F = Avatar state(Press again to turn back to nomal, makes you insanely powerful!)
Y = Pulsar
U = Rock Shield
P = Hellstorm
G = Large Gust
H = Wind Rush(Press again to stop)
J = The Zerstörer
K = Hydra
L = The Twister
C = Water totem(When active, makes all rock attacks do more damage)(Only one can be activated at a time)(Press again to stop)
V = Fire totem(When active, makes all fire attacks do more damage)(Only one can be activated at a time)(Press again to stop)
B = Air totem(When active, makes all air attacks do more damage)(Only one can be activated at a time)(Press again to stop)
N = Rock totem(When active, makes all water attacks do more damage)(Only one can be activated at a time)(Press again to stop)
---------]]

--And here's another one leaked! Stop stealing from me skids.--
--Please go easy on the moves, this script can hit the part limit VERY fast, so be warned.--
--To be honest, i dislike making Vereus, to see so many skids getting butthurt about it saddens me, it was piss easy to make and it's incredibly unoriginal.--
--You see the amount of attacks? This is what i'm capable of when my shit DOESN'T get stolen whilst in development, take note skids.--
--This is my biggest project yet.--
--For the people who had it before the leak, cry about it, for the people who didn't have it before the leak, enjoy it!--
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

Player=game:GetService("Players").LocalPlayer
Character=game.Workspace.non
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
attacking = false
laughing = false
running = false
touchedistrue = false
throw1 = true
throw2 = false
downpress = false
id = 2435339444
taim = nil
change = 0
ws = 90
avatarstate = false
hpheight = 5
appi = false
dontforgetthisbool = false
ravagewind = false
fireball1 = true
firsttimewtr = false
nottouched = false
nottouched2 = false
fireball2 = false
breakwaterm = false
tauntdebounce = false
allowlev = true
position = nil
spwt = false
MseGuide = true
tornadobounce = false
bbv = false
levitate = false
firsttime = false
apocalypse = false
powvol = 0
waterp = false
spinwater = false
settime = 0
waterz = false
winddashing = false
bluetotem = false
browntotem = false
redtotem = false
whitetotem = false
sine = 0
t = 0
dgs = 75
mouse = Player:GetMouse()
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
grasstable={}
watertable={}
colortable={"Bright yellow","Bright orange"}
colortable2={"Cyan","Light Royal blue"}
pitchtable={1.1,1.05,1,.95,.9,.95,.8,.75,1.001,1.2}
gottalktable = {2489876894,2489876696,2489876326,2489876052,2489875728}
got = #gottalktable
gottalktable2 = {2492598999,2492599159,2492599503,2492599303,2492599663,2492599795,2492599925,2492600097,2492600455,2492600258}
got2 = #gottalktable2
randompitch = #pitchtable
colors = #colortable
colors2 = #colortable2

screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

coroutine.wrap(function()
while wait() do
if allowlev then
hum.HipHeight = hpheight
end
hum.WalkSpeed = ws
LeftArm.BrickColor = BrickColor.new("Really black")
RightArm.BrickColor = BrickColor.new("Really black")
Head.BrickColor = BrickColor.new("Really black")
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
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
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 3
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()

Powerup = Instance.new("Sound",Torso)
Powerup.Volume = powvol
Powerup.SoundId = "rbxassetid://2492215919"
Powerup.Name = "powerup"
Powerup:Play()
Powerup.Looped = true

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
doomtheme = Instance.new("Sound", Torso)
if avatarstate then
doomtheme.Volume = 6
else
doomtheme.Volume = 3
end
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
if avatarstate then
doomtheme.SoundId = "rbxassetid://2497727458"
else
doomtheme.SoundId = "rbxassetid://"..id
end
doomtheme:Play()
end
end)

coroutine.wrap(function()
while wait() do
pcall(function()
Powerup.Volume = powvol
end)
end
end)()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "powerup" then
Powerup = Instance.new("Sound",Torso)
Powerup.Volume = powvol
Powerup.SoundId = "rbxassetid://2492215919"
Powerup.Name = "powerup"
Powerup:Play()
Powerup.Looped = true
end
end)

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
if debounce then return end
debounce = true
attacking = true
allowlev = false
dontforgetthisbool = true
coroutine.wrap(function()
while dontforgetthisbool do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 - 0*math.sin(sine/12)),math.rad(0),math.rad(0)),.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.7,1.705,-.2) * CFrame.Angles(math.rad(-10),math.rad(-0),math.rad(75 + 1 *math.sin(sine/12))),.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,1.705,-.2) * CFrame.Angles(math.rad(-10),math.rad(-0),math.rad(-75 - 1 *math.sin(sine/12))),.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.7, 1.8,0) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(10 + 2 * math.sin(sine/12))), 0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.7, 1.8,0) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-10 - 2 * math.sin(sine/12))), 0.1)
swait()
end
end)()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 75 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Bright green")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .05
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 100 do
elesize = elesize + .25
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = 0
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.Material = "Grass"
elementblock.BrickColor = BrickColor.new("Bright green")
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,1.5)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(2,0,2)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 75 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Cyan")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .05
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 100 do
elesize = elesize + .25
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
colors = colortable[math.random(1,#colortable)]
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new(colors)
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,1.5)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(2,0,2)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 75 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Cyan")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .05
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 100 do
elesize = elesize + .25
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
colors2 = colortable2[math.random(1,#colortable2)]
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new(colors2)
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,1.5)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(2,0,2)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 100 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Neon"
crater2.BrickColor = BrickColor.new("White")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .05
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(2,2,2) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 75 do
elesize = elesize + .25
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new("White")
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,1.5)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(2,0,2)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
for i = 1, 2 do
swait()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 40 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Bright green")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .025
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 40 do
elesize = elesize + 1
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = 0
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.Material = "Grass"
elementblock.BrickColor = BrickColor.new("Bright green")
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,3)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(3,0,12)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 40 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Cyan")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .025
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 40 do
elesize = elesize + 1
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
colors = colortable[math.random(1,#colortable)]
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new(colors)
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,3)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(3,0,12)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 40 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Cyan")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .025
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 40 do
elesize = elesize + 1
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
colors2 = colortable2[math.random(1,#colortable2)]
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new(colors2)
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,3)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(3,0,12)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 0
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,levitatewave)
bnmv = 0
for i = 1, 40 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.Name = "nme"
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,0,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.CanCollide = false
crater2.Transparency = 1
crater2.Material = "Neon"
crater2.BrickColor = BrickColor.new("White")
grassblockswld:Remove()
end
grassblockswld:Remove()
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v.Anchored = true
end
end
coroutine.wrap(function()
for i = 1, 100 do
swait()
for i,v in pairs(Torso:GetChildren()) do if v.Name == "ele" then
v.Transparency = v.Transparency + .025
end
end
end
end)()
elesize = .1
coroutine.wrap(function()
for i = 1, 10 do
shockwef = Instance.new("Part",Torso)
shockwef.Anchored = true
shockwef.CanCollide = false
shockwef.Size = Vector3.new(4,4,4)
shockwef.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
shockwef.BrickColor = BrickColor.new("White")
shockwef.Transparency = .5
shockwef.Material = "Neon"
shockwef.Name = "corodaad"
removeuseless:AddItem(shockwef,5)
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do if v.Name == "corodaad" then v.Size = v.Size + Vector3.new(5,5,5) v.Transparency = v.Transparency + .05 end end
swait()
end
end)()
for i = 1, 40 do
elesize = elesize + 1
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
elementblock = Instance.new("Part",Torso)
elementblock.Size = Vector3.new(3.5+elesize,3.5+elesize,3.5+elesize)
elementblock.Transparency = .5
elementblock.Anchored = true
elementblock.CanCollide = false
elementblock.Material = "Neon"
elementblock.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elementblock.BrickColor = BrickColor.new("White")
elementblock.Name = "ele"
removeuseless:AddItem(elementblock,3)
craterswoo = v
v.CFrame = v.CFrame * CFrame.new(3,0,12)
end
end
swait()
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "nme" then
v:Remove()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "cr2" then
v:Remove()
end
end
craterloc:Remove()
end
elseif Press=='n' then
if debounce then return end
if bluetotem then return end
if whitetotem then return end
if redtotem then return end
if browntotem then
debounce = true
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 35 do
swait()
powvol = powvol - .075
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v.Transparency = v.Transparency + .05
end
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v:Remove()
end
end
end)()
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 15 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-2,0)
swait()
end
browntotem = false
rockttm:Remove()
debounce = false
else
ws = 16
browntotem = true
debounce = true
attacking = true
got = gottalktable[math.random(1,#gottalktable)]
smh = Instance.new("Sound", Head)
if avatarstate then
smh.Volume = 10
else
smh.Volume = 8
end
smh.SoundId = "http://www.roblox.com/asset/?id="..got
smh.Looped = false
if avatarstate then
smh.Pitch = .85
else
smh.Pitch = 1
end
smh:Play()
removeuseless:AddItem(smh,5)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
particlecolor = ColorSequence.new(BrickColor.new("Earth green").Color)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
rockttm = Instance.new("Part", Torso)
rockttm.Size = Vector3.new(0.5, 0.5, 0.5)
rockttm.Material = "Neon"
rockttm.BrickColor = BrickColor.new("Earth green")
rockttm.Transparency = .5
rockttm.Anchored = true
rockttm.CanCollide = false
rockttm.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-15,0) * CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
ttmmeshrock = Instance.new("SpecialMesh", rockttm)
ttmmeshrock.Scale = Vector3.new(.1,.1,.1)
ttmmeshrock.MeshId = "rbxassetid://574506349"
coroutine.wrap(function()
locbrick = Instance.new("Part",Torso)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
locbrick2 = Instance.new("Part",workspace)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
zxp2 = 0
for i = 1, 65 do
zxp2 = zxp2 + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = BrickColor.new("Earth green")
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
crater.Name = "crator"
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(2.5,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp2),math.rad(0))
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(4,4,4)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.Name = "crator"
crater2.BrickColor = BrickColor.new("Bright green")
end
end)()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(3,.5,3)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(4,.6,4)
end
end)()
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 10 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,2,0)
swait()
end
for i = 1, 8 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-.25,0)
swait()
end
end)()
for i = 1, 35 do
powvol = powvol + .075
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
ws = 90
end
elseif Press=='b' then
if debounce then return end
if bluetotem then return end
if browntotem then return end
if redtotem then return end
if whitetotem then
debounce = true
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 35 do
swait()
powvol = powvol - .075
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v.Transparency = v.Transparency + .05
end
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v:Remove()
end
end
end)()
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 15 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-2,0)
swait()
end
whitetotem = false
rockttm:Remove()
debounce = false
else
ws = 16
whitetotem = true
debounce = true
attacking = true
got = gottalktable[math.random(1,#gottalktable)]
smh = Instance.new("Sound", Head)
if avatarstate then
smh.Volume = 10
else
smh.Volume = 8
end
smh.SoundId = "http://www.roblox.com/asset/?id="..got
smh.Looped = false
if avatarstate then
smh.Pitch = .85
else
smh.Pitch = 1
end
smh:Play()
removeuseless:AddItem(smh,5)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
particlecolor = ColorSequence.new(BrickColor.new("White").Color)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
rockttm = Instance.new("Part", Torso)
rockttm.Size = Vector3.new(0.5, 0.5, 0.5)
rockttm.Material = "Neon"
rockttm.BrickColor = BrickColor.new("White")
rockttm.Transparency = .5
rockttm.Anchored = true
rockttm.CanCollide = false
rockttm.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-15,0) * CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
ttmmeshrock = Instance.new("SpecialMesh", rockttm)
ttmmeshrock.Scale = Vector3.new(.1,.1,.1)
ttmmeshrock.MeshId = "rbxassetid://574506349"
coroutine.wrap(function()
locbrick = Instance.new("Part",Torso)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
locbrick2 = Instance.new("Part",workspace)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
zxp2 = 0
for i = 1, 65 do
zxp2 = zxp2 + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = BrickColor.new("White")
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
crater.Name = "crator"
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(2.5,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp2),math.rad(0))
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(4,4,4)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.Name = "crator"
crater2.BrickColor = BrickColor.new("Bright green")
end
end)()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(3,.5,3)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(4,.6,4)
end
end)()
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 10 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,2,0)
swait()
end
for i = 1, 8 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-.25,0)
swait()
end
end)()
for i = 1, 35 do
powvol = powvol + .075
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
ws = 90

end
elseif Press=='v' then
if debounce then return end
if bluetotem then return end
if browntotem then return end
if whitetotem then return end
if redtotem then
debounce = true
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 35 do
swait()
powvol = powvol - .075
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v.Transparency = v.Transparency + .05
end
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v:Remove()
end
end
end)()
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 15 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-2,0)
swait()
end
redtotem = false
rockttm:Remove()
debounce = false
else
ws = 16
redtotem = true
debounce = true
attacking = true
got = gottalktable[math.random(1,#gottalktable)]
smh = Instance.new("Sound", Head)
if avatarstate then
smh.Volume = 10
else
smh.Volume = 8
end
smh.SoundId = "http://www.roblox.com/asset/?id="..got
smh.Looped = false
if avatarstate then
smh.Pitch = .85
else
smh.Pitch = 1
end
smh:Play()
removeuseless:AddItem(smh,10)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
particlecolor = ColorSequence.new(BrickColor.new("Bright yellow").Color)
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
rockttm = Instance.new("Part", Torso)
rockttm.Size = Vector3.new(0.5, 0.5, 0.5)
rockttm.Material = "Neon"
rockttm.BrickColor = BrickColor.new("Bright yellow")
rockttm.Transparency = .5
rockttm.Anchored = true
rockttm.CanCollide = false
rockttm.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-15,0) * CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
ttmmeshrock = Instance.new("SpecialMesh", rockttm)
ttmmeshrock.Scale = Vector3.new(.1,.1,.1)
ttmmeshrock.MeshId = "rbxassetid://574506349"
coroutine.wrap(function()
locbrick = Instance.new("Part",Torso)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
locbrick2 = Instance.new("Part",workspace)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
zxp2 = 0
for i = 1, 65 do
zxp2 = zxp2 + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = BrickColor.new("Bright yellow")
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
crater.Name = "crator"
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(2.5,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp2),math.rad(0))
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(4,4,4)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.Name = "crator"
crater2.BrickColor = BrickColor.new("Bright green")
end
end)()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(3,.5,3)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(4,.6,4)
end
end)()
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 10 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,2,0)
swait()
end
for i = 1, 8 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-.25,0)
swait()
end
end)()
for i = 1, 35 do
powvol = powvol + .075
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
ws = 90
end
elseif Press=='c' then
if debounce then return end
if redtotem then return end
if browntotem then return end
if whitetotem then return end
if bluetotem then
debounce = true
particlemiter1.Enabled = false
particlemiter2.Enabled = false
particlemiter4.Enabled = false
particlemiter5.Enabled = false
particlemiter6.Enabled = false
particlemiter7.Enabled = false
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 35 do
swait()
powvol = powvol - .075
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v.Transparency = v.Transparency + .05
end
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "crator" then
v:Remove()
end
end
end)()
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 15 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-2,0)
swait()
end
bluetotem = false
rockttm:Remove()
debounce = false
else
ws = 16
bluetotem = true
debounce = true
attacking = true
got = gottalktable[math.random(1,#gottalktable)]
smh = Instance.new("Sound", Head)
if avatarstate then
smh.Volume = 10
else
smh.Volume = 8
end
smh.SoundId = "http://www.roblox.com/asset/?id="..got
smh.Looped = false
if avatarstate then
smh.Pitch = .85
else
smh.Pitch = 1
end
smh:Play()
removeuseless:AddItem(smh,5)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
particlecolor = ColorSequence.new(Color3.new(0, 5, 255))
particlemiter1.Enabled = true
particlemiter2.Enabled = true
particlemiter4.Enabled = true
particlemiter5.Enabled = true
particlemiter6.Enabled = true
particlemiter7.Enabled = true
rockttm = Instance.new("Part", Torso)
rockttm.Size = Vector3.new(0.5, 0.5, 0.5)
rockttm.Material = "Neon"
rockttm.BrickColor = BrickColor.new("Cyan")
rockttm.Transparency = .5
rockttm.Anchored = true
rockttm.CanCollide = false
rockttm.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-15,0) * CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-4,4)),math.rad(math.random(-4,4)))
ttmmeshrock = Instance.new("SpecialMesh", rockttm)
ttmmeshrock.Scale = Vector3.new(.1,.1,.1)
ttmmeshrock.MeshId = "rbxassetid://574506349"
coroutine.wrap(function()
locbrick = Instance.new("Part",Torso)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
locbrick2 = Instance.new("Part",workspace)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
zxp2 = 0
for i = 1, 65 do
zxp2 = zxp2 + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = BrickColor.new("Cyan")
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
crater.Name = "crator"
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(2.5,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp2),math.rad(0))
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(4,4,4)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.Name = "crator"
crater2.BrickColor = BrickColor.new("Bright green")
end
end)()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave,4)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(mouse.Hit.p)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(shockwave2,4)
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(3,.5,3)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(4,.6,4)
end
end)()
SOUND(locbrick,1119859528,8,false,5)
coroutine.wrap(function()
for i = 1, 10 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,2,0)
swait()
end
for i = 1, 8 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,.25,0)
swait()
end
for i = 1, 5 do
rockttm.CFrame = rockttm.CFrame * CFrame.new(0,-.25,0)
swait()
end
end)()
for i = 1, 35 do
powvol = powvol + .075
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
attacking = false
ws = 90
end
elseif Press=='l' then
if debounce then return end
if tornadobounce then return end
tornadobounce = true
debounce = true
attacking = true
coroutine.wrap(function()
local tornadopart = Instance.new("Part",Torso)
tornadopart.Size = Vector3.new(10,10,10)
tornadopart.CanCollide = false
tornadopart.Transparency = 1
tornadopart.CFrame = CFrame.new(mouse.Hit.p)
tornadopart.Anchored = true
tornadopart.BrickColor = BrickColor.new("White")
tornadopart.Material = "Neon"
tornadopart.Name = "tornblock"
tornsound = Instance.new("Sound",tornadopart)
tornsound.Volume = 0
tornsound.SoundId = "rbxassetid://151051389"
tornsound:Play()
tornsound.Looped = true
wrn = Instance.new("Sound",workspace)
wrn.Volume = 1
wrn.SoundId = "rbxassetid://130767714"
wrn:Play()
local tornadopart2 = Instance.new("Part",Torso)
tornadopart2.Size = Vector3.new(20,20,20)
tornadopart2.CanCollide = false
tornadopart2.Transparency = 1
tornadopart2.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,12,0)
tornadopart2.Anchored = true
tornadopart2.BrickColor = BrickColor.new("White")
tornadopart2.Material = "Neon"
tornadopart2.Name = "tornblock2"
local tornadopart3 = Instance.new("Part",Torso)
tornadopart3.Size = Vector3.new(30,30,30)
tornadopart3.CanCollide = false
tornadopart3.Transparency = 1
tornadopart3.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,24,0)
tornadopart3.Anchored = true
tornadopart3.BrickColor = BrickColor.new("White")
tornadopart3.Material = "Neon"
tornadopart3.Name = "tornblock3"
local tornadopart4 = Instance.new("Part",Torso)
tornadopart4.Size = Vector3.new(40,40,40)
tornadopart4.CanCollide = false
tornadopart4.Transparency = 1
tornadopart4.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,36,0)
tornadopart4.Anchored = true
tornadopart4.BrickColor = BrickColor.new("White")
tornadopart4.Material = "Neon"
tornadopart4.Name = "tornblock4"
local tornadopart5 = Instance.new("Part",Torso)
tornadopart5.Size = Vector3.new(50,50,50)
tornadopart5.CanCollide = false
tornadopart5.Transparency = 1
tornadopart5.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,48,0)
tornadopart5.Anchored = true
tornadopart5.BrickColor = BrickColor.new("White")
tornadopart5.Material = "Neon"
tornadopart5.Name = "tornblock5"
local tornadopart6 = Instance.new("Part",Torso)
tornadopart6.Size = Vector3.new(70,70,70)
tornadopart6.CanCollide = false
tornadopart6.Transparency = 1
tornadopart6.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,80,0)
tornadopart6.Anchored = true
tornadopart6.BrickColor = BrickColor.new("White")
tornadopart6.Material = "Neon"
tornadopart6.Name = "tornblock6"
local tornadopart7 = Instance.new("Part",Torso)
tornadopart7.Size = Vector3.new(90,90,90)
tornadopart7.CanCollide = false
tornadopart7.Transparency = 1
tornadopart7.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,150,0)
tornadopart7.Anchored = true
tornadopart7.BrickColor = BrickColor.new("White")
tornadopart7.Material = "Neon"
tornadopart7.Name = "tornblock7"
local tornadopart8 = Instance.new("Part",Torso)
tornadopart8.Size = Vector3.new(110,110,110)
tornadopart8.CanCollide = false
tornadopart8.Transparency = 1
tornadopart8.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,220,0)
tornadopart8.Anchored = true
tornadopart8.BrickColor = BrickColor.new("White")
tornadopart8.Material = "Neon"
tornadopart8.Name = "tornblock8"
wind = Instance.new("Part", Torso)
wind.Size = Vector3.new(0.5, 0.5, 0.5)
wind.Material = "Neon"
wind.BrickColor = BrickColor.new("Really white")
wind.Transparency = 1
wind.Anchored = true
wind.CanCollide = false
wind.CFrame = tornadopart.CFrame * CFrame.new(0,120,0)
windMESH = Instance.new("SpecialMesh", wind)
windMESH.Scale = Vector3.new(40.5,70.5,40.5)
windMESH.MeshId = "rbxassetid://168892432"
wind2 = Instance.new("Part", Torso)
wind2.Size = Vector3.new(0.5, 0.5, 0.5)
wind2.Material = "Neon"
wind2.BrickColor = BrickColor.new("Really white")
wind2.Transparency = 1
wind2.Anchored = true
wind2.CanCollide = false
wind2.CFrame = tornadopart.CFrame * CFrame.new(0,120,0)
windMESH2 = Instance.new("SpecialMesh", wind2)
windMESH2.Scale = Vector3.new(40.5,70.5,40.5)
windMESH2.MeshId = "rbxassetid://168892432"
wind3 = Instance.new("Part", Torso)
wind3.Size = Vector3.new(0.5, 0.5, 0.5)
wind3.Material = "Neon"
wind3.BrickColor = BrickColor.new("Really white")
wind3.Transparency = 1
wind3.Anchored = true
wind3.CanCollide = false
wind3.CFrame = tornadopart.CFrame * CFrame.new(0,160,0)
windMESH3 = Instance.new("SpecialMesh", wind3)
windMESH3.Scale = Vector3.new(70.5,100.5,70.5)
windMESH3.MeshId = "rbxassetid://168892432"
wind4 = Instance.new("Part", Torso)
wind4.Size = Vector3.new(0.5, 0.5, 0.5)
wind4.Material = "Neon"
wind4.BrickColor = BrickColor.new("Really white")
wind4.Transparency = 1
wind4.Anchored = true
wind4.CanCollide = false
wind4.CFrame = tornadopart.CFrame * CFrame.new(0,120,0)
windMESH4 = Instance.new("SpecialMesh", wind4)
windMESH4.Scale = Vector3.new(70.5,100.5,70.5)
windMESH4.MeshId = "rbxassetid://168892432"
coroutine.wrap(function()
for i = 1, 20 do
tornsound.Volume = tornsound.Volume + .5
wind.Transparency = wind.Transparency - .002
wind2.Transparency = wind2.Transparency - .002
wind3.Transparency = wind3.Transparency - .001
wind4.Transparency = wind4.Transparency - .001
tornadopart.Transparency = tornadopart.Transparency -.025
tornadopart2.Transparency = tornadopart2.Transparency -.025
tornadopart3.Transparency = tornadopart3.Transparency -.025
tornadopart4.Transparency = tornadopart4.Transparency -.025
tornadopart5.Transparency = tornadopart5.Transparency -.025
tornadopart6.Transparency = tornadopart6.Transparency -.025
tornadopart7.Transparency = tornadopart7.Transparency -.025
tornadopart8.Transparency = tornadopart8.Transparency -.025
swait()
end
end)()
coroutine.wrap(function()
coroutine.wrap(function()
for i = 1, 110 do
swait(10)
Hit = damagealll(0,tornadopart.Position)
for _,v in pairs(Hit) do
if whitetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("space")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(torso.Position,tornadopart.Position).lookVector*175
removeuseless:AddItem(vel,.1)
end
end
end)()
to3 = 0
to4 = 0
for i = 1, 1200 do
to3 = to3 + 2
to4 = to4 - 2
local grasssblockss = Instance.new("Part",Torso)
grasssblockss.Size = Vector3.new(math.random(8,11),math.random(8,11),math.random(8,11))
grasssblockss.Material = "Grass"
grasssblockss.CanCollide = false
grasssblockss.Anchored = true
grasssblockss.BrickColor = BrickColor.new("Bright green")
grasssblockss.CFrame = tornadopart.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
grasssblockss.Name = "grasssblockss"
removeuseless:AddItem(grasssblockss,2)
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = tornadopart.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "wave" then
v.Scale = v.Scale + Vector3.new(0.05,0,.05)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "grasssblockss" then
v.CFrame = v.CFrame * CFrame.new(0,4,0)
v.Transparency = v.Transparency + .035
end
end
wind.CFrame = wind.CFrame * CFrame.Angles(0,math.rad(0+17),0)
wind2.CFrame = wind2.CFrame * CFrame.Angles(0,math.rad(0-17),0)
wind3.CFrame = wind3.CFrame * CFrame.Angles(0,math.rad(0+12),0)
wind4.CFrame = wind4.CFrame * CFrame.Angles(0,math.rad(0-12),0)
tornadopart.CFrame = tornadopart.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart2.CFrame = tornadopart2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart3.CFrame = tornadopart3.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart4.CFrame = tornadopart4.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart5.CFrame = tornadopart5.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart6.CFrame = tornadopart6.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart7.CFrame = tornadopart7.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
tornadopart8.CFrame = tornadopart8.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
swait()
end
for i = 1, 20 do
tornsound.Volume = tornsound.Volume - .5
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "grasssblockss" then
v.CFrame = v.CFrame * CFrame.new(0,4,0)
v.Transparency = v.Transparency + .1
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "wave" then
v.Scale = v.Scale + Vector3.new(0.05,0,.05)
v.Parent.Transparency = v.Parent.Transparency + .1
end
end
wind.Transparency = wind.Transparency + .002
wind2.Transparency = wind2.Transparency + .002
wind3.Transparency = wind3.Transparency + .001
wind4.Transparency = wind4.Transparency + .001
tornadopart.Transparency = tornadopart.Transparency + .025
tornadopart2.Transparency = tornadopart2.Transparency + .025
tornadopart3.Transparency = tornadopart3.Transparency + .025
tornadopart4.Transparency = tornadopart4.Transparency + .025
tornadopart5.Transparency = tornadopart5.Transparency + .025
tornadopart6.Transparency = tornadopart6.Transparency + .025
tornadopart7.Transparency = tornadopart7.Transparency + .025
tornadopart8.Transparency = tornadopart8.Transparency + .025
swait()
end
wind:Remove()
wind2:Remove()
wind3:Remove()
wind4:Remove()
tornsound:Remove()----ignore this ugly mess pl0x
tornadopart:Remove()
tornadopart2:Remove()
tornadopart3:Remove()
tornadopart4:Remove()
tornadopart5:Remove()
tornadopart6:Remove()
tornadopart7:Remove()
tornadopart8:Remove()
tornadobounce = false
end)()
end)()
for i = 1, 20 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave2"
skmesh.Scale = Vector3.new(.02,.01,.02)
removeuseless:AddItem(sk,2)
end
for i = 1, 3 do
blastwave = Instance.new("Part",Torso)
blastwave.Size = Vector3.new(1,1,1)
blastwave.CanCollide = false
blastwave.Material = "Neon"
blastwave.Anchored = true
blastwave.Transparency = .6
blastwave.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
blastwave.BrickColor = BrickColor.new("White")
blastwave.Name = "zin"
removeuseless:AddItem(blastwave,2)
end
SOUND(Torso,2458107258,8,false,5)
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 22 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(39 - 12 * math.sin(sine/12)),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,.75,0) * CFrame.Angles(math.rad(10),math.rad(5),math.rad(-35)),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,.75,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.4)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "wave2" then
v.Scale = v.Scale + Vector3.new(0.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "zin" then
v.Size = v.Size + Vector3.new(4,4,4)
v.Transparency = v.Transparency + .05
end
end
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
swait()
end
removeuseless:AddItem(g1,.001)
attacking = false 
debounce = false
elseif Press=='k' then
if debounce then return end
debounce = true
attacking = true
waterz = true
ws = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
if avatarstate then
for i = 1, 7 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
end
SOUND(Torso,169486406,8,false,5)
coroutine.wrap(function()
if avatarstate then
for i = 1, 7 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.8)
swait()
end
else
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
end
end)()
for i = 1, 6 do
waterblock = Instance.new("Part",Torso)
waterblock.Size = Vector3.new(4,4,4)
waterblock.Transparency = .6
waterblock.Anchored = true
waterblock.CanCollide = false
waterblock.BrickColor = BrickColor.new("Cyan")
waterblock.Material = "Neon"
waterblock.Name = "water"
waterblock.CFrame = Root.CFrame * CFrame.new(math.random(-15,15),-15,math.random(-15,15))
end
coroutine.wrap(function()
while waterz do
swait()
colors2 = colortable2[math.random(1,#colortable2)]
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
waterwv = Instance.new("Part",v)
waterwv.Size = Vector3.new(5,5,5)
waterwv.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
waterwv.Anchored = false
waterwv.CanCollide = false
waterwv.Name = "waterv"
waterwv.Material = "Neon"
waterwv.BrickColor = BrickColor.new(colors2)
removeuseless:AddItem(waterwv,2)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "waterv" then
v.Size = v.Size - Vector3.new(.35,.35,.35)
v.Transparency = v.Transparency + .02
end
end
swait()
end
end)()
if avatarstate then
for i = 1, 13 do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
v.CFrame = v.CFrame * CFrame.new(0,0 + 2,0)
end
end
swait()
end
else
for i = 1, 25 do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
v.CFrame = v.CFrame * CFrame.new(0,0 + 1,0)
end
end
swait()
end
end
wait(.5)
ws = 12
coroutine.wrap(function()
if avatarstate then
for i = 1, 38 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10*math.sin(sine/12)),math.rad(-40),math.rad(0)),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(math.rad(0),math.rad(-25),math.rad(-140)),.4)
swait()
end
else
for i = 1, 75 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10*math.sin(sine/12)),math.rad(-40),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(math.rad(0),math.rad(-25),math.rad(-140)),.2)
swait()
end
end
end)()
if avatarstate then
for i = 1, 39 do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
v.CFrame = v.CFrame:lerp(CFrame.new(rightlocation.Position) * CFrame.new(0,10,0),.1)
end
end
swait()
end
else
for i = 1, 75 do
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
v.CFrame = v.CFrame:lerp(CFrame.new(rightlocation.Position) * CFrame.new(0,10,0),.05)
end
end
swait()
end
end
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "water" then
v:Remove()
end
end
waterb = Instance.new("Part",Torso)
waterb.Size = Vector3.new(1,1,1)
waterb.Transparency = 1
waterb.CFrame = CFrame.new(rightlocation.Position) * CFrame.new(0,10,0)
waterb.Anchored = true
waterb.CanCollide = false
waterb.Name = "waterbx"
SOUND(rightlocation,413682983,9,false,10)
coroutine.wrap(function()
waterb2 = Instance.new("Part",Torso)
waterb2.Size = Vector3.new(10,10,10)
waterb2.Transparency = 0
waterb2.CFrame = CFrame.new(rightlocation.Position) * CFrame.new(0,10,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
waterb2.Anchored = true
waterb2.CanCollide = false
waterb2.Name = "waterb"
waterb2.Material = "Neon"
for i = 1, 30 do
waterb2.Size = waterb2.Size + Vector3.new(3,3,3)
waterb2.Transparency = waterb2.Transparency + .05
swait()
end
waterb2:Remove()
end)()
coroutine.wrap(function()
for i = 1, 25 do
swait()
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = waterb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "firewave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(0.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
end
for i = 1, 30 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(0.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
coroutine.wrap(function()
while waterz do
colors2 = colortable2[math.random(1,#colortable2)]
blwater = Instance.new("Part",Torso)
blwater.Size = Vector3.new(10,10,10)
blwater.Transparency = .5
blwater.BrickColor = BrickColor.new(colors2)
blwater.Material = "Neon"
blwater.Anchored = false
blwater.CanCollide = false
blwater.CFrame = waterb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blwater.Name = "blyat"
removeuseless:AddItem(blwater,2)
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "blyat" then
v.Size = v.Size - Vector3.new(.25,.25,.25)
v.Transparency = v.Transparency + .025
end
end
swait()
end
end)()
for i = 1, 25 do
waterb.CFrame = CFrame.new(rightlocation.Position) * CFrame.new(0,10,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.6, 1.9, 0.2) * CFrame.Angles(math.rad(-85), math.rad(120), math.rad(-20)), 0.5)
swait()
end
waterb:Remove()
waterz = false
local waterb = Instance.new("Part",Torso)
waterb.Size = Vector3.new(1,1,1)
waterb.Transparency = 1
waterb.CFrame = CFrame.new(rightlocation.Position) * CFrame.new(0,10,0)
waterb.Anchored = false
waterb.CanCollide = false
waterb.Name = "waterbx2"
bov = Instance.new("BodyVelocity",waterb)
bov.maxForce = Vector3.new(99999,99999,99999)
waterb.CFrame = CFrame.new(waterb.Position,mouse.Hit.p)
bov.velocity = waterb.CFrame.lookVector*220
local alreadyhit = false
waterb.Touched:connect(function(hit)
if hit.Name ~= "blyat" and hit.Name ~= "firewave" and hit.Name ~= "waterb" and hit.Name ~= "sk" and hit.Name ~= "beeg" then
if alreadyhit then return end
alreadyhit = true
waterb.Anchored = true
Hit = damagealll(38,waterb.Position)
for _,v in pairs(Hit) do
if bluetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(waterb.Position,torso.Position).lookVector*175
removeuseless:AddItem(vel,.1)
end
local exploblue = Instance.new("Part",Torso)
exploblue.Name = "bluex"
exploblue.Size = Vector3.new(6,6,6)
exploblue.Anchored = true
exploblue.Transparency = .6
exploblue.CanCollide = false
exploblue.CFrame = waterb.CFrame
exploblue.Material = "Neon"
exploblue.Shape = "Ball"
exploblue.BrickColor = BrickColor.new(colors2)
SOUND(exploblue,2350560656,8,false,5)
local exploblue2 = Instance.new("Part",Torso)
exploblue2.Name = "bluex"
exploblue2.Size = Vector3.new(4,4,4)
exploblue2.Anchored = true
exploblue2.Transparency = .4
exploblue2.CanCollide = false
exploblue2.CFrame = waterb.CFrame
exploblue2.Material = "Neon"
exploblue2.Shape = "Ball"
exploblue2.BrickColor = BrickColor.new(colors2)
local exploblue3 = Instance.new("Part",Torso)
exploblue3.Name = "bluex"
exploblue3.Transparency = .2
exploblue3.Size = Vector3.new(2,2,2)
exploblue3.Anchored = true
exploblue3.CanCollide = false
exploblue3.CFrame = waterb.CFrame
exploblue3.Material = "Neon"
exploblue3.Shape = "Ball"
exploblue3.BrickColor = BrickColor.new(colors2)
waterb:Remove()
for i = 1, 25 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = exploblue.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "lolwtf"
skmesh.Scale = Vector3.new(.04,.01,.04)
end
for i = 1, 15 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "lolwtf" then
v.Scale = v.Scale + Vector3.new(0.04,0,.04)
end
end
exploblue.Size = exploblue.Size + Vector3.new(4,4,4)
exploblue2.Size = exploblue2.Size + Vector3.new(4,4,4)
exploblue3.Size = exploblue3.Size + Vector3.new(4,4,4)
swait()
end
for i = 1, 15 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "lolwtf" then
v.Scale = v.Scale + Vector3.new(0.02,0,.02)
end
end
exploblue.Size = exploblue.Size + Vector3.new(2,2,2)
exploblue2.Size = exploblue2.Size + Vector3.new(2,2,2)
exploblue3.Size = exploblue3.Size + Vector3.new(2,2,2)
swait()
end
for i = 1, 40 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "lolwtf" then
v.Scale = v.Scale - Vector3.new(0.04,0,.04)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
exploblue.Transparency = exploblue.Transparency + .025
exploblue2.Transparency = exploblue2.Transparency + .025
exploblue3.Transparency = exploblue3.Transparency + .025
exploblue.Size = exploblue.Size - Vector3.new(3,3,3)
exploblue2.Size = exploblue2.Size - Vector3.new(3,3,3)
exploblue3.Size = exploblue3.Size - Vector3.new(3,3,3)
swait()
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "lolwtf" then
v:Remove()
end
end
exploblue:Remove()
exploblue2:Remove()
exploblue3:Remove()
print(hit.Name)
end
end)
coroutine.wrap(function()
for i = 1, 350 do
if breakwaterm then break end
colors2 = colortable2[math.random(1,#colortable2)]
blwater = Instance.new("Part",Torso)
blwater.Size = Vector3.new(10,10,10)
blwater.Transparency = .5
blwater.BrickColor = BrickColor.new(colors2)
blwater.Material = "Neon"
blwater.Anchored = false
blwater.CanCollide = false
blwater.CFrame = waterb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blwater.Name = "blyat"
removeuseless:AddItem(blwater,2)
for i,v in pairs(Torso:GetChildren()) do
if v.Name == "blyat" then
v.Size = v.Size - Vector3.new(.25,.25,.25)
v.Transparency = v.Transparency + .025
end
end
swait()
end
pcall(function()
waterb:Remove()
end)
end)()
for i = 1, 50 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(40),0),.4)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.2,.2,.2) * CFrame.Angles(0,0,0),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 1.1, 0.4) * CFrame.Angles(math.rad(-75), math.rad(15), math.rad(4)), 0.5)
swait()
end
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
debounce = false
attacking = false
removeuseless:AddItem(g1,.001)
ws = 90
elseif Press=='j' then
if debounce then return end
if nottouched then return end
nottouched = true
nottouched2 = true
debounce = true 
attacking = true
ws = 6
fireballsize = 0
fireballsize2 = 0
phjv = 0
phjl = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
bigfireball = Instance.new("Part",Torso)
bigfireball.Anchored = true
bigfireball.CanCollide = false
bigfireball.Size = Vector3.new(2,2,2)
bigfireball.BrickColor = BrickColor.new(colors)
bigfireball.Material = "Neon"
bigfireball.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
bigfireball2 = bigfireball:Clone()
bigfireball2.Parent = Torso
bigfireball2.Name = "beeg"
bigfireball2.BrickColor = BrickColor.new(colors)
bigfireball2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
ohno = Instance.new("Sound",bigfireball)
ohno.SoundId = "rbxassetid://2469853862"
ohno.Volume = 9
ohno:Play()
firsound = Instance.new("Sound",bigfireball)
firsound.SoundId = "rbxassetid://2371433183"
firsound.Volume = 0
firsound.Looped = true
firsound:Play()
for i = 1, 350 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
firsound.Volume = firsound.Volume + .05
phjv = phjv + .225
phjl = phjl + .225
fireballsize = fireballsize + .005
fireballsize2 = fireballsize2 + .0152
bigfireball2.CFrame = Root.CFrame * CFrame.new(6,phjv,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
bigfireball.CFrame = Root.CFrame * CFrame.new(6,phjl,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
bigfireball.Size = bigfireball.Size + Vector3.new(.25,.25,.25)
bigfireball2.Size = bigfireball2.Size + Vector3.new(.25,.25,.25)
wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Name = "wsw"
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new(colors)
wshockwave.CFrame = CFrame.new(bigfireball.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "wswm" then
v.Parent.Transparency = v.Parent.Transparency + 0.05
v.Scale = v.Scale + Vector3.new(fireballsize,0,fireballsize2)
end
end
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors)
sk.Name = "sk"
sk.CFrame = bigfireball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "firewave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(fireballsize/10,0,fireballsize/10)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10*math.sin(sine/12)),math.rad(0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(math.rad(0),math.rad(-25),math.rad(-140)),.3)
swait()
end
coroutine.wrap(function()
for i = 1, 45 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "wswm" then
v.Parent.Transparency = v.Parent.Transparency + 0.05
v.Scale = v.Scale + Vector3.new(4,0,4)
end
end
swait()
end
end)()
for i = 1, 75 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
firsound.Volume = firsound.Volume - .05
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10*math.sin(sine/12)),math.rad(0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(math.rad(0),math.rad(-25),math.rad(-140)),.3)
bigfireball2.CFrame = Root.CFrame * CFrame.new(6,phjv,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
bigfireball.CFrame = Root.CFrame * CFrame.new(6,phjl,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
swait()
end
removeuseless:AddItem(g1,.001)
for i = 1, 35 do
firsound.Volume = firsound.Volume - .05
bigfireball2.CFrame = Root.CFrame * CFrame.new(6,phjv,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
bigfireball.CFrame = Root.CFrame * CFrame.new(6,phjl,0) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.55,0) * CFrame.Angles(math.rad(-20),math.rad(5),math.rad(20)),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-40),0),.4)
swait()
end
firsound:Remove()
lozz = bigfireball.Size
bigfireball.Anchored = false
bigfireball.Transparency = 1
bigfireball.Size = Vector3.new(5,5,5)
coroutine.wrap(function()
bov = Instance.new("BodyVelocity",bigfireball)
bov.maxForce = Vector3.new(99999,99999,99999)
bigfireball.CFrame = CFrame.new(bigfireball.Position,mouse.Hit.p)
bov.velocity = bigfireball.CFrame.lookVector*75
coroutine.wrap(function()
for i = 1, 45 do
bigfireball2.Size = bigfireball2.Size + Vector3.new(4,4,4)
bigfireball2.Transparency = bigfireball2.Transparency + .05
swait()
end
end)()
function explo()
SOUND(bigfireball,240795638,36,false,10)
colors = colortable[math.random(1,#colortable)]
bigfireexplosion = bigfireball:Clone()
bigfireexplosion.Parent = Torso
bigfireexplosion.Size = smke.Size + Vector3.new(120,120,120) 
bigfireexplosion.BrickColor = BrickColor.new(colors)
bigfireexplosion.CFrame = bigfireball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
colors = colortable[math.random(1,#colortable)]
bigfireexplosion2 = bigfireball:Clone()
bigfireexplosion2.Parent = Torso
bigfireexplosion2.Size = smke.Size + Vector3.new(120,120,120) 
bigfireexplosion2.BrickColor = BrickColor.new(colors)
bigfireexplosion2.CFrame = bigfireball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
coroutine.wrap(function()
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .08
end
end
bigfireexplosion.Size = bigfireexplosion.Size + Vector3.new(10,10,10)
bigfireexplosion.Transparency = bigfireexplosion.Transparency + .05
bigfireexplosion2.Size = bigfireexplosion2.Size + Vector3.new(10,10,10)
bigfireexplosion2.Transparency = bigfireexplosion2.Transparency + .05
swait()
end
bigfireexplosion:Remove()
bigfireexplosion2:Remove()
end)()
rlplosion = Instance.new("Part",Torso)
rlplosion.Size = Vector3.new(100,100,100)
rlplosion.BrickColor = BrickColor.new(colors)
rlplosion.Material = "Neon"
rlplosion.Anchored = true
rlplosion.Shape = "Ball"
rlplosion.CanCollide = false
rlplosion.CFrame = bigfireball.CFrame
deadlyring = Instance.new("Part", Torso)
deadlyring.Size = Vector3.new(5, 5, 5)
deadlyring.Transparency = 0.7
deadlyring.BrickColor = BrickColor.new("White")
deadlyring.Anchored = true
deadlyring.CanCollide = false
deadlyring.CFrame = rlplosion.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
deadlyringh = Instance.new("SpecialMesh", deadlyring) 
deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh.Scale = Vector3.new(8, 8, .1)
deadlyring2 = Instance.new("Part", Torso)
deadlyring2.Size = Vector3.new(5, 5, 5)
deadlyring2.Transparency = 0.7
deadlyring2.BrickColor = BrickColor.new("White")
deadlyring2.Anchored = true
deadlyring2.CanCollide = false
deadlyring2.CFrame = rlplosion.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
deadlyringh2 = Instance.new("SpecialMesh", deadlyring2) 
deadlyringh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
deadlyringh2.Scale = Vector3.new(8, 8, .1)
deadlywave = Instance.new("Part",Torso)
deadlywave.Size = Vector3.new(18,1,18)
deadlywave.CanCollide = false
deadlywave.Anchored = true
deadlywave.Transparency = .5
deadlywave.BrickColor = BrickColor.new("White")
deadlywave.CFrame = CFrame.new(rlplosion.Position)
deadlywavemesh = Instance.new("SpecialMesh", deadlywave)
deadlywavemesh.Scale = Vector3.new(15,60,15)
deadlywavemesh.MeshId = "rbxassetid://20329976"
deadlywave2 = Instance.new("Part",Torso)
deadlywave2.Size = Vector3.new(1,1,1)
deadlywave2.CanCollide = false
deadlywave2.Anchored = true
deadlywave2.Transparency = .5
deadlywave2.BrickColor = BrickColor.new("White")
deadlywave2.CFrame = CFrame.new(rlplosion.Position)
deadlywave2mesh = Instance.new("SpecialMesh", deadlywave2)
deadlywave2mesh.Scale = Vector3.new(60,5,60)
deadlywave2mesh.MeshId = "rbxassetid://20329976"
rlplosions = 5
for i = 1, 250 do
rlplosions = rlplosions + 1
Hit = damagealll(80+rlplosions,rlplosion.Position)
for _,v in pairs(Hit) do
if redtotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(rlplosion.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
end
deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(5, 5, 0)
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(5, 5, 0)
deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+7),math.rad(0-7),math.rad(0+7))
deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-7),math.rad(0+7),math.rad(0-7))
deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+21),0)
deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+14),0)
deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(4,0,4)
deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(5,0,5)
rlplosion.Size = rlplosion.Size + Vector3.new(2.5,2.5,2.5)
swait()
end
for i = 1, 50 do
ohno.Volume = ohno.Volume - .2
deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(5, 5, 0)
deadlyringh.Scale = deadlyringh.Scale + Vector3.new(5, 5, 0)
deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+7),math.rad(0-7),math.rad(0+7))
deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-7),math.rad(0+7),math.rad(0-7))
deadlyring.Transparency = deadlyring.Transparency + .05
deadlyring2.Transparency = deadlyring2.Transparency + .05
deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+7),0)
deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+4),0)
deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(.4,0,.4)
deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(.5,0,.5)
deadlywave.Transparency = deadlywave.Transparency + .05
deadlywave2.Transparency = deadlywave2.Transparency + .05
rlplosion.Size = rlplosion.Size + Vector3.new(1,1,1)
rlplosion.Transparency = rlplosion.Transparency + 0.02
swait()
end
deadlyring:Remove()
deadlyring2:Remove()
deadlywave:Remove()
deadlywave2:Remove()
rlplosion:Remove()
bigfireball:Remove()
touchedistrue = false
nottouched = false
end
bigfireball.Touched:connect(function(hitza)
if hitza.Name ~= "smke" and hitza.Name ~= "sk" and hitza.Name ~= "beeg" and hitza.Name ~= "wsw" then
if touchedistrue then return end
touchedistrue = true
nottouched2 = false
bigfireball.Anchored = true
bov:Remove()
explo()
end
end)
coroutine.wrap(function()
while nottouched2 do
swait(10)
colors = colortable[math.random(1,#colortable)]
smke = Instance.new("Part",Torso)
smke.Size = lozz
smke.BrickColor = BrickColor.new(colors)
smke.Anchored = true
smke.CanCollide = false
smke.Material = "Neon"
smke.Name = "smke"
smke.CFrame = bigfireball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(smke,3)
end
end)()
while nottouched2 do
swait()
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "smke" then
v.Transparency = v.Transparency + .02
end
end
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors)
sk.Name = "sk"
sk.CFrame = bigfireball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "firewave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "firewave" then
v.Scale = v.Scale + Vector3.new(fireballsize/10,0,fireballsize/10)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
for i = 1, 50 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(40),0),.4)
RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.2,.2,.2) * CFrame.Angles(0,0,0),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 1.1, 0.4) * CFrame.Angles(math.rad(-75), math.rad(15), math.rad(4)), 0.5)
swait()
end
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
coroutine.wrap(function()
for i = 1, 1000 do
if touchedistrue == true then break end
swait()
end
if not touchedistrue then
touchedistrue = true
nottouched2 = false
explo()
end
end)()
attacking = false
debounce = false
ws = 90
elseif Press=='h' then
if winddashing then
ws = 0
winddashing = false
tornad:Remove()
pzp4:Remove()
pzp3:Remove()
pzp2:Remove()
earthquak:Remove()
removeuseless:AddItem(g1,.001)
attacking = false
allowlev = true
SOUND(Torso,1619519574,8,false,5)
for i = 1, 35 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
windball.Size = windball.Size + Vector3.new(1,1,1)
windball.Transparency = windball.Transparency + .05
swait()
end
windball:Remove()
debounce = false
ws = 90
else
if debounce then return end
debounce = true
attacking = true
allowlev = false
ws = 0
for i = 1, 25 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(29 - 12 * math.sin(sine/12)),0,0),.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,.75,0) * CFrame.Angles(math.rad(10),math.rad(5),math.rad(-35)),.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,.75,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.05)
hum.HipHeight = hum.HipHeight + .1
swait()
end
coroutine.wrap(function()
for i = 1, 45 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
SOUND(Torso,2458107258,8,false,5)
groundrum = Instance.new("Sound",Torso)
groundrum.SoundId = "rbxassetid://1265219916"
groundrum.Volume = 10
groundrum.Pitch = 1.5
groundrum:Play()
removeuseless:AddItem(groundrum,4)
hum.HipHeight = 0
wait(.2)
Hit = damagealll(31,Torso.Position)
for _,v in pairs(Hit) do
if whitetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
end
coroutine.wrap(function()
bnmv = 0
craterloc = Instance.new("Part",Torso)
craterloc.Size = Vector3.new(1,1,1)
craterloc.Transparency = 1
craterloc.Anchored = false
craterloc.CanCollide = false
craterlocweld = weldBetween(craterloc,Root)
removeuseless:AddItem(craterloc,25)
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(craterloc.Position)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,14,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(craterloc.Position)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,14,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(6,1,6)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(6,1,6)
end
shockwave:Remove()
shockwave2:Remove()
end)()
for i = 1, 75 do
bnmv = bnmv + 15
grassblocks = Instance.new("Part",craterloc)
grassblocks.Size = Vector3.new(1,1,1)
grassblocks.Material = "Grass"
grassblocks.Anchored = false
grassblocks.Transparency = 1
grassblocks.CanCollide = false
grassblockswld = weldBetween(grassblocks,craterloc)
grassblockswld.C0 = CFrame.new(-15,8.5,0) * CFrame.Angles(math.rad(0),math.rad(bnmv),0)
removeuseless:AddItem(grassblocks,25)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = grassblocks.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(6.5,6.5,6.5)
crater2.Anchored = true
crater2.Name = "cr2"
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Bright green")
end
end)()
for i = 1, 45 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
swait()
end
for i = 1, 50 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-0), math.rad(-0), math.rad(0)), 0.08)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.08)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.08)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.08)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.08)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.5,0)* CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)),.08)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)),.08)
swait()
end
SOUND(Torso,2466413404,8,false,6)
coroutine.wrap(function()
for i = 1, 25 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.01,.01,.01)
removeuseless:AddItem(sk,4)
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .01
end
end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.005,0,.005)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
windball = Instance.new("Part",Torso)
windball.Size = Vector3.new(20,20,20)
windball.Shape = "Ball"
windball.CanCollide = false
windball.Anchored = true
windball.Material = "Neon"
windball.CFrame = Root.CFrame
windball.Transparency = 1
for i = 1, 75 do
windball.CFrame = Root.CFrame
windball.Transparency = windball.Transparency - 0.02
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.4,0) * CFrame.Angles(math.rad(29),0,0),.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,.75,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(-35)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,.75,0)* CFrame.Angles(math.rad(40),math.rad(-5),math.rad(35)),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 1.9, .39) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, .39) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(10)), 0.2)
swait()
end
windball2 = windball:Clone()
windball2.Parent = Torso
windball.Transparency = .5
coroutine.wrap(function()
for i = 1, 25 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.01,.01,.01)
removeuseless:AddItem(sk,4)
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .01
end
end
swait()
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.005,0,.005)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
SOUND(Torso,1619519574,8,false,5)
for i = 1, 50 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "cr2" then
v.Transparency = v.Transparency + .02
end
end
windball2.Size = windball2.Size + Vector3.new(4,4,4)
windball2.Transparency = windball2.Transparency + .05
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.05)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(25 + 5 * math.sin(sine/12))), 0.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(-25 - 5 * math.sin(sine/12))), 0.05)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-41 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 15, math.cos(10 * math.cos(sine/10))), 0.05)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.05)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.05)
swait()
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "cr2" then
v:Remove()
end
end
windball.Anchored = false
windballweld = weldBetween(windball,Torso)
windball2:Remove()
pzp = Instance.new("Part",Torso)
pzp.Size = Vector3.new(1,1,1)
pzp.CanCollide = false
pzp.Transparency = 1
pzpweld = weldBetween(pzp,Torso)
pzpweld.C0 = CFrame.new(0,0,0)
pzp2 = Instance.new("Part",Torso)
pzp2.Size = Vector3.new(1,1,1)
pzp2.CanCollide = false
pzp2.Transparency = 1
pzpweld2 = weldBetween(pzp2,pzp)
pzpweld2.C0 = CFrame.new(12,3,0)
pzp3 = Instance.new("Part",Torso)
pzp3.Size = Vector3.new(1,1,1)
pzp3.CanCollide = false
pzp3.Transparency = 1
pzpweld3 = weldBetween(pzp3,pzp)
pzpweld3.C0 = CFrame.new(-12,3,0)
pzp4 = Instance.new("Part",Torso)
pzp4.Size = Vector3.new(1,1,1)
pzp4.CanCollide = false
pzp4.Transparency = 1
pzpweld4 = weldBetween(pzp4,Root)
pzpweld4.C0 = CFrame.new(0,0,10.5)
earthquak = Instance.new("Sound",Torso)
earthquak.Volume = 9
earthquak.SoundId = "rbxassetid://2017948224"
earthquak.Looped = true
earthquak:Play()
tornad = Instance.new("Sound",windball)
tornad.Volume = 10
tornad.Looped = true
tornad.SoundId = "rbxassetid://1245010022"
tornad:Play()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
winddashing = true
while winddashing do
Hit = damagealll(35,Torso.Position)
for _,v in pairs(Hit) do
if whitetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*190
removeuseless:AddItem(vel,.1)
end
if mouse.Target ~= nil then
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = pzp4.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.01,.01,.01)
removeuseless:AddItem(sk,4)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .025
end
end
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(25 + 5 * math.sin(sine/12))), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(-25 - 5 * math.sin(sine/12))), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.Angles(math.rad(-41), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.5)
earthquak.Volume = 9
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
Root.CFrame = Root.CFrame * CFrame.new(0,0,-4)
coroutine.wrap(function()
local grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(6,6,6)
grassblocks.Material = "Grass"
grassblocks.BrickColor = BrickColor.new("Bright green")
grassblocks.Anchored = true
grassblocks.Transparency = 0
grassblocks.CanCollide = false
grassblocks.CFrame = pzp3.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local grassblocks2 = Instance.new("Part",Torso)
grassblocks2.Size = Vector3.new(6,6,6)
grassblocks2.Material = "Grass"
grassblocks2.Anchored = true
grassblocks2.BrickColor = BrickColor.new("Bright green")
grassblocks2.Transparency = 0
grassblocks2.CanCollide = false
grassblocks2.CFrame = pzp2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
wait(2)
for i = 1, 25 do
grassblocks.Transparency = grassblocks.Transparency + .05
grassblocks2.Transparency = grassblocks2.Transparency + .05
swait()
end
grassblocks:Remove()
grassblocks2:Remove()
end)()
else
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "windwave" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
v.Parent.Transparency = v.Parent.Transparency + .01
end
end
earthquak.Volume = 0
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.4)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.4)
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.4)
end
swait()
end
end
elseif Press=='f' then
if avatarstate then return end
if debounce then return end
debounce = true
attacking = true
allowlev = false
avatarstatee = Instance.new("Sound",Torso)
avatarstatee.SoundId = "rbxassetid://2496371442"
avatarstatee.Volume = 10
avatarstatee:Play()
coroutine.wrap(function()
for i = 1, 100 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.9, -.2) * CFrame.Angles(math.rad(-25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.05)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 1.9, -.2) * CFrame.Angles(math.rad(-25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.75,.5) * CFrame.Angles(math.rad(-60),math.rad(-20 + 1 *math.sin(sine/12)),0),.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.75,.5) * CFrame.Angles(math.rad(-60),math.rad(20 - 1 * math.sin(sine/12)),0),.05)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),0,0),.05)
swait()
end
end)()
for i = 1, 140 do
doomtheme.Volume = doomtheme.Volume - .05
swait()
end
doomtheme.Volume = 6
doomtheme:Play()
levitatewave3 = Instance.new("Part", Torso)
levitatewave3.Size = Vector3.new(1,1,1)
levitatewave3.CanCollide = false
levitatewave3.Anchored = false
levitatewave3.Transparency = .75
levitatewave3.BrickColor = BrickColor.new("White")
levitatewave3.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh3 = Instance.new("SpecialMesh", levitatewave3)
levitatewavemesh3.Scale = Vector3.new(11,1.25,11)
levitatewavemesh3.MeshId = "rbxassetid://20329976"
levitatewaveweld3 = weldBetween(levitatewave3,locbrick1)
levitatewave4 = Instance.new("Part", Torso)
levitatewave4.Size = Vector3.new(1,1,1)
levitatewave4.CanCollide = false
levitatewave4.Anchored = false
levitatewave4.Transparency = .75
levitatewave4.BrickColor = BrickColor.new("White")
levitatewave4.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh4 = Instance.new("SpecialMesh", levitatewave4)
levitatewavemesh4.Scale = Vector3.new(15,2,15)
levitatewavemesh4.MeshId = "rbxassetid://20329976"
levitatewaveweld4 = weldBetween(levitatewave4,locbrick1)
levitatewave5 = Instance.new("Part", Torso)
levitatewave5.Size = Vector3.new(1,1,1)
levitatewave5.CanCollide = false
levitatewave5.Anchored = false
levitatewave5.Transparency = .75
levitatewave5.BrickColor = BrickColor.new("White")
levitatewave5.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh5 = Instance.new("SpecialMesh", levitatewave5)
levitatewavemesh5.Scale = Vector3.new(24,6,24)
levitatewavemesh5.MeshId = "rbxassetid://20329976"
levitatewaveweld5 = weldBetween(levitatewave5,locbrick1)
levitatewave6 = Instance.new("Part", Torso)
levitatewave6.Size = Vector3.new(1,1,1)
levitatewave6.CanCollide = false
levitatewave6.Anchored = false
levitatewave6.Transparency = .75
levitatewave6.BrickColor = BrickColor.new("White")
levitatewave6.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh6 = Instance.new("SpecialMesh", levitatewave6)
levitatewavemesh6.Scale = Vector3.new(23,6,23)
levitatewavemesh6.MeshId = "rbxassetid://20329976"
levitatewaveweld6 = weldBetween(levitatewave6,locbrick1)
windblocks3 = Instance.new("Part",Torso)
windblocks3.Size = Vector3.new(1,1,1)
windblocks3.Transparency = 1
windblocks3.Anchored = false
windblocks3.CanCollide = false
windblocks3weld = weldBetween(windblocks3,Root)

windblocks4 = Instance.new("Part",Torso)
windblocks4.Size = Vector3.new(1,1,1)
windblocks4.Transparency = 1
windblocks4.Anchored = false
windblocks4.CanCollide = false
windblocks4weld = weldBetween(windblocks4,Root)
windring3 = Instance.new("Part", Torso)
windring3.Size = Vector3.new(1, 1, 1)
windring3.Transparency = .9
windring3.Anchored = false
windring3.BrickColor = BrickColor.new("Really white")
windring3.CanCollide = false
ringh3 = Instance.new("SpecialMesh", windring3) 
ringh3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringh3.Scale = Vector3.new(39, 39, 4)
windring3weld = weldBetween(windring3,windblocks3)
windring4 = Instance.new("Part", Torso)
windring4.Size = Vector3.new(1, 1, 1)
windring4.Transparency = .9
windring4.Anchored = false
windring4.BrickColor = BrickColor.new("Really white")
windring4.CanCollide = false
ringh4 = Instance.new("SpecialMesh", windring4) 
ringh4.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringh4.Scale = Vector3.new(39, 39, 4)
windring4weld = weldBetween(windring4,windblocks4)
wind3 = Instance.new("Part", Torso)
wind3.Size = Vector3.new(0.5, 0.5, 0.5)
wind3.Material = "Neon"
wind3.BrickColor = BrickColor.new("Really white")
wind3.Transparency = .88
wind3.CanCollide = false
windMESH3 = Instance.new("SpecialMesh", wind3)
windMESH3.Scale = Vector3.new(9.5,9.5,9.5)
windMESH3.MeshId = "rbxassetid://168892432"
windWeld3 = weldBetween(wind3,Root)
windWeld3.C0 = CFrame.new(0,-10,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
wind4 = Instance.new("Part", Torso)
wind4.Size = Vector3.new(0.5, 0.5, 0.5)
wind4.Material = "Neon"
wind4.BrickColor = BrickColor.new("Really white")
wind4.Transparency = .96
wind4.CanCollide = false
windMESH4 = Instance.new("SpecialMesh", wind4)
windMESH4.Scale = Vector3.new(12,12,12)
windMESH4.MeshId = "rbxassetid://168892432"
windWeld4 = weldBetween(wind4,Root)
windWeld4.C0 = CFrame.new(0,-10,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
waind = 0
for i = 1, 50 do
waind = waind + 5
local windblockss = Instance.new("Part",Torso)
windblockss.Material = "Neon"
windblockss.BrickColor = BrickColor.new("White")
windblockss.Anchored = true
windblockss.Transparency = .5
windblockss.CanCollide = false
windblockss.Size = Vector3.new(5+waind,5+waind,5+waind)
windblockss.Name = "waind2"
windblockss.CFrame = Root.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(windblockss,6)
coroutine.wrap(function()
for i = 1, 40 do
windblockss.Transparency = windblockss.Transparency + .025
swait()
end
windblockss:Remove()
end)()
swait(1)
end
avatarstate = true
debounce = false
attacking = false
allowlev = true
elseif Press=='g' then
if debounce then return end
debounce = true
attacking = true
allowlev = false
ws = 6
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
coroutine.wrap(function()
for i = 1, 85 do
coroutine.wrap(function()
local WindBlastw = Instance.new("Part",Torso)
WindBlastw.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
WindBlastw.Material = "Neon"
WindBlastw.BrickColor = BrickColor.new("White")
WindBlastw.Transparency = .75
WindBlastw.Size = Vector3.new(1,1,1)
WindBlastw.Anchored = true
WindBlastw.CanCollide = false
local WindBlastx = Instance.new("Part",Torso)
WindBlastx.CFrame = leftlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
WindBlastx.Material = "Neon"
WindBlastx.BrickColor = BrickColor.new("White")
WindBlastx.Transparency = .75
WindBlastx.Size = Vector3.new(1,1,1)
WindBlastx.Anchored = true
WindBlastx.CanCollide = false
for i = 1, 25 do
WindBlastx.Size = WindBlastx.Size + Vector3.new(2,2,2)
WindBlastx.Transparency = WindBlastx.Transparency + .05
WindBlastw.Size = WindBlastw.Size + Vector3.new(2,2,2)
WindBlastw.Transparency = WindBlastw.Transparency + .05
swait()
end
WindBlastx:Remove()
WindBlastw:Remove()
end)()
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
sk2 = Instance.new("Part",Torso)
sk2.CanCollide = false
sk2.Anchored = true
sk2.BrickColor = BrickColor.new("White")
sk2.Name = "sk2"
sk2.CFrame = leftlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh2 = Instance.new("SpecialMesh",sk2)
skmesh2.MeshId = "rbxassetid://662586858"
skmesh2.Name = "windwave2"
skmesh2.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk2,2)
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "windwave" then
v.Parent.Transparency = v.Parent.Transparency + .045
v.Scale = v.Scale + Vector3.new(.005,0,.005)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "windwave2" then
v.Parent.Transparency = v.Parent.Transparency + .045
v.Scale = v.Scale + Vector3.new(.005,0,.005)
end
end
swait()
end
end)()
Wind = Instance.new("Sound",Torso)
Wind.Volume = 8
Wind.SoundId = "rbxassetid://147348734"
Wind.Pitch = 1.2
Wind:Play()
removeuseless:AddItem(Wind,6)
for i = 1, 85 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(math.rad(0),math.rad(20),math.rad(-140)),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-.5,2,0) * CFrame.Angles(math.rad(0),math.rad(-20),math.rad(140)),.3)
swait()
end
coroutine.wrap(function()
for i = 1, 15 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "xm"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
sk2 = Instance.new("Part",Torso)
sk2.CanCollide = false
sk2.Anchored = true
sk2.BrickColor = BrickColor.new("White")
sk2.Name = "sk2"
sk2.CFrame = leftlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh2 = Instance.new("SpecialMesh",sk2)
skmesh2.MeshId = "rbxassetid://662586858"
skmesh2.Name = "mx"
skmesh2.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk2,2)
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "mx" then
v.Scale = v.Scale + Vector3.new(.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "xm" then
v.Scale = v.Scale + Vector3.new(.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
for i = 1, 45 do
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "mx" then
v.Scale = v.Scale + Vector3.new(.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do if v.Name == "xm" then
v.Scale = v.Scale + Vector3.new(.03,0,.03)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
removeuseless:AddItem(g1,.001)
coroutine.wrap(function()
for i = 1, 50 do
swait()
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "windwave" then
v.Parent.Transparency = v.Parent.Transparency + .045
v.Scale = v.Scale + Vector3.new(.005,0,.005)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "windwave2" then
v.Parent.Transparency = v.Parent.Transparency + .045
v.Scale = v.Scale + Vector3.new(.005,0,.005)
end
end
end
end)()
ws = 0
SOUND(Torso,2458107258,10,false,4)
coroutine.wrap(function()
local blastpart = Instance.new("Part",Torso)
SOUND(blastpart,479309152,8,true,50)
blastpart.Size = Vector3.new(5,5,5)
blastpart.Name = "blastpart"
blastpart.Anchored = true
blastpart.Transparency = 1
blastpart.CanCollide = false
blastpart.CFrame = Root.CFrame
local locationblast = Instance.new("Part",blastpart)
locationblast.Size = Vector3.new(5,5,5)
locationblast.CanCollide = false
locationblast.Anchored = true
locationblast.Transparency = 1
locationblast.CFrame = blastpart.CFrame * CFrame.new(-5,0,0)
local locationblast2 = Instance.new("Part",blastpart)
locationblast2.Size = Vector3.new(1,1,1)
locationblast2.CanCollide = false
locationblast2.Anchored = true
locationblast2.Transparency = 1
locationblast2.CFrame = blastpart.CFrame * CFrame.new(-5,0,0)
for i = 1, 175 do
Hit = damagealll(58,blastpart.Position)
for _,v in pairs(Hit) do
if whitetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(blastpart.Position,torso.Position).lookVector*100
removeuseless:AddItem(vel,.1)
end
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("White")
sk.Name = "sk"
sk.CFrame = locationblast.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "windwave"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
local sk2 = Instance.new("Part",Torso)
sk2.CanCollide = false
sk2.Anchored = true
sk2.BrickColor = BrickColor.new("White")
sk2.Name = "sk2"
sk2.CFrame = locationblast2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh2 = Instance.new("SpecialMesh",sk2)
skmesh2.MeshId = "rbxassetid://662586858"
skmesh2.Name = "windwave2"
skmesh2.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
local WindBlast = Instance.new("Part",Torso)
WindBlast.CFrame = blastpart.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
WindBlast.Material = "Neon"
WindBlast.Transparency = .6
WindBlast.Size = Vector3.new(42,42,42)
WindBlast.Anchored = true
WindBlast.CanCollide = false
for i = 1, 25 do
skmesh2.Scale = skmesh2.Scale + Vector3.new(.09,0,.09)
skmesh.Scale = skmesh.Scale + Vector3.new(.09,0,.09)
skmesh.Parent.Transparency = skmesh.Parent.Transparency + 0.04
skmesh2.Parent.Transparency = skmesh2.Parent.Transparency + 0.04
WindBlast.Transparency = WindBlast.Transparency + 0.022
swait()
end
sk:Remove()
sk2:Remove()
WindBlast:Remove()
end)()
blastpart.CFrame = blastpart.CFrame * CFrame.new(0,0,0-4.5)
locationblast2.CFrame = blastpart.CFrame * CFrame.new(10,-8,0)
locationblast.CFrame = blastpart.CFrame * CFrame.new(-10,-8,0)
locationblast2.Size = Vector3.new(1,1,1)
locationblast.Size = Vector3.new(1,1,1)
swait()
end
locationblast:Remove()
blastpart:Remove()
locationblast2:Remove()
end)()
for i = 1, 35 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,.8,.5) * CFrame.Angles(math.rad(-90),math.rad(25),math.rad(3)), .3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,.8,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(-3)), .3)
swait()
end
ws = 90
allowlev = true
attacking = false 
debounce = false
elseif Press=='q' then
if debounce then return end
attacking = true
debounce = true
if spwt then
SOUND(Torso,339027743,8,false,4)
coroutine.wrap(function()
for i = 1, 10 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = waterlocbrick2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol3"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol3" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
end
end
swait()
end
end)()
coroutine.wrap(function()
for i = 1, 10 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = waterlocbrick.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol4"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
end
for i = 1, 25 do
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol4" then
v.Scale = v.Scale + Vector3.new(.02,0,.02)
end
end
swait()
end
end)()
waterwaveb = Instance.new("Part",Torso)
waterwaveb.CFrame = waterlocbrick.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
waterwaveb.Size = Vector3.new(1,1,1)
waterwaveb.BrickColor = BrickColor.new(colors2)
waterwaveb.Transparency = .2
waterwaveb.CanCollide = false
waterwaveb.Anchored = true
waterwaveb.Material = "Neon"
waterwaveb2 = Instance.new("Part",Torso)
waterwaveb2.CFrame = waterlocbrick2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
waterwaveb2.Size = Vector3.new(1,1,1)
waterwaveb2.BrickColor = BrickColor.new(colors2)
waterwaveb2.Transparency = .2
waterwaveb2.CanCollide = false
waterwaveb2.Anchored = true
waterwaveb2.Material = "Neon"
coroutine.wrap(function()
for i = 1, 25 do
sow = sow - 0.25
waterwaveb.Size = waterwaveb.Size + Vector3.new(.9,.9,.9)
waterwaveb2.Size = waterwaveb2.Size + Vector3.new(.9,.9,.9)
waterwaveb.Transparency = waterwaveb.Transparency + .05
waterwaveb2.Transparency = waterwaveb2.Transparency + .05
swait()
end
spinwater = false
pxcbrick:Remove()
waterlocbrick:Remove()
waterlocbrick2:Remove()
waterwaveb:Remove()
waterwaveb2:Remove()
spwt = false
attacking = false
debounce = false
end)()
else
ws = 0
spinwater = true
spwt = true
coroutine.wrap(function()
local shockwave = Instance.new("Part",Torso)
shockwave.Shape = "Ball"
shockwave.Size = Vector3.new(1,1,1)
shockwave.Transparency = 0
shockwave.Anchored = true
shockwave.CanCollide = false
shockwave.BrickColor = BrickColor.new("Cyan")
shockwave.CFrame = Torso.CFrame
shockwave.Material = "Neon"
coroutine.wrap(function()
coroutine.wrap(function()
for i = 1, 50 do
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol2" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + 0.05
end
end
swait()
end
end)()
for i = 1, 15 do
swait()
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.Material = "Neon"
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk2"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol2"
skmesh.Scale = Vector3.new(.09,.01,.09)
removeuseless:AddItem(sk,2)
end
end)()
for i = 1, 30 do
shockwave.Size = shockwave.Size + Vector3.new(4,4,4)
shockwave.Transparency = shockwave.Transparency + .045
swait()
end
end)()
SOUND(Torso,2136440257,8,false,8)
SOUND(Torso,169486406,10,false,4)
coroutine.wrap(function()
pxcbrick = Instance.new("Part",Root)
pxcbrick.Size = Vector3.new(1,1,1)
pxcbrick.CanCollide = false
pxcbrick.Transparency = 1
pxcbrickweld = weldBetween(pxcbrick,Torso)
waterlocbrick = Instance.new("Part",Torso)
waterlocbrick.Size = Vector3.new(1,1,1)
waterlocbrick.Anchored = false
waterlocbrick.Transparency = 1
waterlocbrick.CanCollide = false
wazx = weldBetween(waterlocbrick,pxcbrick)
wazx.C0 = CFrame.new(0,0,0)
waterlocbrick2 = Instance.new("Part",Torso)
waterlocbrick2.Size = Vector3.new(1,1,1)
waterlocbrick2.Anchored = false
waterlocbrick2.Transparency = 1
waterlocbrick2.CanCollide = false
wazx2 = weldBetween(waterlocbrick2,pxcbrick)
wazx2.C0 = CFrame.new(0,0,0)
coroutine.wrap(function()
sow = 5
while spinwater do
colors2 = colortable2[math.random(1,#colortable2)]
waterwave = Instance.new("Part",waterlocbrick)
waterwave.BrickColor = BrickColor.new(colors2)
waterwave.Size = Vector3.new(sow,sow,sow)
waterwave.CFrame = waterlocbrick.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
waterwave.CanCollide = false
waterwave.Material = "Neon"
waterwave.Transparency = .4
waterwave.Name = "waterwave"
removeuseless:AddItem(waterwave,1.3)
waterwave2 = Instance.new("Part",waterlocbrick2)
waterwave2.BrickColor = BrickColor.new(colors2)
waterwave2.Size = Vector3.new(sow,sow,sow)
waterwave2.Material = "Neon"
waterwave2.Transparency = .4
waterwave2.CFrame = waterlocbrick2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
waterwave2.CanCollide = false
waterwave2.Name = "waterwave2"
removeuseless:AddItem(waterwave2,1.3)
for i,v in pairs(waterlocbrick:GetDescendants()) do
if v.Name == "waterwave" then
v.Size = v.Size - Vector3.new(.3,.3,.3)
end
end
for i,v in pairs(waterlocbrick2:GetDescendants()) do
if v.Name == "waterwave2" then
v.Size = v.Size - Vector3.new(.3,.3,.3)
end
end
swait(.1)
end
end)()
for i = 1, 70 do
wazx.C0 = wazx.C0:lerp(CFrame.new(-15,0,0),.1)
wazx2.C0 = wazx2.C0:lerp(CFrame.new(15,0,0),.1)
swait()
end
mb = 25
for i = 1, 40 do
pxcbrickweld.C0 = pxcbrickweld.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(25),0),.05)
swait()
end
coroutine.wrap(function()
coroutine.wrap(function()
if firsttimewtr then return end
firsttimewtr = true
while true do
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol4" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol3" then
v.Scale = v.Scale + Vector3.new(.01,0,.01)
v.Parent.Transparency = v.Parent.Transparency + .05
end
end
swait()
end
end)()
while spinwater do
swait(15)
Hit = damagealll(14,waterlocbrick2.Position)
for _,v in pairs(Hit) do
coroutine.wrap(function()
for i = 1, 10 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = waterlocbrick2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol3"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
end
end)()
if bluetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
v:FindFirstChildOfClass("Humanoid").Parent:BreakJoints()
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
SOUND(waterlocbrick2,169486406,10,false,4)
end
Hit = damagealll(14,waterlocbrick.Position)
for _,v in pairs(Hit) do
coroutine.wrap(function()
for i = 1, 10 do
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors2)
sk.Name = "sk"
sk.CFrame = waterlocbrick.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol4"
skmesh.Scale = Vector3.new(.04,.01,.04)
removeuseless:AddItem(sk,2)
end
end)()
if bluetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*125
removeuseless:AddItem(vel,.1)
SOUND(waterlocbrick,169486406,10,false,4)
end
swait()
end
end)()
while spinwater do
mb = mb - 3
pxcbrickweld.C0 = pxcbrickweld.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(mb),0),.1)
swait()
end
end)()
for i = 1, 110 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(25),0,0),.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,.75,0) * CFrame.Angles(math.rad(10),math.rad(5),math.rad(-35)),.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,.75,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.05)
swait()
end
ws = 90
attacking = false
debounce = false
end
elseif Press=='p' then
if debounce then return end
debounce = true
attacking = true
apocalypse = true
ws = 0
coroutine.wrap(function()
colors = colortable[math.random(1,#colortable)]
local shockwave = Instance.new("Part",Torso)
shockwave.Shape = "Ball"
shockwave.Size = Vector3.new(1,1,1)
shockwave.Transparency = 0
shockwave.Anchored = true
shockwave.CanCollide = false
shockwave.BrickColor = BrickColor.new(colors)
shockwave.CFrame = Torso.CFrame
shockwave.Material = "Neon"
for i = 1, 30 do
shockwave.Size = shockwave.Size + Vector3.new(4,4,4)
shockwave.Transparency = shockwave.Transparency + .045
swait()
end
end)()
explosionsound = Instance.new("Sound",Torso)
explosionsound.Volume = 10
explosionsound.Pitch = 1
explosionsound:Play()
explosionsound.SoundId = "rbxassetid://1327085116"
coroutine.wrap(function()
while apocalypse do
swait(10)
if avatarstate then
Hit = damagealll(60,Torso.Position)
else
Hit = damagealll(32,Torso.Position)
end
for _,v in pairs(Hit) do
if redtotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
v:FindFirstChildOfClass("Humanoid").Parent:BreakJoints()
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*60
removeuseless:AddItem(vel,.1)
end
explosionsound:Play()
end
end)()
coroutine.wrap(function()
while apocalypse do
swait(.3)
wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = .45
wshockwave.BrickColor = BrickColor.new(colors)
wshockwave.CFrame = CFrame.new(Torso.Position) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,.05,1)
wshockwavemesh.Name = "wswm"
wshockwavemesh.MeshId = "rbxassetid://20329976"
removeuseless:AddItem(wshockwave,2)
fairebalz = Instance.new("Part",Torso)
fairebalz.Size = Vector3.new(.1,.1,.1)
fairebalz.Transparency = 0
fairebalz.Name = "fairebalz"
fairebalz.BrickColor = BrickColor.new(colors)
fairebalz.Anchored = true
fairebalz.CanCollide = false
fairebalz.Material = "Neon"
fairebalz.CFrame = Root.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15)) * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
removeuseless:AddItem(fairebalz,1)
sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new(colors)
sk.Name = "sk"
sk.CFrame = Torso.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "sklol"
skmesh.Scale = Vector3.new(.09,.05,.09)
removeuseless:AddItem(sk,2)
if not avatarstate then
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol" then
v.Parent.Transparency = v.Parent.Transparency + 0.06
v.Scale = v.Scale + Vector3.new(.03,.001,.03)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "wswm" then
v.Parent.Transparency = v.Parent.Transparency + 0.05
v.Scale = v.Scale + Vector3.new(2,0,2)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "fairebalz" then
v.Transparency = v.Transparency + 0.05
v.Size = v.Size + Vector3.new(.45,.45,.45)
end
end
else
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol" then
v.Parent.Transparency = v.Parent.Transparency + 0.06
v.Scale = v.Scale + Vector3.new(.06,.002,.06)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "wswm" then
v.Parent.Transparency = v.Parent.Transparency + 0.05
v.Scale = v.Scale + Vector3.new(4,0,4)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "fairebalz" then
v.Transparency = v.Transparency + 0.05
v.Size = v.Size + Vector3.new(.9,.9,.9)
end
end
end
end
end)()
for i = 1, 135 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(29 - 12 * math.sin(sine/12)),0,0),.05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:Lerp(CFrame.new(-1.65,.75,0) * CFrame.Angles(math.rad(10),math.rad(5),math.rad(-35)),.05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:Lerp(CFrame.new(1.65,.75,0)* CFrame.Angles(math.rad(10),math.rad(-5),math.rad(35)),.05)
swait()
end
wait(.1)
coroutine.wrap(function()
for i = 1, 30 do
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "sklol" then
v.Parent.Transparency = v.Parent.Transparency + 0.06
v.Scale = v.Scale + Vector3.new(.03,.001,.03)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "fairebalz" then
v.Transparency = v.Transparency + 0.05
v.Size = v.Size + Vector3.new(.25,.25,.25)
end
end
for i,v in pairs(Torso:GetDescendants()) do
if v.Name == "wswm" then
v.Parent.Transparency = v.Parent.Transparency + 0.05
v.Scale = v.Scale + Vector3.new(2,0,2)
end
end
swait()
end
end)()
apocalypse = false
attacking = false
debounce = false
ws = 90
removeuseless:AddItem(explosionsound,5)
elseif Press=='u' then
if debounce then return end
debounce = true
attacking = true
ws = 16
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
if avatarstate then
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
end
ws = 0
removeuseless:AddItem(g1,.001)
shieldlocbrick = Instance.new("Part",Torso)
shieldlocbrick.Size = Vector3.new(1,1,1)
shieldlocbrick.Anchored = true
shieldlocbrick.Transparency = 1
shieldlocbrick.CanCollide = false
shieldlocbrick.CFrame = Root.CFrame * CFrame.new(0,-6,-24)
Hit = damagealll(25,shieldlocbrick.Position)
for _,v in pairs(Hit) do
if browntotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(shieldlocbrick.Position,torso.Position).lookVector*75
removeuseless:AddItem(vel,.1)
end
removeuseless:AddItem(shieldlocbrick,5)
SOUND(shieldlocbrick,1119859528,8,false,5)
coroutine.wrap(function()
local grshield = Instance.new("Part",Torso)
grshield.Material = "Grass"
grshield.Anchored = true
grshield.BrickColor = BrickColor.new("Bright green")
grshield.Size = Vector3.new(4,math.random(42,48),12)
grshield.CFrame = Root.CFrame * CFrame.new(0,-30,-18) * CFrame.Angles(math.rad(math.random(-8,-3)),math.rad(math.random(82,98)),math.rad(math.random(-20,-15)))
local grshield2 = Instance.new("Part",Torso)
grshield2.Material = "Grass"
grshield2.Anchored = true
grshield2.BrickColor = BrickColor.new("Bright green")
grshield2.Size = Vector3.new(4,math.random(42,48),12)
grshield2.CFrame = Root.CFrame * CFrame.new(8,-30,-18) * CFrame.Angles(math.rad(math.random(-8,-3)),math.rad(math.random(82,98)),math.rad(math.random(-20,-15)))
local grshield3 = Instance.new("Part",Torso)
grshield3.Material = "Grass"
grshield3.Anchored = true
grshield3.BrickColor = BrickColor.new("Bright green")
grshield3.Size = Vector3.new(4,math.random(42,48),12)
grshield3.CFrame = Root.CFrame * CFrame.new(-8,-30,-18) * CFrame.Angles(math.rad(math.random(-8,-3)),math.rad(math.random(82,98)),math.rad(math.random(-20,-15)))
local grshield4 = Instance.new("Part",Torso)
grshield4.Material = "Grass"
grshield4.Anchored = true
grshield4.BrickColor = BrickColor.new("Bright green")
grshield4.Size = Vector3.new(4,math.random(42,48),12)
grshield4.CFrame = Root.CFrame * CFrame.new(16,-30,-18) * CFrame.Angles(math.rad(math.random(-8,-3)),math.rad(math.random(82,98)),math.rad(math.random(-20,-15)))
local grshield5 = Instance.new("Part",Torso)
grshield5.Material = "Grass"
grshield5.Anchored = true
grshield5.BrickColor = BrickColor.new("Bright green")
grshield5.Size = Vector3.new(4,math.random(42,48),12)
grshield5.CFrame = Root.CFrame * CFrame.new(-16,-30,-18) * CFrame.Angles(math.rad(math.random(-8,-3)),math.rad(math.random(82,98)),math.rad(math.random(-20,-15)))
for i = 1, 15 do
grshield.CFrame = grshield.CFrame * CFrame.new(0,2,0)
grshield2.CFrame = grshield2.CFrame * CFrame.new(0,2,0)
grshield3.CFrame = grshield3.CFrame * CFrame.new(0,2,0)
grshield4.CFrame = grshield4.CFrame * CFrame.new(0,2,0)
grshield5.CFrame = grshield5.CFrame * CFrame.new(0,2,0)
swait()
end
for i = 1, 5 do
grshield.CFrame = grshield.CFrame * CFrame.new(0,.2,0)
grshield2.CFrame = grshield2.CFrame * CFrame.new(0,.2,0)
grshield3.CFrame = grshield3.CFrame * CFrame.new(0,.2,0)
grshield4.CFrame = grshield4.CFrame * CFrame.new(0,.2,0)
grshield5.CFrame = grshield5.CFrame * CFrame.new(0,.2,0)
swait()
end
for i = 1, 5 do
grshield.CFrame = grshield.CFrame * CFrame.new(0,-.2,0)
grshield2.CFrame = grshield2.CFrame * CFrame.new(0,-.2,0)
grshield3.CFrame = grshield3.CFrame * CFrame.new(0,-.2,0)
grshield4.CFrame = grshield4.CFrame * CFrame.new(0,-.2,0)
grshield5.CFrame = grshield5.CFrame * CFrame.new(0,-.2,0)
swait()
end
wait(30)
for i = 1, 6 do
grshield.CFrame = grshield.CFrame * CFrame.new(0,.4,0)
grshield2.CFrame = grshield2.CFrame * CFrame.new(0,.4,0)
grshield3.CFrame = grshield3.CFrame * CFrame.new(0,.4,0)
grshield4.CFrame = grshield4.CFrame * CFrame.new(0,.4,0)
grshield5.CFrame = grshield5.CFrame * CFrame.new(0,.4,0)
swait()
end
for i = 1, 30 do
grshield.Transparency = grshield.Transparency + .025
grshield2.Transparency = grshield2.Transparency + .025
grshield3.Transparency = grshield3.Transparency + .025
grshield4.Transparency = grshield4.Transparency + .025
grshield5.Transparency = grshield5.Transparency + .025
grshield.CFrame = grshield.CFrame * CFrame.new(0,-2,0)
grshield2.CFrame = grshield2.CFrame * CFrame.new(0,-2,0)
grshield3.CFrame = grshield3.CFrame * CFrame.new(0,-2,0)
grshield4.CFrame = grshield4.CFrame * CFrame.new(0,-2,0)
grshield5.CFrame = grshield5.CFrame * CFrame.new(0,-2,0)
swait()
end
grshield:Remove()
grshield2:Remove()
grshield3:Remove()
grshield4:Remove()
grshield5:Remove()
end)()
if avatarstate then
for i = 1, 5 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.8)
swait()
end
else
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
end
debounce = false
attacking = false
ws = 90
elseif Press=='x' then
id = 2435339444
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
elseif Press=='z' then
id = 2327920334
doomtheme.SoundId = "rbxassetid://"..id
doomtheme:Play()
elseif Press=='y' then
if debounce then return end
debounce = true
attacking = true
allowlev = false
zxm={}
ws = 0
waterball = Instance.new("Part",Torso)
waterball.Size = Vector3.new(25,25,25)
waterball.Transparency = .9
waterball.Shape = "Ball"
waterball.BrickColor = BrickColor.new("Cyan")
waterball.Anchored = true
waterball.Material = "Neon"
waterball.CanCollide = false
waterball.CFrame = Root.CFrame
waterp = true
coroutine.wrap(function()
while waterball.Transparency > 0 do
waterball.CFrame = Root.CFrame
waterblockk = Instance.new("Part",Torso)
waterblockk.Material = waterblocks.Material
waterblockk.BrickColor = waterblocks.BrickColor
waterblockk.CanCollide = false
waterblockk.Anchored = true
waterblockk.Size = Vector3.new(2,2,2)
waterblockk.Name = "nd"
waterblockk.Transparency = .25
table.insert(zxm,waterblockk)
waterblockk.CFrame = Root.CFrame * CFrame.new(math.random(-18,18),math.random(-18,18),math.random(-18,18)) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
removeuseless:AddItem(waterblockk,.75)
swait(5)
end
end)()
coroutine.wrap(function()
while waterball.Transparency > 0 do
waterball.Transparency = waterball.Transparency -  0.0050
for i,v in pairs(zxm) do 
v.Transparency = v.Transparency + .05
v.CFrame = v.CFrame:lerp(CFrame.new(Root.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))) ,.09)
end
swait()
end
waterp = false
for i = 1, 25 do
for i,v in pairs(zxm) do 
v.Transparency = v.Transparency + .05
v.Size = v.Size + Vector3.new(.5,.5,.5)
end
swait()
end
end)()
for i = 1, 20 do
waterball.Size = waterball.Size - Vector3.new(.85,.85,.85)
waterball.CFrame = Root.CFrame
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(-88),math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(-1), math.rad(-3)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(1), math.rad(3)), 0.25)
swait()
end
while wait() do
if not waterp then break end
end
wshockwave = Instance.new("Part", Torso)
wshockwave.Size = Vector3.new(1,1,1)
wshockwave.CanCollide = false
wshockwave.Anchored = true
wshockwave.Transparency = 1
wshockwave.BrickColor = BrickColor.new("Cyan")
wshockwave.CFrame = CFrame.new(waterball.Position) * CFrame.new(0,-9,0)
wshockwavemesh = Instance.new("SpecialMesh", wshockwave)
wshockwavemesh.Scale = Vector3.new(1,3,1)
wshockwavemesh.MeshId = "rbxassetid://20329976"
wshockwave2 = Instance.new("Part", Torso)
wshockwave2.Size = Vector3.new(1,1,1)
wshockwave2.CanCollide = false
wshockwave2.Anchored = true
wshockwave2.Transparency = 1
wshockwave2.BrickColor = BrickColor.new("Cyan")
wshockwave2.CFrame = CFrame.new(waterball.Position) * CFrame.new(0,-9,0)
wshockwavemesh2 = Instance.new("SpecialMesh", wshockwave2)
wshockwavemesh2.Scale = Vector3.new(2,3,2)
wshockwavemesh2.MeshId = "rbxassetid://20329976"
waterball2 = waterball:Clone()
waterball2.Parent = Torso
waterball2.Transparency = .25
waterball3 = waterball:Clone()
waterball3.Parent = Torso
waterball3.Transparency = .5
waterball4 = waterball:Clone()
waterball4.Parent = Torso
waterball4.Transparency = .75
fkd = Instance.new("Sound",Torso)
fkd.SoundId = "rbxassetid://2136442504"
fkd.Volume = 8
fkd:Play()
dbw = 25
for i = 1, 6 do
wshockwave.CFrame = CFrame.new(waterball.Position) * CFrame.new(0,-9,0)
wshockwave2.CFrame = CFrame.new(waterball.Position) * CFrame.new(0,-9,0)
wshockwave.Transparency = 1
wshockwave2.Transparency = 1
wshockwavemesh2.Scale = Vector3.new(4,3,4)
wshockwavemesh.Scale = Vector3.new(2,3,2)
dbw = dbw + 25
swait()
if avatarstate then
Hit = damagealll(120,waterball.Position)
else
Hit = damagealll(65,waterball.Position)
end
for _,v in pairs(Hit) do
if bluetotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(waterball.Position,torso.Position).lookVector*dbw
removeuseless:AddItem(vel,.1)
end
if avatarstate then
for i = 1, 35 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.Transparency = wshockwave.Transparency - .015
wshockwave2.Transparency = wshockwave2.Transparency - .015
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+15),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-15),0)
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(7,.89,7)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(8,2,8)
waterball2.Size = waterball2.Size + Vector3.new(2,2,2)
waterball3.Size = waterball3.Size + Vector3.new(4,4,4)
waterball4.Size = waterball4.Size + Vector3.new(6,6,6)
swait()
end
for i = 1, 25 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+7),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-7),0)
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(3.5,.87,3.5)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(4,1,4)
waterball2.Size = waterball2.Size + Vector3.new(1,1,1)
waterball3.Size = waterball3.Size + Vector3.new(2,2,2)
waterball4.Size = waterball4.Size + Vector3.new(3,3,3)
swait()
end
for i = 1, 40 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-20),0)
wshockwave.Transparency = wshockwave.Transparency +.03
wshockwave2.Transparency = wshockwave2.Transparency + .03
wshockwavemesh.Scale = wshockwavemesh.Scale - Vector3.new(14,4,14)
wshockwavemesh2.Scale = wshockwavemesh2.Scale - Vector3.new(16,6,16)
waterball2.Size = waterball2.Size - Vector3.new(4,4,4)
waterball3.Size = waterball3.Size - Vector3.new(8,8,8)
waterball4.Size = waterball4.Size - Vector3.new(12,12,12)
swait()
end
else
for i = 1, 35 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.Transparency = wshockwave.Transparency - .015
wshockwave2.Transparency = wshockwave2.Transparency - .015
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+15),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-15),0)
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(3.5,.4375,3.5)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(4,1,4)
waterball2.Size = waterball2.Size + Vector3.new(1,1,1)
waterball3.Size = waterball3.Size + Vector3.new(2,2,2)
waterball4.Size = waterball4.Size + Vector3.new(3,3,3)
swait()
end
for i = 1, 25 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+7),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-7),0)
wshockwavemesh.Scale = wshockwavemesh.Scale + Vector3.new(1.75,.4375,1.75)
wshockwavemesh2.Scale = wshockwavemesh2.Scale + Vector3.new(2,.5,2)
waterball2.Size = waterball2.Size + Vector3.new(.5,.5,.5)
waterball3.Size = waterball3.Size + Vector3.new(1,1,1)
waterball4.Size = waterball4.Size + Vector3.new(1.5,1.5,1.5)
swait()
end
for i = 1, 40 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
wshockwave.CFrame = wshockwave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
wshockwave2.CFrame = wshockwave2.CFrame * CFrame.Angles(0,math.rad(0-20),0)
wshockwave.Transparency = wshockwave.Transparency +.03
wshockwave2.Transparency = wshockwave2.Transparency + .03
wshockwavemesh.Scale = wshockwavemesh.Scale - Vector3.new(7,2,7)
wshockwavemesh2.Scale = wshockwavemesh2.Scale - Vector3.new(8,3,8)
waterball2.Size = waterball2.Size - Vector3.new(2,2,2)
waterball3.Size = waterball3.Size - Vector3.new(4,4,4)
waterball4.Size = waterball4.Size - Vector3.new(6,6,6)
swait()
end
end
end
for i = 1, 50 do
waterball.CFrame = Root.CFrame
waterball2.CFrame = Root.CFrame
waterball3.CFrame = Root.CFrame
waterball4.CFrame = Root.CFrame
waterball.Transparency = waterball.Transparency + .025
waterball2.Transparency = waterball2.Transparency + .025
waterball3.Transparency = waterball3.Transparency + .035
waterball4.Transparency = waterball4.Transparency + .045
waterball.Size = waterball.Size + Vector3.new(.5,.5,.5)
waterball2.Size = waterball2.Size + Vector3.new(1,1,1)
waterball3.Size = waterball3.Size + Vector3.new(2,2,2)
waterball4.Size = waterball4.Size + Vector3.new(3,3,3)
swait()
end
wshockwave:Remove()
wshockwave2:Remove()
waterball:Remove()
waterball2:Remove()
waterball3:Remove()
waterball4:Remove()
attacking = false
debounce = false
waterp = false
allowlev = true
fkd:Remove()
ws = 90
elseif Press=='t' then
if tauntdebounce then return end
if debounce then return end
debounce = true
tauntdebounce = true
attacking = true
debounce = true
ws = 6
coroutine.wrap(function()
for i = 1, 125 do
ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(22 - 12 * math.sin(sine/12)),0,0),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.4)
swait()
end
attacking = false
debounce = false
ws = 90
end)()
got2 = gottalktable2[math.random(1,#gottalktable2)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..got2
tauntsound.Looped = false
tauntsound:Play()
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,4,0,1.6)
b1.StudsOffset = Vector3.new(0,0,0)
b1.Name = "ttau"
b1.AlwaysOnTop = true
b1.StudsOffset = Vector3.new(0,4,0)
b1.Adornee = Head
removeuseless:AddItem(b1,8)
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
if tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492600258" then
b2.Text = "On your knees."
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492598999" then
b2.Text = "I've survived many battles."
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599159" then
b2.Text = "You do not impress."
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599303" then
b2.Text = "You would test a god?"
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599503" then
b2.Text = "You will respect my title!"
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599663" then
b2.Text = "I shall honor you with combat!"
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599795" then
b2.Text = "A lamb to the slaughter."
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492599925" then
b2.Text = "You're most worthy, to die by my hand."
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492600097" then
b2.Text = "Your soul burns!"
elseif tauntsound.SoundId == "http://www.roblox.com/asset/?id=2492600455" then
b2.Text = "Pathetic."
end
b2.Font = "Garamond"
b2.TextSize = 50
b2.Name = "lafftext"
b2.TextStrokeTransparency = 1
b2.Transparency = 1
b2.TextColor3 = BrickColor.new("Cyan").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,.5,0)
coroutine.wrap(function()
for i = 1, 20 do
b2.Transparency = b2.Transparency - .05
b2.TextStrokeTransparency = b2.TextStrokeTransparency - .05
swait()
end
end)()
wait(tauntsound.TimeLength)
wait(3)
coroutine.wrap(function()
for i = 1, 20 do
b2.Transparency = b2.Transparency + .05
b2.TextStrokeTransparency = b2.TextStrokeTransparency + .05
swait()
end
end)()
tauntsound:Remove()
wait(1)
tauntdebounce = false
elseif Press=='r' then
if debounce then return end
if fireball1 then
SOUND(rightlocation,842332424,7,false,4)
fireball1 = false
fireball2 = true
attacking = true
debounce = true
appi = true
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude > 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .5
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.5)
end
end
end)()
ws = 65
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
if avatarstate then
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.7)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(-14), math.rad(20), math.rad(-90)), 0.6)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(-14), math.rad(20), math.rad(-90)), 0.3)
swait()
end
end
swoosh = Instance.new("Part",Head)
swoosh.Size = Vector3.new(1,1,1)
swoosh.CanCollide = false
swoosh.Anchored = false
swoosh.Name = "swoosh"
swoosh.Transparency = 1
swoosh.CFrame = rightlocation.CFrame
coroutine.wrap(function()
if bbv then return end
bbv = true
while wait(.08) do
for i,v in pairs(Head:GetDescendants()) do
if v.Name == "swoosh" then
Hit = damagealll(13,v.Position)
for _,v in pairs(Hit) do
if redtotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(swoosh.Position,torso.Position).lookVector*100
removeuseless:AddItem(vel,.1)
end
end
end
end
end)()
coroutine.wrap(function()
if firsttime then return end
firsttime = true
while wait() do
for i,v in pairs(RightArm:GetChildren()) do
if v.Name == "magiccc" then
v.Transparency = v.Transparency + .05
end
end
for i,v in pairs(Head:GetChildren()) do
if v.Name == "swoosh" then
magiccc = Instance.new("Part",RightArm)
magiccc.Material = "Neon"
magiccc.CanCollide = false
magiccc.Anchored = true
magiccc.Name = "magiccc"
magiccc.BrickColor = BrickColor.new(colors)
magiccc.Size = Vector3.new(5,5,5)
magiccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(magiccc,2)
end
end
end
end)()
bov = Instance.new("BodyVelocity",swoosh)
bov.maxForce = Vector3.new(99999,99999,99999)
swoosh.CFrame = CFrame.new(swoosh.Position,mouse.Hit.p)
bov.velocity = swoosh.CFrame.lookVector*215
removeuseless:AddItem(swoosh,5)
if avatarstate then
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.8)
RIGHTARMLERP.C1 = CFrame.new(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.8)
swait()
end
else
for i = 1, 12 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
RIGHTARMLERP.C1 = CFrame.new(0,0,0)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
swait()
end
end
ws = 90
appi = false
attacking = false
debounce = false
removeuseless:AddItem(g1,.01)
elseif fireball2 then
SOUND(leftlocation,842332424,7,false,4)
fireball1 = true
fireball2 = false
attacking = true
debounce = true
appi = true
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude > 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .5
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.5)
end
end
end)()
ws = 65
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
if avatarstate then
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.7)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(-14), math.rad(-20), math.rad(90)), 0.6)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(-14), math.rad(-20), math.rad(90)), 0.3)
swait()
end
end
swoosh = Instance.new("Part",Head)
swoosh.Size = Vector3.new(1,1,1)
swoosh.CanCollide = false
swoosh.Anchored = false
swoosh.Name = "swoosh"
swoosh.Transparency = 1
swoosh.CFrame = leftlocation.CFrame
coroutine.wrap(function()
if firsttime then return end
firsttime = true
while wait() do
for i,v in pairs(RightArm:GetChildren()) do
if v.Name == "magiccc" then
v.Transparency = v.Transparency + .05
end
end
for i,v in pairs(Head:GetChildren()) do
if v.Name == "swoosh" then
magiccc = Instance.new("Part",RightArm)
magiccc.Material = "Neon"
magiccc.CanCollide = false
magiccc.Anchored = true
magiccc.Name = "magiccc"
magiccc.BrickColor = BrickColor.new(colors)
magiccc.Size = Vector3.new(5,5,5)
magiccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
removeuseless:AddItem(magiccc,2)
end
end
end
end)()
bov = Instance.new("BodyVelocity",swoosh)
bov.maxForce = Vector3.new(99999,99999,99999)
swoosh.CFrame = CFrame.new(swoosh.Position,mouse.Hit.p)
bov.velocity = swoosh.CFrame.lookVector*215
removeuseless:AddItem(swoosh,5)
if avatarstate then
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.8)
LEFTARMLERP.C1 = CFrame.new(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(25),math.rad(0)), 0.8)
swait()
end
else
for i = 1, 12 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
LEFTARMLERP.C1 = CFrame.new(0,0,0)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(25),math.rad(0)), 0.5)
swait()
end
end
ws = 90
attacking = false
debounce = false
appi = false
removeuseless:AddItem(g1,.01)
end
elseif Press=='e' then
if throw1 then
if debounce then return end
throw1 = false
throw2 = true
debounce = true
attacking = true
appi = true
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude > 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .5
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.5)
end
end
end)()
if avatarstate then
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(0)),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(0)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(30),0),.4)
swait()
end
end
if mouse.Target ~= nil then
biggrassblock = Instance.new("Part",Torso)
biggrassblock.Size = Vector3.new(math.random(15,18),50,math.random(15,18))
biggrassblock.Anchored = true
biggrassblock.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-10,0) * CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15)))
biggrassblock.CanCollide = true
biggrassblock.Material = "Slate"
biggrassblock.BrickColor = BrickColor.new("Earth green")
removeuseless:AddItem(biggrassblock,10)
coroutine.wrap(function()
local locbrick = Instance.new("Part",biggrassblock)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
local locbrick2 = Instance.new("Part",biggrassblock)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(locbrick.Position)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(locbrick.Position)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
zxp = 0
for i = 1, 75 do
zxp = zxp + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = biggrassblock.BrickColor
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(15,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp),math.rad(0))
removeuseless:AddItem(crater,1)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(13,13,13)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Bright green")
removeuseless:AddItem(crater2,15)
end
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(6,1,6)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(6,1,6)
end
end)()
coroutine.wrap(function()
for i = 1, 10 do
swait()
biggrassblock.CFrame = biggrassblock.CFrame * CFrame.new(0,2.7,0)
end
end)()
groundrum = Instance.new("Sound",biggrassblock)
groundrum.SoundId = "rbxassetid://1265219916"
groundrum.Volume = 10
groundrum.Pitch = 1.5
groundrum:Play()
Hit = damagealll(30,biggrassblock.Position)
for _,v in pairs(Hit) do
if browntotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(biggrassblock.Position,torso.Position).lookVector*180
removeuseless:AddItem(vel,.1)
end
end
if avatarstate then
for i = 1, 7 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(20),math.rad(0)),.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(20),math.rad(0)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(12),math.rad(-1)),.4)
swait()
end
end
ws = 90
attacking = false
debounce = false
appi = false
removeuseless:AddItem(g1,.001)
elseif throw2 then
if debounce then return end
throw1 = true
throw2 = false
debounce = true
attacking = true
appi = true
ws = 12
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
coroutine.wrap(function()
while appi do
swait()
if Root.Velocity.Magnitude > 2 and attacking == true then
position = "Idle3"
end
end
end)()
coroutine.wrap(function()
while appi do
swait()
settime = 0.05
sine = sine + change
if position == "Idle3" and attacking == true and appi == true then
change = .5
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.5)
end
end
end)()
if avatarstate then
for i = 1, 5 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(20),math.rad(0)),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(20),math.rad(0)),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0,.2) * CFrame.Angles(math.rad(30),math.rad(-30),0),.4)
swait()
end
end
if mouse.Target ~= nil then
biggrassblock = Instance.new("Part",Torso)
biggrassblock.Size = Vector3.new(math.random(15,18),50,math.random(15,18))
biggrassblock.Anchored = true
biggrassblock.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,-10,0) * CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15)))
biggrassblock.CanCollide = true
biggrassblock.Material = "Slate"
biggrassblock.BrickColor = BrickColor.new("Earth green")
removeuseless:AddItem(biggrassblock,10)
locbrick = Instance.new("Part",biggrassblock)
locbrick.Size = Vector3.new(1,1,1)
locbrick.Transparency = 1
locbrick.CFrame = CFrame.new(mouse.Hit.p)
locbrick.CanCollide = false
locbrick.Anchored = true
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .5
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(locbrick.Position)
shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,3,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .5
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(locbrick.Position)
shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(5,3,5)
shockwavemesh2.MeshId = "rbxassetid://20329976"
locbrick2 = Instance.new("Part",biggrassblock)
locbrick2.Size = Vector3.new(1,1,1)
locbrick2.Transparency = 1
locbrick2.CFrame = CFrame.new(mouse.Hit.p)
locbrick2.CanCollide = false
locbrick2weld = weldBetween(locbrick2,locbrick)
zxp = 0
for i = 1, 75 do
zxp = zxp + 5
crater = Instance.new("Part",Torso)
crater.BrickColor = biggrassblock.BrickColor
crater.Size = Vector3.new(5,5,5)
crater.Transparency = 1
craterweld = weldBetween(crater,locbrick2)
craterweld.C0 = craterweld.C0 * CFrame.new(15,0,0) * CFrame.Angles(math.rad(0),math.rad(zxp),math.rad(0))
removeuseless:AddItem(crater,1)
crater2 = Instance.new("Part",Torso)
crater2.CFrame = crater.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
crater2.Size = Vector3.new(13,13,13)
crater2.Anchored = true
crater2.Material = "Grass"
crater2.BrickColor = BrickColor.new("Bright green")
removeuseless:AddItem(crater2,15)
end
coroutine.wrap(function()
for i = 1, 30 do
swait()
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+15),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-8),0)
shockwave.Transparency = shockwave.Transparency + 0.025
shockwave2.Transparency = shockwave2.Transparency + 0.025
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(6,1,6)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(6,1,6)
end
end)()
coroutine.wrap(function()
for i = 1, 10 do
swait()
biggrassblock.CFrame = biggrassblock.CFrame * CFrame.new(0,2.7,0)
end
end)()
groundrum = Instance.new("Sound",biggrassblock)
groundrum.SoundId = "rbxassetid://1265219916"
groundrum.Volume = 10
groundrum.Pitch = 1.5
groundrum:Play()
Hit = damagealll(30,biggrassblock.Position)
for _,v in pairs(Hit) do
if browntotem then
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
elseif avatarstate then
print("hi")
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
end
vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(biggrassblock.Position,torso.Position).lookVector*150
removeuseless:AddItem(vel,.1)
end
end
if avatarstate then
for i = 1, 7 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(-20),math.rad(0)),.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.8)
swait()
end
else
for i = 1, 15 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.1)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(-20),math.rad(0)),.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1,.35) * CFrame.Angles(math.rad(-110),math.rad(-12),math.rad(1)),.4)
swait()
end
end
ws = 90
attacking = false
debounce = false
appi = false
removeuseless:AddItem(g1,.001)
end
end
end)

particlecolor = ColorSequence.new(Color3.new(0, 5, 255))

particlemiter1 = Instance.new("ParticleEmitter", LeftArm)
particlemiter1.Enabled = false
particlemiter1.Color = particlecolor
particlemiter1.Texture = "rbxassetid://304437537"
particlemiter1.Lifetime = NumberRange.new(2.5)
particlemiter1.Size = NumberSequence.new(1,0)
particlemiter1.Rate = 25
particlemiter1.RotSpeed = NumberRange.new(70)
particlemiter1.Speed = NumberRange.new(0)
particlemiter2 = Instance.new("ParticleEmitter", RightArm)
particlemiter2.Enabled = false
particlemiter2.Color = particlecolor
particlemiter2.Texture = "rbxassetid://304437537"
particlemiter2.Lifetime = NumberRange.new(2.5)
particlemiter2.Size = NumberSequence.new(1,0)
particlemiter2.Rate = 25
particlemiter2.RotSpeed = NumberRange.new(70)
particlemiter2.Speed = NumberRange.new(0)
particlemiter4 = Instance.new("ParticleEmitter", LeftLeg)
particlemiter4.Enabled = false
particlemiter4.Color = particlecolor
particlemiter4.Texture = "rbxassetid://304437537"
particlemiter4.Lifetime = NumberRange.new(2.5)
particlemiter4.Size = NumberSequence.new(1,0)
particlemiter4.Rate = 25
particlemiter4.RotSpeed = NumberRange.new(70)
particlemiter4.Speed = NumberRange.new(0)
particlemiter5 = Instance.new("ParticleEmitter", RightLeg)
particlemiter5.Enabled = false
particlemiter5.Color = particlecolor
particlemiter5.Texture = "rbxassetid://304437537"
particlemiter5.Lifetime = NumberRange.new(2.5)
particlemiter5.Size = NumberSequence.new(1,0)
particlemiter5.Rate = 25
particlemiter5.RotSpeed = NumberRange.new(70)
particlemiter5.Speed = NumberRange.new(0)
particlemiter6 = Instance.new("ParticleEmitter", Torso)
particlemiter6.Enabled = false
particlemiter6.Color = particlecolor
particlemiter6.Texture = "rbxassetid://304437537"
particlemiter6.Lifetime = NumberRange.new(2.5)
particlemiter6.Size = NumberSequence.new(1,0)
particlemiter6.Rate = 25
particlemiter6.RotSpeed = NumberRange.new(70)
particlemiter6.Speed = NumberRange.new(0)
particlemiter7 = Instance.new("ParticleEmitter", Head)
particlemiter7.Enabled = false
particlemiter7.Color = particlecolor
particlemiter7.Texture = "rbxassetid://304437537"
particlemiter7.Lifetime = NumberRange.new(2.5)
particlemiter7.Size = NumberSequence.new(1,0)
particlemiter7.Rate = 25
particlemiter7.RotSpeed = NumberRange.new(70)
particlemiter7.Speed = NumberRange.new(0)

coroutine.wrap(function()
while wait() do
pcall(function()
particlemiter1.Color = particlecolor
particlemiter2.Color = particlecolor
particlemiter4.Color = particlecolor
particlemiter5.Color = particlecolor
particlemiter6.Color = particlecolor
particlemiter7.Color = particlecolor
end)
end
end)()

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.Magnitude < 15 and running == false then
position = "Idle"
elseif Root.Velocity.Magnitude > 15 and running == false then
position = "Walking"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

windblocks = Instance.new("Part",Torso)
windblocks.Size = Vector3.new(1,1,1)
windblocks.Transparency = 1
windblocks.Anchored = false
windblocks.CanCollide = false
windblocksweld = weldBetween(windblocks,Root)

windblocks2 = Instance.new("Part",Torso)
windblocks2.Size = Vector3.new(1,1,1)
windblocks2.Transparency = 1
windblocks2.Anchored = false
windblocks2.CanCollide = false
windblocks2weld = weldBetween(windblocks2,Root)

windring = Instance.new("Part", Torso)
windring.Size = Vector3.new(1, 1, 1)
windring.Transparency = .8
windring.Anchored = false
windring.BrickColor = BrickColor.new("Really white")
windring.CanCollide = false
ringh = Instance.new("SpecialMesh", windring) 
ringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringh.Scale = Vector3.new(19, 19, 4)
windringweld = weldBetween(windring,windblocks)
windring2 = Instance.new("Part", Torso)
windring2.Size = Vector3.new(1, 1, 1)
windring2.Transparency = .8
windring2.Anchored = false
windring2.BrickColor = BrickColor.new("Really white")
windring2.CanCollide = false
ringh2 = Instance.new("SpecialMesh", windring2) 
ringh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringh2.Scale = Vector3.new(19, 19, 4)
windring2weld = weldBetween(windring2,windblocks2)
wind = Instance.new("Part", Torso)
wind.Size = Vector3.new(0.5, 0.5, 0.5)
wind.Material = "Neon"
wind.BrickColor = BrickColor.new("Really white")
wind.Transparency = .76
wind.CanCollide = false
windMESH = Instance.new("SpecialMesh", wind)
windMESH.Scale = Vector3.new(3.5,3.5,3.5)
windMESH.MeshId = "rbxassetid://168892432"
windWeld = weldBetween(wind,Root)
windWeld.C0 = CFrame.new(0,-10,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
wind2 = Instance.new("Part", Torso)
wind2.Size = Vector3.new(0.5, 0.5, 0.5)
wind2.Material = "Neon"
wind2.BrickColor = BrickColor.new("Really white")
wind2.Transparency = .95
wind2.CanCollide = false
windMESH2 = Instance.new("SpecialMesh", wind2)
windMESH2.Scale = Vector3.new(6,6,6)
windMESH2.MeshId = "rbxassetid://168892432"
windWeld2 = weldBetween(wind2,Root)
windWeld2.C0 = CFrame.new(0,-10,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

grasslocation = Instance.new("Part",Torso)
grasslocation.CFrame = Root.CFrame
grasslocation.Size = Vector3.new(1,1,1)
grasslocation.Transparency = 1
grasslocation.CanCollide = false
grasslocationweld = weldBetween(grasslocation,Root)
grasslocationweld.C0 = CFrame.Angles(math.rad(10),math.rad(10),0)
waterlocation = Instance.new("Part",Torso)
waterlocation.CFrame = Root.CFrame
waterlocation.Size = Vector3.new(1,1,1)
waterlocation.Transparency = 1
waterlocation.CanCollide = false
waterlocationweld = weldBetween(waterlocation,Root)
waterlocationweld.C0 = CFrame.Angles(math.rad(10),math.rad(10),0)
zp = 0
for i = 1, 14 do
zp = zp + 26
grassblocks = Instance.new("Part",Torso)
grassblocks.Size = Vector3.new(1.3,1.3,1.3)
grassblocks.Material = "Slate"
grassblocks.CanCollide = false
grassblocks.BrickColor = BrickColor.new("Earth green")
grassblocksweld = weldBetween(grassblocks,grasslocation)
grassblocksweld.C0 = CFrame.new(-7.5,0,0) * CFrame.Angles(math.rad(0),math.rad(zp),math.rad(0))
table.insert(grasstable,grassblocksweld)
end
for i = 1, 14 do
zp = zp + 26.1
waterblocks = Instance.new("Part",Torso)
waterblocks.Size = Vector3.new(1.3,1.3,1.3)
waterblocks.Material = "Neon"
waterblocks.CanCollide = false
waterblocks.Transparency = .5
waterblocks.BrickColor = BrickColor.new("Cyan")
waterblocksweld = weldBetween(waterblocks,waterlocation)
waterblocksweld.C0 = CFrame.new(-7.6,0,0) * CFrame.Angles(math.rad(0),math.rad(zp),math.rad(0))
table.insert(watertable,waterwblocks)
end

locbrick1 = Instance.new("Part",Torso)
locbrick1.Size = Vector3.new(1,1,1)
locbrick1.CanCollide = false
locbrick1.Transparency = 1
locbrick1weld = weldBetween(locbrick1,Root)
locbrick1weld.C0 = CFrame.new(0,9.5,0)

levitatewave = Instance.new("Part", Torso)
levitatewave.Size = Vector3.new(1,1,1)
levitatewave.CanCollide = false
levitatewave.Anchored = false
levitatewave.Transparency = .75
levitatewave.BrickColor = BrickColor.new("White")
levitatewave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh = Instance.new("SpecialMesh", levitatewave)
levitatewavemesh.Scale = Vector3.new(7,1.25,7)
levitatewavemesh.MeshId = "rbxassetid://20329976"
levitatewaveweld = weldBetween(levitatewave,locbrick1)
levitatewave2 = Instance.new("Part", Torso)
levitatewave2.Size = Vector3.new(1,1,1)
levitatewave2.CanCollide = false
levitatewave2.Anchored = false
levitatewave2.Transparency = .75
levitatewave2.BrickColor = BrickColor.new("White")
levitatewave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
levitatewavemesh2 = Instance.new("SpecialMesh", levitatewave2)
levitatewavemesh2.Scale = Vector3.new(5.5,1,5.5)
levitatewavemesh2.MeshId = "rbxassetid://20329976"
levitatewaveweld2 = weldBetween(levitatewave2,locbrick1)

coroutine.wrap(function()
po = 0
xo = 0 
to = 0
to2 = 0
lo = 0
mo = 0
while true do 
swait()
colors = colortable[math.random(1,#colortable)]
to2 = to2 - 7
to = to + 14
po = po + 8
lo = lo - 8
xo = xo - 5
mo = mo + 5
hpheight = 6 + 1 * math.sin(sine/12)
windblocksweld.C0 = CFrame.Angles(math.rad(xo),math.rad(po),0)
windblocks2weld.C0 = CFrame.Angles(math.rad(lo),math.rad(mo),0)
if allowlev then
locbrick1weld.C0 = CFrame.new(0,8.7 + .7 * math.sin(sine/12),0)
end
levitatewaveweld2.C0 = CFrame.Angles(math.rad(0),math.rad(to),0)
levitatewaveweld.C0 = CFrame.Angles(math.rad(0),math.rad(-to),0)
if avatarstate then
windWeld4.C0 = CFrame.Angles(math.rad(0),math.rad(to),math.rad(0))
windWeld3.C0 = CFrame.Angles(math.rad(0),math.rad(to2),math.rad(0))
windblocks3weld.C0 = CFrame.Angles(math.rad(xo),math.rad(po),0)
windblocks4weld.C0 = CFrame.Angles(math.rad(lo),math.rad(mo),0)
levitatewaveweld3.C0 = CFrame.Angles(math.rad(0),math.rad(to),0)
levitatewaveweld4.C0 = CFrame.Angles(math.rad(0),math.rad(-to),0)
levitatewaveweld5.C0 = CFrame.Angles(math.rad(0),math.rad(to),0)
levitatewaveweld6.C0 = CFrame.Angles(math.rad(0),math.rad(-to),0)
end
waterlocationweld.C0 = CFrame.Angles(math.rad(0 * math.sin(sine/12)),math.rad(-to/6),math.rad(-40 * math.sin(sine/12)))
grasslocationweld.C0 = CFrame.Angles(math.rad(0 * math.sin(sine/12)),math.rad(to/6),math.rad(40 * math.sin(sine/12)))
windWeld.C0 = CFrame.Angles(math.rad(0),math.rad(to),math.rad(0))
windWeld2.C0 = CFrame.Angles(math.rad(0),math.rad(to2),math.rad(0))
end
end)()

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
if hum.Health < .1 then
deadsound = Instance.new("Sound", Torso)
deadsound.Volume = 6
deadsound.SoundId = "rbxassetid://1411352723"
deadsound:Play()
immortality()
end
wait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Walking" and attacking == false and running == false then
change = .5
walking = true
LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.25)
RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(25 + 5 * math.sin(sine/12))), 0.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5 - .1 * -math.sin(sine/12), 0) * CFrame.Angles(math.rad(35 - 2 * math.sin(sine/12)), math.rad(0), math.rad(-25 - 5 * math.sin(sine/12))), 0.25)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-41 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 15, math.cos(10 * math.cos(sine/10))), 0.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.25)
elseif position == "Idle" and attacking == false and running == false then
change = .5
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10*math.sin(sine/12)),math.rad(0),math.rad(0)),.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(-20), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2 + .02 * math.sin(sine/12), 0.2 + .1 * math.sin(sine/12)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/12)), math.rad(20), math.rad(0)), 0.2)
end
swait()
end
end)
anims()
warn("Four elements combined to make one, powerful force. Made by Supr14")