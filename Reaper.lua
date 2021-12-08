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
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character

bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()

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
        bbv.Position = mouse.Hit.p
        bhandle.Position = mouse.Hit.p
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
     char.Humanoid.Died:Connect(function()
         dead = true
     end)
     repeat 
         game:GetService("RunService").RenderStepped:Wait()
         if dead == false and bhandle.CanCollide == true then
         bhandle.CanCollide = false
         end
         --if lt == true and dead == false then
         --bhandle.CFrame = char.Torso.CFrame
         bbv.Position = char.Torso.CFrame.p
         if ltt == true and dead == false then
        --bhandle.CFrame = char.Torso.CFrame * CFrame.new(0,0,-6)
        bhandle.Rotation = char.Torso.Rotation
         end
    until char.Humanoid.Health == 0
    
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(17,17,17)
         end
    end)
warn("Netless Activated!")
-- Mewy23's message --
-- I'll kill you if you leak this e-e --
-- [ Reaper ] --
-- [ Reaper! ] --

LoudVolume = false
Submerged = false
Music = true
script.Name = "Reaper"
Player = game.Players.LocalPlayer
c = game.Workspace.non
Head = c.Head
c.Animate.Disabled = true
anim = c.Humanoid.Animator anim.Parent = nil
rage = false
p = game.Players.LocalPlayer
Music = false
PhaseEnabled = true
TeleportEnabled = true


local GUI = Instance.new("ScreenGui",Player.PlayerGui)
local Frame = Instance.new("Frame",GUI)Frame.Size = UDim2.new(0.1,0,0.05,0) Frame.Position = UDim2.new(0.9,0,0.425,0)
Frame.BackgroundTransparency = 0.5 Frame.BorderSizePixel = 0 Frame.BackgroundColor3 = Color3.new(85/255,40/255,113/255)
local UltT = Instance.new("TextLabel",Frame)UltT.Size = UDim2.new(1,0,1,0)UltT.BackgroundTransparency = 1 UltT.Text = "0%"
UltT.TextColor3 = Color3.new(1,1,1) UltT.TextScaled = true UltT.TextWrapped = true

local Frame2 = Instance.new("Frame",GUI)Frame2.Size = UDim2.new(0.1,0,0.05,0) Frame2.Position = UDim2.new(0.9,0,0.535,0)
Frame2.BackgroundTransparency = 0.5 Frame2.BorderSizePixel = 0 Frame2.BackgroundColor3 = Color3.new(85/255,40/255,113/255)
local AmmoT = Instance.new("TextLabel",Frame2)AmmoT.Size = UDim2.new(1,0,1,0)AmmoT.BackgroundTransparency = 1 AmmoT.Text = "8/8"
AmmoT.TextColor3 = Color3.new(1,1,1) AmmoT.TextScaled = true AmmoT.TextWrapped = true

local Effects = {}
attack = false
local attacking = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
mouse = Player:GetMouse()

 c.Humanoid.WalkSpeed = 24 c.Humanoid.JumpPower = 50

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
  RS = c.Torso:FindFirstChild("Right Shoulder")
  LS = c.Torso:FindFirstChild("Left Shoulder")
  RH = c.Torso:FindFirstChild("Right Hip")
  LH = c.Torso:FindFirstChild("Left Hip")
  RJ = c.HumanoidRootPart:FindFirstChild("RootJoint")
  N = c.Torso:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random

c.Humanoid.JumpPower = 45
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Heartbeat:wait(0)
else
for i=0,num do
game:service'RunService'.Heartbeat:wait(0)
end
end
end
	
function lerpz(joint, prop, cfrmz, alp)
joint[prop] = joint[prop]:lerp(cfrmz, alp)
end
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

