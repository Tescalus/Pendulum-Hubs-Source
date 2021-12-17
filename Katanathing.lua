--By Rufus14
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
 -- FLING BELOW!
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
mouse = game.Players.LocalPlayer:GetMouse()
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
SpecialMesh1 = Instance.new("SpecialMesh")
Attachment2 = Instance.new("Attachment")
Attachment3 = Instance.new("Attachment")
Attachment4 = Instance.new("Attachment")
Attachment5 = Instance.new("Attachment")
Part0.Name = "Katana"
Part0.Parent = mas
Part0.BrickColor = BrickColor.new("Dark stone grey")
Part0.Rotation = Vector3.new(-110.909996, -14.0299997, -57.5999985)
Part0.FormFactor = Enum.FormFactor.Custom
Part0.Size = Vector3.new(0.200000003, 0.100000851, 4.6999979)
Part0.CFrame = CFrame.new(5.1301012, 4.3172431, -13.3496962, 0.51984179, 0.819148481, -0.242405802, 0.422617286, 3.61466164e-07, 0.906308353, 0.742401004, -0.573581874, -0.346186072)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part0.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part0.Position = Vector3.new(5.1301012, 4.3172431, -13.3496962)
Part0.Orientation = Vector3.new(-65, -145, 90)
Part0.Color = Color3.new(0.388235, 0.372549, 0.384314)
SpecialMesh1.Parent = Part0
SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=11442510"
SpecialMesh1.Scale = Vector3.new(1.70000005, 1.70000005, 1.70000005)
SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=11442524"
SpecialMesh1.MeshType = Enum.MeshType.FileMesh
SpecialMesh1.Scale = Vector3.new(1.70000005, 1.70000005, 1.70000005)
Attachment5.Name = "Attachment"
Attachment5.Parent = Part0
Attachment5.CFrame = CFrame.new(-5.569309e-07, -1.49011612e-07, 2.49999976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Attachment5.Position = Vector3.new(-5.569309e-07, -1.49011612e-07, 2.49999976)
Attachment4.Parent = Part0
Attachment4.CFrame = CFrame.new(-3.29315662e-06, 3.53716314e-06, -1.10000086, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Attachment4.Position = Vector3.new(-3.29315662e-06, 3.53716314e-06, -1.10000086)
Attachment4.Parent = Part0
Attachment4.CFrame = CFrame.new(-3.29315662e-06, 3.53716314e-06, -1.10000086, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Attachment4.Position = Vector3.new(-3.29315662e-06, 3.53716314e-06, -1.10000086)
Attachment5.Name = "Attachment1"
Attachment5.Parent = Part0
Attachment5.CFrame = CFrame.new(-5.569309e-07, -1.49011612e-07, 2.49999976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Attachment5.Position = Vector3.new(-5.569309e-07, -1.49011612e-07, 2.49999976)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
Part0:BreakJoints()
canwalk = true
local rhandclone = game.Workspace.non.Torso["Right Shoulder"]:Clone()
local rhandweld = Instance.new("Weld", game.Workspace.non.Torso)
rhandweld.Part0 = game.Workspace.non.Torso
rhandweld.Part1 = game.Workspace.non["Right Arm"]
rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local lhandclone = game.Workspace.non.Torso["Left Shoulder"]:Clone()
local lhandweld = Instance.new("Weld", game.Workspace.non.Torso)
lhandweld.Part0 = game.Workspace.non.Torso
lhandweld.Part1 = game.Workspace.non["Left Arm"]
lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local llegclone = game.Workspace.non.Torso["Left Hip"]:Clone()
game.Workspace.non.Torso["Left Hip"]:Remove()
local llegweld = Instance.new("Weld", game.Workspace.non.Torso)
llegweld.Part0 = game.Workspace.non.Torso
llegweld.Part1 = game.Workspace.non["Left Leg"]
llegweld.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0,-1,0)
local rlegclone = game.Workspace.non.Torso["Right Hip"]:Clone()
game.Workspace.non.Torso["Right Hip"]:Remove()
local rlegweld = Instance.new("Weld", game.Workspace.non.Torso)
rlegweld.Part0 = game.Workspace.non.Torso
rlegweld.Part1 = game.Workspace.non["Right Leg"]
rlegweld.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0) * CFrame.new(0,-1,0)
local rootjointclone = game.Workspace.non.HumanoidRootPart.RootJoint:Clone()
game.Workspace.non.HumanoidRootPart.RootJoint:Remove()
local humanoidrootpart = Instance.new("Weld", game.Workspace.non.Torso)
humanoidrootpart.Part0 = game.Workspace.non.HumanoidRootPart
humanoidrootpart.Part1 = game.Workspace.non.Torso
local heed = game.Workspace.non.Torso["Neck"]:Clone()
local headweld = Instance.new("Weld", game.Workspace.non.Torso)
headweld.Part0 = game.Workspace.non.Torso
headweld.Part1 = game.Workspace.non.Head
headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
game.Workspace.non.Torso.Neck:Remove()
Part0.CanCollide = false
using = false
slashval = 0
local swoosh = Instance.new("Sound", Part0)
swoosh.Volume = 10
swoosh.SoundId = "rbxassetid://1112042117"
swoosh.PlaybackSpeed = 2
local hit1 = Instance.new("Sound", Part0)
hit1.Volume = 10
hit1.SoundId = "rbxassetid://220834000"
local hit11 = Instance.new("Sound", Part0)
hit11.Volume = 10
hit11.SoundId = "rbxassetid://220833976"
local hit111 = Instance.new("Sound", Part0)
hit111.Volume = 10
hit111.SoundId = "rbxassetid://220834019"
local hit1111 = Instance.new("Sound", Part0)
hit1111.Volume = 10
hit1111.SoundId = "rbxassetid://220833967"
local welded = Instance.new("Weld", game.Workspace.non["Right Arm"])
welded.Part0 = game.Workspace.non["Right Arm"]
welded.Part1 = Part0
welded.C0 = CFrame.new(2.90870667e-05, -1.00003433, -1.76998043, 3.48827803e-06, 0.999993622, 1.11844793e-06, 0.999994636, -6.09856488e-06, -1.73907235e-08, 1.42558235e-06, -5.02059891e-07, -0.999994695)
function block(key)
	key = key:lower()
	if key == "q" then
		canwalk = false
		using = true
		hp = game.Workspace.non.Humanoid.Health
		maxhp = game.Workspace.non.Humanoid.MaxHealth
		game.Workspace.non.Humanoid.MaxHealth = math.huge
		game.Workspace.non.Humanoid.Health = math.huge
		game.Workspace.non.Humanoid.WalkSpeed = 0
		game.Workspace.non.Humanoid.JumpPower = 0
		ff = Instance.new("ForceField", game.Workspace.non)
		ff.Visible = false
		for i = 0,0.7 , 0.03 do
			welded.C0 = welded.C0:lerp(CFrame.new(0.284156799, 0.36516571, -1.94937825, -0.0683778524, -0.995965302, 0.0581266545, -0.762119114, 0.0897441804, 0.641186953, -0.643816173, -0.000456497073, -0.765180826),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.50000024, 0, 0.906307876, 2.65673535e-22, -0.422617942, -1.08395635e-22, 1, 3.96182153e-22, 0.422617942, -3.13253081e-22, 0.906307876),i)
		    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0):inverse(),i)
		    rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -2, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
		    llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.790345192, -1.96068549, 0, 0.984807849, 0.173647985, -5.23747954e-22, -0.173647985, 0.984807849, 3.13253081e-22, 5.70186845e-22, -2.1754633e-22, 1),i)
		    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(0.815580368, 0.66998291, -0.560562134, 0.776800871, -0.602075934, -0.184622467, -0.623220742, -0.777068436, -0.0880940408, -0.0904249921, 0.183492064, -0.978853703),i)
		    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.5073452, 0.701468706, -0.965937614, -0.0512250289, -0.409358144, 0.910934985, 0.0288530104, -0.912358105, -0.408375204, 0.998270571, 0.00536418287, 0.058546789),i)
		    game:GetService("RunService").RenderStepped:wait()
	    end
	end
