-- hi
local speedtesttick = tick()
-- // Modules/Setup

-- incase someone doesn't have getgenv in their exploit for some odd reason
local getgenv = getgenv and getgenv() or _G

-- Default Values
if getgenv.Optimizer == nil then getgenv.Optimizer = false end
if getgenv.Optimizer then
	
end
if getgenv.Fling == true then getgenv.Fling = "HumanoidRootPart" end
if getgenv.Fling == nil then getgenv.Fling = "" end
if getgenv.ShowReal == nil then getgenv.ShowReal = false end
if getgenv.FakeGod == nil then getgenv.FakeGod = false end
if getgenv.GodMode == nil then getgenv.GodMode = true end
if getgenv.AutoAnimate == nil then getgenv.AutoAnimate = true end
if getgenv.Tools == nil then getgenv.Tools = true end
if getgenv.Velocity == nil then getgenv.Velocity = -25.05 end
if getgenv.Collisions == nil then getgenv.Collisions = true end
if getgenv.CheckForDeath == nil then getgenv.CheckForDeath = true end
if getgenv.Network == nil then getgenv.Network = false end
if getgenv.Netless2 == nil then getgenv.Netless2 = false end
if getgenv.Claim2 == nil then getgenv.Claim2 = false end
if getgenv.Notification == nil then getgenv.Notification = true end
if getgenv.DynamicVelocity == nil then getgenv.DynamicVelocity = false end
if getgenv.DynamicVelocityExperimental == nil then getgenv.DynamicVelocityExperimental = false end
if getgenv.AntiSleep == nil then getgenv.AntiSleep = true end
if getgenv.MovementVelocity == nil then getgenv.MovementVelocity = false end
if getgenv.R6toR15 == nil then getgenv.R6toR15 = false end

-- // Notification Module
local notification = loadstring(game:HttpGet("https://gist.githubusercontent.com/CenteredSniper/5aacd41c762304c92802ed4ad714cc98/raw/e8c9b25cb3660028793342728553efdb24e72bec/NotificationService.lua",true))()
local function notify(title,duration)
	if getgenv.Notification then
		notification({
			Text = title,
			Duration = duration
		})
	end
end

-- Checking if reanimated or not
if workspace:FindFirstChild("non") then 
	notify("Already Reanimated?") 
	error("Already Reanimated?") 
end

-- Preloading PhysicsService enabler
--Added a second hook cuz in some reason hookmetamethod doesnt work in Synapse X
local PhysicsService = game:GetService("PhysicsService")
local Workspace = game:GetService("Workspace")

local function doMath(index)
	return -(2^(index-1))
end


local function FindCollisionGroup(CollisionGroup)
	for i,v in pairs(gethiddenproperty(Workspace, "CollisionGroups"):split("\\")) do
		local split = v:split("^")
		if split[1] == CollisionGroup then
			return v
		end
	end
	return false
end

local function EditCollisionGroup(Name,arg1,arg2,arg3)
	local str = ""
	local args = {arg1,arg2,arg3}

	for i,v in pairs(gethiddenproperty(Workspace, "CollisionGroups"):split("\\")) do
		local split = v:split("^")
		if split[1] == Name  then
			for i,v in pairs(args) do
				if not v then
					args[i] = split[i]
				end
			end
			str = str..string.format("%s%s^%s^%s",((i == 1 and "" ) or "\\") ,args[1], args[2], args[3])
		else	
			str = str..string.format("%s%s^%s^%s",((i == 1 and "" ) or "\\") ,split[1], split[2], split[3])
		end
	end

	sethiddenproperty(Workspace, "CollisionGroups", str)
end


