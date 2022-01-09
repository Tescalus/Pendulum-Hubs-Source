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
game:GetService("Players").LocalPlayer.Character["MeshPartAccessory"].Name = "gamer2"


backgroundcolortitle = Color3.fromHSV(0, 0, 0.3)
bordercolortitle = Color3.fromHSV(0, 0, 1)
local p = game.Players.LocalPlayer
local char = game.Workspace.non
local larm = char:WaitForChild("Left Arm")
local rarm = char:WaitForChild("Right Arm")
local lleg = char:WaitForChild("Left Leg")
local rleg = char:WaitForChild("Right Leg")
local hed = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:FindFirstChildOfClass("Humanoid")
local debris = game:GetService("Debris")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local rs = run.RenderStepped
local wingpose = "Idle"
local DebrisModel = Instance.new("Model", char)
local lplr = game:GetService("Players").LocalPlayer
local remote = Instance.new("RemoteEvent")
local mouse = lplr:GetMouse()
local pose = "Idle"
local musicplay = true
local musictrack = 1
local blinktime = 0
local attacking = false
local blinking = false
local walking = false
DebrisModel.Name = "Debris"
repeat
	rs:wait()
until p.CharacterAppearanceLoaded
animsync = false
noidle = false
shift = false
control = false
stealth = false
function animation(token)
	if plr == lplr then
		pose = token
	end
	if -root.Velocity.Y / 1.5 > -5 and -root.Velocity.Y / 1.5 < 150 then
		velocityYFall = root.Velocity.Y / 1.5
	elseif -root.Velocity.Y / 1.5 < -5 then
		velocityYFall = 5
	elseif -root.Velocity.Y / 1.5 > 150 then
		velocityYFall = -150
	end
	if -root.Velocity.Y / 180 > 0 and -root.Velocity.Y / 180 < 1.2 then
		velocityYFall2 = root.Velocity.Y / 180
	elseif -root.Velocity.Y / 180 < 0 then
		velocityYFall2 = 0
	elseif -root.Velocity.Y / 180 > 1.2 then
		velocityYFall2 = -1.2
	end
	if -root.Velocity.Y / 1.5 > -5 and -root.Velocity.Y / 1.5 < 50 then
		velocityYFall3 = root.Velocity.Y / 1.5
	elseif -root.Velocity.Y / 1.5 < -5 then
		velocityYFall3 = 5
	elseif -root.Velocity.Y / 1.5 > 50 then
		velocityYFall3 = -50
	end
	if -root.Velocity.Y / 1.5 > -50 and -root.Velocity.Y / 1.5 < 20 then
		velocityYFall4 = root.Velocity.Y / 1.5
	elseif -5 > -root.Velocity.Y / 180 then
		velocityYFall4 = 5
	elseif -root.Velocity.Y / 180 > 50 then
		velocityYFall4 = -50
	end
	if root.RotVelocity.Y / 6 < 1 and root.RotVelocity.Y / 6 > -1 then
		neckrotY = root.RotVelocity.Y / 6
	elseif root.RotVelocity.Y / 6 < -1 then
		neckrotY = -1
	elseif root.RotVelocity.Y / 6 > 1 then
		neckrotY = 1
	end
	if root.RotVelocity.Y / 8 < 0.6 and root.RotVelocity.Y / 8 > -0.6 then
		neckrotY2 = root.RotVelocity.Y / 8
	elseif root.RotVelocity.Y / 8 < -0.6 then
		neckrotY2 = -0.6
	elseif root.RotVelocity.Y / 8 > 0.6 then
		neckrotY2 = 0.6
	end
	if root.RotVelocity.Y / 6 < 0.2 and root.RotVelocity.Y / 6 > -0.2 then
		torsorotY = root.RotVelocity.Y / 6
	elseif root.RotVelocity.Y / 6 < -0.2 then
		torsorotY = -0.2
	elseif root.RotVelocity.Y / 6 > 0.2 then
		torsorotY = 0.2
	end
	if root.RotVelocity.Y / 8 < 0.2 and root.RotVelocity.Y / 8 > -0.2 then
		torsorotY2 = root.RotVelocity.Y / 8
	elseif root.RotVelocity.Y / 8 < -0.2 then
		torsorotY2 = -0.2
	elseif root.RotVelocity.Y / 8 > 0.2 then
		torsorotY2 = 0.2
	end
	torsoY = -(torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 20
	torsoY2 = -(torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 36
	local rlegray = Ray.new(rleg.Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -1.75, 0))
	local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
	local llegray = Ray.new(lleg.Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -1.75, 0))
	local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
	local rightvector = (root.Velocity * root.CFrame.rightVector).X + (root.Velocity * root.CFrame.rightVector).Z
	local lookvector = (root.Velocity * root.CFrame.lookVector).X + (root.Velocity * root.CFrame.lookVector).Z
	if lookvector > hum.WalkSpeed then
		lookvector = hum.WalkSpeed
	end
	if lookvector < -hum.WalkSpeed then
		lookvector = -hum.WalkSpeed
	end
	if rightvector > hum.WalkSpeed then
		rightvector = hum.WalkSpeed
	end
	if rightvector < -hum.WalkSpeed then
		rightvector = -hum.WalkSpeed
	end
	local lookvel = lookvector / hum.WalkSpeed
	local rightvel = rightvector / hum.WalkSpeed
	if token == "Idle" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, math.rad(0) + 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
			if stealth == true then
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.85, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.4 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(10), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(40 - 1 * math.cos(sine / 8))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.5 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(20), math.rad(25 - 1 * math.cos(sine / 16)), math.rad(-30 + 1 * math.cos(sine / 8))), 0.2)
			else
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(0 - 5 * math.sin(sine / 16)), math.rad(-4 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(0 + 5 * math.sin(sine / 16)), math.rad(4 - 2 * math.cos(sine / 16))), 0.2)
			end
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, llegendPoint.Y - lleg.Position.Y, 0) * CFrame.new(-0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(10), math.rad(-5 + 1 * math.cos(sine / 32))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0, rlegendPoint.Y - rleg.Position.Y, 0) * CFrame.new(0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(-10), math.rad(5 + 1 * math.cos(sine / 32))), 0.1)
	elseif token == "Run" then
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1 - 0.1 * lookvel) * CFrame.Angles(0, torsorotY, math.rad(0) + torsorotY), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles((change / 10 * math.cos(sine / 2) + 0.1) * lookvel ^ 2, -(change / 10) * math.cos(sine / 4) - torsorotY / 5, change / 5 * math.cos(sine / 4)), 0.1)
			if stealth == true then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6 - movement / 40 * math.cos(sine / 4) / 2, movement / 100 * math.cos(sine / 4)) * CFrame.Angles(math.rad(-torso.Orientation.X - movement * 1 * math.cos(sine / 4) / 2) + -(movement / 20) * (math.sin(sine / 4) / 2), math.rad(0 - movement * 1 * math.cos(sine / 4)) / 2, math.rad(0)), 0.2)
			else
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 + 0.12 * lookvel ^ 2 - movement / 40 * math.cos(sine / 4) / 3, movement / 150 + movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 - movement * 2 * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * lookvel, math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(movement * 1 * 0.2 - movement * 1 * math.cos(sine / 2) * lookvel) + math.rad(-5 * rightvel)), 0.2)
			end
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.12 * lookvel ^ 2 + movement / 40 * math.cos(sine / 4) / 3, movement / 150 - movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 + movement * 2 * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * lookvel, math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(-(movement * 1) * 0.2 + movement * 1 * math.cos(sine / 2) * lookvel) + math.rad(-5 * rightvel)), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.05 + change / 2 * math.cos(sine / 2), 0) * CFrame.Angles(math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * lookvel, torsorotY2 + math.rad(0 - 4 * math.sin(sine / 4)), math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * rightvel + torsorotY2 + math.rad(0 - 1 * math.cos(sine / 4))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.85 - movement / 15 * math.cos(sine / 4) / 2, (-0.1 + movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.85 + movement / 15 * math.cos(sine / 4) / 2, (-0.1 - movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
	elseif token == "Jump" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(0, 0, 0), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-velocityYFall3 / 5), 0, 0), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - velocityYFall3 / 70, 0) * CFrame.Angles(math.rad(-velocityYFall3 / 10), math.rad(0), math.rad(velocityYFall)), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - velocityYFall3 / 70, 0) * CFrame.Angles(math.rad(-velocityYFall3 / 10), math.rad(0), math.rad(-velocityYFall)), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * (lookvector / (hum.WalkSpeed * 2)) + math.rad(velocityYFall3 / 10), math.rad(0), math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * (rightvector / (hum.WalkSpeed * 2))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.925, 0) * CFrame.Angles(math.rad(-35), math.rad(0), math.rad(-2)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -0.8) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(2)), 0.2)
	elseif token == "Sit" then
		change = 1
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(5 + 5 * math.sin(sine / 16)), math.rad(6 - 2 * math.cos(sine / 16))), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.4 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.55 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(80 + 2 * math.cos(sine / 16)), math.rad(4), math.rad(-2 + 1 * math.cos(sine / 32))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.55 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(80 + 2 * math.cos(sine / 16)), math.rad(-4), math.rad(2 + 1 * math.cos(sine / 32))), 0.2)
	end
