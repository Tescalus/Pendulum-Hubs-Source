--[[
	@Name: Rogue
		@Author: iKrypto
			@Date: 7/4/16
				@Engine: Lua 5.1
]]


--print'starting script...'

--	Primary Development ended on 7/13/2016
--	Revamp began on 7/17/2016 due to data loss
--	Old script found in modules on 7/19/2016 and revamp updated, development over again.

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
warn("Netless Activated!")
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


local startLoad = tick()
script.Name = "Assassination"
local plrs = game:GetService('Players')
local plr = plrs.LocalPlayer
local char = game.Workspace.non
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local Humanoid = hum
local torso = char.Torso
local Agility,Haste,damage = 6,.16,0
local stats,Parts,Cooldowns,Damage,recountData,parts,Damaged,Ally,Buffs = {},{},{},{},{},{},{},{},{}
local Ctrl,Cam,lastclick,btimer,Stealthed,beaming = false,game.Workspace:FindFirstChild('currentCamera'),tick(),0,false,false
local lastdps,OrbModel,currentTarget,candamage

candamage = false

local shielding = false
local dot = {}
local combocounter,PGui,channeling,Mode = 0,plr.PlayerGui,false,''
local new = Instance.new
-- if leaked, don't edit this value
-- it lets other scripts know this is
-- a linked script so that you can do
-- extra features such as slowing, stunning
-- buffing, healing etc. Thanks.
local iAmDarkusScript = Instance.new('Model')
iAmDarkusScript.Parent = hum
iAmDarkusScript.Name = 'Property of Darkus_Theory'
head = char.Head
local ohp = hum.Health
local otheranims = false
mouse = plr:GetMouse()
count = 0
Mode = 'Idling'
Bin = Instance.new('Folder')
Bin.Name='suit'
Bin.Parent=char
Colors={['Primary']='Dark indigo',['Secondary']='Royal purple',['Tertiary']='Bright violet',}
Body={["HUM"]=char:FindFirstChild('Humanoid'),["H"]=char:FindFirstChild('Head'),["T"]=char:FindFirstChild('Torso'),["LA"]=char:FindFirstChild('Left Arm'),["RA"]=char:FindFirstChild('Right Arm'),["LL"]=char:FindFirstChild('Left Leg'),["RL"]=char:FindFirstChild('Right Leg'),};
local tMesh,asset = "rbxasset://fonts/torso.mesh","rbxassetid://"
local meshes,sounds = {blast = 20329976,ring = 3270017,spike = 1033714,cone = 1082802,crown = 20329976,cloud = 1095708,diamond = 9756362},{laser = 166196553;gun = 131070686;falling = 138206037;hit = 146163493;twirl = 46299547;explosion = 142070127}
prmColor = 'Really black'
secColor = 'Toothpaste'
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
prmColor = 'ReEnemy black'
secColor = 'Toothpaste'
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
for _,x in pairs(char:children()) do
if x:IsA('Shirt') then x:remove() end
if x:IsA('Pants') then x:remove() end
if x:IsA('Hat') then x:remove() end
end
pcall(function()anim:Destroy()end)
pcall(function()char["Health"]:Destroy() end)
pcall(function()humanoid.Animator:Destroy()end)
local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()
local s = Instance.new('Shirt', char)
s.Name = 'Wild Gladiator\'s Felweave Raiment'
s.ShirtTemplate = 'http://www.roblox.com/asset/?id=166273878'
local p = Instance.new('Pants', char)
p.Name = 'Wild Gladiator\'s Felweave Trousers'
p.PantsTemplate = 'http://www.roblox.com/asset/?id=166273938'
local h = Instance.new('Part',  char)
h.Name = 'DK Hood'
h.TopSurface,h.BottomSurface = 0,0
h.Size = Vector3.new(2.3, 2.3, 2.3)
h.CFrame = torso.CFrame
h.CanCollide = false
h.BrickColor = BrickColor.new('Really black')
h:BreakJoints()
local m = Instance.new('SpecialMesh', h)
m.Name = "Wild Gladiator's Felweave Cowl"
m.MeshType = 'FileMesh'
m.Scale = Vector3.new(1, 1, 1)
m.MeshId = 'http://www.roblox.com/asset/?id=16952952'
m.VertexColor = Vector3.new(1,1,1)
local Weld = Instance.new("Weld")
Weld.Part0 = char.Head
Weld.Part1 = h
Weld.Parent = char.Head
Weld.C0 = CFrame.new(0, .3, 0)

local Dagger = Instance.new('Part')
Dagger.Name = 'Dagger'
Dagger.BrickColor = BrickColor.new('Really black')
Dagger.Locked = true
Dagger.Shape = 'Block'
Dagger.Size = Vector3.new(1, 3.8, 1)
Dagger.Parent = char
Dagger.CanCollide = false
local DaggerMesh = Instance.new('SpecialMesh',Dagger)
DaggerMesh.Name = 'DaggerMesh'
DaggerMesh.MeshType = 'FileMesh'
DaggerMesh.MeshId = "http://www.roblox.com/asset/?id=432556696"
DaggerMesh.TextureId = "http://www.roblox.com/asset/?id=22769571"
DaggerMesh.Scale = Vector3.new(.14, .14, .14)
DaggerMesh.VertexColor = Vector3.new(0, 0, 0)
local DaggerWeld = Instance.new('Weld',Dagger)
DaggerWeld.Name = 'DaggerWeld'
DaggerWeld.C0 = CFrame.new(0,-.7, -1.2) * CFrame.Angles(-math.rad(180), -math.rad(90), -math.rad(90))
DaggerWeld.Part0 = ra
DaggerWeld.Part1 = Dagger

local Katana = Instance.new('Part')
Katana.Name = 'Katana'
Katana.BrickColor = BrickColor.new('Really black')
Katana.Locked = true
Katana.Shape = 'Block'
Katana.Size = Vector3.new(1, 0.8, 4)
Katana.Parent = char
Katana.CanCollide = false
local KatanaMesh = Instance.new('SpecialMesh',Katana)
KatanaMesh.Name = 'KatanaMesh'
KatanaMesh.MeshType = 'FileMesh'
KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=22769578"
KatanaMesh.TextureId = "http://www.roblox.com/asset/?id=22769571"
KatanaMesh.Scale = Vector3.new(.23, .23, .23)
KatanaMesh.VertexColor = Vector3.new(0, 0, 0)
local KatanaWeld = Instance.new('Weld',Katana)
KatanaWeld.C0 = CFrame.new(0,-.95, 1) * CFrame.Angles(0, 0, math.rad(90))
KatanaWeld.Part0 = la
KatanaWeld.Part1 = Katana