local function CreateCollisionGroup(Name)
	assert(FindCollisionGroup(Name) == false, "Could not create collision group, one with that name already exists.")
	sethiddenproperty(Workspace, "CollisionGroups", string.format("%s\\%s^%s^%s", gethiddenproperty(Workspace, "CollisionGroups"),Name,tonumber(#PhysicsService:GetCollisionGroups()), "-1" ))
	return true	
end

local function CollisionGroupSetCollidable(Name1,Name2,Boolean)
	assert(typeof(Name1) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(Name1)))
	assert(typeof(Name2) == "string", string.format("Bad argument #2 to '?' (string expected, got %s)", typeof(Name1)))
	assert(typeof(Boolean) == "boolean", string.format("Bad argument #3 to '?' (boolean expected, got %s)", typeof(Name1)))
	assert(FindCollisionGroup(Name1) ~= false, "Both collision groups must be valid.")
	assert(FindCollisionGroup(Name2) ~= false, "Both collision groups must be valid.")
	local CollisionGroup1 = FindCollisionGroup(Name1)
	local CollisionGroup2 = FindCollisionGroup(Name2)
	local split1 = CollisionGroup1:split("^")
	local split2 = CollisionGroup2:split("^")
	if Boolean == false then
		if PhysicsService:CollisionGroupsAreCollidable(Name1, Name2) == true then
			if Name1 == Name2 then
				EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) + doMath(tonumber(split1[2]+1)))
			elseif Name1 ~= Name2 then
				EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) + doMath(tonumber(split2[2]+1)))
				EditCollisionGroup(split2[1], false, false , (tonumber(split2[3])) + doMath(tonumber(split1[2]+1)))
			end
		end
	elseif Boolean == true then
		if PhysicsService:CollisionGroupsAreCollidable(Name1, Name2) == false then
			if Name1 == Name2 then
				EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) - doMath(tonumber(split1[2]+1)))
			elseif Name1 ~= Name2 then
				EditCollisionGroup(split1[1], false, false , (tonumber(split1[3])) - doMath(tonumber(split2[2]+1)))
				EditCollisionGroup(split2[1], false, false , (tonumber(split2[3])) - doMath(tonumber(split1[2]+1)))
			end
		end
	end
end



local function RemoveCollisionGroup(CollisionGroup)
	string.gsub(gethiddenproperty(Workspace, "CollisionGroups"),"([%w%p]*)("..CollisionGroup.."%^%d+%^%-%d+)([%w%p]*)",function(arg1,arg2,arg3)

		local new = ""
		for index, value in pairs(string.split(arg3,"\\")) do
			new = new.."\\"..string.gsub(value,"(%w+%^)(%d+)(%^%-%d+)",function(arg1,arg2,arg3)  return arg1..math.floor(tonumber(arg2)-1)..arg3 end)

		end
		if new:sub(1,1) == "\\" then  new = new:sub(2,new:len()) end
		local toReturn = arg1..new
		if toReturn:sub(toReturn:len(),toReturn:len()) == "\\" then toReturn = toReturn:sub(1,toReturn:len()-1) end

		sethiddenproperty(Workspace, "CollisionGroups", toReturn)
	end)
end

local function RenameCollisionGroup(CollisionGroup,newName)
	assert(typeof(CollisionGroup) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(CollisionGroup)))
	assert(typeof(newName) == "string", string.format("Bad argument #1 to '?' (string expected, got %s)", typeof(newName)))
	assert(FindCollisionGroup(CollisionGroup) ~= false, "Cannot find the collision group")
	assert(FindCollisionGroup(newName) == false, "This collision group already exists!")
	string.gsub(gethiddenproperty(Workspace, "CollisionGroups"),"([%w%p]*)("..CollisionGroup.."%^%d+%^%-%d+)([%w%p]*)",function(arg1,arg2,arg3)
		local split = FindCollisionGroup(CollisionGroup):split("^")
		local str = newName.."^"..split[2].."^"..split[3]
		sethiddenproperty(Workspace, "CollisionGroups", arg1..str..arg3)
	end)
end

xpcall(function()
	local old
	old = hookmetamethod(game, "__namecall" ,newcclosure(function(self,...)
		if not checkcaller() then return old(self,...) end
		local args = {...}

		if self == PhysicsService then
			if getnamecallmethod() == "RenameCollisionGroup" then
				return	RenameCollisionGroup(args[1],args[2])
			elseif getnamecallmethod() == "RemoveCollisionGroup"  then
				return	RemoveCollisionGroup(args[1])
			elseif getnamecallmethod() == "CreateCollisionGroup" then
				return	CreateCollisionGroup(args[1])
			elseif getnamecallmethod() == "CollisionGroupSetCollidable" then
				return CollisionGroupSetCollidable(args[1],args[2],args[3])
			end
		end 

		return old(self,...)
	end))
end, function()
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	
	setreadonly(mt,false)
	
	mt.__namecall = newcclosure(function(self, ...)
		if not checkcaller() then return old(self,...) end
		local args = {...}

		if self == PhysicsService then
			if getnamecallmethod() == "RenameCollisionGroup" then
				return	RenameCollisionGroup(args[1],args[2])
			elseif getnamecallmethod() == "RemoveCollisionGroup"  then
				return	RemoveCollisionGroup(args[1])
			elseif getnamecallmethod() == "CreateCollisionGroup" then
				return	CreateCollisionGroup(args[1])
			elseif getnamecallmethod() == "CollisionGroupSetCollidable" then
				return CollisionGroupSetCollidable(args[1],args[2],args[3])
			end
		end 

		return old(self,...)
	end)

	setreadonly(mt,true)
end)