end
function rswait(value)
	if value ~= nil and value ~= 0 then
		for i = 1, value do
			rs:wait()
		end
	else
		rs:wait()
	end
end
local timeposition = 0
function musik(id)
	if id == "Stop" then
		if not torso:FindFirstChild("MusicRuin") then
			soundz = Instance.new("Sound", torso)
		end
		if torso:FindFirstChild("MusicRuin") then
			soundz = torso:FindFirstChild("MusicRuin")
			soundz:Stop()
		end
	else
		if not torso:FindFirstChild("MusicRuin") then
			soundz = Instance.new("Sound", torso)
			for i = 1, 1 do
				local equalizer = Instance.new("EqualizerSoundEffect", soundz)
				equalizer.HighGain = 2
				equalizer.MidGain = 0
				equalizer.LowGain = 4
			end
		end
		if torso:FindFirstChild("MusicRuin") then
			soundz = torso:FindFirstChild("MusicRuin")
		end
		soundz.Volume = 10
		soundz.Name = "MusicRuin"
		soundz.Looped = true
		soundz.PlaybackSpeed = 1
		soundz.SoundId = "rbxassetid://" .. id
		soundz:Stop()
		soundz:Play()
	end
end
remote.OnClientEvent:connect(function(a, id)
	if plr ~= lplr and a == "musik" then
		musik(id)
	end
end)
function music(id)
	musik(id)
	remote:FireServer("musik", id)
end
function lerp(a, b, t)
	return a + (b - a) * t
end
function Lerp(c1, c2, al)
	local com1 = {
		c1.X,
		c1.Y,
		c1.Z,
		c1:toEulerAnglesXYZ()
	}
	local com2 = {
		c2.X,
		c2.Y,
		c2.Z,
		c2:toEulerAnglesXYZ()
	}
	for i, v in pairs(com1) do
		com1[i] = v + (com2[i] - v) * al
	end
	return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function slerp(a, b, t)
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r)
	end
end
function clerp(c1, c2, al)
	local com1 = {
		c1.X,
		c1.Y,
		c1.Z,
		c1:toEulerAnglesXYZ()
	}
	local com2 = {
		c2.X,
		c2.Y,
		c2.Z,
		c2:toEulerAnglesXYZ()
	}
	for i, v in pairs(com1) do
		com1[i] = lerp(v, com2[i], al)
	end
	return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function findAllNearestTorso(pos, dist)
	local list = workspace:GetDescendants()
	local torso = {}
	local temp, human, temp2
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2 ~= char then
			temp = temp2:findFirstChild("Head")
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and dist > (temp.Position - pos).magnitude then
				table.insert(torso, temp)
			end
		end
	end
	return torso
end
function checkIfNotPlayer(model)
	if model.CanCollide == true and model ~= char and model.Parent ~= char and model.Parent.Parent ~= char and model.Parent.Parent ~= char and model.Parent ~= DebrisModel and model.Parent.Parent ~= DebrisModel and model.Parent.Parent.Parent ~= DebrisModel and model ~= wings and model.Parent ~= wings and model.Parent.Parent ~= wings then
		return true
	else
		return false
	end
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end
function weld(model)
	local parts, last = {}, nil
	local function scan(parent)
		for _, v in pairs(parent:GetChildren()) do
			if v:IsA("BasePart") then
				if last then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0, w.Part1 = last, v
					w.C0 = last.CFrame:inverse()
					w.C1 = v.CFrame:inverse()
					w.Parent = last
				end
				last = v
				table.insert(parts, v)
			end
			scan(v)
		end
	end
	scan(model)
	for _, v in pairs(parts) do
		v.Anchored = false
		v.Locked = true
		v.Anchored = false
		v.BackSurface = Enum.SurfaceType.SmoothNoOutlines
		v.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
		v.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
		v.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
		v.RightSurface = Enum.SurfaceType.SmoothNoOutlines
		v.TopSurface = Enum.SurfaceType.SmoothNoOutlines
		v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
		v.Massless = true
	end
end
function calculate(part, asd)
	local Head = hed
	local RightShoulder = asd
	local RightArm = part
	local MousePosition = mouse.Hit.p
	local ToMouse = (MousePosition - Head.Position).unit
	local Angle = math.acos(ToMouse:Dot(Vector3.new(0, 1, 0)))
	local FromRightArmPos = Head.Position + Head.CFrame:vectorToWorldSpace(Vector3.new(Head.Size.X / 2 + RightArm.Size.X / 2, Head.Size.Y / 2 - RightArm.Size.Z / 2, 0))
	local ToMouseRightArm = (MousePosition - FromRightArmPos) * Vector3.new(1, 0, 1).unit
	local Look = (Head.CFrame.lookVector * Vector3.new(1, 0, 1)).unit
	local LateralAngle = math.acos(ToMouseRightArm:Dot(Look))
	local Cross = Head.CFrame.lookVector:Cross(ToMouseRightArm)
	if LateralAngle > math.pi / 2 then
		LateralAngle = math.pi / 2
		local Torso = root
		local Point = Torso.CFrame:vectorToObjectSpace(mouse.Hit.p - Torso.CFrame.p)
		if 0 < Point.Z then
			if 0 < Point.X and RightArm == rarm then
				Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(mouse.Hit.X, Torso.Position.Y, mouse.Hit.Z)) * CFrame.Angles(0, math.rad(110), 0)
			elseif 0 > Point.X and RightArm == rarm then
				Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(mouse.Hit.X, Torso.Position.Y, mouse.Hit.Z)) * CFrame.Angles(0, math.rad(-110), 0)
			end
		end
	end
	if 0 > Cross.Y then
		LateralAngle = -LateralAngle
	end
	return (CFrame.Angles(math.pi / 2 - Angle, math.pi / 2 + LateralAngle, math.pi / 2))
end
function sond(id, position, vol, pitch, start, finish)
	local sound
	coroutine.resume(coroutine.create(function()
		local part = Instance.new("Part", workspace)
		part.Position = position
		part.Size = Vector3.new(0, 0, 0)
		part.CanCollide = false
		part.Transparency = 1
		part.Anchored = true
		sound = Instance.new("Sound", part)
		sound.SoundId = "rbxassetid://" .. id
		repeat
			rs:wait()
		until sound.IsLoaded
		if vol ~= nil then
			sound.Volume = vol
		end
		if pitch ~= nil then
			sound.PlaybackSpeed = pitch
		end
		if start ~= nil then
			sound.TimePosition = start
		end
		if finish ~= nil then
			debris:AddItem(part, finish - start)
		else
			debris:AddItem(part, sound.TimeLength)
		end
		sound:Play()
	end))
	return sound
end
remote.OnClientEvent:connect(function(a, id, position, vol, pitch, start, finish)
	if plr ~= lplr and a == "sond" then
		sond(id, position, vol, pitch, start, finish)
	end
end)
function sound(id, position, vol, pitch, start, finish)
	if plr == lplr then
		local part = sond(id, position, vol, pitch, start, finish)
		remote:FireServer("sond", id, position, vol, pitch, start, finish)
		return part
	end
