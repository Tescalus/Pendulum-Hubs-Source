--By Ruffles14
getgenv().Reanimation = "Simple"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
mouse = game.Players.LocalPlayer:GetMouse()
local rhandclone = game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
local rhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
rhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
rhandweld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local lhandclone = game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
local lhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
lhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
lhandweld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local rootjointclone = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Clone()
game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Remove()
local humanoidrootpart = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
humanoidrootpart.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
humanoidrootpart.Part1 = game.Players.LocalPlayer.Character.Torso
local heed = game.Players.LocalPlayer.Character.Torso["Neck"]:Clone()
local headweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
headweld.Part0 = game.Players.LocalPlayer.Character.Torso
headweld.Part1 = game.Players.LocalPlayer.Character.Head
headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
game.Players.LocalPlayer.Character.Torso.Neck:Remove()
using = false
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
Part0.Parent = mas
Part0.Rotation = Vector3.new(-17.039999, 72.0800018, -73.7399979)
Part0.Size = Vector3.new(0.48999998, 2.96999931, 1.94999981)
Part0.CFrame = CFrame.new(1.99671245, 4.08856773, -0.616976917, 0.0861581191, 0.29545939, 0.95146209, -0.99592489, 0, 0.090184398, 0.0266458243, -0.955355108, 0.294255406)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part0.Position = Vector3.new(1.99671245, 4.08856773, -0.616976917)
Part0.Orientation = Vector3.new(-5.17000008, 72.8099976, -90)
Part0.CanCollide = false
SpecialMesh1.Parent = Part0
SpecialMesh1.MeshId = "rbxassetid://441572308"
SpecialMesh1.Scale = Vector3.new(0.0209999997, 0.0209999997, 0.0209999997)
SpecialMesh1.TextureId = "rbxassetid://441572332"
SpecialMesh1.MeshType = Enum.MeshType.FileMesh
SpecialMesh1.Scale = Vector3.new(0.0209999997, 0.0209999997, 0.0209999997)
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
cananimate = true
canhit = false
local weld = Instance.new("Weld", game.Players.LocalPlayer.Character["Right Arm"])
weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
weld.Part1 = Part0
weld.C0 = CFrame.new(0.0769970417, -1.17027426, -1.17937994, 0, 0, 1, -0.999999881, 0, 0, 0, -1, 0)
for i = 0,1 , 0.03 do
	headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.962374032, 0, 0.271727562, 0, 1, 0, -0.271727562, 0, 0.962374032),i)
	humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.955355227, 0, -0.295459419, 0, 1, 0, 0.295459419, 0, 0.955355227),i)
	lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53559077, 0.0383267403, 0, 0.997264206, 0.0739177391, 0, -0.0739177391, 0.997264266, 0, 2.98023224e-08, 1.86264515e-09, 0.999999881),i)
	rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54305458, 0.047129631, 2.98023224e-08, 0.99592495, -0.0901843905, 0, 0.090184398, 0.995925009, 0, 0, 0, 0.999999881),i)
	game:GetService("RunService").RenderStepped:wait()