-- Preformance Values
settings().Rendering.EagerBulkExecution = true
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
settings().Physics.AllowSleep = false
settings().Physics.ForceCSGv2 = false
settings().Physics.DisableCSGv2 = true
settings().Physics.UseCSGv2 = false
settings().Physics.ThrottleAdjustTime = math.huge


-- // Variables
local PhysicsService = game:GetService("PhysicsService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local FakeTorso,FakeTorso1,FakeHead
local cr,cc = task.spawn,coroutine.create
local RigType = Player.Character.Humanoid.RigType
if getgenv.TorsoFling then if RigType == Enum.HumanoidRigType.R15 then getgenv.Fling = "LowerTorso" else getgenv.Fling = "Torso" end end
-- Incase the exploit doesn't have sethiddenproperty
local SetHiddenProperty = sethiddenproperty or sethiddenprop or function() end
local OriginalRig = Player.Character

local Character,R15Offsets,Claim2Heartbeat

-- Storing the Velocity Variable for netless, needed because dynamic velocity and movement velocity
local Velocity = Vector3.new(getgenv.Velocity, getgenv.Velocity, getgenv.Velocity)

-- Setting Sim Radius, useful for claiming parts
if getgenv.Network then
	game:GetService("Players").LocalPlayer.MaximumSimulationRadius=1000
	SetHiddenProperty(game:GetService("Players").LocalPlayer,"SimulationRadius",1000)
end

-- Artifical HB
local event = getgenv.MiliWait
if not event then
	local fw = loadstring(game:HttpGet("https://gist.githubusercontent.com/CenteredSniper/fe5cbdbc396630374041f0c2d156a747/raw/5491a28fd72ed7e11c9fa3f9141df033df3ed5a9/fastwait.lua"))()
	event = Instance.new("BindableEvent")
	cr(cc(function()
		while true do
			cr(cc(function()
				for i=1,math.max(game:GetService("Stats").Workspace.FPS:GetValue()/27.5,1) do
					event:Fire()
				end
			end))
			--task.wait(0/1)
			fw(0/1)
		end
	end))
	event.Name = "ExPro"
	getgenv.MiliWait = event
end

-- Fast wait by Expro
local wait = function(int)
	if not int then
		int = 0
	end
	local t = tick()
	repeat
		--task.wait(0/1)
		event.Event:Wait()
	until (tick() - t) >= int
	return (tick() - t), t
end

-- Not all exploits have isnetworkowner
local function networkownership(obj)
	if isnetworkowner and obj and obj:IsA("BasePart") then
		return isnetworkowner(obj)
	else
		return true
	end
end

-- // Collisions
local check; 
pcall(function() 
	check = PhysicsService:GetCollisionGroupId("NoCollide")
end)
if not check then 
	PhysicsService:CreateCollisionGroup("NoCollide")
end
PhysicsService:CollisionGroupSetCollidable("NoCollide", "NoCollide", false)


if getgenv.FakeGod and RigType == Enum.HumanoidRigType.R6 then 
	getgenv.GodMode = false 
end
if getgenv.MovementVelocity then 
	getgenv.DynamicVelocity = false 
	getgenv.DynamicVelocityExperimental = false 
end
if getgenv.DynamicVelocityExperimental then 
	getgenv.DynamicVelocity = false
end

-- // RigType
if RigType == Enum.HumanoidRigType.R15 then
	-- R15Offsets for the r15 to r6, now scale-accessible!
	R15Offsets = {
		["Left Arm"] = {["LeftUpperArm"] = CFrame.new((1-OriginalRig.LeftUpperArm.Size.X)*2,0.369*(OriginalRig.LeftUpperArm.Size.Y/1.169),0),
			["LeftLowerArm"] = CFrame.new((1-OriginalRig.LeftLowerArm.Size.X)*2,-0.224*(OriginalRig.LeftLowerArm.Size.Y/1.052),0),
			["LeftHand"] = CFrame.new((1-OriginalRig.LeftHand.Size.X)*2,-0.85*(OriginalRig.LeftHand.Size.Y/0.3),0),
		},
		["Right Arm"] = {["RightUpperArm"] = CFrame.new(-(1-OriginalRig.RightUpperArm.Size.X)*2,0.369*(OriginalRig.RightUpperArm.Size.Y/1.169),0),
			["RightLowerArm"] = CFrame.new(-(1-OriginalRig.RightLowerArm.Size.X)*2,-0.224*(OriginalRig.RightLowerArm.Size.Y/1.052),0),
			["RightHand"] = CFrame.new(-(1-OriginalRig.RightHand.Size.X)*2,-0.85*(OriginalRig.RightHand.Size.Y/0.3),0),
		},
		["Torso"] = {["UpperTorso"] = CFrame.new(0,0.2*(OriginalRig.UpperTorso.Size.Y/1.6),0),
			["LowerTorso"] = CFrame.new(0,-0.8*(OriginalRig.LowerTorso.Size.Y/0.4),0),
		},
		["Left Leg"] = {["LeftUpperLeg"] = CFrame.new((1-OriginalRig.LeftUpperLeg.Size.X)/2,0.579*(OriginalRig.LeftUpperLeg.Size.Y/1.217),0),
			["LeftLowerLeg"] = CFrame.new((1-OriginalRig.LeftLowerLeg.Size.X)/2,-0.201*(OriginalRig.LeftLowerLeg.Size.Y/1.193),0),
			["LeftFoot"] = CFrame.new((1-OriginalRig.LeftFoot.Size.X)/2,-0.85*(OriginalRig.LeftFoot.Size.Y/0.3),0),
		},
		["Right Leg"] = {["RightUpperLeg"] = CFrame.new(-(1-OriginalRig.RightUpperLeg.Size.X)/2,0.579*(OriginalRig.RightUpperLeg.Size.Y/1.217),0),
			["RightLowerLeg"] = CFrame.new(-(1-OriginalRig.RightLowerLeg.Size.X)/2,-0.201*(OriginalRig.RightLowerLeg.Size.Y/1.193),0),
			["RightFoot"] = CFrame.new(-(1-OriginalRig.RightFoot.Size.X)/2,-0.85*(OriginalRig.RightFoot.Size.Y/0.3),0),
		},
		["Head"] = {["Head"] = CFrame.new(0,0,0)
		},
	}

	Character = game:GetObjects("rbxassetid://8232772380")[1]:Clone()
	Character.Parent = workspace
	Character.Humanoid:ApplyDescription(Players:GetHumanoidDescriptionFromUserId(Player.UserId))
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			v:Destroy()
		end
	end
	for i,v in pairs(OriginalRig:GetChildren()) do
		if v:IsA("Accessory") then
			local clonehats = v:Clone()
			clonehats.Parent = Character
			for _,g in pairs(R15Offsets) do
				if g[v.Handle.AccessoryWeld.Part1.Name] then
					clonehats.Handle.AccessoryWeld.Part1 = Character[_]
				end
			end
		end
	end
	Character:PivotTo(OriginalRig.HumanoidRootPart.CFrame)
	for i,v in pairs(OriginalRig:GetChildren()) do
		if v:IsA("Tool") then
			v:Clone().Parent = Character
		end
	end
elseif getgenv.R6toR15 then
	Character = game:GetObjects("rbxassetid://9028578914")[1]:Clone()
	Character.Parent = workspace
	Character.Humanoid:ApplyDescription(Players:GetHumanoidDescriptionFromUserId(Player.UserId))
	R15Offsets = {
		{"Left Arm","LeftLowerArm",CFrame.new((1-Character.LeftLowerArm.Size.X)*2,0.224*(Character.LeftLowerArm.Size.Y/1.052),0)},
		{"Right Arm","RightLowerArm",CFrame.new(-(1-Character.RightLowerArm.Size.X)*2,0.224*(Character.RightLowerArm.Size.Y/1.052),0)},
		{"Torso","UpperTorso",CFrame.new(0,-0.2*(Character.UpperTorso.Size.Y/1.6),0)},
		{"Left Leg","LeftLowerLeg",CFrame.new((1-Character.LeftLowerLeg.Size.X)/2,0.201*(Character.LeftLowerLeg.Size.Y/1.193),0)},
		{"Right Leg","RightLowerLeg",CFrame.new(-(1-Character.RightLowerLeg.Size.X)/2,0.201*(Character.RightLowerLeg.Size.Y/1.193),0)},
		{"Head","Head",CFrame.new(0,0,0)},
		{"HumanoidRootPart","HumanoidRootPart",CFrame.new(0,0,0)},
	}
	for i,v in pairs(OriginalRig:GetChildren()) do
		if v:IsA("Tool") then
			v:Clone().Parent = Character
		end
	end
	Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
else
	Player.Character.Archivable = true
	Character = Player.Character:Clone()
	Player.Character.Archivable = false
	Character.Parent = workspace
end
wait()
Character.Name = "non"

getgenv.RealRig = OriginalRig
getgenv.CloneRig = Character

-- // Hat Matching Value
local function findmatchingaccessory(hat)
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("Accessory") then
			local meshid1 = v.Handle:FindFirstChildOfClass("SpecialMesh") or v.Handle
			local meshid2 = hat:FindFirstChildOfClass("SpecialMesh") or hat
			local texture1 = v.Handle:FindFirstChildOfClass("SpecialMesh") and v.Handle:FindFirstChildOfClass("SpecialMesh").TextureId or v.Handle.TextureID
			local texture2 = hat:FindFirstChildOfClass("SpecialMesh") and hat:FindFirstChildOfClass("SpecialMesh").TextureId or hat.TextureID
			if meshid1.MeshId == meshid2.MeshId and texture1 == texture2 then
				local CloneHat = Instance.new("ObjectValue",hat)
				CloneHat.Value = v.Handle
				CloneHat.Name = "CloneHat"
			end
		end
	end
end

-- // Claim 2
OriginalRig.Humanoid:ChangeState(16)
--Player.Character.Humanoid.PlatformStand = true

if getgenv.Claim2 then
	Character.HumanoidRootPart.Anchored = true
	--OriginalPosition = Player.Character.HumanoidRootPart.CFrame
	local actualpos
	repeat wait()
		pcall(function()
			local pos = Player.Character.HumanoidRootPart.Position + Vector3.new(math.random(-1500,1500),100,math.random(-1500,1500))
			local check = true
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
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
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(actualpos)
	notify("Claim2; Found Pos",6)
end

-- // Netless claiming
for i,v in pairs(OriginalRig:GetDescendants()) do
	cr(cc(function()
		if v:IsA("BasePart") then
			--v.Velocity = Velocity
			--v:ApplyImpulse(Velocity)
			local netlessbeat
			local a = Instance.new("BodyVelocity",v)
			a.MaxForce = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.Velocity = getgenv.Netless2 and Vector3.new(0,0,0) or Vector3.new(getgenv.Velocity,getgenv.Velocity,getgenv.Velocity)
			local a = Instance.new("BodyAngularVelocity",v)
			a.MaxTorque = Vector3.new(math.huge,math.huge,math.huge); a.P = math.huge; a.AngularVelocity = Vector3.new(0,0,0)
			v.Massless = true
			v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
			local selectionbox = Instance.new("SelectionBox",v)
			selectionbox.Transparency = 1; selectionbox.Adornee = v;
			netlessbeat = event.Event:Connect(function()
				if v and v.Parent then
					if not getgenv.DynamicVelocityExperimental then
						v:ApplyImpulse(Velocity)
					end
					if v.Name == "Head" and not getgenv.GodMode then
						v.SelectionBox.Transparency = 1
					else
						if not networkownership(v) then
							v.SelectionBox.Transparency = 0
						else
							v.SelectionBox.Transparency = 1
						end
					end
				else
					netlessbeat:Disconnect()
				end
			end)
			if v.Parent:IsA("Accessory") then
				findmatchingaccessory(v)
			end
		end
	end))
end
notify("Netless Claimed",6)

-- keeping the tools so they dont lose ownership
local tools = {}
for i,v in pairs(OriginalRig:GetChildren()) do
	if v:IsA("Tool") then
		v.Parent = Player.Backpack
		table.insert(tools,v)
	end
end

wait() -- adding a wait as extra safety

-- old dynvelocity, feel free to edit and use this if u want
local function dynvelocity()
	local humrootpos = Character.HumanoidRootPart.Position
	local smallestmag = 22.5
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v ~= game:GetService("Players").LocalPlayer and v.Character then
			local humroot = v.Character:FindFirstChild("HumanoidRootPart") or v.Character:FindFirstChild("Head")
			if humroot then
				local mag = (humroot.Position-humrootpos).magnitude
				if mag <= smallestmag then
					smallestmag = mag
				end
			end
		end
	end
	getgenv.Velocity = 45-smallestmag*2
	for i,v in pairs(OriginalRig:GetDescendants()) do
		if v:IsA("BodyVelocity") then
			v.Velocity = Vector3.new(45-smallestmag*2,45-smallestmag*2,45-smallestmag*2)
		end
	end
end

-- changes velocity based on other players position to the player
local OriginalVelocity = getgenv.Velocity
local function dynvelocity2()
	local humrootpos = Character.HumanoidRootPart.Position
	local boolthing = false
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v ~= game:GetService("Players").LocalPlayer and v.Character then
			local humroot = v.Character:FindFirstChild("HumanoidRootPart") or v.Character:FindFirstChild("Head")
			if humroot then
				local mag = (humroot.Position-humrootpos).magnitude
				if mag <= 22.5 then
					--smallestmag = mag
					--getgenv.Velocity = OriginalVelocity
					Velocity = OriginalVelocity
					for i,v in pairs(OriginalRig:GetDescendants()) do
						if v:IsA("BodyVelocity") then
							v.Velocity = Vector3.new(OriginalVelocity,OriginalVelocity,OriginalVelocity)
						end
					end
				else
					Velocity = Vector3.new(0.01,0.01,0.01)
					for i,v in pairs(OriginalRig:GetDescendants()) do
						if v:IsA("BodyVelocity") then
							v.Velocity = Vector3.new(0.01,0.01,0.01)
						end
					end
				end
			end
		end
	end
end

local function dynvelocity3(part)
	local prevpos = part.Position
	local velstep
	local partvel = Vector3.new(-25.05,-25.05,-25.05)
	velstep = event.Event:Connect(function()
		if part and part.Parent then
			part:ApplyImpulse(partvel)
			--Velocity = velocity
			part.BodyVelocity.Velocity = partvel
		else
			velstep:Disconnect()
		end
	end)
	while wait(.1) and velstep do
		local pos = (part.Position - prevpos)
		if pos.Magnitude > 0.2 then
			partvel = pos * Vector3.new(50,50,50)
		else
			partvel = Vector3.new(-25.05,-25.05,-25.05)
		end
		prevpos = part.Position
	end
end

-- changes velocity based on player movement
if getgenv.MovementVelocity then
	--local savedvel = getgenv.Velocity
	Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
		local x,y,z = Character.Humanoid.MoveDirection.X,Character.Humanoid.MoveDirection.Y,Character.Humanoid.MoveDirection.Z
		local vector = Vector3.new(x*OriginalVelocity,y*OriginalVelocity,z*OriginalVelocity)
		if vector.X == 0 and vector.Y == 0 and vector.Z == 0 then vector = Vector3.new(OriginalVelocity,OriginalVelocity,OriginalVelocity) end
		Velocity = vector
		for i,v in pairs(OriginalRig:GetDescendants()) do
			if v:IsA("BodyVelocity") then
				v.Velocity = vector
			end
		end
		--print(Velocity)
	end)
end

if getgenv.DynamicVelocity then
	RunService.Stepped:Connect(dynvelocity2)
end
if getgenv.Network then
	RunService.Stepped:Connect(function()
		game:GetService("Players").LocalPlayer.MaximumSimulationRadius=6969
		SetHiddenProperty(game:GetService("Players").LocalPlayer,"SimulationRadius",6969)
	end)
end

if typeof(getgenv.Collisions) == "boolean" then
	local Collisionrig = getgenv.Collisions and OriginalRig or Character
	for i,v in pairs(Collisionrig:GetDescendants()) do
		if v:IsA("BasePart") then
			if getgenv.DynamicVelocityExperimental then
				cr(cc(function()
					dynvelocity3(v)
				end))
			end
			local collisionstep
			collisionstep = RunService.Stepped:Connect(function()
				if v and v.Parent then
					v.CanCollide = false
					if getgenv.AllowSleep then 
						SetHiddenProperty(v, "NetworkIsSleeping", false) 
					end
				else
					collisionstep:Disconnect()
				end
			end)
		end
	end
end

-- // Claim 2 Bring back
local keepingparts = true
if getgenv.Claim2 then
	local KeepInPlace = OriginalRig.HumanoidRootPart.CFrame
	local frametime = tick() task.wait() frametime = tick() - frametime 
	for i=1,1/(frametime/1) do
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = KeepInPlace
		wait(frametime)
	end
	-- :BreakJoints breaks the neck, not good for non-godmode
	for i,v in pairs(OriginalRig:GetDescendants()) do
		cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" or v:IsA("Weld") and v.Name ~= "Neck" then v:Destroy() end end))
	end
	cr(cc(function()
		while keepingparts and wait() do
			for i,v in pairs(OriginalRig:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= "Head" and v.Name ~= "HumanoidRootPart" then
					v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end))
	wait(0.5)
	local animat = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5), {CFrame = Character.HumanoidRootPart.CFrame})
	animat:Play()
	animat.Completed:wait()
	Character.HumanoidRootPart.Anchored = false
