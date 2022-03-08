
-- nebula's ezconvert
--[[
PUT YOUR SCRIPTS BELOW HERE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV	
]]
--[[
		Thanks for using Build-To-Lua by jarredbcv.
                Thanks to Cri_SB [Cri] for some sounds in the script
                Script by 123jl123
                Enjoy and don't leak
]]--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["Type-9000 Minigun"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = chr["Right Arm"] -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(0),math.rad(90),0) -- Offset & Angles
print("Ran with no errors")
print("Thanks to Cri_SB [Cri] for some sounds in the script.")
print("Script made by 123jl123.")
print("If you logged this, please don't leak it. I worked hard on creating this script, seeing others use it without my permission/not given from me will anger me.")
print("Thanks for reading this, enjoy using the script!")



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local LoPa = game:GetService("Players").LocalPlayer
local C = LoPa.Character
	
LaserMinigun = New("Model",C,"LaserMinigun",{})
Gunpart = New("Model",LaserMinigun,"Gunpart",{})
FrontHandle = New("Part",Gunpart,"FrontHandle",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.334096551, 0.668193102, 0.334096551),CFrame = CFrame.new(30.8316956, 0.787470937, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",FrontHandle,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(31.0544128, 0.787470937, -52.0672684, 0, 1, -9.58144665e-06, -3.50177879e-06, 9.58144665e-06, 1, 1, -7.96212211e-19, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(31.0544128, 0.787470937, -52.5127258, 1.30714124e-17, 1, -9.58144665e-06, -3.50178084e-06, 9.58144665e-06, 1, 1, 1.19431811e-18, 3.50177652e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(31.0544128, 1.01019299, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(31.0544128, 0.564739823, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.222731024, 0.445462048),CFrame = CFrame.new(31.2771492, 0.787470937, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.556827545, 0.111365512, 0.556827545),CFrame = CFrame.new(31.2771492, 0.787470937, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(31.4998779, 0.787470937, -52.0672684, 0, 1, -9.58144665e-06, -3.50177879e-06, 9.58144665e-06, 1, 1, -7.96212211e-19, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(31.4998779, 0.787470937, -52.5127258, 1.30714124e-17, 1, -9.58144665e-06, -3.50178084e-06, 9.58144665e-06, 1, 1, 1.19431811e-18, 3.50177652e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(31.4998779, 1.01019299, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
FrontPart = New("Part",Gunpart,"FrontPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(31.4998779, 0.564739823, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",FrontPart,"Mesh",{})
gun4 = New("Part",Gunpart,"gun4",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.111365512, 0.111365512, 0.111365512),CFrame = CFrame.new(31.5666943, 0.787470937, -52.5127258, 1.30714124e-17, 1, -9.58144665e-06, -3.50178084e-06, 9.58144665e-06, 1, 1, 1.19431811e-18, 3.50177652e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("CylinderMesh",gun4,"Mesh",{})
gun1 = New("Part",Gunpart,"gun1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.111365512, 0.111365512, 0.111365512),CFrame = CFrame.new(31.5666943, 0.564739823, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("CylinderMesh",gun1,"Mesh",{})
gun3 = New("Part",Gunpart,"gun3",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.111365512, 0.111365512, 0.111365512),CFrame = CFrame.new(31.5666943, 1.01019299, -52.2899971, 0, 1, 0, 1, 0, 0, 0, 0, -1),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("CylinderMesh",gun3,"Mesh",{})
gun2 = New("Part",Gunpart,"gun2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.111365512, 0.111365512, 0.111365512),CFrame = CFrame.new(31.5666943, 0.787470937, -52.0672684, 0, 1, -9.58144665e-06, -3.50177879e-06, 9.58144665e-06, 1, 1, -7.96212211e-19, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("CylinderMesh",gun2,"Mesh",{})
PowerHolder = New("Model",LaserMinigun,"PowerHolder",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.11365509, 0.222731024, 1.11365509),CFrame = CFrame.new(27.7135086, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Model = New("Model",Part,"Model",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(27.7135086, 0.787473083, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(27.7135086, 0.787473083, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(27.7135086, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(27.7135086, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(27.7135086, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(27.7135086, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.9362354, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.9362354, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.9362354, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.9362354, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.4907799, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.4907799, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.4907799, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(27.4907799, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.11365509, 0.222731024, 1.11365509),CFrame = CFrame.new(29.4953289, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Model = New("Model",Part,"Model",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(29.4953289, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.2726021, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(29.4953289, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.7180557, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(29.4953289, 0.787473083, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.7180557, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.2726021, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(29.4953289, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.7180557, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(29.4953289, 0.787473083, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.445462048, 0.445462048),CFrame = CFrame.new(29.4953289, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.7180557, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.2726021, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",Model,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.222731024, 0.222731024),CFrame = CFrame.new(29.2726021, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.890924096, 0.222731024, 0.890924096),CFrame = CFrame.new(29.7180557, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(28.1589584, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(28.1589584, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(28.1589584, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(28.1589584, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(29.0498734, 0.564742088, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(29.0498734, 1.01020408, -52.7354622, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(29.0498734, 0.564742088, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.222731024, 0.111365512),CFrame = CFrame.new(29.0498734, 1.01020408, -51.8445435, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.890924096, 0.111365512, 0.890924096),CFrame = CFrame.new(29.9407845, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.890924096, 0.111365512, 0.890924096),CFrame = CFrame.new(30.1635113, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.890924096, 0.111365512, 0.890924096),CFrame = CFrame.new(30.38624, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.668193102, 0.445462048),CFrame = CFrame.new(30.1635113, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(30.6089668, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(29.0498734, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.11365509, 1.11365509, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1.00000644, 0.707109809, 0.70710659, 0, 0.707112432, -0.707108617, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.11365509, 2.00457907, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787482023, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Neon = New("Part",PowerHolder,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.957743406, 0.957743406, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1, 0.500002861, 0.866023839, 0, 0.866023839, -0.500002861, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Neon = New("Part",PowerHolder,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.957743406, 0.957743406, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1, 0.86602217, 0.500005305, 0, 0.500005305, -0.86602217, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Neon = New("Part",PowerHolder,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.957743406, 0.957743406, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1, 0.965924263, 0.258825034, 0, 0.258825064, -0.965924263, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Neon = New("Part",PowerHolder,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.957743406, 0.957743406, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1, 0.25882262, 0.965924919, 0, 0.965924919, -0.25882262, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.11365509, 1.11365509, 0.445462048),CFrame = CFrame.new(28.6044273, 0.787477553, -52.2899971, 0, 0, -1.00000024, 0, 1, 0, 1.00000024, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.3363862, 0.222731024, 1.3363862),CFrame = CFrame.new(28.8271465, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.3363862, 0.222731024, 1.3363862),CFrame = CFrame.new(28.381691, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.668193102, 0.222731024, 0.668193102),CFrame = CFrame.new(28.1589584, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.668193102, 0.222731024),CFrame = CFrame.new(26.9784832, 0.787473083, -52.2899971, -5.52762662e-11, 1.00582838e-05, 1.00000024, -3.50170376e-06, -1.00000024, 1.00582838e-05, 1, -3.50170421e-06, 9.06084097e-11),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.512281358, 0.111365512),CFrame = CFrame.new(26.7446499, 1.07702565, -52.2899971, -2.95597852e-11, 1, -9.58144665e-06, -3.50171308e-06, 9.58144665e-06, 1, 1, 6.30961949e-11, 3.50171308e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(26.7111912, 0.787473083, -52.2899971, -5.53331096e-11, -0.258809268, 0.965928495, -3.50170376e-06, -0.965928495, -0.258809268, 1, -3.38240966e-06, -9.06219896e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.668193102, 0.111365512),CFrame = CFrame.new(26.6666946, 0.475645214, -52.2899971, -2.95597852e-11, 1, -9.58144665e-06, -3.50171308e-06, 9.58144665e-06, 1, 1, 6.30961949e-11, 3.50171308e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.579100668, 0.111365512),CFrame = CFrame.new(26.4769592, 0.766716778, -52.2899971, -5.52867474e-11, -0.258809447, 0.96592921, -3.50170421e-06, -0.96592921, -0.258809447, 1, -3.38241125e-06, -9.06220293e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.289550334, 0.111365512),CFrame = CFrame.new(26.8782501, 0.787470937, -52.2899971, -5.69528105e-11, -1, 1.04902101e-05, -3.50170967e-06, -1.04902101e-05, -1, 1, -9.36864822e-11, -3.50170967e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(29.4953289, 1.41111994, -52.7354622, -5.50513524e-11, 0.258828878, 0.965923965, -3.50170421e-06, -0.965923965, 0.258828878, 1, -3.38236441e-06, 9.06395599e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(29.4953289, 1.41111994, -51.8445435, -5.50513524e-11, 0.258828878, 0.965923965, -3.50170421e-06, -0.965923965, 0.258828878, 1, -3.38236441e-06, 9.06395599e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.178184807, 0.890924096, 0.178184807),CFrame = CFrame.new(29.4285202, 1.67839265, -52.2899971, 0.258829474, -8.57335749e-07, 0.96592164, -0.965925694, 6.97467476e-06, 0.258828104, -7.9870224e-06, -0.999998629, 8.24248048e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.445462048, 0.111365512),CFrame = CFrame.new(29.4285202, 1.67839265, -51.9559135, 0.258829474, -8.57335749e-07, 0.96592164, -0.965925694, 6.97467476e-06, 0.258828104, -7.9870224e-06, -0.999998629, 8.24248048e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.445462048, 0.111365512),CFrame = CFrame.new(29.4285202, 1.67839265, -52.6240959, 0.258829474, -8.57335749e-07, 0.96592164, -0.965925694, 6.97467476e-06, 0.258828104, -7.9870224e-06, -0.999998629, 8.24248048e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.222731024, 0.779558599, 0.222731024),CFrame = CFrame.new(29.4285202, 1.67839491, -52.2900124, 0.258829474, -8.57335749e-07, 0.96592164, -0.965925694, 6.97467476e-06, 0.258828104, -7.9870224e-06, -0.999998629, 8.24248048e-07),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(27.4907551, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(27.2680531, 0.564739823, -52.5127258, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(27.2680531, 1.01020193, -52.5127258, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(27.2680531, 1.01020193, -52.0672684, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.111365512, 0.668193102, 0.111365512),CFrame = CFrame.new(27.2680531, 0.564739823, -52.0672684, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.133638605, 0.445462048, 0.133638605),CFrame = CFrame.new(27.2680531, 0.564739823, -52.5127258, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.133638605, 0.445462048, 0.133638605),CFrame = CFrame.new(27.2680531, 1.01020193, -52.5127258, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.133638605, 0.445462048, 0.133638605),CFrame = CFrame.new(27.2680531, 1.01020193, -52.0672684, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.133638605, 0.445462048, 0.133638605),CFrame = CFrame.new(27.2680531, 0.564739823, -52.0672684, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.890924096, 0.111365512, 0.890924096),CFrame = CFrame.new(27.0452919, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Part = New("Part",PowerHolder,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.445462048, 0.222731024, 0.445462048),CFrame = CFrame.new(27.0452919, 0.787473083, -52.2899971, -8.0732131e-12, 1, -9.58144665e-06, -3.50177834e-06, 9.58144665e-06, 1, 1, 4.13820089e-11, 3.50177834e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("CylinderMesh",Part,"Mesh",{})











Handle = New("Part",LaserMinigun,"Handle",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1.22300005, 4.51200008, 1.11099994),CFrame = CFrame.new(28.6618481, 0.8217237, -52.2899971, -2.95597852e-11, 1, -9.58144665e-06, -3.50171308e-06, 9.58144665e-06, 1, 1, 6.30961949e-11, 3.50171308e-06),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})












MiniDroid = New("Model",C,"MiniDroid",{})
armor = New("Model",MiniDroid,"armor",{})
Main = New("Model",armor,"Main",{})
Part = New("Part",Main,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.800000012, 0.800000012),CFrame = CFrame.new(30.9500008, 1.7000351, -103.050003, 0, 0, 1, -1, 0, 0, 0, -1, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})

Part = New("Part",armor,"Part",{BrickColor = BrickColor.new("black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.899999976, 0.699999988, 0.899999976),CFrame = CFrame.new(30.9499989, 1.80003405, -103.050003, 0, 0, 1, 0, -1.00000024, 0, 1.00000024, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{})
Part = New("Part",armor,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 0.50999999, 1),CFrame = CFrame.new(30.9499989, 1.90003407, -103.050003, 0, 0, 1, 0, -1.00000024, 0, 1.00000024, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{})
Part = New("Part",armor,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1, 0.5, 1),CFrame = CFrame.new(30.9499989, 1.70003402, -103.050003, 0, 0, 1, 0, -1.00000024, 0, 1.00000024, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{})
Neon = New("Model",MiniDroid,"Neon",{})
LaPart = New("Part",Neon,"LaPart",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.100000001, 0.949999988, 0.949999988),CFrame = CFrame.new(30.9500008, 1.80000031, -103.050003, 0, 0, 1, -1, 0, 0, 0, -1, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
FirePart = New("Part",Neon,"FirePart",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Transparency = 0.5,Shape = Enum.PartType.Ball,Size = Vector3.new(0.5, 0.5, 0.5),CFrame = CFrame.new(30.9499989, 1.65004444, -103.050003, 0, 0, 1, 0, -1.00000024, 0, 1.00000024, 0, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
miniHandle = New("Part",MiniDroid,"Handle",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(30.9500008, 1.80504608, -103.050003, 0, 0, 1, -1, 0, 0, 0, -1, 0),Anchored = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hat = chr["AssistantDroneAccessory"].Handle
hat:BreakJoints()
local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
-- Tips for past John (Tescalus)

Weld.Part1 = hat -- (Hat)
Weld.Part0 = miniHandle -- What your welding the hat to (has to be a BasePart)

Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-180),math.rad(0),-4.7) -- Offset & Angles




Glow1 = Color3.new(1,0,0)
Glow2 = Color3.new(0,0,0)

GlowParticle = Instance.new("ParticleEmitter",FirePart)
GlowParticle.LightEmission = 1
GlowParticle.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle.Size = NumberSequence.new(0,20)
GlowParticle.Texture = "http://www.roblox.com/asset/?id=52620985"
GlowParticle.Transparency = NumberSequence.new(0,1)
GlowParticle.LockedToPart = true
GlowParticle.Lifetime = NumberRange.new(1)
GlowParticle.Rate= 1
GlowParticle.Speed =NumberRange.new(0)
GlowParticle.Enabled = false	




GlowParticle2 = Instance.new("ParticleEmitter",FirePart)
GlowParticle2.LightEmission = .7
GlowParticle2.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle2.Size = NumberSequence.new(0,1)
GlowParticle2.Texture = "http://www.roblox.com/asset/?id=589325350"
GlowParticle2.Transparency = NumberSequence.new(0,1)
GlowParticle2.LockedToPart = false
GlowParticle2.Lifetime = NumberRange.new(0.2)
GlowParticle2.Rate= 150
GlowParticle2.Speed =NumberRange.new(3)
GlowParticle2.Acceleration = Vector3.new(0, -10.5, 0)





local all,last = {}
function scan(p)
	for _,v in pairs(p:GetChildren()) do
		if (v:IsA("BasePart")) then
			if (last) then
				local w = Instance.new("Weld")
				w.Part0,w.Part1 = last,v
				w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
				w.Parent = last
			end
			table.insert(all,v)
			last = v
		end
		scan(v)
	end
end
scan(LaserMinigun)

scan(MiniDroid)
for _,v in pairs(all) do v.Anchored = false v.CanCollide = false  end 
MiniDroid.Parent = C
LaserMinigun.Parent = C


Main:Destroy()

Effects = { }
Rapid = false
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local slashDamage = -math.huge
local dir = {w = 0, s = 0, a = 0, d = 0} 
local dir2 = {w = 0, s = 0, a = 0, d = 0} 
killcom=true
trans = 1
sentrymode = false
sentrywait = false
local LightMod = Instance.new("Model", Character)
local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
npcanim = Character.Animate:Clone()
ultwait=false




Character.Animate:Destroy()


		local function makeLightning(Par, Start, End, Width, Length, RandomScale, ArcScale, Num1)
			local oldParts = {}
			for _,v in pairs(Par:GetChildren()) do
				v.CFrame = CFrame.new(5e5, 5e5, 5e5)
				table.insert(oldParts, v)
			end
			local Distance = (Start-End).Magnitude
			local ArcScale = ArcScale or 1
			local RandomScale = RandomScale or 0
			local Last = Start
			local IterNum = 0

			while Par.Parent do
				IterNum = IterNum + 1
				local New = nil
				if (Last-End).Magnitude < Length then
					New = CFrame.new(End)
				else
					if (End-Last).Magnitude < Length*2 then
						RandomScale = RandomScale*0.1
						ArcScale = ArcScale*0.5
					end
					local Direct = CFrame.new(Last,End)
					New = Direct*CFrame.Angles(math.rad(math.random(-RandomScale/4,RandomScale*ArcScale)),math.rad(math.random(-RandomScale,RandomScale)),math.rad(math.random(-RandomScale,RandomScale)))
					New = New*CFrame.new(0,0,-Length)
				end
				local Trail = nil
				if oldParts[IterNum] then
					Trail = oldParts[IterNum]
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("Really red")) or BrickColor.new("Really red")
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					oldParts[IterNum] = nil
					game:GetService("Debris"):AddItem(Trail, .03)
				else
					Trail = Instance.new("Part")
					Trail.Name = "Part"
					Trail.FormFactor = "Custom"
					Trail.BrickColor = ((Num1 % 2 == 0) and BrickColor.new("Really red")) or BrickColor.new("Really red")
					Trail.Transparency = 0
					Trail.Anchored = true
					Trail.CanCollide = false
					Trail.Locked = true
					Trail.BackSurface = "SmoothNoOutlines"
					Trail.BottomSurface = "SmoothNoOutlines"
					Trail.FrontSurface = "SmoothNoOutlines"
					Trail.LeftSurface = "SmoothNoOutlines"
					Trail.RightSurface = "SmoothNoOutlines"
					Trail.TopSurface = "SmoothNoOutlines"
					Trail.Material = "Neon"
					Trail.Size = Vector3.new(Width, (Last-New.p).Magnitude, Width)
					Trail.CFrame = CFrame.new(New.p, Last)*CFrame.Angles(math.rad(90),0,0)*CFrame.new(0, -(Last-New.p).Magnitude/2, 0)
					Trail.Parent = Par
					game:GetService("Debris"):AddItem(Trail, .03)
				end
				Last = New.p
				if (Last-End).Magnitude < 1 then
					break
				end
			end
			for _,v in pairs(oldParts) do
				v:Destroy()
			end
		end



local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 


DW = Instance.new("Weld")
DW.Name = "GuW"
DW.Part0 = Torso 
DW.C0 = cn(0, 50, 0)
DW.C1 = cn(0, 0, 0) 
DW.Part1 = miniHandle
DW.Parent = Torso 


GuW = Instance.new("Weld")
GuW.Name = "GuW"
GuW.Part0 = RightArm 
GuW.C0 = cn(0, -1, -1)
GuW.C1 = cn(0, 0, 0) 
GuW.Part1 = Handle
GuW.Parent = RightArm 

RW = Instance.new("Weld") 
LW = Instance.new("Weld")


RH = Torso["Right Hip"]
LH = Torso["Left Hip"]

RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 

RSH.Parent = nil 
LSH.Parent = nil 

RW.Name = "RW"
RW.Part0 = Torso 
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

function clerp(a, b, t) 
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5 / s 
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00 - m11 - m22 + 1) 
			local recip = 0.5 / s 
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip 
		elseif i == 1 then 
			local s = math.sqrt(m11 - m22 - m00 + 1) 
			local recip = 0.5 / s 
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip 
		elseif i == 2 then 
			local s = math.sqrt(m22 - m00 - m11 + 1) 
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w * xs, w * ys, w * zs 
	local xx = x * xs 
	local xy = x * ys 
	local xz = x * zs 
	local yy = y * ys 
	local yz = y * zs 
	local zz = z * zs 
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((1 - t) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta  
		else 
			startInterp = 1 - t 
			finishInterp = t 
		end 
	else 
		if (1 + cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((t - 1) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta 
		else 
			startInterp = t - 1 
			finishInterp = t 
		end 
	end 
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp 
end

function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.RenderStepped:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.RenderStepped:wait(0)
		end
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)

end


function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end


	

	for i = 0, 1, 0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
	attack = false



game:GetService'RunService'.Stepped:connect(function()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 25), 0) * angles(math.rad(25), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 25), -.0) * angles(math.rad(15 + 3 * math.cos(sine / 25)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(1, -.9, -.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.7, -.5) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .1)
GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(-05), math.rad(90)), 0.1)	
DW.C0 = clerp(DW.C0, CFrame.new(1 + .5 * math.cos(sine / 30)  ,0 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)		
			end
		elseif RootPart.Velocity.y < 1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 25), 0) * angles(math.rad(65), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 25), -.0) * angles(math.rad(55 + 3 * math.cos(sine / 25)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(1, -1, -.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.8, -.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
						GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(-05), math.rad(90)), 0.1)
						DW.C0 = clerp(DW.C0, CFrame.new(1 + .5 * math.cos(sine / 30)  ,8 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(5)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(-5)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 25), 0) * angles(math.rad(25), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 25), -.0) * angles(math.rad(15 + 3 * math.cos(sine / 25)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
	GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(-05), math.rad(90)), 0.1)
	
	DW.C0 = clerp(DW.C0, CFrame.new(1 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)
			end
		elseif Torsovelocity > 1 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-45+5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(5), math.rad(45+-5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 12), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 4), 0) * angles(math.rad(25), math.rad(0), math.rad(5 + 3 * math.cos(sine / 4))), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 4), -.0) * angles(math.rad(15 + 3 * math.cos(sine / 4)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 4))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)	
GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)	
DW.C0 = clerp(DW.C0, CFrame.new(3+.1 * math.cos(sine / 5)  , 3.05 - .1 * math.cos(sine / 3),  2.5 + .5 * math.cos(sine / 6)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)		
			end
			
		



	
			


	
			
			
			
			
			
			
			
			
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end)




























	RemoveOutlines = function(part)
	
	part.TopSurface = 10
end

	CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end

	CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

	CreateWeld = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
















	CFuncs = {
Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Weld = {Create = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
}
, 
Sound = {Create = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, 6)
	end
))
end
}
, 
articleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
	
	local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
	return fp
end
}
}





	Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	
	if hit.Parent == nil then
		return 
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("HumanoidRootPart") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			CreateSound(HitSound, hit, 1, HitPitch)
		end
		local Damage = -math.huge
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
		swait(1)
		HHumanoid.PlatformStand = false
	end
), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.5)
			game:GetService("Debris"):AddItem(rl, 0.5)
		elseif Type == "Normal" then
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
					if knockback > 0 then
						vp.Parent = hit.Parent.HumanoidRootPart
					end
					game:GetService("Debris"):AddItem(vp, 0.5)
				elseif Type == "Up" then
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then		
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit							
									local bp = Create("BodyPosition")({P = 200, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.HumanoidRootPart.Position + Vector3.new(0, -5, 0), Parent = hit.Parent.HumanoidRootPart})
local rl2 = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500, 500, 500) * 10, angularvelocity = Vector3.new(math.random(-15,15), math.random(-0, 0), math.random(-15,15)), Parent = hit})									
									game:GetService("Debris"):AddItem(rl2, 0.01)
									game:GetService("Debris"):AddItem(bp, .1)
												hit.Parent.Humanoid.PlatformStand = true
	
		
		wait(.1)
		hit.Parent.Humanoid.PlatformStand = false
								elseif Type == "Freeze" then
											local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.HumanoidRootPart.Position, Parent = hit.Parent.HumanoidRootPart})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.HumanoidRootPart, cframe = hit.Parent.HumanoidRootPart.CFrame})
											hit.Parent.HumanoidRootPart.Anchored = true
											coroutine.resume(coroutine.create(function(Part)
		
		swait(1.5)
		Part.Anchored = false
	end
), hit.Parent.HumanoidRootPart)
											game:GetService("Debris"):AddItem(BodPos, 3)
											game:GetService("Debris"):AddItem(BodGy, 3)
										end
											local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
											game:GetService("Debris"):AddItem(debounce, Delay)
											c = Instance.new("ObjectValue")
											c.Name = "creator"
											c.Value = Player
											c.Parent = h
											game:GetService("Debris"):AddItem(c, 0.5)
										end
									end

	ShowDamage = function(Pos, Text, Time, Color)
	
	local Rate = 0.033333333333333
	if not Pos then
		local Pos = Vector3.new(0, 0, 0)
	end
	local Text = Text or ""
	local Time = Time or 2
	if not Color then
		local Color = Color3.new(1, 0, 1)
	end
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
	local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		
		local Frames = Time / Rate
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = Frame / Frames
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end
)
end

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("HumanoidRootPart")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
				end
			end
		end
	end
