local Global = getgenv and getgenv() or _G
	
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer
	local Character = Player.Character
	local Mouse = Player:GetMouse()

	local MouseDown = false;
	local FlingEnabled = false
	getgenv().isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end 
	--[[
		part.ReceiveAge is the time in seconds since the last time the physics of a basepart has updated, if 0 then theres no physics (its anchored)
		in the context of exploiting, 0 means that the player is simulating physics on the basepart, and therefore owns it
	]]
	Mouse.Button1Down:Connect(function() MouseDown=true end)
	Mouse.Button1Up:Connect(function() MouseDown=false end)
	
	local SplitTorsoHats = {
		{"19999406",CFrame.Angles(math.rad(90),0,0)},
		{"26400954",CFrame.Angles(math.rad(90),0,0)},
		{"81504106",CFrame.Angles(math.rad(90),0,0)},
		{"20367587",CFrame.Angles(math.rad(90),0,0)},
		{"15730704",CFrame.Angles(math.rad(90),0,0)},
		{"6858317867",CFrame.Angles(math.rad(90),0,0)},
		{"6858318826",CFrame.Angles(math.rad(90),0,0)},
		{"6926051356",CFrame.Angles(math.rad(90),0,0)},
		{"45915003",CFrame.Angles(math.rad(90),0,0)},
		{"44106323",CFrame.Angles(math.rad(90),0,0)},
		{"376188163",CFrame.Angles(math.rad(90),0,0)},
		{"417448095",CFrame.Angles(math.rad(90),0,0)},
		{"47991609",CFrame.Angles(math.rad(90),0,0)},
		{"3210183293",CFrame.Angles(math.rad(90),0,0)},
		{"21778516",CFrame.Angles(math.rad(90),0,0)},
		{"19999406",CFrame.Angles(math.rad(90),0,0)},
		{"19999406",CFrame.Angles(math.rad(90),0,0)},
		{"7287236788",CFrame.Angles(0,0,0)},
		{"31740496",CFrame.Angles(0,0,0)},
		{"3612040655",CFrame.Angles(0,0,0)},
		{"30303412",CFrame.Angles(0,0,0)},
		{"4802604574",CFrame.Angles(0,0,0)},
		{"7250556324",CFrame.Angles(0,0,0)},
		{"7402858015",CFrame.Angles(0,0,0)},
		{"14456185",CFrame.Angles(0,0,0)},
	}
	
	
	local function RainbowSelection(Part)
		local Selection = Instance.new("Highlight")
		Selection.Name = "Padero Pride Month Special"
		Selection.Adornee = Part
		Selection.FillTransparency = 0.7
		Selection.DepthMode = 0
		task.spawn(function()
			while Character do
				for i = 0,1,0.004 do
					Selection.FillColor = Color3.fromHSV(i,1,1)
					Selection.OutlineColor = Color3.fromHSV(i,1,1)
					Part.Transparency = 0
					if isnetworkowner(Part) then Selection.Enabled = true else Selection.Enabled = false end
					task.wait()
				end
			end
		end)
		Selection.Parent = Character
	end
	
	do -- Settings
		Global.Fling = Character.Humanoid.RigType == Enum.HumanoidRigType.R15 and 'LowerTorso' or Global.Reanimation == "PermaDeath" and 'HumanoidRootPart' or 'Right Arm'
		Global.ShowReal = true
		Global.GodMode = Global.Reanimation == 'PermaDeath' and true or false
		Global.Velocity = -35
		Global.Collisions = true
		Global.AntiSleep = true
		Global.MovementVelocity = false
		Global.ArtificialHeartBeat = true
		Global.EnableSpin = true
	end
	
	do -- idk what the fuck this code is so im just gonna include it
		if Global.___hooked ~= true then
			local ___old;
			local w = game:GetService('Workspace') --synapse when the
			___old=hookmetamethod(game,'__index',newcclosure(function(s,k)
				if checkcaller() and s==w and k== 'non' then
					return Global.CloneRig
				end 
				return ___old(s,k)
			end))
			Global.___hooked=true 
		end
	end
	--local Event = Global.MiliWait
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua",true))()
	
	
	
	do -- Replace Arm for Non-Perma Reanimate
		if Global.Reanimation == "Simple" and Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then 
			local ReplacementHat
			for i,Hat in ipairs(Global.RealRig:GetChildren()) do
				if Hat:IsA("Accessory") then
					local Texture = Hat.Handle:FindFirstChildOfClass("SpecialMesh")
					if Texture then
						for i,v in ipairs(SplitTorsoHats) do
							if v[1] == string.match(Texture.TextureId,"%d+") then
								table.remove(SplitTorsoHats,i)
								ReplacementHat = {Hat.Handle,v[2]}
							end
						end
					end
				end
			end
			if ReplacementHat then
				ReplacementHat[1].CloneHat.Value.AccessoryWeld.Part1 = Player.Character["Right Arm"]
				ReplacementHat[1].CloneHat.Value.AccessoryWeld.C0=ReplacementHat[2]
				ReplacementHat[1]:FindFirstChildOfClass("SpecialMesh"):Destroy()
			end
		end
	end
	do -- Fling
		Global.FlingPart = Global.RealRig:FindFirstChild(tostring(Global.Fling))
		if Global.FlingPart then
			local connection;
			Global.FlingPart.Transparency=.5;
			RainbowSelection(Global.FlingPart)
			Mouse.TargetFilter = Player.Character
			if Global.FlingType == 'Mixed' or Global.FlingType == nil then
			local OtherPlayer;
			local looping = false;
			connection = game:GetService('RunService').Heartbeat:Connect(function()
				if MouseDown then
					FlingEnabled = false
					if Mouse.Target then
						FlingPart.CFrame = Mouse.Hit
						if Mouse.Target.Parent and Mouse.Target.Parent:FindFirstChild('Humanoid') then
							OtherPlayer = Mouse.Target.Parent:FindFirstChild('Torso') or Mouse.Target.Parent:FindFirstChild('UpperTorso')
						elseif Mouse.Target.Parent.Parent and Mouse.Target.Parent.Parent:FindFirstChild('Humanoid') then
							OtherPlayer = Mouse.Target.Parent.Parent:FindFirstChild('Torso') or Mouse.Target.Parent.Parent:FindFirstChild('UpperTorso')
						else OtherPlayer = nil end
						coroutine.wrap(function()
							if not OtherPlayer then return end
							local old = OtherPlayer
							wait(0.5)
							print(1)
							if not MouseDown and OtherPlayer ~= old then
								print(2)
								OtherPlayer = old
								FlingEnabled = true
							end
						end)()
					else
							Global.FlingPart.CFrame= Player.Character.Torso.CFrame - Vector3.new(0,6,0)
					end
					if OtherPlayer then FlingEnabled = true; looping = false end
				elseif FlingEnabled == true then
					if looping then return end
					--FlingEnabled = true
					local w = Instance.new('Weld',OtherPlayer)
					local w2 = Instance.new('Weld',OtherPlayer)
					local p1 = Instance.new('Part',OtherPlayer)
					local p2 = Instance.new('Part',OtherPlayer)
					p1.Transparency = 1
					p1.CanCollide=false
					p2.Transparency = 1
					p2.CanCollide=false
					w.Part0=OtherPlayer
					w.Part1=p1
					w2.Part0=OtherPlayer
					w2.Part1=p2
					w.C0 = CFrame.new(0,0,8)
					w2.C0 = CFrame.new(0,0,-8)
					for _=1,15 do
						if not OtherPlayer then break end
						looping = true
						--if OtherPlayer == nil then break end
						Global.FlingPart.Position= p1.Position--:Lerp(p1.CFrame,1)
						task.wait(.1)
						Global.FlingPart.Position= p2.Position--:Lerp(p2.CFrame,1)
						task.wait(.1)
					end
					for _,v in ipairs({w,w2,p1,p2}) do game:GetService('Debris'):AddItem(v,0) end
					OtherPlayer = nil
					FlingEnabled = false
					looping = false
				else
					if not looping and not FlingEnabled then Global.FlingPart.CFrame= Player.Character.Torso.CFrame - Vector3.new(0,6,0) end
				end
			end)
			elseif Global.FlingType == 'Prediction only' then
				local flinging = false
				local looping = false
				connection = game:GetService('RunService').Heartbeat:Connect(function()
					if MouseDown then
						if flinging == false then
							if Mouse.Target and (Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")or Mouse.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")) and not Mouse.Target:FindFirstAncestor(game.Players.LocalPlayer.Character.Name) then 
								flinging = true
								local part = Mouse.Target.Parent:FindFirstChild("Torso")or Mouse.Target.Parent.Parent:FindFirstChild("Torso")or Mouse.Target.Parent.Parent:FindFirstChild("UpperTorso")or Mouse.Target.Parent:FindFirstChild("UpperTorso")
								--print(part)
								local w = Instance.new("Weld",part)
								local w2 = Instance.new("Weld",part)
								local p1 = Instance.new('Part',part)
								local p2 = Instance.new('Part',part)
								p1.Transparency = 1
								p1.CanCollide=false
								p2.Transparency = 1
								p2.CanCollide=false
								w.Part0=part
								w.Part1=p1
								w2.Part0=part
								w2.Part1=p2
								w.C0 = CFrame.new(0,0,8)
								w2.C0 = CFrame.new(0,0,-8)
								for _=1,15 do
									Global.FlingPart.Position = p1.Position
									task.wait(.1)
									Global.FlingPart.Position = p2.Position
									task.wait(.1)
								end
								for _,v in ipairs({w,w2,p1,p2}) do game:GetService('Debris'):AddItem(v,0) end
								flinging = false
							else flinging = false 
								if Mouse.Target then 
									Global.FlingPart.CFrame = Mouse.Hit 
								else 
									Global.FlingPart.CFrame = Player.Character.Torso.CFrame - Vector3.new(0,6,0) 
								end 
							end
						end
					else 
						if flinging == true then 
						else 
							Global.FlingPart.CFrame = Player.Character.Torso.CFrame - Vector3.new(0,6,0) 
						end
					end
				end)
			elseif Global.FlingType == 'Click only' then
				connection = game:GetService('RunService').Heartbeat:Connect(function()
					if MouseDown then
						if Mouse.Target then
							Global.FlingPart.CFrame = Mouse.Hit	
						end
					else
						Global.FlingPart.CFrame= Player.Character.Torso.CFrame - Vector3.new(0,6,0)
					end
				end)
			end
			game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()connection:Disconnect()end)
		end
	end