else
	for i,v in pairs(OriginalRig:GetDescendants()) do
		cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" or v:IsA("Weld") and v.Name ~= "Neck" then v:Destroy() end end))
	end
end

--[[
-- // Weld Removing
for i,v in pairs(OriginalRig:GetDescendants()) do
	cr(cc(function() if v:IsA("Motor6D") and v.Name ~= "Neck" then v:Destroy() end end))
end]]

-- // Godmode Keep Fling Part in place
if getgenv.GodMode and OriginalRig:FindFirstChild("Neck",true) then
	if OriginalRig:FindFirstChild(getgenv.Fling) then
		local savepos = OriginalRig:FindFirstChild(getgenv.Fling).CFrame
		cr(cc(function()
			while keepingparts and wait() and OriginalRig:FindFirstChild(getgenv.Fling) do
				OriginalRig[getgenv.Fling].CFrame = savepos
			end
		end))
	end
end

-- // FakeGod
if getgenv.FakeGod then
	if OriginalRig:FindFirstChild("SeeMonkey") then
		FakeTorso = OriginalRig.SeeMonkey.Handle
		Character.SeeMonkey.Handle.Transparency = 1
	else
		FakeTorso1 = OriginalRig["Kate Hair"].Handle
		FakeTorso1.Mesh:Destroy();
		FakeTorso = OriginalRig.Robloxclassicred.Handle
		Character["Kate Hair"].Handle.Transparency = 1
		Character["Robloxclassicred"].Handle.Transparency = 1
	end
	if OriginalRig:FindFirstChild("Void Head") then
		FakeHead = OriginalRig["Void Head"].Handle
		Character["Void Head"].Handle.Transparency = 1
	elseif OriginalRig:FindFirstChild("Dummy_Head") then
		FakeHead = OriginalRig["Dummy_Head"].Handle
		Character["Dummy_Head"].Handle.Transparency = 1
	else
		FakeHead = OriginalRig.MediHood.Handle
		Character["MediHood"].Handle.Transparency = 1
	end
	FakeTorso.Mesh:Destroy();