end
	MagniKILL = function(Part, magni, knock, Type)
	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					hum.Health = 0
				end
			end
		end
	end
end

	EffectModel = Instance.new("Model", Character)
	EffectModel.Name = "Effects"
	Effects = {
Block = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end
}
, 
Sphere = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Cylinder = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Wave = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Ring = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Break = {Create = function(brickcolor, cframe, x1, y1, z1)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
}
}
	BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end

	CreateSound = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait()
		sou:play()
		game:GetService("Debris"):AddItem(sou, 6)
	end
))
end

	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 6, delay do
			swait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end
	LigLaser = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 1000
	local num = 1
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
	
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						for i = 0,5 do
							
makeLightning(LightMod, partt.Position, refpart.Position, 0.17, 4, 30, 1, 10)	
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.2)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.2)
						MagniDamage(refpart, 3, .05, .2, 6, "Normal")							
swait()							
						end
						

					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end
	bigLigLaser = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 1000
	local num = 1
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude

			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						for i = 0,1 do
							
makeLightning(LightMod, partt.Position, refpart.Position, 0.3, 4, 20, 1, 10)	
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 7, 7, 7, 0.2)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 7, 7, 7, 0.2)
						MagniDamage(refpart, 3, 5, 10, 8, "Snare")							
swait()							
						end
						

					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end


	shoottraildd = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 1000
	local num = 1
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Really red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.195, 0, -0.195, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.1)
						MagniDamage(refpart, 3, 10, 15, 0, "Normal")
					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end

	shoottraildd2 = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 1000
	local num = 1
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Really red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.5, 0, -0.5, .5)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.1)
						BlockEffect(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 4, 4, 4, 0.1)
						MagniDamage(refpart, 3, 20, 40, 0, "Snare")
					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end