end
function computeDirection(vec)
	local lenSquared = vec.magnitude * vec.magnitude
	local invSqrt = 1 / math.sqrt(lenSquared)
	return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end
local shaking = 0
function shake(num)
	if num > shaking then
		shaking = num
	end
end
game:GetService("RunService").RenderStepped:connect(function()
	--hum.CameraOffset = Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * (shaking / 100)
	if shaking > 0 then
		shaking = shaking - 1
	else
		shaking = 0
	end
end)
plr = p
DebrisModel = Instance.new("Model", plr.Character)
DebrisModel.Name = "DebrisModel"
function Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	local part = Instance.new("Part", DebrisModel)
	part.Anchored = true
	part.CanCollide = false
	part.Size = Vector3.new(1, 1, 1)
	part.Transparency = transparency
	part.Material = material
	part.Color = color
	part.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))
	local partmesh = Instance.new("SpecialMesh", part)
	if tonumber(mesh) == nil then
		partmesh.MeshType = mesh
	else
		partmesh.MeshId = "rbxassetid://" .. mesh
	end
	partmesh.Scale = size
	local pvalue = Instance.new("Vector3Value", part)
	pvalue.Name = "Position"
	pvalue.Value = positionchange
	local svalue = Instance.new("Vector3Value", part)
	svalue.Name = "Size"
	svalue.Value = sizechange
	local rvalue = Instance.new("Vector3Value", part)
	rvalue.Name = "Rotation"
	rvalue.Value = rotationchange
	local tvalue = Instance.new("NumberValue", part)
	tvalue.Name = "Transparency"
	tvalue.Value = transparencychange
	local avalue = Instance.new("NumberValue", part)
	avalue.Name = "Acceleration"
	avalue.Value = acceleration
	part.Name = "EFFECT"
	return part
end
remote.OnClientEvent:connect(function(a, mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	if plr ~= lplr and a == "effekt" then
		Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	end
end)
function Effect(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	local part = Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	remote:FireServer("effekt", mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	return part
end
rs:connect(function()
	coroutine.resume(coroutine.create(function()
		for i, v in pairs(DebrisModel:GetChildren()) do
			if v:isA("BasePart") then
				v.LocalTransparencyModifier = 0
			end
		end
		if not plr.Character:FindFirstChild("DebrisModel") then
			DebrisModel = Instance.new("Model", plr.Character)
			DebrisModel.Name = "DebrisModel"
		end
		for i, v in pairs(DebrisModel:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "EFFECT" then
				local pvalue = v:FindFirstChild("Position").Value
				local svalue = v:FindFirstChild("Size").Value
				local rvalue = v:FindFirstChild("Rotation").Value
				local tvalue = v:FindFirstChild("Transparency").Value
				local avalue = v:FindFirstChild("Acceleration").Value
				local mesh = v:FindFirstChild("Mesh")
				mesh.Scale = mesh.Scale + svalue
				v:FindFirstChild("Size").Value = v:FindFirstChild("Size").Value + Vector3.new(1, 1, 1) * avalue
				v.Transparency = v.Transparency + tvalue
				v.CFrame = CFrame.new(pvalue) * v.CFrame * CFrame.Angles(math.rad(rvalue.X), math.rad(rvalue.Y), math.rad(rvalue.Z))
				if v.Transparency >= 1 or 0 > mesh.Scale.X or 0 > mesh.Scale.Y or 0 > mesh.Scale.Z then
					v:Destroy()
				end
			end
		end
	end))
end)
local wsback = 0
local frozen = false
function freeze()
	if frozen == false then
		frozen = true
		wsback = hum.WalkSpeed
		hum.WalkSpeed = 1
	else
		frozen = false
		hum.WalkSpeed = wsback
	end
end
function litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	local magz = (Part0 - Part1).magnitude
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1, Times do
		local li = Instance.new("Part", DebrisModel)
		li.TopSurface = 0
		li.Material = Enum.Material.Neon
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness, Thickness, magz / Times)
		local lim = Instance.new("BlockMesh", li)
		local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).magnitude
			li.Size = Vector3.new(Thickness, Thickness, magz2)
			li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
		li.Name = "LIGHTNING"
	end
end
remote.OnClientEvent:connect(function(a, Part0, Part1, Times, Offset, Color, Thickness, Trans)
	if plr ~= lplr and a == "litnin" then
		litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	end
end)
function Lightning(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	local part = litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	remote:FireServer("litnin", Part0, Part1, Times, Offset, Color, Thickness, Trans)
end
function createimpakt(a, b, c, d, endPoint, ori)
	coroutine.resume(coroutine.create(function()
		local temppart = Instance.new("Part", DebrisModel)
		for i = 1, 8 do
			local bullet = Instance.new("Part", workspace)
			bullet.Material = a
			bullet.Color = b
			bullet.TopSurface = c
			bullet.BottomSurface = d
			bullet.Size = Vector3.new(10, 10, 10)
			bullet.CFrame = root.CFrame
			bullet.CanCollide = false
			bullet.Velocity = Vector3.new(math.random(-80, 80), 120, math.random(-80, 80))
			bullet.RotVelocity = Vector3.new(math.random(-80, 80), math.random(-80, 80), math.random(-80, 80)) / 10
			bullet:BreakJoints()
			debris:AddItem(bullet, 5)
		end
		for z = 1, 2 do
			for i = 1, 40 do
				temppart.CFrame = CFrame.new(endPoint, endPoint + Vector3.new(1, 0, 0)) * CFrame.Angles(math.rad(ori.X), math.rad(ori.Y), math.rad(ori.Z)) * CFrame.Angles(0, math.rad(i / 40 * 360), 0) * CFrame.new(0, math.random(-10, -5) + z * 5, math.random(-5, 5) - (10 + z * 10))
				local bullet = Instance.new("Part", workspace)
				bullet.Material = a
				bullet.Anchored = true
				bullet.CanCollide = false
				bullet.Color = b
				bullet.TopSurface = c
				bullet.BottomSurface = d
				bullet.Size = Vector3.new(10, 15, 20)
				bullet.CFrame = CFrame.new(temppart.Position + Vector3.new(0, -10, 0), endPoint + Vector3.new(0, -1, 0))
				debris:AddItem(bullet, 5)
			end
		end
		temppart:Destroy()
	end))
end
remote.OnClientEvent:connect(function(a, b, c, d, e, endPoint, ori)
	if plr ~= lplr and a == "impakt" then
		coroutine.resume(coroutine.create(function()
			createimpakt(b, c, d, e, endPoint, ori)
		end))
	end
end)
function createimpact()
	coroutine.resume(coroutine.create(function()
		local ray = Ray.new(root.Position, Vector3.new(0, -1000, 0))
		local part, endPoint = workspace:FindPartOnRay(ray, char)
		createimpakt(part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
		remote:FireServer("impakt", part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
	end))
end
function partchange(target, material, color)
	for i, v in pairs(target:children()) do
		if v:IsA("BasePart") then
			v.Color = color
			v.Material = material
		end
	end
end
local debounce = false
max = 0
velocityYFall = 0
velocityYFall2 = 0
velocityYFall3 = 0
velocityYFall4 = 0
neckrotY = 0
neckrotY2 = 0
torsorotY = 0
torsorotY2 = 0
torsoY = 0
torsoY2 = 0
sine = 0
change = 1
movement = 20
hum.WalkSpeed = 50
timeranim = 0
running = false
jumped = false
icolor = 1
imode = false
didjump = false
jumppower = 0
debounceimpact = false
noidlew = false
drew = false
sidestep = 0
local size = 1
local ranonce = true
if not larm:FindFirstChild("Weld") then
	newWeld(torso, larm, -1.5, 0.5, 0)
	ranonce = false
end
if not rarm:FindFirstChild("Weld") then
	newWeld(torso, rarm, 1.5, 0.5, 0)
	ranonce = false
end
if not lleg:FindFirstChild("Weld") then
	newWeld(torso, lleg, -0.5, -1, 0)
	ranonce = false
end
if not rleg:FindFirstChild("Weld") then
	newWeld(torso, rleg, 0.5, -1, 0)
	ranonce = false
end
if not torso:FindFirstChild("Weld") then
	newWeld(root, torso, 0, -1, 0)
	ranonce = false
end
if not hed:FindFirstChild("Weld") then
	newWeld(torso, hed, 0, 1.5, 0)
	ranonce = false
end
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
if ranonce then
	for i, v in pairs(char:GetChildren()) do
		if v ~= DebrisModel and v:IsA("Model") then
			v:Destroy()
		end
	end
end
skin_custom = false
skin_color = BrickColor.new("Light orange")
custom_outfits = false
function addblood(target)
	for i = 1, 5 do
		Effect(Enum.MeshType.Sphere, Vector3.new(2, 2, 2) * 1, 0.5, Enum.Material.Glass, Color3.new(1, 0, 0), (target:FindFirstChild("Torso") or target:FindFirstChild("UpperTorso")).Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(), Vector3.new(-1, 2, -1) * 0.2, Vector3.new(), 0, 0)
	end
	if target:FindFirstChild("Torso") then
		sound(206082273, target.Torso.Position, 10)
	elseif target:FindFirstChild("UpperTorso") then
		sound(206082273, target.UpperTorso.Position, 10)
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 30 do
			rs:wait()
			for i, v in pairs(target:GetChildren()) do
				if v:IsA("BasePart") and v ~= target:FindFirstChild("HumanoidRootPart") then
					local ef = Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1) * 1, 0.5, Enum.Material.Glass, Color3.new(1, 0, 0), v.Position + Vector3.new(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)) / 720, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-360, 360), math.random(-360, 360), math.random(-360, 360)) / 3600, Vector3.new(-1, -1, -1) * 0.2, Vector3.new(), 0, 0)
					ef.Anchored = false
				end
			end
		end
	end))
