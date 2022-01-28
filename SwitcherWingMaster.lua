
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

title = [[

//    R U I N  I X    //

Made by @Kyutatsuki#9221

[Click] Combo punch

[E] First Special
[R] Second Special

[Q] Switch Mode
[H] Open/Close Help GUI

"/e play [id]"
in Visualizer mode

THIS MIGHT HAVE SOME ISSUES
AND NOT SUPPOSED TO BE USED
	
Build 0128
]]
backgroundcolortitle = Color3.fromHSV(0, 0, 0.05)
bordercolortitle = Color3.fromHSV(0, 0, 0.2)
local p = game:GetService("Players").LocalPlayer
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
local rs = run.Heartbeat
local wingpose = "Idle"
local DebrisModel = Instance.new("Model", char)
local lplr = game:GetService("Players").LocalPlayer
--local remote = p.Character:WaitForChild(script.Name .. "remote")
local mouse = lplr:GetMouse()
local pose = "Idle"
local musicplay = true
local musictrack = 1
local blinktime = 0
local blinking = false
local walking = false
local woosh = false
local debounce = false
local currentmusic
DebrisModel.Name = "Debris"
repeat
	rs:wait()
until p.CharacterAppearanceLoaded
flaps = 3
candouble = flaps
animsync = false
noidle = false
shift = false
control = false
modeslist = {}
currentmode = nil
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
	local lookvel2 = lookvel
	if lookvel2 < 0 then
		lookvel2 = 0
	end
	if token == "Idle" then
		if noidle == false then
			if chosen == "Syzyg\195\173a" or chosen == "Delta" or chosen == "DeepSea" then
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(5 + 5 * math.sin(sine / 16)), math.rad(6 - 2 * math.cos(sine / 16))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
			elseif chosen == "OverComplexification" or chosen == "Racemization" then
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, math.rad(-40) + 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-45 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(5 + 5 * math.sin(sine / 16)), math.rad(6 - 2 * math.cos(sine / 16))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(-40), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
			elseif chosen == "Epimerization" then
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)) + math.rad(2 * math.cos(sine)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(5 + 5 * math.sin(sine / 16)) - math.rad(2 * math.cos(sine)), math.rad(6 - 2 * math.cos(sine / 16))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
			elseif chosen == "Dyscontrolled" or chosen == "Atomosphere" then
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, math.rad(40) + 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(45 + 5 * math.sin(sine / 16)), math.rad(45 - 2 * math.cos(sine / 16))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(40), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
			elseif chosen == "IntergalacticSuperNova" or chosen == "LunaricStarLight" or chosen == "GALAXYBURST" or chosen == "PLANET//SHAPER" or chosen == "RUIN\228\185\157" or chosen == "Visualizer" then
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0.05 * math.sin(sine / 16) + 0.15, math.rad(20) + 0.05 * math.cos(sine / 32), 0.01 * math.cos(sine / 32)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-2 + 4 * math.sin(sine / 16)), math.rad(-5 - 5 * math.sin(sine / 16)), math.rad(-6 + 2 * math.cos(sine / 16))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 3, -0.05 - 0.05 * math.cos(sine / 16)) * CFrame.Angles(math.rad(175 + 1 * math.sin(sine / 16)), math.rad(5 + 1 * math.sin(sine / 16)), math.rad(-10 - 1 * math.cos(sine / 16))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1 - 0.1 * math.cos(sine / 16) - hum.HipHeight, 0) * CFrame.Angles(math.rad(0 - 2 * math.cos(sine / 16)), math.rad(20), math.rad(0 - 1 * math.cos(sine / 32))), 0.1)
			end
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(0, llegendPoint.Y - lleg.Position.Y, 0) * CFrame.new(-0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(10), math.rad(-5 + 1 * math.cos(sine / 32))), 0.1)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0, rlegendPoint.Y - rleg.Position.Y, 0) * CFrame.new(0.5, 0 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-1 + 2 * math.cos(sine / 16)), math.rad(-10), math.rad(5 + 1 * math.cos(sine / 32))), 0.1)
	elseif token == "Run" then
		if noidle == false then
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1 - 0.1 * lookvel) * CFrame.Angles(0, torsorotY, math.rad(0) + torsorotY), 0.4)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles((change / 10 * math.cos(sine / 2) + 0.1) * lookvel ^ 2, -(change / 10) * math.cos(sine / 4) - torsorotY / 5, change / 5 * math.cos(sine / 4)), 0.1)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 + 0.12 * (lookvector / hum.WalkSpeed) ^ 2 - movement / 40 * math.cos(sine / 4) / 3, movement / 150 + movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 - movement * 2 * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * (lookvector / hum.WalkSpeed), math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(movement * 1 * 0.2 - movement * 1 * math.cos(sine / 2) * (lookvector / hum.WalkSpeed)) + math.rad(-5 * (rightvector / hum.WalkSpeed))), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.12 * (lookvector / hum.WalkSpeed) ^ 2 + movement / 40 * math.cos(sine / 4) / 3, movement / 150 - movement / 40 * math.cos(sine / 4)) * CFrame.Angles((math.rad(-5 + movement * 2 * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * (lookvector / hum.WalkSpeed), math.rad(0 - movement * 2 * math.cos(sine / 4)), -math.rad(-(movement * 1) * 0.2 + movement * 1 * math.cos(sine / 2) * (lookvector / hum.WalkSpeed)) + math.rad(-5 * (rightvector / hum.WalkSpeed))), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.05 + change / 2 * math.cos(sine / 2), 0) * CFrame.Angles(math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * lookvel, torsorotY2 + math.rad(0 - 4 * math.sin(sine / 4)), math.rad(-(change * 20) - movement / 20 * math.cos(sine / 2)) * rightvel + torsorotY2 + math.rad(0 - 1 * math.cos(sine / 4))), 0.1)
		end
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.85 - movement / 15 * math.cos(sine / 4) / 2, (-0.1 + movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 - movement * math.cos(sine / 4)) + -(movement / 10) * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.85 + movement / 15 * math.cos(sine / 4) / 2, (-0.1 - movement / 15 * math.cos(sine / 4)) * (0.5 + 0.5 * lookvel)) * CFrame.Angles((math.rad(-10 * lookvel + change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * lookvel, math.rad(0 + movement * 2 * math.cos(sine / 4)), (math.rad(change * 5 + movement * math.cos(sine / 4)) + movement / 10 * math.sin(sine / 4)) * (rightvector / (hum.WalkSpeed * 2))), 0.2)
	elseif token == "Jump" then
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
function animationwing(token)
	if plr == lplr then
		wingpose = token
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
	local lookvel2 = lookvel
	if lookvel2 < 0 then
		lookvel2 = 0
	end
	local asdfw = 0.1
	if token == "Idle" then
		leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-160 + 12 * math.sin(sine / 16))), 0.05)
		leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-130 + 10 * math.sin(sine / 16))), 0.05)
		leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-100 + 8 * math.sin(sine / 16))), 0.05)
		leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 16))), 0.05)
		leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 16))), 0.05)
		leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 16))), 0.05)
		rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(160 - 12 * math.sin(sine / 16))), 0.05)
		rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(130 - 10 * math.sin(sine / 16))), 0.05)
		rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(100 - 8 * math.sin(sine / 16))), 0.05)
		rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 16))), 0.05)
		rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 16))), 0.05)
		rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 16))), 0.05)
	elseif token == "Run" then
		leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-140 + 12 * math.sin(sine / 3))), 0.05)
		leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-120 + 10 * math.sin(sine / 3))), 0.05)
		leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-100 + 8 * math.sin(sine / 3))), 0.05)
		leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 3))), 0.05)
		leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 3))), 0.05)
		leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 3))), 0.05)
		rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(140 - 12 * math.sin(sine / 3))), 0.05)
		rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(120 - 10 * math.sin(sine / 3))), 0.05)
		rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(100 - 8 * math.sin(sine / 3))), 0.05)
		rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 3))), 0.05)
		rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 3))), 0.05)
		rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 3))), 0.05)
	elseif token == "Jump" then
		if root.Velocity.Y < 0 then
			leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-165 + 12 * math.sin(sine / 16))), 0.05)
			leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-160 + 10 * math.sin(sine / 16))), 0.05)
			leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(-155 + 8 * math.sin(sine / 16))), 0.05)
			leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-85 - 12 * math.cos(sine / 16))), 0.05)
			leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-80 - 10 * math.cos(sine / 16))), 0.05)
			leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-75 - 8 * math.cos(sine / 16))), 0.05)
			rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(165 - 12 * math.sin(sine / 16))), 0.05)
			rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(160 - 10 * math.sin(sine / 16))), 0.05)
			rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70 * (0.5 + 0.5 * (lookvector / hum.WalkSpeed))), math.rad(155 - 8 * math.sin(sine / 16))), 0.05)
			rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-85 - 12 * math.cos(sine / 16))), 0.05)
			rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-80 - 10 * math.cos(sine / 16))), 0.05)
			rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-75 - 8 * math.cos(sine / 16))), 0.05)
		else
			leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-160 + 12 * math.sin(sine / 16))), 0.05)
			leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-130 + 10 * math.sin(sine / 16))), 0.05)
			leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-100 + 8 * math.sin(sine / 16))), 0.05)
			leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-80 - 12 * math.cos(sine / 16))), 0.05)
			leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-60 - 10 * math.cos(sine / 16))), 0.05)
			leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 8 * math.cos(sine / 16))), 0.05)
			rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(160 - 12 * math.sin(sine / 16))), 0.05)
			rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(130 - 10 * math.sin(sine / 16))), 0.05)
			rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(100 - 8 * math.sin(sine / 16))), 0.05)
			rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-80 - 12 * math.cos(sine / 16))), 0.05)
			rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-60 - 10 * math.cos(sine / 16))), 0.05)
			rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 8 * math.cos(sine / 16))), 0.05)
		end
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
if torso:FindFirstChild("MusicRuin") then
	torso:FindFirstChild("MusicRuin"):Destroy()
end
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
				equalizer.LowGain = 10
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

function music(id)
	currentmusic = id
	musik(id)
	--remote:FireServer("musik", id)
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
	local list = workspace:children()
	local torso = {}
	local temp, human, temp2
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2 ~= char then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and dist > (temp.Position - pos).magnitude then
				table.insert(torso, temp)
				dist = (temp.Position - pos).magnitude
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
	if tostring(LateralAngle) == "-1.#IND" then
		LateralAngle = 0
	end
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

function sound(id, position, vol, pitch, start, finish)
	if plr == lplr then
		local part = sond(id, position, vol, pitch, start, finish)
		--remote:FireServer("sond", id, position, vol, pitch, start, finish)
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
	hum.CameraOffset = Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * (shaking / 100)
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