end

-- // Setting player onto the fake rig
for i,v in pairs(tools) do
	if v:IsA("Tool") then
		v.Parent = OriginalRig
	end
end
wait()
Player.Character.Parent = Character; Player.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
notify("Set Character to Fake Rig",6)

-- // Turning Chosen Rig Invisible
local invisrig = getgenv.ShowReal and Character or OriginalRig
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
if getgenv.AutoAnimate then
	if RigType == Enum.HumanoidRigType.R15 then
		cr(cc(function()
			--getgenv.ForHonor = Character.Animate
			loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/Animate"))()
		end))
	elseif getgenv.R6toR15 then
		cr(cc(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/extra/R15Animate.lua",true))()
		end))
	else
		Character.Animate.Disabled = true; wait() Character.Animate.Disabled = false
	end
end


-- // Making Characters not collide
for i,v in pairs(Character:GetDescendants()) do
	cr(cc(function()
		if v:IsA("BasePart") then
			PhysicsService:SetPartCollisionGroup(v, "NoCollide")
		end
	end))
end

--[[
	if you're confused about the differences between runservice events
	refer to; https://doy2mn9upadnk.cloudfront.net/uploads/default/original/3X/2/d/2d8a74483027f44c4f05080bc9437408f461737a.png
]]

if RigType == Enum.HumanoidRigType.R15 then
	for R6PartName,R15PartNames in pairs(R15Offsets) do
		for i,R15PartNameOffset in pairs(R15PartNames) do
			cr(cc(function()
				local partbeat
				partbeat = event.Event:Connect(function(delta)
					if OriginalRig:FindFirstChild(i) then
						if networkownership(OriginalRig[i]) then
							if i == getgenv.Fling then
							elseif i == "Head" and OriginalRig:FindFirstChild("Neck",true) then
							else
								local ExpectedPosition = Character[R6PartName].CFrame * R15PartNameOffset
								OriginalRig[i].CFrame = ExpectedPosition 
							end
						end
					else
						partbeat:Disconnect()
					end
				end)
			end))
		end
	end
	for i,v in pairs(OriginalRig:GetChildren()) do
		if v:IsA("Accessory") then
			local partbeat
			partbeat = event.Event:Connect(function(delta)
				if v and v.Parent and v:FindFirstChild("Handle") then
					if networkownership(v.Handle) then
						v.Handle.CFrame = v.Handle.CloneHat.Value.CFrame 
					end
				else
					partbeat:Disconnect()
				end
			end)
		end
	end