UltCharge = 0
Ammo = 8
local vls = math.random(1,2)
if vls == 1 then
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://612647950" GS.Volume = 3 GS:Play()
else
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://612648243" GS.Volume = 3 GS:Play()	
end
PS = Instance.new("Sound",c.HumanoidRootPart)PS.SoundId = "rbxassetid://882101831" PS.Volume = 3 PS:Play()
--[[local Hood = Instance.new("Part",c)Hood.Size = Vector3.new(0.2,0.2,0.2)Hood.BrickColor = BrickColor.new("Really black")
local HM = Instance.new("SpecialMesh",Hood)HM.MeshId = "rbxassetid://16952952" HM.Scale = Vector3.new(1.05,1.05,1.05)
local HW = Instance.new("Weld",c.Head)HW.Part0 = c.Head HW.Part1 = Hood HW.C0 = CFrame.new(0,0.25,0)]]
LeftGun = Instance.new("Part",game.Workspace)LeftGun.Size = Vector3.new(0.4,1.4,4)LeftGun.CanCollide = false LeftGun.Anchored = false LeftGun.Name = "HellfireGun" LeftGun.Archivable = false
local LeftM = Instance.new("SpecialMesh",LeftGun)LeftM.MeshId = "rbxassetid://651422978" LeftM.TextureId = "rbxassetid://651423359" LeftM.Scale = Vector3.new(0.35,0.35,0.35)
local LeftW = Instance.new("Weld",c["Left Arm"])LeftW.Part0 = c["Left Arm"] LeftW.Part1 = LeftGun LeftW.C0 = CFrame.new(0,-2,-0.25)*CFrame.Angles(math.rad(-90),0,0)
local RightGun = Instance.new("Part",game.Workspace)RightGun.Size = Vector3.new(0.4,1.4,4)RightGun.CanCollide = false RightGun.Anchored = false RightGun.Name = "HellfireGun" RightGun.Archivable = false
local RightM = Instance.new("SpecialMesh",RightGun)RightM.MeshId = "rbxassetid://651422978" RightM.TextureId = "rbxassetid://651423359" RightM.Scale = Vector3.new(0.35,0.35,0.35)
local RightW = Instance.new("Weld",c["Right Arm"])RightW.Part0 = c["Right Arm"] RightW.Part1 = RightGun RightW.C0 = CFrame.new(0,-2,-0.25)*CFrame.Angles(math.rad(-90),0,0)
local LeftEffect = Instance.new("Part",LeftGun)LeftEffect.Size = Vector3.new(0.2,0.2,0.2)LeftEffect.Transparency = 1 LeftEffect.CanCollide = false
local LEFW = Instance.new("Weld",LeftGun)LEFW.Part0 = LeftGun LEFW.Part1 = LeftEffect LEFW.C0 = CFrame.new(0,0.4,-2.4)
local RightEffect = Instance.new("Part",RightGun)RightEffect.Size = Vector3.new(0.2,0.2,0.2)RightEffect.Transparency = 1 RightEffect.CanCollide = false
local REFW = Instance.new("Weld",RightGun)REFW.Part0 = RightGun REFW.Part1 = RightEffect REFW.C0 = CFrame.new(0,0.4,-2.4)
local ExpColors = {ColorSequenceKeypoint.new(0, Color3.new(255/255,144/255,46/255)),ColorSequenceKeypoint.new(0.121, Color3.new(0/255,0/255,0/255)),ColorSequenceKeypoint.new(1, Color3.new(0/255,0/255,0/255))}
local LeftExp = Instance.new("ParticleEmitter",LeftEffect) LeftExp.Texture = "rbxassetid://850216805"
LeftExp.LightEmission = 0.85 LeftExp.Color = ColorSequence.new(ExpColors) LeftExp.Rate = 500 LeftExp.Rotation = NumberRange.new(-360,360)
LeftExp.Lifetime = NumberRange.new(1) LeftExp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.0138,2,0),NumberSequenceKeypoint.new(1,4,0)})
LeftExp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)}) LeftExp.Speed = NumberRange.new(2) LeftExp.SpreadAngle = Vector2.new(25,25) LeftExp.Name = "Explosion"
LeftExp.VelocityInheritance = 0.5 LeftExp.ZOffset = 2 LeftExp.Enabled = false LeftExp.EmissionDirection = "Front"
local RightExp = Instance.new("ParticleEmitter",RightEffect) RightExp.Texture = "rbxassetid://850216805"
RightExp.LightEmission = 0.85 RightExp.Color = ColorSequence.new(ExpColors) RightExp.Rate = 500 RightExp.Rotation = NumberRange.new(-360,360)
RightExp.Lifetime = NumberRange.new(1) RightExp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.0138,2,0),NumberSequenceKeypoint.new(1,4,0)})
RightExp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)}) RightExp.Speed = NumberRange.new(2) RightExp.SpreadAngle = Vector2.new(25,25) RightExp.Name = "Explosion"
RightExp.VelocityInheritance = 0.5 RightExp.ZOffset = 2 RightExp.Enabled = false RightExp.EmissionDirection = "Front"