function Effect(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
	if plr == lplr then
		local part = Effekt(mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
		--remote:FireServer("effekt", mesh, size, transparency, material, color, position, rotation, positionchange, sizechange, rotationchange, transparencychange, acceleration)
		return part
	end
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

function Lightning(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	local part = litnin(Part0, Part1, Times, Offset, Color, Thickness, Trans)
	--remote:FireServer("litnin", Part0, Part1, Times, Offset, Color, Thickness, Trans)
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

function createimpact()
	coroutine.resume(coroutine.create(function()
		local ray = Ray.new(root.Position, Vector3.new(0, -1000, 0))
		local part, endPoint = workspace:FindPartOnRay(ray, char)
		createimpakt(part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
		--remote:FireServer("impakt", part.Material, part.Color, part.TopSurface, part.BottomSurface, endPoint, part.Orientation)
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
hum.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
for i, v in pairs(char:GetChildren()) do
	if v.Name:lower():find(("headphone"):lower()) or v.Name:lower():find(("wing"):lower()) then
		v:Destroy()
	end
end
if torso:FindFirstChildOfClass("PointLight") then
	torso:FindFirstChildOfClass("PointLight"):Destroy()
end
leftwing = {}
rightwing = {}
light = Instance.new("PointLight", torso)
Model0 = Instance.new("Model")
Model1 = Instance.new("Model")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
SpecialMesh4 = Instance.new("SpecialMesh")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Part7 = Instance.new("Part")
SpecialMesh8 = Instance.new("SpecialMesh")
Part9 = Instance.new("Part")
SpecialMesh10 = Instance.new("SpecialMesh")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
SpecialMesh13 = Instance.new("SpecialMesh")
Part14 = Instance.new("Part")
SpecialMesh15 = Instance.new("SpecialMesh")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
SpecialMesh18 = Instance.new("SpecialMesh")
Part19 = Instance.new("Part")
BlockMesh20 = Instance.new("BlockMesh")
Model21 = Instance.new("Model")
Part22 = Instance.new("Part")
BlockMesh23 = Instance.new("BlockMesh")
Part24 = Instance.new("Part")
BlockMesh25 = Instance.new("BlockMesh")
Part26 = Instance.new("Part")
BlockMesh27 = Instance.new("BlockMesh")
Part28 = Instance.new("Part")
BlockMesh29 = Instance.new("BlockMesh")
Part30 = Instance.new("Part")
BlockMesh31 = Instance.new("BlockMesh")
Part32 = Instance.new("Part")
BlockMesh33 = Instance.new("BlockMesh")
Part34 = Instance.new("Part")
BlockMesh35 = Instance.new("BlockMesh")
Part36 = Instance.new("Part")
BlockMesh37 = Instance.new("BlockMesh")
Part38 = Instance.new("Part")
BlockMesh39 = Instance.new("BlockMesh")
Part40 = Instance.new("Part")
BlockMesh41 = Instance.new("BlockMesh")
Part42 = Instance.new("Part")
BlockMesh43 = Instance.new("BlockMesh")
Part44 = Instance.new("Part")
BlockMesh45 = Instance.new("BlockMesh")
Part46 = Instance.new("Part")
BlockMesh47 = Instance.new("BlockMesh")
Part48 = Instance.new("Part")
BlockMesh49 = Instance.new("BlockMesh")
Part50 = Instance.new("Part")
BlockMesh51 = Instance.new("BlockMesh")
Part52 = Instance.new("Part")
BlockMesh53 = Instance.new("BlockMesh")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
Part59 = Instance.new("Part")
Part60 = Instance.new("Part")
Model61 = Instance.new("Model")
Part62 = Instance.new("Part")
SpecialMesh63 = Instance.new("SpecialMesh")
Part64 = Instance.new("Part")
SpecialMesh65 = Instance.new("SpecialMesh")
Part66 = Instance.new("Part")
Model67 = Instance.new("Model")
Part68 = Instance.new("Part")
SpecialMesh69 = Instance.new("SpecialMesh")
Part70 = Instance.new("Part")
Part71 = Instance.new("Part")
Model72 = Instance.new("Model")
Part73 = Instance.new("Part")
Part74 = Instance.new("Part")
Part75 = Instance.new("Part")
Part76 = Instance.new("Part")
Part77 = Instance.new("Part")
Part78 = Instance.new("Part")
Part79 = Instance.new("Part")
Part80 = Instance.new("Part")
Part81 = Instance.new("Part")
Part82 = Instance.new("Part")
Part83 = Instance.new("Part")
Part84 = Instance.new("Part")
Part85 = Instance.new("Part")
Part86 = Instance.new("Part")
Part87 = Instance.new("Part")
Part88 = Instance.new("Part")
Model89 = Instance.new("Model")
Part90 = Instance.new("Part")
SpecialMesh91 = Instance.new("SpecialMesh")
Part92 = Instance.new("Part")
SpecialMesh93 = Instance.new("SpecialMesh")
Part94 = Instance.new("Part")
SpecialMesh95 = Instance.new("SpecialMesh")
Part96 = Instance.new("Part")
BlockMesh97 = Instance.new("BlockMesh")
Part98 = Instance.new("Part")
Part99 = Instance.new("Part")
Part100 = Instance.new("Part")
BlockMesh101 = Instance.new("BlockMesh")
Part102 = Instance.new("Part")
BlockMesh103 = Instance.new("BlockMesh")
Part104 = Instance.new("Part")
BlockMesh105 = Instance.new("BlockMesh")
Part106 = Instance.new("Part")
BlockMesh107 = Instance.new("BlockMesh")
Model108 = Instance.new("Model")
Part109 = Instance.new("Part")
Part110 = Instance.new("Part")
SpecialMesh111 = Instance.new("SpecialMesh")
Part112 = Instance.new("Part")
BlockMesh113 = Instance.new("BlockMesh")
Part114 = Instance.new("Part")
Part115 = Instance.new("Part")
SpecialMesh116 = Instance.new("SpecialMesh")
Part117 = Instance.new("Part")
BlockMesh118 = Instance.new("BlockMesh")
Part119 = Instance.new("Part")
BlockMesh120 = Instance.new("BlockMesh")
Part121 = Instance.new("Part")
Part122 = Instance.new("Part")
Part123 = Instance.new("Part")
BlockMesh124 = Instance.new("BlockMesh")
Part125 = Instance.new("Part")
Part126 = Instance.new("Part")
SpecialMesh127 = Instance.new("SpecialMesh")
Part128 = Instance.new("Part")
Part129 = Instance.new("Part")
Part130 = Instance.new("Part")
Model131 = Instance.new("Model")
Part132 = Instance.new("Part")
Part133 = Instance.new("Part")
Part134 = Instance.new("Part")
Part135 = Instance.new("Part")
Part136 = Instance.new("Part")
Model0.Parent = char
Model1.Name = "b"
Model1.Parent = Model0
Part2.Parent = Model1
Part2.Anchored = true
Part2.CanCollide = false
Part2.Size = Vector3.new(1.10000002, 0.580000341, 1.10000002)
Part2.CFrame = CFrame.new(-3.85500097, 24.3250046, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(-3.85500097, 24.3250046, 17)
Part2.Color = Color3.new(1, 0, 0)
Part3.Parent = Model1
Part3.Rotation = Vector3.new(0, 0, 180)
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(0.0500000007, 0.0800002813, 0.440000027)
Part3.CFrame = CFrame.new(-3.325001, 23.8150043, 16.6700001, -1, -8.68524714E-15, 5.56362707E-8, 3.82137093E-15, -0.99999994, -8.74227766E-8, 5.56362707E-8, -8.74227695E-8, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(-3.325001, 23.8150043, 16.6700001)
Part3.Color = Color3.new(1, 0, 0)
SpecialMesh4.Parent = Part3
SpecialMesh4.Scale = Vector3.new(0.800000072, 1, 1)
SpecialMesh4.MeshType = Enum.MeshType.Wedge
SpecialMesh4.Scale = Vector3.new(0.800000072, 1, 1)
Part5.Parent = Model1
Part5.Rotation = Vector3.new(180, 0, 0)
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.0500000007, 0.0800002813, 0.440000027)
Part5.CFrame = CFrame.new(-3.325001, 23.8150043, 17.3299999, 1, 1.63279882E-14, -1.43059054E-7, 3.82137093E-15, -0.99999994, -8.74227766E-8, -1.43059054E-7, 8.74227695E-8, -1)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(-3.325001, 23.8150043, 17.3299999)
Part5.Color = Color3.new(1, 0, 0)
SpecialMesh6.Parent = Part5
SpecialMesh6.Scale = Vector3.new(0.800000072, 1, 1)
SpecialMesh6.MeshType = Enum.MeshType.Wedge
SpecialMesh6.Scale = Vector3.new(0.800000072, 1, 1)
Part7.Parent = Model1
Part7.Rotation = Vector3.new(180, 90, 0)
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(1.10000002, 0.18000029, 1.05999994)
Part7.CFrame = CFrame.new(-3.87500095, 23.9450035, 17, 4.37113883E-8, -8.74227695E-8, 1, 3.82137093E-15, -0.99999994, -8.74227766E-8, 1, 7.64274101E-15, -4.37113883E-8)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(-3.87500095, 23.9450035, 17)
Part7.Color = Color3.new(1, 0, 0)
SpecialMesh8.Parent = Part7
SpecialMesh8.MeshType = Enum.MeshType.Wedge
Part9.Parent = Model1
Part9.Rotation = Vector3.new(0, -90, 0)
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(1.12, 0.18000029, 0.469999999)
Part9.CFrame = CFrame.new(-3.33000088, 24.7750034, 17, 1.31134158E-7, 1.33629927E-21, -1, -7.64274186E-15, 0.99999994, 0, 1, 7.64274101E-15, 1.31134158E-7)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(-3.33000088, 24.7750034, 17)
Part9.Color = Color3.new(1, 0, 0)
SpecialMesh10.Parent = Part9
SpecialMesh10.MeshType = Enum.MeshType.Wedge
Part11.Parent = Model1
Part11.Rotation = Vector3.new(-180, 90, 0)
Part11.Anchored = true
Part11.CanCollide = false
Part11.Size = Vector3.new(1.12, 0.230000257, 1.32000005)
Part11.CFrame = CFrame.new(-3.75500107, 24.5700035, 17, -2.18556934E-7, 1.33629927E-21, 1, -8.74227837E-8, -0.99999994, -1.91068542E-14, 1, -8.74227766E-8, 2.18556934E-7)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Position = Vector3.new(-3.75500107, 24.5700035, 17)
Part11.Color = Color3.new(1, 0, 0)
Part12.Parent = Model1
Part12.Rotation = Vector3.new(-180, 90, 0)
Part12.Anchored = true
Part12.CanCollide = false
Part12.Size = Vector3.new(1.12, 0.140000254, 1.09000003)
Part12.CFrame = CFrame.new(-3.85000086, 24.385004, 17, -2.18556934E-7, 1.33629927E-21, 1, -8.74227837E-8, -0.99999994, -1.91068542E-14, 1, -8.74227766E-8, 2.18556934E-7)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Position = Vector3.new(-3.85000086, 24.385004, 17)
Part12.Color = Color3.new(1, 0, 0)
SpecialMesh13.Parent = Part12
SpecialMesh13.MeshType = Enum.MeshType.Wedge
Part14.Parent = Model1
Part14.Rotation = Vector3.new(-180, -90, 0)
Part14.Anchored = true
Part14.CanCollide = false
Part14.Size = Vector3.new(1.12, 0.140000269, 0.209999949)
Part14.CFrame = CFrame.new(-3.200001, 24.385004, 17, 1.31134158E-7, 1.33629927E-21, -1, 8.74227837E-8, -0.99999994, 1.14641124E-14, -1, -8.74227766E-8, -1.31134158E-7)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Position = Vector3.new(-3.200001, 24.385004, 17)
Part14.Color = Color3.new(1, 0, 0)
SpecialMesh15.Parent = Part14
SpecialMesh15.MeshType = Enum.MeshType.Wedge
Part16.Parent = Model1
Part16.Rotation = Vector3.new(180, 90, 0)
Part16.Anchored = true
Part16.CanCollide = false
Part16.Size = Vector3.new(0.219999984, 0.0800002813, 0.209999949)
Part16.CFrame = CFrame.new(-3.41000104, 23.8150043, 17, 4.37113883E-8, -8.74227695E-8, 1, 3.82137093E-15, -0.99999994, -8.74227766E-8, 1, 7.64274101E-15, -4.37113883E-8)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Position = Vector3.new(-3.41000104, 23.8150043, 17)
Part16.Color = Color3.new(1, 0, 0)
Part17.Parent = Model1
Part17.Rotation = Vector3.new(0, 90, 0)
Part17.Anchored = true
Part17.CanCollide = false
Part17.Size = Vector3.new(1.12, 0.18000029, 0.839999974)
Part17.CFrame = CFrame.new(-3.98500109, 24.7750034, 17, -4.37113883E-8, -6.68149637E-22, 1, -7.64274186E-15, 0.99999994, 0, -1, -7.64274101E-15, -4.37113883E-8)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Position = Vector3.new(-3.98500109, 24.7750034, 17)
Part17.Color = Color3.new(1, 0, 0)
SpecialMesh18.Parent = Part17
SpecialMesh18.MeshType = Enum.MeshType.Wedge
Part19.Parent = Model1
Part19.Anchored = true
Part19.CanCollide = false
Part19.Size = Vector3.new(0.0500000007, 0.180000365, 1.10000002)
Part19.CFrame = CFrame.new(-3.32500076, 23.9450035, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.Position = Vector3.new(-3.32500076, 23.9450035, 17)
Part19.Color = Color3.new(1, 0, 0)
BlockMesh20.Parent = Part19
BlockMesh20.Scale = Vector3.new(0.799999237, 1, 1)
BlockMesh20.Scale = Vector3.new(0.799999237, 1, 1)
Model21.Name = "e"
Model21.Parent = Model0
Part22.Parent = Model21
Part22.Rotation = Vector3.new(90, 85, -90)
Part22.Anchored = true
Part22.CanCollide = false
Part22.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part22.CFrame = CFrame.new(-4.37500095, 23.3500042, 16.8449993, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Position = Vector3.new(-4.37500095, 23.3500042, 16.8449993)
Part22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh23.Parent = Part22
BlockMesh23.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh23.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part24.Parent = Model21
Part24.Rotation = Vector3.new(-5, 0, 0)
Part24.Anchored = true
Part24.CanCollide = false
Part24.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part24.CFrame = CFrame.new(-4.01000071, 23.3498516, 17.5165138, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Position = Vector3.new(-4.01000071, 23.3498516, 17.5165138)
Part24.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh25.Parent = Part24
BlockMesh25.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh25.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part26.Parent = Model21
Part26.Rotation = Vector3.new(5, 0, 0)
Part26.Anchored = true
Part26.CanCollide = false
Part26.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part26.CFrame = CFrame.new(-4.01000071, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Position = Vector3.new(-4.01000071, 23.3500042, 16.4799995)
Part26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh27.Parent = Part26
BlockMesh27.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh27.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part28.Parent = Model21
Part28.Rotation = Vector3.new(5, 0, 0)
Part28.Anchored = true
Part28.CanCollide = false
Part28.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part28.CFrame = CFrame.new(-3.70000076, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Position = Vector3.new(-3.70000076, 23.3500042, 16.4799995)
Part28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh29.Parent = Part28
BlockMesh29.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh29.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part30.Parent = Model21
Part30.Rotation = Vector3.new(5, 0, 0)
Part30.Anchored = true
Part30.CanCollide = false
Part30.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part30.CFrame = CFrame.new(-3.40000081, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Position = Vector3.new(-3.40000081, 23.3500042, 16.4799995)
Part30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh31.Parent = Part30
BlockMesh31.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh31.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part32.Parent = Model21
Part32.Rotation = Vector3.new(-5, 0, 0)
Part32.Anchored = true
Part32.CanCollide = false
Part32.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part32.CFrame = CFrame.new(-4.3100009, 23.3498516, 17.5165138, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Position = Vector3.new(-4.3100009, 23.3498516, 17.5165138)
Part32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh33.Parent = Part32
BlockMesh33.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh33.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part34.Parent = Model21
Part34.Rotation = Vector3.new(-5, 0, 0)
Part34.Anchored = true
Part34.CanCollide = false
Part34.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part34.CFrame = CFrame.new(-3.40000081, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Position = Vector3.new(-3.40000081, 23.3500042, 17.5200005)
Part34.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh35.Parent = Part34
BlockMesh35.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh35.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part36.Parent = Model21
Part36.Rotation = Vector3.new(-90, 85, 90)
Part36.Anchored = true
Part36.CanCollide = false
Part36.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part36.CFrame = CFrame.new(-3.33674407, 23.3499279, 16.8449993, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.Position = Vector3.new(-3.33674407, 23.3499279, 16.8449993)
Part36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh37.Parent = Part36
BlockMesh37.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh37.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part38.Parent = Model21
Part38.Rotation = Vector3.new(-90, 85, 90)
Part38.Anchored = true
Part38.CanCollide = false
Part38.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part38.CFrame = CFrame.new(-3.33674407, 23.3499279, 16.5450001, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Position = Vector3.new(-3.33674407, 23.3499279, 16.5450001)
Part38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh39.Parent = Part38
BlockMesh39.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh39.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part40.Parent = Model21
Part40.Rotation = Vector3.new(90, 85, -90)
Part40.Anchored = true
Part40.CanCollide = false
Part40.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part40.CFrame = CFrame.new(-4.37500095, 23.3500042, 17.4449997, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.Position = Vector3.new(-4.37500095, 23.3500042, 17.4449997)
Part40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh41.Parent = Part40
BlockMesh41.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh41.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part42.Parent = Model21
Part42.Rotation = Vector3.new(90, 85, -90)
Part42.Anchored = true
Part42.CanCollide = false
Part42.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part42.CFrame = CFrame.new(-4.37500095, 23.3500042, 17.1450005, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.Position = Vector3.new(-4.37500095, 23.3500042, 17.1450005)
Part42.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh43.Parent = Part42
BlockMesh43.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh43.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part44.Parent = Model21
Part44.Rotation = Vector3.new(-90, 85, 90)
Part44.Anchored = true
Part44.CanCollide = false
Part44.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part44.CFrame = CFrame.new(-3.33674407, 23.3499279, 17.1450005, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.Position = Vector3.new(-3.33674407, 23.3499279, 17.1450005)
Part44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh45.Parent = Part44
BlockMesh45.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh45.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part46.Parent = Model21
Part46.Rotation = Vector3.new(-5, 0, 0)
Part46.Anchored = true
Part46.CanCollide = false
Part46.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part46.CFrame = CFrame.new(-3.70000076, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.Position = Vector3.new(-3.70000076, 23.3500042, 17.5200005)
Part46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh47.Parent = Part46
BlockMesh47.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh47.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part48.Parent = Model21
Part48.Rotation = Vector3.new(-90, 85, 90)
Part48.Anchored = true
Part48.CanCollide = false
Part48.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part48.CFrame = CFrame.new(-3.33674407, 23.3499279, 17.4449997, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.Position = Vector3.new(-3.33674407, 23.3499279, 17.4449997)
Part48.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh49.Parent = Part48
BlockMesh49.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh49.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part50.Parent = Model21
Part50.Rotation = Vector3.new(5, 0, 0)
Part50.Anchored = true
Part50.CanCollide = false
Part50.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part50.CFrame = CFrame.new(-4.3100009, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.Position = Vector3.new(-4.3100009, 23.3500042, 16.4799995)
Part50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh51.Parent = Part50
BlockMesh51.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh51.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part52.Parent = Model21
Part52.Rotation = Vector3.new(90, 85, -90)
Part52.Anchored = true
Part52.CanCollide = false
Part52.Size = Vector3.new(0.0500000007, 0.370000333, 0.0500000007)
Part52.CFrame = CFrame.new(-4.37500095, 23.3500042, 16.5450001, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.Position = Vector3.new(-4.37500095, 23.3500042, 16.5450001)
Part52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
BlockMesh53.Parent = Part52
BlockMesh53.Scale = Vector3.new(0.999999881, 1, 0.799999595)
BlockMesh53.Scale = Vector3.new(0.999999881, 1, 0.799999595)
Part54.Parent = Model21
Part54.Anchored = true
Part54.CanCollide = false
Part54.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part54.CFrame = CFrame.new(-3.85500097, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.Position = Vector3.new(-3.85500097, 23.2100029, 17)
Part54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part55.Parent = Model21
Part55.Anchored = true
Part55.CanCollide = false
Part55.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part55.CFrame = CFrame.new(-3.54500079, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.Position = Vector3.new(-3.54500079, 23.2100029, 17)
Part55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part56.Parent = Model21
Part56.Anchored = true
Part56.CanCollide = false
Part56.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part56.CFrame = CFrame.new(-4.16500092, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.Position = Vector3.new(-4.16500092, 23.2100029, 17)
Part56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part57.Parent = Model21
Part57.Rotation = Vector3.new(0, 90, 0)
Part57.Anchored = true
Part57.CanCollide = false
Part57.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part57.CFrame = CFrame.new(-3.86000085, 23.2100029, 17.2950001, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.Position = Vector3.new(-3.86000085, 23.2100029, 17.2950001)
Part57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part58.Parent = Model21
Part58.Rotation = Vector3.new(0, 90, 0)
Part58.Anchored = true
Part58.CanCollide = false
Part58.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part58.CFrame = CFrame.new(-3.86000085, 23.2100029, 16.6949997, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.Position = Vector3.new(-3.86000085, 23.2100029, 16.6949997)
Part58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part59.Parent = Model21
Part59.Rotation = Vector3.new(0, 90, 0)
Part59.Anchored = true
Part59.CanCollide = false
Part59.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part59.CFrame = CFrame.new(-3.86000085, 23.2100029, 16.9950008, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.TopSurface = Enum.SurfaceType.Smooth
Part59.Position = Vector3.new(-3.86000085, 23.2100029, 16.9950008)
Part59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part60.Parent = Model21
Part60.Rotation = Vector3.new(0, 90, 0)
Part60.Anchored = true
Part60.CanCollide = false
Part60.Size = Vector3.new(0.140000001, 0.250000328, 1.05999994)
Part60.CFrame = CFrame.new(-3.86000085, 23.2100029, 17.2950001, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.Position = Vector3.new(-3.86000085, 23.2100029, 17.2950001)
Part60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Model61.Name = "c"
Model61.Parent = Model0
Part62.Parent = Model61
Part62.Rotation = Vector3.new(0, -90, 0)
Part62.Anchored = true
Part62.CanCollide = false
Part62.Size = Vector3.new(1.03999996, 0.0500002764, 1.03999984)
Part62.CFrame = CFrame.new(-3.85500097, 23.6500034, 17, 4.37113883E-8, -7.10542736E-15, -1, 3.82137093E-15, 0.99999994, 7.10542736E-15, 1, -3.82137008E-15, 4.37113883E-8)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.Position = Vector3.new(-3.85500097, 23.6500034, 17)
Part62.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh63.Parent = Part62
SpecialMesh63.MeshType = Enum.MeshType.Wedge
Part64.Parent = Model61
Part64.Rotation = Vector3.new(180, 90, 0)
Part64.Anchored = true
Part64.CanCollide = false
Part64.Size = Vector3.new(1.03999996, 0.0700002834, 1.03999984)
Part64.CFrame = CFrame.new(-3.85500097, 23.4200039, 17, 4.37113883E-8, -8.74227695E-8, 1, 3.82137093E-15, -0.99999994, -8.74227766E-8, 1, 7.64274101E-15, -4.37113883E-8)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.Position = Vector3.new(-3.85500097, 23.4200039, 17)
Part64.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh65.Parent = Part64
SpecialMesh65.MeshType = Enum.MeshType.Wedge
Part66.Parent = Model61
Part66.Anchored = true
Part66.CanCollide = false
Part66.Size = Vector3.new(1.03999996, 0.17000027, 1.03999996)
Part66.CFrame = CFrame.new(-3.85500097, 23.5400047, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.Position = Vector3.new(-3.85500097, 23.5400047, 17)
Part66.Color = Color3.new(0.972549, 0.972549, 0.972549)
Model67.Name = "a"
Model67.Parent = Model0
Part68.Parent = Model67
Part68.Rotation = Vector3.new(180, 90, 0)
Part68.Anchored = true
Part68.CanCollide = false
Part68.Size = Vector3.new(1.01999998, 0.260000288, 0.569999993)
Part68.CFrame = CFrame.new(-4.08000088, 22.7950039, 17, 4.37113883E-8, -8.74227695E-8, 1, 3.82137093E-15, -0.99999994, -8.74227766E-8, 1, 7.64274101E-15, -4.37113883E-8)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.Position = Vector3.new(-4.08000088, 22.7950039, 17)
Part68.Color = Color3.new(0.768628, 0.156863, 0.109804)
SpecialMesh69.Parent = Part68
SpecialMesh69.MeshType = Enum.MeshType.Wedge
Part70.Parent = Model67
Part70.Anchored = true
Part70.CanCollide = false
Part70.Size = Vector3.new(1.01999998, 1.77000034, 1.01999998)
Part70.CFrame = CFrame.new(-3.85500097, 23.8000031, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.Position = Vector3.new(-3.85500097, 23.8000031, 17)
Part70.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part71.Parent = Model67
Part71.Anchored = true
Part71.CanCollide = false
Part71.Size = Vector3.new(0.450000018, 0.260000229, 1.01999998)
Part71.CFrame = CFrame.new(-3.57000089, 22.7950039, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.Position = Vector3.new(-3.57000089, 22.7950039, 17)
Part71.Color = Color3.new(0.768628, 0.156863, 0.109804)
Model72.Name = "f"
Model72.Parent = Model0
Part73.Parent = Model72
Part73.Rotation = Vector3.new(-90, 85, 90)
Part73.Anchored = true
Part73.CanCollide = false
Part73.Size = Vector3.new(0.0699999928, 0.270000309, 0.05999998)
Part73.CFrame = CFrame.new(-3.33500099, 23.3500042, 16.8449993, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.Position = Vector3.new(-3.33500099, 23.3500042, 16.8449993)
Part73.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part74.Parent = Model72
Part74.Rotation = Vector3.new(-90, 85, 90)
Part74.Anchored = true
Part74.CanCollide = false
Part74.Size = Vector3.new(0.0699999928, 0.270000309, 0.05999998)
Part74.CFrame = CFrame.new(-3.33500099, 23.3500042, 17.4449997, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.Position = Vector3.new(-3.33500099, 23.3500042, 17.4449997)
Part74.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part75.Parent = Model72
Part75.Rotation = Vector3.new(5, 0, 0)
Part75.Anchored = true
Part75.CanCollide = false
Part75.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part75.CFrame = CFrame.new(-4.3100009, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.Position = Vector3.new(-4.3100009, 23.3500042, 16.4799995)
Part75.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part76.Parent = Model72
Part76.Rotation = Vector3.new(-5, 0, 0)
Part76.Anchored = true
Part76.CanCollide = false
Part76.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part76.CFrame = CFrame.new(-3.70000076, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.Position = Vector3.new(-3.70000076, 23.3500042, 17.5200005)
Part76.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part77.Parent = Model72
Part77.Rotation = Vector3.new(-5, 0, 0)
Part77.Anchored = true
Part77.CanCollide = false
Part77.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part77.CFrame = CFrame.new(-4.01000071, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.Position = Vector3.new(-4.01000071, 23.3500042, 17.5200005)
Part77.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part78.Parent = Model72
Part78.Rotation = Vector3.new(-90, 85, 90)
Part78.Anchored = true
Part78.CanCollide = false
Part78.Size = Vector3.new(0.0699999928, 0.270000309, 0.05999998)
Part78.CFrame = CFrame.new(-3.33500099, 23.3500042, 16.5450001, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.Position = Vector3.new(-3.33500099, 23.3500042, 16.5450001)
Part78.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part79.Parent = Model72
Part79.Rotation = Vector3.new(90, 85, -90)
Part79.Anchored = true
Part79.CanCollide = false
Part79.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part79.CFrame = CFrame.new(-4.37500095, 23.3500042, 17.4449997, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.Position = Vector3.new(-4.37500095, 23.3500042, 17.4449997)
Part79.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part80.Parent = Model72
Part80.Rotation = Vector3.new(90, 85, -90)
Part80.Anchored = true
Part80.CanCollide = false
Part80.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part80.CFrame = CFrame.new(-4.37500095, 23.3500042, 17.1450005, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.Position = Vector3.new(-4.37500095, 23.3500042, 17.1450005)
Part80.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part81.Parent = Model72
Part81.Rotation = Vector3.new(-90, 85, 90)
Part81.Anchored = true
Part81.CanCollide = false
Part81.Size = Vector3.new(0.0699999928, 0.270000309, 0.05999998)
Part81.CFrame = CFrame.new(-3.33500099, 23.3500042, 17.1450005, -4.37113883E-8, -0.0871553123, 0.99619472, 0, 0.996194601, 0.0871552825, -1, 3.80967968E-9, -4.35450502E-8)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.Position = Vector3.new(-3.33500099, 23.3500042, 17.1450005)
Part81.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part82.Parent = Model72
Part82.Rotation = Vector3.new(5, 0, 0)
Part82.Anchored = true
Part82.CanCollide = false
Part82.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part82.CFrame = CFrame.new(-3.70000076, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.Position = Vector3.new(-3.70000076, 23.3500042, 16.4799995)
Part82.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part83.Parent = Model72
Part83.Rotation = Vector3.new(-5, 0, 0)
Part83.Anchored = true
Part83.CanCollide = false
Part83.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part83.CFrame = CFrame.new(-3.40000081, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part83.BottomSurface = Enum.SurfaceType.Smooth
Part83.TopSurface = Enum.SurfaceType.Smooth
Part83.Position = Vector3.new(-3.40000081, 23.3500042, 17.5200005)
Part83.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part84.Parent = Model72
Part84.Rotation = Vector3.new(-5, 0, 0)
Part84.Anchored = true
Part84.CanCollide = false
Part84.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part84.CFrame = CFrame.new(-4.3100009, 23.3500042, 17.5200005, 1, 0, 0, 0, 0.99619472, 0.0871553123, 0, -0.0871553123, 0.99619472)
Part84.BottomSurface = Enum.SurfaceType.Smooth
Part84.TopSurface = Enum.SurfaceType.Smooth
Part84.Position = Vector3.new(-4.3100009, 23.3500042, 17.5200005)
Part84.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part85.Parent = Model72
Part85.Rotation = Vector3.new(5, 0, 0)
Part85.Anchored = true
Part85.CanCollide = false
Part85.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part85.CFrame = CFrame.new(-4.01000071, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.Position = Vector3.new(-4.01000071, 23.3500042, 16.4799995)
Part85.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part86.Parent = Model72
Part86.Rotation = Vector3.new(5, 0, 0)
Part86.Anchored = true
Part86.CanCollide = false
Part86.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part86.CFrame = CFrame.new(-3.40000081, 23.3500042, 16.4799995, 1, 0, 0, 0, 0.996194661, -0.087155953, 0, 0.087155953, 0.996194661)
Part86.BottomSurface = Enum.SurfaceType.Smooth
Part86.TopSurface = Enum.SurfaceType.Smooth
Part86.Position = Vector3.new(-3.40000081, 23.3500042, 16.4799995)
Part86.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part87.Parent = Model72
Part87.Rotation = Vector3.new(90, 85, -90)
Part87.Anchored = true
Part87.CanCollide = false
Part87.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part87.CFrame = CFrame.new(-4.37500095, 23.3500042, 16.5450001, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part87.BottomSurface = Enum.SurfaceType.Smooth
Part87.TopSurface = Enum.SurfaceType.Smooth
Part87.Position = Vector3.new(-4.37500095, 23.3500042, 16.5450001)
Part87.Color = Color3.new(0.792157, 0.796079, 0.819608)
Part88.Parent = Model72
Part88.Rotation = Vector3.new(90, 85, -90)
Part88.Anchored = true
Part88.CanCollide = false
Part88.Size = Vector3.new(0.0699999928, 0.270000339, 0.05999998)
Part88.CFrame = CFrame.new(-4.37500095, 23.3500042, 16.8449993, -4.37113883E-8, 0.087155953, 0.996194661, 0, 0.996194601, -0.0871559381, -1, -3.80970722E-9, -4.35450502E-8)
Part88.BottomSurface = Enum.SurfaceType.Smooth
Part88.TopSurface = Enum.SurfaceType.Smooth
Part88.Position = Vector3.new(-4.37500095, 23.3500042, 16.8449993)
Part88.Color = Color3.new(0.792157, 0.796079, 0.819608)
Model89.Name = "g"
Model89.Parent = Model0
Part90.Parent = Model89
Part90.Rotation = Vector3.new(0, 90, 0)
Part90.Anchored = true
Part90.CanCollide = false
Part90.Size = Vector3.new(0.11999996, 0.18000029, 0.860000074)
Part90.CFrame = CFrame.new(-3.99500108, 24.7850037, 17, -4.37113883E-8, -6.68149637E-22, 1, -7.64274186E-15, 0.99999994, 0, -1, -7.64274101E-15, -4.37113883E-8)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.Position = Vector3.new(-3.99500108, 24.7850037, 17)
Part90.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh91.Parent = Part90
SpecialMesh91.MeshType = Enum.MeshType.Wedge
Part92.Parent = Model89
Part92.Rotation = Vector3.new(-180, -90, 0)
Part92.Anchored = true
Part92.CanCollide = false
Part92.Size = Vector3.new(0.120000005, 0.150000259, 0.219999939)
Part92.CFrame = CFrame.new(-3.19500089, 24.380003, 17, 1.31134158E-7, 1.33629927E-21, -1, 8.74227837E-8, -0.99999994, 1.14641124E-14, -1, -8.74227766E-8, -1.31134158E-7)
Part92.BottomSurface = Enum.SurfaceType.Smooth
Part92.TopSurface = Enum.SurfaceType.Smooth
Part92.Position = Vector3.new(-3.19500089, 24.380003, 17)
Part92.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh93.Parent = Part92
SpecialMesh93.MeshType = Enum.MeshType.Wedge
Part94.Parent = Model89
Part94.Rotation = Vector3.new(0, -90, 0)
Part94.Anchored = true
Part94.CanCollide = false
Part94.Size = Vector3.new(0.119999982, 0.190000281, 0.479999989)
Part94.CFrame = CFrame.new(-3.325001, 24.7800045, 17, 1.31134158E-7, 1.33629927E-21, -1, -7.64274186E-15, 0.99999994, 0, 1, 7.64274101E-15, 1.31134158E-7)
Part94.BottomSurface = Enum.SurfaceType.Smooth
Part94.TopSurface = Enum.SurfaceType.Smooth
Part94.Position = Vector3.new(-3.325001, 24.7800045, 17)
Part94.Color = Color3.new(0.972549, 0.972549, 0.972549)
SpecialMesh95.Parent = Part94
SpecialMesh95.MeshType = Enum.MeshType.Wedge
Part96.Parent = Model89
Part96.Anchored = true
Part96.CanCollide = false
Part96.Size = Vector3.new(0.0500000007, 0.130000338, 0.180000022)
Part96.CFrame = CFrame.new(-3.34000087, 23.5000038, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.Position = Vector3.new(-3.34000087, 23.5000038, 17)
Part96.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh97.Parent = Part96
BlockMesh97.Scale = Vector3.new(0.599999189, 1, 1)
BlockMesh97.Scale = Vector3.new(0.599999189, 1, 1)
Part98.Parent = Model89
Part98.Anchored = true
Part98.CanCollide = false
Part98.Size = Vector3.new(0.0599999614, 0.720000386, 0.120000027)
Part98.CFrame = CFrame.new(-3.32500076, 24.1250038, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.Position = Vector3.new(-3.32500076, 24.1250038, 17)
Part98.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part99.Parent = Model89
Part99.Anchored = true
Part99.CanCollide = false
Part99.Size = Vector3.new(0.0599999614, 0.260000437, 0.440000057)
Part99.CFrame = CFrame.new(-3.32500076, 24.0850029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part99.BottomSurface = Enum.SurfaceType.Smooth
Part99.TopSurface = Enum.SurfaceType.Smooth
Part99.Position = Vector3.new(-3.32500076, 24.0850029, 17)
Part99.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part100.Parent = Model89
Part100.Anchored = true
Part100.CanCollide = false
Part100.Size = Vector3.new(0.0500000007, 0.230000302, 0.11999996)
Part100.CFrame = CFrame.new(-3.09000087, 24.5700035, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.Position = Vector3.new(-3.09000087, 24.5700035, 17)
Part100.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh101.Parent = Part100
BlockMesh101.Scale = Vector3.new(0.200000763, 1, 1)
BlockMesh101.Scale = Vector3.new(0.200000763, 1, 1)
Part102.Parent = Model89
Part102.Anchored = true
Part102.CanCollide = false
Part102.Size = Vector3.new(0.0500000007, 0.160000339, 0.12000002)
Part102.CFrame = CFrame.new(-3.34000087, 23.5550041, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.Position = Vector3.new(-3.34000087, 23.5550041, 17)
Part102.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh103.Parent = Part102
BlockMesh103.Scale = Vector3.new(0.599999189, 1, 1)
BlockMesh103.Scale = Vector3.new(0.599999189, 1, 1)
Part104.Parent = Model89
Part104.Anchored = true
Part104.CanCollide = false
Part104.Size = Vector3.new(0.0500000007, 0.860000312, 0.120000027)
Part104.CFrame = CFrame.new(-3.34500074, 24.0550041, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.TopSurface = Enum.SurfaceType.Smooth
Part104.Position = Vector3.new(-3.34500074, 24.0550041, 17)
Part104.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh105.Parent = Part104
BlockMesh105.Scale = Vector3.new(0.399999201, 1, 1)
BlockMesh105.Scale = Vector3.new(0.399999201, 1, 1)
Part106.Parent = Model89
Part106.Anchored = true
Part106.CanCollide = false
Part106.Size = Vector3.new(0.0800000355, 0.0500000007, 0.11999996)
Part106.CFrame = CFrame.new(-4.38500071, 24.6850033, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part106.BottomSurface = Enum.SurfaceType.Smooth
Part106.TopSurface = Enum.SurfaceType.Smooth
Part106.Position = Vector3.new(-4.38500071, 24.6850033, 17)
Part106.Color = Color3.new(0.972549, 0.972549, 0.972549)
BlockMesh107.Parent = Part106
BlockMesh107.Scale = Vector3.new(1, 0.400006294, 1)
BlockMesh107.Scale = Vector3.new(1, 0.400006294, 1)
Model108.Name = "d"
Model108.Parent = Model0
Part109.Parent = Model108
Part109.Material = Enum.Material.Neon
Part109.Rotation = Vector3.new(0, 90, 0)
Part109.Anchored = true
Part109.CanCollide = false
Part109.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part109.CFrame = CFrame.new(-3.86000085, 23.2100029, 16.9950008, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part109.BottomSurface = Enum.SurfaceType.Smooth
Part109.TopSurface = Enum.SurfaceType.Smooth
Part109.Position = Vector3.new(-3.86000085, 23.2100029, 16.9950008)
Part109.Color = Color3.new(0, 1, 1)
Part110.Parent = Model108
Part110.Material = Enum.Material.Neon
Part110.Rotation = Vector3.new(0, 90, 0)
Part110.Anchored = true
Part110.CanCollide = false
Part110.Size = Vector3.new(0.0999999642, 0.190000281, 0.859999955)
Part110.CFrame = CFrame.new(-3.99500108, 24.7900028, 17, -4.37113883E-8, -6.68149637E-22, 1, -7.64274186E-15, 0.99999994, 0, -1, -7.64274101E-15, -4.37113883E-8)
Part110.BottomSurface = Enum.SurfaceType.Smooth
Part110.TopSurface = Enum.SurfaceType.Smooth
Part110.Position = Vector3.new(-3.99500108, 24.7900028, 17)
Part110.Color = Color3.new(0, 1, 1)
SpecialMesh111.Parent = Part110
SpecialMesh111.MeshType = Enum.MeshType.Wedge
Part112.Parent = Model108
Part112.Material = Enum.Material.Neon
Part112.Anchored = true
Part112.CanCollide = false
Part112.Size = Vector3.new(0.0500000007, 0.860000312, 0.080000028)
Part112.CFrame = CFrame.new(-3.34500074, 24.0550041, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part112.BottomSurface = Enum.SurfaceType.Smooth
Part112.TopSurface = Enum.SurfaceType.Smooth
Part112.Position = Vector3.new(-3.34500074, 24.0550041, 17)
Part112.Color = Color3.new(0, 1, 1)
BlockMesh113.Parent = Part112
BlockMesh113.Scale = Vector3.new(0.799999237, 1, 1)
BlockMesh113.Scale = Vector3.new(0.799999237, 1, 1)
Part114.Parent = Model108
Part114.Material = Enum.Material.Neon
Part114.Anchored = true
Part114.CanCollide = false
Part114.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part114.CFrame = CFrame.new(-3.54500079, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part114.BottomSurface = Enum.SurfaceType.Smooth
Part114.TopSurface = Enum.SurfaceType.Smooth
Part114.Position = Vector3.new(-3.54500079, 23.2100029, 17)
Part114.Color = Color3.new(0, 1, 1)
Part115.Parent = Model108
Part115.Material = Enum.Material.Neon
Part115.Rotation = Vector3.new(0, -90, 0)
Part115.Anchored = true
Part115.CanCollide = false
Part115.Size = Vector3.new(0.0799999908, 0.200000286, 0.48999998)
Part115.CFrame = CFrame.new(-3.32000089, 24.7850037, 17, 1.31134158E-7, 1.33629927E-21, -1, -7.64274186E-15, 0.99999994, 0, 1, 7.64274101E-15, 1.31134158E-7)
Part115.BottomSurface = Enum.SurfaceType.Smooth
Part115.TopSurface = Enum.SurfaceType.Smooth
Part115.Position = Vector3.new(-3.32000089, 24.7850037, 17)
Part115.Color = Color3.new(0, 1, 1)
SpecialMesh116.Parent = Part115
SpecialMesh116.MeshType = Enum.MeshType.Wedge
Part117.Parent = Model108
Part117.Material = Enum.Material.Neon
Part117.Anchored = true
Part117.CanCollide = false
Part117.Size = Vector3.new(0.0500000007, 0.230000302, 0.0799999684)
Part117.CFrame = CFrame.new(-3.09000087, 24.5700035, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part117.BottomSurface = Enum.SurfaceType.Smooth
Part117.TopSurface = Enum.SurfaceType.Smooth
Part117.Position = Vector3.new(-3.09000087, 24.5700035, 17)
Part117.Color = Color3.new(0, 1, 1)
BlockMesh118.Parent = Part117
BlockMesh118.Scale = Vector3.new(0.600000739, 1, 1)
BlockMesh118.Scale = Vector3.new(0.600000739, 1, 1)
Part119.Parent = Model108
Part119.Material = Enum.Material.Neon
Part119.Anchored = true
Part119.CanCollide = false
Part119.Size = Vector3.new(0.0500000007, 0.0900003463, 0.14000003)
Part119.CFrame = CFrame.new(-3.34000087, 23.5000038, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part119.BottomSurface = Enum.SurfaceType.Smooth
Part119.TopSurface = Enum.SurfaceType.Smooth
Part119.Position = Vector3.new(-3.34000087, 23.5000038, 17)
Part119.Color = Color3.new(0, 1, 1)
BlockMesh120.Parent = Part119
BlockMesh120.Scale = Vector3.new(0.999999166, 1, 1)
BlockMesh120.Scale = Vector3.new(0.999999166, 1, 1)
Part121.Parent = Model108
Part121.Material = Enum.Material.Neon
Part121.Anchored = true
Part121.CanCollide = false
Part121.Size = Vector3.new(0.079999961, 0.220000431, 0.400000095)
Part121.CFrame = CFrame.new(-3.32500076, 24.0850029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part121.BottomSurface = Enum.SurfaceType.Smooth
Part121.TopSurface = Enum.SurfaceType.Smooth
Part121.Position = Vector3.new(-3.32500076, 24.0850029, 17)
Part121.Color = Color3.new(0, 1, 1)
Part122.Parent = Model108
Part122.Material = Enum.Material.Neon
Part122.Rotation = Vector3.new(0, 90, 0)
Part122.Anchored = true
Part122.CanCollide = false
Part122.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part122.CFrame = CFrame.new(-3.86000085, 23.2100029, 16.6949997, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part122.BottomSurface = Enum.SurfaceType.Smooth
Part122.TopSurface = Enum.SurfaceType.Smooth
Part122.Position = Vector3.new(-3.86000085, 23.2100029, 16.6949997)
Part122.Color = Color3.new(0, 1, 1)
Part123.Parent = Model108
Part123.Material = Enum.Material.Neon
Part123.Anchored = true
Part123.CanCollide = false
Part123.Size = Vector3.new(0.0500000007, 0.160000339, 0.080000028)
Part123.CFrame = CFrame.new(-3.34000087, 23.5550041, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part123.BottomSurface = Enum.SurfaceType.Smooth
Part123.TopSurface = Enum.SurfaceType.Smooth
Part123.Position = Vector3.new(-3.34000087, 23.5550041, 17)
Part123.Color = Color3.new(0, 1, 1)
BlockMesh124.Parent = Part123
BlockMesh124.Scale = Vector3.new(0.999999166, 1, 1)
BlockMesh124.Scale = Vector3.new(0.999999166, 1, 1)
Part125.Parent = Model108
Part125.Material = Enum.Material.Neon
Part125.Anchored = true
Part125.CanCollide = false
Part125.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part125.CFrame = CFrame.new(-4.16500092, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part125.BottomSurface = Enum.SurfaceType.Smooth
Part125.TopSurface = Enum.SurfaceType.Smooth
Part125.Position = Vector3.new(-4.16500092, 23.2100029, 17)
Part125.Color = Color3.new(0, 1, 1)
Part126.Parent = Model108
Part126.Material = Enum.Material.Neon
Part126.Rotation = Vector3.new(-180, -90, 0)
Part126.Anchored = true
Part126.CanCollide = false
Part126.Size = Vector3.new(0.0800000057, 0.16000025, 0.22999993)
Part126.CFrame = CFrame.new(-3.19000101, 24.3750038, 17, 1.31134158E-7, 1.33629927E-21, -1, 8.74227837E-8, -0.99999994, 1.14641124E-14, -1, -8.74227766E-8, -1.31134158E-7)
Part126.BottomSurface = Enum.SurfaceType.Smooth
Part126.TopSurface = Enum.SurfaceType.Smooth
Part126.Position = Vector3.new(-3.19000101, 24.3750038, 17)
Part126.Color = Color3.new(0, 1, 1)
SpecialMesh127.Parent = Part126
SpecialMesh127.MeshType = Enum.MeshType.Wedge
Part128.Parent = Model108
Part128.Material = Enum.Material.Neon
Part128.Rotation = Vector3.new(0, 90, 0)
Part128.Anchored = true
Part128.CanCollide = false
Part128.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part128.CFrame = CFrame.new(-3.86000085, 23.2100029, 17.2950001, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part128.BottomSurface = Enum.SurfaceType.Smooth
Part128.TopSurface = Enum.SurfaceType.Smooth
Part128.Position = Vector3.new(-3.86000085, 23.2100029, 17.2950001)
Part128.Color = Color3.new(0, 1, 1)
Part129.Parent = Model108
Part129.Material = Enum.Material.Neon
Part129.Anchored = true
Part129.CanCollide = false
Part129.Size = Vector3.new(0.100000001, 0.210000277, 1.07999992)
Part129.CFrame = CFrame.new(-3.85500097, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part129.BottomSurface = Enum.SurfaceType.Smooth
Part129.TopSurface = Enum.SurfaceType.Smooth
Part129.Position = Vector3.new(-3.85500097, 23.2100029, 17)
Part129.Color = Color3.new(0, 1, 1)
Part130.Parent = Model108
Part130.Material = Enum.Material.Neon
Part130.Anchored = true
Part130.CanCollide = false
Part130.Size = Vector3.new(0.079999961, 0.730000377, 0.0800000355)
Part130.CFrame = CFrame.new(-3.32500076, 24.1200047, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part130.BottomSurface = Enum.SurfaceType.Smooth
Part130.TopSurface = Enum.SurfaceType.Smooth
Part130.Position = Vector3.new(-3.32500076, 24.1200047, 17)
Part130.Color = Color3.new(0, 1, 1)
Model131.Name = "h"
Model131.Parent = Model0
Part132.Parent = Model131
Part132.Anchored = true
Part132.CanCollide = false
Part132.Size = Vector3.new(1.03999996, 0.210000277, 1.03999996)
Part132.CFrame = CFrame.new(-3.85500097, 23.2100029, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part132.BottomSurface = Enum.SurfaceType.Smooth
Part132.TopSurface = Enum.SurfaceType.Smooth
Part132.Position = Vector3.new(-3.85500097, 23.2100029, 17)
Part132.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part133.Parent = Model131
Part133.Anchored = true
Part133.CanCollide = false
Part133.Size = Vector3.new(0.0699999854, 0.250000209, 0.0600000396)
Part133.CFrame = CFrame.new(-4.00000095, 22.7500038, 17.5400009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part133.BottomSurface = Enum.SurfaceType.Smooth
Part133.TopSurface = Enum.SurfaceType.Smooth
Part133.Position = Vector3.new(-4.00000095, 22.7500038, 17.5400009)
Part133.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part134.Parent = Model131
Part134.Anchored = true
Part134.CanCollide = false
Part134.Size = Vector3.new(0.0699999854, 0.250000209, 0.0599999614)
Part134.CFrame = CFrame.new(-4.00000095, 22.7500038, 16.4599991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part134.BottomSurface = Enum.SurfaceType.Smooth
Part134.TopSurface = Enum.SurfaceType.Smooth
Part134.Position = Vector3.new(-4.00000095, 22.7500038, 16.4599991)
Part134.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part135.Parent = Model131
Part135.Anchored = true
Part135.CanCollide = false
Part135.Size = Vector3.new(0.0699999854, 0.0600002222, 1.1400001)
Part135.CFrame = CFrame.new(-4.00000095, 22.6450043, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part135.BottomSurface = Enum.SurfaceType.Smooth
Part135.TopSurface = Enum.SurfaceType.Smooth
Part135.Position = Vector3.new(-4.00000095, 22.6450043, 17)
Part135.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part136.Name = "asd"
Part136.Parent = Model0
Part136.Transparency = 1
Part136.Anchored = true
Part136.CanCollide = false
Part136.Size = Vector3.new(1, 2, 1)
Part136.CFrame = CFrame.new(-3.85500097, 23.6750031, 17, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part136.BottomSurface = Enum.SurfaceType.Smooth
Part136.TopSurface = Enum.SurfaceType.Smooth
Part136.Position = Vector3.new(-3.85500097, 23.6750031, 17)
Part136.Color = Color3.new(0.917647, 0.721569, 0.572549)
gauntlet = Model0
gauntlet.Name = "gauntlet"
weld(gauntlet)
newWeld(rarm, gauntlet.asd, 0, 0, 0)
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Model2 = Instance.new("Model")
Part3 = Instance.new("Part")
SpecialMesh4 = Instance.new("SpecialMesh")
Part5 = Instance.new("Part")
SpecialMesh6 = Instance.new("SpecialMesh")
Part7 = Instance.new("Part")
SpecialMesh8 = Instance.new("SpecialMesh")
Part9 = Instance.new("Part")
SpecialMesh10 = Instance.new("SpecialMesh")
Part11 = Instance.new("Part")
SpecialMesh12 = Instance.new("SpecialMesh")
Model13 = Instance.new("Model")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
SpecialMesh17 = Instance.new("SpecialMesh")
Part18 = Instance.new("Part")
SpecialMesh19 = Instance.new("SpecialMesh")
Part20 = Instance.new("Part")
SpecialMesh21 = Instance.new("SpecialMesh")
Part22 = Instance.new("Part")
SpecialMesh23 = Instance.new("SpecialMesh")
Part24 = Instance.new("Part")
SpecialMesh25 = Instance.new("SpecialMesh")
Part26 = Instance.new("Part")
SpecialMesh27 = Instance.new("SpecialMesh")
Part28 = Instance.new("Part")
SpecialMesh29 = Instance.new("SpecialMesh")
Part30 = Instance.new("Part")
SpecialMesh31 = Instance.new("SpecialMesh")
Part32 = Instance.new("Part")
SpecialMesh33 = Instance.new("SpecialMesh")
Part34 = Instance.new("Part")
SpecialMesh35 = Instance.new("SpecialMesh")
Part36 = Instance.new("Part")
SpecialMesh37 = Instance.new("SpecialMesh")
Part38 = Instance.new("Part")
SpecialMesh39 = Instance.new("SpecialMesh")
Model0.Parent = char
Part1.Name = "asd"
Part1.Parent = Model0
Part1.Anchored = true
Part1.CanCollide = false
Part1.Size = Vector3.new(0.110000007, 0.110000007, 0.110000007)
Part1.CFrame = CFrame.new(-27.8999939, 13.9920015, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Position = Vector3.new(-27.8999939, 13.9920015, 32.0999947)
Model2.Name = "b"
Model2.Parent = Model0
Part3.Parent = Model2
Part3.Material = Enum.Material.Neon
Part3.Anchored = true
Part3.CanCollide = false
Part3.Size = Vector3.new(1.66100013, 0.418000013, 0.418000013)
Part3.CFrame = CFrame.new(-27.8999939, 14.0690012, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Position = Vector3.new(-27.8999939, 14.0690012, 32.0999947)
Part3.Color = Color3.new(0, 1, 0)
SpecialMesh4.Parent = Part3
SpecialMesh4.MeshType = Enum.MeshType.Cylinder
Part5.Parent = Model2
Part5.Rotation = Vector3.new(90, 75, -90)
Part5.Anchored = true
Part5.CanCollide = false
Part5.Size = Vector3.new(0.0500000566, 0.389999986, 0.190000027)
Part5.CFrame = CFrame.new(-27.4930534, 14.9197569, 32.045002, -2.14088644E-7, 0.258819014, 0.965925813, 3.39400188E-8, 0.965925753, -0.258819044, -1, -2.26266774E-8, -2.15578069E-7)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Position = Vector3.new(-27.4930534, 14.9197569, 32.045002)
Part5.Color = Color3.new(0, 1, 0)
SpecialMesh6.Parent = Part5
SpecialMesh6.MeshType = Enum.MeshType.Wedge
Part7.Parent = Model2
Part7.Rotation = Vector3.new(-90, 75, 90)
Part7.Anchored = true
Part7.CanCollide = false
Part7.Size = Vector3.new(0.0500000566, 0.389999986, 0.190000027)
Part7.CFrame = CFrame.new(-28.4904671, 14.8705807, 32.045002, -2.14088658E-7, -0.258818805, 0.965925872, -3.39399904E-8, 0.965925813, 0.258818835, -1, 2.26266579E-8, -2.15578069E-7)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Position = Vector3.new(-28.4904671, 14.8705807, 32.045002)
Part7.Color = Color3.new(0, 1, 0)
SpecialMesh8.Parent = Part7
SpecialMesh8.MeshType = Enum.MeshType.Wedge
Part9.Parent = Model2
Part9.Rotation = Vector3.new(-90, -75, -90)
Part9.Anchored = true
Part9.CanCollide = false
Part9.Size = Vector3.new(0.0500000566, 0.389999986, 0.190000027)
Part9.CFrame = CFrame.new(-27.3095264, 14.8705807, 32.045002, 1.29644732E-7, 0.258819014, -0.965925813, -1.13133396E-8, 0.965925753, 0.258819044, 1, -2.26266774E-8, 1.28155307E-7)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Position = Vector3.new(-27.3095264, 14.8705807, 32.045002)
Part9.Color = Color3.new(0, 1, 0)
SpecialMesh10.Parent = Part9
SpecialMesh10.MeshType = Enum.MeshType.Wedge
Part11.Parent = Model2
Part11.Rotation = Vector3.new(90, -75, 90)
Part11.Anchored = true
Part11.CanCollide = false
Part11.Size = Vector3.new(0.0500000566, 0.389999986, 0.190000027)
Part11.CFrame = CFrame.new(-28.3069401, 14.9197569, 32.045002, 1.29644732E-7, -0.258818805, -0.965925872, 1.13133307E-8, 0.965925813, -0.258818835, 1, 2.26266579E-8, 1.28155307E-7)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Position = Vector3.new(-28.3069401, 14.9197569, 32.045002)
Part11.Color = Color3.new(0, 1, 0)
SpecialMesh12.Parent = Part11
SpecialMesh12.MeshType = Enum.MeshType.Wedge
Model13.Name = "a"
Model13.Parent = Model0
Part14.Parent = Model13
Part14.Material = Enum.Material.SmoothPlastic
Part14.Anchored = true
Part14.CanCollide = false
Part14.Size = Vector3.new(1.4519999, 0.42900002, 0.220000058)
Part14.CFrame = CFrame.new(-27.8999939, 14.2505007, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Position = Vector3.new(-27.8999939, 14.2505007, 32.0999947)
Part14.Color = Color3.new(0.2, 0.2, 0.2)
Part15.Parent = Model13
Part15.Material = Enum.Material.SmoothPlastic
Part15.Anchored = true
Part15.CanCollide = false
Part15.Size = Vector3.new(0.923999846, 0.38500008, 0.220000058)
Part15.CFrame = CFrame.new(-27.8999939, 14.5585003, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Position = Vector3.new(-27.8999939, 14.5585003, 32.0999947)
Part15.Color = Color3.new(0.2, 0.2, 0.2)
Part16.Parent = Model13
Part16.Material = Enum.Material.SmoothPlastic
Part16.Rotation = Vector3.new(0, -90, 0)
Part16.Anchored = true
Part16.CanCollide = false
Part16.Size = Vector3.new(0.220000014, 0.561000109, 0.715000033)
Part16.CFrame = CFrame.new(-28.3454952, 14.4705009, 32.0999947, 1.31134158E-7, 0, -1, 0, 0.99999994, 0, 1, 0, 1.31134158E-7)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Position = Vector3.new(-28.3454952, 14.4705009, 32.0999947)
Part16.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh17.Parent = Part16
SpecialMesh17.MeshType = Enum.MeshType.Cylinder
Part18.Parent = Model13
Part18.Material = Enum.Material.SmoothPlastic
Part18.Rotation = Vector3.new(0, 90, 0)
Part18.Anchored = true
Part18.CanCollide = false
Part18.Size = Vector3.new(0.220000014, 0.561000109, 0.715000033)
Part18.CFrame = CFrame.new(-27.4544926, 14.4705009, 32.0999947, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Position = Vector3.new(-27.4544926, 14.4705009, 32.0999947)
Part18.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh19.Parent = Part18
SpecialMesh19.MeshType = Enum.MeshType.Cylinder
Part20.Parent = Model13
Part20.Material = Enum.Material.SmoothPlastic
Part20.Anchored = true
Part20.CanCollide = false
Part20.Size = Vector3.new(1.67200005, 0.395999998, 0.395999998)
Part20.CFrame = CFrame.new(-27.8999939, 14.0690012, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.Position = Vector3.new(-27.8999939, 14.0690012, 32.0999947)
Part20.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh21.Parent = Part20
SpecialMesh21.MeshType = Enum.MeshType.Cylinder
Part22.Parent = Model13
Part22.Material = Enum.Material.SmoothPlastic
Part22.Anchored = true
Part22.CanCollide = false
Part22.Size = Vector3.new(1.6500001, 0.440000027, 0.440000027)
Part22.CFrame = CFrame.new(-27.8999939, 14.0690012, 32.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.Position = Vector3.new(-27.8999939, 14.0690012, 32.0999947)
Part22.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh23.Parent = Part22
SpecialMesh23.MeshType = Enum.MeshType.Cylinder
Part24.Parent = Model13
Part24.Rotation = Vector3.new(-90, 75, 90)
Part24.Anchored = true
Part24.CanCollide = false
Part24.Size = Vector3.new(0.170000046, 0.399999976, 0.200000033)
Part24.CFrame = CFrame.new(-28.4965916, 14.8741169, 32.1150055, -2.14088658E-7, -0.258818805, 0.965925872, -3.39399904E-8, 0.965925813, 0.258818835, -1, 2.26266579E-8, -2.15578069E-7)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.Position = Vector3.new(-28.4965916, 14.8741169, 32.1150055)
Part24.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh25.Parent = Part24
SpecialMesh25.MeshType = Enum.MeshType.Wedge
Part26.Parent = Model13
Part26.Rotation = Vector3.new(90, -75, 90)
Part26.Anchored = true
Part26.CanCollide = false
Part26.Size = Vector3.new(0.170000046, 0.399999976, 0.200000033)
Part26.CFrame = CFrame.new(-28.3034039, 14.9258804, 32.1150055, 1.29644732E-7, -0.258818805, -0.965925872, 1.13133307E-8, 0.965925813, -0.258818835, 1, 2.26266579E-8, 1.28155307E-7)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.Position = Vector3.new(-28.3034039, 14.9258804, 32.1150055)
Part26.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh27.Parent = Part26
SpecialMesh27.MeshType = Enum.MeshType.Wedge
Part28.Parent = Model13
Part28.Rotation = Vector3.new(-90, -75, -90)
Part28.Anchored = true
Part28.CanCollide = false
Part28.Size = Vector3.new(0.170000046, 0.399999976, 0.200000033)
Part28.CFrame = CFrame.new(-27.3034019, 14.8741169, 32.1150055, 1.29644732E-7, 0.258819014, -0.965925813, -1.13133396E-8, 0.965925753, 0.258819044, 1, -2.26266774E-8, 1.28155307E-7)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.Position = Vector3.new(-27.3034019, 14.8741169, 32.1150055)
Part28.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh29.Parent = Part28
SpecialMesh29.MeshType = Enum.MeshType.Wedge
Part30.Parent = Model13
Part30.Rotation = Vector3.new(90, 75, -90)
Part30.Anchored = true
Part30.CanCollide = false
Part30.Size = Vector3.new(0.170000046, 0.399999976, 0.200000033)
Part30.CFrame = CFrame.new(-27.4965897, 14.9258804, 32.1150055, -2.14088644E-7, 0.258819014, 0.965925813, 3.39400188E-8, 0.965925753, -0.258819044, -1, -2.26266774E-8, -2.15578069E-7)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.Position = Vector3.new(-27.4965897, 14.9258804, 32.1150055)
Part30.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh31.Parent = Part30
SpecialMesh31.MeshType = Enum.MeshType.Wedge
Part32.Parent = Model13
Part32.Rotation = Vector3.new(-90, -75, -90)
Part32.Anchored = true
Part32.CanCollide = false
Part32.Size = Vector3.new(0.0600000545, 0.379999995, 0.180000022)
Part32.CFrame = CFrame.new(-27.315649, 14.8670454, 32.0400009, 1.29644732E-7, 0.258819014, -0.965925813, -1.13133396E-8, 0.965925753, 0.258819044, 1, -2.26266774E-8, 1.28155307E-7)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Position = Vector3.new(-27.315649, 14.8670454, 32.0400009)
Part32.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh33.Parent = Part32
SpecialMesh33.MeshType = Enum.MeshType.Wedge
Part34.Parent = Model13
Part34.Rotation = Vector3.new(90, 75, -90)
Part34.Anchored = true
Part34.CanCollide = false
Part34.Size = Vector3.new(0.0600000545, 0.379999995, 0.180000022)
Part34.CFrame = CFrame.new(-27.4895191, 14.9136333, 32.0400009, -2.14088644E-7, 0.258819014, 0.965925813, 3.39400188E-8, 0.965925753, -0.258819044, -1, -2.26266774E-8, -2.15578069E-7)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Position = Vector3.new(-27.4895191, 14.9136333, 32.0400009)
Part34.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh35.Parent = Part34
SpecialMesh35.MeshType = Enum.MeshType.Wedge
Part36.Parent = Model13
Part36.Rotation = Vector3.new(-90, 75, 90)
Part36.Anchored = true
Part36.CanCollide = false
Part36.Size = Vector3.new(0.0600000545, 0.379999995, 0.180000022)
Part36.CFrame = CFrame.new(-28.4843445, 14.8670454, 32.0400009, -2.14088658E-7, -0.258818805, 0.965925872, -3.39399904E-8, 0.965925813, 0.258818835, -1, 2.26266579E-8, -2.15578069E-7)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.Position = Vector3.new(-28.4843445, 14.8670454, 32.0400009)
Part36.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh37.Parent = Part36
SpecialMesh37.MeshType = Enum.MeshType.Wedge
Part38.Parent = Model13
Part38.Rotation = Vector3.new(90, -75, 90)
Part38.Anchored = true
Part38.CanCollide = false
Part38.Size = Vector3.new(0.0600000545, 0.379999995, 0.180000022)
Part38.CFrame = CFrame.new(-28.3104744, 14.9136333, 32.0400009, 1.29644732E-7, -0.258818805, -0.965925872, 1.13133307E-8, 0.965925813, -0.258818835, 1, 2.26266579E-8, 1.28155307E-7)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.Position = Vector3.new(-28.3104744, 14.9136333, 32.0400009)
Part38.Color = Color3.new(0.2, 0.2, 0.2)
SpecialMesh39.Parent = Part38
SpecialMesh39.MeshType = Enum.MeshType.Wedge
headphone = Model0
headphone.Name = "headphone"
weld(headphone)
newWeld(hed, headphone.asd, 0, 0, 0)
local wingsmodel = Instance.new("Model", char)
wingsmodel.Name = "wings"
for z = -1, 1, 2 do
	for i = 1, 3 do
		local part = Instance.new("Part", wingsmodel)
		part.Size = Vector3.new(0.5, 2, 0.5)
		newWeld(torso, part, 0.45 * z, 1, 0.5)
		if z == -1 then
			leftwing[i] = part
			part.Weld.C1 = CFrame.new(0, 1, 0)
		else
			rightwing[i] = part
			part.Weld.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, math.rad(180), 0)
		end
		Model0 = Instance.new("Model")
		Model1 = Instance.new("Model")
		Part2 = Instance.new("Part")
		SpecialMesh3 = Instance.new("SpecialMesh")
		Part4 = Instance.new("Part")
		BlockMesh5 = Instance.new("BlockMesh")
		Part6 = Instance.new("Part")
		SpecialMesh7 = Instance.new("SpecialMesh")
		Part8 = Instance.new("Part")
		SpecialMesh9 = Instance.new("SpecialMesh")
		Part10 = Instance.new("Part")
		Part11 = Instance.new("Part")
		SpecialMesh12 = Instance.new("SpecialMesh")
		Part13 = Instance.new("Part")
		Part14 = Instance.new("Part")
		Model15 = Instance.new("Model")
		Part16 = Instance.new("Part")
		Part17 = Instance.new("Part")
		SpecialMesh18 = Instance.new("SpecialMesh")
		Part19 = Instance.new("Part")
		SpecialMesh20 = Instance.new("SpecialMesh")
		Part21 = Instance.new("Part")
		SpecialMesh22 = Instance.new("SpecialMesh")
		Part23 = Instance.new("Part")
		Part24 = Instance.new("Part")
		Model25 = Instance.new("Model")
		Part26 = Instance.new("Part")
		SpecialMesh27 = Instance.new("SpecialMesh")
		Part28 = Instance.new("Part")
		Model29 = Instance.new("Model")
		Part30 = Instance.new("Part")
		Part31 = Instance.new("Part")
		SpecialMesh32 = Instance.new("SpecialMesh")
		Part33 = Instance.new("Part")
		Part34 = Instance.new("Part")
		SpecialMesh35 = Instance.new("SpecialMesh")
		Model0.Parent = part
		Model0.Name = "second"
		Model1.Name = "c"
		Model1.Parent = Model0
		Part2.Parent = Model1
		Part2.Material = Enum.Material.Neon
		Part2.Rotation = Vector3.new(-90, 0, 90)
		Part2.Anchored = true
		Part2.CanCollide = false
		Part2.Size = Vector3.new(0.419999987, 0.159999847, 0.109999977)
		Part2.CFrame = CFrame.new(7.98996925, 3.02186584, -51.4999962, 3.57627243E-7, -0.999996781, -1.74845596E-7, 4.3711303E-8, -1.74844928E-7, 1, -0.999998391, -3.57626789E-7, 4.37113137E-8)
		Part2.BottomSurface = Enum.SurfaceType.Smooth
		Part2.TopSurface = Enum.SurfaceType.Smooth
		Part2.Position = Vector3.new(7.98996925, 3.02186584, -51.4999962)
		Part2.Color = Color3.new(0, 1, 1)
		SpecialMesh3.Parent = Part2
		SpecialMesh3.MeshType = Enum.MeshType.Wedge
		Part4.Parent = Model1
		Part4.Material = Enum.Material.Neon
		Part4.Rotation = Vector3.new(90, 0, -90)
		Part4.Anchored = true
		Part4.CanCollide = false
		Part4.Size = Vector3.new(0.419999987, 2.35999966, 0.0500000007)
		Part4.CFrame = CFrame.new(9.24996948, 3.05686569, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part4.BottomSurface = Enum.SurfaceType.Smooth
		Part4.TopSurface = Enum.SurfaceType.Smooth
		Part4.Position = Vector3.new(9.24996948, 3.05686569, -51.4999962)
		Part4.Color = Color3.new(0, 1, 1)
		BlockMesh5.Parent = Part4
		BlockMesh5.Scale = Vector3.new(1, 1, 0.799999833)
		BlockMesh5.Scale = Vector3.new(1, 1, 0.799999833)
		Part6.Parent = Model1
		Part6.Material = Enum.Material.Neon
		Part6.Rotation = Vector3.new(-90, 0, -90)
		Part6.Anchored = true
		Part6.CanCollide = false
		Part6.Size = Vector3.new(0.419999927, 0.129999831, 0.0650000125)
		Part6.CFrame = CFrame.new(9.26496887, 3.00436783, -51.4999962, -4.45050375E-7, 0.999998927, -7.39937422E-14, -2.18556849E-7, -2.32751339E-14, 1, 0.999999464, 4.45050205E-7, 2.18556906E-7)
		Part6.BottomSurface = Enum.SurfaceType.Smooth
		Part6.TopSurface = Enum.SurfaceType.Smooth
		Part6.Position = Vector3.new(9.26496887, 3.00436783, -51.4999962)
		Part6.Color = Color3.new(0, 1, 1)
		SpecialMesh7.Parent = Part6
		SpecialMesh7.MeshType = Enum.MeshType.Wedge
		Part8.Parent = Model1
		Part8.Material = Enum.Material.Neon
		Part8.Rotation = Vector3.new(-90, 0, -90)
		Part8.Anchored = true
		Part8.CanCollide = false
		Part8.Size = Vector3.new(0.419999987, 0.119999848, 0.0500000007)
		Part8.CFrame = CFrame.new(10.4899693, 3.05686569, -51.4999962, -4.45050603E-7, 0.999999881, 3.82137093E-15, -4.37113847E-8, -2.32751508E-14, 1, 0.99999994, 4.45050631E-7, 4.37113883E-8)
		Part8.BottomSurface = Enum.SurfaceType.Smooth
		Part8.TopSurface = Enum.SurfaceType.Smooth
		Part8.Position = Vector3.new(10.4899693, 3.05686569, -51.4999962)
		Part8.Color = Color3.new(0, 1, 1)
		SpecialMesh9.Parent = Part8
		SpecialMesh9.Scale = Vector3.new(1, 1, 0.799999952)
		SpecialMesh9.MeshType = Enum.MeshType.Wedge
		SpecialMesh9.Scale = Vector3.new(1, 1, 0.799999952)
		Part10.Parent = Model1
		Part10.Material = Enum.Material.Neon
		Part10.Rotation = Vector3.new(0, 0, 90)
		Part10.Anchored = true
		Part10.CanCollide = false
		Part10.Size = Vector3.new(0.600000024, 5.06000042, 0.100000001)
		Part10.CFrame = CFrame.new(9.77996826, 2.82686615, -51.4999962, 3.57627869E-7, -0.99999994, 0, 0.99999994, 3.57627869E-7, 0, 0, 0, 1)
		Part10.BottomSurface = Enum.SurfaceType.Smooth
		Part10.TopSurface = Enum.SurfaceType.Smooth
		Part10.Position = Vector3.new(9.77996826, 2.82686615, -51.4999962)
		Part10.Color = Color3.new(0, 1, 1)
		Part11.Parent = Model1
		Part11.Material = Enum.Material.Neon
		Part11.Rotation = Vector3.new(-90, 0, -90)
		Part11.Anchored = true
		Part11.CanCollide = false
		Part11.Size = Vector3.new(0.100000001, 1.23999989, 0.600000024)
		Part11.CFrame = CFrame.new(12.9299679, 2.82686615, -51.4999962, -4.45050603E-7, 0.999999881, 3.82137093E-15, -4.37113847E-8, -2.32751508E-14, 1, 0.99999994, 4.45050631E-7, 4.37113883E-8)
		Part11.BottomSurface = Enum.SurfaceType.Smooth
		Part11.TopSurface = Enum.SurfaceType.Smooth
		Part11.Position = Vector3.new(12.9299679, 2.82686615, -51.4999962)
		Part11.Color = Color3.new(0, 1, 1)
		SpecialMesh12.Parent = Part11
		SpecialMesh12.MeshType = Enum.MeshType.Wedge
		Part13.Parent = Model1
		Part13.Material = Enum.Material.Neon
		Part13.Rotation = Vector3.new(90, 0, -90)
		Part13.Anchored = true
		Part13.CanCollide = false
		Part13.Size = Vector3.new(0.419999987, 1.13499975, 0.104999982)
		Part13.CFrame = CFrame.new(8.63246918, 3.02436829, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part13.BottomSurface = Enum.SurfaceType.Smooth
		Part13.TopSurface = Enum.SurfaceType.Smooth
		Part13.Position = Vector3.new(8.63246918, 3.02436829, -51.4999962)
		Part13.Color = Color3.new(0, 1, 1)
		Part14.Name = "asd"
		Part14.Parent = Model0
		Part14.Transparency = 1
		Part14.Anchored = true
		Part14.CanCollide = false
		Part14.Size = Vector3.new(0.119999975, 0.0999998599, 0.5)
		Part14.CFrame = CFrame.new(7.42996979, 2.94686508, -51.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part14.BottomSurface = Enum.SurfaceType.Smooth
		Part14.TopSurface = Enum.SurfaceType.Smooth
		Part14.Position = Vector3.new(7.42996979, 2.94686508, -51.4999962)
		Part14.Color = Color3.new(0, 0.12549, 0.376471)
		Model15.Name = "b"
		Model15.Parent = Model0
		Part16.Parent = Model15
		Part16.Rotation = Vector3.new(-90, 0, 90)
		Part16.Anchored = true
		Part16.CanCollide = false
		Part16.Size = Vector3.new(0.419999987, 0.599999845, 0.409999996)
		Part16.CFrame = CFrame.new(7.53996849, 2.92186737, -51.4999962, 5.32472484E-7, -0.999996781, 1.14640853E-14, 4.37112497E-8, 3.47391522E-14, 1, -0.999998391, -5.32471802E-7, 4.37114593E-8)
		Part16.BottomSurface = Enum.SurfaceType.Smooth
		Part16.TopSurface = Enum.SurfaceType.Smooth
		Part16.Position = Vector3.new(7.53996849, 2.92186737, -51.4999962)
		Part16.Color = Color3.new(0, 0.12549, 0.376471)
		Part17.Parent = Model15
		Part17.Rotation = Vector3.new(-90, 0, -90)
		Part17.Anchored = true
		Part17.CanCollide = false
		Part17.Size = Vector3.new(0.440000027, 0.199999839, 0.0599999987)
		Part17.CFrame = CFrame.new(11.1099682, 3.14686584, -51.4999962, -4.45050603E-7, 0.999999881, 3.82137093E-15, -4.37113847E-8, -2.32751508E-14, 1, 0.99999994, 4.45050631E-7, 4.37113883E-8)
		Part17.BottomSurface = Enum.SurfaceType.Smooth
		Part17.TopSurface = Enum.SurfaceType.Smooth
		Part17.Position = Vector3.new(11.1099682, 3.14686584, -51.4999962)
		Part17.Color = Color3.new(0, 0.12549, 0.376471)
		SpecialMesh18.Parent = Part17
		SpecialMesh18.MeshType = Enum.MeshType.Wedge
		Part19.Parent = Model15
		Part19.Rotation = Vector3.new(90, 0, -90)
		Part19.Anchored = true
		Part19.CanCollide = false
		Part19.Size = Vector3.new(0.419999987, 0.599999845, 0.409999996)
		Part19.CFrame = CFrame.new(8.13996887, 2.92186737, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part19.BottomSurface = Enum.SurfaceType.Smooth
		Part19.TopSurface = Enum.SurfaceType.Smooth
		Part19.Position = Vector3.new(8.13996887, 2.92186737, -51.4999962)
		Part19.Color = Color3.new(0, 0.12549, 0.376471)
		SpecialMesh20.Parent = Part19
		SpecialMesh20.MeshType = Enum.MeshType.Wedge
		Part21.Parent = Model15
		Part21.Rotation = Vector3.new(90, 0, -90)
		Part21.Anchored = true
		Part21.CanCollide = false
		Part21.Size = Vector3.new(0.439999968, 0.129999831, 0.0500000007)
		Part21.CFrame = CFrame.new(8.83496857, 3.19686508, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part21.BottomSurface = Enum.SurfaceType.Smooth
		Part21.TopSurface = Enum.SurfaceType.Smooth
		Part21.Position = Vector3.new(8.83496857, 3.19686508, -51.4999962)
		Part21.Color = Color3.new(0, 0.12549, 0.376471)
		SpecialMesh22.Parent = Part21
		SpecialMesh22.Scale = Vector3.new(1, 1, 0.800000191)
		SpecialMesh22.MeshType = Enum.MeshType.Wedge
		SpecialMesh22.Scale = Vector3.new(1, 1, 0.800000191)
		Part23.Parent = Model15
		Part23.Rotation = Vector3.new(0, 0, 90)
		Part23.Anchored = true
		Part23.CanCollide = false
		Part23.Size = Vector3.new(0.0999999791, 1.52999997, 0.439999968)
		Part23.CFrame = CFrame.new(8.00496864, 3.1668663, -51.4999962, 3.57627869E-7, -0.99999994, 0, 0.99999994, 3.57627869E-7, 0, 0, 0, 1)
		Part23.BottomSurface = Enum.SurfaceType.Smooth
		Part23.TopSurface = Enum.SurfaceType.Smooth
		Part23.Position = Vector3.new(8.00496864, 3.1668663, -51.4999962)
		Part23.Color = Color3.new(0, 0.12549, 0.376471)
		Part24.Parent = Model15
		Part24.Rotation = Vector3.new(0, 0, 90)
		Part24.Anchored = true
		Part24.CanCollide = false
		Part24.Size = Vector3.new(0.05999998, 3.33999991, 0.439999968)
		Part24.CFrame = CFrame.new(9.33996964, 3.14686584, -51.4999962, 3.57627869E-7, -0.99999994, 0, 0.99999994, 3.57627869E-7, 0, 0, 0, 1)
		Part24.BottomSurface = Enum.SurfaceType.Smooth
		Part24.TopSurface = Enum.SurfaceType.Smooth
		Part24.Position = Vector3.new(9.33996964, 3.14686584, -51.4999962)
		Part24.Color = Color3.new(0, 0.12549, 0.376471)
		Model25.Name = "a"
		Model25.Parent = Model0
		Part26.Parent = Model25
		Part26.Rotation = Vector3.new(-90, 0, -90)
		Part26.Anchored = true
		Part26.CanCollide = false
		Part26.Size = Vector3.new(0.379999995, 0.599999845, 0.400000006)
		Part26.CFrame = CFrame.new(10.729969, 2.92686462, -51.4999962, -4.45050603E-7, 0.999999881, 3.82137093E-15, -4.37113847E-8, -2.32751508E-14, 1, 0.99999994, 4.45050631E-7, 4.37113883E-8)
		Part26.BottomSurface = Enum.SurfaceType.Smooth
		Part26.TopSurface = Enum.SurfaceType.Smooth
		Part26.Position = Vector3.new(10.729969, 2.92686462, -51.4999962)
		Part26.Color = Color3.new(0.129412, 0.329412, 0.72549)
		SpecialMesh27.Parent = Part26
		SpecialMesh27.MeshType = Enum.MeshType.Wedge
		Part28.Parent = Model25
		Part28.Rotation = Vector3.new(0, 0, 90)
		Part28.Anchored = true
		Part28.CanCollide = false
		Part28.Size = Vector3.new(0.400000006, 3.1400001, 0.379999995)
		Part28.CFrame = CFrame.new(8.85996819, 2.92686462, -51.4999962, 3.57627869E-7, -0.99999994, 0, 0.99999994, 3.57627869E-7, 0, 0, 0, 1)
		Part28.BottomSurface = Enum.SurfaceType.Smooth
		Part28.TopSurface = Enum.SurfaceType.Smooth
		Part28.Position = Vector3.new(8.85996819, 2.92686462, -51.4999962)
		Part28.Color = Color3.new(0.129412, 0.329412, 0.72549)
		Model29.Name = "d"
		Model29.Parent = Model0
		Part30.Parent = Model29
		Part30.Rotation = Vector3.new(90, 0, -90)
		Part30.Anchored = true
		Part30.CanCollide = false
		Part30.Size = Vector3.new(0.399999976, 1.16999972, 0.129999995)
		Part30.CFrame = CFrame.new(9.8449688, 3.06186676, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part30.BottomSurface = Enum.SurfaceType.Smooth
		Part30.TopSurface = Enum.SurfaceType.Smooth
		Part30.Position = Vector3.new(9.8449688, 3.06186676, -51.4999962)
		Part30.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part31.Parent = Model29
		Part31.Rotation = Vector3.new(-90, 0, -90)
		Part31.Anchored = true
		Part31.CanCollide = false
		Part31.Size = Vector3.new(0.400000006, 0.329999864, 0.129999995)
		Part31.CFrame = CFrame.new(10.5949688, 3.06186676, -51.4999962, -4.45050603E-7, 0.999999881, 3.82137093E-15, -4.37113847E-8, -2.32751508E-14, 1, 0.99999994, 4.45050631E-7, 4.37113883E-8)
		Part31.BottomSurface = Enum.SurfaceType.Smooth
		Part31.TopSurface = Enum.SurfaceType.Smooth
		Part31.Position = Vector3.new(10.5949688, 3.06186676, -51.4999962)
		Part31.Color = Color3.new(0.972549, 0.972549, 0.972549)
		SpecialMesh32.Parent = Part31
		SpecialMesh32.MeshType = Enum.MeshType.Wedge
		Part33.Parent = Model29
		Part33.Rotation = Vector3.new(90, 0, -90)
		Part33.Anchored = true
		Part33.CanCollide = false
		Part33.Size = Vector3.new(0.399999976, 1.41999984, 0.200000003)
		Part33.CFrame = CFrame.new(8.54996872, 3.02686691, -51.4999962, 4.45050603E-7, 0.999999642, 3.50861884E-14, 1.31134144E-7, -2.32751389E-14, -1, -0.999999821, 4.4505046E-7, -1.31134158E-7)
		Part33.BottomSurface = Enum.SurfaceType.Smooth
		Part33.TopSurface = Enum.SurfaceType.Smooth
		Part33.Position = Vector3.new(8.54996872, 3.02686691, -51.4999962)
		Part33.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part34.Parent = Model29
		Part34.Rotation = Vector3.new(-90, 0, -90)
		Part34.Anchored = true
		Part34.CanCollide = false
		Part34.Size = Vector3.new(0.399999946, 0.129999831, 0.0700000152)
		Part34.CFrame = CFrame.new(9.32496834, 2.96186829, -51.4999962, -4.45050375E-7, 0.999998927, -7.39937422E-14, -2.18556849E-7, -2.32751339E-14, 1, 0.999999464, 4.45050205E-7, 2.18556906E-7)
		Part34.BottomSurface = Enum.SurfaceType.Smooth
		Part34.TopSurface = Enum.SurfaceType.Smooth
		Part34.Position = Vector3.new(9.32496834, 2.96186829, -51.4999962)
		Part34.Color = Color3.new(0.972549, 0.972549, 0.972549)
		SpecialMesh35.Parent = Part34
		SpecialMesh35.MeshType = Enum.MeshType.Wedge
		weld(Model0)
		newWeld(part, Model0.asd, 0, -1, 0)
		Model0.asd.Weld.C1 = CFrame.Angles(math.rad(180), 0, 0)
	end
end
leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-160 + 12 * math.sin(sine / 16))), 0.05)
leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-130 + 10 * math.sin(sine / 16))), 0.05)
leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(-100 + 8 * math.sin(sine / 16))), 0.05)
leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 16))), 0.05)
leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 16))), 0.05)
leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 16))), 0.05)
rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(160 - 12 * math.sin(sine / 16))), 0.05)
rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(130 - 10 * math.sin(sine / 16))), 0.05)
rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, 0, math.rad(100 - 8 * math.sin(sine / 16))), 0.05)
rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 16))), 0.05)
rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 16))), 0.05)
rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 16))), 0.05)
drew = true
local debounce = false
mode = {
	"Delta",
	"DeepSea",
	"Racemization",
	"Atomosphere",
	"PLANET//SHAPER",
	"Syzyg\195\173a",
	"OverComplexification",
	"Epimerization",
	"Dyscontrolled",
	"GALAXYBURST",
	"Visualizer"
}
chosen = nil
if plr == lplr then
	chosen = "RUIN\228\185\157"
end
current = 0
function explodemines()
	for i, v in pairs(DebrisModel:GetChildren()) do
		if v.Name == "MINE" then
			Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1), 0, Enum.Material.Neon, Color3.fromHSV(0.1, 0.3, 1), v.Position, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2), Vector3.new(), 0.1, 0.05)
			sound(262562442, v.Position, 10, math.random(180, 230) / 100)
			for i, v in pairs(findAllNearestTorso(v.Position, 10)) do
				local hit = v.Parent
				--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(8, 10))
			end
			v:Destroy()
		end
	end
end
function musicchanje(chosed)
	if chosed == "RUIN\228\185\157" then
		music(484884796)
		hum.WalkSpeed = 30
		hum.JumpPower = 50
		change = 0.7
		movement = 10
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.4, 0.4, 0.4))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0.1, 0.1, 0.1))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0.1, 0.1, 0.1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 1, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "Delta" then
		music(672082621)
		hum.WalkSpeed = 30
		hum.JumpPower = 60
		change = 0.7
		movement = 10
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.8, 0, 0))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0.4, 0, 0))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0.4, 0, 0))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 0, 0))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "DeepSea" then
		music(1657253946)
		hum.WalkSpeed = 20
		hum.JumpPower = 100
		change = 0.3
		movement = 8
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0, 0.2, 0.4))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0, 0.1, 0.2))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0, 0.1, 0.2))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 0.5, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "Racemization" then
		music(912554197)
		hum.WalkSpeed = 30
		hum.JumpPower = 50
		change = 0.7
		movement = 10
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(1, 0, 1))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0, 0.2, 0.5))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0, 0.2, 0.5))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 0, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "Atomosphere" then
		music(1325589003)
		hum.WalkSpeed = 50
		hum.JumpPower = 50
		change = 0.9
		movement = 12
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0, 1, 0))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0, 0.5, 0))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0, 0.5, 0))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 1, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "PLANET//SHAPER" then
		music(1578697777)
		hum.WalkSpeed = 40
		hum.JumpPower = 50
		change = 0.8
		movement = 12
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(1, 1, 0))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(1, 1, 0))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 1, 0))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.1, 0.1, 0.1))
	elseif chosed == "Syzyg\195\173a" then
		music(1588869658)
		hum.WalkSpeed = 30
		hum.JumpPower = 50
		change = 0.7
		movement = 10
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.5, 0.5, 0.5))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 1, 0))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "OverComplexification" then
		music(1635994421)
		hum.WalkSpeed = 40
		hum.JumpPower = 50
		change = 0.8
		movement = 12
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0.5, 0.5, 0.5))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0.5, 0.5, 0.5))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 1, 0))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	elseif chosed == "Epimerization" then
		music(1588702539)
		hum.WalkSpeed = 16
		hum.JumpPower = 100
		change = 0.5
		movement = 6
		partchange(gauntlet.a, Enum.Material.Ice, Color3.new(0.2, 0.5, 1))
		partchange(gauntlet.b, Enum.Material.Ice, Color3.new(0.1, 0.2, 0.5))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 1, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
	elseif chosed == "Dyscontrolled" then
		music(1588716873)
		hum.WalkSpeed = 80
		hum.JumpPower = 80
		change = 1.2
		movement = 18
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.05, 0.05, 0.05))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0.5, 0, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
	elseif chosed == "GALAXYBURST" then
		music(1636008265)
		hum.WalkSpeed = 60
		hum.JumpPower = 60
		change = 1
		movement = 15
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.2, 0, 0.5))
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(1, 0, 1))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(1, 0, 1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 0.5, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.4, 0, 1))
	elseif chosed == "LunaricStarLight" then
		music(1588732190)
		hum.WalkSpeed = 80
		hum.JumpPower = 80
		change = 1.2
		movement = 18
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0.5))
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(1, 1, 0))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(1, 1, 0))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 0.5, 0))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.Neon, Color3.new(0.4, 1, 0))
	elseif chosed == "IntergalacticSuperNova" then
		music(1747418645)
		hum.WalkSpeed = 80
		hum.JumpPower = 80
		change = 1.2
		movement = 18
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.2, 0, 0.5))
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(1, 0, 1))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(1, 0, 1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 0.5, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.Neon, Color3.new(0.4, 0, 1))
	elseif chosed == "Visualizer" then
		music("Stop")
		hum.WalkSpeed = 30
		hum.JumpPower = 50
		change = 0.7
		movement = 10
		partchange(gauntlet.a, Enum.Material.SmoothPlastic, Color3.new(0.4, 0.4, 0.4))
		partchange(gauntlet.b, Enum.Material.SmoothPlastic, Color3.new(0.1, 0.1, 0.1))
		partchange(gauntlet.c, Enum.Material.SmoothPlastic, Color3.new(0.1, 0.1, 0.1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 1, 1))
		partchange(gauntlet.e, Enum.Material.SmoothPlastic, Color3.new(0, 0, 0))
		partchange(gauntlet.f, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.g, Enum.Material.SmoothPlastic, Color3.new(1, 1, 1))
		partchange(gauntlet.h, Enum.Material.SmoothPlastic, Color3.new(0.2, 0.2, 0.2))
	end
	partchange(headphone.a, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
	partchange(headphone.b, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
	for i = 1, #leftwing do
		leftwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
		leftwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
		partchange(leftwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
		partchange(leftwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
		partchange(leftwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		partchange(leftwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
	end
	for i = 1, #rightwing do
		rightwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
		rightwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
		partchange(rightwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
		partchange(rightwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
		partchange(rightwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		partchange(rightwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
	end
end

function musicchange(chosen)
	musicchanje(chosen)
	--remote:FireServer("musicchanje", chosen)
end
if plr == lplr then
	GUI = Instance.new("ScreenGui", p.PlayerGui)
	GUI.Name = "BlackHoleKyu"
	GUI.IgnoreGuiInset = true
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
	textlabel.Text = title
end
if plr == lplr then
	gui = GUI
	ImageLabeleffect = Instance.new("ImageLabel", gui)
	ImageLabeleffect.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabeleffect.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabeleffect.Size = UDim2.new(1, 0, 1, 0)
	ImageLabeleffect.Image = "rbxassetid://190596490"
	ImageLabeleffect.BackgroundTransparency = 1
	ImageLabeleffect.ImageTransparency = 0.8
	frame = Instance.new("Frame", gui)
	frame.AnchorPoint = Vector2.new(1, 1)
	frame.Position = UDim2.new(1, -120, 1, -80)
	frame.BackgroundTransparency = 1
	frame2 = Instance.new("Frame", frame)
	frame2.AnchorPoint = Vector2.new(0.5, 0.5)
	frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame2.Size = UDim2.new(0, 100, 0, 100)
	frame2.BorderSizePixel = 5
	frame2.BackgroundTransparency = 0.5
	frame3 = Instance.new("Frame", frame)
	frame3.AnchorPoint = Vector2.new(0.5, 0.5)
	frame3.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame3.Size = UDim2.new(0, 100, 0, 100)
	frame3.BorderSizePixel = 5
	frame3.BackgroundTransparency = 0.5
	text = Instance.new("TextLabel", frame)
	text.AnchorPoint = Vector2.new(0.5, 0.5)
	text.Position = UDim2.new(0.5, 0, 0.5, 0)
	text.FontSize = Enum.FontSize.Size14
	text.TextStrokeTransparency = 0
end
mouse.KeyDown:connect(function(key)
	if key == "q" and debounce == false and plr == lplr then
		chosen = mode[current + 1]
		current = current + 1
		if chosen == nil then
			chosen = mode[1]
			current = 1
		end
		sound(153832545, root.Position, 8, 1)
		shake(40)
		explodemines()
		musicchange(chosen)
		for i = 1, 30 do
			local bezen = Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10)
			local lolwat = Effect(Enum.MeshType.Brick, Vector3.new(5, 5, 20), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position + bezen, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), bezen, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(), 0, 0)
			lolwat.CFrame = CFrame.new(lolwat.Position, root.Position)
		end
		Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2), Vector3.new(), 0.02, -0.05)
		Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position, Vector3.new(), Vector3.new(), Vector3.new(5, 5, 5), Vector3.new(), 0.02, -0.05)
		if jumped == false then
			Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, torso.Position + Vector3.new(0, -2, 0), Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.02, 0)
			Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, torso.Position + Vector3.new(0, -2, 0), Vector3.new(90, 0, 0), Vector3.new(0, 2, 0), Vector3.new(1, 1, 1), Vector3.new(), 0.02, -0.02)
		end
	end
	if key == "z" and debounce == false and (chosen == "GALAXYBURST" or chosen == "PLANET//SHAPER") then
		if chosen == "PLANET//SHAPER" then
			chosen = "LunaricStarLight"
		else
			chosen = "IntergalacticSuperNova"
		end
		sound(153832545, root.Position, 10, 0.8)
		shake(100)
		explodemines()
		musicchange(chosen)
		for i = 1, 50 do
			local bezen = Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10)
			local lolwat = Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 40), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position + bezen, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), bezen * 2, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(), 0, 0)
			lolwat.CFrame = CFrame.new(lolwat.Position, root.Position)
		end
		Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2), Vector3.new(), 0.01, -0.05)
		Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position, Vector3.new(), Vector3.new(), Vector3.new(5, 5, 5), Vector3.new(), 0.01, -0.05)
		if jumped == false then
			Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, torso.Position + Vector3.new(0, -2, 0), Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.01, 0)
			Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, torso.Position + Vector3.new(0, -2, 0), Vector3.new(90, 0, 0), Vector3.new(0, 2, 0), Vector3.new(1, 1, 1), Vector3.new(), 0.01, -0.01)
		end
	end
