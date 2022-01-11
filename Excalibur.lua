loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
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
 
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = game.Workspace.non
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
local cam = workspace.CurrentCamera

script.Name = "Oilsauce's Excalibur"
hum:ClearAllChildren()
char.Animate:remove()


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
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
ManualWeld2 = Instance.new("ManualWeld")
Part3 = Instance.new("Part")
ManualWeld4 = Instance.new("ManualWeld")
Part5 = Instance.new("Part")
ManualWeld6 = Instance.new("ManualWeld")
Part7 = Instance.new("Part")
ManualWeld8 = Instance.new("ManualWeld")
Part9 = Instance.new("Part")
ManualWeld10 = Instance.new("ManualWeld")
Part11 = Instance.new("Part")
ManualWeld12 = Instance.new("ManualWeld")
Part13 = Instance.new("Part")
ManualWeld14 = Instance.new("ManualWeld")
Part15 = Instance.new("Part")
CornerWedgePart16 = Instance.new("CornerWedgePart")
ManualWeld17 = Instance.new("ManualWeld")
CornerWedgePart18 = Instance.new("CornerWedgePart")
ManualWeld19 = Instance.new("ManualWeld")
CornerWedgePart20 = Instance.new("CornerWedgePart")
ManualWeld21 = Instance.new("ManualWeld")
CornerWedgePart22 = Instance.new("CornerWedgePart")
ManualWeld23 = Instance.new("ManualWeld")
WedgePart24 = Instance.new("WedgePart")
ManualWeld25 = Instance.new("ManualWeld")
WedgePart26 = Instance.new("WedgePart")
ManualWeld27 = Instance.new("ManualWeld")
WedgePart28 = Instance.new("WedgePart")
ManualWeld29 = Instance.new("ManualWeld")
WedgePart30 = Instance.new("WedgePart")
ManualWeld31 = Instance.new("ManualWeld")
Part32 = Instance.new("Part")
ManualWeld33 = Instance.new("ManualWeld")
Part34 = Instance.new("Part")
ManualWeld35 = Instance.new("ManualWeld")
Model0.Name = "OilStyled-Arthur-Excalibur"
Model0.Parent = mas
Model0.PrimaryPart = Part32
Part1.Parent = Model0
Part1.Material = Enum.Material.Glass
Part1.BrickColor = BrickColor.new("Gold")
Part1.Rotation = Vector3.new(0, 90, 0)
Part1.CanCollide = false
Part1.Locked = true
Part1.Shape = Enum.PartType.Cylinder
Part1.Size = Vector3.new(1.20000005, 0.299999952, 0.299999952)
Part1.CFrame = CFrame.new(-14.0602179, 9.95006561, 0.555490255, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.937255, 0.721569, 0.219608)
Part1.Position = Vector3.new(-14.0602179, 9.95006561, 0.555490255)
Part1.Orientation = Vector3.new(0, 90, 0)
Part1.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld2.Name = "Weld"
ManualWeld2.Parent = Part1
ManualWeld2.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld2.C1 = CFrame.new(-4.24999714, -0.0073223114, 0.00865459442, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld2.Part0 = Part1
ManualWeld2.Part1 = Part15
Part3.Parent = Model0
Part3.Material = Enum.Material.Glass
Part3.BrickColor = BrickColor.new("Gold")
Part3.Rotation = Vector3.new(-180, 0, 90)
Part3.CanCollide = false
Part3.Locked = true
Part3.Shape = Enum.PartType.Cylinder
Part3.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
Part3.CFrame = CFrame.new(-14.0602179, 9.95005989, 1.25548816, 0, -1, 0, -1, 0, 0, 0, 0, -1)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Color = Color3.new(0.937255, 0.721569, 0.219608)
Part3.Position = Vector3.new(-14.0602179, 9.95005989, 1.25548816)
Part3.Orientation = Vector3.new(0, 180, -90)
Part3.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld4.Name = "Weld"
ManualWeld4.Parent = Part3
ManualWeld4.C0 = CFrame.new(0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1)
ManualWeld4.C1 = CFrame.new(-4.94999504, -0.00732803345, 0.00865459442, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld4.Part0 = Part3
ManualWeld4.Part1 = Part15
Part5.Parent = Model0
Part5.Material = Enum.Material.Wood
Part5.BrickColor = BrickColor.new("CGA brown")
Part5.Rotation = Vector3.new(0, 90, 0)
Part5.CanCollide = false
Part5.Locked = true
Part5.Shape = Enum.PartType.Cylinder
Part5.Size = Vector3.new(0.699999928, 0.349999994, 0.349999994)
Part5.CFrame = CFrame.new(-14.0602179, 9.95005989, 0.60549283, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Color = Color3.new(0.666667, 0.333333, 0)
Part5.Position = Vector3.new(-14.0602179, 9.95005989, 0.60549283)
Part5.Orientation = Vector3.new(0, 90, 0)
Part5.Color = Color3.new(0.666667, 0.333333, 0)
ManualWeld6.Name = "Weld"
ManualWeld6.Parent = Part5
ManualWeld6.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld6.C1 = CFrame.new(-4.29999971, -0.00732803345, 0.00865459442, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld6.Part0 = Part5
ManualWeld6.Part1 = Part15
Part7.Parent = Model0
Part7.Material = Enum.Material.Glass
Part7.BrickColor = BrickColor.new("Gold")
Part7.Rotation = Vector3.new(0, 90, 0)
Part7.CanCollide = false
Part7.Locked = true
Part7.Size = Vector3.new(0.199999899, 0.399999976, 2)
Part7.CFrame = CFrame.new(-14.018878, 9.95738792, 0.0554900169, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Color = Color3.new(0.937255, 0.721569, 0.219608)
Part7.Position = Vector3.new(-14.018878, 9.95738792, 0.0554900169)
Part7.Orientation = Vector3.new(0, 90, 0)
Part7.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld8.Name = "Weld"
ManualWeld8.Parent = Part7
ManualWeld8.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld8.C1 = CFrame.new(-3.7499969, 0, 0.0499944687, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld8.Part0 = Part7
ManualWeld8.Part1 = Part15
Part9.Parent = Model0
Part9.Material = Enum.Material.Glass
Part9.BrickColor = BrickColor.new("Lily white")
Part9.Reflectance = 0.10000000149012
Part9.Rotation = Vector3.new(0, 90, 0)
Part9.CanCollide = false
Part9.Locked = true
Part9.Size = Vector3.new(4.69999981, 0.0999999717, 0.100000016)
Part9.CFrame = CFrame.new(-14.1688719, 9.95738411, -2.39450908, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Color = Color3.new(0.929412, 0.917647, 0.917647)
Part9.Position = Vector3.new(-14.1688719, 9.95738411, -2.39450908)
Part9.Orientation = Vector3.new(0, 90, 0)
Part9.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld10.Name = "Weld"
ManualWeld10.Parent = Part9
ManualWeld10.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld10.C1 = CFrame.new(-1.29999781, -3.81469727e-06, -0.0999994278, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld10.Part0 = Part9
ManualWeld10.Part1 = Part15
Part11.Parent = Model0
Part11.Material = Enum.Material.Glass
Part11.BrickColor = BrickColor.new("Lily white")
Part11.Reflectance = 0.10000000149012
Part11.Rotation = Vector3.new(0, 90, 0)
Part11.CanCollide = false
Part11.Locked = true
Part11.Size = Vector3.new(4.69999981, 0.0999999717, 0.100000016)
Part11.CFrame = CFrame.new(-13.9688702, 9.95738602, -2.39450788, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.929412, 0.917647, 0.917647)
Part11.Position = Vector3.new(-13.9688702, 9.95738602, -2.39450788)
Part11.Orientation = Vector3.new(0, 90, 0)
Part11.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld12.Name = "Weld"
ManualWeld12.Parent = Part11
ManualWeld12.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld12.C1 = CFrame.new(-1.299999, -1.90734863e-06, 0.100002289, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld12.Part0 = Part11
ManualWeld12.Part1 = Part15
Part13.Parent = Model0
Part13.Material = Enum.Material.Glass
Part13.BrickColor = BrickColor.new("Lily white")
Part13.Reflectance = 0.10000000149012
Part13.Rotation = Vector3.new(0, 90, 0)
Part13.CanCollide = false
Part13.Locked = true
Part13.Size = Vector3.new(2.5999999, 0.0500000007, 0.100000016)
Part13.CFrame = CFrame.new(-14.0688677, 9.95738602, -1.34450984, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.new(0.929412, 0.917647, 0.917647)
Part13.Position = Vector3.new(-14.0688677, 9.95738602, -1.34450984)
Part13.Orientation = Vector3.new(0, 90, 0)
Part13.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld14.Name = "Weld"
ManualWeld14.Parent = Part13
ManualWeld14.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld14.C1 = CFrame.new(-2.34999704, -1.90734863e-06, 4.76837158e-06, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld14.Part0 = Part13
ManualWeld14.Part1 = Part15
Part15.Parent = Model0
Part15.Material = Enum.Material.Glass
Part15.BrickColor = BrickColor.new("Lily white")
Part15.Reflectance = 0.10000000149012
Part15.Rotation = Vector3.new(0, 90, 0)
Part15.CanCollide = false
Part15.Locked = true
Part15.Size = Vector3.new(2.0999999, 0.100000001, 0.100000016)
Part15.CFrame = CFrame.new(-14.0688725, 9.95738792, -3.69450688, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Color = Color3.new(0.929412, 0.917647, 0.917647)
Part15.Position = Vector3.new(-14.0688725, 9.95738792, -3.69450688)
Part15.Orientation = Vector3.new(0, 90, 0)
Part15.Color = Color3.new(0.929412, 0.917647, 0.917647)
CornerWedgePart16.Parent = Model0
CornerWedgePart16.Material = Enum.Material.Glass
CornerWedgePart16.BrickColor = BrickColor.new("Lily white")
CornerWedgePart16.Reflectance = 0.10000000149012
CornerWedgePart16.Rotation = Vector3.new(-90, -90, 0)
CornerWedgePart16.CanCollide = false
CornerWedgePart16.Locked = true
CornerWedgePart16.Size = Vector3.new(0.0500000007, 0.899999976, 0.150000006)
CornerWedgePart16.CFrame = CFrame.new(-14.1444778, 9.93199825, -5.18227577, 0, 0, -1, 1, 0, 0, 0, -1, 0)
CornerWedgePart16.Color = Color3.new(0.929412, 0.917647, 0.917647)
CornerWedgePart16.Position = Vector3.new(-14.1444778, 9.93199825, -5.18227577)
CornerWedgePart16.Orientation = Vector3.new(0, -90, 90)
CornerWedgePart16.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld17.Name = "Weld"
ManualWeld17.Parent = CornerWedgePart16
ManualWeld17.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
ManualWeld17.C1 = CFrame.new(1.48776889, -0.0253896713, -0.0756053925, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld17.Part0 = CornerWedgePart16
ManualWeld17.Part1 = Part15
CornerWedgePart18.Parent = Model0
CornerWedgePart18.Material = Enum.Material.Glass
CornerWedgePart18.BrickColor = BrickColor.new("Lily white")
CornerWedgePart18.Reflectance = 0.10000000149012
CornerWedgePart18.Rotation = Vector3.new(-90, 90, 0)
CornerWedgePart18.CanCollide = false
CornerWedgePart18.Locked = true
CornerWedgePart18.Size = Vector3.new(0.0500000007, 0.899999976, 0.150000006)
CornerWedgePart18.CFrame = CFrame.new(-13.9944744, 9.98199368, -5.18227577, 0, 0, 1, -1, 0, 0, 0, -1, 0)
CornerWedgePart18.Color = Color3.new(0.929412, 0.917647, 0.917647)
CornerWedgePart18.Position = Vector3.new(-13.9944744, 9.98199368, -5.18227577)
CornerWedgePart18.Orientation = Vector3.new(0, 90, -90)
CornerWedgePart18.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld19.Name = "Weld"
ManualWeld19.Parent = CornerWedgePart18
ManualWeld19.C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0)
ManualWeld19.C1 = CFrame.new(1.48776889, 0.024605751, 0.0743980408, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld19.Part0 = CornerWedgePart18
ManualWeld19.Part1 = Part15
CornerWedgePart20.Parent = Model0
CornerWedgePart20.Material = Enum.Material.Glass
CornerWedgePart20.BrickColor = BrickColor.new("Lily white")
CornerWedgePart20.Reflectance = 0.10000000149012
CornerWedgePart20.Rotation = Vector3.new(-90, 0, 0)
CornerWedgePart20.CanCollide = false
CornerWedgePart20.Locked = true
CornerWedgePart20.Size = Vector3.new(0.150000006, 0.899999976, 0.0500000007)
CornerWedgePart20.CFrame = CFrame.new(-14.1444778, 9.98199844, -5.18227577, 1, 0, 0, 0, 0, 1, 0, -1, 0)
CornerWedgePart20.Color = Color3.new(0.929412, 0.917647, 0.917647)
CornerWedgePart20.Position = Vector3.new(-14.1444778, 9.98199844, -5.18227577)
CornerWedgePart20.Orientation = Vector3.new(-90, 0, 0)
CornerWedgePart20.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld21.Name = "Weld"
ManualWeld21.Parent = CornerWedgePart20
ManualWeld21.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0)
ManualWeld21.C1 = CFrame.new(1.48776889, 0.0246105194, -0.0756053925, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld21.Part0 = CornerWedgePart20
ManualWeld21.Part1 = Part15
CornerWedgePart22.Parent = Model0
CornerWedgePart22.Material = Enum.Material.Glass
CornerWedgePart22.BrickColor = BrickColor.new("Lily white")
CornerWedgePart22.Reflectance = 0.10000000149012
CornerWedgePart22.Rotation = Vector3.new(90, 0, -180)
CornerWedgePart22.CanCollide = false
CornerWedgePart22.Locked = true
CornerWedgePart22.Size = Vector3.new(0.150000006, 0.899999976, 0.0500000007)
CornerWedgePart22.CFrame = CFrame.new(-13.9944782, 9.93199444, -5.18227577, -1, 0, 0, 0, 0, -1, 0, -1, 0)
CornerWedgePart22.Color = Color3.new(0.929412, 0.917647, 0.917647)
CornerWedgePart22.Position = Vector3.new(-13.9944782, 9.93199444, -5.18227577)
CornerWedgePart22.Orientation = Vector3.new(90, 180, 0)
CornerWedgePart22.Color = Color3.new(0.929412, 0.917647, 0.917647)
ManualWeld23.Name = "Weld"
ManualWeld23.Parent = CornerWedgePart22
ManualWeld23.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0)
ManualWeld23.C1 = CFrame.new(1.48776889, -0.025393486, 0.0743942261, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld23.Part0 = CornerWedgePart22
ManualWeld23.Part1 = Part15
WedgePart24.Parent = Model0
WedgePart24.Material = Enum.Material.Glass
WedgePart24.BrickColor = BrickColor.new("Gold")
WedgePart24.Rotation = Vector3.new(-90, 90, 0)
WedgePart24.CanCollide = false
WedgePart24.Locked = true
WedgePart24.Size = Vector3.new(0.399999946, 0.200000018, 0.50000006)
WedgePart24.CFrame = CFrame.new(-14.3113461, 9.95738983, -0.127655029, 0, 0, 1, -1, 0, 0, 0, -1, 0)
WedgePart24.BottomSurface = Enum.SurfaceType.Smooth
WedgePart24.Color = Color3.new(0.937255, 0.721569, 0.219608)
WedgePart24.Position = Vector3.new(-14.3113461, 9.95738983, -0.127655029)
WedgePart24.Orientation = Vector3.new(0, 90, -90)
WedgePart24.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld25.Name = "Weld"
ManualWeld25.Parent = WedgePart24
ManualWeld25.C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0)
ManualWeld25.C1 = CFrame.new(-3.56685185, 1.90734863e-06, -0.242473602, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld25.Part0 = WedgePart24
ManualWeld25.Part1 = Part15
WedgePart26.Parent = Model0
WedgePart26.Material = Enum.Material.Glass
WedgePart26.BrickColor = BrickColor.new("Gold")
WedgePart26.Rotation = Vector3.new(-90, -90, 0)
WedgePart26.CanCollide = false
WedgePart26.Locked = true
WedgePart26.Size = Vector3.new(0.399999946, 0.200000018, 0.50000006)
WedgePart26.CFrame = CFrame.new(-13.8113518, 9.95738792, -0.127655029, 0, 0, -1, 1, 0, 0, 0, -1, 0)
WedgePart26.BottomSurface = Enum.SurfaceType.Smooth
WedgePart26.Color = Color3.new(0.937255, 0.721569, 0.219608)
WedgePart26.Position = Vector3.new(-13.8113518, 9.95738792, -0.127655029)
WedgePart26.Orientation = Vector3.new(0, -90, 90)
WedgePart26.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld27.Name = "Weld"
ManualWeld27.Parent = WedgePart26
ManualWeld27.C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0)
ManualWeld27.C1 = CFrame.new(-3.56685185, 0, 0.257520676, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld27.Part0 = WedgePart26
ManualWeld27.Part1 = Part15
WedgePart28.Parent = Model0
WedgePart28.Material = Enum.Material.Glass
WedgePart28.BrickColor = BrickColor.new("Gold")
WedgePart28.Rotation = Vector3.new(90, 90, 0)
WedgePart28.CanCollide = false
WedgePart28.Locked = true
WedgePart28.Size = Vector3.new(0.399999946, 0.200000018, 0.50000006)
WedgePart28.CFrame = CFrame.new(-13.271347, 9.95738983, 0.252345085, -2.62268316e-07, -8.74227766e-08, 1, 1, -2.29282264e-14, 2.62268316e-07, 0, 1, 8.74227766e-08)
WedgePart28.BottomSurface = Enum.SurfaceType.Smooth
WedgePart28.Color = Color3.new(0.937255, 0.721569, 0.219608)
WedgePart28.Position = Vector3.new(-13.271347, 9.95738983, 0.252345085)
WedgePart28.Orientation = Vector3.new(0, 90, 90)
WedgePart28.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld29.Name = "Weld"
ManualWeld29.Parent = WedgePart28
ManualWeld29.C0 = CFrame.new(0, 0, 0, -2.62268316e-07, 1, 0, -8.74227766e-08, -2.29282264e-14, 1, 1, 2.62268316e-07, 8.74227766e-08)
ManualWeld29.C1 = CFrame.new(-3.94685197, 1.90734863e-06, 0.797525406, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld29.Part0 = WedgePart28
ManualWeld29.Part1 = Part15
WedgePart30.Parent = Model0
WedgePart30.Material = Enum.Material.Glass
WedgePart30.BrickColor = BrickColor.new("Gold")
WedgePart30.Rotation = Vector3.new(90, -90, 0)
WedgePart30.CanCollide = false
WedgePart30.Locked = true
WedgePart30.Size = Vector3.new(0.399999946, 0.200000033, 0.50000006)
WedgePart30.CFrame = CFrame.new(-14.7713461, 9.95738983, 0.252345085, 1.74845553e-07, 8.74227766e-08, -1, -1, 1.52854837e-14, -1.74845553e-07, 0, 1, 8.74227766e-08)
WedgePart30.BottomSurface = Enum.SurfaceType.Smooth
WedgePart30.Color = Color3.new(0.937255, 0.721569, 0.219608)
WedgePart30.Position = Vector3.new(-14.7713461, 9.95738983, 0.252345085)
WedgePart30.Orientation = Vector3.new(0, -90, -90)
WedgePart30.Color = Color3.new(0.937255, 0.721569, 0.219608)
ManualWeld31.Name = "Weld"
ManualWeld31.Parent = WedgePart30
ManualWeld31.C0 = CFrame.new(0, 0, 0, 1.74845553e-07, -1, 0, 8.74227766e-08, 1.52854837e-14, 1, -1, -1.74845553e-07, 8.74227766e-08)
ManualWeld31.C1 = CFrame.new(-3.94685197, 1.90734863e-06, -0.70247364, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld31.Part0 = WedgePart30
ManualWeld31.Part1 = Part15
Part32.Name = "handleP"
Part32.Parent = Model0
Part32.Transparency = 1
Part32.CanCollide = false
Part32.Locked = true
Part32.Size = Vector3.new(1, 1, 1)
Part32.CFrame = CFrame.new(-14.0687914, 9.95006847, 0.769564867, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.Position = Vector3.new(-14.0687914, 9.95006847, 0.769564867)
ManualWeld33.Name = "Weld"
ManualWeld33.Parent = Part32
ManualWeld33.C1 = CFrame.new(-4.46407175, -0.00731945038, 8.10623169e-05, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld33.Part0 = Part32
ManualWeld33.Part1 = Part15
Part34.Name = "bladeP"
Part34.Parent = Model0
--[[Part34.Transparency = 0.7
Part34.BrickColor = BrickColor.new("New Yeller")
Part34.Material = "Neon"]]
Part34.Transparency = 1
Part34.CanCollide = false
Part34.Locked = true
Part34.Size = Vector3.new(0.6, 0.2, 5.55)
Part34.CFrame = CFrame.new(-14.0687914, 9.95006847, -2.98043513, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.Position = Vector3.new(-14.0687914, 9.95006847, -2.98043513)
ManualWeld35.Name = "Weld"
ManualWeld35.Parent = Part34
ManualWeld35.C1 = CFrame.new(-0.714071751, -0.00731945038, 8.10623169e-05, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld35.Part0 = Part34
ManualWeld35.Part1 = Part15
for i,v in pairs(mas:GetChildren()) do
	v.Parent = char
	Excalibur = v
	handleP = Part32
	bladeP = Part34
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

local AT0 = Instance.new("Attachment", bladeP)
AT0.Position = Vector3.new(0, 0, -2.7)

local AT1 = Instance.new("Attachment", bladeP)
AT1.Position = Vector3.new(0, 0, 2.7)

local trial = Instance.new("Trail", bladeP)
trial.Attachment0 = AT0
trial.Attachment1 = AT1
trial.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
trial.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, 0, 0)})
trial.Lifetime = 0.25
trial.LightEmission = 1
trial.Enabled = false

local ws = hum.WalkSpeed
local jp = hum.JumpPower
local nws = ws
local njp = jp

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

-----------------------------------------------------------------------------

local CFn = CFrame.new
local CFa = CFrame.Angles
local Rad = math.rad
local Cos = math.cos
local Sin = math.sin
local sine = 1
local running = false
local Slashing = false
local lSlashing = false
local attackstate = 1
local cut = false
local attacking = false
local shoot = false
local Slamming = false
local LOCKEDON = false

local rarmP = Instance.new("Part", char)
rarmP.Size = Vector3.new(1, 1, 1)
rarmP.CanCollide = false
rarmP.Transparency = 1
rarmP.Locked = true

local rarmPw = Instance.new("Weld", rarmP)
rarmPw.Part0 = rarm
rarmPw.Part1 = rarmP
rarmPw.C1 = CFn(1, 0, 0) * CFa(0, 0, Rad(-90))

local hPw = Instance.new("Weld", handleP)
hPw.Part0 = rarmP
hPw.Part1 = handleP

local hPw0 = hPw.C0
local hPw1 = hPw.C1

local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

-----------------------------------------------------------------------------

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

function GetTorsos(pos,dis)
    local people = workspace:GetChildren()
    local peopletab = {}
    local temp = nil
    local humtor = nil
    local temp2 = nil
    for x = 1, #people do
        temp2 = people[x]
        if temp2.className == "Model" and temp2 ~= char and temp2:FindFirstChildOfClass("Humanoid") then
            temp = temp2:FindFirstChild("Torso") or temp2:FindFirstChild("UpperTorso")
            humtor = temp2:FindFirstChildOfClass("Humanoid")
            if temp ~= nil and humtor ~= nil and humtor.Health > 0 then
                if (temp.Position - pos).magnitude < dis then
                    table.insert(peopletab,temp)
                    dis = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return peopletab
end

function Slash()
    if Slashing == false and attacking == false then
		attacking = true
		Slashing = true
		cut = true
		hum.WalkSpeed = 15
		hum.JumpPower = 5
		if Slashing == true and attacking == true then
    		tdmg = bladeP.Touched:connect(function(hit)
    			if cut == true and Slashing == true and hit.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) and hit.Name ~= "scar" then
    			    if hit.Parent == nil then
    			        return
    			    end
            	    cut = false
            		local cutman = hit.Parent
            		local cutthing = hit
            		local cuthum = cutman:FindFirstChildOfClass("Humanoid")
            		cuthum.Health = cuthum.Health - 0
            		for i = 1,10 do
            			local ranAng = math.random(0, 0)
            			local scar = Instance.new("Part", cutman)
            			scar.Name = "scar"
            			scar.CanCollide = false
            			scar.Anchored = true
            			scar.Material = "Neon"
            			scar.BrickColor = BrickColor.new("New Yeller")
            			scar.Size = Vector3.new(0.1, 0.1, 0.1)
            			local scarm = Instance.new("SpecialMesh", scar)
            			scarm.MeshType = "Sphere"
            			scarm.Scale = Vector3.new(1, 20, 20)
            			scar.CFrame = cutthing.CFrame * CFa(Rad(ranAng), Rad(ranAng), Rad(ranAng))
            			local partprop = {Scale = Vector3.new(150, 10, 10)}
            			local partprop2 = {Transparency = 1}
            			local tween = tweenserv:Create(scarm, tweeninfo, partprop)
            			local tween2 = tweenserv:Create(scar, tweeninfo, partprop2)
            			tween:Play()
            			tween2:Play()
            			game:GetService("Debris"):AddItem(scar, 0.5)
            		end
        	elseif cut == true and Slashing == true and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) and hit.Name ~= "scar" then
        	        if hit.Parent.Parent == nil then
    			        return
    			    end
            	    cut = false
            		local cutman = hit.Parent.Parent
            		local cutthing = hit
            		local cuthum = cutman:FindFirstChildOfClass("Humanoid")
            		cuthum.Health = cuthum.Health - 10
            		for i = 1,10 do
            			local ranAng = math.random(-360, 360)
            			local scar = Instance.new("Part", cutman)
            			scar.Name = "scar"
            			scar.CanCollide = false
            			scar.Anchored = true
            			scar.Material = "Neon"
            			scar.BrickColor = BrickColor.new("New Yeller")
            			scar.Size = Vector3.new(0.1, 0.1, 0.1)
            			local scarm = Instance.new("SpecialMesh", scar)
            			scarm.MeshType = "Sphere"
            			scarm.Scale = Vector3.new(1, 20, 20)
            			scar.CFrame = cutthing.CFrame * CFa(Rad(ranAng), Rad(ranAng), Rad(ranAng))
            			local partprop = {Scale = Vector3.new(150, 10, 10)}
            			local partprop2 = {Transparency = 1}
            			local tween = tweenserv:Create(scarm, tweeninfo, partprop)
            			local tween2 = tweenserv:Create(scar, tweeninfo, partprop2)
            			tween:Play()
            			tween2:Play()
            			game:GetService("Debris"):AddItem(scar, 0.5)
            		end
                end
    		end)
    	end
		if attackstate == 1 then
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1, i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(-10), 0, Rad(-15)), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(-50), Rad(-110), Rad(-120)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
			if not bladeP:FindFirstChild("1,2sounds") then
				local sound12 = Instance.new("Sound", bladeP)
				sound12.SoundId = "rbxassetid://588693156"
				sound12.Volume = 2
				sound12.Name = "1,2sounds"
				sound12:Play()
			else
				local sound12 = bladeP:FindFirstChild("1,2sounds")
				sound12:Play()
			end
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1, i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(10), 0, Rad(25)), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(100), Rad(-20), Rad(10)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(10)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
		    attackstate = 2
		elseif attackstate == 2 then
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1, i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(10), 0, Rad(25)), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(70), Rad(-20), Rad(-110)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(10)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
			if not bladeP:FindFirstChild("1,2sounds") then
				local sound12 = Instance.new("Sound", bladeP)
				sound12.SoundId = "rbxassetid://588693156"
				sound12.Volume = 2
				sound12.Name = "1,2sounds"
				sound12:Play()
			else
				local sound12 = bladeP:FindFirstChild("1,2sounds")
				sound12:Play()
			end
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1 * CFa(0, Rad(-20), 0), i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(-10), 0, Rad(-15)), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(-20), Rad(-10), Rad(-20)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
			attackstate = 3
		elseif attackstate == 3 then
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1 * CFn(-0.3, -0.3, 0) * CFa(0, Rad(10), Rad(-35)), i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(15), 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(45), 0, 0), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(120)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(-120)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-45)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(45)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
			if not bladeP:FindFirstChild("3sounds") then
				local sound3 = Instance.new("Sound", bladeP)
				sound3.SoundId = "rbxassetid://588693922"
				sound3.Volume = 2
				sound3.Name = "3sounds"
				sound3:Play()
			else
				local sound3 = bladeP:FindFirstChild("3sounds")
				sound3:Play()
			end
			for i = 0,1,.15 do
				hPw.C1 = clerp(hPw.C1, hPw1 * CFn(-0.3, -0.3, 0) * CFa(0, Rad(-30), Rad(-35)), i)
				hPw.C0 = clerp(hPw.C0, hPw0, i)
				neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-15)), i)
				rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(-40), 0, 0), i)
				LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(10)), i)
				RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(-10)), i)
				LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(40)), i)
				RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-40)), i)
				neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
				rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
				LS.C0 = clerp(LS.C0, LS0, i)
				RS.C0 = clerp(RS.C0, RS0, i)
				LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
				RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
				swait()
			end
			attackstate = 1
		end
		hum.WalkSpeed = nws
		hum.JumpPower = jp
		cut = false
		tdmg:Disconnect()
		Slashing = false
		attacking = false
	end
