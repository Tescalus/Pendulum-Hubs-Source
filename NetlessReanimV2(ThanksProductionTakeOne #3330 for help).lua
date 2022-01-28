-- https://discord.gg/8EZcyvtDcq // ProductionTakeOne#3330

-- // Modules/Setup
--loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()

if getgenv().Fling == nil then getgenv().Fling = false end
if getgenv().TorsoFling == nil then getgenv().TorsoFling = false end
if getgenv().ShowReal == nil then getgenv().ShowReal = false end
if getgenv().FakeGod == nil then getgenv().FakeGod = false end
if getgenv().GodMode == nil then getgenv().GodMode = true end
if getgenv().AutoAnimate == nil then getgenv().AutoAnimate = true end
if getgenv().Tools == nil then getgenv().Tools = true end
if getgenv().Velocity == nil then getgenv().Velocity = -25.05 end
if getgenv().Collisions == nil then getgenv().Collisions = true end
if getgenv().CheckForDeath == nil then getgenv().CheckForDeath = true end
if getgenv().Netless2 == nil then getgenv().Netless2 = false end
if getgenv().Claim2 == nil then getgenv().Claim2 = false end
if getgenv().ExtremeNetless == nil then getgenv().ExtremeNetless = false end
if getgenv().Notification == nil then getgenv().Notification = false end

settings().Rendering.EagerBulkExecution = true
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
settings().Physics.AllowSleep = false
settings().Physics.ForceCSGv2 = false
settings().Physics.DisableCSGv2 = true
settings().Physics.UseCSGv2 = false
settings().Physics.ThrottleAdjustTime = math.huge
settings().Network.TrackPhysicsDetails = true
settings().Network.TrackDataTypes = true
game.Players.LocalPlayer.MaximumSimulationRadius=1000
workspace.InterpolationThrottling = "Disabled"

-- // Variables
--local PhysicsService = game:GetService("PhysicsService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local plr = Players.LocalPlayer
local Character,originalrig
local FakeTorso,FakeTorso1,FakeHead
local cr,cc = coroutine.resume,coroutine.create
local rigtype = plr.Character.Humanoid.RigType



local function networkownership(obj)
	if isnetworkowner then
		return isnetworkowner(obj)
	else
		return true
	end
end

local offsets = {
	["Left Arm"] = {["LeftUpperArm"] = CFrame.new(0,0.39,0),
		["LeftLowerArm"] = CFrame.new(0,-0.15,0),
		["LeftHand"] = CFrame.new(0,-0.85,0)
	},
	["Right Arm"] = {["RightUpperArm"] = CFrame.new(0,0.39,0),
		["RightLowerArm"] = CFrame.new(0,-0.15,0),
		["RightHand"] = CFrame.new(0,-0.85,0)
	},
	["Torso"] = {["UpperTorso"] = CFrame.new(0,0.2,0),
		["LowerTorso"] = CFrame.new(0,-0.8,0),
	},
	["Left Leg"] = {["LeftUpperLeg"] = CFrame.new(0,0.5,0),
		["LeftLowerLeg"] = CFrame.new(0,-0.05,0),
		["LeftFoot"] = CFrame.new(0,-0.85,0)
	},
	["Right Leg"] = {["RightUpperLeg"] = CFrame.new(0,0.5,0),
		["RightLowerLeg"] = CFrame.new(0,-0.05,0),
		["RightFoot"] = CFrame.new(0,-0.85,0)
	},
	["Head"] = {["Head"] = CFrame.new(0,0,0)},
}

-- // Notification Function
local function createnotification(title,desc,duration)
	if getgenv().Notification then
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = title;
			Text = desc;
			Duration = duration;
		})
	end
end
--[[
-- // Collisions
local check; pcall(function() check = PhysicsService:GetCollisionGroupId("NoCollide") end)
if not check then PhysicsService:CreateCollisionGroup("NoCollide") end
PhysicsService:CollisionGroupSetCollidable("NoCollide", "NoCollide", false)
]]

if getgenv().FakeGod and rigtype == Enum.HumanoidRigType.R6 then getgenv().GodMode = false end
if getgenv().TorsoFling then getgenv().Fling = false end