end)
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
function projektile(mousepos, size, speed, color)
	local Part0 = Instance.new("Part", DebrisModel)
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Material = Enum.Material.Neon
	Part0.Anchored = false
	Part0.Size = Vector3.new(1, 1, 1)
	Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
	Part0.BottomSurface = Enum.SurfaceType.Smooth
	Part0.TopSurface = Enum.SurfaceType.Smooth
	Part0.Position = Vector3.new(-57, 5, 28)
	Part0.Color = Color3.new(1, 1, 1)
	Part0.CanCollide = false
	local bforce = Instance.new("BodyForce", Part0)
	bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshType = Enum.MeshType.Sphere
	SpecialMesh1.Scale = Vector3.new(1, 1, 1) * size
	local Position = rarm.Position
	local Target = mousepos + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 100 * (mousepos - Position).magnitude
	local direction = Target - Position
	local direction = computeDirection(direction)
	local pos = Position + direction * 2
	Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
	Part0.Velocity = direction * speed
	root.Velocity = root.Velocity + -direction * 5
	local color2 = color
	local loop = rs:connect(function()
		if plr == lplr then
			Effect(Enum.MeshType.Brick, Vector3.new(1.5, 1.5, 1.5) * size, 0, Enum.Material.Neon, color, Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * (speed / 200) / 2, Vector3.new(-0.2, -0.2, -0.2) * (size / 2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
		end
	end)
	local function stop()
		loop:disconnect()
		Part0.Anchored = true
		Part0.Transparency = 1
		Part0.Position = Vector3.new(0, 1000, 0)
		debris:AddItem(Part0, 10)
	end
	delay(10, function()
		stop()
	end)
	local asd
	asd = Part0.Touched:Connect(function(ht)
		if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
			for i = 1, 15 do
				if plr == lplr then
					Effect(Enum.MeshType.Brick, Vector3.new(2.5, 2.5, 2.5) * size, 0, Enum.Material.Neon, color, Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * (size / 2), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
				end
			end
			if plr == lplr then
				Effect(Enum.MeshType.Sphere, Vector3.new(2, 2, 2) * size, 0, Enum.Material.Neon, color, Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.2, 0.2, 0.2) * (size * 2), Vector3.new(), 0.04, 0.1)
				sound(262562442, Part0.Position, 10, math.random(90, 170) / 100)
			end
			for i, v in pairs(findAllNearestTorso(Part0.Position, 10 * size)) do
				local hit = v.Parent
				if hit:FindFirstChildOfClass("Humanoid") then
					local hum = hit:FindFirstChildOfClass("Humanoid")
					if hum.MaxHealth > 1.0E100 then
						--remote:FireServer("breakjoints", v.Parent)
					else
						--remote:FireServer("damage", hum, hum.MaxHealth / math.random(5, 6) * (size / 2))
					end
				end
			end
			stop()
			asd:disconnect()
		end
	end)
end

function projectile(pos, size, speed, color)
	projektile(pos, size, speed, color)
	--remote:FireServer("projektile", pos, size, speed, color)
end
local Prefix = "/e "
p.Chatted:connect(function(msg)
	if plr == lplr then
		if msg:lower():sub(1, #Prefix + #"play ") == Prefix .. "play " and chosen == "Visualizer" then
			local v = tonumber(msg:sub(#Prefix + #"play " + 1))
			print("Playing id \"" .. v .. "\"")
			music(v)
			max = 0
		elseif msg:lower():sub(1, #Prefix + #"stop") == Prefix .. "stop" and chosen == "Visualizer" then
			music("Stop")
		elseif msg:lower():sub(1, #Prefix + #"prefix ") == Prefix .. "prefix " then
			local v = msg:sub(#Prefix + #"prefix " + 1)
			print("Prefix changed to \"" .. v .. "\"")
			Prefix = tostring(v)
		end
	end
end)
local alreadytouched = {}
hitsounds = {
	260430117,
	260430060,
	260430079
}
function attackone()
	local asdf
	local spd = 0.4
	for i = 1, 5 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(150), math.rad(0), math.rad(0)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), spd)
	end
	attacking = true
	shake(10)
	local alreadytouched = {}
	local spd = 0.4
	for i = 1, 5 do
		rs:wait()
		for i, ht in pairs(findAllNearestTorso(rarm.Position, 4)) do
			local hit = ht.Parent
			if attacking == true and checkIfNotPlayer(ht) and hit:FindFirstChildOfClass("Humanoid") and 0 < hit:FindFirstChildOfClass("Humanoid").Health then
				local hurt = true
				for i, v in pairs(alreadytouched) do
					if v == hit then
						hurt = false
					end
				end
				if hurt == true then
					table.insert(alreadytouched, hit)
					if hit:FindFirstChildOfClass("Humanoid") then
						local hum = hit:FindFirstChildOfClass("Humanoid")
						if hum.MaxHealth > 1.0E100 then
							--remote:FireServer("breakjoints", hit)
						else
							--remote:FireServer("damage", hum, hum.MaxHealth / math.random(5, 6) * (size / 2))
						end
						sound(hitsounds[math.random(1, #hitsounds)], hit:FindFirstChild("HumanoidRootPart").Position, 2, math.random(9, 11) / 10)
					end
				end
			end
		end
		local efekt = Effect(Enum.MeshType.Brick, rarm.Size, 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, rarm.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.1, 0.2, -0.1), Vector3.new(), 0, 0)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-10)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
		efekt.Mesh.Scale = Vector3.new(efekt.Mesh.Scale.X, (efekt.Position - rarm.Position).magnitude, efekt.Mesh.Scale.Z)
		efekt.CFrame = CFrame.new(efekt.Position, rarm.Position) * CFrame.Angles(math.rad(90), 0, 0)
	end
	animsync = false
end
function attacktwo()
	local asdf
	local spd = 0.2
	for i = 1, 10 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
	end
	attacking = true
	shake(20)
	local alreadytouched = {}
	local spd = 0.4
	for i = 1, 5 do
		rs:wait()
		for i, ht in pairs(findAllNearestTorso(rarm.Position, 4)) do
			local hit = ht.Parent
			if attacking == true and checkIfNotPlayer(ht) and hit:FindFirstChildOfClass("Humanoid") and 0 < hit:FindFirstChildOfClass("Humanoid").Health then
				local hurt = true
				for i, v in pairs(alreadytouched) do
					if v == hit then
						hurt = false
					end
				end
				if hurt == true then
					table.insert(alreadytouched, hit)
					if hit:FindFirstChildOfClass("Humanoid") then
						local hum = hit:FindFirstChildOfClass("Humanoid")
						if hum.MaxHealth > 1.0E100 then
							--remote:FireServer("breakjoints", hit)
						else
							--remote:FireServer("damage", hum, hum.MaxHealth / math.random(5, 6) * (size / 2))
						end
						sound(hitsounds[math.random(1, #hitsounds)], hit:FindFirstChild("HumanoidRootPart").Position, 2, math.random(9, 11) / 10)
					end
				end
			end
		end
		local efekt = Effect(Enum.MeshType.Brick, rarm.Size, 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, rarm.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.1, 0.2, -0.1), Vector3.new(), 0, 0)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 0.55, -0.5) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(-40)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
		efekt.Mesh.Scale = Vector3.new(efekt.Mesh.Scale.X, (efekt.Position - rarm.Position).magnitude, efekt.Mesh.Scale.Z)
		efekt.CFrame = CFrame.new(efekt.Position, rarm.Position) * CFrame.Angles(math.rad(90), 0, 0)
	end
	animsync = false
end
function attackthree()
	local asdf
	local spd = 0.1
	for i = 1, 20 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(0)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-20)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(-40), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.55, -0.5) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
	end
	attacking = true
	shake(40)
	local spd = 0.4
	for i = 1, 5 do
		rs:wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
		hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-140), math.rad(0), math.rad(0)), spd)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(40)), spd)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-40), math.rad(40), math.rad(0)), spd)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.45, -0.5) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.45, 0.1) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
	end
	for i, v in pairs(findAllNearestTorso(rarm.Position, 8)) do
		local hit = v.Parent
		if hit:FindFirstChildOfClass("Humanoid") then
			local hum = hit:FindFirstChildOfClass("Humanoid")
			if hum.MaxHealth > 1.0E100 then
				--remote:FireServer("breakjoints", v)
			else
				--remote:FireServer("damage", hum, hum.MaxHealth / math.random(5, 6) * (size / 2))
			end
			sound(hitsounds[math.random(1, #hitsounds)], hit:FindFirstChild("HumanoidRootPart").Position, 2, math.random(9, 11) / 10)
		end
	end
	sound(1388740053, rarm.Position, 10, math.random(150, 170) / 100)
	Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, rarm.Position, Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.05, -0.05)
	Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, rarm.Position, root.Orientation, Vector3.new(), Vector3.new(0.1, 0.1, 0.1), Vector3.new(), 0.05, 0)
	animsync = false
end
local combo = 1
local timer = 0
mouse.Button1Down:connect(function()
	if plr == lplr then
		animsync = true
		if debounce == false and chosen ~= "IntergalacticSuperNova" then
			timer = 40
			noidle = true
			debounce = true
			if combo == 1 then
				attackone()
				combo = 2
			elseif combo == 2 then
				attacktwo()
				combo = 3
			elseif combo == 3 then
				attackthree()
				combo = 1
			end
			attacking = false
			noidle = false
			debounce = false
		end
		if chosen == "IntergalacticSuperNova" and debounce == false then
			do
				local asdup = false
				local asdfp
				noidle = true
				asdfp = mouse.Button1Up:connect(function()
					asdup = true
					asdfp:disconnect()
				end)
				local bg = Instance.new("BodyGyro", root)
				bg.Name = "lolnochara"
				bg.P = 10000
				bg.D = 100
				bg.MaxTorque = Vector3.new(10000, 10000, 10000)
				if jumped == false then
					root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				local loop
				loop = rs:connect(function()
					if jumped == false then
						root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
						bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					else
						root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
						bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					end
				end)
				while true do
					rs:wait()
					rs:wait()
					rs:wait()
					rs:wait()
					rs:wait()
					rs:wait()
					sound(743499393, root.Position, 10, math.random(5, 6) / 10)
					spd = 0.4
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(90)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), spd)
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Size = Vector3.new(4, 2, 4)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.new(1, 1, 1)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.Scale = Vector3.new(1, 2, 1)
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						SpecialMesh1.Scale = Vector3.new(1, 2, 1)
						local Position = rarm.Position
						local Target = mouse.Hit.p
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 80
						root.Velocity = root.Velocity + -direction * 20
						local color2 = math.random(80000, 100000) / 100000
						local color = ColorSequence.new(Color3.fromHSV(color2, 1, 1), Color3.fromHSV(color2 - 0.2, 1, 1))
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(4, 3)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 0 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(25)
						end
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(4, 3)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 3 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(25)
						end
						if math.random(0, 1) == 1 then
							Part0.RotVelocity = Part0.CFrame.upVector * 3
						else
							Part0.RotVelocity = Part0.CFrame.upVector * -3
						end
						local function stop()
							Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(), 0.01, 0.02)
							Part0.Anchored = true
							Part0.Transparency = 1
							Part0.Position = Vector3.new(0, 1000, 0)
							for i, v in pairs(Part0:GetChildren()) do
								if v:IsA("ParticleEmitter") then
									v.Enabled = false
								end
							end
							debris:AddItem(Part0, 10)
						end
						delay(10, function()
							stop()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								for i = 1, 10 do
									Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
								end
								Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0.4, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.5, 0.5, 0.5), Vector3.new(), 0.01, 0.1)
								sound(1202657035, Part0.Position, 10, math.random(90, 110) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 40)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(2, 3))
								end
								stop()
								asd:disconnect()
							end
						end)
						if asdup == true then
							break
						end
					end
				end
				loop:disconnect()
				bg:Destroy()
				noidle = false
				animsync = false
			end
		end
	end