function idleanim2()
for i = 0, 1, 0.1 do
swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1) * angles(math.rad(0), math.rad(0), math.rad(10)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0 + 0.7 * math.cos(sine / 25)), math.rad(0), math.rad(-10)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.0) * angles(math.rad(0), math.rad(0 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -.0) * angles(math.rad(0 + 1 * math.cos(sine / 25)), math.rad(-0), math.rad(0 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(1, -.7 - 0.0 * math.cos(sine / 25), -.3) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(-0), math.rad(50 + 1.1 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-1, -.6 - 0.0 * math.cos(sine / 25), -.3) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(-0), math.rad(-40 + 1.1 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-1.4,-1.5,0) * angles(math.rad(-0), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
end
end

function MinShotAttackAnim1()

for i = 0, 1, 0.3 do
	Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(mouse.hit.p.x,Torso.Position.y,mouse.hit.p.z))
		swait()

		if Torsovelocity > 1 then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0), math.rad(-50 - 5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(50 + 5 * math.cos(sine / 5))), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50) + RootPart.RotVelocity.Y / 70, math.rad(50 * math.cos(sine / 4)+ RootPart.RotVelocity.Y / 10)), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50) + RootPart.RotVelocity.Y / 70, math.rad(50 * math.cos(sine / 4))), .3)				
			GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		elseif Torsovelocity < 1 then
			
			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		end