end
function unblock(key)
	key = key:lower()
	if key == "q" then
		canwalk = true
		using = false
		ff:Remove()
		game.Workspace.non.Humanoid.WalkSpeed = 16
		game.Workspace.non.Humanoid.JumpPower = 50
		game.Workspace.non.Humanoid.MaxHealth = maxhp
		game.Workspace.non.Humanoid.Health = hp
	end
end
mouse.KeyDown:connect(block)
mouse.KeyUp:connect(unblock)
function slash()
	if not using then
		using = true
		canwalk = false
		if slashval > 3 then
			slashval = 0
		end
		if slashval == 0 then
			slashval = slashval + 1
			swoosh:Play()
			local trail = Instance.new("Trail", Part0)
			trail.Attachment0 = Attachment4
			trail.Attachment1 = Attachment5
			trail.Lifetime = 0.05
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(-0.0285909176, -0.964775562, -1.62501633, 2.65673535e-22, 1, 5.23747954e-22, 1, -2.65673535e-22, -3.13253081e-22, -3.13253081e-22, 5.23747954e-22, -1),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866024196, 2.65673535e-22, -0.500002146, -7.34524923e-23, 1, 4.04122082e-22, 0.500002146, -3.13253081e-22, 0.866024196),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.499998987, -4.04121804e-22, -0.866025984, 2.65673535e-22, 1, -3.13253081e-22, 0.866025984, -7.34539565e-23, 0.499998987):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.84204149, 0.124492884, -1.00376318e-21, 0.939692736, 0.342019886, -5.23747954e-22, -0.342019916, 0.939692736, 3.13253081e-22, 5.99300937e-22, -1.1522943e-22, 1),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.00925922, 0.485242128, -1.20619643, 2.65673535e-22, 0.422617942, 0.906307876, 1, 1.71625336e-22, -3.73168367e-22, -3.13253081e-22, 0.906307876, -0.422617942),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			local sensorpart = Instance.new("Part", Part0)
	        sensorpart.Size = Vector3.new(0.5,4.5,0.3)
	        sensorpart.Transparency = 1
	        sensorpart:BreakJoints()
	        sensorpart.CanCollide = false
	        local weld1 = Instance.new("Weld", sensorpart)
	        weld1.Part0 = sensorpart
	        weld1.Part1 = Part0
			weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0,0,-2.5)
			local function dmg(part)
				local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
				local torso = part.Parent:findFirstChild("Torso")
				local uppertorso = part.Parent:findFirstChild("UpperTorso")
				if humanoid then
					humanoid.Health = humanoid.Health - math.random(50,60)
					local hitvalrandom = math.random(1,4)
					if hitvalrandom == 1 then
						hit1:Play()
					end
					if hitvalrandom == 2 then
						hit11:Play()
					end
					if hitvalrandom == 3 then
						hit111:Play()
					end
					if hitvalrandom == 4 then
						hit1111:Play()
					end
					for i = 1,50 do
						if torso then
							torso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 30
						elseif uppertorso then
							uppertorso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 30
						end
					end
				end
			end
			sensorpart.Touched:connect(dmg)
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(-0.0285909176, -2.71455145, -0.90740478, -2.73476154e-29, 1, -2.2947362e-29, 0.500000417, 2.5243549e-29, -0.866025686, -0.866025686, 2.5243549e-29, -0.500000417),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.707106352, 3.36441351e-23, 0.707107365, 2.65673535e-22, 1, -3.13253081e-22, -0.707107365, 4.09362971e-22, 0.707106352):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.95282686, 0.177967548, -5.57488633e-23, 0.499999106, 0.866026163, 0, -0.866025984, 0.499998987, 3.13253182e-22, 2.71285302e-22, -1.56626225e-22, 1.00000024),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.91089821, 0.485242128, -0.752363503, 2.65673535e-22, -0.573576987, 0.819151998, 1, 4.08986135e-22, -3.79522244e-23, -3.13253081e-22, 0.819151998, 0.573576987),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			sensorpart:destroy()
			trail:destroy()
		elseif slashval == 1 then
			slashval = slashval + 1
			local trail = Instance.new("Trail", Part0)
			trail.Attachment0 = Attachment4
			trail.Attachment1 = Attachment5
			trail.Lifetime = 0.05
			swoosh:Play()
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(3.81469727e-05, 0.251302719, -1.5781014, 7.39097595e-06, 1, 2.98023224e-08, 0.766043305, -5.7220459e-06, 0.642789245, 0.642789245, -4.70876694e-06, -0.766043127),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866024196, 2.65673535e-22, -0.500002146, -7.34524923e-23, 1, 4.04122082e-22, 0.500002146, -3.13253081e-22, 0.866024196),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.866025388, -7.34534137e-23, 0.500000238, 2.65673535e-22, 1, -3.13253081e-22, -0.500000238, 4.04121956e-22, 0.866025388):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.07134676, 0.106449842, -1.03622437, 0.765215099, -0.627616405, -0.143330336, 0.396098047, 0.634510398, -0.663704038, 0.507496059, 0.451103479, 0.734134555),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.00207996, 1.1934793, -0.36548233, 0.848145485, -0.505803585, 0.157518297, -0.16016309, -0.528244972, -0.833849609, 0.504972279, 0.68199718, -0.529039621),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			local sensorpart = Instance.new("Part", Part0)
	        sensorpart.Size = Vector3.new(0.5,4.5,0.3)
	        sensorpart.Transparency = 1
	        sensorpart:BreakJoints()
	        sensorpart.CanCollide = false
	        local weld1 = Instance.new("Weld", sensorpart)
	        weld1.Part0 = sensorpart
	        weld1.Part1 = Part0
			weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0,0,-2.5)
			local function dmg(part)
				local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
				local torso = part.Parent:findFirstChild("Torso")
				local uppertorso = part.Parent:findFirstChild("UpperTorso")
				if humanoid then
					humanoid.Health = humanoid.Health - math.random(50,70)
					local hitvalrandom = math.random(1,4)
					if hitvalrandom == 1 then
						hit1:Play()
					end
					if hitvalrandom == 2 then
						hit11:Play()
					end
					if hitvalrandom == 3 then
						hit111:Play()
					end
					if hitvalrandom == 4 then
						hit1111:Play()
					end
					for i = 1,50 do
						if torso then
							torso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						elseif uppertorso then
							uppertorso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						end
					end
				end
			end
			sensorpart.Touched:connect(dmg)
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(2.67028809e-05, -1.67102146, -1.64267159, 2.86474824e-06, 1.00000036, -5.78165054e-06, 0.866025925, -5.39422035e-06, -0.499999285, -0.499999166, -3.54647636e-06, -0.866026163),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.906308115, -3.73168493e-22, -0.422618032, 2.65673535e-22, 1, -3.13253081e-22, 0.422618032, 1.71625361e-22, 0.906308115):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.54232287, 0.0149004459, 0.548013687, 0.989612877, 0.143751666, -0.00144592952, -0.10442698, 0.725734234, 0.680003583, 0.0988010243, -0.672789276, 0.733207405),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.04077673, -0.0431711674, -1.13153744, 0.814213216, 0.260836869, 0.518672585, 0.0643480048, 0.847341299, -0.527135789, -0.576989114, 0.462576419, 0.673132122),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			sensorpart:destroy()
			trail:destroy()
		elseif slashval == 2 then
			slashval = slashval + 1
			local trail = Instance.new("Trail", Part0)
			trail.Attachment0 = Attachment4
			trail.Attachment1 = Attachment5
			trail.Lifetime = 0.05
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(2.67028809e-05, -1.67102146, -1.64267159, 2.86474824e-06, 1.00000036, -5.78165054e-06, 0.866025925, -5.39422035e-06, -0.499999285, -0.499999166, -3.54647636e-06, -0.866026163),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.422617167, -3.96182102e-22, -0.906308413, 2.65673535e-22, 1, -3.13253081e-22, 0.906308413, -1.08396026e-22, 0.422617167):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.90979791, 0.13038063, 0.440188408, 0.918686688, 0.394984841, -0.00144627027, -0.288702846, 0.673977613, 0.680003643, 0.26956588, -0.624292731, 0.733207405),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.16461611, 0.0367743969, -1.00857544, -0.182387009, 0.36743924, 0.911988914, 0.80347389, 0.590319455, -0.0771536753, -0.566713989, 0.718687415, -0.402894437),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			swoosh:Play()
			local sensorpart = Instance.new("Part", Part0)
	        sensorpart.Size = Vector3.new(0.5,4.5,0.3)
	        sensorpart.Transparency = 1
	        sensorpart:BreakJoints()
	        sensorpart.CanCollide = false
	        local weld1 = Instance.new("Weld", sensorpart)
	        weld1.Part0 = sensorpart
	        weld1.Part1 = Part0
			weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0,0,-2.5)
			local function dmg(part)
				local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
				local torso = part.Parent:findFirstChild("Torso")
				local uppertorso = part.Parent:findFirstChild("UpperTorso")
				if humanoid then
					humanoid.Health = humanoid.Health - math.random(50,70)
					local hitvalrandom = math.random(1,4)
					if hitvalrandom == 1 then
						hit1:Play()
					end
					if hitvalrandom == 2 then
						hit11:Play()
					end
					if hitvalrandom == 3 then
						hit111:Play()
					end
					if hitvalrandom == 4 then
						hit1111:Play()
					end
					for i = 1,50 do
						if torso then
							torso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						elseif uppertorso then
							uppertorso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						end
					end
				end
			end
			sensorpart.Touched:connect(dmg)
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(2.76565552e-05, -2.33778858, -0.395505428, -1.06170774e-06, 1, -6.24358654e-06, 0.342021018, -5.51342964e-06, -0.939692378, -0.939692378, -3.14414501e-06, -0.34202092),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.573576868, 1.04217651e-22, 0.819151819, 2.65673535e-22, 1, -3.13253081e-22, -0.819151819, 3.97301704e-22, 0.573576868):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.97148991, -0.0472521782, -0.0644292831, 0.42140922, 0.877809823, -0.227737963, -0.870326281, 0.462037951, 0.170449868, 0.254846126, 0.126377195, 0.958687901),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.04814959, 0.656130075, -0.237668037, -0.0882750377, -0.619352877, 0.780134559, 0.978524327, -0.200378701, -0.0483581237, 0.186273068, 0.759111822, 0.623740256),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			sensorpart:destroy()
			trail:destroy()
		elseif slashval == 3 then
			slashval = slashval + 1
			local trail = Instance.new("Trail", Part0)
			trail.Attachment0 = Attachment4
			trail.Attachment1 = Attachment5
			trail.Lifetime = 0.05
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(-0.947553635, 0.563792229, 0.341335297, -5.99771738e-07, -0.906309485, -0.422615081, 0.342021227, -0.397128254, 0.851651847, -0.939692318, -0.144542873, 0.309977412),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.573576868, 1.04217651e-22, 0.819151819, 2.65673535e-22, 1, -3.13253081e-22, -0.819151819, 3.97301704e-22, 0.573576868):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.00824332, 0.0537319183, 0.0275039673, 0.293511003, 0.95308584, -0.0740200728, -0.95290488, 0.297877073, 0.05693518, 0.0763129964, 0.0538229868, 0.995630324),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.94798851, 0.105755329, -0.10107708, 0.00450100191, -0.873353004, -0.487067252, 0.058618024, 0.486464947, -0.871731579, 0.998270452, -0.0246272516, 0.053383816),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			swoosh:Play()
			local sensorpart = Instance.new("Part", Part0)
	        sensorpart.Size = Vector3.new(0.5,4.5,0.3)
	        sensorpart.Transparency = 1
	        sensorpart:BreakJoints()
	        sensorpart.CanCollide = false
	        local weld1 = Instance.new("Weld", sensorpart)
	        weld1.Part0 = sensorpart
	        weld1.Part1 = Part0
			weld1.C0 = CFrame.fromEulerAnglesXYZ(math.pi/2,0,0) * CFrame.new(0,0,-2.5)
			local function dmg(part)
				local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
				local torso = part.Parent:findFirstChild("Torso")
				local uppertorso = part.Parent:findFirstChild("UpperTorso")
				if humanoid then
					humanoid.Health = humanoid.Health - math.random(50,70)
					local hitvalrandom = math.random(1,4)
					if hitvalrandom == 1 then
						hit1:Play()
					end
					if hitvalrandom == 2 then
						hit11:Play()
					end
					if hitvalrandom == 3 then
						hit111:Play()
					end
					if hitvalrandom == 4 then
						hit1111:Play()
					end
					for i = 1,50 do
						if torso then
							torso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						elseif uppertorso then
							uppertorso.Velocity = game.Workspace.non.Torso.CFrame.lookVector * 20
						end
					end
				end
			end
			sensorpart.Touched:connect(dmg)
			for i = 0,1 , 0.25 do
				welded.C0 = welded.C0:lerp(CFrame.new(-0.000267982483, -2.63003874, -0.259422779, -0.0301553756, 0.999542177, 0.00259565469, 0.176128089, 0.00786980428, -0.984336019, -0.983905315, -0.0292258263, -0.176284716),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(3.98510265e-22, 1.5, -4.69879583e-22, 0.866028011, 2.65673535e-22, 0.499995977, -3.86706028e-22, 1, 1.38450289e-22, -0.499996006, -3.13253081e-22, 0.866028011),i)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.258819014, -3.71340683e-22, -0.965925992, 2.65673535e-22, 1, -3.13253081e-22, 0.965925992, -1.75545142e-22, 0.258819014):inverse(),i)
				lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-2.04530883, 0.350778341, 0.00776195526, 0.123550013, 0.989574015, -0.0740192309, -0.990153968, 0.12788114, 0.0569359511, 0.0658080056, 0.0662559941, 0.995630324),i)
				rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(2.03489971, 0.315366983, -0.101076126, -0.0158190075, -0.987064481, -0.159542501, 0.0566230193, 0.158422038, -0.985746562, 0.998270452, -0.024627313, 0.0533844829),i)
				game:GetService("RunService").RenderStepped:wait()
			end
			sensorpart:destroy()
			trail:destroy()
		end
		canwalk = true
		using = false
	end