end)
local debounce = false
local debounceeonly = false
mouse.KeyDown:connect(function(key)
	if plr == lplr then
		if key == "e" and debounce == false and chosen == "IntergalacticSuperNova" then
			local mousepos = mouse.Hit.p
			if (mousepos - root.Position).magnitude <= 300 then
				sound(1012554393, root.Position, 10, math.random(150, 160) / 100)
				sound(1202657035, mousepos, 10, math.random(110, 140) / 100)
				local spd = 0.4
				for i, v in pairs(findAllNearestTorso(mousepos, 15)) do
					--remote:FireServer("damage", v.Parent:FindFirstChildOfClass("Humanoid"), v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(5, 6))
				end
				local tempcolor = Color3.fromHSV(math.random(60000, 80000) / 100000, 0.5, 1)
				Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5) * 3, 0, Enum.Material.Neon, tempcolor, root.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(), Vector3.new(-1, 2, -1) * 2, Vector3.new(), 0, 0)
				root.CFrame = CFrame.new(mousepos + Vector3.new(0, 3, 0)) * CFrame.Angles(math.rad(root.Orientation.X), math.rad(root.Orientation.Y), math.rad(root.Orientation.Z))
				for i = 1, 10 do
					Effect(Enum.MeshType.Brick, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, tempcolor, root.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), root.Velocity / 100 + Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) / 2, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
				end
				Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5) * 3, 0, Enum.Material.Neon, tempcolor, mousepos, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2) * 2, Vector3.new(), 0.1, 0)
			end
		end
		if key == "r" and debounce == false and debounceeonly == false and chosen == "IntergalacticSuperNova" then
			animsync = true
			debounceeonly = true
			debounce = true
			local spd = 0.2
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-40), math.rad(0)), spd)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-10)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), spd)
				if i == 5 then
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Size = Vector3.new(4, 2, 4)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.new(1, 1, 1)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.Scale = Vector3.new(1, 2, 1) * 4
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						SpecialMesh1.Scale = Vector3.new(1, 2, 1) * 4
						local Position = rarm.Position
						local Target = mouse.Hit.p
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 20
						root.Velocity = root.Velocity + -direction * 20
						local color2 = math.random(80000, 100000) / 100000
						local color = ColorSequence.new(Color3.fromHSV(color2, 1, 1), Color3.fromHSV(color2 - 0.2, 1, 1))
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(16, 12)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 0 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(40)
						end
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(16, 12)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 3 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(40)
						end
						if math.random(0, 1) == 1 then
							Part0.RotVelocity = Part0.CFrame.upVector * 3
						else
							Part0.RotVelocity = Part0.CFrame.upVector * -3
						end
						local function stop()
							Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4) * 4, 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(), 0.005, 0.02)
							Part0.Anchored = true
							Part0.Transparency = 1
							Part0.Position = Vector3.new(0, 1000, 0)
							for i, v in pairs(Part0:GetChildren()) do
								if v:IsA("ParticleEmitter") then
									v.Enabled = false
								end
							end
							debris:AddItem(Part0, 10)
						end
						delay(10, function()
							stop()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								for i = 1, 80 do
									Effect(Enum.MeshType.Brick, Vector3.new(15, 15, 15), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
								end
								Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4) * 4, 0.4, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.5, 0.5, 0.5), Vector3.new(), 0.005, 0.1)
								sound(1202657035, Part0.Position, 10, math.random(60, 70) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 150)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / (math.random(1, 2) / 2))
								end
								stop()
								asd:disconnect()
							end
						end)
					end
				end
			end
			debounce = false
			animsync = false
			wait(2)
			debounceeonly = false
		end
		if key == "e" and debounce == false and chosen == "GALAXYBURST" then
			animsync = true
			debounce = true
			do
				local power = 4
				local up = false
				mouse.KeyUp:connect(function(key)
					if key == "e" then
						up = true
					end
				end)
				repeat
					rs:wait()
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.2, 0.55, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.5)
					if power < 10 then
						power = power + 0.5
					end
				until up == true
				noidle = true
				local bg = Instance.new("BodyGyro", root)
				bg.Name = "lolnochara"
				bg.P = 10000
				bg.D = 100
				bg.MaxTorque = Vector3.new(10000, 10000, 10000)
				if jumped == false then
					root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				local loop
				loop = rs:connect(function()
					if jumped == false then
						root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
						bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					else
						root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
						bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					end
				end)
				freeze()
				local spd = 0.4
				for i = 1, 10 do
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(90)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), spd)
				end
				for i = 1, power do
					for i = 1, 10 - power / 2 do
						rs:wait()
					end
					sound(743499393, root.Position, 10, math.random(9, 11) / 10)
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Size = Vector3.new(2, 2, 2)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.new(1, 1, 1)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						local Position = rarm.Position
						local Target = mouse.Hit.p + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 100 * (mouse.Hit.p - Position).magnitude
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 100
						root.Velocity = root.Velocity + -direction * 5
						local color2 = math.random(80000, 100000) / 100000
						local color = ColorSequence.new(Color3.fromHSV(color2, 1, 1), Color3.fromHSV(color2 - 0.2, 1, 1))
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
						ParticleEmitter2.Size = NumberSequence.new(2, 1.5)
						ParticleEmitter2.LightEmission = 1
						ParticleEmitter2.Texture = "rbxassetid://965116971"
						ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
						ParticleEmitter2.Rate = 100
						ParticleEmitter2.Color = color
						ParticleEmitter2.Acceleration = Part0.Velocity * 0.1
						ParticleEmitter2.Speed = NumberRange.new(0)
						local function stop()
							Part0.Anchored = true
							Part0.Transparency = 1
							Part0.Position = Vector3.new(0, 1000, 0)
							ParticleEmitter2.Enabled = false
							debris:AddItem(Part0, 10)
						end
						delay(10, function()
							stop()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								for i = 1, 25 do
									Effect(Enum.MeshType.Brick, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) / 2, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
								end
								Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.2, 0.2, 0.2), Vector3.new(), 0.02, 0.05)
								sound(262562442, Part0.Position, 10, math.random(90, 170) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 10)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(4, 6))
								end
								stop()
								asd:disconnect()
							end
						end)
					end
				end
				freeze()
				bg:Destroy()
				loop:disconnect()
				noidle = false
				animsync = false
				debounce = false
			end
		end
		if key == "r" and debounce == false and debounceeonly == false and chosen == "GALAXYBURST" then
			animsync = true
			debounceeonly = true
			debounce = true
			local spd = 0.2
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-40), math.rad(0)), spd)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-10)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), spd)
				if i == 5 then
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Size = Vector3.new(4, 2, 4)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.new(1, 1, 1)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.Scale = Vector3.new(1, 2, 1)
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						SpecialMesh1.Scale = Vector3.new(1, 2, 1)
						local Position = rarm.Position
						local Target = mouse.Hit.p
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 10
						root.Velocity = root.Velocity + -direction * 20
						local color2 = math.random(80000, 100000) / 100000
						local color = ColorSequence.new(Color3.fromHSV(color2, 1, 1), Color3.fromHSV(color2 - 0.2, 1, 1))
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(2, 1.5)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 0 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(10)
						end
						for i = 0, 1 do
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Rotation = NumberRange.new(-180, 180)
							ParticleEmitter2.Size = NumberSequence.new(2, 1.5)
							ParticleEmitter2.LightEmission = 1
							ParticleEmitter2.Texture = "rbxassetid://965116971"
							ParticleEmitter2.Lifetime = NumberRange.new(2, 2)
							ParticleEmitter2.Rate = 100
							ParticleEmitter2.Color = color
							ParticleEmitter2.Acceleration = Part0.Velocity
							ParticleEmitter2.EmissionDirection = 3 + i * 2
							ParticleEmitter2.Speed = NumberRange.new(10)
						end
						if math.random(0, 1) == 1 then
							Part0.RotVelocity = Part0.CFrame.upVector * 3
						else
							Part0.RotVelocity = Part0.CFrame.upVector * -3
						end
						local function stop()
							Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(), 0.01, 0.02)
							Part0.Anchored = true
							Part0.Transparency = 1
							Part0.Position = Vector3.new(0, 1000, 0)
							for i, v in pairs(Part0:GetChildren()) do
								if v:IsA("ParticleEmitter") then
									v.Enabled = false
								end
							end
							debris:AddItem(Part0, 10)
						end
						delay(10, function()
							stop()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								for i = 1, 40 do
									Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
								end
								Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0.4, Enum.Material.Neon, Color3.fromHSV(color2 - 0.2, 0.3, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.5, 0.5, 0.5), Vector3.new(), 0.01, 0.1)
								sound(1202657035, Part0.Position, 10, math.random(90, 110) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 40)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(2, 3))
								end
								stop()
								asd:disconnect()
							end
						end)
					end
				end
			end
			debounce = false
			animsync = false
			wait(2)
			debounceeonly = false
		end
		if key == "e" and debounce == false and chosen == "Dyscontrolled" then
			animsync = true
			debounce = true
			noidle = true
			freeze()
			debounce = true
			noidle = true
			local bg = Instance.new("BodyGyro", root)
			bg.Name = "lolnochara"
			bg.P = 10000
			bg.D = 100
			bg.MaxTorque = Vector3.new(10000, 10000, 10000)
			if jumped == false then
				root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
			else
				root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				if jumped == false then
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
			end
			sound(1202656211, root.Position, 10, math.random(90, 110) / 100)
			local Position = rarm.Position - rarm.CFrame.upVector
			local Target = mouse.Hit.p
			local direction = Target - Position
			local direction = computeDirection(direction)
			local ray = Ray.new(Position, (Target - Position).unit * 1048)
			local part, endPoint = workspace:FindPartOnRay(ray, char)
			for i, v in pairs(findAllNearestTorso(endPoint, 30)) do
				--remote:FireServer("damage", v.Parent:FindFirstChildOfClass("Humanoid"), v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(10, 12))
			end
			local Part0 = Effect(Enum.MeshType.Sphere, Vector3.new(4, (Position - endPoint).magnitude, 4), 0, Enum.Material.Neon, Color3.fromHSV(0.5, 0, 1), root.Position, Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(-0.1, 0, -0.1), Vector3.new(), 0, -0.005)
			local pos = Position + direction * (Part0.Mesh.Scale.Y / 2)
			Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(180), 0, 0)
			if part then
				sound(821439273, endPoint, 10, math.random(90, 110) / 100)
				for i = 1, 5 do
					Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1) * math.random(4, 10), 0, Enum.Material.Neon, Color3.new(0.5, 0, 1), endPoint + Vector3.new(math.random(-2, 2) * 5, math.random(-2, 2) * 5, math.random(-2, 2) * 5), Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.04, -0.002)
				end
			end
			bg:Destroy()
			local spd = 0.5
			for i = 1, 5 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(0), math.rad(50)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
			end
			freeze()
			noidle = false
			debounce = false
			animsync = false
		end
		if key == "r" and debounce == false and chosen == "Dyscontrolled" then
			animsync = true
			debounce = true
			noidle = true
			freeze()
			local spd = 0.2
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-40), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-10), math.rad(40), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(-10), math.rad(40), math.rad(0)), spd)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-10)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-80), math.rad(0)), spd)
				if i == 5 then
					shake(20)
					sound(1388740053, rarm.Position, 10, math.random(150, 170) / 100)
					Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, rarm.Position, root.Orientation, Vector3.new(), Vector3.new(0.1, 0.1, 0.1), Vector3.new(), 0.05, 0)
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Transparency = 0.5
						Part0.Size = Vector3.new(1, 2, 1)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.Scale = Vector3.new(2, 2, 2)
						SpecialMesh1.MeshType = Enum.MeshType.Brick
						local Position = root.Position
						local Target = root.Position + root.CFrame.lookVector + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 250
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(0), 0, 0)
						Part0.Velocity = direction * 100
						root.Velocity = -direction * 100
						Part0.Color = Color3.fromHSV(0.8, 1, 1)
						local loop
						loop = rs:connect(function()
							Effect(Enum.MeshType.Brick, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, Color3.fromHSV(0.8, 1, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) / 2, Vector3.new(-0.2, -0.2, -0.2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
						end)
						delay(10, function()
							loop:disconnect()
							Part0:Destroy()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								for i = 1, 25 do
									Effect(Enum.MeshType.Brick, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, Color3.fromHSV(0.8, 1, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-5, 20) / 10) / 3, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
								end
								loop:disconnect()
								Part0:Destroy()
								Effect(Enum.MeshType.Sphere, Vector3.new(4, 4, 4), 0, Enum.Material.Neon, Color3.fromHSV(0.8, 1, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(0.2, 0.2, 0.2), Vector3.new(), 0.02, 0.05)
								sound(262562442, Part0.Position, 10, math.random(90, 170) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 40)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(4, 6))
								end
								asd:disconnect()
							end
						end)
					end
				end
			end
			freeze()
			animsync = false
			noidle = false
			debounce = false
		end
		if key == "e" and debounce == false and chosen == "Epimerization" then
			animsync = true
			debounce = true
			do
				local power = 4
				local up = false
				local triggerpart = Instance.new("Part", DebrisModel)
				local bforce = Instance.new("BodyForce", triggerpart)
				local emitter = Instance.new("ParticleEmitter", triggerpart)
				local meshs = {
					"735240054",
					"735240541",
					"735241042",
					"735241392",
					"735241628"
				}
				local mesh = Instance.new("SpecialMesh", triggerpart)
				triggerpart.CanCollide = false
				triggerpart.Color = Color3.fromHSV(0.55, math.random(200, 500) / 1000, 1)
				triggerpart.Material = Enum.Material.Glass
				triggerpart.Transparency = 0.5
				triggerpart.Anchored = true
				mesh.MeshId = "rbxassetid://" .. meshs[math.random(1, #meshs)]
				emitter.LightEmission = 1
				emitter.Transparency = NumberSequence.new(0.95, 1)
				emitter.Size = NumberSequence.new(1, 5)
				emitter.SpreadAngle = Vector2.new(360, 360)
				emitter.Speed = NumberRange.new(1)
				emitter.Lifetime = NumberRange.new(2.5)
				emitter.Texture = "rbxassetid://476778304"
				emitter.Rate = 25
				Effect(Enum.MeshType.Sphere, Vector3.new(1.5, 1.5, 1.5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, mouse.Hit.p + Vector3.new(0, 40, 0), Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.05, -0.05)
				mouse.KeyUp:connect(function(key)
					if key == "e" then
						up = true
					end
				end)
				local random = math.random(0, 360000) / 1000
				local timer = 0
				local x = 0
				repeat
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(50)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
					if power < 10 then
						x = x + 1
						if timer <= x then
							timer = x + 20
							Effect(559831844, Vector3.new(0.25, 0.25, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, mouse.Hit.p + Vector3.new(0, 40, 0), Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(0.1, 0.1, 0.1), Vector3.new(), 0.05, 0)
						end
						power = power + 0.1
					end
					triggerpart.Size = Vector3.new(power, power * 2, power)
					mesh.Scale = Vector3.new(0.5, 1, 0.5) * (power / 20)
					emitter.Size = NumberSequence.new(power, power * 5)
					triggerpart.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0, 40, 0)) * CFrame.Angles(0, math.rad(random), 0)
					bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
				until up == true
				triggerpart.Anchored = false
				triggerpart.Velocity = Vector3.new(0, -100, 0)
				local asd
				asd = triggerpart.Touched:connect(function(ht)
					if checkIfNotPlayer(ht) and ht.CanCollide == true and ht.Anchored == true then
						triggerpart.Anchored = true
						delay(2, function()
							sound(357568316, triggerpart.Position, 10, 1.5 - power / 40)
							for i, v in pairs(findAllNearestTorso(triggerpart.Position, 20 + power)) do
								local hit = v.Parent
								--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / (math.random(30, 35) - power * 2))
							end
							Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1) * (power * 2), 0, Enum.Material.Neon, triggerpart.Color, triggerpart.Position, Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1) * (power / 2), Vector3.new(), 0.05, -0.05 * (power / 2))
							triggerpart:Destroy()
						end)
						asd:disconnect()
					end
				end)
				animsync = false
				debounce = false
			end
		end
		if key == "r" and debounce == false and debounceeonly == false and chosen == "Epimerization" then
			animsync = true
			debounce = true
			debounceeonly = true
			noidle = true
			freeze()
			do
				local mousepos = mouse.Hit.p
				local power = 4
				local spd = 0.4
				Effect(559831844, Vector3.new(0.25, 0.25, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, mousepos + Vector3.new(0, 50, 0), Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(0.1, 0.1, 0.1), Vector3.new(), 0.05, 0)
				local part = Instance.new("Part", DebrisModel)
				part.Size = Vector3.new(10, 10, 10)
				part.CFrame = CFrame.new(mousepos + Vector3.new(0, 50, 0))
				part.Anchored = true
				part.Material = Enum.Material.Neon
				part.CanCollide = false
				part.Color = gauntlet.d:FindFirstChildOfClass("Part").Color
				local mesh = Instance.new("SpecialMesh", part)
				mesh.MeshType = Enum.MeshType.Sphere
				for i = 0, 1, 0.05 do
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(50)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					mesh.Scale = Vector3.new(1, 1, 1) * i
				end
				delay(1, function()
					debounceeonly = false
				end)
				freeze()
				noidle = false
				debounce = false
				for i = 1, 50 do
					rs:wait()
					rs:wait()
					rs:wait()
					rs:wait()
					do
						local random = math.random(0, 360000) / 1000
						local triggerpart = Instance.new("Part", DebrisModel)
						local bforce = Instance.new("BodyForce", triggerpart)
						local emitter = Instance.new("ParticleEmitter", triggerpart)
						local meshs = {
							"735240054",
							"735240541",
							"735241042",
							"735241392",
							"735241628"
						}
						local mesh = Instance.new("SpecialMesh", triggerpart)
						triggerpart.CanCollide = false
						triggerpart.Color = Color3.fromHSV(0.55, math.random(200, 500) / 1000, 1)
						triggerpart.Material = Enum.Material.Glass
						triggerpart.Transparency = 0.5
						mesh.MeshId = "rbxassetid://" .. meshs[math.random(1, #meshs)]
						emitter.LightEmission = 1
						emitter.Transparency = NumberSequence.new(0.95, 1)
						emitter.Size = NumberSequence.new(1, 5)
						emitter.SpreadAngle = Vector2.new(360, 360)
						emitter.Speed = NumberRange.new(1)
						emitter.Lifetime = NumberRange.new(2.5)
						emitter.Texture = "rbxassetid://476778304"
						emitter.Rate = 25
						triggerpart.Size = Vector3.new(power, power * 2, power)
						mesh.Scale = Vector3.new(0.5, 1, 0.5) * (power / 20)
						emitter.Size = NumberSequence.new(power, power * 5)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						local Position = mousepos + Vector3.new(0, 50, 0)
						local Target = mousepos + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)) * 10
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						triggerpart.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(0), 0, 0)
						triggerpart.Velocity = direction * 100
						local asd
						asd = triggerpart.Touched:connect(function(ht)
							if checkIfNotPlayer(ht) and ht.CanCollide == true and ht.Anchored == true then
								triggerpart.Anchored = true
								delay(2, function()
									sound(357568316, triggerpart.Position, 10, 1.5 - power / 40)
									for i, v in pairs(findAllNearestTorso(triggerpart.Position, 20 + power)) do
										local hit = v.Parent
										--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / (math.random(30, 35) - power * 2))
									end
									Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1) * (power * 2), 0, Enum.Material.Neon, triggerpart.Color, triggerpart.Position, Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1) * (power / 2), Vector3.new(), 0.05, -0.05 * (power / 2))
									triggerpart:Destroy()
								end)
								asd:disconnect()
							end
						end)
					end
				end
				for i = 1, 0, -0.1 do
					rs:wait()
					mesh.Scale = Vector3.new(1, 1, 1) * i
				end
				animsync = false
			end
		end
		if key == "e" and debounce == false and chosen == "OverComplexification" then
			animsync = true
			debounce = true
			do
				local power = 1
				local up = false
				mouse.KeyUp:connect(function(key)
					if key == "e" then
						up = true
					end
				end)
				repeat
					rs:wait()
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.2, 0.55, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)), 0.5)
					if power < 6 then
						power = power + 0.1
					end
				until up == true
				noidle = true
				local bg = Instance.new("BodyGyro", root)
				bg.Name = "lolnochara"
				bg.P = 10000
				bg.D = 100
				bg.MaxTorque = Vector3.new(10000, 10000, 10000)
				if jumped == false then
					root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				local loop
				loop = rs:connect(function()
					if jumped == false then
						root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
						bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
					else
						root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
						bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
					end
				end)
				freeze()
				local spd = 0.4
				for i = 1, 10 do
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(90)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), spd)
				end
				for i = 1, power do
					for i = 1, 5 - power / 2 do
						rs:wait()
						rs:wait()
					end
					sound(743499393, root.Position, 10, math.random(9, 11) / 10)
					do
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Name = "MINE"
						Part0.Anchored = false
						Part0.Size = Vector3.new(1, 1, 1)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.new(1, 1, 1)
						Part0.CanCollide = true
						SpecialMesh1.Parent = Part0
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						local Position = rarm.Position
						local Target = mouse.Hit.p + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 50 * (mouse.Hit.p - Position).magnitude
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 150
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * 0.5 * workspace.Gravity, 0)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								Part0.CanCollide = false
								local weld = Instance.new("Weld", Part0)
								weld.Part0 = ht
								weld.Part1 = Part0
								asd:disconnect()
							end
						end)
					end
				end
				freeze()
				bg:Destroy()
				loop:disconnect()
				noidle = false
				animsync = false
				debounce = false
			end
		end
		if key == "r" and debounce == false and chosen == "OverComplexification" then
			explodemines()
		end
		if key == "r" and debounce == false and chosen == "Syzyg\195\173a" and jumped == false then
			animsync = true
			do
				local ray = Ray.new(root.Position, Vector3.new(0, -6, 0))
				local part, endPoint = workspace:FindPartOnRay(ray, char)
				local mousepos = mouse.Hit.p
				debounce = true
				noidle = true
				freeze()
				local spd = 0.4
				for i = 1, 50 do
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.4, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
				end
				shake(50)
				local bullet = Instance.new("Part", DebrisModel)
				bullet.Material = part.Material
				bullet.Color = part.Color
				bullet.TopSurface = part.TopSurface
				bullet.BottomSurface = part.BottomSurface
				bullet.Size = Vector3.new(math.random(500, 1000) / 1000, math.random(500, 1000) / 1000, math.random(500, 1000) / 1000) * (math.random(100, 110) / 10)
				bullet.CFrame = CFrame.new(Vector3.new(root.Position.X, endPoint.Y, root.Position.Z), mousepos) * CFrame.new(0, 0, -10)
				sound(1388740053, root.Position, 10, math.random(150, 170) / 100)
				local bforce = Instance.new("BodyForce", bullet)
				bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
				local bp = Instance.new("BodyPosition", bullet)
				bp.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
				bp.P = 10000
				bp.D = 1000
				bp.Position = bullet.Position + Vector3.new(0, 20, 0)
				local spd = 0.6
				for i = 1, 50 do
					rs:wait()
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.45, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				end
				freeze()
				bp:Destroy()
				delay(0.2, function()
					local Position = bullet.Position
					local Target = mousepos + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) / 250 * (mouse.Hit.p - Position).magnitude
					local direction = Target - Position
					local direction = computeDirection(direction)
					bullet.Velocity = direction * 100
					debris:AddItem(bullet, 10)
					local asd
					asd = bullet.Touched:Connect(function(ht)
						if checkIfNotPlayer(ht) == true and ht.CanCollide == true and ht.Parent:FindFirstChildOfClass("Humanoid") then
							local hit = ht.Parent
							--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(8, 10))
						end
						if checkIfNotPlayer(ht) == true and ht.CanCollide == true and ht.Anchored == true then
							Effect(Enum.MeshType.Sphere, Vector3.new(15, 15, 15), 0, Enum.Material.Neon, ht.Color, bullet.Position, Vector3.new(), Vector3.new(), Vector3.new(0.2, 0.2, 0.2), Vector3.new(), 0.02, 0.05)
							sound(262562442, bullet.Position, 10, math.random(90, 170) / 100)
							for i, v in pairs(findAllNearestTorso(bullet.Position, 40)) do
								local hit = v.Parent
								--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(4, 6))
							end
							bullet:Destroy()
							asd:disconnect()
						end
					end)
				end)
				animsync = false
				debounce = false
				noidle = false
			end
		end
		if key == "e" and debounce == false and debounceeonly == false and chosen == "PLANET//SHAPER" then
			animsync = true
			debounceeonly = true
			debounce = true
			local spd = 0.2
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-40), math.rad(0)), spd)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(80), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-10)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(0)), spd)
				if i == 5 then
					do
						local color = math.random(16666, 33333) / 100000
						local Part0 = Instance.new("Part", DebrisModel)
						local SpecialMesh1 = Instance.new("SpecialMesh")
						Part0.Material = Enum.Material.Neon
						Part0.Anchored = false
						Part0.Size = Vector3.new(4, 2, 4)
						Part0.CFrame = CFrame.new(-57, 5, 28, 0.99999994, 0, 0, 0, 1, -5.56362707E-8, 0, 5.56362707E-8, 1)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.Position = Vector3.new(-57, 5, 28)
						Part0.Color = Color3.fromHSV(color, 1, 1)
						Part0.CanCollide = false
						local bforce = Instance.new("BodyForce", Part0)
						bforce.force = Vector3.new(0, bforce.Parent:getMass() * workspace.Gravity, 0)
						SpecialMesh1.Parent = Part0
						SpecialMesh1.MeshType = Enum.MeshType.Sphere
						SpecialMesh1.Scale = Vector3.new(1, 2, 1)
						local Position = rarm.Position
						local Target = mouse.Hit.p
						local direction = Target - Position
						local direction = computeDirection(direction)
						local pos = Position + direction * 2
						Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(90), 0, 0)
						Part0.Velocity = direction * 100
						root.Velocity = root.Velocity + -direction * 20
						if math.random(0, 1) == 1 then
							Part0.RotVelocity = Part0.CFrame.upVector * 8
						else
							Part0.RotVelocity = Part0.CFrame.upVector * -8
						end
						local loop
						loop = rs:connect(function()
							Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(color, 1, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) / 2, Vector3.new(-0.2, -0.2, -0.2), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
						end)
						local function stop()
							for i = 1, 25 do
								Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(color, 1, 1), Part0.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
							end
							Effect(Enum.MeshType.Sphere, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(color, 1, 1), Part0.Position, Vector3.new(), Vector3.new(), Vector3.new(-0.2, -0.2, -0.2), Vector3.new(), 0.01, 0.02)
							Part0.Anchored = true
							Part0.Transparency = 1
							Part0.Position = Vector3.new(0, 1000, 0)
							loop:disconnect()
							for i, v in pairs(Part0:GetChildren()) do
								if v:IsA("ParticleEmitter") then
									v.Enabled = false
								end
							end
							debris:AddItem(Part0, 10)
						end
						delay(10, function()
							stop()
						end)
						local asd
						asd = Part0.Touched:Connect(function(ht)
							if checkIfNotPlayer(ht) == true and ht.CanCollide == true then
								sound(1202657035, Part0.Position, 10, math.random(90, 110) / 100)
								for i, v in pairs(findAllNearestTorso(Part0.Position, 40)) do
									local hit = v.Parent
									--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(8, 10))
								end
								stop()
								asd:disconnect()
							end
						end)
					end
				end
			end
			animsync = false
			debounce = false
			wait(0.1)
			debounceeonly = false
		end
		if key == "r" and debounce == false and chosen == "PLANET//SHAPER" then
			animsync = true
			debounce = true
			noidle = true
			freeze()
			debounce = true
			noidle = true
			local bg = Instance.new("BodyGyro", root)
			bg.Name = "lolnochara"
			bg.P = 10000
			bg.D = 100
			bg.MaxTorque = Vector3.new(10000, 10000, 10000)
			if jumped == false then
				root.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
			else
				root.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
			end
			local spd = 0.4
			for i = 1, 10 do
				rs:wait()
				if jumped == false then
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.95, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
			end
			if not torso:FindFirstChild("Masterspark") then
				Instance.new("Sound", torso).Name = "Masterspark"
			end
			local masterspark = torso:FindFirstChild("Masterspark")
			masterspark.Volume = 10
			masterspark.Name = "MasterSpark"
			masterspark.Looped = false
			masterspark.PlaybackSpeed = 1
			masterspark.SoundId = "rbxassetid://164178927"
			masterspark:Play()
			local Position = rarm.Position
			local Part0 = Instance.new("Part", DebrisModel)
			Part0.Name = "Bullet"
			Part0.Material = Enum.Material.Neon
			Part0.Color = Color3.new(0, 1, 0)
			Part0.Anchored = true
			local mesh = Instance.new("SpecialMesh", Part0)
			mesh.MeshType = Enum.MeshType.Sphere
			Part0.CanCollide = false
			local Target = mouse.Hit.p
			local direction = Target - Position
			local direction = computeDirection(direction)
			local ray = Ray.new(Position, (Target - Position).unit * 1048)
			local part, endPoint = workspace:FindPartOnRay(ray, char)
			Part0.Size = Vector3.new(20, 1, 20)
			mesh.Scale = Vector3.new(1, (Position - endPoint).magnitude, 1)
			local pos = Position + direction * (mesh.Scale.Y / 2)
			Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(180), 0, 0)
			local endPoint2 = endPoint
			if part then
				Effect(Enum.MeshType.Sphere, Vector3.new(15, 15, 15), 0, Enum.Material.Neon, Color3.new(1, 1, 1), endPoint, Vector3.new(), Vector3.new(), Vector3.new(0.4, 0.4, 0.4), Vector3.new(), 0.02, 0.1)
			end
			for i = 1, 250 do
				rs:wait()
				local efekt
				Part0.Color = Color3.new(math.sin(i / 10), 1, 0)
				if jumped == false then
					bg.CFrame = CFrame.new(root.Position, Vector3.new(mouse.Hit.x, root.Position.Y, mouse.Hit.z))
				else
					bg.CFrame = CFrame.new(root.Position, mouse.Hit.p)
				end
				local Position = rarm.Position
				local Target = mouse.Hit.p
				local direction = Target - Position
				local direction = computeDirection(direction)
				local ray = Ray.new(Position, (Target - Position).unit * 1048)
				local part, endPoint = workspace:FindPartOnRay(ray, char)
				mesh.Scale = Vector3.new(1 - i / 250, (Position - endPoint).magnitude, 1 - i / 250)
				local pos = Position + direction * (mesh.Scale.Y / 2)
				Part0.CFrame = CFrame.new(pos, pos + direction) * CFrame.Angles(math.pi / 2 + math.rad(180), 0, 0)
				root.Velocity = -direction * 30
				for i, v in pairs(findAllNearestTorso(endPoint, 80)) do
					local hit = v.Parent
					--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / 500)
				end
				if part then
					Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, Part0.Color, endPoint, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) / 2, Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
					efekt = Effect(Enum.MeshType.Brick, Vector3.new(15, 0.2, 15), -15, Enum.Material.Neon, Color3.fromRGB(255, 106, 0), endPoint2, Vector3.new(0, math.random(0, 360), 0), Vector3.new(), Vector3.new(), Vector3.new(), 0.1, 0)
					efekt.Mesh.Scale = Vector3.new(30 - (efekt.Position - endPoint).magnitude / 4, 5 + (efekt.Position - endPoint).magnitude * 1.5, 0.5)
					efekt.CFrame = CFrame.new(efekt.Position, endPoint + efekt.CFrame.lookVector * 5) * CFrame.Angles(math.rad(90), 0, 0)
					endPoint2 = endPoint
				end
			end
			Part0:Destroy()
			bg:Destroy()
			freeze()
			noidle = false
			animsync = false
			debounce = false
		end
		if key == "e" and debounce == false and chosen == "Atomosphere" then
			animsync = true
			do
				local mousepos = mouse.Hit.p
				if (mousepos - root.Position).magnitude <= 150 then
					sound(1202657035, mousepos, 10, math.random(110, 140) / 100)
					do
						local spd = 0.4
						for i = 1, 10 do
							rs:wait()
							hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
							hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
							larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
							rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(50)), spd)
							torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), spd)
						end
						for i, v in pairs(findAllNearestTorso(mousepos, 15)) do
							--remote:FireServer("damage", v.Parent:FindFirstChildOfClass("Humanoid"), v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(5, 6))
						end
						local tempcolor = Color3.fromHSV(0.4 + math.random(0, 1000) / 10000, 0.5, 1)
						coroutine.resume(coroutine.create(function()
							for i = 1, 2 do
								rs:wait()
								rs:wait()
								rs:wait()
								rs:wait()
								rs:wait()
								rs:wait()
								rs:wait()
								rs:wait()
								Effect(Enum.MeshType.Sphere, Vector3.new(10, 10, 10) * 10, 0.999, Enum.Material.Neon, tempcolor, mousepos, Vector3.new(), Vector3.new(), Vector3.new(-0.3, -0.3, -0.3) * 2, Vector3.new(), -0.005, -0.05)
							end
						end))
						for i = 1, 25 do
							Effect(Enum.MeshType.Brick, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, tempcolor, mousepos, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), Vector3.new(-0.1, -0.1, -0.1), Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10), 0, 0)
						end
						Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5) * 2, 0, Enum.Material.Neon, tempcolor, mousepos, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2) * 2, Vector3.new(), 0.03, 0)
					end
				end
				animsync = false
			end
		end
		if key == "r" and debounce == false and chosen == "Atomosphere" then
			animsync = true
			debounce = true
			noidle = true
			noidlew = true
			for i = 1, 50 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1), 0.2)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.Angles(0, math.rad(0), 0), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-50), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-10 - 1 * math.cos(sine / 8))), 0.2)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55 - 0.1 * math.cos(sine / 16) / 2, 0.1 * math.cos(sine / 16)) * CFrame.Angles(math.rad(-50), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(10 + 1 * math.cos(sine / 8))), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-40 - 2 * math.cos(sine / 16)), math.rad(0), math.rad(0 - 1 * math.cos(sine / 32))), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.925 + 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-50 - 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(-2 - 0.5 * math.cos(sine / 8))), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0 + 0.1 * math.cos(sine / 16), -0.8) * CFrame.Angles(math.rad(-40 + 1 * math.cos(sine / 16)), math.rad(0 - 1 * math.cos(sine / 16)), math.rad(2 + 0.5 * math.cos(sine / 8))), 0.2)
				root.Velocity = root.CFrame.lookVector * 300
				leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70), math.rad(-140 + 12 * math.sin(sine / 3))), 0.05)
				leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70), math.rad(-120 + 10 * math.sin(sine / 3))), 0.05)
				leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(70), math.rad(-100 + 8 * math.sin(sine / 3))), 0.05)
				leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 3))), 0.05)
				leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 3))), 0.05)
				leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 3))), 0.05)
				rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70), math.rad(140 - 12 * math.sin(sine / 3))), 0.05)
				rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70), math.rad(120 - 10 * math.sin(sine / 3))), 0.05)
				rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-70), math.rad(100 - 8 * math.sin(sine / 3))), 0.05)
				rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30 - 12 * math.cos(sine / 3))), 0.05)
				rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40 - 10 * math.cos(sine / 3))), 0.05)
				rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50 - 8 * math.cos(sine / 3))), 0.05)
				Effect(Enum.MeshType.Sphere, Vector3.new(30, 10, 10), 0, Enum.Material.Neon, Color3.fromHSV(0.4 + math.random(0, 1000) / 10000, 0.5, 1), root.Position, Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360)), Vector3.new(), Vector3.new(1, -0.5, -0.5), Vector3.new(), 0, 0)
			end
			root.Velocity = Vector3.new()
			noidlew = false
			noidle = false
			debounce = false
			animsync = false
		end
		if key == "e" and debounce == false and chosen == "Racemization" and jumped == false then
			animsync = true
			local mousepos = mouse.Hit.p
			local ray = Ray.new(mousepos + Vector3.new(0, 1, 0), Vector3.new(0, -6, 0))
			local part, endPoint = workspace:FindPartOnRay(ray, char)
			debounce = true
			noidle = true
			freeze()
			local spd = 0.4
			for i = 1, 50 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.4, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
			end
			shake(50)
			local bullet = Instance.new("Part", DebrisModel)
			bullet.Material = part.Material
			bullet.Color = part.Color
			bullet.Anchored = true
			bullet.TopSurface = part.TopSurface
			bullet.BottomSurface = part.BottomSurface
			bullet.Size = Vector3.new(math.random(500, 1000) / 1000, math.random(500, 1000) / 1000, math.random(500, 1000) / 1000) * (math.random(100, 110) / 10)
			bullet.CFrame = CFrame.new(endPoint)
			debris:AddItem(bullet, 5)
			for i, v in pairs(findAllNearestTorso(mousepos, 15)) do
				--remote:FireServer("damage", v.Parent:FindFirstChildOfClass("Humanoid"), v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(10, 12))
				v.Parent:FindFirstChildOfClass("Humanoid").Jump = true
				v.Velocity = v.Velocity + Vector3.new(0, 20, 0)
			end
			sound(1388740053, root.Position, 10, math.random(150, 170) / 100)
			local spd = 0.6
			for i = 1, 50 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.45, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
			end
			freeze()
			debounce = false
			noidle = false
			animsync = false
		end
		if key == "r" and debounce == false and chosen == "Racemization" and jumped == false then
			animsync = true
			local ray = Ray.new(root.Position, Vector3.new(0, -6, 0))
			local part, endPoint = workspace:FindPartOnRay(ray, char)
			local mousepos = mouse.Hit.p
			debounce = true
			noidle = true
			freeze()
			local spd = 0.4
			for i = 1, 50 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.4, -0.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), spd)
			end
			shake(50)
			local temppart = Instance.new("Part", DebrisModel)
			for i = 1, 8 do
				local bullet = Instance.new("Part", workspace)
				bullet.Material = part.Material
				bullet.Color = part.Color
				bullet.TopSurface = part.TopSurface
				bullet.BottomSurface = part.BottomSurface
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
					temppart.CFrame = CFrame.new(root.Position, root.Position + root.CFrame.lookVector) * CFrame.Angles(0, math.rad(i / 40 * 360), 0) * CFrame.new(0, math.random(-10, -5) + z * 5, math.random(-5, 5) - (10 + z * 10))
					local bullet = Instance.new("Part", workspace)
					bullet.Material = part.Material
					bullet.Anchored = true
					bullet.Color = part.Color
					bullet.TopSurface = part.TopSurface
					bullet.BottomSurface = part.BottomSurface
					bullet.Size = Vector3.new(10, 15, 20)
					bullet.CFrame = CFrame.new(temppart.Position + Vector3.new(0, -5, 0), root.Position + Vector3.new(0, -10, 0))
					debris:AddItem(bullet, 5)
				end
			end
			Effect(Enum.MeshType.Sphere, Vector3.new(10, 10, 10), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, torso.Position, Vector3.new(), Vector3.new(), Vector3.new(2, 2, 2), Vector3.new(), 0.025, -0.025)
			Effect(559831844, Vector3.new(0.2, 0.2, 0), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, torso.Position + Vector3.new(0, -2, 0), Vector3.new(90, 0, 0), Vector3.new(0, 2, 0), Vector3.new(1, 1, 1), Vector3.new(), 0.025, -0.025)
			for i, v in pairs(findAllNearestTorso(root.Position, 30)) do
				--remote:FireServer("damage", v.Parent:FindFirstChildOfClass("Humanoid"), v.Parent:FindFirstChildOfClass("Humanoid").MaxHealth / math.random(5, 6))
				v.Parent:FindFirstChildOfClass("Humanoid").Jump = true
				local Position = root.Position
				local Target = v.Position
				local direction = Target - Position
				local direction = computeDirection(direction)
				v.Velocity = v.Velocity + direction * 150
			end
			temppart:Destroy()
			sound(1388740053, root.Position, 10, math.random(150, 170) / 100)
			local spd = 0.6
			for i = 1, 50 do
				rs:wait()
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.55, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), spd)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.95, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), spd)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.45, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), spd)
			end
			freeze()
			debounce = false
			noidle = false
			animsync = false
		end
		if key == "e" and debounce == false and chosen == "DeepSea" then
			animsync = true
			debounce = true
			do
				local power = 3
				local up = false
				local triggerpart = Instance.new("Part", DebrisModel)
				local bforce = Instance.new("BodyForce", triggerpart)
				local meshs = {
					"735240054",
					"735240541",
					"735241042",
					"735241392",
					"735241628"
				}
				local mesh = Instance.new("SpecialMesh", triggerpart)
				triggerpart.CanCollide = false
				triggerpart.Color = Color3.fromHSV(0.55, 1, 1)
				triggerpart.Material = Enum.Material.Glass
				triggerpart.Transparency = 0.6
				triggerpart.Anchored = true
				triggerpart.CFrame = CFrame.new(mouse.Hit.p, triggerpart.Position)
				mesh.MeshType = Enum.MeshType.Sphere
				Effect(Enum.MeshType.Sphere, Vector3.new(5, 5, 5), 0, Enum.Material.Neon, gauntlet.d:FindFirstChildOfClass("Part").Color, mouse.Hit.p, Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1), Vector3.new(), 0.05, -0.05)
				mouse.KeyUp:connect(function(key)
					if key == "e" then
						up = true
					end
				end)
				local timer = 0
				local x = 0
				local oldpos = mouse.Hit.p
				repeat
					rs:wait()
					triggerpart.Size = Vector3.new(power, power, power)
					if oldpos ~= mouse.Hit.p then
						triggerpart.CFrame = CFrame.new(mouse.Hit.p, triggerpart.Position)
					end
					local magnitude = (oldpos - mouse.Hit.p).magnitude
					if magnitude > 15 then
						magnitude = 15
					end
					mesh.Scale = Vector3.new(5 - magnitude / 8, 5 - magnitude / 8, 5 + magnitude / 4)
					mesh.Offset = Vector3.new(0, 0, -magnitude)
					if oldpos ~= mouse.Hit.p then
						oldpos = mouse.Hit.p
					end
					Effect(Enum.MeshType.Sphere, Vector3.new(10, 10, 10), 0.6, Enum.Material.Glass, triggerpart.Color, mouse.Hit.p + Vector3.new(math.random(-4, 4), math.random(-4, 4), math.random(-4, 4)), Vector3.new(), Vector3.new(), Vector3.new(-1, -1, -1), Vector3.new(), 0, 0)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
					hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(50)), 0.5)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
				until up == true
				triggerpart.Anchored = true
				delay(2, function()
					sound(357568316, triggerpart.Position, 10, 1.5 - power / 40)
					for i, v in pairs(findAllNearestTorso(triggerpart.Position, 20 + power)) do
						local hit = v.Parent
						--remote:FireServer("damage", hit:FindFirstChildOfClass("Humanoid"), hit:FindFirstChildOfClass("Humanoid").MaxHealth / (math.random(30, 35) - power * 2))
					end
					Effect(Enum.MeshType.Sphere, Vector3.new(1, 1, 1) * (power * 2), 0, Enum.Material.Neon, triggerpart.Color, triggerpart.Position, Vector3.new(), Vector3.new(), Vector3.new(1, 1, 1) * (power / 2), Vector3.new(), 0.05, -0.05 * (power / 2))
					triggerpart:Destroy()
				end)
				animsync = false
				debounce = false
			end
		end
		if key == " " and debounce == false and jumped == true and candouble > 0 then
			candouble = candouble - 1
			sound(138210320, torso.Position, 2, math.random(280, 300) / 100)
			Effect(559831844, Vector3.new(0.1, 0.1, 0.1), 0, Enum.Material.Neon, gauntlet.b:FindFirstChildOfClass("Part").Color, root.Position, Vector3.new(90, 0, 0), Vector3.new(), Vector3.new(0.1, 0.1, 0.1), Vector3.new(), 0.05, -0.005)
			root.Velocity = Vector3.new(root.Velocity.X, hum.JumpPower * 2, root.Velocity.Z)
			noidlew = true
			for i = 1, 2 do
				rs:wait()
				leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(50), math.rad(-175)), 0.8)
				leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(55), math.rad(-140)), 0.8)
				leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(60), math.rad(-105)), 0.8)
				leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30)), 0.8)
				leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40)), 0.8)
				leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50)), 0.8)
				rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-50), math.rad(175)), 0.8)
				rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-55), math.rad(140)), 0.8)
				rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-60), math.rad(105)), 0.8)
				rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30)), 0.8)
				rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40)), 0.8)
				rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50)), 0.8)
			end
			for i = 1, 5 do
				rs:wait()
				leftwing[1].Weld.C0 = Lerp(leftwing[1].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-50), math.rad(-120)), 0.4)
				leftwing[2].Weld.C0 = Lerp(leftwing[2].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-55), math.rad(-110)), 0.4)
				leftwing[3].Weld.C0 = Lerp(leftwing[3].Weld.C0, CFrame.new(-0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(-60), math.rad(-100)), 0.4)
				leftwing[1].second.asd.Weld.C0 = Lerp(leftwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30)), 0.4)
				leftwing[2].second.asd.Weld.C0 = Lerp(leftwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40)), 0.4)
				leftwing[3].second.asd.Weld.C0 = Lerp(leftwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50)), 0.4)
				rightwing[1].Weld.C0 = Lerp(rightwing[1].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(50), math.rad(120)), 0.4)
				rightwing[2].Weld.C0 = Lerp(rightwing[2].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(55), math.rad(110)), 0.4)
				rightwing[3].Weld.C0 = Lerp(rightwing[3].Weld.C0, CFrame.new(0.4, 0.6, 0.5) * CFrame.Angles(0, math.rad(60), math.rad(100)), 0.4)
				rightwing[1].second.asd.Weld.C0 = Lerp(rightwing[1].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-30)), 0.4)
				rightwing[2].second.asd.Weld.C0 = Lerp(rightwing[2].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-40)), 0.4)
				rightwing[3].second.asd.Weld.C0 = Lerp(rightwing[3].second.asd.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(-50)), 0.4)
			end
			noidlew = false
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
	hum.MaxHealth = 1 / 0
	if lplr ~= plr then
		if p.Character.Parent == nil then
			local model = Instance.new("Model")
			model.Name = p.Name
			p.Character = model
			for i, v in pairs(char:GetChildren()) do
				v.Parent = p.Character
			end
		end
		char = p.Character
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