function GunFade(Gun)
Spawn(function()
wait(3)
for i = 1,50 do
Gun.Transparency = Gun.Transparency + 1/50
swait()
end
Gun:remove()
end)
end

function Reload()
attack = true
for i = 1,15 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(45), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-45), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
for i = 1,5 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.25) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-65), rd(75)), 0.25) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(65), rd(-75)), 0.25) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
swait()
end
RightGun.Archivable = true LeftGun.Archivable = true
local RD = RightGun:clone() RD.Parent = game.Workspace RD.CanCollide = true RD.Position = RightGun.Position RD.CFrame = RightGun.CFrame
local LD = LeftGun:clone() LD.Parent = game.Workspace LD.CanCollide = true LD.Position = LeftGun.Position LD.CFrame = LeftGun.CFrame
local BV = Instance.new("BodyVelocity",RD)BV.Velocity = c.HumanoidRootPart.CFrame.rightVector*15 BV.Velocity = BV.Velocity+c.HumanoidRootPart.CFrame.lookVector*25 BV.maxForce = Vector3.new(math.huge,math.huge,math.huge) game.Debris:AddItem(BV,0.05)
local BV2 = Instance.new("BodyVelocity",LD)BV2.Velocity = c.HumanoidRootPart.CFrame.rightVector*-15 BV2.Velocity = BV2.Velocity+c.HumanoidRootPart.CFrame.lookVector*25 BV2.maxForce = Vector3.new(math.huge,math.huge,math.huge) game.Debris:AddItem(BV2,0.05)
local hit = false local hit2 = false
RD.Touched:connect(function(T)
if hit == false and T.Parent ~= c and T.Name ~= "HellfireGun" then hit = true
GS = Instance.new("Sound",RD)GS.SoundId = "rbxassetid://247874314" GS.Volume = 0.5 GS:Play()
end
end)
LD.Touched:connect(function(T)
if hit2 == false and T.Parent ~= c and T.Name ~= "HellfireGun" then hit2 = true
GS = Instance.new("Sound",LD)GS.SoundId = "rbxassetid://247874314" GS.Volume = 0.5 GS:Play()
end
end)
GunFade(RD) GunFade(LD)
RightGun.Transparency = 1 LeftGun.Transparency = 1
for i = 1,25 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.25) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-65), rd(75)), 0.25) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(65), rd(-75)), 0.25) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
swait()
end
for i = 1,15 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.25) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-65), rd(-25)), 0.25) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(65), rd(25)), 0.25) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.25)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.25)
swait()
end
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://882101831" GS.Volume = 3 GS:Play()
RightGun.Transparency = 0 LeftGun.Transparency = 0 Ammo = 8 attack = false
RightGun.Archivable = false LeftGun.Archivable = false
end
function ShotBullets(Gun)
local ColorsArray = {ColorSequenceKeypoint.new(0, Color3.new(255/255,0/255,0/255)),ColorSequenceKeypoint.new(1, Color3.new(255/255,0/255,0/255))}
for i = 1,15 do
local Bul = Instance.new("Part",game.Workspace)Bul.Transparency = 1 Bul.Size = Vector3.new(0.2,0.2,0.2) Bul.CanCollide = false
Bul.CFrame = CFrame.new(Gun.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
Bul.CFrame = Bul.CFrame*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5)))
local Atch1 = Instance.new("Attachment",Bul)Atch1.Position = Vector3.new(0,0.05,0)
local Atch2 = Instance.new("Attachment",Bul)Atch2.Position = Vector3.new(0,-0.05,0)
local Trail = Instance.new("Trail",Bul)Trail.Attachment0 = Atch1 Trail.Attachment1 = Atch2
Trail.Texture = "rbxassetid://22636887" Trail.Lifetime = 0.1 Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail.Color = ColorSequence.new(ColorsArray) Trail.LightEmission = 1 Trail.Enabled = true Trail.MinLength = 1
local BV = Instance.new("BodyVelocity",Bul)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge) BV.Velocity = Bul.CFrame.lookVector*150
game.Debris:AddItem(Bul,0.5) local hit = false
local damage = 0
Bul.Touched:connect(function(Hit)
if hit == false then 
if Hit.Parent:findFirstChild("Humanoid")~= nil and Hit.Parent ~= c then hit = true
Hit.Parent.Humanoid:TakeDamage(damage) UltCharge = UltCharge + 0
end
end
end)
Spawn(function()
for i = 1,100 do
if damage < 0 then break end
damage = damage - 0
swait()
end
damage = 0.0
end)
end
end