end

function longSlash()
	if lSlashing == false and attacking == false then
		attacking = true
		lSlashing = true
		shoot = true
		hum.WalkSpeed = 2
		hum.JumpPower = 5
		for i = 0,1,.15 do
			hPw.C1 = clerp(hPw.C1, hPw1, i)
			hPw.C0 = clerp(hPw.C0, hPw0, i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(20), 0, Rad(-30)), i)
			LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(-50), Rad(-70), Rad(-160)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-20)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(20)), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
			RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
			swait()
		end
		local slashp = Instance.new("Part", char)
		slashp.BrickColor = BrickColor.new("New Yeller")
		slashp.Material = "Neon"
		slashp.CanCollide = false
		slashp.Size = Vector3.new(15, 3, 1)
		slashp.Transparency = 1
		slashp.CFrame = CFn(bladeP.CFrame.p, mou.Hit.p)
		local slashat0 = Instance.new("Attachment", slashp)
		slashat0.Position = Vector3.new(7.5, 0, 0)
		local slashat1 = Instance.new("Attachment", slashp)
		slashat1.Position = Vector3.new(-7.5, 0, 0)
		local slashat2 = Instance.new("Attachment", slashp)
		slashat2.Position = Vector3.new(7.5, -1.5, 0)
		local slashat3 = Instance.new("Attachment", slashp)
		slashat3.Position = Vector3.new(-7.5, -1.5, 0)
		local slashat4 = Instance.new("Attachment", slashp)
		slashat4.Position = Vector3.new(7.5, 1.5, 0)
		local slashat5 = Instance.new("Attachment", slashp)
		slashat5.Position = Vector3.new(-7.5, 1.5, 0)
		local slashpt = Instance.new("Trail", slashp)
		slashpt.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		slashpt.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)})
		slashpt.Lifetime = 0.35
		slashpt.LightEmission = 1
		slashpt.Attachment0 = slashat0
		slashpt.Attachment1 = slashat1
		slashpt.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.6, 0.5, 0), NumberSequenceKeypoint.new(1, 0.5, 0)})
		local slashpt2 = Instance.new("Trail", slashp)
		slashpt2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		slashpt2.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)})
		slashpt2.Lifetime = 0.35
		slashpt2.LightEmission = 1
		slashpt2.Attachment0 = slashat2
		slashpt2.Attachment1 = slashat3
		slashpt2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.6, 0.5, 0), NumberSequenceKeypoint.new(1, 0.5, 0)})
		local slashpt3 = Instance.new("Trail", slashp)
		slashpt3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		slashpt3.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)})
		slashpt3.Lifetime = 0.35
		slashpt3.LightEmission = 1
		slashpt3.Attachment0 = slashat4
		slashpt3.Attachment1 = slashat5
		slashpt3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.6, 0.5, 0), NumberSequenceKeypoint.new(1, 0.5, 0)})
		local slashbv = Instance.new("BodyVelocity", slashp)
		slashbv.Velocity = mou.Hit.lookVector * 180
		slashbv.MaxForce = Vector3.new(100000000000, 100000000000, 100000000000)
		game:GetService("Debris"):AddItem(slashp, 15)
		slashp.Touched:connect(function(hit)
			if shoot == true and hit.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) then
				shoot = false
				slashp:Destroy()
				local shootman = hit.Parent
				local shoottor = shootman:FindFirstChild("Torso") or shootman:FindFirstChild("UpperTorso")
				local shoothum = shootman:FindFirstChildOfClass("Humanoid")
				shoothum.Health = shoothum.Health - 0
				local ranPit = math.random(0.9, 1.4)
				if not shoottor:FindFirstChild("XDthxforthesoundtho") then
					local boom = Instance.new("Sound", shoottor)
					boom.SoundId = "rbxassetid://588734356"
					boom.Volume = 3
					boom.Pitch = ranPit
					boom.Name = "XDthxforthesoundtho"
					boom:Play()
				else
					local boom = shoottor:FindFirstChild("XDthxforthesoundtho")
					boom.Pitch = ranPit
					boom:Play()
				end
				for i = 1,15 do
					local ranAng2 = math.random(-360, 360)
					local scar2 = Instance.new("Part", char)
					scar2.Name = "scar"
					scar2.CanCollide = false
					scar2.Anchored = true
					scar2.Material = "Neon"
					scar2.BrickColor = BrickColor.new("New Yeller")
					scar2.Size = Vector3.new(0.1, 0.1, 0.1)
					local scarm2 = Instance.new("SpecialMesh", scar2)
					scarm2.MeshType = "Sphere"
					scarm2.Scale = Vector3.new(800, 1, 1)
					scar2.CFrame = shoottor.CFrame * CFa(Rad(ranAng2), Rad(ranAng2), Rad(ranAng2))
					local partprop3 = {Scale = Vector3.new(600, 40, 40)}
					local partprop4 = {Transparency = 1}
					local tween3 = tweenserv:Create(scarm2, tweeninfo, partprop3)
					local tween4 = tweenserv:Create(scar2, tweeninfo, partprop4)
					tween3:Play()
					tween4:Play()
					game:GetService("Debris"):AddItem(scar2, 0.5)
					local cutSparkle = Instance.new("Part", char)
					cutSparkle.Name = "cutSparkle2244"
					cutSparkle.CanCollide = false
					cutSparkle.Anchored = true
					cutSparkle.Material = "Neon"
					cutSparkle.BrickColor  = BrickColor.new("New Yeller")
					cutSparkle.Size = Vector3.new(10, 10, 10)
					cutSparkle.CFrame = shoottor.CFrame
					local ranPos = math.random(-30, 30)
					local ranPos2 = math.random(-30, 30)
					local ranPos3 = math.random(-30, 30)
					local partprop5 = {CFrame = shoottor.CFrame * CFn(ranPos, ranPos2, ranPos3) * CFa(ranAng2, ranAng2, ranAng2); Size = Vector3.new(0.1, 0.1, 0.1)}
					local tween5 = tweenserv:Create(cutSparkle, tweeninfo, partprop5)
					tween5:Play()
					game:GetService("Debris"):AddItem(cutSparkle, 0.5)
				end
			elseif shoot == true and hit.Parent.Parent:FindFirstChildOfClass("Humanoid") and not hit:IsDescendantOf(char) then
				shoot = false
				slashp:Destroy()
				local shootman = hit.Parent.Parent
				local shoottor = shootman:FindFirstChild("Torso") or shootman:FindFirstChild("UpperTorso")
				local shoothum = shootman:FindFirstChildOfClass("Humanoid")
				shoothum.Health = shoothum.Health - 0
				local ranPit = math.random(0.9, 1.4)
				if not shoottor:FindFirstChild("XDthxforthesoundtho") then
					local boom = Instance.new("Sound", shoottor)
					boom.SoundId = "rbxassetid://588734356"
					boom.Volume = 3
					boom.Pitch = ranPit
					boom.Name = "XDthxforthesoundtho"
					boom:Play()
				else
					local boom = shoottor:FindFirstChild("XDthxforthesoundtho")
					boom.Pitch = ranPit
					boom:Play()
				end
				for i = 1,15 do
					local ranAng2 = math.random(-360, 360)
					local scar2 = Instance.new("Part", char)
					scar2.Name = "scar"
					scar2.CanCollide = false
					scar2.Anchored = true
					scar2.Material = "Neon"
					scar2.BrickColor = BrickColor.new("New Yeller")
					scar2.Size = Vector3.new(0.1, 0.1, 0.1)
					local scarm2 = Instance.new("SpecialMesh", scar2)
					scarm2.MeshType = "Sphere"
					scarm2.Scale = Vector3.new(800, 1, 1)
					scar2.CFrame = shoottor.CFrame * CFa(Rad(ranAng2), Rad(ranAng2), Rad(ranAng2))
					local partprop3 = {Scale = Vector3.new(600, 40, 40)}
					local partprop4 = {Transparency = 1}
					local tween3 = tweenserv:Create(scarm2, tweeninfo, partprop3)
					local tween4 = tweenserv:Create(scar2, tweeninfo, partprop4)
					tween3:Play()
					tween4:Play()
					game:GetService("Debris"):AddItem(scar2, 0.5)
					local cutSparkle = Instance.new("Part", char)
					cutSparkle.Name = "cutSparkle2244"
					cutSparkle.CanCollide = false
					cutSparkle.Anchored = true
					cutSparkle.Material = "Neon"
					cutSparkle.BrickColor  = BrickColor.new("New Yeller")
					cutSparkle.Size = Vector3.new(10, 10, 10)
					cutSparkle.CFrame = shoottor.CFrame
					local ranPos = math.random(-30, 30)
					local ranPos2 = math.random(-30, 30)
					local ranPos3 = math.random(-30, 30)
					local partprop5 = {CFrame = shoottor.CFrame * CFn(ranPos, ranPos2, ranPos3) * CFa(ranAng2, ranAng2, ranAng2); Size = Vector3.new(0.1, 0.1, 0.1)}
					local tween5 = tweenserv:Create(cutSparkle, tweeninfo, partprop5)
					tween5:Play()
					game:GetService("Debris"):AddItem(cutSparkle, 0.5)
				end
			end
		end)
		for i = 0,1,.15 do
			hPw.C1 = clerp(hPw.C1, hPw1, i)
			hPw.C0 = clerp(hPw.C0, hPw0, i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5), 0, Rad(-15)), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(-10), 0, Rad(50)), i)
			LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(30), 0, Rad(-30)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.4, 0.2) * CFa(Rad(60), Rad(-20), Rad(10)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(10)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-10)), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
			RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
			swait()
		end
		hum.WalkSpeed = nws
		hum.JumpPower = jp
		lSlashing = false
		attacking = false
	end