-- // RigType
if rigtype == Enum.HumanoidRigType.R15 then
	originalrig = plr.Character
	Character = game:GetObjects("rbxassetid://8232772380")[1]:Clone()
	Character.Parent = workspace
	Character.Humanoid:ApplyDescription(Players:GetHumanoidDescriptionFromUserId(plr.UserId))
	task.wait()
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			v:Destroy()
		end
	end
	for i,v in pairs(originalrig:GetChildren()) do
		if v:IsA("Accessory") then
			local clonehats = v:Clone()
			clonehats.Parent = Character
			for _,g in pairs(offsets) do
				if g[v.Handle.AccessoryWeld.Part1.Name] then
					clonehats.Handle.AccessoryWeld.Part1 = Character[_]
				end
			end
			--clonehats.Handle.AccessoryWeld.Part1 = Character[v.Handle.AccessoryWeld.Part1.Name]
		end
	end
	Character.Name = "non" 
	Character.HumanoidRootPart.CFrame = originalrig.HumanoidRootPart.CFrame
	task.wait()
	for i,v in pairs(originalrig:GetChildren()) do
		if v:IsA("Tool") then
			v:Clone().Parent = Character
		end
	end
else
	plr.Character.Archivable = true
	Character = plr.Character:Clone()
	plr.Character.Archivable = false
	originalrig = plr.Character
	Character.Parent = workspace
	Character.Name = "non"
end

-- // Hat Matching Value
local function findmatchingaccessory(hat)
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			if rigtype == Enum.HumanoidRigType.R15 then
				if v.Handle.MeshId == hat.MeshId and v.Handle.TextureID == hat.TextureID then
					local origweld = Instance.new("ObjectValue",hat)
					origweld.Value = v.Handle
					origweld.Name = "CloneHat"
				end
			else
				if v.Handle:FindFirstChildOfClass("SpecialMesh").MeshId == hat:FindFirstChildOfClass("SpecialMesh").MeshId and v.Handle:FindFirstChildOfClass("SpecialMesh").TextureId == hat:FindFirstChildOfClass("SpecialMesh").TextureId then
					local origweld = Instance.new("ObjectValue",hat)
					origweld.Value = v.Handle
					origweld.Name = "CloneHat"
				end
			end
		end
	end
end

-- // Claim 2

local origpos,claim2velocity

plr.Character.Humanoid.PlatformStand = true

if getgenv().Claim2 then
	origpos = plr.Character.HumanoidRootPart.CFrame
	local actualpos
	repeat wait() 
		pcall(function()
			local pos = plr.Character.HumanoidRootPart.Position + Vector3.new(math.random(-1500,1500),100,math.random(-1500,1500))
			local check = true
			for i,v in pairs(game.Players:GetPlayers()) do
				if v~= plr and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					if (v.Character.HumanoidRootPart.Position-pos).magnitude <= 1000 then
						check = false
					end
				end
			end
			if check then
				actualpos = pos
			end
		end)
	until actualpos
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(actualpos)
	claim2velocity = game["Run Service"].Heartbeat:Connect(function()
		for i,v in pairs(originalrig:GetDescendants()) do
			cr(cc(function()
				if v:IsA("BasePart") then
					v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
				end
			end))
		end
	end)
	createnotification("Claim2","Found Position outside of other's net sims",6)
end

-- // Netless claiming
for i,v in pairs(originalrig:GetDescendants()) do
	cr(cc(function()
		if v:IsA("BasePart") then
			v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
			if getgenv().Netless2 then
				local a = Instance.new("BodyVelocity",v)
				a.MaxForce = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.Velocity = Vector3.new(0,0,0)
				local a = Instance.new("BodyAngularVelocity",v)
				a.MaxTorque = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.AngularVelocity = Vector3.new(0,0,0)
			else
				local a = Instance.new("BodyVelocity",v)
				a.MaxForce = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.Velocity = Vector3.new(getgenv().Velocity,getgenv().Velocity,getgenv().Velocity)
				local a = Instance.new("BodyAngularVelocity",v)
				a.MaxTorque = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.AngularVelocity = Vector3.new(0,0,0)
			end
			v.Massless = true
			v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			local selectionbox = Instance.new("SelectionBox",v)
			selectionbox.Transparency = 1; selectionbox.Adornee = v;
			if v.Parent:IsA("Accessory") then
				findmatchingaccessory(v)
			end
		end
	end))
end
createnotification("Net Claimed","Claimed parts using netless",6)

local tools = {}
for i,v in pairs(originalrig:GetChildren()) do
	if v:IsA("Tool") then
		v.Parent = plr.Backpack
		table.insert(tools,v)
	end
end

wait(0.1) -- adding a wait as extra safety