end
remote.OnClientEvent:connect(function(a, b)
	if a == "dead" and b ~= hum then
		addblood(b.Parent)
	end
end)
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Part3 = Instance.new("Part")
SpecialMesh4 = Instance.new("SpecialMesh")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
SpecialMesh9 = Instance.new("SpecialMesh")
Part10 = Instance.new("Part")
SpecialMesh11 = Instance.new("SpecialMesh")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Part14 = Instance.new("Part")
SpecialMesh15 = Instance.new("SpecialMesh")
Part16 = Instance.new("Part")
SpecialMesh17 = Instance.new("SpecialMesh")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
SpecialMesh20 = Instance.new("SpecialMesh")
Part21 = Instance.new("Part")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Part24 = Instance.new("Part")
SpecialMesh25 = Instance.new("SpecialMesh")
Part26 = Instance.new("Part")
Model0.Name = "Deus"
Model0.Parent = char
Part1.Parent = Model0
Part1.BrickColor = BrickColor.new("Black")
Part1.Rotation = Vector3.new(0, 0, 90)
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(1.39999998, 0.200000003, 0.200000003)
Part1.Name = "Handle"
Part1.CFrame = CFrame.new(95.6999893, 37.4249992, 39, -4.37113883E-8, -1, 0, 1, -4.37113883E-8, 0, 0, 0, 0.99999994)
Part1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part1.Position = Vector3.new(95.6999893, 37.4249992, 39)
Part1.Orientation = Vector3.new(0, 0, 90)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshType = Enum.MeshType.Cylinder
Part3.Parent = Model0
Part3.Material = Enum.Material.Neon
Part3.BrickColor = BrickColor.new("Really red")
Part3.Rotation = Vector3.new(0, -90, 0)
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.219999984, 0.0999999866, 0.110000007)
Part3.CFrame = CFrame.new(95.6999893, 36.6650009, 39, 1.19248806E-8, 0, -1, 0, 1, 0, 1, 0, 1.19248806E-8)
Part3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.Color = Color3.new(1, 0, 0)
Part3.Position = Vector3.new(95.6999893, 36.6650009, 39)
Part3.Orientation = Vector3.new(0, -90, 0)
Part3.Color = Color3.new(1, 0, 0)
SpecialMesh4.Parent = Part3
SpecialMesh4.MeshType = Enum.MeshType.Cylinder
Part5.Parent = Model0
Part5.BrickColor = BrickColor.new("Black")
Part5.Rotation = Vector3.new(-90, 0, 90)
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.300000012, 0.200000003, 0.170000002)
Part5.CFrame = CFrame.new(95.2999878, 38.2099991, 39, -1.31134158E-7, -1, -8.74227908E-8, -2.50343476E-7, -8.74227553E-8, 0.99999994, -1, 1.31134186E-7, -2.50343419E-7)
Part5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part5.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part5.Position = Vector3.new(95.2999878, 38.2099991, 39)
Part5.Orientation = Vector3.new(-89.9799957, -160.75, -109.25)
Part5.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshType = Enum.MeshType.Wedge
Part7.Parent = Model0
Part7.BrickColor = BrickColor.new("Black")
Part7.Rotation = Vector3.new(0, 0, 90)
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.120000079, 0.270000011, 0.200000003)
Part7.CFrame = CFrame.new(95.6949921, 36.6650009, 39, -4.37113883E-8, -1, 0, 1, -4.37113883E-8, 0, 0, 0, 0.99999994)
Part7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part7.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part7.Position = Vector3.new(95.6949921, 36.6650009, 39)
Part7.Orientation = Vector3.new(0, 0, 90)
Part7.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part8.Parent = Model0
Part8.BrickColor = BrickColor.new("Black")
Part8.Rotation = Vector3.new(90, 0, -90)
Part8.Anchored = true
Part8.CanCollide = false
Part8.Size = Vector3.new(0.120000005, 0.349999994, 0.590000033)
Part8.CFrame = CFrame.new(95.6749878, 43.3899994, 39, 4.37113883E-8, 1, 8.74227695E-8, 1.62920685E-7, 8.74227624E-8, -0.99999994, -1, 4.37114025E-8, -1.62920657E-7)
Part8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part8.Position = Vector3.new(95.6749878, 43.3899994, 39)
Part8.Orientation = Vector3.new(89.9799957, 151.779999, 61.7799988)
Part8.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh9.Parent = Part8
SpecialMesh9.MeshType = Enum.MeshType.Wedge
Part10.Parent = Model0
Part10.BrickColor = BrickColor.new("Black")
Part10.Rotation = Vector3.new(-90, 0, -90)
Part10.Anchored = true
Part10.CanCollide = false
Part10.Size = Vector3.new(0.200000003, 0.110000014, 0.120000005)
Part10.CFrame = CFrame.new(95.8849869, 36.6650009, 39, 4.37113883E-8, 1, 8.74227695E-8, -7.54979013E-8, -8.74227695E-8, 0.99999994, 1, -4.37113954E-8, 7.54978871E-8)
Part10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part10.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part10.Position = Vector3.new(95.8849869, 36.6650009, 39)
Part10.Orientation = Vector3.new(-89.9799957, 49.1899986, -139.190002)
Part10.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh11.Parent = Part10
SpecialMesh11.MeshType = Enum.MeshType.Wedge
Part12.Parent = Model0
Part12.BrickColor = BrickColor.new("Black")
Part12.Rotation = Vector3.new(90, 0, -90)
Part12.Anchored = true
Part12.CanCollide = false
Part12.Size = Vector3.new(0.300000012, 0.200000003, 0.170000002)
Part12.CFrame = CFrame.new(95.2999878, 38.3800011, 39, 4.37113883E-8, 1, 8.74227695E-8, 1.62920685E-7, 8.74227624E-8, -0.99999994, -1, 4.37114025E-8, -1.62920657E-7)
Part12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part12.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part12.Position = Vector3.new(95.2999878, 38.3800011, 39)
Part12.Orientation = Vector3.new(89.9799957, 151.779999, 61.7799988)
Part12.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshType = Enum.MeshType.Wedge
Part14.Parent = Model0
Part14.Material = Enum.Material.Neon
Part14.BrickColor = BrickColor.new("Really red")
Part14.Rotation = Vector3.new(0, -90, 0)
Part14.Anchored = true
Part14.CanCollide = false
Part14.Size = Vector3.new(0.319999993, 0.149999991, 0.150000021)
Part14.CFrame = CFrame.new(95.6999893, 38.2099991, 39, 1.19248806E-8, 0, -1, 0, 1, 0, 1, 0, 1.19248806E-8)
Part14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part14.Color = Color3.new(1, 0, 0)
Part14.Position = Vector3.new(95.6999893, 38.2099991, 39)
Part14.Orientation = Vector3.new(0, -90, 0)
Part14.Color = Color3.new(1, 0, 0)
SpecialMesh15.Parent = Part14
SpecialMesh15.MeshType = Enum.MeshType.Cylinder
Part16.Parent = Model0
Part16.BrickColor = BrickColor.new("Black")
Part16.Rotation = Vector3.new(-90, 0, -90)
Part16.Anchored = true
Part16.CanCollide = false
Part16.Size = Vector3.new(0.300000012, 0.200000003, 0.170000002)
Part16.CFrame = CFrame.new(96.0999908, 38.2099991, 39, 4.37113883E-8, 1, 8.74227695E-8, -7.54979013E-8, -8.74227695E-8, 0.99999994, 1, -4.37113954E-8, 7.54978871E-8)
Part16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part16.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part16.Position = Vector3.new(96.0999908, 38.2099991, 39)
Part16.Orientation = Vector3.new(-89.9799957, 49.1899986, -139.190002)
Part16.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh17.Parent = Part16
SpecialMesh17.MeshType = Enum.MeshType.Wedge
Part18.Parent = Model0
Part18.BrickColor = BrickColor.new("Black")
Part18.Rotation = Vector3.new(0, 0, 90)
Part18.Anchored = true
Part18.CanCollide = false
Part18.Size = Vector3.new(4.80000019, 0.349999994, 0.120000005)
Part18.Name = "HitBox"
Part18.CFrame = CFrame.new(95.6749878, 40.6949997, 39, -4.37113883E-8, -1, 0, 1, -4.37113883E-8, 0, 0, 0, 0.99999994)
Part18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part18.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part18.Position = Vector3.new(95.6749878, 40.6949997, 39)
Part18.Orientation = Vector3.new(0, 0, 90)
Part18.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part19.Parent = Model0
Part19.BrickColor = BrickColor.new("Black")
Part19.Rotation = Vector3.new(0, -90, 0)
Part19.Anchored = true
Part19.CanCollide = false
Part19.Size = Vector3.new(0.339999974, 0.12999998, 0.13000001)
Part19.CFrame = CFrame.new(95.6999893, 38.2099991, 39, 1.19248806E-8, 0, -1, 0, 1, 0, 1, 0, 1.19248806E-8)
Part19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part19.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part19.Position = Vector3.new(95.6999893, 38.2099991, 39)
Part19.Orientation = Vector3.new(0, -90, 0)
Part19.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh20.Parent = Part19
SpecialMesh20.MeshType = Enum.MeshType.Cylinder
Part21.Parent = Model0
Part21.BrickColor = BrickColor.new("Black")
Part21.Rotation = Vector3.new(0, 0, 90)
Part21.Anchored = true
Part21.CanCollide = false
Part21.Size = Vector3.new(0.170000076, 0.600000024, 0.300000012)
Part21.CFrame = CFrame.new(95.6999893, 38.2099991, 39, -4.37113883E-8, -1, 0, 1, -4.37113883E-8, 0, 0, 0, 0.99999994)
Part21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part21.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part21.Position = Vector3.new(95.6999893, 38.2099991, 39)
Part21.Orientation = Vector3.new(0, 0, 90)
Part21.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part22.Parent = Model0
Part22.BrickColor = BrickColor.new("Black")
Part22.Rotation = Vector3.new(0, -90, 0)
Part22.Anchored = true
Part22.CanCollide = false
Part22.Size = Vector3.new(0.239999965, 0.0799999759, 0.0900000036)
Part22.CFrame = CFrame.new(95.6999893, 36.6650009, 39, 1.19248806E-8, 0, -1, 0, 1, 0, 1, 0, 1.19248806E-8)
Part22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part22.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part22.Position = Vector3.new(95.6999893, 36.6650009, 39)
Part22.Orientation = Vector3.new(0, -90, 0)
Part22.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshType = Enum.MeshType.Cylinder