end
function swing()
	if not using then
		using = true
		cananimate = false
		for i = 0,1 , 0.045 do
			weld.C0 = weld.C0:lerp(CFrame.new(0.958130836, -0.815908253, -0.0419664383, 0.379335552, 0.92491132, -0.0253674984, -0.913223445, 0.378668189, 0.150445476, 0.148754537, -0.0339030921, 0.988292694),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(-4.65661287e-10, 1.49999952, 0, 0.601507425, -2.32830644e-10, 0.798867226, 3.0559022e-10, 1, 0, -0.798867226, -4.65661287e-10, 0.601507425),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.63088727, -0.00573391188, -0.775853336, 0, 0.999972701, -0.00739025697, 0.775874496, 0.00466241874, 0.630870044),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(0.0363237262, 0.350219727, -1.1563791, 0.495106995, -0.857149601, 0.1419992, 0.110766649, -0.0998312235, -0.988819599, 0.861742377, 0.505300522, 0.0455164276),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.50056481, 0.516354084, -0.499166548, 0.995925009, -0.00520473719, 0.09003409, 0.0901844054, 0.0574772507, -0.994265079, -2.98023224e-08, 0.998333335, 0.057712432),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		canhit = true
		for i = 0,1 , 0.08 do
			weld.C0 = weld.C0:lerp(CFrame.new(0.968596578, -1.15575922, 0.178524971, 0.0531506836, 0.988890588, -0.13881819, -0.988834679, 0.0327400565, -0.145376131, -0.13921617, 0.144995078, 0.979589343),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(-0.0249017328, 1.48724031, 2.04332173e-06, 0.499998868, 0, -0.866026163, 0, 1, 0, 0.866026163, 0, 0.499998868),i)
			humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.305942208, 0, -0.952050149, 0, 1, 0, 0.952050149, 0, 0.305942208):inverse(),i)
			lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.07653618, 0.305679321, -0.818206966, 0.707105398, -0.707108259, 4.32133675e-07, 0.122787982, 0.122786887, -0.984807909, 0.696365714, 0.696363032, 0.173647687),i)
			rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(0.74788636, 0.363031864, -0.7663396, 0.70710665, 0.707106948, -2.23517418e-08, -0.0616280138, 0.061627958, -0.99619478, -0.704416275, 0.704416037, 0.0871551335),i)
			game:GetService("RunService").RenderStepped:wait()
		end
		canhit = false
		using = false
		cananimate = true
	end
end
mouse.Button1Down:connect(swing)
function hittie(part)

end
Part0.Touched:connect(hittie)
function ragdoll()


end

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20Align%20Method.lua"))()
Align_Hat("Pan2", game.Players.LocalPlayer.Character.Part, 0, -.5, 0, 0, -0, 90)
game:GetService("Workspace").non:WaitForChild("Part").Transparency = 1

--di ent
while true do
	if cananimate then
		if game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
			for i = 0.1,0.3 , 0.008 do
				if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53402293, 0.0594797134, 0.144087285, 0.997264206, 0.0707819909, 0.0213012099, -0.0739177391, 0.9549582, 0.287386209, 2.98023224e-08, -0.28817457, 0.957577825),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54035091, 0.0769848824, -0.170524538, 0.99592495, -0.0847774297, 0.0307573378, 0.090184398, 0.936214805, -0.339659303, 0, 0.341049016, 0.940045416),i)
					game:GetService("RunService").Stepped:wait()
				end
			end
			for i = 0.1,0.3 , 0.008 do
				if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53173375, 0.0903658867, -0.222393572, 0.997264206, 0.0662034005, -0.0328776538, -0.0739177391, 0.893185973, -0.443570435, 2.98023224e-08, 0.444787204, 0.895636141),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54079688, 0.0720610619, 0.156226337, 0.99592495, -0.085669145, -0.0281783342, 0.090184398, 0.946062148, 0.311179608, 0, -0.312452823, 0.949932992),i)
					game:GetService("RunService").Stepped:wait()
				end
			end
		elseif game.Players.LocalPlayer.Character.Torso.Velocity.x > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x < 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < 0.5 then
			for i = 0,1 , 0.1 do
				if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x < 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < 0.5 and cananimate then
					weld.C0 = weld.C0:lerp(CFrame.new(0.0769970417, -1.17027426, -1.17937994, 0, 0, 1, -0.999999881, 0, 0, 0, -1, 0),i)
					headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.962374032, 0, 0.271727562, 0, 1, 0, -0.271727562, 0, 0.962374032),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.955355227, 0, -0.295459419, 0, 1, 0, 0.295459419, 0, 0.955355227),i)
					lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53559077, 0.0383267403, 0, 0.997264206, 0.0739177391, 0, -0.0739177391, 0.997264266, 0, 2.98023224e-08, 1.86264515e-09, 0.999999881),i)
					rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54305458, 0.047129631, 2.98023224e-08, 0.99592495, -0.0901843905, 0, 0.090184398, 0.995925009, 0, 0, 0, 0.999999881),i)
		            game:GetService("RunService").RenderStepped:wait()
				end
	        end
		end
	end
	wait()
end