ShotCoolDown = false
Combo = 1
mouse.Button1Down:connect(function()
if c.Humanoid.Health <= 0 then return end
if ShotCoolDown == true then return end
if attack == true then return end
if Ammo == 0 then
local S = Instance.new("Sound",LeftEffect)S.SoundId = "rbxassetid://596722009" S.Volume = 0.5 S:Play() game.Debris:AddItem(S,1) S.PlaybackSpeed = 0.9
else
ShotCoolDown = true Ammo = Ammo - 1
if Combo == 1 then Combo = 2 LeftExp.Enabled = true
ShotBullets(LeftEffect)
local S = Instance.new("Sound",LeftEffect)S.SoundId = "rbxassetid://181135016" S.Volume = 0.5 S:Play() game.Debris:AddItem(S,1) S.PlaybackSpeed = 0.9
for i = 1,3 do
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-125)), 0.35) -- Z, X, Y 
swait()
end
else Combo = 1 RightExp.Enabled = true
ShotBullets(RightEffect)
local S = Instance.new("Sound",RightEffect)S.SoundId = "rbxassetid://181135016" S.Volume = 0.5 S:Play() game.Debris:AddItem(S,1) S.PlaybackSpeed = 0.9
for i = 1,3 do
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(125)), 0.35) -- Z, X, Y 	
swait()
end
end
local S = Instance.new("Sound",RightEffect)S.SoundId = "rbxassetid://181135016" S.Volume = 0.5 S:Play() game.Debris:AddItem(S,1) S.PlaybackSpeed = 0.9
LeftExp.Enabled = false
RightExp.Enabled = false
wait(0.35)
ShotCoolDown = false	
end
end)

function Phase()
if PhaseEnabled == false then return end
PhaseEnabled = false
attack = true c.Humanoid.WalkSpeed = 48
local PhaseColors = {ColorSequenceKeypoint.new(0, Color3.new(65/255,0/255,98/255)),ColorSequenceKeypoint.new(0.121, Color3.new(5/255,0/255,32/255)),ColorSequenceKeypoint.new(1, Color3.new(65/255,0/255,98/255))}
for i,v in pairs(c:children()) do
if v.ClassName == "Part" and v.Name ~= "HumanoidRootPart" then
local PhaseEn = Instance.new("ParticleEmitter",v) PhaseEn.Texture = "rbxassetid://242102147"
PhaseEn.LightEmission = 0 PhaseEn.Color = ColorSequence.new(PhaseColors) PhaseEn.Rate = 250 PhaseEn.Rotation = NumberRange.new(-360,360)
PhaseEn.Lifetime = NumberRange.new(1) PhaseEn.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.0138,1,0),NumberSequenceKeypoint.new(1,0,0)})
PhaseEn.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(1,1,0)}) PhaseEn.Speed = NumberRange.new(0) PhaseEn.SpreadAngle = Vector2.new(25,25) PhaseEn.Name = "DarkEnergy"
PhaseEn.VelocityInheritance = 0.5 PhaseEn.ZOffset = 2 PhaseEn.Enabled = true PhaseEn.EmissionDirection = "Front" PhaseEn.Acceleration = Vector3.new(0,5,0)
end
end
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://834224978" GS.Volume = 3 GS:Play()
local PrevHealth = c.Humanoid.Health
local hp = c.Humanoid.HealthChanged:connect(function(Amnt)
if Amnt < PrevHealth then
c.Humanoid.Health = PrevHealth
end
end)
for i = 1,150 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.5) * ang(rd(-15), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(105)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-105)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(15)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-15)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
hp:disconnect()
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://834225054" GS.Volume = 3 GS:Play()
for i,v in pairs(c:children()) do
if v.ClassName == "Part" and v.Name ~= "HumanoidRootPart" then
if v:findFirstChild("DarkEnergy")~= nil then
v.DarkEnergy.Enabled = false game.Debris:AddItem(v.DarkEnergy,3)
end
end
end
Ammo = 8
c.Humanoid.WalkSpeed = 24
attack = false
Spawn(function()
wait(8)
PhaseEnabled = true
end)
end

