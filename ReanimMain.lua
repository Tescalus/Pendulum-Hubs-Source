game:GetService("RunService").Heartbeat:Connect(function()
    workspace.FallenPartsDestroyHeight = -math.huge
end)

getgenv()._reanimate = function()

	-- for some reason game:IsLoaded() broke so yeah

	if getgenv().__isloadedhook ~= true then 

		local old;

		old = hookmetamethod(game, "__namecall", newcclosure(function(s,...)

			if checkcaller() and s == game	and getnamecallmethod() == "IsLoaded" then

				return old(s,"Workspace")

			end

			return old(s,...)

		end))

		getgenv().__isloadedhook = true

	end

	local function ra(part)

		local epic = Instance.new('SelectionBox', game.Players.LocalPlayer.Character)

		epic.Name = 'okayu uwu'

		epic.Adornee = part

		epic.LineThickness = 0.05

		local speed = 4

		coroutine.wrap(function()

		while epic do

			for i = 0,1,0.001*speed do

				epic.Color3 = Color3.fromHSV(i,1,1)

				task.wait()

			end

		end

		end)()

	end

	--getgenv().Fling = "HumanoidRootPart"

	if game.Players.LocalPlayer.Character.Humanoid.RigType==Enum.HumanoidRigType.R15 then 

		--getgenv().ExtremeNetless=true;

                getgenv().AntiSleep = true

		getgenv().Velocity=-50

	else 

		--getgenv().AntiSleep=true;

		--getgenv().ExtremeNetless=false;

                --getgenv().Velocity = -35

	end;

	getgenv().Fling =game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 and 'LowerTorso' or getgenv().Reanimation == "PermaDeath" and 'HumanoidRootPart' or 'Right Arm'

	getgenv().ShowReal = true

	getgenv().PartGUI = false

	getgenv().FakeGod = false

	getgenv().GodMode = getgenv().Reanimation == 'PermaDeath' and true or false

	getgenv().Velocity = -35

	getgenv().Collisions = false

	getgenv().Claim2 = false

	getgenv().Notification = true

	getgenv().AutoAnimate = true

	getgenv().Network = true

	getgenv().AntiSleep = false

	getgenv().MovementVelocity = false

	getgenv().ArtificialHeartBeat = true

	getgenv().R6 = true --game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 and true or false

	getgenv().AutoReclaim = false

	getgenv().HatCollision = false

	getgenv().EnableSpin = true

	if getgenv().___hooked ~= true then

	local ___old; ___old=hookmetamethod(game,'__index',newcclosure(function(s,k)if checkcaller()and s==game:GetService('Workspace')and k== 'non'then return getgenv().CloneRig end return ___old(s,k)end)) getgenv().___hooked=true end

	loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua",true))()

	if getgenv().Reanimation=="PermaDeath"or getgenv().Reanimation==nil then 

		--task.wait(game.Players.RespawnTime+cloneref(game:GetService('Stats')).Network.ServerStatsItem['Data Ping']:GetValue()/750)

		if getgenv().Fling or getgenv().TorsoFling then

		local p=getgenv().RealRig:FindFirstChild("LowerTorso")or getgenv().RealRig.HumanoidRootPart;

		p.Transparency=.5;

		--p.BodyAngularVelocity.AngularVelocity=Vector3.new(999999999999999999999999999999999999,999999999999999999999999999999999999,999999999999999999999999999999999999)

		ra(p)

		local q=game.Players.LocalPlayer:GetMouse()

		local r=false;

		q.Button1Down:Connect(function()r=true end)

		q.Button1Up:Connect(function()r=false end)

		local s=false;

		game["Run Service"].Heartbeat:Connect(function(t)

			if r then 

				if s==false then 

					if q.Target and (q.Target.Parent:FindFirstChildOfClass("Humanoid")or q.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")) and not q.Target:FindFirstAncestor(game.Players.LocalPlayer.Character.Name) then 

						s=true;

						print("Began flinging")

						local u=p;

						local v=q.Target.Parent:FindFirstChild("Torso")or q.Target.Parent.Parent:FindFirstChild("Torso")or q.Target.Parent.Parent:FindFirstChild("LowerTorso")or q.Target.Parent:FindFirstChild("LowerTorso")

						local weld=Instance.new("Weld",v)

						local w=Instance.new("Weld",v)

						local x=Instance.new("Part",v)

						x.Transparency=1;

						x.CanCollide=false;

						local y=Instance.new("Part",v)

						y.Transparency=1;

						y.CanCollide=false;

						weld.Part0=x;

						weld.Part1=v;

						weld.C0=CFrame.new(0,0,8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						w.Part0=y;

						w.Part1=v;

						w.C0=CFrame.new(0,0,-8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						for _=0,30 do

						u.CFrame=x.CFrame:Lerp(x.CFrame,1)

						wait(.1)

						u.CFrame=v.CFrame:Lerp(y.CFrame,1)

						wait(.1)

						end

						print("Stopped flinging!")

						s=false 

					else  s = false if q.Target then p.CFrame = q.Hit else p.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame - Vector3.new(0,6,0) end

					end 

				end 

				else if s==true then 

				else p.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame - Vector3.new(0,6,0) end 

			end 

		end)

	end

	elseif Reanimation=="Simple"then 

			--task.wait()

			if getgenv().Fling or getgenv().TorsoFling then

			local z=game.Players.LocalPlayer;

			local A=z.Character;

			local B=getgenv().CloneRig["Hat1"].Handle;

			B:BreakJoints()

			local Weld=Instance.new("Weld",getgenv().CloneRig)

			Weld.Part1=B;

			Weld.Part0=game.Players.LocalPlayer.Character["Right Arm"]

			Weld.C0=CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(0),0)

			print("Ran with no errors")

			local p=getgenv().RealRig["Right Arm"]

			ra(p)

			local C=getgenv().RealRig["Hat1"].Handle.Mesh;

			C:Destroy()

			p.Transparency=.5;

			--p.BodyAngularVelocity.AngularVelocity=Vector3.new(9999999999999999999999999999999,99999999999999999999999999999999,99999999999999999999999999999999)

			local q=game.Players.LocalPlayer:GetMouse()

			local r=false;q.Button1Down:Connect(function()r=true end)

			q.Button1Up:Connect(function()r=false end)

			local s=false;

			game["Run Service"].Heartbeat:Connect(function(t)

				--print(r, s, q.Target, q.Target.Parent)

				if r then 

					if s==false then 

						if q.Target and (q.Target.Parent:FindFirstChildOfClass("Humanoid")or q.Target.Parent.Parent:FindFirstChildOfClass("Humanoid")) and not q.Target:FindFirstAncestor(game.Players.LocalPlayer.Character.Name) then 

							s=true;

							print("Began flinging")

							local u=p;

							local v=q.Target.Parent:FindFirstChild("Torso")or q.Target.Parent.Parent:FindFirstChild("Torso")or q.Target.Parent.Parent:FindFirstChild("LowerTorso")or q.Target.Parent:FindFirstChild("LowerTorso")

							local weld=Instance.new("Weld",v)

							local w=Instance.new("Weld",v)

							local x=Instance.new("Part",v)

							x.Transparency=1;

							x.CanCollide=false;

							local y=Instance.new("Part",v)

							y.Transparency=1;

							y.CanCollide=false;

							weld.Part0=x;

							weld.Part1=v;

							weld.C0=CFrame.new(0,0,8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

							w.Part0=y;

							w.Part1=v;

							w.C0=CFrame.new(0,0,-8)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

							for _=0,30 do

							u.CFrame=x.CFrame:Lerp(x.CFrame,1)wait(.1)u.CFrame=v.CFrame:Lerp(y.CFrame,1)wait(.1)

							end

							print("Stopped flinging!")

							s=false;

						else s = false if q.Target then p.CFrame = q.Hit else p.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame - Vector3.new(0,6,0) end end

					end else 

						if s==true then 

					else p.CFrame=game.Players.LocalPlayer.Character.Torso.CFrame - Vector3.new(0,6,0)

					end 

				end 

			end)

		end

	end

end
        
        
        
        
getgenv()._reanimate()