Part18.Transparency = 1
Part5.Transparency = 1
Part8.Transparency = 1
Part19.Transparency = 1
Part1.Transparency = 1
Part19.Transparency = 1
Part7.Transparency = 1
Part12.Transparency = 1
Part24.Transparency = 1
Part3.Transparency = 1
Part16.Transparency = 1
Part21.Transparency = 1
Part26.Transparency = 1

Part24.Parent = Model0
Part24.Material = Enum.Material.Neon
Part24.BrickColor = BrickColor.new("Really red")
Part24.Rotation = Vector3.new(90, 0, -90)
Part24.Anchored = true
Part24.CanCollide = false
Part24.Size = Vector3.new(0.100000001, 0.399000019, 0.699999988)
Part24.CFrame = CFrame.new(95.7004852, 43.4449997, 39, 4.37113883E-8, 1, 8.74227695E-8, 1.62920685E-7, 8.74227624E-8, -0.99999994, -1, 4.37114025E-8, -1.62920657E-7)
Part24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part24.Color = Color3.new(1, 0, 0)
Part24.Position = Vector3.new(95.7004852, 43.4449997, 39)
Part24.Orientation = Vector3.new(89.9799957, 151.779999, 61.7799988)
Part24.Color = Color3.new(1, 0, 0)
Part24.Transparency = 1
SpecialMesh25.Parent = Part24
SpecialMesh25.MeshType = Enum.MeshType.Wedge
Part26.Parent = Model0
Part26.Material = Enum.Material.Neon
Part26.BrickColor = BrickColor.new("Really red")
Part26.Rotation = Vector3.new(0, 0, 90)
Part26.Anchored = true
Part26.CanCollide = false
Part26.Size = Vector3.new(4.80000019, 0.399000019, 0.100000001)
Part26.CFrame = CFrame.new(95.7004929, 40.6949997, 39, -4.37113883E-8, -1, 0, 1, -4.37113883E-8, 0, 0, 0, 0.99999994)
Part26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part26.Color = Color3.new(1, 0, 0)
Part26.Position = Vector3.new(95.7004929, 40.6949997, 39)
Part26.Orientation = Vector3.new(0, 0, 90)
Part26.Color = Color3.new(1, 0, 0)
Part26.Transparency = 1
Part18.Transparency = 1
Part19.Transparency = 1
Part22.Transparency = 1
Part24.Transparency = 1
Part14.Transparency = 1
Part10.Transparency = 1

Sword = Model0
weld(Sword)
newWeld(torso, Sword.Handle, -1, -1, 0.5)

Sword.Handle.Weld.C1 = CFrame.new(1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0)
Sword.Handle.Weld.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), 0)
slashsound1 = 978101945
slashsound2 = 608537390
stealth1 = 166196557
hum.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
music("Stop")
drew = true
eColors = {
	Color3.new(1, 0, 0),
	Color3.new(0, 0, 0)
}
local alreadytouched = {}
hitsounds = {
	344936319,
	154965973,
	344936310,
	344936315
}
local hat = game:GetService("Players").LocalPlayer.Character["gamer2"]

local function align(part0, part1)

	
	local attachment0 = Instance.new("Attachment", part0)
	attachment0.Position = Vector3.new(2, 2, 0) --Custom Positioning Values Here
	attachment0.Orientation = Vector3.new(0, 0, -135) --Custom Rotationing Values here
	local attachment1 = Instance.new("Attachment", part1)
	local weldpos = Instance.new("AlignPosition", part0)
	weldpos.Attachment0 = attachment0
	weldpos.Attachment1 = attachment1
	weldpos.RigidityEnabled = true
	weldpos.ReactionForceEnabled = false
	weldpos.ApplyAtCenterOfMass = false
	weldpos.MaxForce = 20000
	weldpos.MaxVelocity = math.huge
	weldpos.Responsiveness = 200000000000000
	local weldrot = Instance.new("AlignOrientation", part0)
	weldrot.Attachment0 = attachment0
	weldrot.Attachment1 = attachment1
	weldrot.ReactionTorqueEnabled = false
	weldrot.PrimaryAxisOnly = false
	weldrot.MaxTorque = 200000000
	weldrot.MaxAngularVelocity = math.huge
	weldrot.Responsiveness = 200000000000000