function Teleport()
if TeleportEnabled == false then return end
if (c.HumanoidRootPart.Position-mouse.hit.p).magnitude >= 100 then return end
TeleportEnabled = false
local vl = math.random(1,4)
if vl == 1 then
local GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://612647830" GS.Volume = 3 GS:Play()
end
attack = true c.HumanoidRootPart.Anchored = true c.Humanoid.WalkSpeed = 0 c.Humanoid.JumpPower = 0 local Pos = mouse.hit.p
for i = 1,40 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
local PhaseColors = {ColorSequenceKeypoint.new(0, Color3.new(65/255,0/255,98/255)),ColorSequenceKeypoint.new(0.121, Color3.new(5/255,0/255,32/255)),ColorSequenceKeypoint.new(1, Color3.new(65/255,0/255,98/255))}
for i,v in pairs(c:children()) do
if v.ClassName == "Part" and v.Name ~= "HumanoidRootPart" then
local PhaseEn = Instance.new("ParticleEmitter",v) PhaseEn.Texture = "rbxassetid://242102147"
PhaseEn.LightEmission = 0 PhaseEn.Color = ColorSequence.new(PhaseColors) PhaseEn.Rate = 250 PhaseEn.Rotation = NumberRange.new(-360,360)
PhaseEn.Lifetime = NumberRange.new(1) PhaseEn.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.0138,2,0),NumberSequenceKeypoint.new(1,0,0)})
PhaseEn.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0),NumberSequenceKeypoint.new(1,1,0)}) PhaseEn.Speed = NumberRange.new(0) PhaseEn.SpreadAngle = Vector2.new(25,25) PhaseEn.Name = "DarkEnergy"
PhaseEn.VelocityInheritance = 0.5 PhaseEn.ZOffset = 2 PhaseEn.Enabled = true PhaseEn.EmissionDirection = "Front" PhaseEn.Acceleration = Vector3.new(0,5,0)
end
end
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://834224978" GS.Volume = 3 GS:Play()
for i = 1,50 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.25*i) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
c.HumanoidRootPart.CFrame = CFrame.new(Pos)
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.new(0,2.5,0)
GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://834225054" GS.Volume = 3 GS:Play()
for i = 1,50 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
c.HumanoidRootPart.Anchored = false
c.Humanoid.WalkSpeed = 24 c.Humanoid.JumpPower = 50
local PrevHealth = c.Humanoid.Health
for i,v in pairs(c:children()) do
if v.ClassName == "Part" and v.Name ~= "HumanoidRootPart" then
if v:findFirstChild("DarkEnergy")~= nil then
v.DarkEnergy.Enabled = false game.Debris:AddItem(v.DarkEnergy,3)
end
end
end
attack = false
Spawn(function()
wait(10)
TeleportEnabled = true
end)
end

function ShotDBullets(Gun)
local ColorsArray = {ColorSequenceKeypoint.new(0, Color3.new(255/255,0/255,0/255)),ColorSequenceKeypoint.new(1, Color3.new(255/255,0/255,0/255))}
for i = 1,15 do
local Bul = Instance.new("Part",game.Workspace)Bul.Transparency = 1 Bul.Size = Vector3.new(2,2,2) Bul.CanCollide = false
Bul.CFrame = Gun.CFrame*CFrame.Angles(math.rad(math.random(-25,25)),math.rad(math.random(-25,25)),math.rad(math.random(-25,25)))
local Atch1 = Instance.new("Attachment",Bul)Atch1.Position = Vector3.new(0,0.05,0)
local Atch2 = Instance.new("Attachment",Bul)Atch2.Position = Vector3.new(0,-0.05,0)
local Trail = Instance.new("Trail",Bul)Trail.Attachment0 = Atch1 Trail.Attachment1 = Atch2
Trail.Texture = "rbxassetid://22636887" Trail.Lifetime = 0.1 Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail.Color = ColorSequence.new(ColorsArray) Trail.LightEmission = 1 Trail.Enabled = true Trail.MinLength = 1
local BV = Instance.new("BodyVelocity",Bul)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge) BV.Velocity = Bul.CFrame.lookVector*150
game.Debris:AddItem(Bul,0.5)
end
for i,v in pairs(game.Workspace:children()) do
if v:FindFirstChild("Humanoid")~= nil and v:findFirstChild("HumanoidRootPart")~= nil and v ~= c then
if (v.HumanoidRootPart.Position-c.HumanoidRootPart.Position).magnitude <= 45 then
v.Humanoid:TakeDamage(0)
end
end
end
end