-- // Noclip Rigs; forgot why i have this but im keeping it
local Noclip = RunService.Stepped:Connect(function(delta)
	settings().Rendering.EagerBulkExecution = true
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
	settings().Physics.ForceCSGv2 = false
	settings().Physics.DisableCSGv2 = true
	settings().Physics.UseCSGv2 = false
	settings().Physics.ThrottleAdjustTime = math.huge
	settings().Network.TrackPhysicsDetails = true
	settings().Network.TrackDataTypes = true
	local Collisionrig = getgenv().Collisions and originalrig or Character
	for i,v in pairs(Collisionrig:GetDescendants()) do
		cr(cc(function()
			if v:IsA("BasePart") then
				v.CanCollide = false
				if v:IsDescendantOf(originalrig) and getgenv().ExtremeNetless then
					v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
				end
			end
		end))
	end
end)

-- // Claim 2 Bring back
local keepingparts = true
if getgenv().Claim2 then
	for i,v in pairs(originalrig:GetDescendants()) do
		cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" or v:IsA("Weld") and v.Name ~= "Neck" then v:Destroy() end end))
	end
	cr(cc(function()
		while keepingparts and task.wait() do
			for i,v in pairs(originalrig:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= "Head" and v.Name ~= "HumanoidRootPart" then
					v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end))
	wait(0.5)
	local animat = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5), {CFrame = origpos})
	animat:Play()
	animat.Completed:wait()
	claim2velocity:Disconnect()
else
	for i,v in pairs(originalrig:GetDescendants()) do
		cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" or v:IsA("Weld") and v.Name ~= "Neck" then v:Destroy() end end))
	end
end

--[[
-- // Weld Removing
for i,v in pairs(originalrig:GetDescendants()) do
	cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" then v:Destroy() end end))
end]]

-- // Godmode Keep Humroot in place during fling
if getgenv().GodMode and originalrig:FindFirstChild("Neck",true) then
	if getgenv().Fling then
		local savepos = originalrig.HumanoidRootPart.CFrame
		cr(cc(function()
			while keepinplace and task.wait() do
				originalrig.HumanoidRootPart.CFrame = savepos
			end
		end))
	elseif getgenv().TorsoFling then
		local savepos = originalrig.HumanoidRootPart.CFrame
		cr(cc(function()
			while keepinplace and task.wait() do
				if rigtype == Enum.HumanoidRigType.R6 then
					originalrig.Torso.CFrame = savepos
				else
					originalrig["LowerTorso"].CFrame = savepos
				end

			end
		end))
	end
end

-- // FakeGod
if getgenv().FakeGod then
	if originalrig:FindFirstChild("SeeMonkey") then
		FakeTorso = originalrig.SeeMonkey.Handle
		Character.SeeMonkey.Handle.Transparency = 1
	else
		FakeTorso1 = originalrig["Kate Hair"].Handle
		FakeTorso1.Mesh:Destroy();
		FakeTorso = originalrig.Robloxclassicred.Handle
		Character["Kate Hair"].Handle.Transparency = 1
		Character["Robloxclassicred"].Handle.Transparency = 1
	end
	if originalrig:FindFirstChild("Void Head") then
		FakeHead = originalrig["Void Head"].Handle
		Character["Void Head"].Handle.Transparency = 1
	elseif originalrig:FindFirstChild("Dummy_Head") then
		FakeHead = originalrig["Dummy_Head"].Handle
		Character["Dummy_Head"].Handle.Transparency = 1
	else
		FakeHead = originalrig.MediHood.Handle
		Character["MediHood"].Handle.Transparency = 1
	end
	FakeTorso.Mesh:Destroy();
end

-- // Setting player onto the fake rig
for i,v in pairs(tools) do
	if v:IsA("Tool") then
		v.Parent = originalrig
	end
end
task.wait()
plr.Character.Parent = Character; plr.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
createnotification("Fake Body","Set Character to Fake Rig",6)

-- // Turning Chosen Rig Invisible
local invisrig = getgenv().ShowReal and Character or originalrig
for i,v in pairs(invisrig:GetChildren()) do
	cr(cc(function()
		if v:IsA("BasePart") or v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("Accessory") or v:IsA("Tool") then
			v.Handle.Transparency = 1
		end
	end))
end

-- // Animating the fake rig
if getgenv().AutoAnimate then
	if rigtype == Enum.HumanoidRigType.R15 and getgenv().R15toR6 then
		cr(cc(function()
			getgenv().ForHonor = Character.Animate
			loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/Animate"))()
		end))
	else
		Character.Animate.Disabled = true; wait() Character.Animate.Disabled = false
	end
end

--[[
-- // Making Characters not collide
for i,v in pairs(Character:GetDescendants()) do
	cr(cc(function()
		if v:IsA("BasePart") then
			PhysicsService:SetPartCollisionGroup(v, "NoCollide")
		end
	end))
end
]]
-- You're probably wondering, why have two runservices? stepped is the only way to have cancollide off permananetly, but heartbeat is better for physics based things like cframing and velocity.