end

function SwordSlam()
	if Slamming == false and attacking == false then
		attacking = true
		Slamming = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		for i = 0,1,.1 do
			hPw.C1 = clerp(hPw.C1, hPw1 * CFn(-0.3, -0.3, 0) * CFa(0, Rad(-150), Rad(-35)), i)
			hPw.C0 = clerp(hPw.C0, hPw0, i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(15), 0, Rad(-15)), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1) * CFa(Rad(45), 0, 0), i)
			LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(130)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(-130)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(-45)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1, -0.1, 0) * CFa(Rad(5), 0, Rad(45)), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
			RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
			swait()
		end
		if not bladeP:FindFirstChild("SLAMMM") then
			local SPAM = Instance.new("Sound", bladeP)
			SPAM.SoundId = "rbxassetid://1548538202"
			SPAM.Name = "SLAMMM"
			SPAM.Volume = 4
			SPAM:Play()
		else
			local SPAM = bladeP:FindFirstChild("SLAMMM")
			SPAM:Play()
		end
		for i = 1,30 do
			local ranAng3 = math.random(-360, 360)
			local ranAng4 = math.random(-360, 360)
			local ranPos4 = math.random(-80, 80)
			local ranPos5 = math.random(-80, 80)
			local ranPos6 = math.random(-80, 80)
			local ranPos7 = math.random(-80, 80)
			local ranPos8 = math.random(-80, 80)
			local ranPos9 = math.random(-80, 80)
			local FIRE = Instance.new("Part", char)
			FIRE.Material = "Neon"
			FIRE.BrickColor = BrickColor.new("New Yeller")
			FIRE.CanCollide = false
			FIRE.Size = Vector3.new(30, 30, 30)
			FIRE.Anchored = true
			FIRE.CFrame = bladeP.CFrame
			local FIRE2 = Instance.new("Part", char)
			FIRE2.Material = "Neon"
			FIRE2.BrickColor = BrickColor.new("New Yeller")
			FIRE2.CanCollide = false
			FIRE2.Anchored = true
			FIRE2.CFrame = bladeP.CFrame
			local FIREM = Instance.new("SpecialMesh", FIRE2)
			FIREM.MeshType = "Sphere"
			FIREM.Scale = Vector3.new(3, 1, 1)
			local tweeninfo2 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
			local partprop6 = {CFrame = bladeP.CFrame * CFn(ranPos4, ranPos5, ranPos6) * CFa(ranAng3, ranAng3, ranAng3); Size = Vector3.new(0.1, 0.1, 0.1)}
			local partprop7 = {CFrame = bladeP.CFrame * CFn(ranPos7, ranPos8, ranPos9) * CFa(ranAng4, ranAng4, ranAng4); Transparency = 1}
			local partprop8 = {Scale = Vector3.new(15, 5, 5)}
			local tween6 = tweenserv:Create(FIRE, tweeninfo2, partprop6)
			local tween7 = tweenserv:Create(FIRE2, tweeninfo2, partprop7)
			local tween8 = tweenserv:Create(FIREM, tweeninfo2, partprop8)
			tween6:Play()
			tween7:Play()
			tween8:Play()
			game:GetService("Debris"):AddItem(FIRE, 1)
			game:GetService("Debris"):AddItem(FIRE2, 1)
		end
		for i,v in pairs(GetTorsos(bladeP.Position, 35)) do
			if v.Parent:FindFirstChildOfClass("Humanoid") then
				v.Parent:FindFirstChildOfClass("Humanoid").Health = v.Parent:FindFirstChildOfClass("Humanoid").Health - 0
			end
		end
		for i = 0,1,.1 do
			hPw.C1 = clerp(hPw.C1, hPw1 * CFn(-0.3, -0.3, 0) * CFa(0, Rad(-150), Rad(-35)), i)
			hPw.C0 = clerp(hPw.C0, hPw0, i)
			neck.C1 = clerp(neck.C1, neck1 * CFa(0, 0, Rad(-15)), i)
			rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 1, 0.1) * CFa(Rad(-40), 0, 0), i)
			LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(90)), i)
			RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(-90)), i)
			LH.C1 = clerp(LH.C1, LH1 * CFn(0.1, -0.5, 0) * CFa(Rad(5), 0, Rad(-40)), i)
			RH.C1 = clerp(RH.C1, RH1 * CFn(-0.5, -0.5, 0) * CFa(Rad(5), 0, Rad(-40)), i)
			neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), i)
			rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), i)
			LS.C0 = clerp(LS.C0, LS0, i)
			RS.C0 = clerp(RS.C0, RS0, i)
			LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), i)
			RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), i)
			swait()
		end
		hum.WalkSpeed = nws
		hum.JumpPower = jp
		Slamming = false
		attacking = false
	end