function Fade(PP)
Spawn(function()
for i = 1,20 do
PP.Transparency = PP.Transparency + 1/20
swait()
end
PP:remove()
end)
end
function DeathFire()
Spawn(function()
local m2 = Instance.new("Model",game.Workspace)
for i,v in pairs(c:children()) do
if v.ClassName == "Part" and v.Name ~= "HumanoidRootPart" then
local clone = v:clone()clone.BrickColor = BrickColor.new("Really black") clone.Anchored = true clone.CanCollide = false
if clone:findFirstChild("Mesh")~= nil then clone.Mesh.TextureId = "" end clone.Parent = m2 Fade(clone)
elseif v.ClassName == "Accessory" then
local clone = v.Handle:clone()clone.BrickColor = BrickColor.new("Really black") clone.Anchored = true clone.CanCollide = false
if clone:findFirstChild("Mesh")~= nil then clone.Mesh.TextureId = "" end clone.Parent = m2 Fade(clone)
end
m2:BreakJoints()
end
RightExp.Enabled = true
local S = Instance.new("Sound",RightEffect)S.SoundId = "rbxassetid://181135016" S.Volume = 0.5 S:Play() game.Debris:AddItem(S,1) S.PlaybackSpeed = 0.9
LeftExp.Enabled = true
local S2 = Instance.new("Sound",LeftEffect)S2.SoundId = "rbxassetid://181135016" S2.Volume = 0.5 S2:Play() game.Debris:AddItem(S2,1) S2.PlaybackSpeed = 0.9
wait(0.1)
RightExp.Enabled = false
LeftExp.Enabled = false
ShotDBullets(RightEffect)
ShotDBullets(LeftEffect)
end)
end