if plr == lplr then
	musicchange("RUIN\228\185\157")
else
	repeat
		rs:wait()
	until current ~= nil and chosen ~= nil
	musicchanje(chosen)
	repeat
		rs:wait()
	until currentmusic ~= nil
	musik(currentmusic)
end

local neoncolor = 0
local neonbright = 0
rs:connect(function()
	light.Color = gauntlet.d:FindFirstChild("Part").Color
	if neoncolor > 1 then
		neoncolor = 0
	else
		neoncolor = neoncolor + 0.002
	end
	if chosen == "LunaricStarLight" then
		candouble = flaps
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(0.8 - 0.2 * math.cos(sine / 10), 1, 0))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(0.8 - 0.2 * math.cos(sine / 10), 1, 0))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(1, 0.5 - 0.2 * math.sin(sine / 10), 0))
		partchange(gauntlet.h, Enum.Material.Neon, Color3.new(0.4 + 0.2 * math.cos(sine / 10), 1, 0))
		partchange(headphone.a, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
		partchange(headphone.b, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		for i = 1, #leftwing do
			leftwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			leftwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(leftwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
		for i = 1, #rightwing do
			rightwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			rightwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(rightwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
	end
	if chosen == "IntergalacticSuperNova" then
		candouble = flaps
		partchange(gauntlet.b, Enum.Material.Neon, Color3.new(0.8 - 0.2 * math.cos(sine / 10), 0, 1))
		partchange(gauntlet.c, Enum.Material.Neon, Color3.new(0.8 - 0.2 * math.cos(sine / 10), 0, 1))
		partchange(gauntlet.d, Enum.Material.Neon, Color3.new(0, 0.5 - 0.2 * math.sin(sine / 10), 1))
		partchange(gauntlet.h, Enum.Material.Neon, Color3.new(0.4 + 0.2 * math.cos(sine / 10), 0, 1))
		partchange(headphone.a, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
		partchange(headphone.b, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		for i = 1, #leftwing do
			leftwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			leftwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(leftwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
		for i = 1, #rightwing do
			rightwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			rightwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(rightwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
	end
	if chosen == "Visualizer" then
		local neoncolor2 = neoncolor - 0.07
		if neoncolor2 < 0 then
			neoncolor2 = neoncolor2 + 1
		end
		if torso:FindFirstChild("MusicRuin") and soundz then
			if max < soundz.PlaybackLoudness then
				max = soundz.PlaybackLoudness
			end
			if soundz.PlaybackLoudness > max * 0.78 then
				neonbright = 1
			else
				if neonbright < soundz.PlaybackLoudness / 600 then
					neonbright = soundz.PlaybackLoudness / 600
				end
				if neonbright > 0 then
					neonbright = neonbright - 0.05
				end
			end
			if torso:FindFirstChild("MusicRuin").Playing then
				if (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 5 then
					change = 0.1 + soundz.PlaybackLoudness / 300
				else
					change = 0.7
					movement = 10
				end
				partchange(gauntlet.d, Enum.Material.Neon, Color3.fromHSV(neoncolor, 1, neonbright))
				partchange(gauntlet.b, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 1, neonbright / 4 / 2 + 0.1))
				partchange(gauntlet.c, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 1, neonbright / 4 / 2 + 0.1))
				partchange(gauntlet.h, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 1, neonbright / 4 / 2 + 0.1))
			else
				partchange(gauntlet.d, Enum.Material.Neon, Color3.fromHSV(neoncolor, 0, 1))
				partchange(gauntlet.b, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 0, 0))
				partchange(gauntlet.c, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 0, 0))
				partchange(gauntlet.h, Enum.Material.Neon, Color3.fromHSV(neoncolor2, 0, 0))
			end
		end
		partchange(headphone.b, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		for i = 1, #leftwing do
			partchange(leftwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		end
		for i = 1, #rightwing do
			partchange(rightwing[i].second.c, gauntlet.d:FindFirstChild("Part").Material, gauntlet.d:FindFirstChild("Part").Color)
		end
		partchange(headphone.a, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
		for i = 1, #leftwing do
			leftwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			leftwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(leftwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(leftwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
		for i = 1, #rightwing do
			rightwing[i].Color = gauntlet.a:FindFirstChild("Part").Color
			rightwing[i].Material = gauntlet.a:FindFirstChild("Part").Material
			partchange(rightwing[i].second.a, gauntlet.a:FindFirstChild("Part").Material, gauntlet.a:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.b, gauntlet.b:FindFirstChild("Part").Material, gauntlet.b:FindFirstChild("Part").Color)
			partchange(rightwing[i].second.d, gauntlet.g:FindFirstChild("Part").Material, gauntlet.g:FindFirstChild("Part").Color)
		end
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
		candouble = flaps
	else
		endPoint = 0
		jumped = true
	end
	if plr == lplr and drew == true then
		ImageLabeleffect.ImageColor3 = gauntlet.d:FindFirstChildOfClass("Part").Color
		frame2.BackgroundColor3 = gauntlet.d:FindFirstChildOfClass("Part").Color
		frame2.BorderColor3 = gauntlet.b:FindFirstChildOfClass("Part").Color
		frame2.Rotation = sine * 2
		frame3.BackgroundColor3 = gauntlet.d:FindFirstChildOfClass("Part").Color
		frame3.BorderColor3 = gauntlet.b:FindFirstChildOfClass("Part").Color
		frame3.Rotation = -sine
		text.TextColor3 = gauntlet.d:FindFirstChildOfClass("Part").Color
		text.TextStrokeColor3 = gauntlet.b:FindFirstChildOfClass("Part").Color
		text.Text = chosen
		text.Position = UDim2.new(0.5, 10 * math.cos(sine / 10), 0.5, 10 * math.sin(sine / 10))
		text.Rotation = -8 * math.cos(sine / 7)
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
			if (root.Velocity * Vector3.new(1, 0, 1)).magnitude >= 5 and jumped == false then
				animationwing("Run")
			elseif jumped == true then
				jumppower = root.Velocity.Y
				animationwing("Jump")
			elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 5 then
				animationwing("Idle")
			end
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
			if 0.2 <= math.cos(sine / 4) / 2 and sidestep == 1 then
				local a = sound(131436155, lleg.Position, 2, math.random(7, 8) / 10)
				a.Parent = lleg
				sidestep = 0
			end
		end
		if skin_custom then
			hed.BrickColor = skin_color
			torso.BrickColor = skin_color
			rarm.BrickColor = skin_color
			larm.BrickColor = skin_color
			rleg.BrickColor = skin_color
			lleg.BrickColor = skin_color
		end
		local timepos
		if soundz then
			timepos = soundz.TimePosition
		end
		--remote:FireServer("rs")
		local stuffs = {
			hed.Weld.C0,
			hed.Weld.C1,
			larm.Weld.C0,
			rarm.Weld.C0,
			torso.Weld.C0,
			lleg.Weld.C0,
			rleg.Weld.C0
		}
		--remote:FireServer("coords", stuffs, sine, pose, wingpose, animsync, walking, chosen, current, timepos, currentmusic)
	end
	if plr ~= lplr and drew then
		noidle = false
		animationwing(wingpose)
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
