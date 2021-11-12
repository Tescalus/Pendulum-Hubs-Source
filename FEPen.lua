--[[
Hat to wear: https://www.roblox.com/catalog/4506945409/Corrupt-Demonic-Greatsword
]]--

Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
plr = game.Players.LocalPlayer
dead = false
char = plr.Character
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,30,0)
wait(0.5)
end)
end
end
power = 60000 -- The lower the number, the more stable the torso is, but less fling power.

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.Torso
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.Torso.Position

bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 0
bhandle = bullet
bullet.Massless = true
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:Destroy()
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


-----------------------------------------------------------------------------------

local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = workspace.non
local tweenserv = game:GetService("TweenService")
local lighting = game:GetService("Lighting")
local hum = char:FindFirstChildOfClass("Humanoid")
local mou = plr:GetMouse()
local tor = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
local root = char:FindFirstChild("HumanoidRootPart")
local head = char:FindFirstChild("Head")
local face = head:FindFirstChildOfClass("Decal")
local larm = char:FindFirstChild("Left Arm") or char:FindFirstChild("LeftUpperArm")
local rarm = char:FindFirstChild("Right Arm") or char:FindFirstChild("RightUpperArm")
local rleg = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightUpperLeg")
local lleg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftUpperLeg")
local neck = tor:FindFirstChild("Neck")
local rootj = root:FindFirstChild("RootJoint")
local LS = tor:FindFirstChild("Left Shoulder")
local RS = tor:FindFirstChild("Right Shoulder")
local LH = tor:FindFirstChild("Left Hip")
local RH = tor:FindFirstChild("Right Hip")
local bp = plr:FindFirstChild("Backpack")

hum:ClearAllChildren()
char.Animate:remove()

local rootj0 = rootj.C0
local neck0 = neck.C0
local LS0 = LS.C0
local RS0 = RS.C0
local LH0 = LH.C0
local RH0 = RH.C0
local rootj1 = rootj.C1
local neck1 = neck.C1
local LS1 = LS.C1
local RS1 = RS.C1
local LH1 = LH.C1
local RH1 = RH.C1

-----------------------------------------------------------------------------------

local CFn = CFrame.new
local CFa = CFrame.Angles
local Rad = math.rad
local Sin = math.sin
local Cos = math.cos
local sine = 1

char.MeshPartAccessory.Handle.AccessoryWeld:Destroy()
local penp = char.MeshPartAccessory.Handle
local penpw = Instance.new("Weld", penp)
penpw.Part0 = rarm
penpw.Part1 = penp
penpw.C1 = CFn(0, -1, 0) * CFa(0, 0, Rad(180))
local penpw0 = penpw.C0
local penpw1 = penpw.C1

local penw = penpw
local penw0 = penw.C0
local penw1 = penw.C1

-----------------------------------------------------------------------------------

local ws = 16
local jp = 50
local out = false
local ouch = false
local hitok = false
local canattack = true
local stabstate = 1
local Stabbing = false
local Throwing = false
local rot = 1
local dmg = 5

-----------------------------------------------------------------------------------

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

function clerp(a, b, t)
	return a:lerp(b, t)
end

function ToggleSharp()
	if not button:FindFirstChild("Penclickit360") then
		local clickso = Instance.new("Sound", button)
		clickso.SoundId = "rbxassetid://537744814"
		clickso.Name = "Penclickit360"
		clickso.Volume = 5
		clickso:Play()
	else
		local clickso = button:FindFirstChild("Penclickit360")
		clickso:Play()
	end
	if out == false then
		dmg = 30
		out = true
	else
		dmg = 5
		out = false
	end
end