end
mouse.Button1Down:connect(slash)
while true do
    if canwalk then
        if game.Workspace.non.Torso.Velocity.x < -0.5 or game.Workspace.non.Torso.Velocity.x > 0.5 or game.Workspace.non.Torso.Velocity.z < -0.5 or game.Workspace.non.Torso.Velocity.z > 0.5 then
            for i = 0,0.4 , 0.03 do
                if canwalk and game.Workspace.non.Torso.Velocity.x < -0.5 or game.Workspace.non.Torso.Velocity.x > 0.5 or game.Workspace.non.Torso.Velocity.z < -0.5 or game.Workspace.non.Torso.Velocity.z > 0.5 then
                    headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49999976, 0, 1.00000024, 2.61637394e-22, -4.61336744e-23, -2.65673585e-22, 0.984807849, -0.173647985, 0, 0.17364803, 0.984808087),i)
                    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 1.00000024, -2.65673585e-22, 0, 2.61637394e-22, 0.984807849, -0.17364803, 4.61336744e-23, 0.173647985, 0.984808087):inverse(),i)
                    rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.86566889, 0.695530891, 1.00000024, 2.03517657e-22, 1.70771776e-22, -2.65673585e-22, 0.76604414, 0.642788053, 0, -0.642788231, 0.766044319),i)
                    llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.530218601, -1.82889962, -0.714493513, 0.992945731, -0.0400093496, -0.111618601, -0.0400080197, 0.773099542, -0.633021653, 0.111619085, 0.633021772, 0.766045153),i)
                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.64980125, 0.0399148464, 0.717731237, 0.984808087, 0.133022189, 0.111618683, -0.173647985, 0.754407108, 0.633021653, 5.43957649e-23, -0.642787218, 0.766045153),i)
                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.59805202, 0.136151552, -0.559810162, 0.984808087, -0.173648104, -2.98209869e-07, 0.133021981, 0.754406869, -0.642787337, 0.111619018, 0.63302213, 0.766044855),i)
                    game:GetService("RunService").RenderStepped:wait()
                end
            end
            for i = 0,0.4 , 0.03 do
                if canwalk and game.Workspace.non.Torso.Velocity.x < -0.5 or game.Workspace.non.Torso.Velocity.x > 0.5 or game.Workspace.non.Torso.Velocity.z < -0.5 or game.Workspace.non.Torso.Velocity.z > 0.5 then
                    headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49999976, 0, 1.00000024, 2.61637394e-22, -4.61336744e-23, -2.65673585e-22, 0.984807849, -0.173647985, 0, 0.17364803, 0.984808087),i)
                    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -0.0726344585, -2.38418579e-07, 1.00000024, -2.65673585e-22, 0, 2.6163742e-22, 0.984807968, -0.173648044, 4.61336838e-23, 0.173648, 0.984808207):inverse(),i)
                    rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -1.86078393, -0.713530302, 1.00000024, 2.03517695e-22, -1.70771801e-22, -2.65673585e-22, 0.766044259, -0.642788112, 0, 0.642788291, 0.766044438),i)
                    llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.70853138, -1.75833619, 0.89703536, 0.992945731, 0.102975316, -0.0587838776, -0.0400080234, 0.757652104, 0.651431441, 0.111619093, -0.644484162, 0.756427169),i)
                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.66348219, 0.137681007, -0.535534859, 0.984808087, 0.133022189, -0.111618683, -0.173648, 0.754407227, -0.633021653, 0, 0.642787278, 0.766045332),i)
                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.59805202, 0.118935108, 0.435078144, 0.984808207, -0.173647344, -9.4095941e-07, 0.111619018, 0.63302201, 0.766044796, -0.133021042, -0.754407227, 0.642787576),i)
                    game:GetService("RunService").RenderStepped:wait()
                end
            end
        else
            if canwalk then
                for i = 0,0.7 , 0.03 do
					if canwalk then
						welded.C0 = welded.C0:lerp(CFrame.new(2.90870667e-05, -1.00003433, -1.76998043, 3.48827803e-06, 0.999993622, 1.11844793e-06, 0.999994636, -6.09856488e-06, -1.73907235e-08, 1.42558235e-06, -5.02059891e-07, -0.999994695),i)
						headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.50000024, 0, 0.906307876, 2.65673535e-22, -0.422617942, -1.08395635e-22, 1, 3.96182153e-22, 0.422617942, -3.13253081e-22, 0.906307876),i)
	                    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.866025388, -3.86706633e-22, -0.500000238, 2.65673535e-22, 1, -3.13253081e-22, 0.500000238, 1.38448295e-22, 0.866025388):inverse(),i)
	                    rlegweld.C0 = rlegweld.C0:lerp(CFrame.new(0.5, -2, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1),i)
	                    llegweld.C0 = llegweld.C0:lerp(CFrame.new(-0.790345192, -1.96068549, 0, 0.984807849, 0.173647985, -5.23747954e-22, -0.173647985, 0.984807849, 3.13253081e-22, 5.70186845e-22, -2.1754633e-22, 1),i)
	                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-0.421217442, 0.0324847698, -1.29440498, 0.821394861, -0.422617882, -0.383020282, -0.126494989, 0.51983583, -0.844848931, 0.55615592, 0.742404759, 0.373531491),i)
	                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.0324564, 0.142137051, -1.00955009, 0.819151819, 0.496732086, 0.286788493, -3.97301679e-22, 0.500000119, -0.866025388, -0.573576868, 0.709406197, 0.409575999),i)
	                    game:GetService("RunService").RenderStepped:wait()
					end
                end
            end
        end
    end
	if swoosh.Parent == nil then
		swoosh.Parent = Part0
	end
	if hit1.Parent == nil then
		hit1.Parent = Part0
	end
	if hit11.Parent == nil then
		hit11.Parent = Part0
	end
	if hit111.Parent == nil then
		hit111.Parent = Part0
	end
	if hit1111.Parent == nil then
		hit1111.Parent = Part0
	end
    game:GetService("RunService").RenderStepped:wait()
end