-- // Conversion
local Conversion = RunService.Heartbeat:Connect(function(delta)
	keepingparts = false
	for i,v in pairs(originalrig:GetDescendants()) do
		cr(cc(function()
			if v:IsA("BasePart") then
				v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
				if not networkownership(v) then
					v.SelectionBox.Transparency = 0
				else
					v.SelectionBox.Transparency = 1
				end
			end
		end))
	end
	if rigtype == Enum.HumanoidRigType.R15 and getgenv().R15toR6 then
		for R6PartName,R15PartNames in pairs(offsets) do
			for i,R15PartNameOffset in pairs(R15PartNames) do
				cr(cc(function()
					if originalrig:FindFirstChild(i) and networkownership(originalrig[i]) then
						if i == "LowerTorso" and getgenv().TorsoFling then
						elseif i == "Torso" and getgenv().TorsoFling then
						else
							local ExpectedPosition = Character[R6PartName].CFrame * R15PartNameOffset
							originalrig[i].CFrame = ExpectedPosition 
						end
					end
				end))
			end
		end
		for i,v in pairs(originalrig:GetChildren()) do
			cr(cc(function()
				if v:IsA("Accessory") and networkownership(v.Handle) then
					v.Handle.CFrame = v.Handle.CloneHat.Value.CFrame 
				end
			end))
		end
		if originalrig:FindFirstChild("HumanoidRootPart") and networkownership(originalrig["HumanoidRootPart"]) and not getgenv().Fling then
			originalrig["HumanoidRootPart"].CFrame = Character["HumanoidRootPart"].CFrame 
		end
	else
		for i,v in pairs(originalrig:GetChildren()) do
			cr(cc(function()
				if v:IsA("BasePart") then
					if v.Name == "HumanoidRootPart" and getgenv().Fling and networkownership(v) then
					elseif getgenv().TorsoFling and v.Name == "Torso" or v.Name == "LowerTorso" and networkownership(FakeHead)  then	
					elseif getgenv().FakeGod and v.Name == "Head" and networkownership(FakeHead)  then
						FakeHead.CFrame = Character["Head"].CFrame
					elseif getgenv().FakeGod and v.Name == "Torso" and networkownership(FakeTorso)  then
						if FakeTorso1 then
							FakeTorso.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) * CFrame.new(0.5,0,0) 
							FakeTorso1.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) * CFrame.new(-0.5,0,0) 
						else
							FakeTorso.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) 
						end
					elseif networkownership(v) then
						v.CFrame = Character[v.Name].CFrame 
					end
				elseif v:IsA("Accessory") and v.Handle ~= FakeTorso and v.Handle ~= FakeTorso1 and v.Handle ~= FakeHead and networkownership(v.Handle) then
					v.Handle.CFrame = v.Handle.CloneHat.Value.CFrame 
				end
			end))
		end
	end
	if getgenv().Tools then
		for i,v in pairs(originalrig:GetChildren()) do
			cr(cc(function()
				if v:IsA("Tool") and Character:FindFirstChild(v.Name) then
					v.Handle.CFrame = 	Character[v.Name].Handle.CFrame 
				elseif v:IsA("Tool") then
					v.Handle.CFrame = Character["Left Leg"].CFrame * CFrame.new(0,-5,0) 
				end
			end))
		end
	end
end)

-- // Extreme Claiming
if getgenv().ExtremeNetless then
	cr(cc(function()
		while RunService.RenderStepped:Wait() and Character do
			for i,v in pairs(originalrig:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
				end
			end
		end
	end))
	cr(cc(function()
		while wait() and Character do
			for i,v in pairs(originalrig:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Velocity = Vector3.new(getgenv().Velocity, getgenv().Velocity, getgenv().Velocity)
				end
			end
		end
	end))
end

-- // Check for death
if getgenv().CheckForDeath then -- changed originalrig:ClearAllChildren because some games have a ac against it
	Character.Humanoid.Died:Connect(function() pcall(function() Noclip:Disconnect(); Conversion:Disconnect(); plr.Character = originalrig; originalrig.Parent = workspace; Character:Destroy() end) end) -- checking for resetting
	plr.CharacterAdded:Connect(function() Noclip:Disconnect(); Conversion:Disconnect(); Character:Destroy() end) -- checking to see if server respawned you
end

-- // God Mode
if getgenv().GodMode and originalrig:FindFirstChild("Neck",true) then wait(game.Players.RespawnTime + 1); originalrig:FindFirstChild("Neck",true).Parent = nil keepinplace = false createnotification("Permadeath","God Mode Enabled",6) end