function Stab()
	if stabstate == 1 and canattack == true then
		Stabbing = true
		canattack = false
		stabstate = 2
		hum.WalkSpeed = 35
		hum.JumpPower = 7
		hitok = true
		penp.Touched:connect(function(hit)
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
		end)
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(-30), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(150)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(20), Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(20)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		hitok = false
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Stabbing = false
	elseif stabstate == 2 and canattack == true then
		canattack = false
		stabstate = 1
		hum.WalkSpeed = 35
		hum.JumpPower = 7
		hitok = true
		penp.Touched:connect(function(hit)
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent:FindFirstChildOfClass("Humanoid") then
				local owdude = hit.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
			if hitok == true and not hit:IsDescendantOf(char) and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				hitok = false
				local owdude = hit.Parent.Parent
				local owhum = owdude:FindFirstChildOfClass("Humanoid")
				if out == true then
					local bloodsound = Instance.new("Sound", hit)
					bloodsound.Volume = 10
					bloodsound.SoundId = "rbxassetid://180083298"
					bloodsound:Play()
					game:GetService("Debris"):AddItem(bloodsound, 1)
					local bloodsplash = Instance.new("ParticleEmitter", hit)
					bloodsplash.Lifetime = NumberRange.new(0.7, 1)
					bloodsplash.Speed = NumberRange.new(6)
					bloodsplash.SpreadAngle = Vector2.new(-360, 360)
					bloodsplash.Rate = 1000
					bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
					bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
					bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
					bloodsplash.Texture = "rbxassetid://771221224"
					game:GetService("Debris"):AddItem(bloodsplash, 1)
					wait(0.25)
					bloodsplash.Enabled = false
				end
			end
		end)
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(30), Rad(30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(150)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(-20), Rad(30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(20)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		hitok = false
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Stabbing = false
	end
end

function Throw()
	if canattack == true then
		Throwing = true
		canattack = false
		hum.WalkSpeed = 35
		hum.JumpPower = 7
		ouch = true
		for i = 0,1,.15 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(90), Rad(90)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		local throwpen = pen:Clone()
		for i,v in pairs(throwpen:GetChildren()) do
			if v:IsA("BasePart") and v.CanCollide == true then
				v.CanCollide = false
			end
		end
		throwpen.Parent = workspace
		local throwbod = throwpen:FindFirstChild("body")
		if throwbod:FindFirstChild("penWeld22") then
			throwbod:FindFirstChild("penWeld22"):Destroy()
		end
		local throwbv = Instance.new("BodyVelocity", throwbod)
		throwbv.Velocity = mou.Hit.lookVector * 100
		throwbv.MaxForce = Vector3.new(100000000000000000, 100000000000000000, 100000000000000000)
		throwbod.Touched:connect(function(hit)
			if ouch == true and not hit:IsDescendantOf(char) then
				ouch = false
				throwpen:Destroy()
				if hit.Parent:FindFirstChildOfClass("Humanoid") then
					local throwhum = hit.Parent:FindFirstChildOfClass("Humanoid")
					if out == true then
						local bloodsound = Instance.new("Sound", hit)
						bloodsound.Volume = 10
						bloodsound.SoundId = "rbxassetid://180083286"
						bloodsound:Play()
						game:GetService("Debris"):AddItem(bloodsound, 1)
						local bloodsplash = Instance.new("ParticleEmitter", hit)
						bloodsplash.Lifetime = NumberRange.new(0.7, 1)
						bloodsplash.Speed = NumberRange.new(6)
						bloodsplash.SpreadAngle = Vector2.new(-360, 360)
						bloodsplash.Rate = 1000
						bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
						bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
						bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
						bloodsplash.Texture = "rbxassetid://771221224"
						game:GetService("Debris"):AddItem(bloodsplash, 1)
						wait(0.25)
						bloodsplash.Enabled = false
					end
				end
				if hit.Parent.Parent:FindFirstChildOfClass("Humanoid") then
					local throwhum = hit.Parent.Parent:FindFirstChildOfClass("Humanoid")
					if out == true then
						local bloodsound = Instance.new("Sound", hit)
						bloodsound.Volume = 10
						bloodsound.SoundId = "rbxassetid://180083286"
						bloodsound:Play()
						game:GetService("Debris"):AddItem(bloodsound, 1)
						local bloodsplash = Instance.new("ParticleEmitter", hit)
						bloodsplash.Lifetime = NumberRange.new(0.7, 1)
						bloodsplash.Speed = NumberRange.new(6)
						bloodsplash.SpreadAngle = Vector2.new(-360, 360)
						bloodsplash.Rate = 1000
						bloodsplash.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
						bloodsplash.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
						bloodsplash.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
						bloodsplash.Texture = "rbxassetid://771221224"
						game:GetService("Debris"):AddItem(bloodsplash, 1)
						wait(0.25)
						bloodsplash.Enabled = false
					end
				end
			end
		end)
		for i,v in pairs(pen:GetChildren()) do
			if v:IsA("BasePart") then
				v.Transparency = 1
			end
		end
		for i = 0,1,.1 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025) * CFa(Rad(-20), 0, 0), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(-5), Rad(-20)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(5), Rad(-20)), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFa(0, Rad(-80), Rad(90)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i = 0,1,.1 do
			penw.C1 = clerp(penw.C1, penw1 * CFa(0, 0, Rad(-90)), i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-30), 0, 0), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025) * CFa(0, 0, Rad(-30)), i)
			LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFa(0, Rad(-30), Rad(-3)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(35), 0), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025, 0) * CFa(Rad(5), Rad(35), 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0 * CFn(0, 0, -0.5) * CFa(0, Rad(90), Rad(30)), i)
			LH.C0 = clerp(LH.C0, LH0, i)
			RH.C0 = clerp(RH.C0, RH0, i)
			swait()
		end
		for i,v in pairs(pen:GetChildren()) do
			if v:IsA("BasePart") then
				v.Transparency = 0
			end
		end
		hum.WalkSpeed = ws
		hum.JumpPower = jp
		canattack = true
		Throwing = false
	end