wepdps = function(obj)
	local slow
	if not candamage then return end
	if obj:IsDescendantOf(char) then return end
	if not obj.Parent:findFirstChild('Humanoid',true) then return end
	local Hum = obj.Parent:findFirstChild('Humanoid',true)
	if Damaged[Hum] and tick()-Damaged[Hum] < (0+stats['Haste']) then return end
	local dist = (obj.Position-torso.Position).magnitude
    if dist > 5 then return end
	local calculation = 0
	local cftos = Hum.Parent.Torso.CFrame:pointToObjectSpace(torso.Position)
	if cftos.Z > 0 then calculation = calculation * 0 end
	if Hum:FindFirstChild('MarkOfDeath') then
	calculation = calculation * 0
	end
	local function randomSlashSound()
	local ids = {220833967,220833976,220834019}

	quickSound(ids[math.random(1,#ids)], head, .8)
	end
	if Stealthed and not cheating then Stealth() slow=true calculation = calculation * 1.4 end
	damageHuman(Hum, math.floor(calculation*.6), obj)
	coroutine.wrap(randomSlashSound)()
	logDamage('Autoattack', calculation)
	Damaged[Hum] = tick()
	if slow then slowPoison(Hum) slow=false end
	stats['Focus'] = stats['Focus'] + 6
	if math.random(1,10) > 7 then stats['Combo Points'] = stats['Combo Points'] + 1 end
end

recuperate = function(obj)
	if obj:IsDescendantOf(char) then return end
	if not obj.Parent:findFirstChild('Humanoid',true) then return end
	local Hum = obj.Parent:findFirstChild('Humanoid',true)
	if Damaged[Hum] and tick()-Damaged[Hum] < 3 then return end
	if checkCooldown('Recuperate') then return end
	if not useFocus(40) then return end
	setCooldown('Recuperate', 45)
	local numcp = stats['Combo Points']
	stats['Combo Points'] = 0
	local calculation = getDPS()+(stats['Combo Points']*0)
	local cftos = Hum.Parent.Torso.CFrame:pointToObjectSpace(torso.Position)
	if cftos.Z > 0 then calculation = calculation * 1.5 end
	if Stealthed and not cheating then Stealth() end
	damageHuman(Hum, calculation/2, obj)
	logDamage('Recuperate', calculation)
	Damaged[Hum] = tick()
	local healcalc = ((calculation/2)*(numcp > 0 and numcp or 1))*.6
	ypcall(function()
	for i = healcalc/10,0,-(healcalc/100) do
		hum.Health = hum.Health+(healcalc)
		Title("+"..math.floor(healcalc), head, Color3.new(0,200/255,0),true,false)
		wait(.75)
	end
	end)
end

dfa = function(obj)
	if obj:IsDescendantOf(char) then return end
	if not obj.Parent:findFirstChild('Humanoid',true) then return end
	local Hum = obj.Parent:findFirstChild('Humanoid',true)
	local ex
	if (Hum.Health<(Hum.MaxHealth*.35)) then ex = true end
	if Damage[Hum] and tick()-Damage[Hum] < 3 then return end
	if not useFocus(25) then return end
	local calculation = (ex and (getDPS()*0) or getDPS()*0)
	local cftos = Hum.Parent.Torso.CFrame:pointToObjectSpace(torso.Position)
	Damage[Hum] = tick()
	if cftos.Z > 0 then calculation = calculation * 1.5 end
	if Stealthed and not cheating then Stealth() end
	damageHuman(Hum, calculation, obj)
	logDamage('Death From Above', calculation)
	quickSound(444667824, head, .8)
end

envenom = function(obj)
	if obj:IsDescendantOf(char) then return end
	if not obj.Parent:findFirstChild('Humanoid',true) then return end
	local Hum = obj.Parent:findFirstChild('Humanoid',true)
	local ex
	if (Hum.Health<(Hum.MaxHealth*.15)) then ex = true end
	if Damage[Hum] and tick()-Damage[Hum] < 3 then return end
	if checkCooldown('Envenom') then return end
	if not useFocus(10) then return end
	setCooldown('Envenom', 10)
	local calculation = (ex and (hum.MaxHealth+math.random(1,100)) or getDPS()*0)
	local cftos = Hum.Parent.Torso.CFrame:pointToObjectSpace(torso.Position)
	Damage[Hum] = tick()
	if cftos.Z > 0 then calculation = calculation * 1.5 end
	if Stealthed and not cheating then Stealth() end
	damageHuman(Hum, calculation, obj)
	logDamage('Envenom', calculation)
	quickSound(220834000, head)
end


Dagger.Touched:connect(wepdps)
Katana.Touched:connect(wepdps)

pcall(function()
char["Body Colors"].HeadColor = BrickColor.new("Medium stone grey")
char["Body Colors"].TorsoColor = BrickColor.new("Really black")
char["Body Colors"].LeftArmColor = BrickColor.new("Medium stone grey")
char["Body Colors"].RightArmColor = BrickColor.new("Medium stone grey")
char["Body Colors"].LeftLegColor = BrickColor.new("Really blackReally black")
char["Body Colors"].RightLegColor = BrickColor.new("Really black")
end)

local aa1 = {}

local WorldUp = Vector3.new(0,1,0)
function look2(Vec1,Vec2)
   local Orig = Vec1
   Vec1 = Vec1+Vector3.new(0,1,0)
   Vec2 = Vec2+Vector3.new(0,1,0)
   local Forward = (Vec2-Vec1).unit
   local Up = (WorldUp-WorldUp:Dot(Forward)*Forward).unit
   local Right = Up:Cross(Forward).unit
   Forward = -Forward
   Right = -Right
   return CFrame.new(Orig.X,Orig.Y,Orig.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end
 
function look(CFr,Vec2)
   local A = Vector3.new(0,0,0)
   local B = CFr:inverse()*Vec2
   local CF = look2(A,Vector3.new(A.X,B.Y,B.Z))
   if B.Z > 0 then
       CF = CFr*(CF*CFrame.Angles(0,0,math.pi))
   elseif B.Z == 0 then
       if B.Y > 0 then
           CF = CFr*CFrame.Angles(math.pi/2,0,0)
       elseif B.Y < 0 then
           CF = CFr*CFrame.Angles(-math.pi/2,0,0)
       else
           CF = CFr
       end
   end
   local _,_,_,_,X,_,_,Y,_,_,Z,_ = CF:components()
   local Up = Vector3.new(X,Y,Z)
   local Forward = (Vec2-CFr.p).unit
   local Right = Up:Cross(Forward)
   Forward = -Forward
   Right = -Right
   return CFrame.new(CFr.X,CFr.Y,CFr.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end
 
function simulate(j,d,m,r,t)
       local joint = j
       for i,v in ipairs(t) do
               if v[1]:FindFirstChild("Weld") then
                       local stiff = m.CFrame.lookVector*0.03
                       if i > 1 then joint = t[i-1][1].CFrame*CFrame.new(0,0,d*.5) end
                       local dir = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).unit
                       local dis = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).magnitude
                       local pos = joint.p+(dir*(d*0.5))
                     --if v[1].CFrame.y<=workspace.Base.CFrame.y then pos = joint.p+(dir*(d*.5)) end
                       local inv = v[1].Weld.Part0.CFrame
                       local rel1 = inv:inverse()*pos
                       local rel2 = inv:inverse()*(pos-(dir*dis))
                       local cf = look(CFrame.new(rel1),rel2)--CFrame.new(pos,pos-(dir*dis))*CFrame.fromEulerAnglesXYZ(r.x,r.y,r.z)
                       v[1].Weld.C0 = cf
                       v[2] = inv*cf
                       --v[1].CFrame = cf
               end
       end
end

for i=1,6 do
local p = Instance.new("Part",char)
p.Anchored = false
p.BrickColor = BrickColor.new("Really black")
p.CanCollide = false
p.FormFactor="Custom"
p.Material = "SmoothPlastic"
p.TopSurface = "SmoothNoOutlines"
p.BottomSurface = "SmoothNoOutlines"
p.RightSurface = "SmoothNoOutlines"
p.LeftSurface = "SmoothNoOutlines"
p.FrontSurface = "SmoothNoOutlines"
p.BackSurface = "SmoothNoOutlines"
 
p.Size=Vector3.new(2+(i*.15),.15,0.15)
p:BreakJoints() -- sometimes the parts are stuck to something so you have to breakjoints them
mesh = Instance.new("BlockMesh",p)
mesh.Scale = Vector3.new(1,1,4)
local w = Instance.new("Motor6D",p)
w.Part0 = aa1[i-1] and aa1[i-1][1] or torso
w.Part1 = p
w.Name = "Weld"
--table.insert(aa1,p)
aa1[i] = {p,p.CFrame}
 
end

game:service"RunService".Stepped:connect(function()
simulate(torso.CFrame*CFrame.new(0,0.9,.5),.6,torso,Vector3.new(),aa1)
end)

cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
		local p = ins(typ or "Part")
		p.FormFactor = "Custom"
		p.Material = mat
		p.Transparency = tra
		p.CanCollide = canc
		p.Anchored = anc
		p.BrickColor = bc(col)
		p.Size = siz
		p.CFrame = cfr
		p.Parent = prnt
		p.Locked = true
		p.TopSurface,p.BottomSurface = 0,0
		p:BreakJoints()
		return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
		local m = ins(typ or "SpecialMesh")
		if mtyp then m.MeshType = mtyp end
		if mid then m.MeshId = mid end
		if mtx then m.TextureId = mtx end
		if scal then m.Scale = scal end
		m.Parent = prnt
		return m
end
local weldy = function(prt1,prt2,c0,c1)
		local w = ins("Weld",prt1)
		w.Part0 = prt1
		w.Part1 = prt2
		w.C0,w.C1 = c0 or cn(),c1 or cn()
		return w
end
function crownExplode(cf,col,scl)
		local p = part(char,cf,v3(1,1,1),col,true,false,.1,"SmoothPlastic")
		local pm = mesh("FileMesh",p,nil,nil,asset..meshes.crown)
		Spawn(function()
				for i=.1,1.1,.025 do
						p.Transparency = i
						pm.Scale = pm.Scale + v3(scl,scl,scl)
						wait()
				end
				p:Destroy()
		end)
end
function crater(cf,dist,siz,col,mat)
        local num = math.random(7,13)
        for i=1,num do
                game:service("Debris"):AddItem(part(char,cf*ca(0,pi*2/num*i,0)*cn(0,0,dist)*ca(r(2),r(2),r(2)),v3(ma(r(siz)),ma(r(siz)),ma(r(siz))),col,true,true,0,mat),7)
        end
end
function quickSound(id,par,pi)
		local s = Instance.new("Sound")
		s.Pitch = pi or 1
		s.SoundId = asset..id
		s.Parent = par
		wait()
		s:Play()
	return s
end
function newSound(id,par,pi)
		local s = Instance.new("Sound",par)
		s.Pitch = pi or 1
		s.Volume = .3
		s.SoundId = asset..id
		s:Play()
		return s
end
		
function cylinderOpen(cf,col,col2)
	local p = part(char,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
	local pm = mesh("CylinderMesh",p)
	local p2 = part(char,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
	local p2m = mesh("CylinderMesh",p2)
	Spawn(function()
			for i=.1,1.1,.0125 do
					p.Transparency = i
					p2.Transparency = i
					pm.Scale = pm.Scale + v3(.8,0,.8)
					p2m.Scale = p2m.Scale + v3(.5,0,.5)
					wait()
			end
			p:Destroy()
			p2:Destroy()
	end)
end
function cylinderOpen2(cf,col,col2)
        local p = part(workspace,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(workspace,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                for i=.1,1.1,.05 do
                        p.Transparency = i
                        p2.Transparency = i
                        pm.Scale = pm.Scale + v3(.7,0,.7)
                        p2m.Scale = p2m.Scale + v3(.6,0,.6)
                        wait()
                end
				wait(10)
                p:Destroy()
                p2:Destroy()
        end)
end

function Effect(Pos,x1,y1,z1,x2,y2,z2,color,ref)
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = CFrame.new(Pos)* CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame * CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
local function EmberWave(CF,Color)
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = CF
p.Transparency = 1
coroutine.wrap(function()
local x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
for i = 1,30 do
p.CFrame = p.CFrame *x
x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
Effect2(p,2.6,2.6,2.6,0,0,0,Color,0.3)
Wait(0.1)
end
p:Destroy()
end)()end

function MediumParticleEmit(Object,Color)
	coroutine.wrap(function()
		while Wait(1.1)do
			if not Object then break end
			local p = Instance.new("Part",Object.Parent)
			p.Name = "Trail"
			p.TopSurface = 0
			p.BottomSurface = 0
			p.Anchored = true
			p.CanCollide = false
			p.FormFactor = "Custom"
			p.Size = Vector3.new(0.01,0.01,0.01)
			p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
			p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
			local m = Instance.new("BlockMesh",p)
			m.Scale = Vector3.new(2,2,2)
				coroutine.wrap(function()
					for i = 1,15 do
						p.Transparency = i/15
						m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
						p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
						Wait()
					end
				p:Destroy()
				end)()
			end 
	end)()
end

coroutine.wrap(function()
	for i = 1,4 do
	MediumParticleEmit(head,'Dark indigo')
	end
end)()

if head:FindFirstChild('Mesh') then
	if head:FindFirstChild('Mesh'):IsA('BlockMesh') then
		head:FindFirstChild('Mesh'):remove()
		wait()
		local nm = Instance.new('SpecialMesh', head)
		nm.MeshType = 'Head'
		nm.Scale = Vector3.new(1.25,1.25,1.25)
	end
end
if head:FindFirstChild('face') then
	head:FindFirstChild('face'):Destroy()--.Texture = 'http://www.roblox.com/asset/?id=128963883'
end

function newStat(stat, type, value)
		if stats[stat] then return end
		stats[stat] = value
	return stats[stat]
end

local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()
end 
end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end 
end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = Color and(type(Color)== 'userdata' and Color or BrickColor.new(Color))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
if Duration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end 
end 
end)()
end
function SlowParticleEmit(Object)
coroutine.wrap(function()
while Wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = (BrickColor.new("Toothpaste"))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
end

function slowPoison(Humanoid)
local hps
local hp
if Humanoid == hum then return end
hps = Humanoid.Parent:FindFirstChild('Health',true)
if hps then hp = true end
ypcall(function()
for i = 10,0,-.5 do
if not Humanoid.Parent then break end
if hp then hps.Disabled = true end
if Humanoid.WalkSpeed > 5 then
if Humanoid.Health <= 0 then break end
if Humanoid:findFirstChild'Property of Darkus_Theory' and not bypassin then
Humanoid.WalkSpeed = 6
Humanoid.JumpPower = 0
end
--Humanoid.JumpPower = 0
end
local c = getDPS()*0
damageHuman(Humanoid, c, Humanoid.Parent.Head)
logDamage('Poison', c)
local p = part(Humanoid.Parent,Humanoid.Parent.Torso.CFrame*cn(r(2),r(2),r(2)),v3(.1,0,.1),"Bright green",false,true,0,"SmoothPlastic")
wait(.5+stats['Haste']*3)
end
if Humanoid.WalkSpeed > 5 then
if Humanoid:findFirstChild'Property of Darkus_Theory' and not bypassin then
Humanoid.JumpPower = 50
Humanoid.WalkSpeed = 16
end
end
ypcall(function()
wait(4)
if hps then hps.Disabled = false end
end)
end)
end

function expandDong()
	local Orbi = Instance.new('Part')
	Orbi.Size = Vector3.new(3,3,3)
	Orbi.CanCollide = false
	Orbi.Locked = true
	Orbi.Shape = 'Ball'
	Orbi.Anchored = true
	Orbi.Parent = char
	Orbi.Transparency = .4
	Orbi.TopSurface,Orbi.BottomSurface = 0,0
	Orbi.Name = 'Expand Dong'
	Orbi.BrickColor = BrickColor.new('Dark indigo')
	coroutine.wrap(function()
		for i,v in pairs(IsNear(torso.Position, 25, nil, true)) do
			if v:findFirstChild'Humanoid' then
			if Damaged[v:FindFirstChild('Humanoid')] and tick()-Damaged[v:FindFirstChild('Humanoid')] < 1 then return end
			local calc = getDPS()*0
			damageHuman(v:FindFirstChild('Humanoid'), calc, v:findFirstChild'Torso')
			logDamage('Transformation', calc)
			Damaged[v:FindFirstChild('Humanoid')] = tick()
		end
		end
	end)()
	local OrbiMesh = Instance.new('SpecialMesh',Orbi)
	OrbiMesh.Name = 'Dxpand Eong'
	OrbiMesh.Scale = Vector3.new(2, 2, 2)
	OrbiMesh.MeshType = 'Sphere'
	ypcall(function()
		for i = 3,0,-1 do wait(.05)
			OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(1.5, 1.5, 1.5)
			Orbi.CFrame = torso.CFrame
		end
		for i = .4,1,.05 do
		wait(0.04)
			Orbi.Transparency = i
		end
		Orbi:Destroy()
	end)
end

function MarkOfDeath(humreset)
if not currentTarget then return end
if checkCooldown('MarkOfDeath') then return end
setCooldown('MarkOfDeath', 15)
stats['Focus'] = stats['Focus'] + 30
local MarkOfDeath = Instance.new('Model')
MarkOfDeath.Name = 'MarkOfDeath'
MarkOfDeath.Parent = currentTarget
ypcall(function()
	for i = 10,0,-1 do
		wait(1)
	end
	if MarkOfDeath.Parent then MarkOfDeath:Destroy() end
end)

end

function useFocus(amount)
	local precalc = stats['Focus']-amount
	
	if stats['Focus'] < 0 then return false end
	if precalc < 0 then return false end
	
	stats['Focus'] = precalc
	
	return true
end

function recount()
	
	local totl = {}

	local function addUp(tbl)
		local total = 0
		for i,v in next,tbl do
			total = total + v
		end
	return total
	end
	
	local function avg(tbl)
	
	local num = #tbl
	local nom = addUp(tbl)
	
	return (nom/num)
	end

	warn('RECOUNT - All Data')
	for i,v in pairs(recountData) do
		local qq = addUp(v)
		print(i..': '..qq..' ('..math.floor(avg(v))..')')
		table.insert(totl, qq)
	end
	
	warn('TOTAL: '..addUp(totl))

end

function logDamage(skill, damage)

	if not recountData[skill] then recountData[skill] = {} end
	
	local tbl = recountData[skill]
	table.insert(tbl, damage)

end
function getDPS(override)
		local crit = math.random(0,0)
		local DPS = ((stats.Agility) * (crit > 11 and stats.CriticalStrikeBonus or 1.2))
		DPS = math.ceil(DPS)
		lastdps = tick()
		if berserk then DPS = DPS * 0 end
		if cheating then DPS = DPS * 0 end
		return DPS,((crit > 13) and true or false)
end

function Berserk()

if checkCooldown('Berserk') then return end
if not berserk then if not useFocus(70) then return end end
stats['Combo Points'] = 0
if Stealthed then Stealth() end
changing = true
hum.WalkSpeed = 0
transforming = true
berserk = not berserk
createSuit()
stats['Haste'] = (berserk and .02 or hst)
script.Name = (not berserk and 'Assassination' or 'Berserker')
cylinderOpen(head.CFrame, 'Black', 'Dark indigo')
otheranims = true
Mode = (berserk and 'Roaring' or 'StealthIdling')
wait(.6)
if berserk then
	Dagger.Size = Vector3.new(1, 5, 1)
	DaggerMesh.MeshId = "http://www.roblox.com/asset/?id=31758253"
	DaggerMesh.Scale = Vector3.new(0.3, 0.33, 0.3)
	DaggerWeld = Instance.new('Weld',Dagger)
	DaggerWeld.Name = 'DaggerWeld'
	DaggerWeld.C0 = CFrame.new(0,-.95, -1.8) * CFrame.Angles(math.rad(90), 0, math.rad(180))
	DaggerWeld.Part0 = ra
	DaggerWeld.Part1 = Dagger

	Katana.Size = Vector3.new(1, 1, 5)
	KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=103978363"
	KatanaMesh.Scale = Vector3.new(0.6, 0.33, 0.8)
	KatanaWeld = Instance.new('Weld',Katana)
	KatanaWeld.C0 = CFrame.new(0,-.95, -1.8) * CFrame.Angles(math.rad(180), 0, math.rad(90))
	KatanaWeld.Part0 = la
	KatanaWeld.Part1 = Katana
	hum.MaxHealth = 650
	hum:TakeDamage(-100)
	coroutine.wrap(function() 
		btimer = 35
		while btimer > 0 do
		wait(1)
		btimer = btimer - 1
		setCooldown('Berserk', 30)
		end
		stats['Focus'] = 80 
		setCooldown('Berserk', 0)
		btimer = nil  
		Berserk() 
		wait()
		setCooldown('Berserk', 30)
	end)()
	--burn()
else
	Dagger.Size = Vector3.new(1, 3.8, 1)
	DaggerMesh.MeshId = "http://www.roblox.com/asset/?id=432556696"
	DaggerMesh.Scale = Vector3.new(.14, .14, .14)
	DaggerWeld = Instance.new('Weld',Dagger)
	DaggerWeld.Name = 'DaggerWeld'
	DaggerWeld.C0 = CFrame.new(0,-.7, -1.2) * CFrame.Angles(-math.rad(180), -math.rad(90), -math.rad(90))
	DaggerWeld.Part0 = ra
	DaggerWeld.Part1 = Dagger

	Katana.Size = Vector3.new(1, 0.8, 5)
	KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=22769578"
	KatanaMesh.Scale = Vector3.new(.23, .23, .23)
	KatanaWeld = Instance.new('Weld',Katana)
	KatanaWeld.C0 = CFrame.new(0,-1.05, 1) * CFrame.Angles(0, 0, math.rad(90))
	KatanaWeld.Part0 = la
	KatanaWeld.Part1 = Katana
	hum.MaxHealth = 500
	if hum.Health-hum.MaxHealth > 0 then
	hum.Health = hum.MaxHealth
	end

	quickSound(216782105, head, 1.3).Volume = .4
end
--crater(head.CFrame * CFrame.new(0, -2, 0) ,20,10,'Dark indigo','Plastic')
wait(.3)
expandDong()
wait(.2)
changing = false
hum.WalkSpeed = 20
otheranims = false
transforming = false
end

function damageHuman(hum,d,hit)
if hum.Health <= 0 then return end
if hum == Humanoid then return end
if not hum.Health then return end
if hum:findFirstChild('Shielding') then return end
if Ally[hum] then return end
		Title("-"..math.floor(d), ((hit.Parent and hit.Parent~='Workspace') and (hit.Parent:findFirstChild'Head' or Instance.new('Model'))), Color3.new(255/255,0/255,0/255),true,false)
        if hum:FindFirstChild'Property of Darkus_Theory' then
		hum:TakeDamage(math.floor(d))
		else
		hum.Health = hum.Health - math.floor(d)
		end
		if hum.Health <= 0 then logDamage('Kills', 1) Alert('You killed '..hum.Parent.Name..'!', 'Yellow') if (btimer and btimer > 0) then btimer=btimer+10 end end
end

function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = plr
c.Name = "creator"
end

function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
    for i,v in pairs(Clone:GetChildren())do
        if v:IsA("BasePart") then
        v.Transparency = .1
		v.Reflectance = .1
        end
    end
Character.Archivable = false
Clone.Parent = game:service('Workspace')
Clone.Archivable = false
game:service('Debris'):AddItem(Clone,9)
return Clone
end
function searchForHumanoid(thing)
for _,v in pairs(thing:children()) do
if v:IsA('Humanoid') then
return v
end
end
return false
end
function CreateUI(Player)
	--//Created by Opligitory
	local this = {
		Debounces = {
			HelpOpen     = false;
			CoolDownOpen = false;
			NameShowing  = true;
		};
	}
	local function Create(ty)
		return function(data)
			local obj = Instance.new(ty)
			for k,v in pairs(data)do
				if type(k) == 'number' then
					v.Parent = obj
				else
					obj[k] = v
				end
			end
		return obj
		end
	end
	
	local function Thread(f)
		assert(type(f) == 'function',"bad argument #1 'function' expected got "..type(f))
		return coroutine.resume(coroutine.create(f))
	end	
	
	local Rogue = Create("ScreenGui"){
	    Parent = Player.PlayerGui;
	    Name = "Rogue";
	    Archivable = true;
	}
	local Background = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Rogue;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(0, 305, 0, 300);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.DropShadow;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1, -305, 0.5, -50);
	    BorderSizePixel = 1;
	    Name = "Background";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local mTitle = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Background;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 20);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 0);
	    Name = "Title";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local BreakLine = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = mTitle;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 1);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 1, 6);
	    BorderSizePixel = 0;
	    Name = "BreakLine";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Stats = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Background;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 1, -30);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 1, -250);
	    BorderSizePixel = 1;
	    Name = "Stats";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Health = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Stats;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 0);
	    BorderSizePixel = 0;
	    Name = "Health";
	    BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
	}
	local hText = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Health;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Health: 100/100";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "hText";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
		ZIndex = 2;
	}
	local hStatus = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Health;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "hStatus";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
		
	}
	local Focus = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Stats;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 35);
	    BorderSizePixel = 0;
	    Name = "Focus";
	    BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
	}
	local fText = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Focus;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Focus: 100/100";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "fText";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.976471, 0.278431);
		ZIndex = 2;
	}
	local fStatus = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Focus;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "fStatus";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.976471, 0.278431);
	}
	local CP = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Stats;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 70);
	    BorderSizePixel = 0;
	    Name = "CP";
	    BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
	}
	local cText = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = CP;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Combo Points: 6/6";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "cText";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.298039, 1, 0.25098);
		ZIndex = 2;
	}
	local cStatus = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = CP;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "cStatus";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.298039, 1, 0.25098);
	}
	local Target = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = Stats;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Target: Darkus_Theory";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 105);
	    Name = "Target";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local TargetHp = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Stats;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 140);
	    BorderSizePixel = 0;
	    Name = "TargetHp";
	    BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
	}
	local tText = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = TargetHp;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Target Health: 100/100";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "tText";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
		ZIndex = 2;
	}
	local tStatus = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size28;
	    Active = false;
	    Parent = TargetHp;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, -8, 1, -8);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 4, 0, 4);
	    Name = "tStatus";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
	}
	local Anim = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size24;
	    Active = false;
	    Parent = Stats;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 20);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Animation: Idle";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 175);
	    Name = "Anim";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Buttons = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Stats;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 60);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 1, -60);
	    BorderSizePixel = 1;
	    Name = "Buttons";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local HideName = Create("TextButton"){
	    Visible = true;
	    TextWrapped = false;
	    Active = true;
	    TextStrokeTransparency = 1;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    BorderSizePixel = 1;
	    Draggable = false;
	    Modal = false;
	    AutoButtonColor = true;
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    Selected = false;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 30);
	    TextXAlignment = Enum.TextXAlignment.Center;
	    FontSize = Enum.FontSize.Size18;
	    Parent = Buttons;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Hide Name";
	    TextWrap = false;
	    TextTransparency = 0;
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 4, 1, -35);
	    TextColor3 = Color3.new(1, 1, 1);
	    Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
	    Name = "HideName";
	}
	local Controls = Create("TextButton"){
	    Visible = true;
	    TextWrapped = false;
	    Active = true;
	    TextStrokeTransparency = 1;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    BorderSizePixel = 1;
	    Draggable = false;
	    Modal = false;
	    AutoButtonColor = true;
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    Selected = false;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 30);
	    TextXAlignment = Enum.TextXAlignment.Center;
	    FontSize = Enum.FontSize.Size18;
	    Parent = Buttons;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Controls";
	    TextWrap = false;
	    TextTransparency = 0;
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1, -94, 1, -35);
	    TextColor3 = Color3.new(1, 1, 1);
	    Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
	    Name = "Controls";
	}
	local CoolDownsButton = Create("TextButton"){
	    Visible = true;
	    TextWrapped = false;
	    Active = true;
	    TextStrokeTransparency = 1;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    BorderSizePixel = 1;
	    Draggable = false;
	    Modal = false;
	    AutoButtonColor = true;
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    Selected = false;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 30);
	    TextXAlignment = Enum.TextXAlignment.Center;
	    FontSize = Enum.FontSize.Size18;
	    Parent = Buttons;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Cooldowns";
	    TextWrap = false;
	    TextTransparency = 0;
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 99, 1, -35);
	    TextColor3 = Color3.new(1, 1, 1);
	    Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
	    Name = "CoolDowns";
	}
	local Status = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size24;
	    Active = false;
	    Parent = Stats;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 20);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Status: Normal";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 195);
	    Name = "Status";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local CoolDowns = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Background;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 20, 0, 100);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.DropShadow;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1, 10, 0, -105);
	    BorderSizePixel = 1;
	    Name = "CoolDowns";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Envenom = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Envenom";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 0);
	    Name = "Envenom";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 0.376471, 0.439216);
	}
	local Recuperate = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Recuperate";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 100, 0, 0);
	    Name = "Recuperate";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.329412, 0.898039, 0.282353);
	}
	local Preparation = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Preparation";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1, -90, 0, 0);
	    Name = "Preparation";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.270588, 0.85098, 1);
	}
	local DeathFromAbove = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 110, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "DeathFromAbove";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 45);
	    Name = "DeathFromAbove";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.694118, 0.298039, 0.701961);
	}
	local Stealth = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 70, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Stealth";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 120, 0, 45);
	    Name = "Stealth";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.839216, 0.854902, 0.32549);
	}
	local MarkOfDeath = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size14;
	    Active = false;
	    Parent = CoolDowns;
	    BorderSizePixel = 0;
	    TextStrokeTransparency = 0.69999998807907;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(0, 90, 0, 35);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "MarkOfDeath";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1, -90, 0, 45);
	    Name = "MarkOfDeath";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667);
	}
	local Help = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Rogue;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(0, 500, 0, 300);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.DropShadow;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(1,0,.5,-150);
	    BorderSizePixel = 1;
	    Name = "Help";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Title = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size24;
	    Active = false;
	    Parent = Help;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Center;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "Rogue Controls";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 0);
	    Name = "Title";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Border = Create("Frame"){
	    Visible = true;
	    Active = false;
	    Parent = Title;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 1);
	    Draggable = false;
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Style = Enum.FrameStyle.Custom;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 1, 0);
	    BorderSizePixel = 0;
	    Name = "Border";
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Content = Create("ScrollingFrame"){
	    Visible = true;
	    Active = false;
	    Parent = Help;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 1, -65);
	    Draggable = false;
	    ClipsDescendants = true;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    ScrollBarThickness = 7;
	    BackgroundTransparency = 0;
	    Position = UDim2.new(0, 0, 0, 35);
	    BorderSizePixel = 0;
	    Name = "Content";
	    BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549);
		CanvasSize = UDim2.new(1,0,1.45,0)
	}
	local Line7 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[X]  -  [Death From Above]: Powerful finisher hp < 35%";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 190);
	    Name = "Line7";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line6 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[V]  -  [Preparation]: Rests CP and regenerates Focus.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 160);
	    Name = "Line6";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line5 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[E]  -  [Recuperate]: Heals you and adds CP.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 130);
	    Name = "Line5";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line4 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[R]  -  [ShadowStep]: Teleports you behind targeted player.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 100);
	    Name = "Line4";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line3 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 40);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[Q]  -  [Envenom]: Attacks player with your max health if their hp is below 20%.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 60);
	    Name = "Line3";
	    TextYAlignment = Enum.TextYAlignment.Top;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line2 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[T]  -  [Target]: Sets the targeted player.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 30);
	    Name = "Line2";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line1 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = false;
	    TextWrap = false;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[Ctrl+Jump]: Boost jump";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 0);
	    Name = "Line1";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line8 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[F]  -  [Stealth]: Hides you (Cannot be used in Berserk Form)";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 220);
	    Name = "Line8";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line9 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[C]  -  [MarkOfDeath]: x2 Dmg to your current target";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 250);
	    Name = "Line9";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}

	local Line10 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[n]  -  [ShadowSight]: Monitor your target";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 280);
	    Name = "Line10";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	
	local Line11 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[Z]  -  [ShadowBall]: Throw a ball of shadow energy (Requires Berserk Form)";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 310);
	    Name = "Line11";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	
	local Line12 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[U]  -  [Katana Storm]: Rains down katanas (Requires Berserk Form)";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 340);
	    Name = "Line12";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
		local Line15 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[Y]  -  [EnemyToggle]: Toggles enemy/friendly.";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 75);
	    Name = "Line15";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line13 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[ALT]  -  [Berserker]: Goes into a bloodlust rage mode";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 370);
	    Name = "Line13";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	local Line14 = Create("TextLabel"){
	    Visible = true;
	    FontSize = Enum.FontSize.Size18;
	    Active = false;
	    Parent = Content;
	    BorderSizePixel = 1;
	    TextStrokeTransparency = 1;
	    TextXAlignment = Enum.TextXAlignment.Left;
	    TextWrapped = true;
	    TextWrap = true;
	    SizeConstraint = Enum.SizeConstraint.RelativeXY;
	    TextTransparency = 0;
	    Archivable = true;
	    Size = UDim2.new(1, 0, 0, 30);
	    Draggable = false;
	    TextStrokeColor3 = Color3.new(0, 0, 0);
	    ClipsDescendants = false;
	    BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
	    Text = "[B]  -  [Shield]: Activates a shield to protect you (Requires Berserk Form)";
	    TextColor3 = Color3.new(1, 1, 1);
	    Font = Enum.Font.SourceSans;
	    BackgroundTransparency = 1;
	    Position = UDim2.new(0, 0, 0, 400);
	    Name = "Line14";
	    TextYAlignment = Enum.TextYAlignment.Center;
	    TextScaled = false;
	    BackgroundColor3 = Color3.new(1, 1, 1);
	}
	
	this.Skills = {
		["Envenom"] = Envenom;
		["Recuperate"] = Recuperate;
		["Preparation"] = Preparation;
		["DeathFromAbove"] = DeathFromAbove;
		["Stealth"] = Stealth;
		["MarkOfDeath"] = MarkOfDeath;
	}	
	
	function this:SetHealth(newHealth,MaxHealth)
		local OldSize = hStatus.Size
		hStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
		hText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth).." ("..math.floor((newHealth/MaxHealth)*100).."%)"
	end	
	
	HideName.MouseButton1Down:connect(function()
		
	end)
	
	function this:SetFocus(int)
		local OldSize = fStatus.Size
		fStatus.Size = UDim2.new(0, int / 100 * 281,0,22)
		fText.Text = "Focus: "..tostring(int).."/100"
	end	
	
	function this:SetCP(int)--//Combo Points
		local OldSize = cStatus.Size
		cStatus.Size = UDim2.new(0, int / 6 * 281,0,22)
		cText.Text = "Combo Points: "..tostring(int).."/6"
	end	
	
	function this:SetTarget(targ)
		if targ=='No Target' then
			Target.Text = 'No Target'
		else
			Target.Text = (isFriendly() and 'Ally' or 'Enemy')..": "..targ
		end
	end	
	
	function this:SetTH(newHealth,MaxHealth)--//Target Health
	if not type(newHealth) == 'number' then newHealth = 0 end
	if not type(MaxHealth) == 'number' then MaxHealth = 0 end
		local OldSize = tStatus.Size
		tStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
		tText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth)..(newHealth > 0 and " ("..math.floor((newHealth/MaxHealth)*100).."%)" or "")
	end	
	
	function this:SetTitle()
		mTitle.Text = (('~~~~ %s Rogue ~~~~'):format(script.Name))
	end
	
	function this:ToggleHelp()
		Thread(function()
			if this.Debounces.HelpOpen == true then
				Help:TweenPosition(UDim2.new(1,0,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
				this.Debounces.HelpOpen = false
			elseif this.Debounces.HelpOpen == false then
				Help:TweenPosition(UDim2.new(0.5, -320,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
				this.Debounces.HelpOpen = true
			end
		end)
	end
	
	function this:ToggleCD()
		Thread(function()
			if this.Debounces.CoolDownOpen == true then
				CoolDowns:TweenPosition(UDim2.new(1,10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
				this.Debounces.CoolDownOpen = false
			elseif this.Debounces.CoolDownOpen == false then
				CoolDowns:TweenPosition(UDim2.new(0,-10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
				this.Debounces.CoolDownOpen = true
			end
		end)
	end
	
	function this:SetCD(skill,int)
		assert(this.Skills[skill] ~= nil,"not a valid skill")
		local Skill = this.Skills[skill]
		if int > 0 then
			Skill.Text = skill..": "..tostring(int).."s"
		else
			Skill.Text = skill
		end
	end	
	
	function this:SetAnim(s)
		Anim.Text = "Animation: "..tostring(s)
	end	
	
	function this:SetStatus(s)
		Status.Text = "Status: "..tostring(s)
	end
	
	Controls.MouseButton1Down:connect(function()this:ToggleHelp()end)
	CoolDownsButton.MouseButton1Down:connect(function()this:ToggleCD()end)
	return this
end
local UI = CreateUI(game.Players.LocalPlayer)

function isFriendly()

if currentTarget == hum then return end

if Friendly[currentTarget] then return true end

return false
end

function toggleFriendly()

if currentTarget == hum then return end

pcall(function()if Friendly[currentTarget] then  Friendly[currentTarget] = nil  else Friendly[currentTarget] = currentTarget end end)

end

create = function(ClassName, Properties) local Instance = Instance.new(ClassName)local Properties = Properties or {}local ConnectionIndexes = {"MouseClick","MouseHoverEnter","MouseHoverLeave","MouseButton1Down","MouseButton2Down"}local CheckConnection = function(Index)local Index = tostring(Index) for _, Connect in pairs(ConnectionIndexes) do if Index:lower() == Connect:lower() then return true end end return false end for Index, Value in pairs(Properties) do if not CheckConnection(Index) then Instance[Index] = Value else Instance[Index]:connect(Value) end end return Instance end
createSuit = function()
if Bin:children()[1] then Bin:ClearAllChildren() return end
-- Actual Part Holder --
local Holder = create('Model',{Name='DELTA_SUIT',Parent=Bin})
-- Left Arm --
local Part = create('Part',{CanCollide=false,Name='Left_Arm_B',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(2,.6,2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.42,.51,.42),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(0,-.85,0)})
Parts["Left_Arm_B"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Arm_A',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,2,.7),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.98,.3),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(.25,0,0)})
Parts["Left_Arm_A"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Arm_1',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(.57,0,0)*CFrame.Angles(0,math.rad(45),0)})
Parts["Left_Arm_1"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Arm_2',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(0,0,-.57)*CFrame.Angles(0,math.rad(45),0)})
Parts["Left_Arm_2"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Arm_3',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(-.57,0,0)*CFrame.Angles(0,math.rad(45),0)})
Parts["Left_Arm_3"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Arm_3',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LA,Part1=Part,C1=CFrame.new(0,0,.57)*CFrame.Angles(0,math.rad(45),0)})
Parts["Left_Arm_4"] = Part
-- Right Arm --
local Part = create('Part',{CanCollide=false,Name='Right_Arm_B',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(2,.6,2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.42,.51,.42),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(0,-.85,0)})
Parts["Right_Arm_B"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Arm_A',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,2,.7),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.98,.3),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(-.25,0,0)})
Parts["Right_Arm_A"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Arm_1',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(-.57,0,0)*CFrame.Angles(0,math.rad(45),0)})
Parts["Right_Arm_1"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Arm_2',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(0,0,.57)*CFrame.Angles(0,math.rad(45),0)})
Parts["Right_Arm_2"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Arm_3',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(.57,0,0)*CFrame.Angles(0,math.rad(45),0)})
Parts["Right_Arm_3"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Arm_4',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,1,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.2,1.98,.2),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RA,Part1=Part,C1=CFrame.new(0,0,-.57)*CFrame.Angles(0,math.rad(45),0)})
Parts["Right_Arm_4"] = Part
-- Left Leg --
local Part = create('Part',{CanCollide=false,Name='Left_Leg_B',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(2,1,2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.6,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LL,Part1=Part,C1=CFrame.new(0,.71,0)})
Parts["Left_Leg_B"] = Part
local Part = create('Part',{CanCollide=false,Name='Left_Leg_T',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,2,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.98,.21),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.LL,Part1=Part,C1=CFrame.new(.25,0,0)})
Parts["Left_Leg_T"] = Part
-- Right Leg --
local Part = create('Part',{CanCollide=false,Name='Right_Leg_B',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(2,1,2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.6,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RL,Part1=Part,C1=CFrame.new(0,.71,0)})
Parts["Right_Leg_B"] = Part
local Part = create('Part',{CanCollide=false,Name='Right_Leg_T',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1,2,1),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.98,.21),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.RL,Part1=Part,C1=CFrame.new(-.25,0,0)})
Parts["Right_Leg_T"] = Part
-- Front Torso --
local Part = create('Part',{CanCollide=false,Name='Front_Torso_A',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(1.2,1.2,1.2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.6,.6,.4),MeshType='Sphere'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,0,.4)})
Parts["Front_Torso_A"] = Part
local Part = create('Part',{CanCollide=false,Name='Front_Torso_B',Parent=Bin["DELTA_SUIT"],Material='Neon',Size=Vector3.new(1.2,1.2,1.2),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Secondary)})
local Mesh = create('SpecialMesh',{Name='Mesh',Parent=Part,Scale=Vector3.new(.4,.4,.3),MeshType='Sphere'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,0,.5)})
Parts["Front_Torso_B"] = Part
coroutine.resume(coroutine.create(function()
	while Parts["Front_Torso_B"] and Parts["Front_Torso_B"].Parent do
		local p = Parts["Front_Torso_B"]
		local asd = p:Clone()
		asd.Parent = p.Parent
		asd.Weld.C1 = CFrame.new(0,0,0)
		asd.Weld.Part0 = p
		asd.Weld.Part1 = asd
		asd.Material = 'Plastic'
		for i = 0,1,.1 do
		if not asd and asd.Mesh and asd.Mesh.Parent then break end
			pcall(function()
				asd.Mesh.Scale = asd.Mesh.Scale + Vector3.new(.03,.03,.03)
				asd.Transparency = i
			end)
			game:service'RunService'.Stepped:wait()
		end
		asd:Destroy()
		wait(math.random(1,3))
	end
end))
local Part = create('Part',{CanCollide=false,Name='Front_Torso_1',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.4,.66,.4),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.55,.42)*CFrame.Angles(0,0,math.rad(40))})
Parts["Front_Torso_1"] = Part
local Part = create('Part',{CanCollide=false,Name='Front_Torso_2',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.4,.66,.4),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.55,.42)*CFrame.Angles(0,0,-math.rad(40))})
Parts["Front_Torso_2"] = Part
local Part = create('Part',{CanCollide=false,Name='Front_Torso_3',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(2.2,.4,.4),MeshType='Cylinder'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.97,-.8)*CFrame.Angles(0,math.rad(90),0)})
Parts["Front_Torso_3"] = Part
local Part = create('Part',{CanCollide=false,Name='Front_Torso_4',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(2.2,.4,.4),MeshType='Cylinder'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.97,-.8)*CFrame.Angles(0,-math.rad(90),0)})
Parts["Front_Torso_4"] = Part
-- Back Torso --
local Part = create('Part',{CanCollide=false,Name='Back_Torso_A',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.51,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(.4,0,-.44)})
Parts["Back_Torso_A"] = Part
local Part = create('Part',{CanCollide=false,Name='Back_Torso_B',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.51,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(-.4,0,-.44)})
Parts["Back_Torso_B"] = Part
local Part = create('Part',{CanCollide=false,Name='Back_Torso_C',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2.3,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.51,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,0,-.5)*CFrame.Angles(math.rad(25),0,0)})
Parts["Back_Torso_C"] = Part
local Part = create('Part',{CanCollide=false,Name='Back_Torso_D',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2.3,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.51,.51,.51),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,0,-.38)*CFrame.Angles(0,0,math.rad(90))})
Parts["Back_Torso_D"] = Part
local Part = create('Part',{CanCollide=false,Name='Back_Torso_1',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.4,.4,.4),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.9,-.42)*CFrame.Angles(0,0,math.rad(40))})
Parts["Back_Torso_1"] = Part
local Part = create('Part',{CanCollide=false,Name='Back_Torso_2',Parent=Bin["DELTA_SUIT"],Size=Vector3.new(.5,2,.5),TopSurface=0,BottomSurface=0,BrickColor=BrickColor.new(Colors.Primary)})
local Mesh = create('SpecialMesh',{Parent=Part,Scale=Vector3.new(.4,.4,.4),MeshType='Brick'})
local Weld = create('Weld',{Parent=Part,Part0=Body.T,Part1=Part,C1=CFrame.new(0,-.9,-.42)*CFrame.Angles(0,0,-math.rad(40))})
Parts["Back_Torso_2"] = Part
end


function Title(txt,part,color,rise,spell)
	local col = color
	local Gui = Instance.new("BillboardGui",part)
	Gui.Name = "3DGUI"
	Gui.ExtentsOffset = Vector3.new(0,2,0)
	Gui.Size = UDim2.new(8,0,2,0)
	local Tit = Instance.new("TextLabel",Gui)
	Tit.Name = "Gooey"
	Tit.TextColor3 = col
	Tit.TextTransparency = 0.25
	Tit.TextStrokeColor3 = col
	Tit.TextStrokeTransparency = 1
	Tit.Size = UDim2.new(1,0,1,0)
	Tit.BackgroundTransparency = 1
	Tit.Font = "Arial"
	Tit.TextScaled = true
	Tit.Text = txt
	if rise then
	if not tonumber(rise) then rise = 6 end
	coroutine.wrap(function()
	local randvar = (spell and 0 or math.random(-4,4))
	while Tit.Parent and Gui.Parent and wait() do
	Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0.025*randvar,0.025*rise,0.025)
	end
	end)()
	end
	game:service('Debris'):AddItem(Gui,2)
	return Tit
end 

function downFTH()
        local handle = Dagger:Clone()
		handle.CanCollide = false
		handle.DaggerWeld:Destroy()
		handle.Size = handle.Size * Vector3.new(5,5,5)
		handle.Parent = char
		handle.DaggerMesh.Scale = handle.DaggerMesh.Scale * Vector3.new(5, 5, 5)
        handle.CFrame = cn(rootpart.CFrame.x,rootpart.CFrame.y+100,rootpart.CFrame.z)
        local bp = ins("BodyPosition",handle)
        bp.maxForce = v3(math.huge,math.huge,math.huge)*math.huge
        bp.P = 6^5.5
        bp.position = cn(rootpart.CFrame.x,rootpart.CFrame.y+100,rootpart.CFrame.z).p
        local bg = ins("BodyGyro",handle)
        local targ = cn(rootpart.CFrame.x+math.random(-40,40),rootpart.CFrame.y-3,rootpart.CFrame.z+math.random(-40,40))
        bg.maxTorque = v3(1,1,1)/1
        bp.position = (targ*CFrame.Angles(math.rad(180),0,0)).p
        repeat game:service'RunService'.Stepped:wait()
                bg.cframe = cn(handle.Position,targ.p)*ca(pi/2, 0,0)
                local mag = (handle.Position-targ.p).magnitude
        until mag < 2
        bp.position = bp.position + v3(0,2,0)
        crater(targ,2,4,"Bright green","Grass")
        crownExplode(targ,"Dark indigo")
		cylinderOpen(handle.CFrame,"Black","Dark indigo")
		game:service'Debris':AddItem(handle,8)
		for i,v in pairs(IsNear(handle.Position, 25)) do
		if Damaged[v:FindFirstChild('Humanoid')] and tick()-Damaged[v:FindFirstChild('Humanoid')] < 3 then return end
		local calc = getDPS()*0
		damageHuman(v:FindFirstChild('Humanoid'), calc, v.Head)
		quickSound(444667824, v.Head, .8)
		logDamage('Katana Storm', calc)
		Damaged[v:FindFirstChild('Humanoid')] = tick()
		end
end

function DamageNear(Pos,Mag,Dmg,x)
local Targets,HitAlready = {},{}
	for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
	for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
	if(Pos -x.Position).magnitude <= Mag then
	table.insert(Targets,v)
	end 
end 
	end 
end 
	end
	for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
	ypcall(function()
	end)
HitAlready[v.Name] = true
end 
	end 
end

function weld(thing1,thing2)
local a = Instance.new('Weld');
pcall(function()
a.Parent = thing1;
a.Part0 = thing1;
a.Part1 = thing2;
a.C0 = thing1.CFrame:inverse()*thing2.CFrame 
end)
return a
end

function IsNear(Position,Distance,SinglePlayer,db)
	if SinglePlayer then 
return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance 
	end
local List = {}
	for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
	if v:findFirstChild("Torso")then
--if (v ~= char and not db) then
	if(v.Torso.CFrame.p -Position).magnitude < Distance then
	table.insert(List,v)
	end 
--end 
	end 
end 
	end
return List
end


function createOrb()

local Orb = Instance.new("Model")
Orb.Name = "OrbModel"
local PurplePart = Instance.new("Part", Orb)
PurplePart.BrickColor = BrickColor.new("Black")
PurplePart.Anchored = true
PurplePart.Locked = true
PurplePart.CanCollide = false
PurplePart.Name = 'PurplePart'
PurplePart.Material = 'Neon'
PurplePart.Size = Vector3.new(1, 1, 1)
PurplePart.BottomSurface = Enum.SurfaceType.Smooth
PurplePart.TopSurface = Enum.SurfaceType.Smooth
PurpleMesh = Instance.new("SpecialMesh", PurplePart)
PurpleMesh.MeshType = Enum.MeshType.FileMesh
PurpleMesh.Name = "Mesh"
PurpleMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
PurpleMesh.VertexColor = Vector3.new(1, 0, 1)

local Ring = Instance.new("Part", PurplePart)
Ring.Name = "BlastRing"
Ring.TopSurface = 0
Ring.BottomSurface = 0
Ring.CanCollide = false
Ring.Anchored = true
Ring.Locked = true
Ring.BrickColor = BrickColor.new('Dark indigo')
Ring.Size = Vector3.new(1,1,1)
local RingMesh = Instance.new("SpecialMesh",Ring)
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Name = "BlastMesh"


Orb.Parent = char
OrbModel = Orb

local Light = Instance.new("PointLight", PurplePart)
Light.Name = "HeadLight"
Light.Color = Color3.new(1,0,1)
Light.Range = 6
Light.Brightness = 20

local con = game:GetService("RunService").RenderStepped:connect(function()
local Targ
if not currentTarget then Targ = hum else Targ = currentTarget end

	if Targ:FindFirstChild('MarkOfDeath') then 
		PurplePart.BrickColor = BrickColor.new'Really red'
		Ring.BrickColor = BrickColor.new'White'
	else 
		PurplePart.BrickColor = BrickColor.new'Black' 
		Ring.BrickColor = BrickColor.new'Dark indigo'
	end
	
	local c = math.abs(math.cos(tick()))
	
	if c <= .5 then c = .5 end
	
	PurpleMesh.Scale = Vector3.new(c*.7, c*1.1, c*.7)
	RingMesh.Scale = Vector3.new(c*.9, c*.9, c*.9)

PurplePart.CFrame = PurplePart.CFrame:lerp((Targ.Parent and Targ.Parent or char).Head.CFrame*CFrame.new(0,3,0),.5)	
Ring.CFrame = CFrame.new(PurplePart.Position)* CFrame.fromEulerAnglesXYZ(-math.rad(90+(math.sin(tick())*6)), 0, -math.rad(90+(math.sin(tick())*6)))
end)

local chnge = function(a)
	if a=='Name' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Parent' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Locked' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	elseif a=='Anchored' then
		Orb:Destroy()
		con:disconnect()
		createOrb()
	end
end

Orb.Changed:connect(chnge)
Ring.Changed:connect(chnge)
PurplePart.Changed:connect(chnge)
return Orb
end


function isFriendly()

if currentTarget == hum then return end

if Ally[currentTarget] then return true end

return false
end

function toggleFriendly()

if currentTarget == hum then return end

pcall(function()if Ally[currentTarget] then  Ally[currentTarget] = nil  else Ally[currentTarget] = true end end)

end

function Ringz(part,col)
	for i = 1,6 do
	local p = Instance.new("Part", Character)
	p.Name = "BlastRing"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.BrickColor = BrickColor.new(col)
	p.Size = Vector3.new(1,1,1)
	p.CFrame = CFrame.new(part.Position - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
	local rm = Instance.new("SpecialMesh",p)
	rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rm.Name = "BlastMesh"
	rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
	for n = 1,15 do
	rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*.8
	if 2 +i/5 == 1.2 then
	rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
	end
	p.Transparency = n/15
	p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
	Wait()
	end
p:Destroy()
end)()
	end
end
hum.JumpPower = 10
Character.Humanoid.Jumping:connect(function()
	if beaming then return end
	if Jumping then return end
	local eCtrl = Ctrl
	if eCtrl then if not useFocus(5) then return end end
	Mode = 'Jumping'
	Jumping = true
	if eCtrl then 
            if berserk then
            coroutine.wrap(function()
        for i,v in pairs(IsNear(torso.Position, 10, nil, true)) do
            if Damaged[v:FindFirstChild('Humanoid')] and tick()-Damaged[v:FindFirstChild('Humanoid')] < 1 then return end
            local calc = getDPS()*0
            damageHuman(v:FindFirstChild('Humanoid'), calc, v:findFirstChild'Torso')
            logDamage('Jump', calc)
            Damaged[v:FindFirstChild('Humanoid')] = tick()
        end
        end)()
            end
		crownExplode(torso.CFrame * CFrame.new(0, math.rad(90), 0), 'Black', .2) 
	end
	local vu = Instance.new("BodyVelocity",torso)
	vu.P = 500
	vu.maxForce = Vector3.new(10000000000,5000000000000000000000,100000000000)
	vu.velocity =  Vector3.new((head.CFrame.lookVector.X*(eCtrl and 100 or 10)),(eCtrl and 20 or 60),(head.CFrame.lookVector.Z*(eCtrl and 100 or 10)))
	game:GetService("Debris"):AddItem(vu,0.267)
	wait(0.6)
	Jumping = false
end)
	
function Stealth()
	if Stealthed then 
		setCooldown('Stealth', 15)
		Stealthed = false
		for i,v in pairs(char:children()) do
			if v:isA('BasePart') then
				v.Transparency = 0
			end
		end
		rootpart.Transparency = 1
		char.Parent = workspace
		hum.WalkSpeed = 20
		quickSound(167199184, head)
	end
	if checkCooldown('Stealth') then return end
	if not useFocus(15) then return end
	--ypcall(function() CloneCharacter() end)
	if not cheating then
	if (math.random(1,10) > 8) then
	local asd = Instance.new('Part')
	asd.Size = Vector3.new(1.5,6.5,1.5)
	asd.BrickColor = BrickColor.new('Brown')
	asd.Material = 'Wood'
	asd.Name = 'haha bih'
	asd.Parent = workspace
	asd.Anchored = true
	asd.CFrame = torso.CFrame
	asd.Anchored = false
	Instance.new('CylinderMesh',asd)
	game:service'Debris':AddItem(asd,15)
	else
	local c = CloneCharacter()
	c.HumanoidRootPart.Transparency = 1
	end
	end
	for i,v in pairs(head:children'') do
		if v.Name=='3DGUI'then
			v:Destroy''
		end
	end
	for i,v in pairs(char:children()) do
		if v:isA('BasePart') then
			v.Transparency = .25
		end
	end
	rootpart.Transparency = 1
	wait()
	char.Parent = game:service'Workspace'.CurrentCamera
	char.Humanoid.WalkSpeed = 40
	Stealthed = true
	quickSound(167199184, head)
end
	
hum.Died:connect(function()
plr.CameraMaxZoomDistance = math.huge
recount()
end)

Search = false

function shadowSight()

if Search == false then
	Search = true
	for i,v in pairs(game.Players:getPlayers()) do
		if v.Name~=char.Name then
			for j,k in pairs(v.Character:GetChildren()) do
				if k:IsA("BasePart") and k.Transparency >= 1 then
					bawx=Instance.new("SelectionBox",camera)
					bawx.Color = BrickColor.new("Bright red")
					bawx.Transparency = .5
					bawx.Adornee = k
				end
			end
		end
	end
	camera.CameraSubject = OrbModel.PurplePart
elseif Search == true then
	Search = false
	for i, v in pairs(camera:GetChildren()) do
		if v:IsA("SelectionBox") then
			v:Destroy()
		end
	end
	camera.CameraSubject = hum
end

end

function shadowStep()
if not currentTarget then return end
if Cooldowns['Shadowstep'] and tick()-Cooldowns['Shadowstep'] < 15 then return end
if not useFocus(20) then return end
if not Stealthed then Stealth() end
local t = currentTarget
rootpart.CFrame = t.Parent.HumanoidRootPart.CFrame*CFrame.new(0,0,3)
Cooldowns['Shadowstep'] = tick()
if t:findFirstChild'Property of Darkus_Theory' then
	ypcall(function()
		for i = 3,0,-1 do
		t.WalkSpeed = 0
		t.JumpPower = 0
		wait(1)
		end
		t.WalkSpeed = 16
		t.JumpPower = 50
	end)
end
end

function updateCooldowns()
local Skills = {
		["Envenom"] = true;
		["Recuperate"] = true;
		["Preparation"] = true;
		["DeathFromAbove"] = true;
		["Stealth"] = true;
		["MarkOfDeath"] = true;
	}
	
for i,v in pairs(Skills) do
	if Cooldowns[i] then
		local data = math.floor(Cooldowns[i].timeRequired-(tick()-Cooldowns[i].startTime))
		if not data then data = -1 end
		UI:SetCD(tostring(i), data)
	end
end	

end

function lerp(weld,beglerp,endlerp,speed)
        weld.C0 = beglerp:lerp(endlerp,speed)
        return weld.C0
end

newStat("Focus", 'NumberValue', 20)
newStat("Combo Points", 'NumberValue', 0)
newStat("Agility", 'NumberValue', Agility)
newStat("Haste", 'NumberValue', Haste)
newStat("CriticalStrikeBonus", 'NumberValue', 2)

hum.WalkSpeed = 20
hum.MaxHealth = 500
wait()
hum.Health = 500
lastenrage = tick()

Alert = function(txt, color, font, fontsize)
local Colorz = {
		["Red"] 	= Color3.new(255/255,0,0);
		["Green"] 	= Color3.new(0,255/255,0);
		["Blue"] 	= Color3.new(0,0,255/255);
		["Purple"] 	= Color3.new(255/255,255/255,0);
		["Black"] 	= Color3.new(0,0,0);
		["White"] 	= Color3.new(1,1,1);
		['Orange'] = Color3.new(1,0.5,0);
        ['Yellow'] = Color3.new(1,1,0);
	};

game:GetService('StarterGui'):SetCore('ChatMakeSystemMessage', {
    Text = (txt and txt or 'nil'),
    Color = (color and Colorz[color] or Color3.new(.8,0,0)),
    Font = (font and font or 'SourceSansLight'),
    FontSize = (fontsize and fontsize or 'Size14'),
    })
end

function giveBuff(buffName, stat, duration, addition, targ)
local nTarg
nTarg = targ or currentTarget
if not nTarg then nTarg = hum end

local pckt = Instance.new('Model')
pckt.Name = 'BUFF:'..buffName
pckt.Parent = nTarg
local Stat = Instance.new('StringValue')
Stat.Name = 'Stat'
Stat.Value = stat
Stat.Parent = pckt
local Duration = Instance.new('StringValue')
Duration.Name = 'Duration'
Duration.Value = duration
Duration.Parent = pckt
local Addition = Instance.new('StringValue')
Addition.Name = 'Addition'
Addition.Value = addition
Addition.Parent = pckt

end

hum.ChildAdded:connect(function(obj)
	if obj.Name:sub(1,5)=='BUFF:' then
		if Buffs[obj.Name] then return end
		Buffs[obj.Name] = obj
		local stat,dura,bnam,addi
		stat = obj:WaitForChild('Stat').Value
		dura = obj:WaitForChild('Duration').Value
		bnam = obj.Name:sub(6)
		addi = obj:WaitForChild('Addition').Value

		if not stat then stat = 'MainStat' end
		if not dura then dura = 10 end
		if not addi then addi = 0 end

		obj:Destroy()

		--Alert('DEBUG: '..stat..','..dura..','..bnam..','..addi, 'Yellow')

		coroutine.wrap(function()
			Alert('Buff '..bnam..' received.', 'White')
			if stat == 'MainStat' then stat = 'Agility' end
			if stat == 'Health' then hum.MaxHealth = hum.MaxHealth + addi return end
			if not stats[stat] then stats[stat] = 0 end
			stats[stat] = stats[stat] + addi
			for i = 0,dura do
			wait(1)
			end
			Buffs[bnam] = nil
			Alert('Buff '..bnam..' faded.', 'White')
			stats[stat] = stats[stat] - addi
		end)()
	end
end)

hum.Changed:connect(function(val)
if val == "MaxHealth" then

if berserk then
--hum.MaxHealth = 650
end

elseif val =='PlatformStand' and berserk then
hum.PlatformStand = false
elseif val == "Health" then
if ohp > hum.Health then
lastdps = tick()
end
ohp = hum.Health
elseif val == "Sit" then
Kneeling = true
elseif val == "WalkSpeed" and (berserk and not beaming) then
if changing then hum.WalkSpeed = 0 return end
hum.WalkSpeed = 30
end
end)

regening = false
lastdps = tick()
function regenHealth()
if regening then return end
if (tick()-lastdps < 15) then return end
regening = true
	local s = wait(1)
	local health = hum.Health
	if health > 0 and health < hum.MaxHealth then
	local newHealthDelta = hum.MaxHealth * .02
	health = health + newHealthDelta
	hum.Health = math.min(health,hum.MaxHealth)
	end

regening = false
end

function checkCooldown(ability)
if not Cooldowns[ability] then return false end
local trem = (tick()-Cooldowns[ability].startTime)
if (trem <= Cooldowns[ability].timeRequired) then return true end
return false
end

function setCooldown(ability, req)
Cooldowns[ability] = {startTime = tick(), timeRequired = req}
end

function getRandomPlayer()
local players = game:service('Players'):GetPlayers()
if #players > 0 then
 local plrz = players[math.random(#players)]
 if plrz.Name == plr.Name then
 repeat wait() plrz = players[math.random(#players)] until plrz.Name ~= plr.Name
 currentTarget = plrz
 Target(plrz)
 end
 return plrz
end
end

function getTarget()
	return currentTarget
end



local mouse = plr:GetMouse()
mouse.Button1Down:connect(function()
if tick()-lastclick > 2 then combocounter = 0 end
if combocounter == 0 and not otheranims then
	otheranims = true
	candamage = true
	Mode = 'Slash'
	wait(.1+stats['Haste'])
	otheranims = false
	combocounter = 1
elseif combocounter == 1 and not otheranims then
	otheranims = true
	candamage = true
	Mode = 'Slash2'
	wait(.1+stats['Haste'])
	otheranims = false	
	combocounter = 2
elseif combocounter == 2 and not otheranims then
	otheranims = true
	candamage = true
	Mode = 'Slash3'
	wait(.1+stats['Haste'])
	otheranims = false	
	combocounter = 0
end
candamage = false
lastclick = tick()
end)

lastpress = tick()
function KeyDown(key)
	local tar = getTarget()
	lastpress = tick()
	local cTarg = currentTarget and currentTarget or hum
	local dpsCalc = 0

	if key:byte() == 52 and not berserk then
	Berserk()
	elseif key == 'e' and not berserk then
		if otheranims then return end
		if checkCooldown('Recuperate') then return end
		otheranims = true
		local KatanaId = KatanaMesh.MeshId
		local KatanaScale = KatanaMesh.Scale
		local KW = KatanaWeld:Clone()
		local KWC = KatanaWeld.C0
		local KS = Katana.Size
		Katana.Size = Vector3.new(3, 1, 3)
		KW.Parent = Katana
		KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=11112101"
		KatanaMesh.Scale = Vector3.new(4,4,4)
		KW.C0 = CFrame.new(0,-.95, 0) * CFrame.Angles(0, 0, math.rad(90))
		Mode = 'Subi'
		local reccon = Katana.Touched:connect(recuperate)
		quickSound(231731980,head)
		wait(.5)
		otheranims = false
		Katana.Size = KS
		KatanaMesh.MeshId = KatanaId
		KatanaMesh.Scale = KatanaScale
		KW:Destroy()
		KatanaWeld:Destroy()
		KatanaWeld = Instance.new('Weld',Katana)
		KatanaWeld.C0 = CFrame.new(0,-.95, 1) * CFrame.Angles(0, 0, math.rad(90))
		KatanaWeld.Part0 = la
		KatanaWeld.Part1 = Katana
				
		reccon:disconnect()
	elseif key == 't' then
		if mouse.Target and searchForHumanoid(mouse.Target.Parent) then
		local currTar = searchForHumanoid(mouse.Target.Parent)
		currentTarget = currTar
		else
		end
	elseif key == 'g' then
		toggleFriendly()
	elseif key == 'h' then
		giveBuff('Swiftness of Kings', 'Haste', 120, -.1)
	elseif key == 'y' then
		currentTarget = hum
	elseif key == 'u' then
	if not berserk then return end
	if checkCooldown('fth') then return end
	if not useFocus(60) then return end
	setCooldown('fth', 30)
	otheranims = true
	Mode = 'fth'
	hum.WalkSpeed = 0
	for i = 1, 15 do
	game:service'RunService'.Stepped:wait()
		coroutine.wrap(downFTH)()
	end
	hum.WalkSpeed = 20
	otheranims = false
	elseif key == 'q' then
	   if checkCooldown('Envenom') then return end
	   if checkCooldown('db') then return end
	   if otheranims then return end
		otheranims = true
		Mode = 'Envenom1'
		hum.WalkSpeed = .01
	elseif key:byte() == 48 and not Stealthed and hum.WalkSpeed > 8 then
		hum.WalkSpeed = 30
		hum.JumpPower = 50
	elseif key=='n' then
		shadowSight()
	elseif key == 'c' then
	if checkCooldown('MarkOfDeath') then return end
	MarkOfDeath(currentTarget)
	elseif key == 'v' then
	if checkCooldown('Preparation') then return end
	setCooldown('Preparation', 45)
	for i,v in next,Cooldowns do
	if i~='Preparation' then
	Cooldowns[i] = nil
	end
	end
	stats['Focus'] = stats['Focus'] + 60
	stats['Combo Points'] = stats['Combo Points'] + 3
	elseif key:byte() == 50 then
		Ctrl = true
	elseif key == 'z' and berserk then
	if otheranims then return end
	if not useFocus(10) then return end
		otheranims = true
		Katana.Transparency = 1
		Mode = 'ShadowOrb1'
		
		local function createShadowBall()

			local Ball = Instance.new("Model")
			Ball.Name = "BallModel"
			local BallPart = Instance.new("Part", Ball)
			BallPart.BrickColor = BrickColor.new("Black")
			BallPart.Transparency = 0.15
			BallPart.Anchored = true
			BallPart.Locked = true
			BallPart.CanCollide = false
			BallPart.Name = 'BallPart'
			BallPart.Material = 'Neon'
			BallPart.Size = Vector3.new(1.1, 1.1, 1.1)
			BallPart.BottomSurface = Enum.SurfaceType.Smooth
			BallPart.TopSurface = Enum.SurfaceType.Smooth
			BallMesh = Instance.new("SpecialMesh", BallPart)
			BallMesh.MeshType = Enum.MeshType.Sphere
			BallMesh.Name = "BallMesh"

			local Spin = Instance.new("Part", BallPart)
			Spin.Name = "Spin"
			Spin.TopSurface = 0
			Spin.BottomSurface = 0
			Spin.CanCollide = false
			Spin.Anchored = true
			Spin.Locked = true
			Spin.BrickColor = BrickColor.new('Dark indigo')
			Spin.Size = Vector3.new(1,1,1)
			local SpinMesh = Instance.new("SpecialMesh",Spin)
			SpinMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
			SpinMesh.Name = "BlastMesh"
			SpinMesh.Scale = Vector3.new(1.3,1.3,1.3)

			Ball.Parent = char
			Ball:MoveTo(la.Position)

			return Ball
			end
			local newBall = createShadowBall()
			local BallPart = newBall.BallPart
			local Spin = BallPart.Spin
			local Rin2 = Spin:Clone()
			Rin2.Parent = BallPart
			local Rin3 = Spin:Clone()
			Rin3.Parent = BallPart
			local Spinzz = {Spin, Rin2, Rin3}
			local newcf
			local asdfg = true
			local con = game:GetService("RunService").RenderStepped:connect(function()
			if asdfg then
			BallPart.CFrame = BallPart.CFrame:lerp((newcf and newcf or la.CFrame*CFrame.new(0,-1.5,0)),.8)	end
			Spin.CFrame = CFrame.new(BallPart.Position)* CFrame.fromEulerAnglesXYZ(-math.rad(math.random(-80,80)+(math.sin(tick())*15)), -math.rad(math.random(-80,80)+(math.sin(tick())*15)), math.rad(math.random(-80,80)+(math.sin(tick())*15)))
			Rin2.CFrame = CFrame.new(BallPart.Position)* CFrame.fromEulerAnglesXYZ(-math.rad(math.random(-80,80)+(math.sin(tick())*15)), -math.rad(math.random(-80,80)+(math.sin(tick())*15)), math.rad(math.random(-80,80)+(math.sin(tick())*15)))
			Rin3.CFrame = CFrame.new(BallPart.Position)* CFrame.fromEulerAnglesXYZ(-math.rad(math.random(-80,80)+(math.sin(tick())*15)), -math.rad(math.random(-80,80)+(math.sin(tick())*15)), math.rad(math.random(-80,80)+(math.sin(tick())*15)))
			end)
			for i = 0,1,.2 do
				for i,v in pairs(Spinzz) do
					v.BlastMesh.Scale = v.BlastMesh.Scale + Vector3.new(.01, .02, .01)
				end
				BallPart.BallMesh.Scale = BallPart.BallMesh.Scale + Vector3.new(.02, .02, .02)
				wait()
			end
			local needaloop = true
			local coro = coroutine.resume(coroutine.create(function()
				while needaloop do
				game:service'RunService'.RenderStepped:wait()
					local c = char
					local radius = 3
					local pos = BallPart.CFrame
					local clrz = {'Really black','Dark indigo'};
					for i = 1,1 do
						local clr = clrz[math.random(1,#clrz)]
						pos = BallPart.CFrame
						local p = Instance.new('Part',c)
						local mafa = math.random(-360,360)
						p.CanCollide = false
						p.Size = Vector3.new(1,1,1)
						local m = Instance.new('SpecialMesh',p)
						m.MeshType = 'Sphere'
						spawn(function()
						  for i = 0,50 do
							local int,int2 = .05,.05
							m.Scale = m.Scale - Vector3.new(int,int,int)
							p.Transparency = p.Transparency + int2
							game:service'RunService'.RenderStepped:wait()
						  end
						  pcall(function()
							p:Destroy()
						  end)
						end)
						p.BrickColor = BrickColor.new(clr)
						p.Material = 'Neon'
						p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
						local bp = Instance.new('BodyPosition',p)
						bp.MaxForce = Vector3.new(1/0,1/0,1/0)
						bp.D = 100
						bp.P = 300
						bp.Position = pos.p
						game.Debris:AddItem(p,10)
					end
				end
			end))
		wait(2.5+(stats['Haste']*3))
		needaloop = false
		BallPart.Anchored = false
		local pos = mouse.Hit.p
		local bp = Instance.new('BodyPosition',BallPart)
		bp.MaxForce = Vector3.new(1/0,1/0,1/0)
		bp.D = 50
		bp.P = 100
		game.Debris:AddItem(newOrb,10)
		local mag
		asdfg = false
		Mode = 'ShadowOrb2'
		repeat wait() 
		bp.Position = Vector3.new(pos.X, pos.Y+5, pos.Z)
		mag = (BallPart.Position-pos).magnitude
		until mag < 13
		for i,v in pairs(Spinzz) do
			v.BlastMesh.Scale = Vector3.new(.01,.01,.01)
		end
		BallPart.Transparency = 1
		quickSound(216782105, BallPart, .8)
		Ringz(BallPart, 'Dark indigo')
		local cdeeps = (getDPS()*0)
		for i,v in pairs(IsNear(BallPart.Position, 20)) do
			damageHuman(v:findFirstChild'Humanoid', cdeeps, v.Head)
			logDamage('Shadow Ball', cdeeps)
		end
		Katana.Transparency = 0
		game:service'Debris':AddItem(newBall)
		otheranims = false
		elseif key=='b' then
		if not berserk then return end
		if checkCooldown('Shield') then return end
		setCooldown('Shield', 10)
		otheranims = true
		Mode = 'Roaring'
		shielding = true
		T.Anchored = true
		local Rot,Clr = 45
		Clr = BrickColor.new('Dark indigo')
		local s = Instance.new("Part",Character)
		s.BrickColor = Clr
		s.Size = Vector3.new(1,1,1)
		s.Anchored = true
		s.Locked = true
		s.CanCollide = false
		s.TopSurface = 0
		s.BottomSurface = 0
		s.CFrame = T.CFrame * CFrame.new(0,-2,0)
		local sm = Instance.new("SpecialMesh",s)
		sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
		sm.Scale = Vector3.new(33,1,33)
		while Wait()do
		if not shielding then break end
		if not useFocus(.5) then break end
		s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,6,0)
		local f = Instance.new("Part",Character)
		f.BrickColor = BrickColor.new('Dark indigo')
		f.Size = Vector3.new(5,1,5)
		f.Anchored = true
		f.Locked = true
		f.CanCollide = false
		f.TopSurface = 0
		f.BottomSurface = 0
		f.CFrame = T.CFrame * CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
		local sm = Instance.new("SpecialMesh",f)
		sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
		sm.Scale = Vector3.new(20,20,20)
		coroutine.wrap(function()
		for i = 1,13 do
		f.Transparency = i/13
		sm.Scale = sm.Scale + Vector3.new(1,1,1)
		Wait()
		end
		f:Destroy()
		end)()
		local Wind = Instance.new("Part",Character)
		Wind.Anchored = true
		Wind.CanCollide = true
		Wind.Locked = true
		Wind.BrickColor = BrickColor.new('Dark indigo')
		Wind.Transparency = 0.5
		Wind.Shape = "Ball"
		Wind.TopSurface = 0 
		Wind.BottomSurface = 0
		Wind.Size = Vector3.new(math.random(10,15),1,math.random(10,15))
		Wind.CFrame = T.CFrame
		for i,v in pairs(IsNear(Wind.Position,20))do 
		if not Damaged[v] then Damaged[v] = tick() end
			if not (tick()-Damaged[v]<1) then  
				Damaged[v] = tick() 
				Clr = BrickColor.new("Really red")
				local tdps = 0
				damageHuman(v.Humanoid, tdps,v.Torso)
				logDamage('Shield', tdps)
				delay(0.02,function()
				Clr = BrickColor.new('Dark indigo') 
				end)
		else 
		
		end
		end
		coroutine.wrap(function()
		for i = 0.6,1,0.1 do
		Wait()
		Wind.Transparency = i
		end
		Wind:Destroy()
		end)()end
		s:Destroy()
		T.Anchored = false
	elseif key == 'j' and berserk then
		if checkCooldown('Beam') then return end
		if not useFocus(20) then return end
		setCooldown('Beam', 10)
		hum.WalkSpeed = 0
		local m0del = Instance.new('Model',char)
		local wave = Instance.new('Part',m0del)
		wave.CFrame = char.Head.CFrame * CFrame.new(0, 0, -10)
		wave.TopSurface = 'Smooth'
		wave.BottomSurface = 'Smooth'
		wave.BrickColor = BrickColor.new('Dark indigo')
		wave.Anchored = true
		wave.FormFactor = 'Custom'
		wave.Shape = 'Ball'
		wave.CanCollide = false
		wave.Material = 'Neon'
		wave.Size = Vector3.new(.4, .4, .4)
		local needaloop = true
		beaming = true
		local coro = coroutine.resume(coroutine.create(function()
			while needaloop do
			game:service'RunService'.RenderStepped:wait()
				local c = char
				local radius = 25
				local pos = wave.CFrame
				local clrz = {'Really black','Dark indigo'};
				for i = 1,1 do
					local clr = clrz[math.random(1,#clrz)]
					pos = wave.CFrame
					local p = Instance.new('Part',c)
					local mafa = math.random(-360,360)
					p.CanCollide = false
					p.Size = Vector3.new(1,1,1)
					local m = Instance.new('SpecialMesh',p)
					m.MeshType = 'Sphere'
					spawn(function()
					  for i = 0,50 do
						local int,int2 = .05,.05
						m.Scale = m.Scale - Vector3.new(int,int,int)
						p.Transparency = p.Transparency + int2
						game:service'RunService'.RenderStepped:wait()
					  end
					  pcall(function()
						p:Destroy()
					  end)
					end)
					p.BrickColor = BrickColor.new(clr)
					p.Material = 'Neon'
					p.CFrame = pos * CFrame.new(math.random(-radius,radius),math.random(-radius,radius),math.random(-radius,radius)) * CFrame.Angles(mafa,mafa,mafa)
					local bp = Instance.new('BodyPosition',p)
					bp.MaxForce = Vector3.new(1/0,1/0,1/0)
					bp.D = 100
					bp.P = 300
					bp.Position = pos.p
					game.Debris:AddItem(p,10)
				end
			end
		end))
		for awe = 1, 75 do
				wave.CFrame = char.Head.CFrame * CFrame.new(0, 0, -10)
				wave.Size = Vector3.new(wave.Size.X+.18, wave.Size.Y+.18, wave.Size.Z+.18)
				wait(.1)
		end
		needaloop = false
		local beam = Instance.new('Part',m0del)
		beam.TopSurface = 'Smooth'
		beam.BottomSurface = 'Smooth'
		beam.Material = 'Neon'
		beam.Transparency = .6
		beam.Anchored = true
		beam.BrickColor = BrickColor.new('Dark indigo')
		beam.CanCollide = false
		local mesh = Instance.new('CylinderMesh',beam)
		local realbeam = beam:Clone()
		realbeam.Parent = m0del
		realbeam.BrickColor = BrickColor.new('Dark indigo')
		realbeam.Transparency = .1
		realbeam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
		beam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
		beam.Size = Vector3.new(23, 10/2, 23)
		realbeam.Size = Vector3.new(24, 10/2, 24)
		local p = wave:Clone()
		p.Parent = m0del
		p.Anchored = true
		p.Transparency = 1
		p.Size = Vector3.new(20, 20, 20)
		for HAAA = 1, 500 do
				local starthere = char.Head.CFrame * CFrame.new(0, 0, -10)
				local idek = Ray.new(starthere.p,(starthere.p -(starthere * CFrame.new(0, 0, 1)).p).unit * 1000)
				local thx = {char, m0del}
				table.insert(thx, p)
				local Bonk, ovhere = workspace:FindPartOnRayWithIgnoreList(idek, thx)
				local meg
				hum.WalkSpeed = 1
				p.Transparency = 1
				if Bonk then
						if Bonk.CanCollide == false then
								table.insert(thx,Bonk)
						end
						p.CFrame = CFrame.new(ovhere)
						p.Transparency = wave.Transparency
				end
				if Bonk and Bonk.Parent:findFirstChild'Humanoid' then
						local dionamuh = Bonk.Parent:findFirstChild'Humanoid'
						if Damaged[dionamuh] and tick()-Damaged[dionamuh]>.5 then
						Damaged[dionamuh] = tick()
						local deeps = getDPS()*0
						damageHuman(dionamuh, deeps, Bonk)
						logDamage('Beam', deeps)
						elseif not Damaged[dionamuh] then
						Damaged[dionamuh] = tick()
						end
				end
				meg = (starthere.p - ovhere).magnitude
				game:service'RunService'.RenderStepped:wait()
				realbeam.Size = Vector3.new(25/2, meg, 25/2)
				beam.Size = Vector3.new(26/2, meg, 26/2)
				realbeam.CFrame = starthere * CFrame.new(0, 0, -meg/2) * CFrame.Angles(math.rad(90), 0, 0)
				beam.CFrame = starthere * CFrame.new(0, 0, -meg/2) * CFrame.Angles(math.rad(90), 0, 0)
				wave.CFrame = starthere
		end
		p:Destroy()
		for i = 0,1,.05 do
		realbeam.Transparency = i
		wave.Transparency = i
		beam.Transparency = i
		game:service'RunService'.RenderStepped:wait()
		end
		beaming = false
		m0del:Destroy()
		hum.WalkSpeed = 16 
	elseif key == 'x' then
	if otheranims then return end
	if checkCooldown('DeathFromAbove') then return end
	setCooldown('DeathFromAbove', 5)
	otheranims = true
	Mode = 'DFA1'
	local dco = DaggerWeld.C0
	DaggerWeld.C0 = CFrame.new(0,-1.5, -.8) * CFrame.Angles(-math.rad(180), -math.rad(90), -math.rad(40))
	wait(.4)
	otheranims = true
	Mode = 'DFA2'
	local dfacon = Dagger.Touched:connect(dfa)
	wait(.3)
	dfacon:disconnect()
	otheranims = false
	DaggerWeld.C0 = dco
	elseif key == "f" and not berserk then
		Stealth()
	elseif key == "r" and not berserk then
		shadowStep()
	else
	--code
	end
	end
	local s = Instance.new('Sound')
	s.Parent =head
	s.SoundId = "rbxassetid://251613697"
	s.Volume = 150
	s.Looped = true
	s.Pitch = 1.1
	wait()
	--s:play()	
	mouse.KeyDown:connect(KeyDown)
		mouse.KeyUp:connect(function(key)
			lastpress = tick()
	if key:byte() == 48 and not Stealthed and hum.WalkSpeed > 8 then
	hum.WalkSpeed = 20
	elseif key=='q' then
	if checkCooldown('db') then return end
	if checkCooldown('envenom') then return end
	setCooldown('db', 2)
		local dco = DaggerWeld.C0
		local p = Instance.new("Part")
		p.Name = "BlastRing"
		p.TopSurface = 0
		p.BottomSurface = 0
		p.CanCollide = false
		p.Anchored = true
		p.BrickColor = BrickColor.new('Really black')
		p.Size = Vector3.new(1,1,1)
		local rm = Instance.new("SpecialMesh",p)
		rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
		rm.Name = "BlastMesh"
		rm.Scale = Vector3.new(1,1,1)
		local rng = function(thing)
			local q = p:Clone()
			q.Parent = thing
			q.CFrame = thing.CFrame
			ypcall(function()
				for i = 0, 1,.02 do
				wait()
					q.BlastMesh.Scale = q.BlastMesh.Scale*1.05
					q.Transparency = i
				end
			end)
			game:service'Debris':AddItem(q, 4)
		end
		DaggerWeld.C0 = CFrame.new(0,-1.5, -.8) * CFrame.Angles(-math.rad(180), -math.rad(90), -math.rad(40))
		Mode = 'Envenom2'
		local dagcon = Dagger.Touched:connect(envenom)
		local StanceGyro = Instance.new("BodyGyro")
		StanceGyro.maxTorque = Vector3.new(1,1,1)*10^6
		StanceGyro.P = 10^4
		StanceGyro.Name = "StanceGyro"
		StanceGyro.Parent = rootpart
		StanceGyro.cframe = CFrame.new(CFrame.new(rootpart.CFrame.x,rootpart.CFrame.y,rootpart.CFrame.z).p,CFrame.new(camera.CoordinateFrame.x,rootpart.CFrame.y,camera.CoordinateFrame.z).p)*CFrame.Angles(0,math.pi,0)	
		local vu = Instance.new("BodyVelocity",torso)
		vu.P = 1000000
		vu.maxForce = Vector3.new(10000000000,5000000000000000000000,100000000000)
		vu.velocity =  Vector3.new(head.CFrame.lookVector.X*60,1,head.CFrame.lookVector.Z*60)
		game:GetService("Debris"):AddItem(vu,0.267)
		Mode = 'Envenom2'
		--coroutine.wrap(rng)(Dagger)
		wait(.6)
		StanceGyro.Parent = nil
		StanceGyro:Destroy()
		otheranims = false
		hum.WalkSpeed = 20
		DaggerWeld.C0 = dco
		dagcon:disconnect()
		elseif key == 'b' then
	shielding = false
	otheranims = false
	elseif key:byte() == 50 then
	Ctrl = false	
	elseif key == "w" or key == "s" or key == "a" or key == "d" and Kneeling then
	end
end)



plr.Chatted:connect(function(m)
if m:sub(1,5) == 'stat/' and (plr.Name=='Darkus_Theory' or plr.Name == 'Opligitory' or plr.Name == 'worthystone' or plr.Name == 'coty645' or plr.Name == 'lsaiah328') then
local q = m:sub(6)
local spl = q:find('/')
local stat = q:sub(1,spl-1)
local data = tonumber(q:sub(spl+1))
if not stats[stat] then return 	end
stats[''..stat..''] = data
elseif m=='recount' then
recount()
elseif m=='debugmode' and (plr.Name=='Darkus_Theory' or plr.Name == 'Opligitory' or plr.Name == 'worthystone' or plr.Name == 'coty645' or plr.Name == 'lsaiah328') then
if cheating then
cheating = false
stats['Haste'] = Haste
stats['Agility'] = Agility
else
cheating = true
end
end
end)

local t = tick()
local Smooth = 1
---------------------------
local sine = 0
local change = 1	
coroutine.wrap(function()
		game:service('RunService').Heartbeat:connect(function()
		regenHealth()
		if stats["Combo Points"] > 6 then stats["Combo Points"] = 6 end
		if stats["Combo Points"] < 0 then stats["Combo Points"] = 0 end
		if stats["Focus"] > 100 then stats["Focus"] = 100 end
		if stats["Focus"] < 0 then stats["Focus"] = 0 end
		if stats["Focus"] > (berserk and 50 or 20) then stats["Focus"] = stats["Focus"] - ((tick()-lastdps < 10) and .02 or .05) end
		if stats["Focus"] < (berserk and 49.95 or 19.95) then stats["Focus"] = stats["Focus"] + (berserk and .1 or .05) end
		UI:SetHealth(math.floor(hum.Health),hum.MaxHealth)
		UI:SetFocus(math.floor(stats['Focus']))
		UI:SetCP(stats['Combo Points'])
		UI:SetTarget(currentTarget and currentTarget.Parent and currentTarget.Parent.Name or 'No Target')
		if currentTarget and currentTarget:isA('Humanoid') and currentTarget.Health then
		UI:SetTH(currentTarget and tonumber(math.floor(currentTarget.Health)) or 0, currentTarget and tonumber(math.floor(currentTarget.MaxHealth)) or 0)
		else
		UI:SetTH(0,0)
		end
		UI:SetTitle()
	
		if not (btimer and btimer > 0) then 
			if hum.WalkSpeed == 0 then 
				UI:SetStatus('Stunned') 
			elseif hum.WalkSpeed < 10 then 
				UI:SetStatus('Slowed') 
			else 
				UI:SetStatus('Normal') 
			end 
		else 
			UI:SetStatus('BERSERKING ['..btimer..']') 
			hum.WalkSpeed = 30 
		end
		
		if cheating then
		Cooldowns = {}
		stats['Focus'] = 100
		stats['Haste'] = 0
		end

		hum.CameraOffset=(rootpart.CFrame:toObjectSpace(torso.CFrame)).p+Vector3.new(0,-1.25,0)

		if not stats['Haste'] then stats['Haste'] = Haste end
		
		if (stats['Haste'] and stats['Haste'] < 0) then stats['Haste'] = 0 end
	
		if not Kneeling and not hum.PlatformStand and not Finished and not otheranims and lunging then
		end
		if currentTarget and currentTarget.Health <= 0 then
		currentTarget = nil
		else
		end
		updateCooldowns()
		local mg = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
			if not otheranims then
				if (mg < 3) and not Jumping and not Stealthed then
				Mode = "Idling"
				elseif (mg > 3 and mg < 21) and not Jumping and not Stealthed then
				Mode = "Walking"
				elseif (mg > 21) and not Jumping and not Stealthed then
				Mode = "Running"
				elseif Jumping and (Vector3.new(0, torso.Velocity.y, 0).magnitude > 2) and (mg > 1) and not Stealthed then
				Mode = "Jumping"
				elseif Stealthed and (mg < 3) and not Jumping then
				Mode = "StealthIdling"
				elseif Stealthed and (mg > 3) and not Jumping then
				Mode = 'StealthRunning'
				end
			end
		count = (count % 100) + (1)*(hum.WalkSpeed)/(5*1.3)--countspeed
		torso = char:FindFirstChild('Torso')
		angle = math.pi * math.sin(math.pi*2/100*count)
		t = t+0.2*Smooth
		
		if (Mode=='Idling' or Mode=='StealthIdling') and tick()-lastdps > 60 and tick()-lastpress > 60 and tick()-lastclick > 60 and not otheranims then Mode='StealthIdling' end
		UI:SetAnim(Mode)
		if Mode == "Jumping" then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(40), 0, 0), .4)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(30)), .4)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(20), 0, math.rad(30)), .4)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(30), 0, 0), .4)
		elseif hum.PlatformStand then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(math.rad(50), 0, math.rad(10)),.4)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(math.rad(50), 0, -math.rad(10)),.4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), 0, 0), .4)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(25), 0, -math.rad(15)), .4)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(45), 0, math.rad(15)), .4)
				lerp(rj, rj.C1, rootc1 * CFrame.Angles(-math.rad(40), 0, 0), .4)
		elseif Mode == 'Idling' then --stand stealth
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, 0, -math.rad(10)+(angle*0.0200)),.03)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(0, 0, math.rad(10)+(-angle*0.0200)),.03)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(20)),.3)
		elseif Mode == 'Walking' then-- walk
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .1+math.cos(t)/2.5*.35, -.1+-math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + math.sin(count/14)/2, 0, 0), .3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .1+-math.cos(t)/2.5*.35, -.1+math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + -math.sin(count/14)/2, 0, 0), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(15), 0, 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(.1+math.cos(t)*10), 0, -math.rad(5)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(.1+math.cos(t)*10), 0, math.rad(5)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,-.18,0) * CFrame.Angles(math.rad(15), -math.cos(t/6)/30+math.sin(rootpart.RotVelocity.y/2)/6, math.rad(0)),.3)
		elseif Mode == 'Running' then--run
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .1+math.cos(t)/2.5*.35, -.1+-math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + math.sin(count/14)/2, 0, 0), .3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .1+-math.cos(t)/2.5*.35, -.1+math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + -math.sin(count/14)/2, 0, 0), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(25), 0, 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(.1+math.cos(t)*15), 0, math.rad(-15-(angle*0.03))),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(.1+math.cos(t)*15), 0, math.rad(15+(angle*0.03))),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(25), -math.cos(t/6)/30+math.sin(rootpart.RotVelocity.y/2)/6, 0),.3)
		elseif Mode == 'StealthIdling' then--stand stealth
			if berserk then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 1,-.3) * CFrame.Angles(math.rad(30),0,0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .4,-.3) * CFrame.Angles(-math.rad(20),0,0), .4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(35), 0, 0),.1)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(20)+(angle*0.02), math.rad(20), -math.rad(15)+(-angle*0.02)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(60)+(angle*0.02), 0, math.rad(5)+(-angle*0.02)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -.8) * CFrame.Angles(math.rad(35), 0, 0),.3)
			else
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 1,-.3) * CFrame.Angles(math.rad(30),0,0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .4,-.3) * CFrame.Angles(-math.rad(20),0,0), .4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(35), 0, 0),.1)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20)+(angle*0.02), 0, -math.rad(5)+(-angle*0.02)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(60)+(angle*0.02), 0, math.rad(5)+(-angle*0.02)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -.8) * CFrame.Angles(math.rad(35), 0, 0),.3)
			end
		elseif Mode == 'StealthRunning' then--run stealth
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .1+math.cos(t)/2.5*.35, -.1+-math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + math.sin(count/14)/2, 0, 0), .3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .1+-math.cos(t)/2.5*.35, -.1+math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + -math.sin(count/14)/2, 0, 0), .3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(15), 0, 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(.1+math.cos(t)*15), 0, math.rad(-15-(angle*0.03))),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(.1+math.cos(t)*15), 0, math.rad(15+(angle*0.03))),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(15), 0, 0),.3)
		elseif Mode == 'Slash' then
		        --anims here pls
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, -.2) * CFrame.Angles(0, -math.rad(30), math.rad(3)+(-angle*0.0200)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)+(angle*0.0200)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10)+(angle*0.0200)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(50), 0, math.rad(10)+(-angle*0.0200)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(40)),.3)
		elseif Mode == 'Slash3' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, -.2) * CFrame.Angles(0, -math.rad(30), math.rad(3)+(-angle*0.0200)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)+(angle*0.0200)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)),.5)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, 0, -math.rad(40)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(30), math.rad(50), math.rad(75)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(40)),.3)
		elseif Mode == 'Slash2' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, math.rad(20), math.rad(3)+(angle*0.0200)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(30), -math.rad(3)+(-angle*0.0200)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0,  math.rad(45)),.5)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(30), -math.rad(45), -math.rad(60)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(20), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(90)),.3)
		elseif Mode == 'Subi' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, math.rad(20), math.rad(3)+(angle*0.0200)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(30), -math.rad(3)+(-angle*0.0200)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0,  math.rad(70)),.5)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(30), -math.rad(35), -math.rad(60)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(20), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(70)),.3)
		elseif Mode == 'Envenom1' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(-math.rad(10), math.rad(20), math.rad(3)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .3, 0) * CFrame.Angles(0, math.rad(30), -math.rad(3)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0,  math.rad(70)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(30), -math.rad(35), -math.rad(60)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(20), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(70)),.3)
		elseif Mode == 'Envenom2' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)				
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(40), math.rad(14), 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10)+(angle*0.0200)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(120), 0, math.rad(10)+(-angle*0.0200)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(40), 0, math.rad(20)),.3)
		elseif Mode == 'DFA1' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(15), 0,  0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(30), -math.rad(35), -math.rad(60)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(30), 0, math.rad(75)+(-angle*0.0200)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, 5, 6) * CFrame.Angles(math.rad(35), 0, 0),.3)
		elseif Mode == 'DFA2' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)				
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(40), math.rad(14), 0),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(10)+(angle*0.0200)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(120), 0, math.rad(10)+(-angle*0.0200)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0, -3, -.5) * CFrame.Angles(math.rad(40), 0, math.rad(20)),.3)
		elseif Mode == 'ShadowOrb1' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(20)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(30), 0, -math.rad(10)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(0, 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(20)),.3)
		elseif Mode == 'ShadowOrb2' then
		       	lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, math.rad(20), math.rad(3)+(angle*0.0200)),.3)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(30), -math.rad(3)+(-angle*0.0200)),.3)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0,  math.rad(90)),.3)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(40), -math.rad(10), -math.rad(60)),.3)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(20), 0, math.rad(10)),.3)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(90)),.3)
		elseif Mode == 'fth' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.1)
				lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.1)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(20)),.1)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(30), 0, -math.rad(10)+(angle*0.0200)),.1)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(160), 0, math.rad(10)+(-angle*0.0200)),.1)
				lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(20)),.1)
		elseif Mode == 'Roaring' then
				lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .2, 0) * CFrame.Angles(-math.rad(30), -math.rad(10), math.rad(3)),.4)
				lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .2, 0) * CFrame.Angles(-math.rad(30), math.rad(10), -math.rad(3)),.4)
				lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(30),0,0),.4)
				lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(30), math.rad(20), -math.rad(60)),.4)
				lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(30), -math.rad(20), math.rad(60)),.4)
				lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,-.2+math.sin(t)*.06) * CFrame.Angles(-math.rad(30),0,0),.4)
		end
	end)
end)()
createOrb()
print('Rogue loaded')
print'Created by Darkus_Theory'
