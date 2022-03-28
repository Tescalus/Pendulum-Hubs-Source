if getgenv().Reanimation == "PermaDeath" or getgenv().Reanimation == nil then
    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
	getgenv().TorsoFling = true
	getgenv().ExtremeNetless = true
	getgenv().Velocity = -50
	else
	getgenv().TorsoFling = false
	getgenv().Fling = "HumanoidRootPart"
	getgenv().Velocity = -30
	getgenv().AntiSleep = true
	getgenv().ExtremeNetless = false
	getgenv().Optimizer = false
	end
	getgenv().ShowReal = true
	loadstring(game:HttpGet("https://bit.ly/34mO4Uc"))()
	task.wait()
	local Fling = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name]:FindFirstChild("LowerTorso") or game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name].HumanoidRootPart
	Fling.Transparency = 1
	Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(9999999999999999999999999999999999,9999999999999999999999999999999999,9999999999999999999999999999999999)
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	--game["Run Service"].Heartbeat:Connect(function(delta)
	--    Fling.CFrame = CFrame.new(mouse.hit.p)
	--end)
	local attackingwithhrp = false
	
	mouse.Button1Down:Connect(function()
		attackingwithhrp = true    
	end)
	
	
	mouse.Button1Up:Connect(function()
		attackingwithhrp = false
	end)
	
	game["Run Service"].Heartbeat:Connect(function(delta)
		if attackingwithhrp then
			Fling.CFrame = CFrame.new(mouse.hit.p)
		else
			Fling.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
		end
	end)
elseif Reanimation == "Simple" then
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
	getgenv().TorsoFling = true
	getgenv().ExtremeNetless = true
	getgenv().Velocity = -50
	else
	getgenv().TorsoFling = false
	getgenv().Fling = "Right Arm"
	getgenv().Velocity = -30
	getgenv().AntiSleep = true
	getgenv().ExtremeNetless = false
	getgenv().GodMode = false
	getgenv().Optimizer = false
	end
	getgenv().ShowReal = true
	getgenv().Optimizer = false
	loadstring(game:HttpGet("https://bit.ly/34mO4Uc"))()
	task.wait()
	local plr = game.Players.LocalPlayer
    local chr = plr.Character
	local hat2 = chr["Hat1"].Handle -- The hat you choose
    hat2:BreakJoints()
    local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
    -- Tips for past John (Tescalus)

    Weld.Part1 = hat2 -- (Hat)
    Weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"] -- What your welding the hat to (has to be a BasePart)

    Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(0),0) -- Offset & Angles
    print("Ran with no errors")
	local Fling = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name]["Right Arm"]
	local hat1 = game:GetService("Workspace").non[game.Players.LocalPlayer.Name]["Hat1"].Handle.Mesh
    hat1:Destroy()
	Fling.Transparency = .5
	Fling.BodyAngularVelocity.AngularVelocity = Vector3.new(999999999999999999999999999999999,999999999999999999999999999999999,999999999999999999999999999999999)
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	--game["Run Service"].Heartbeat:Connect(function(delta)
	--    Fling.CFrame = CFrame.new(mouse.hit.p)
	--end)
	local attackingwithhrp = false
	
	mouse.Button1Down:Connect(function()
		attackingwithhrp = true    
	end)
	
	
	mouse.Button1Up:Connect(function()
		attackingwithhrp = false
	end)
	
	game["Run Service"].Heartbeat:Connect(function(delta)
		if attackingwithhrp then
			Fling.CFrame = CFrame.new(mouse.hit.p)
		else
			Fling.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
		end
	end)
	    
end


	