elseif getgenv.R6toR15 then
	for i,v in pairs(OriginalRig:GetChildren()) do
		if v:IsA("Accessory") then
			local partbeat
			partbeat = event.Event:Connect(function(delta)
				if v and v.Parent and v:FindFirstChild("Handle") then
					if networkownership(v.Handle) then
						v.Handle.CFrame = v.Handle.CloneHat.Value.CFrame 
					end
				else
					partbeat:Disconnect()
				end
			end)
		end
	end
	for i,v in pairs(R15Offsets) do
		cr(cc(function()
			local partbeat
			partbeat = event.Event:Connect(function(delta)
				if OriginalRig:FindFirstChild(v[1]) and Character:FindFirstChild(v[2]) then
					if networkownership(OriginalRig[v[1]]) then
						if v[1] == "Head" and OriginalRig:FindFirstChild("Neck",true) then
						else
							OriginalRig[v[1]].CFrame = Character[v[2]].CFrame * v[3]
						end
					end
				else
					partbeat:Disconnect()
				end
			end)
		end))
	end
else
	for i,v in pairs(OriginalRig:GetChildren()) do
		cr(cc(function()
			if v:IsA("BasePart") then
				local partbeat
				partbeat = event.Event:Connect(function(delta)
					if v and v.Parent then
						if v.Name == getgenv.Fling and networkownership(v) then
						elseif getgenv.FakeGod and v.Name == "Head" and networkownership(FakeHead)  then
							FakeHead.CFrame = Character["Head"].CFrame
						elseif getgenv.FakeGod and v.Name == "Torso" and networkownership(FakeTorso)  then
							if FakeTorso1 then
								FakeTorso.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) * CFrame.new(0.5,0,0) 
								FakeTorso1.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) * CFrame.new(-0.5,0,0) 
							else
								FakeTorso.CFrame = Character["Torso"].CFrame * CFrame.Angles(math.rad(-90),0,0) 
							end
						elseif networkownership(v) then
							v.CFrame = Character[v.Name].CFrame 
						end
					else
						partbeat:Disconnect()
					end
				end)
			elseif v:IsA("Accessory") and v.Handle ~= FakeTorso and v.Handle ~= FakeTorso1 and v.Handle ~= FakeHead then
				local partbeat
				partbeat = event.Event:Connect(function(delta)
					if v and v.Parent and v:FindFirstChild("Handle") then
						if networkownership(v.Handle) then
							v.Handle.CFrame = v.Handle.CloneHat.Value.CFrame 
						end
					else
						partbeat:Disconnect()
					end
				end)
			end
		end))
	end