end

function LockChar()
	if mou.Target ~= nil and mou.Target.Parent:FindFirstChildOfClass("Humanoid") then
		LOCKEDON = true
		lockman = mou.Target.Parent
		lockhead = lockman:FindFirstChild("Head")
		locktor = lockman:FindFirstChild("Torso") or lockman:FindFirstChild("UpperTorso")
		lockhum = lockman:FindFirstChildOfClass("Humanoid")
	elseif mou.Target ~= nil and mou.Target.Parent.Parent:FindFirstChildOfClass("Humanoid") then
		LOCKEDON = true
		lockman = mou.Target.Parent.Parent
		lockhead = lockman:FindFirstChild("Head")
		locktor = lockman:FindFirstChild("Torso") or lockman:FindFirstChild("UpperTorso")
		lockhum = lockman:FindFirstChildOfClass("Humanoid")
	elseif mou.Target ~= nil and not mou.Target.Parent:FindFirstChildOfClass("Humanoid") and LOCKEDON == true then
		LOCKEDON = false
		lockman = nil
		lockhead = nil
		locktor = nil
		lockhum = nil
	elseif mou.Target ~= nil and not mou.Target.Parent.Parent:FindFirstChildOfClass("Humanoid") and LOCKEDON == true then
		LOCKEDON = false
		lockman = nil
		lockhead = nil
		locktor = nil
		lockhum = nil
	end