end








end


function ShotAttackAnim1()
for i = 0, 1, 0.3 do
	
		swait()

		if Torsovelocity > 1 then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-50 - 5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(50 + 5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 12), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)				
			GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		elseif Torsovelocity < 1 then
			
			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		end
end








end


function ShotAttackAnim2()
for i = 0, 2, 0.1 do
		swait()

		if Torsovelocity > 2 then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-45+5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(5), math.rad(45+-5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 4), 0) * angles(math.rad(25), math.rad(0), math.rad(5 + 3 * math.cos(sine / 4))), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 4), -.0) * angles(math.rad(15 + 3 * math.cos(sine / 4)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 4))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)	
GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)	
DW.C0 = clerp(DW.C0, CFrame.new(4+.1 * math.cos(sine / 5)  , 7.05 - .1 * math.cos(sine / 3),  2.5 + .1 * math.cos(sine / 6)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)		
		elseif Torsovelocity < 1 then
			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(5)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(-5)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5 - -.1 * math.cos(sine / 25), 0) * angles(math.rad(25), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5 + -.1 * math.cos(sine / 25), -.0) * angles(math.rad(15 + 3 * math.cos(sine / 25)), math.rad(0), math.rad(-25 + 3 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .1)
	GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(-05), math.rad(90)), 0.1)
	
	DW.C0 = clerp(DW.C0, CFrame.new(2 + .1 * math.cos(sine / 5)  ,7 + -.2 * math.cos(sine / 20),  0 + .1 * math.cos(sine / 5)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.05)
		end
end
end

function ShotAttackAnim3()
for i = 0, 2, 0.1 do
		swait()

		if Torsovelocity > 2 then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 1, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-50 - 5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(50 + 5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(60), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(125 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)				
			GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		elseif Torsovelocity < 1 then
			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(60), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(125 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.1 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(50), math.rad(4 + 2 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.1 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(50), math.rad(-20 + 2 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		end
end



for i = 0, 1, 0.4 do
		swait()

		if Torsovelocity > 2 then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-50 - 5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(50 + 5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 + -.1 * math.cos(sine / 4),-.6) * RHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 + .1 * math.cos(sine / 4),  .5) * LHCF * angles(math.rad(-2), math.rad(50), math.rad(50 * math.cos(sine / 4))), .3)				
			GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		elseif Torsovelocity < 1 then
			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.1 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 2 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.1 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 1 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 2 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)
		end
end
end








function holding()



	
while  Rapid == true and attack==true  and sentrymode == false do

attack = true


MinShotAttackAnim1()
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=419268760", RootPart, 1, 1.5)
		shoottraildd(mouse.Hit.p, gun1, .55)
		
MinShotAttackAnim1()
BlockEffect(BrickColor.new("Really red"), gun2.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=419268760", RootPart, 1, 1.5)
		shoottraildd(mouse.Hit.p, gun2, .55)		
MinShotAttackAnim1()
BlockEffect(BrickColor.new("Really red"), gun3.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=419268760", RootPart, 1, 1.5)
		shoottraildd(mouse.Hit.p, gun3, .55)
MinShotAttackAnim1()	
BlockEffect(BrickColor.new("Really red"), gun4.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=419268760", RootPart, 1, 1.5)		
		shoottraildd(mouse.Hit.p, gun4, .55)		
end	

		
	
	attack = false
	end		

	mouse.KeyUp:connect(function(k)
	if k == "z" and Rapid == true then
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231107923", RootPart, 1, 2)	
		Rapid = false
	Effects.Ring.Create	(BrickColor.new("Really red"), gun1.CFrame, .1, .1, .1,	.1,.1,0,0.08)
Effects.Ring.Create	(BrickColor.new("Really red"), gun1.CFrame, .1, .1, .1,	.1,.1,0,0.1)
		
		end
	end)
	
	
	
		mouse.KeyDown:connect(function(k)
	if k == "z"  and sentrymode == false and attack == false then
		attack = true
Rapid = true	
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=162611981", RootPart, 1, 1)	
	MinShotAttackAnim1()
	MinShotAttackAnim1()
for i = 0,10 do
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
BlockEffect(BrickColor.new("Really red"), gun2.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
BlockEffect(BrickColor.new("Really red"), gun3.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
BlockEffect(BrickColor.new("Really red"), gun4.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
Effects.Ring.Create	(BrickColor.new("Really red"), gun1.CFrame, 2.1, 2.1, .1,	-.3,-.3,0,0.07)
					MinShotAttackAnim1()	
						end
		holding()
		end
		end)




	mouse.KeyDown:connect(function(k)
		

	if attack == false and k == "x" and sentrymode == false then




attack = true
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=316030607", LaPart, 5, 3)
for i=1,5 do 

	BlockEffect(BrickColor.new("Really red"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun2.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun3.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun4.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
ShotAttackAnim1()
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun2.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun3.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun4.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
ShotAttackAnim1()
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun2.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun3.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
BlockEffect(BrickColor.new("Really red"), gun4.CFrame, .1, .1, .1, 1, 1, 1, 0.045)

BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 0, 0, 0, 60, 60, 60, 0.4)	
ShotAttackAnim1()
end
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=633129949", LaPart, 10, 1)
for i=1,2 do 
	BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 20, 20, 20, 50, 50, 50, 0.12)
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 20, 20, 20, 30, 30, 30, 0.09)	
BlockEffect(BrickColor.new("Really red"), gun1.CFrame, 10, 10, 10, 20, 20, 20, 0.06)
BlockEffect(BrickColor.new("Really black"), gun1.CFrame, 3, 3, 3, 10, 10, 10, 0.045)
end
BlockEffect(BrickColor.new("Really black"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)

						
MagniDamage(gun1, 15, 20, 69, 99, "Normal")											
ShotAttackAnim3()




for i=1,2 do 
	BlockEffect(BrickColor.new("Really black"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
ShotAttackAnim1()
BlockEffect(BrickColor.new("Really black"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
ShotAttackAnim1()
BlockEffect(BrickColor.new("Really black"), gun1.CFrame, .1, .1, .1, 1, 1, 1, 0.045)
ShotAttackAnim1()
end

	attack = false

	end
	
	
	
if k == "r"  and attack == false then
	attack=true
while Torsovelocity < 1 do
attack=true
idleanim2()	
	
	
	
end
attack=false		
	
end	
	
	
	
	
	
	
	
	
if k == "v"  and sentrymode == false and attack == false and ultwait==false then
ultwait=true	
attack = true
Humanoid.WalkSpeed = 0
		local Sond = Create("Sound")({Volume = 1.5, Pitch = 1.2, SoundId = "http://www.roblox.com/asset/?id=195322948", Parent = Character or workspace})
		wait()
		Sond:play()

for i = 0, 1, 0.1 do
		swait()

			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

end	


for i = 0, 2, 0.1 do
		swait()

Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	1,1,0,0.1)
	
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(90 + 1 * math.cos(sine / 25)), math.rad(-45), math.rad(-45 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -1 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(0 + 0 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -1 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(-0 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(0,-1.3,-1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

end	


for i = 0, 58, 0.1 do
		swait()
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	.6,.6,0,0.08)
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	.6,.6,0,0.1)
BlockEffect(BrickColor.new("Really red"), LeftArm.CFrame, 21, 41, 21, -.5, -.5, -.5, 0.1,2)	
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(120 + 1 * math.cos(sine / 25)), math.rad(-45), math.rad(-45 - 1 * math.cos(sine / 25))), 0.1)
					RH.C0 = clerp(RH.C0, cn(.9, -1 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(0 + 0 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-.9, -1 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(-0 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(0,-1.3,-1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

end	
BlockEffect(BrickColor.new("Really red"), LeftArm.CFrame, 0, 0, 0, 20,20,20, 0.05,1)
	for i = 0, 55, 0.1 do
		swait()
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	1,1,0,0.08)
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	1,1,0,0.1)
	Effects.Break.Create	(BrickColor.new("Really red"), LeftArm.CFrame, 6, .1, .1)		
BlockEffect(BrickColor.new("Really red"), LeftArm.CFrame, 21, 41, 21, .1, .1, .1, 0.05,2)				
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 5) * angles(math.rad(0), math.rad(0), math.rad(-50)), .01)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(120 + 1 * math.cos(sine / 25)), math.rad(-0), math.rad(-45 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.2 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(0 + 0 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-.9, -.7 - 0.2 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(0,-1.3,-1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

	end	
	BlockEffect(BrickColor.new("Really red"), LeftArm.CFrame, 0, 0, 0, 30,30,30, 0.05,1)	
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=260434750", Character, 2, .7)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=209833293", Character, 2, 2)
	for i = 0, 10, 0.1 do
		swait()
	
Effects.Wave.Create	(BrickColor.new("Really red"), Torso.CFrame, .1, .1, .1,	.5,10000,.5,0.08)
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	17,17,0,0.08)
Effects.Ring.Create	(BrickColor.new("Really red"), LeftArm.CFrame, .1, .1, .1,	17,17,0,0.1)
	Effects.Break.Create	(BrickColor.new("Really red"), LeftArm.CFrame, 76, .1, .1)	
	BlockEffect(BrickColor.new("Really red"), LeftArm.CFrame, 40, 40, 40, 70,70,70, 0.05,1)	
	
	
MagniKILL(Torso, 80,99,99999999, 0, "Normal")
	
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(160 + 1 * math.cos(sine / 25)), math.rad(-0), math.rad(-0 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -1 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(0 + 0 * math.cos(sine / 25))), .1)
					LH.C0 = clerp(LH.C0, cn(-.9, -1 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(-0 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(0,-1.3,-1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

	end	
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=260435164", Character, 2, .7)
	
	for i = 0, 1, 0.1 do
		swait()

			
			
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(10), math.rad(-40 - .01 * math.cos(sine / 25)), math.rad(-0 + 0.1 * math.cos(sine / 25))), 0.2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.4, -.4) * angles(math.rad(85 + 1 * math.cos(sine / 25)), math.rad(15), math.rad(-10 - 1 * math.cos(sine / 25))), 0.2)
					RH.C0 = clerp(RH.C0, cn(.9, -.9 - 0.0 * math.cos(sine / 25), -.6) * RHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)
					LH.C0 = clerp(LH.C0, cn(-.9, -.9 - 0.0 * math.cos(sine / 25), .5) * LHCF * angles(math.rad(-2 + 0 * math.cos(sine / 25)), math.rad(50), math.rad(10 + 0 * math.cos(sine / 25))), .2)			
		GuW.C0 = clerp(GuW.C0, CFrame.new(-2,-1.3,0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.1)		
DW.C0 = clerp(DW.C0, CFrame.new(3.5 + .5 * math.cos(sine / 30)  ,3 + -.2 * math.cos(sine / 20),  2.5 + .5 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.2)

	end	
	Humanoid.WalkSpeed = 16	
Sond:Destroy()
	
	attack = false
	wait(30)
ultwait=false
end

	if  k == "e" then
		
if sentrymode== false then
	if attack == false then
		GlowParticle.Enabled = true	
				CFuncs.Sound.Create("http://www.roblox.com/asset/?id=876800936", LaPart, 1.5, 1.5)
sentrymode= true
end
else
	sentrymode=false
	GlowParticle.Enabled = false	
			CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231107923", LaPart, 3, 1.5)
	end
	end
	
	end)
mouse.Button1Down:connect(function(key)
	if attack == false  and sentrymode == false then
	attack = true
ShotAttackAnim2()	
BlockEffect(BrickColor.new("Really red"), LaPart.CFrame, 0, 0, 0, 6, 6, 6, 0.18)
BlockEffect(BrickColor.new("Really red"), LaPart.CFrame, 0, 0, 0, 2, 2, 2, 0.12)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=410543238", LaPart, 0.5, 1.6)
	bigLigLaser(mouse.Hit.p, LaPart, 0)
ShotAttackAnim2()
	attack = false
end
end)		
	
Humanoid.MaxHealth = 500
wait()
Humanoid.Health = Humanoid.MaxHealth


------------------------------------------------------------------------------------------------
local HiveMind = {}

function HiveMind:new(owner)
        self.__index = self
        local o = {mind = {}, mindState = "FOLLOW", victimObject = nil}
        o.owner = owner
        setmetatable(o, self)
        return o
end

function HiveMind:add(model, humanoid, torso)
        if model and humanoid and torso then
                table.insert(self.mind, {model = model, humanoid = humanoid,
                                torso = torso})
                local hiv = self
                local lastJump = 0
                torso.Touched:connect(function(object)
                        local hive = false
                        if hiv.owner.Character
                                        and object:IsDescendantOf(hiv.owner.Character) == false
                                        then
                                for i = 1, #hiv.mind do
                                        if object:IsDescendantOf(hiv.mind[i].model) then
                                                hive = true
                                                break
                                        end
                                end
                                if not hive then
                                        local hum = object.Parent
                                                        and object.Parent:FindFirstChild("Humanoid")
                                        if hum then
                                                hum:TakeDamage(-math.huge)
                                        end
                                elseif time() - lastJump > 2 then
                                        lastJump = time(0) + math.random()*1
                                        humanoid.Jump = true
                                end
                        end
                end)
        end
end

function HiveMind:cleanupHive()
        local i = 1
        while i <= #self.mind do
                if self.mind[i].model:IsDescendantOf(game) == false
                                or self.mind[i].humanoid.Health == 0 then
                        table.remove(self.mind, i)
                else
                        i = i + 1
                end
        end
end

function HiveMind:getOrbitNumberFromUnitNumber(i)
        local circleNumber = 0
        while self:getUnitsInOrbit(circleNumber) < i do
                i = i - self:getUnitsInOrbit(circleNumber)
                circleNumber = circleNumber + 1
        end
        return circleNumber, i
end

function HiveMind:getOrbitDiameter(orbitNumber)
        return math.pi*(orbitNumber*14)
end

function HiveMind:getUnitsInOrbit(orbitNumber)
        return math.floor(self:getOrbitDiameter(orbitNumber)/5)
end

function HiveMind:lineup(location)
        for i = 1, #self.mind do
                local row = (i - 1) % 3
                local column = math.floor((i - 1) / 3)
                local xOffset, yOffset
                if row == 0 then
                        xOffset = -7
                elseif row == 1 then
                        xOffset = 0
                else
                        xOffset = 7
                end
                yOffset = column * 7
                local position = location * CFrame.new(xOffset, 0, yOffset)
                self.mind[i].humanoid:MoveTo(position.p, workspace.Base)
        end
end

function HiveMind:ownerTorso()
        return self.owner.Character
                        and self.owner.Character:FindFirstChild("Torso")
end
function HiveMind:update()
        self:cleanupHive()
        if self.owner.Character then
                local ownerTorso = self.owner.Character:FindFirstChild("Torso")
                if ownerTorso then
                        if (self.mindState == "FOLLOW") then
                                local hiveSpawn = ownerTorso.CFrame * CFrame.new(0, 0, 9)
                                self:lineup(hiveSpawn)
                        elseif (self.mindState == "CIRCLE") then
                                self:circle(ownerTorso.Position)
                        elseif (self.mindState == "ATTACK") then
                                self:crowdAttack()
                        elseif (self.mindState == "Deffend") then
                                self:deffend()
                        elseif (self.mindState == "GOTO") then
                                self:pushToTarget()
                        end
                end
        end
end
local me = game:GetService("Players").LocalPlayer
local hiveMind = HiveMind:new(me)

------------------------------------------------------------------------------------------------

function findNearestTorso(pos,dist2)
	local list = game.Workspace:children()
	local torso = nil
if dist2 == nil then 
dist2=50	
	
end	
	local dist = dist2
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) then
			temp = temp2:findFirstChild("HumanoidRootPart")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist  then
					torso = temp
					
					dist = (temp.Position - pos).magnitude
					else 

				end

				
				
								
			end
		end
	end
	return torso
end


game:GetService("RunService"):BindToRenderStep("ew", 0, function()
	
	
	
	
	
	if sentrymode == true and sonarwait == false then
	sonarwait = true
	
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=752527668", LaPart, 2, 0.8)
	
	wait(1)
sonarwait = false		
	end
	

	
	
	wait()
	if sentrymode == true then
	
	local target = findNearestTorso(Character.HumanoidRootPart.Position,30)
	if target ~= nil then
ShotAttackAnim2()
if sentrywait == false then		
sentrywait = true
attack= true


BlockEffect(BrickColor.new("Really red"), LaPart.CFrame, 0, 0, 0, 6, 6, 6, 0.18)
BlockEffect(BrickColor.new("Really red"), LaPart.CFrame, 0, 0, 0, 2, 2, 2, 0.12)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=260433584", LaPart, 1.5, .8)
	LigLaser(target.Position, LaPart, 0)
wait()
attack= false
sentrywait = false
end

	
	end

end
end)


sonarwait = false










FaceIdList = {'117930174'}
FaceId = FaceIdList[math.random(1,#FaceIdList)]	 
 




local YourName = game.Players.LocalPlayer.Name
  Character = Player.Character


 Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat" 
  Heartbeat.Parent = script
  frame = 0.03333333333333333
  tf = 0

 game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
      for i = 1, math.floor(tf / frame) do
        Heartbeat:Fire()
      end
      tf = tf - frame * math.floor(tf / frame)
    end
  end)
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  nscale.Changed:connect(function()
    RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end)

  function makegloo(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Glue")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function makejoint(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Motor6D")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function maketouchy(parent, limb, cframe)
    local pr = Instance.new("Part")
    pr.Name = "touchy"
    pr.Size = Vector3.new(1 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    pr.Transparency = 1
    pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5)
    pr.CanCollide = true
    pr.Anchored = false
    pr.Parent = parent
    local w = Instance.new("Weld")
    w.Part0 = pr
    w.Part1 = limb
    w.C0 = cframe
    w.Parent = pr
  end
--[[  function swait(num)
    if num == 0 or num == nil then
      Heartbeat.Event:wait()
    else
      for i = 1, num do
        Heartbeat.Event:wait()
      end
    end
  end
--]]
  modz = Instance.new("Model")
  modz.Name = "efx"
  modz.Parent = Character

  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)













sWaiting=false
wait3=false
shotval = 0

npcname = ""..Character.Name.."'s Combine"


Character.ChildAdded:connect(function(object)
        if object.Name == npcname then
                hiveMind:add(object, object:WaitForChild("Humanoid"),
                                object:WaitForChild("Torso"))
        end
end)
game:GetService("RunService").Stepped:connect(function()
        hiveMind:update()
end)

 function makenoob(cfrem, scalo, rags)
    nscale.Value = scalo
    local md = Instance.new("Model")
    md.Name = ""..Character.Name.."'s Combine"
    md.Parent = Character
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=220230512", md, 1, 1)
wait(.5)
    local hu = Instance.new("Humanoid")
    hu.RigType = "R6"
    hu.MaxHealth = 150 * scalo
    hu.Health = 150 * scalo
    hu.Parent = md
hu.DisplayDistanceType="Viewer"
hu.HealthDisplayDistance=100
hu.NameDisplayDistance=100
hu.NameOcclusion="EnemyOcclusion"
    local anm = Instance.new("Animator")
    anm.Parent = hu
local forthisnpcanim = npcanim:Clone()
forthisnpcanim.Parent = md
    hu.PlatformStand = true
    local light = function(part)
      part.CustomPhysicalProperties = PhysicalProperties.new(0.35, 0.3, 0.5)
    end
    local hd = Instance.new("Part")
    hd.Name = "Head"
    hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    hd.TopSurface = "Smooth"
    hd.BottomSurface = "Inlet"
    hd.Locked = true
    hd.BrickColor = BrickColor.new("Pastel brown")
    hd.CanCollide = true
    hd.Anchored = false
    light(hd)
    hd.Parent = md
    local hm = Instance.new("SpecialMesh")
    hm.MeshType = "Head"
    hm.Scale = Vector3.new(1.25, 1.25, 1.25)
    hm.Parent = hd



	shirt = Instance.new("Shirt", md)
	shirt.Name = "Shirt"
	pants = Instance.new("Pants", md)
	pants.Name = "Pants"
	md.Shirt.ShirtTemplate = "rbxassetid://49257392"
	md.Pants.PantsTemplate = "rbxassetid://49257378"
function loada(anim)
local loaded = md.Humanoid:LoadAnimation(anim)
return loaded
end
IdleA = New("Animation",md,"Idle",{AnimationId = "rbxassetid://243282565"})
IdleAnim = loada(IdleA)

    local hf = Instance.new("Decal")







FaceId = FaceIdList[math.random(1,#FaceIdList)]	





    hf.Texture = "rbxassetid://"..FaceId

    hf.Face = "Front"
    hf.Parent = hd
    local hrpa = Instance.new("Part")
    hrpa.Name = "HumanoidRootPart"
    hrpa.TopSurface, hrpa.BottomSurface = 0, 0
    hrpa.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    hrpa.Transparency = 1
    hrpa.CanCollide = false
    hrpa.Locked = true
    light(hrpa)
    hrpa.Parent = md
    local tagbomb = Instance.new("BoolValue")
    tagbomb.Name = "tagbomb"
    tagbomb.Value = false
    tagbomb.Parent = hrpa
    local learm = Instance.new("Part")
    learm.Name = "Left Arm"
    learm.BrickColor = BrickColor.new("Pastel brown")
    learm.CanCollide = false
    learm.Locked = true
    learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    light(learm)
    learm.Parent = md
    local riarm = Instance.new("Part")
    riarm.Name = "Right Arm"
    riarm.BrickColor = BrickColor.new("Pastel brown")
    riarm.CanCollide = false
    riarm.Locked = true
    light(riarm)
    riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    riarm.Parent = md
    local leleg = Instance.new("Part")
    leleg.Name = "Left Leg"
    leleg.BrickColor = BrickColor.new("Navy blue")
    leleg.CanCollide = false
    leleg.Locked = true
    light(leleg)
    leleg.BottomSurface = 0
    leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    leleg.Parent = md
    local rileg = Instance.new("Part")
    rileg.Name = "Right Leg"
    rileg.BrickColor = BrickColor.new("Navy blue")
    rileg.CanCollide = false
    rileg.Locked = true
    light(rileg)
    rileg.BottomSurface = 0
    rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    rileg.Parent = md
    local tor = Instance.new("Part")
    tor.Name = "Torso"
    tor.BrickColor = BrickColor.new("Really red")
    tor.Locked = true
    light(tor)
    tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
    tor.Parent = md
    md.PrimaryPart = hrpa
    md:SetPrimaryPartCFrame(cfrem)
    md:makeJoints()
    makejoint(hrpa, RootJointC0, RootJointC1, hrpa, tor, "RootJoint")
    makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")

    if rags == true then
      makegloo(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makegloo(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makegloo(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makegloo(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      maketouchy(riarm, riarm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(learm, learm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(leleg, leleg, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(rileg, rileg, CFrame.new(0, 0.5 * nscale.Value, 0))
    elseif rags == false then
      makejoint(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makejoint(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makejoint(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makejoint(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      hu.PlatformStand = false

    end


local Solhat = Instance.new("Accessory")
Solhat.AttachmentPos = Vector3.new(0, .3, 0)
    local SHH = Instance.new("Part",Solhat)
SHH.Name = "Handle"
SHH.CanCollide=false
		local SHHMesh = Instance.new("SpecialMesh",SHH)
			SHHMesh.Parent = SHH
			SHHMesh.MeshId = "rbxassetid://31152467"
			SHHMesh.TextureId = "rbxassetid://32002857"
			SHHMesh.Scale = Vector3.new(1, 1, 1)
			SHHMesh.VertexColor = Vector3.new(1, 1, 1)
		


    nscale.Value = 1

wait()
Solhat.Parent = md
Thegun = Instance.new("Part",riarm)
Thegun.CanCollide=false
Thegun.Size = Vector3.new(1,1,1)
ThegunW = Instance.new("Weld")
ThegunW.Name = "GuW"
ThegunW.Part0 = riarm 
ThegunW.C0 = cn(-.5, -2.4, -.4)*angles(0,0,3.2)
ThegunW.C1 = cn(0, 0, 0) 
ThegunW.Part1 = Thegun
ThegunW.Parent = riarm 
		local ThegunMesh = Instance.new("SpecialMesh",Thegun)
			ThegunMesh.Parent = Thegun
			ThegunMesh.MeshId = "rbxassetid://477158943"
			ThegunMesh.TextureId = "rbxassetid://477158949"
			ThegunMesh.Scale = Vector3.new(0.04, 0.035, 0.04)
			ThegunMesh.VertexColor = Vector3.new(0.2, 0, 0)
Thegun2 = Instance.new("Part",md)
Thegun2.CanCollide=false
Thegun2.Size = Vector3.new(.1,.1,.1)
Thegun2.Name = "Shoot"
ThegunW2 = Instance.new("Weld")
ThegunW2.Name = "GuW"
ThegunW2.Part0 = riarm
ThegunW2.C0 = cn(-0.4,-4.6,-.45)*angles(0,0,0)
ThegunW2.C1 = cn(0, 0, 0) 
ThegunW2.Part1 = Thegun2
ThegunW2.Parent = riarm 			
BlockEffect(BrickColor.new("Really black"), tor.CFrame, 160, 160, 160, -5, -5, -5, 0.04)
BlockEffect(BrickColor.new("Really black"), tor.CFrame, 160, 160, 160, -5, -5, -5, 0.04)

						BlockEffect(BrickColor.new("Really red"), tor.CFrame, 160, 160, 160, -14, -14, -14, 0.06)
						BlockEffect(BrickColor.new("Really red"), tor.CFrame, 160, 160, 160, -14, -14, -14, 0.06)	
wait(0.5)
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=183921414", tor, 1, 1)
IdleAnim:Play()
wait(2.5)
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=183953820", tor, 2, 1)
game:GetService("RunService"):BindToRenderStep("ew", 0, function()
	if md ~= nil and hu.Health > 0 and sentrymode == false then	
	if md ~= nil and hu.Health > 0 and sentrymode == false then
		
if killcom==true or sentrymode == true and sWaiting==false then
	
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=282061033", Torso, .5, 1)


	
BlockEffect(BrickColor.new("Really black"), tor.CFrame, 160, 160, 160, -5, -5, -5, 0.04)
BlockEffect(BrickColor.new("Really black"), tor.CFrame, 160, 160, 160, -5, -5, -5, 0.04)

						BlockEffect(BrickColor.new("Really red"), tor.CFrame, 160, 160, 160, -14, -14, -14, 0.06)
						BlockEffect(BrickColor.new("Really red"), tor.CFrame, 160, 160, 160, -14, -14, -14, 0.06)	



hu.Health = 0
game:service'Debris':AddItem(md, .0);	
end		
		
		
		
		
		
	hu.WalkSpeed = 16.5	
	local target2 = findNearestTorso(hrpa.Position,60)
	if target2 ~= nil then
		hu:MoveTo(target2.Position, target2)
		
	end

	local target3 = findNearestTorso(hrpa.Position,45)
	
	if  target3 ~= nil then
	hu.WalkSpeed = 0
tor.CFrame = CFrame.new(tor.Position, target3.Position) * CFrame.Angles(0,math.rad(0),0) * CFrame.new(0,0,(dir2.s))		
	end	
	
	if target3 ~= nil and wait3==false and sentrymode == false  then
		wait3=true
		
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=419268760", LaPart, 3, .7)
	shoottraildd2(target3.Position, Thegun2, 1)		
            local PointLight = Instance.new("PointLight", Thegun2);
            PointLight.Color = Color3.new(1,0,0)
            PointLight.Brightness = 50;
            PointLight.Range = 10
            game:service'Debris':AddItem(PointLight, .02);
	wait(2.2)
wait3=false



--Torso.CFrame = CFrame.new(Torso.Position, mouse.Hit.p) * CFrame.Angles(0,math.rad(0),0) * CFrame.new(0,0,(dir.s))	


	end	

end

for i,v in pairs(Character:GetChildren()) do	
	        if ""..Character.Name.."'s Combine" then 

		
		
if hu.Health == 0 and  md ~= nil and killcom==false and sWaiting==false then
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=160622487", Torso, .6, 1)


game:service'Debris':AddItem(md, 3);

	end
end
    return md

  end
end
end)



end















  function makecircle(cfrem, scalo)
    local mcir1 = Instance.new("Part")
    mcir1.Anchored = true
    mcir1.CanCollide = false
    mcir1.Size = Vector3.new(0.2, 0.2, 0.2)
    mcir1.Transparency = 1
    mcir1.CFrame = cfrem
    mcir1.Parent = modz
    game.Debris:AddItem(mcir1, 8)
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://0"
    d1.Face = "Front"
    d1.Parent = mcir1
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://0"
    d2.Face = "Back"
    d2.Parent = mcir1
    local bme = Instance.new("BlockMesh")
    bme.Parent = mcir1
    for _ = 1, 9 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(35 * scalo, 35 * scalo, 0), 0.3)
    end
    coroutine.resume(coroutine.create(function()
      swait(15)
      for _ = 1, 12 do
        swait()
        d1.Transparency = d1.Transparency + 0.08
        d2.Transparency = d2.Transparency + 0.08
      end
      mcir1:Destroy()
    end))
    return mcir1
  end
  function spawnnoob(circlecf, noobcf, scalez, ragd)
    local aearae = makecircle(circlecf, scalez)
    local nananb

      nananb = makenoob(aearae.CFrame * noobcf, scalez, false)
    
    return nananb
  end
 mouse.KeyDown:connect(function(k)
if  k == "c" and attack == false and sentrymode == false then
	if killcom==false then
killcom=true
else
killcom=false
      spawnnoob(RootPart.CFrame * cn((math.random(-5,5)), 10, (math.random(-0,5))) * angles(mr(90), 0, 0), cn(0, 0, 0) * angles(mr(-90), 0, 0), 1, false)
	
	end
	

end
end)
for i,v in pairs(game:GetService("Workspace").non.LaserMinigun:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Transparency = 1
    end
end

--[[
BlockEffect(BrickColor.new("Royal purple"), Firepart1.CFrame, 1, 1, 1, 3, 3, 3, 0.06)
BlockEffect(BrickColor.new("Eggplant"), Firepart1.CFrame, 1, 1, 1, 2.8, 2.8, 2.8, 0.06)
BlockEffect(BrickColor.new("Royal purple"), Firepart2.CFrame, 1, 1, 1, 3, 3, 3, 0.06)
BlockEffect(BrickColor.new("Eggplant"), Firepart2.CFrame, 1, 1, 1, 2.8, 2.8, 2.8, 0.06)
--]]