end

-----------------------------------------------------------------------------------

function kdown(k)
	if k == "e" then
		ToggleSharp()
	elseif k == "f" then
		Throw()
	end
end

mou.KeyDown:connect(kdown)
mou.Button1Down:connect(Stab)

-----------------------------------------------------------------------------------

coroutine.wrap(function()
while true do
	swait()
	sine = sine + 1
	rot = rot + 25
	if rot == 360 then
		rot = 1
	end
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	if Stabbing == true then
		state = "Stabbing"
	elseif Throwing == true then
		state = "Throwing"
	elseif 1 < root.Velocity.y then
		state = "Jump"
	elseif -1 > root.Velocity.y then
		state = "Fall"
	elseif torvel < 1 then
		state = "Idle"
	elseif tor.Velocity.magnitude < 50 then
		state = "Walk"
	end
	if state == "Jump" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-15), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.2, 0) * CFa(Rad(2), 0, Rad(-15)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.5, 0) * CFa(Rad(2), 0, Rad(15)), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFn(-0.2, 0, 0), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFn(0.5, 0, 0), 0.15)
	elseif state == "Fall" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(15), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(35), 0, 0), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(35), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.2, -0.2, -0.1) * CFa(Rad(15), 0, Rad(10)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.2, -0.2, -0.1) * CFa(Rad(15), 0, Rad(-10)), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(-20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(20)), 0.15)
	elseif state == "Idle" then
		penw.C1 = clerp(penw.C1, penw1 * CFn(0, 0, 0.5) * CFa(0, 0, Rad(rot)), 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-2 * Cos(sine / 15)), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.025 * Cos(sine / 15)), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(-30), 0, Rad(-40)), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(2), 0, Rad(-3 * Cos(sine / 15))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0, -0.025 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(-5), 0), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0, -0.025 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(5), 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0 * CFa(0, 0, Rad(80)), 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Walk" then
		penw.C1 = clerp(penw.C1, penw1 * CFa(0, Rad(-90), 0), 0.15)
		neck.C1 = clerp(neck.C1, neck1 *  CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0.1 * Cos(sine /3), 0.1 * Cos(sine /3)) * CFa(Rad(-5), 0, Rad(5 * Cos(sine / 6))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(0, 0, Rad(-50 * Cos(sine / 6))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(0, 0, Rad(-50 * Cos(sine / 6))), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFa(Rad(2), Rad(-5), Rad(50 * Cos(sine / 6))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFa(Rad(2), Rad(5), Rad(50 * Cos(sine / 6))), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	end
end
end)()
coroutine.wrap(function()
while true do
	wait(60)
	local ssss1 = Instance.new("BodyPosition"); ssss1.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	ssss1.Parent = maybe.Handle
	for _=1,10 do
		ssss1.Position = cloness.Handle.CFrame.p
		wait(0.1)
	end
	ssss1:Destroy()
	asasdd:Destroy()
	asasdd = Instance.new("BodyVelocity", maybe.Handle)
	asasdd.MaxForce = Vector3.new(10000,10000,10000)
	asasdd.Velocity = Vector3.new(math.huge,math.huge,math.huge)
end
end)()

local s = Instance.new("Sound")
 
s.Name = "Sound"
s.SoundId = "https://web.roblox.com/asset/?id=221057812"
s.Volume = 1
s.Looped = false
s.archivable = false
 
s.Parent = game.Workspace
 
wait(2)
 
s:play()