end

-----------------------------------------------------------------------------

function kdown(k)
	if string.byte(k) == 50 and running == false then
		running = true
		nws = ws + 11
		hum.WalkSpeed = nws
	elseif string.byte(k) == 50 and running == true then
		running = false
		nws = ws
		hum.WalkSpeed = nws
	elseif k == "r" then
		longSlash()
	elseif k == "f" then
		SwordSlam()
	elseif k == "q" then
		LockChar()
	end
end

function lmdown()
	Slash()
end

mou.KeyDown:connect(kdown)
mou.Button1Down:connect(lmdown)

-----------------------------------------------------------------------------

warn([[
	
	
	oilsauce's Excalibur.
	last updated: 2018/5/27, 12:56 JST.
	
	this was already logged so here
	]])

-----------------------------------------------------------------------------

while true do
	swait()
	sine = sine + 1
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local campos = head.CFrame.p + Vector3.new(0, 10, 0)
	if Slashing == true then
		state = "Slash"
		trial.Enabled = true
	elseif lSlashing == true then
		state = "LongSlash"
		trial.Enabled = true
	elseif Slamming == true then
		state = "Slam"
		trial.Enabled = true
	elseif 1 < root.Velocity.y then
		state = "Jump"
		trial.Enabled = false
	elseif -1 > root.Velocity.y then
		state = "Fall"
		trial.Enabled = false
	elseif torvel < 1 then
		state = "Idle"
		trial.Enabled = false
	elseif tor.Velocity.magnitude < 50 and running == true then
		state = "Run"
		trial.Enabled = true
	elseif tor.Velocity.magnitude < 50 and running == false then
		state = "Walk"
		trial.Enabled = false
	end
	
	if LOCKEDON == true then
	    root.CFrame = CFn(root.CFrame.p, Vector3.new(locktor.CFrame.x, root.CFrame.y, locktor.CFrame.z))
	    cam.CoordinateFrame = clerp(cam.CoordinateFrame, CFn(campos, locktor.CFrame.p), 0.15)
	end
	
	if state == "Jump" then
		hPw.C1 = clerp(hPw.C1, hPw1 * CFn(0, -0.4, 0) * CFa(Rad(75), Rad(25), Rad(-90)), 0.15)
		hPw.C0 = clerp(hPw.C0, hPw0, 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-20), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1, 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(10), 0, Rad(-10)), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, Rad(-65)), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.7, -1.3, -0.2) * CFa(Rad(-10), 0, Rad(-50)), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.5, -1.1, 0) * CFa(Rad(-5), 0, Rad(40)), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	elseif state == "Fall" then
		hPw.C1 = clerp(hPw.C1, hPw1 * CFn(0, -0.4, 0) * CFa(Rad(60), Rad(25), Rad(-90)), 0.15)
		hPw.C0 = clerp(hPw.C0, hPw0, 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(10), 0, 0), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(Rad(20), 0, Rad(-10)), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, Rad(-50)), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.4, -0.7, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.2, -0.5, -0.1) * CFa(Rad(-2), 0, 0), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(20)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(-20)), 0.15)
	elseif state == "Idle" then
		hPw.C1 = clerp(hPw.C1, hPw1 * CFn(-0.3, -0.3, 0) * CFa(0, Rad(10), Rad(-35)), 0.15)
		hPw.C0 = clerp(hPw.C0, hPw0, 0.15)
		neck.C1 = clerp(neck.C1, neck1 * CFa(Rad(5 * Cos(sine / 20)), 0, Rad(-15)), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFn(0, 0, 0.1 * Cos(sine / 15)) * CFa(Rad(-5 * Cos(sine / 15)), 0, Rad(15)), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(55)), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.2, 0.2) * CFa(Rad(-30), 0, Rad(-55)), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.1 * Cos(sine / 15), -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(-10), Rad(5 * Cos(sine / 15))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(-0.1 * Cos(sine / 15), -0.1 * Cos(sine / 15), 0) * CFa(Rad(5), Rad(-15), Rad(-5 * Cos(sine / 15))), 0.15)
		neck.C0 = clerp(neck.C0, neck0 * CFa(Rad(5), 0, 0), 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(5), 0, 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFa(0, 0, Rad(5)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFa(0, 0, Rad(5)), 0.15)
	elseif state == "Run" then
		hPw.C1 = clerp(hPw.C1, hPw1 * CFn(0, 0, -0.3) * CFa(0, Rad(-85), 0), 0.15)
		hPw.C0 = clerp(hPw.C0, hPw0, 0.15)
		neck.C1 = clerp(neck.C1, neck1 *  CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-5 * Cos(sine / 1.5)), 0, Rad(5 * Cos(sine / 3))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFn(-0.2 * Cos(sine / 3), -0.1 * Cos(sine / 6), 0) * CFa(Rad(10), 0, Rad(-110 * Cos(sine / 3))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFn(0, 0.3, -0.1 * Cos(sine / 6)) * CFa(Rad(90), 0, 0), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFn(0.4 * Cos(sine / 3), -0.4 * Cos(sine / 3), 0) * CFa(0, 0, Rad(120 * Cos(sine / 3))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFn(0.4 * Cos(sine / 3), 0.4 * Cos(sine / 3), 0) * CFa(0, 0, Rad(120 * Cos(sine / 3))), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0 * CFa(Rad(15), 0, 0), 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0 * CFn(0, -0.2, 0), 0.15)
		LH.C0 = clerp(LH.C0, LH0 * CFn(-0.3, 0, 0) * CFa(0, 0, Rad(15)), 0.15)
		RH.C0 = clerp(RH.C0, RH0 * CFn(0.3, 0, 0) * CFa(0, 0, Rad(-15)), 0.15)
	elseif state == "Walk" then
		hPw.C1 = clerp(hPw.C1, hPw1 * CFn(0, -0.4, 0) * CFa(Rad(75), Rad(25), Rad(-90)), 0.15)
		hPw.C0 = clerp(hPw.C0, hPw0, 0.15)
		neck.C1 = clerp(neck.C1, neck1 *  CFa(Rad(-5), 0, 0), 0.15)
		rootj.C1 = clerp(rootj.C1, rootj1 * CFa(Rad(-5), 0, Rad(5 * Cos(sine / 6))), 0.15)
		LS.C1 = clerp(LS.C1, LS1 * CFa(0, 0, Rad(-25 * Cos(sine / 6))), 0.15)
		RS.C1 = clerp(RS.C1, RS1 * CFa(Rad(10), 0, Rad(-65)), 0.15)
		LH.C1 = clerp(LH.C1, LH1 * CFa(0, 0, Rad(50 * Cos(sine / 6))), 0.15)
		RH.C1 = clerp(RH.C1, RH1 * CFa(0, 0, Rad(50 * Cos(sine / 6))), 0.15)
		neck.C0 = clerp(neck.C0, neck0, 0.15)
		rootj.C0 = clerp(rootj.C0, rootj0, 0.15)
		LS.C0 = clerp(LS.C0, LS0, 0.15)
		RS.C0 = clerp(RS.C0, RS0, 0.15)
		LH.C0 = clerp(LH.C0, LH0, 0.15)
		RH.C0 = clerp(RH.C0, RH0, 0.15)
	end
end