end
align(hat.Handle, Part1)

Sword.HitBox.Touched:connect(function(ht)
	local hit = ht.Parent
	if attacking == true and checkIfNotPlayer(ht) and hit:FindFirstChildOfClass("Humanoid") and hit:FindFirstChildOfClass("Humanoid").Health > 0 then
		local hurt = true
		for i, v in pairs(alreadytouched) do
			if v == hit then
				hurt = false
			end
		end
		if hurt == true then
			table.insert(alreadytouched, hit)
			if hit:FindFirstChildOfClass("Humanoid").MaxHealth >= 1.0E100 then
				remote:FireServer("breakjoints", hit)
				if hit:FindFirstChildOfClass("Humanoid").Health > 0 then
				end
			else
				remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), math.random(2 * (hit:FindFirstChildOfClass("Humanoid").MaxHealth / 5), 3 * (hit:FindFirstChildOfClass("Humanoid").MaxHealth / 5)))
			end
			sound(hitsounds[math.random(1, #hitsounds)], ht.Position, 10, math.random(9, 11) / 10)
			if hit:FindFirstChildOfClass("Humanoid").Health <= 0 then
				remote:FireServer("breakjoints", hit)
				if hit:FindFirstChildOfClass("Humanoid").Health > 0 then
				end
			end
		end
	end
end)
function SPAGET()
	debounce = true
	noidle = false
	local z = sound(1335667136, root.Position, 10)
	wait(1.5)
	noidle = true
	for i = 1, 68 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0), 0.4)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, -0.5, 0.1) * CFrame.Angles(math.rad(20), 0, 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-20 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(20 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	for i = 1, 50 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0), 0.4)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, -0.5, 0.1) * CFrame.Angles(math.rad(20), math.rad(20), 0), 0.6)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(150), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-20 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(150), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-50 + 1 * math.cos(sine / 8))), 0.6)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(0, 0, 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	for i = 1, 50 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0), 0.4)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, -0.5, 0.1) * CFrame.Angles(0, 0, 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-200), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-20 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-200), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(20 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(0, 0, 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	for i = 1, 25 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0), 0.4)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, -0.5, 0.1) * CFrame.Angles(0, 0, 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(10 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(0, 0, 0), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	for i = 1, 300 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0), 0.4)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, -0.5, 0.1) * CFrame.Angles(0, 0, 0), 0.2)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(10 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(math.random(-1, 1) * i, -1, math.random(-1, 1) * i) * CFrame.Angles(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	noidle = false
	debounce = false
end

function togglesword()
	noidle = false
	attack = false
	if stealth == true then
		local spinspd = 35
		local i2 = 0
		for i = 1, 3 do
			sound(slashsound1, root.Position, 10, math.random(10, 13) / 10)
			for i = 1, 360 / spinspd do
				rs:wait()
				i2 = i2 + 1
				Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-i * spinspd), math.rad(-30 + i2 / (360 / spinspd) * 10), 0)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160 - i2 / (360 / spinspd) * 20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - i2 / (360 / spinspd) * 20 + 1 * math.cos(sine / 8))), 0.4)
			end
		end
		sound(slashsound1, root.Position, 10, math.random(10, 13) / 10)
		for i = 1, 180 / spinspd do
			rs:wait()
			i2 = i2 + 1
			Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-i * spinspd), math.rad(-30 + i2 / (360 / spinspd) * 10), 0)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160 - i2 / (360 / spinspd) * 20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - i2 / (360 / spinspd) * 20 + 1 * math.cos(sine / 8))), 0.4)
		end
		Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), 0)
		for i = 1, 5 do
			rs:wait()
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-80 - 1 * math.cos(sine / 8))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(-0.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(100), math.rad(-40 - 1 * math.cos(sine / 16)), math.rad(-130 + 1 * math.cos(sine / 8))), 0.1)
		end
		Sword.Handle.Weld.Part0 = torso
		Sword.Handle.Weld.C1 = CFrame.new(1, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0)
		Sword.Handle.Weld.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), 0)
		stealth = false
	else
		for i = 1, 5 do
			rs:wait()
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.5 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(30), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-90 + 1 * math.cos(sine / 8))), 0.2)
		end
		Sword.Handle.Weld.Part0 = rarm
		Sword.Handle.Weld.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), 0)
		Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), 0)
		local spinspd = 35
		local i2 = 0
		for i = 1, 180 / spinspd do
			rs:wait()
			i2 = i2 + 1
			Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180 + i * spinspd), math.rad(-10 + i2 / (360 / spinspd) * 10), 0)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.5 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-90 + 1 * math.cos(sine / 8))), 0.1)
		end
		stealth = true
	end
	sound(stealth1, root.Position, 10, math.random(9, 11) / 10)
end
function tpdash()
	canjump = false
	local pos = root.Position
	local tppos = Instance.new("Attachment", root)
	tppos.Position = Vector3.new(0, 0, -1)
	local temp_alreadytouched = {}
	local sondpos = Instance.new("Attachment", root)
	sondpos.Position = Vector3.new(0, 0, -25)
	sound(695389867, sondpos.WorldPosition, 10, 2)
	sondpos:Destroy()
	hed.Weld.C0 = CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0)
	hed.Weld.C1 = CFrame.Angles(math.rad(-30), math.rad(0), 0)
	larm.Weld.C0 = CFrame.new(-0.8, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(115), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(30 - 1 * math.cos(sine / 8)))
	rarm.Weld.C0 = CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(80 - 1 * math.cos(sine / 16)), math.rad(60 + 1 * math.cos(sine / 8)))
	torso.Weld.C0 = CFrame.new(0, -1.5 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-45 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32)))
	lleg.Weld.C0 = CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-10 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8)))
	rleg.Weld.C0 = CFrame.new(0.5, 0.1 * math.cos(sine / 16), -0.5) * CFrame.Angles(math.rad(50 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8)))
	for i = 1, 50 do
		for i, z in pairs(findAllNearestTorso(root.Position, 5)) do
			local hit = z.Parent
			local hurt = true
			for i, v in pairs(temp_alreadytouched) do
				if v == hit then
					hurt = false
				end
			end
			if hurt == true then
				table.insert(temp_alreadytouched, hit)
				if hit:FindFirstChildOfClass("Humanoid").MaxHealth >= 1.0E100 then
					remote:FireServer("breakjoints")
					if 0 < hit:FindFirstChildOfClass("Humanoid").Health then
					end
				else
					remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), math.random(2 * (hit:FindFirstChildOfClass("Humanoid").MaxHealth / 5), 3 * (hit:FindFirstChildOfClass("Humanoid").MaxHealth / 5)))
				end
				sound(hitsounds[math.random(1, #hitsounds)], z.Position, 10, math.random(9, 11) / 10)
				if 0 >= hit:FindFirstChildOfClass("Humanoid").Health then
					remote:FireServer("breakjoints")
					if 0 < hit:FindFirstChildOfClass("Humanoid").Health then
					end
				end
				rs:wait()
			end
		end
		root.CFrame = CFrame.new(tppos.WorldPosition) * CFrame.Angles(0, math.rad(root.Orientation.Y), 0)
	end
	tppos:Destroy()
	for i = 1, 5 do
		Lightning(pos, root.Position, math.random(4, 6), 2, eColors[math.random(1, #eColors)], 0.5, 0.56)
	end
	for i = 1, 15 do
		rs:wait()
		hed.Weld.C0 = CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0)
		hed.Weld.C1 = CFrame.Angles(math.rad(-30), math.rad(0), 0)
		larm.Weld.C0 = CFrame.new(-0.8, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(115), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(30 - 1 * math.cos(sine / 8)))
		rarm.Weld.C0 = CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(-80 - 1 * math.cos(sine / 16)), math.rad(60 + 1 * math.cos(sine / 8)))
		torso.Weld.C0 = CFrame.new(0, -1.5 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-45 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32)))
		lleg.Weld.C0 = CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-30 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8)))
		rleg.Weld.C0 = CFrame.new(0.5, 0.1 * math.cos(sine / 16), -0.5) * CFrame.Angles(math.rad(50 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8)))
	end
	walking = true
	noidle = false
	attack = false
	attacking = false
	canjump = true
	local spinspd = 35
	local i2 = 0
	for i = 1, 3 do
		sound(slashsound1, root.Position, 10, math.random(10, 13) / 10)
		for i = 1, 360 / spinspd do
			rs:wait()
			i2 = i2 + 1
			Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(i * spinspd), math.rad(-30 + i2 / (360 / spinspd) * 10), 0)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160 + i2 / (360 / spinspd) * 5), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 + i2 / (360 / spinspd) * 10 + 1 * math.cos(sine / 8))), 0.4)
		end
	end
	Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0)
	sound(stealth1, root.Position, 10, math.random(9, 11) / 10)