function DeathBlossom()
if UltCharge >= 100 then
UltCharge = 0
local SpinCharge = 1 c.HumanoidRootPart.Anchored = true
local GS = Instance.new("Sound",c.HumanoidRootPart)GS.SoundId = "rbxassetid://506001681" GS.Volume = 3 GS:Play()
for i = 1,15 do 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-45)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, -1) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(1, 1, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 1, 0) * ang(rd(-5), rd(0), rd(-45)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, -1) * ang(rd(0), rd(0), rd(35)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.35) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(1, 1, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 1, 0) * ang(rd(-5), rd(0), rd(-45)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-15)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(-90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15), rd(0), rd(15)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, -1) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.35) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(1, 1, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 1, 0) * ang(rd(-5), rd(0), rd(-45)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-25)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(15), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(0), rd(90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, -1) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(15)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(1, 1, 0) * ang(rd(-5), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 1, 0) * ang(rd(-5), rd(0), rd(-45)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
DeathFire()
for i = 1,15 do 
c.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(SpinCharge*5),0)
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(90), rd(90)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, -0.75) * ang(rd(0), rd(-90), rd(-90)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
swait()
end
c.HumanoidRootPart.Anchored = false
attack = false
Reload()
end
end

mouse.KeyDown:connect(function(key)
if c.Humanoid.Health <= 0 then return end
if attack == true then return end
if key == "q" then
Phase()
end
if key == "e" then
DeathBlossom()
end
if key == "r" then
Reload()
end
if key == "z" then
Teleport()
end
end)

idletime = 0
sine = 0
game:GetService("RunService").RenderStepped:connect(function()
if UltCharge >= 100 then
UltCharge = 100
UltT.Text = "100%"
else
UltT.Text = math.floor(UltCharge).."%"
end
AmmoT.Text = Ammo.."/8"
if attack == false then 
if c.HumanoidRootPart.Velocity.Y > 0.25 then idletime = 0
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(75)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-75)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-25)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(25)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
elseif c.HumanoidRootPart.Velocity.Y < -0.25 then idletime = 0
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.1) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(125)), 0.1) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-125)), 0.1) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(25)), 0.1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-25)), 0.1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1)
elseif (c.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude > 1 then idletime = 0
sine = sine + 1 
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0+(math.cos(sine/3)*0.05)) * ang(rd(10), rd(0), rd(0)), 0.2)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.2) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(95+(math.cos(sine/3)*-2.5))), 0.2) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-(95+(math.cos(sine/3)*-2.5)))), 0.2) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0.05+(math.cos(sine/3)*-0.05), 0) * ang(rd(0), rd(0), rd(-(15+math.cos(sine/6)*75))), 0.2)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
lerpz(LH, "C0", LHC0 * cf(0, 0.05+(math.cos(sine/3)*-0.05), 0) * ang(rd(0), rd(0), rd((15-math.cos(sine/6)*75))), 0.2)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
swait()
else sine = sine + 1 idletime = idletime + 1
if idletime >= 200 then
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.1+(math.cos(sine/64)*-0.1)) * ang(rd(0), rd(0), rd(0)), 0.05)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(25+(math.cos(sine/64)*-4))), 0.05) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-(25+(math.cos(sine/64)*-4)))), 0.05) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0.1+(math.cos(sine/64)*0.1), 0) * ang(rd(-5), rd(0), rd(0)), 0.05)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05)
lerpz(LH, "C0", LHC0 * cf(0, 0.1+(math.cos(sine/64)*0.1), 0) * ang(rd(-5), rd(0), rd(0)), 0.05)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05)	
else
lerpz(RJ, "C0", RJC0 * cf(0, 0, (math.cos(sine/64)*-0.1)) * ang(rd(0), rd(0), rd(0)), 0.05)-- Y, X, Z
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Y, X, Z
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90+(math.cos(sine/64)*-4))), 0.05) -- Z, X, Y 
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Z, X, Y
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-(90+(math.cos(sine/64)*-4)))), 0.05) -- Z, X, Y
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05) -- Z, X, Y
lerpz(RH, "C0", RHC0 * cf(0, 0.1+(math.cos(sine/64)*0.1), 0) * ang(rd(-5), rd(0), rd(0)), 0.05)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05)
lerpz(LH, "C0", LHC0 * cf(0, 0.1+(math.cos(sine/64)*0.1), 0) * ang(rd(-5), rd(0), rd(0)), 0.05)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05)
end
swait()
end
--[[local ToMouse = (mouse.hit.p - Head.Position).unit
local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
local FromRightArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (c["Right Arm"].Size.X / 2)), ((Head.Size.Y / 2) - (c["Right Arm"].Size.Z / 2)), 0)))
local ToMouseRightArm = ((mouse.hit.p - FromRightArmPos) * Vector3.new(1 ,0, 1)).unit
local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
if tostring(LateralAngle) == "-1.#IND" then
LateralAngle = 0
end
local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
if LateralAngle > (math.pi / 2) then
LateralAngle = (math.pi / 2)
end
if Cross.Y < 0 then
LateralAngle = -LateralAngle
end
RS.C0 = CFrame.new(RS.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), 0)
RS.C0 = RS.C0*CFrame.Angles(0,0,math.rad(90))
local FromLeftArmPos = (Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(((Head.Size.X / 2) + (c["Left Arm"].Size.X / 2)), ((Head.Size.Y / 2) - (c["Left Arm"].Size.Z / 2)), 0)))
local ToMouseLeftArm = ((mouse.hit.p - FromLeftArmPos) * Vector3.new(1 ,0, 1)).unit
local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
local LateralAngle = math.acos(ToMouseLeftArm:Dot(Look))
if tostring(LateralAngle) == "-1.#IND" then
LateralAngle = 0
end
local Cross = Head.CFrame.lookVector:Cross(ToMouseLeftArm)
if LateralAngle > (math.pi * 2) then
LateralAngle = (math.pi * 2)
end
if Cross.Y < 0 then
LateralAngle = -LateralAngle
end
LS.C0 = CFrame.new(LS.C0.p) * CFrame.Angles(((math.pi / 2) - Angle), ((math.pi / 2) + LateralAngle), 0)
LS.C0 = LS.C0*CFrame.Angles(0,0,math.rad(90)) LS.C0 = LS.C0*CFrame.Angles(0,math.rad(180),0)]]
end
end)