end
if getgenv.Tools then
	for i,v in pairs(tools) do
		local partbeat
		partbeat = event.Event:Connect(function(delta)
			if v and v.Parent and v:FindFirstChild("Handle") then
				if Character:FindFirstChild(v.Name) and networkownership(v.Handle) then
					v.Handle.CFrame = Character[v.Name].Handle.CFrame 
				elseif networkownership(v.Handle) then
					v.Handle.CFrame = Character["Head"].CFrame + Vector3.new(0,-5,0) 
				end
			else
				partbeat:Disconnect()
			end
		end)
	end
end

keepingparts = false

-- // Check for death
if getgenv.CheckForDeath then -- changed OriginalRig:ClearAllChildren because some games have a ac against it
	Character.Humanoid.Died:Connect(function() 
		pcall(function() 
			Player.Character = OriginalRig; 
			OriginalRig.Parent = workspace; 
			Character:Destroy() 
		end) 
	end) -- checking for resetting
	Player.CharacterAdded:Connect(function() 
		Character:Destroy() 
	end) -- checking to see if server respawned you
end

notify("Script loaded in " .. tostring(tick() - speedtesttick) .. " Seconds",5)

-- // God Mode
if getgenv.GodMode and OriginalRig:FindFirstChild("Neck",true) then 
	wait(game.Players.RespawnTime + game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()/750); 
	if OriginalRig:FindFirstChild("Neck",true) then 
		OriginalRig:FindFirstChild("Neck",true).Parent = nil 
		keepinplace = false 
		notify("Permadeath On",6) 
	end 
end