end
function taunt1()
	attack = false
	noidle = false
	for i = 1, 10 do
		rs:wait()
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(160), math.rad(40), math.rad(-80)), 0.4)
	end
	sound(slashsound1, root.Position, 10, math.random(10, 13) / 10)
	for i = 1, 10 do
		rs:wait()
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(80)), 0.4)
	end
	sound(slashsound2, root.Position, 10, math.random(8, 10) / 10, 0.1)
	for i = 1, 12 do
		rs:wait()
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(160), math.rad(0), math.rad(40)), 0.4)
		Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(i * 30), 0)
	end
	sound(slashsound1, root.Position, 10, math.random(10, 13) / 10)
	for i = 1, 10 do
		rs:wait()
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
	end
	sound(stealth1, root.Position, 10, math.random(9, 11) / 10)
	Sword.Handle.Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0)
end
function taunt2()
	noidle = true
	for i = 1, 50 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.3, -0.4) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(30), math.rad(30), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.2 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-120 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(-30 - 1 * math.cos(sine / 16)), math.rad(-90 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-20 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(20 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-5 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-20 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(5 + 0.5 * math.cos(sine / 8))), 0.2)
	end
	noidle = false
end
mouse.KeyDown:connect(function(key)
	if debounce == false and plr == lplr then
		debounce = true
		noidle = true
		if key == "e" and stealth == true then
			animsync = true
			walking = true
			tpdash()
			animsync = false
			walking = false
		elseif key == "r" then
			animsync = true
			walking = true
			attack = true
			SPAGET()
			animsync = false
			walking = false
			attack = false
		elseif key == "q" then
			if stealth == true then
				animsync = true
				taunt1()
				animsync = false
			else
				walking = true
				animsync = true
				attack = true
				taunt2()
				animsync = false
				walking = false
				attack = false
			end
		elseif key == "f" then
			animsync = true
			togglesword()
			animsync = false
		end
		noidle = false
		attack = false
		delay(0.2, function()
			debounce = false
		end)
	end
end)
function attackone()
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(80), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(30 - 2 * math.cos(sine / 16)), math.rad(80), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-30 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-30 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
	sound(slashsound1, root.Position, 10, math.random(9, 11) / 10)
	attacking = true
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(-20), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(20 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-40 - 2 * math.cos(sine / 16)), math.rad(-20), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(40 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(40 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
end
function attacktwo()
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(0), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(10 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(30 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-30 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-30 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
	sound(slashsound1, root.Position, 10, math.random(9, 11) / 10)
	attacking = true
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(80), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-40 - 2 * math.cos(sine / 16)), math.rad(80), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(40 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(40 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
end
function attackthree()
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(-40), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(0), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(160), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(5 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(50 - 2 * math.cos(sine / 16)), math.rad(-40), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-50 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-50 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
	sound(slashsound2, root.Position, 10, math.random(8, 10) / 10, 0.1)
	attacking = true
	for i = 1, 15 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-18), math.rad(0 + math.rad(0 + 2 * math.cos(sine / 2))), 0), 0.1)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(math.rad(-5), math.rad(40), 0), 0.1)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-40), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-30 - 1 * math.cos(sine / 8))), 0.2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, -0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(20), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-40 + 1 * math.cos(sine / 8))), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), -2) * CFrame.Angles(math.rad(-45 - 2 * math.cos(sine / 16)), math.rad(40), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.1)
	end
end
local combo = 1
local combo2 = 2
local timer = 0
mouse.Button1Down:connect(function()
	if debounce == false and stealth == true and plr == lplr then
		alreadytouched = {}
		timer = 40
		noidle = true
		animsync = true
		debounce = true
		if combo == 1 then
			if combo2 == 1 then
				attackone()
			else
				attacktwo()
			end
			combo = 2
			animsync = false
		elseif combo == 2 then
			if combo2 == 2 then
				attackone()
			else
				attacktwo()
			end
			combo = 3
			animsync = false
		elseif combo == 3 then
			if combo2 == 1 then
				combo2 = 2
			else
				combo2 = 1
			end
			attackthree()
			combo = 1
			animsync = false
		end
		attacking = false
		noidle = false
		delay(0.1, function()
			debounce = false
		end)
	end
end)
if plr == lplr then
	GUI = Instance.new("ScreenGui", p.PlayerGui)
	GUI.Name = "BlackHoleKyu"
	textlabel = Instance.new("TextLabel", GUI)
	textlabel.AnchorPoint = Vector2.new(1, 1)
	textlabel.Position = UDim2.new(1, 505, 1, -5)
	textlabel.Size = UDim2.new(0, 500, 0, 400)
	textlabel.BorderSizePixel = 5
	textlabel.BorderColor3 = bordercolortitle
	textlabel.BackgroundColor3 = backgroundcolortitle
	textlabel.BackgroundTransparency = 0.1
	textlabel.TextTransparency = 0.1
	textlabel.TextColor3 = Color3.fromHSV(0, 0, 1)
	textlabel.TextScaled = true
	textlabel.TextYAlignment = Enum.TextYAlignment.Center
	textlabel.Font = Enum.Font.SciFi
end
guiopen = false
debouncebutton = false
function openhelp()
	if debouncebutton == false then
		if guiopen == false then
			debouncebutton = true
			textlabel:TweenPosition(UDim2.new(1, -5, 1, -5), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2)
			guiopen = true
			wait(0.2)
		else
			debouncebutton = true
			textlabel:TweenPosition(UDim2.new(1, 505, 1, -5), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.2)
			guiopen = false
			wait(0.2)
		end
	end
	debouncebutton = false
end
if plr == lplr then
	openhelp()
end
mouse.KeyDown:connect(function(key)
	if plr == lplr and key == "h" then
		openhelp()
	end
end)
mouse.Button1Down:connect(function()
	if plr == lplr and debounce == false then
		debounce = true
		debounce = false
	end
end)
mouse.KeyDown:connect(function(key)
end)
local woosh = false
local debounce = false
mouse.KeyDown:connect(function(key)
	if plr == lplr and key == "g" then
		if musicplay then
			musicplay = false
			music("Stop")
		else
			musicplay = true
			music("Stop")
		end
	end
end)
local debounceimpact = false
function jumpimpact()
	if debounceimpact == false then
		debounceimpact = true
		if jumppower < -150 then
			jumppower = -150
		end
		shake(-jumppower / 5)
		sound(131436155, lleg.Position, 5, math.random(7, 8) / 10)
		for i = 1, -jumppower / 20 do
			rs:wait()
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0, 0, 0), 0.05)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, jumppower / 20 - hum.HipHeight, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.05)
		end
		debounceimpact = false
	end
end
max = 0
function renderstepped()
	hum.MaxHealth = 5000
	if lplr ~= plr then
		if p.Character.Parent == nil then
			local model = Instance.new("Model")
			model.Name = p.Name
			p.Character = model
			for i, v in pairs(char:GetChildren()) do
				v.Parent = p.Character
			end
		end
		char = game.Workspace.non
		if p.Character.Parent ~= workspace then
			p.Character.Parent = workspace
		end
		for i, v in pairs(char:GetChildren()) do
			if v:IsA("Accoutrement") then
				if v.Handle:FindFirstChild("Mesh") then
					v.Handle:FindFirstChild("Mesh").Offset = Vector3.new()
					v.Handle.Transparency = 0
				end
			elseif v:IsA("BasePart") then
				v.Anchored = false
				if v:FindFirstChildOfClass("BodyPosition") then
					v:FindFirstChildOfClass("BodyPosition"):Destroy()
				end
				if v:FindFirstChildOfClass("BodyVelocity") then
					v:FindFirstChildOfClass("BodyVelocity"):Destroy()
				end
				if v:FindFirstChildOfClass("BodyGyro") and v:FindFirstChildOfClass("BodyGyro").Name ~= "lolnochara" then
					v:FindFirstChildOfClass("BodyGyro"):Destroy()
				end
				if v:FindFirstChild("Mesh") then
					v:FindFirstChild("Mesh").Offset = Vector3.new()
				end
				if not DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD") then
					local force = Instance.new("Part", DebrisModel)
					force.Name = v.Name .. "FORCEFIELD"
					if v ~= hed then
						force.Size = v.Size + Vector3.new(1, 1, 1) * 0.2
					else
						force.Size = Vector3.new(1, 1, 1) * v.Size.Y + Vector3.new(1, 1, 1) * 0.2
					end
					force.CanCollide = false
					force.Transparency = 1
					force.Color = Color3.new(0, 1, 1)
					force.Material = Enum.Material.Neon
					newWeld(v, force, 0, 0, 0)
				elseif not DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD"):FindFirstChildOfClass("Weld") then
					newWeld(v, DebrisModel:FindFirstChild(v.Name .. "FORCEFIELD"), 0, 0, 0)
				end
				if v.Name ~= "HumanoidRootPart" then
					v.Transparency = 0
				else
					v.Transparency = 1
				end
			end
		end
	end
end

mouse.KeyDown:connect(function(key)
	key = string.lower(key)
	if string.byte(key) == 50 then
		do
			local walkinglocal = true
			local keyConnection = mouse.KeyUp:connect(function(key)
				if string.byte(key) == 50 then
					walkinglocal = false
				end
			end)
			walking = true
			repeat
				rs:wait()
			until walkinglocal == false
			keyConnection:disconnect()
			walking = false
		end
	end
end)
remote.OnClientEvent:Connect(function(k)
	if k == "rs" then
		renderstepped()
	end
end)
rs:connect(function()
	if walking == false then
		change = 1
		movement = 20
		hum.WalkSpeed = 50
	else
		change = 0.5
		movement = 8
		hum.WalkSpeed = 20
	end
	for i, v in pairs(DebrisModel:GetChildren()) do
		if v.Name == "LIGHTNING" then
			local vm = v:FindFirstChildOfClass("BlockMesh")
			vm.Scale = vm.Scale - Vector3.new(0.05, 0.05, 0)
			if 0 >= vm.Scale.X then
				v:Destroy()
			end
		end
	end
	local ray1 = Ray.new(root.Position + Vector3.new(size, 0, 0), Vector3.new(0, -4, 0))
	local part1, endPoint = workspace:FindPartOnRay(ray1, char)
	local ray2 = Ray.new(root.Position - Vector3.new(size, 0, 0), Vector3.new(0, -4, 0))
	local part2, endPoint = workspace:FindPartOnRay(ray2, char)
	local ray3 = Ray.new(root.Position + Vector3.new(0, 0, size / 2), Vector3.new(0, -4, 0))
	local part3, endPoint = workspace:FindPartOnRay(ray3, char)
	local ray4 = Ray.new(root.Position - Vector3.new(0, 0, size / 2), Vector3.new(0, -4, 0))
	local part4, endPoint = workspace:FindPartOnRay(ray4, char)
	local ray5 = Ray.new(root.Position + Vector3.new(size, 0, size / 2), Vector3.new(0, -4, 0))
	local part5, endPoint = workspace:FindPartOnRay(ray5, char)
	local ray6 = Ray.new(root.Position - Vector3.new(size, 0, size / 2), Vector3.new(0, -4, 0))
	local part6, endPoint = workspace:FindPartOnRay(ray6, char)
	local ray7 = Ray.new(root.Position + Vector3.new(size, 0, -size / 2), Vector3.new(0, -4, 0))
	local part7, endPoint = workspace:FindPartOnRay(ray7, char)
	local ray8 = Ray.new(root.Position - Vector3.new(size, 0, -size / 2), Vector3.new(0, -4, 0))
	local part8, endPoint = workspace:FindPartOnRay(ray8, char)
	local ray = Ray.new(root.Position, Vector3.new(0, -6, 0))
	local part, endPoint = workspace:FindPartOnRay(ray, char)
	if part1 or part2 or part3 or part4 or part5 or part6 or part7 or part8 then
		jumped = false
	else
		endPoint = 0
		jumped = true
	end
	if plr == lplr and drew == true then
		if custom_outfits == true then
			p:ClearCharacterAppearance()
			if hed:FindFirstChild("face") then
				hed:FindFirstChild("face"):Destroy()
			end
		end
		if root.Position.Y < workspace.FallenPartsDestroyHeight + 200 then
			char:MoveTo(Vector3.new(0, 0, 0))
		end
		if 0 < hum.Health then
			if hum.Sit == false then
				if (root.Velocity * Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
					animation("Run")
				elseif jumped == true then
					didjump = true
					jumppower = root.Velocity.Y
					animation("Jump")
				elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 5 then
					animation("Idle")
				end
			else
				animation("Sit")
			end
		end
		if didjump and jumped == false then
			jumpimpact(jumppower)
			didjump = false
		end
		if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false and noidle == false then
			if hed:FindFirstChild("Running") then
				hed.Running:Destroy()
			end
			if math.cos(sine / 4) / 2 <= -0.2 and sidestep == 0 then
				local a = sound(131436155, rleg.Position, 2, math.random(7, 8) / 10)
				a.Parent = rleg
				sidestep = 1
			end
			if math.cos(sine / 4) / 2 >= 0.2 and sidestep == 1 then
				local a = sound(131436155, lleg.Position, 2, math.random(7, 8) / 10)
				a.Parent = lleg
				sidestep = 0
			end
		end
		local asd = Vector3.new(math.random(-10000, 10000) / 10000, math.random(-10000, 10000) / 10000, math.random(-10000, 10000) / 10000)
		local asd2 = Vector3.new(math.random(-10000, 10000) / 10000, 0, math.random(-10000, 10000) / 10000)
		if skin_custom then
			hed.BrickColor = skin_color
			torso.BrickColor = skin_color
			rarm.BrickColor = skin_color
			larm.BrickColor = skin_color
			rleg.BrickColor = skin_color
			lleg.BrickColor = skin_color
		end
		remote:FireServer("rs")
		local stuffs = {
			hed.Weld.C0,
			hed.Weld.C1,
			larm.Weld.C0,
			rarm.Weld.C0,
			torso.Weld.C0,
			lleg.Weld.C0,
			rleg.Weld.C0
		}
		remote:FireServer("coords", stuffs, sine, pose, wingpose, animsync, walking, Sword.Handle.Weld.Part0, Sword.Handle.Weld.C0, Sword.Handle.Weld.C1)
	end
	if plr ~= lplr and drew then
		noidle = false
		if animsync == false then
			animation(pose)
		end
	end
	if drew then
		if blinktime > 0 then
			blinktime = blinktime - 1
		end
		if blinktime <= 0 then
			if blinking == false then
				blinking = true
				blinktime = 10
			else
				blinking = false
				blinktime = 250
			end
		end
	end
	sine = sine + change
end)
remote.OnClientEvent:Connect(function(k)
	if k == "stop" then
		script:Destroy()
		if plr == lplr then
			GUI:Destroy()
		end
	end
end)
