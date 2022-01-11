loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local Player = game:GetService("Players").LocalPlayer

local Character = game.Workspace.non
Character.Animate.Disabled = true
local la = Character:FindFirstChild("Left Arm")
local ra = Character:FindFirstChild("Right Arm")
local ll = Character:FindFirstChild("Left Leg")
local rl = Character:FindFirstChild("Right Leg")
local Torso = Character:FindFirstChild("Torso")
local Humanoid = Character:findFirstChild("Humanoid")
local Mouse = Player:GetMouse()
Character.Animate.Disabled = true
Humanoid.Animator:Destroy()

Staff = New("Model",Character,"Staff",{})
Handle = New("Part",Staff,"Handle",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Cylinder,Size = Vector3.new(4.69999981, 0.200000003, 0.300000042),CFrame = CFrame.new(0.57149899, 1.88927495, -0.898910999, -0.944701791, 0.319970548, -0.0718207732, -0.327606022, -0.930582702, 0.163368165, -0.0145623889, 0.177864254, 0.983946562),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.454902, 0.52549, 0.615686),})
Part1 = New("Part",Staff,"Part1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.38, 0.200000003, 0.300000042),CFrame = CFrame.new(2.87910843, 2.26322985, -0.792562008, -0.952355325, -0.29641813, -0.0718205795, 0.281945944, -0.945417762, 0.163367048, -0.116327964, 0.135336339, 0.983944893),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.454902, 0.52549, 0.615686),})
mot = New("Motor",Part1,"mot",{Part0 = Part1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.952353716, 0.281943917, -0.116327204, -0.296420157, -0.945419192, 0.135335654, -0.0718207732, 0.163368165, 0.983946562),C1 = CFrame.new(-2.30406189, 0.409280896, -1.1920929e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),})
Part2 = New("Part",Staff,"Part2",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.699999809, 0.200000003, 0.300000042),CFrame = CFrame.new(3.80125666, 2.18647099, -0.712507248, -0.94470191, 0.319973052, -0.0718205795, -0.327603519, -0.930582702, 0.163367048, -0.014562604, 0.177865237, 0.983944893),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.454902, 0.52549, 0.615686),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),C1 = CFrame.new(-3.15123606, 0.790008068, 0, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),})
Part3 = New("Part",Staff,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.899999797, 0.200000003, 0.300000042),CFrame = CFrame.new(4.27721882, 2.67641687, -0.759113848, -0.426075667, 0.901833594, -0.0718205795, -0.896977842, -0.41077888, 0.163367048, 0.117829539, 0.134031072, 0.983944893),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.454902, 0.52549, 0.615686),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.426077485, -0.896979511, 0.117828958, 0.901831865, -0.410777032, 0.134030208, -0.0718207732, 0.163368165, 0.983946562),C1 = CFrame.new(-3.76071024, 0.4780761, -4.17232513e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),})
Part4 = New("Part",Staff,"Part4",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.899999797, 0.200000003, 0.300000042),CFrame = CFrame.new(4.18060207, 3.31991601, -0.873009622, 0.663661063, 0.744579256, -0.0718205795, -0.728600919, 0.665168226, 0.163367048, 0.169415876, -0.0560925454, 0.983944893),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.454902, 0.52549, 0.615686),})
mot = New("Motor",Part4,"mot",{Part0 = Part4,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.663658738, -0.728599966, 0.169414878, 0.74458015, 0.665170491, -0.0560923368, -0.0718207732, 0.163368165, 0.983946562),C1 = CFrame.new(-3.87859344, -0.171925187, -8.94069672e-007, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),})
Snowball = New("Part",Staff,"Snowball",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(3.51262951, 2.90919495, -0.85357672, 0.319973052, 0.94470191, -0.0718205795, -0.930582702, 0.327603519, 0.163367048, 0.177865237, 0.014562604, 0.983944893),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
PointLight = New("PointLight",Snowball,"PointLight",{Color = Color3.new(0.741176, 1, 1),Brightness = 6,Range = 7,Shadows = true,})
mot = New("Motor",Snowball,"mot",{Part0 = Snowball,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.319970548, -0.930582702, 0.177864254, 0.944701791, 0.327606022, 0.0145623889, -0.0718207732, 0.163368165, 0.983946562),C1 = CFrame.new(-3.11328602, 1.10864639e-005, -4.64916229e-006, -0.944701791, -0.327606022, -0.0145623889, 0.319970548, -0.930582702, 0.177864254, -0.0718207732, 0.163368165, 0.983946562),})

local LimbAccess = {LA=true,RA=true,LL=true,RL=true,RJ=true,NJ=true,Weapon=true}
local State = "Lounge"
local Active = true
local Mode = "Staff"
function Lerp(a,b,i)  -- A = First pos, B = Second Pos, i = Speed
	return a:lerp(b,i)
end
Left_Arm = Instance.new("Weld",Torso)
Left_Arm.Part0 = Torso
Left_Arm.Part1 = la
Left_Arm.Name = "LeftArmJ"
Left_Arm.C0 = CFrame.new(-1.5,0.5,0)
Left_Arm.C1 = CFrame.new(0,0.5,0)
Right_Arm = Instance.new("Weld",Torso)
Right_Arm.Part0 = Torso
Right_Arm.Part1 = ra
Right_Arm.Name = "RightArmJ"
Right_Arm.C0 = CFrame.new(1.5,0.5,0)
Right_Arm.C1 = CFrame.new(0,0.5,0)
Left_Leg = Instance.new("Weld",Torso)
Left_Leg.Part0 = Torso
Left_Leg.Part1 = ll
Left_Leg.Name = "LeftLegJ"
Left_Leg.C0 = CFrame.new(-0.5,-1,0)
Left_Leg.C1 = CFrame.new(0,1,0)
Right_Leg = Instance.new("Weld",Torso)
Right_Leg.Name = "RightLegJ"
Right_Leg.Part0 = Torso
Right_Leg.Part1 = rl
Right_Leg.C0 = CFrame.new(0.5,-1,0)
Right_Leg.C1 = CFrame.new(0,1,0)
Staffw = Instance.new("Weld",Torso)
Staffw.Part0 = Torso
Staffw.Part1 = Handle
Staffw.Name = "StaffJoint"

local RootJoint = Instance.new("Weld",Character["HumanoidRootPart"])
RootJoint.Name = "RootJ"
RootJoint.Part0 = Character["HumanoidRootPart"]
RootJoint.Part1 = Torso

local NeckJ = Instance.new("Weld",Torso)
NeckJ.Name = "NeckJ"
NeckJ.Part0 = Torso
NeckJ.Part1 = Character.Head
NeckJ.C1 = CFrame.new(0,-1.5,0)

function Change()
	
end
_G.MoveCheck1 = false
_G.SatanState = false

function SpellBinder(SpellID)
if _G.MoveCheck1 == false then
_G.MoveCheck1 = true
if _G.SatanState == false then
_G.SatanState = true

ID = 357442018
_G.SpellBindStuff = 0
_G.SpellBind = game:GetObjects("rbxassetid://437368177")[1]
_G.SpellBind.Decal.Texture = "rbxassetid://" .. SpellID
_G.SpellBind.Decal1.Texture = "rbxassetid://" .. SpellID
_G.SpellBind.Parent = game.Players.LocalPlayer.Character
_G.SpellBind.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame - game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 35
_G.SpellBind.CFrame = CFrame.new(_G.SpellBind.Position, game.Players.LocalPlayer.Character.Torso.Position)* CFrame.Angles(1.6,0,0)
_G.SpellBind.ParticleEmitter.Color = ColorSequence.new(Color3.new(255,0,0))
_G.SpellBind.ParticleEmitter.Size = NumberSequence.new(5)

_G.UnsealEnforca = game:GetService("RunService").RenderStepped:connect(function()
	_G.SpellBind.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame + game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 35
	_G.SpellBind.CFrame = CFrame.new(_G.SpellBind.Position, game.Players.LocalPlayer.Character.Torso.Position)* CFrame.Angles(1.6,_G.SpellBindStuff,0)
	_G.SpellBindStuff = _G.SpellBindStuff + 0.012
end)


for i = 1, 117 do
_G.SpellBind.Size = _G.SpellBind.Size + Vector3.new(0.50,0,0.50)
wait(0.07)
end


wait(0.1)

_G.chatcustom("You shall not pass!", "Really red", game.Players.LocalPlayer)
_G.MoveCheck1 = false
else
_G.MoveCheck1 = true
wait(0.6)

for i = 1, 117 do
_G.SpellBind.Size = _G.SpellBind.Size - Vector3.new(0.50,0,0.50)
wait(0.07)
end


_G.UnsealEnforca:disconnect()
_G.SpellBind.Parent = _G.newParent
wait(0.1)
_G.SatanState = false
_G.MoveCheck1 = false
end
end
end



_G.ConnectionAgent = Mouse.KeyDown:connect(function(key)
	if key == "q" and State == "Flying" and Active == true then
		State = "Lounge"
		Humanoid.WalkSpeed = 30	
	elseif key == "q" and State == "Lounge" and Active == true then
		State = "Battle"
		Humanoid.WalkSpeed = 20
	elseif key == "q" and State == "Battle" and Active == true then
		State = "Flying"
		Humanoid.WalkSpeed = 50
	elseif key == "e" and State == "Battle" and Active == true then
		SpellBinder(375165574)
	elseif key == "e" and Active == true then
	--[[
		Humanoid.WalkSpeed = 0
		State = "Changing"
		Mode = "Changing"
		Active = false
		Change()
	--]]
	end
end)

Player.Character.Humanoid.Died:connect(function()
_G.ConnectionAgent:disconnect()
end)

angle = 0
angle2 = 0
angle3 = 0
anglespeed = 2
anglespeed2 = 1
anglespeed3 = .4
game:GetService("RunService").Stepped:connect(function()
	angle = ((angle % 100) + anglespeed/10)
	angle2 = ((angle2 % 100) + anglespeed2/10)
	angle3 = ((angle3 % 100) + anglespeed3/10) --it'll go from 0 to 100 and repeat in a loop. basically it will get to its destination and back --ok
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Flying" then -- idle
		if not Humanoid.WalkSpeed == 50 then
			Humanoid.WalkSpeed = 50
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(90),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.2,0.35,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(0)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(-45)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-5)+math.sin(angle3)*.06),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(35)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(45)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-1,0),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,-.4)*CFrame.Angles(math.rad(180),math.rad(180),0),.2)
		end
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Flying" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(90),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.2,0.35,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(7)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(-45)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-5)+math.sin(angle3)*.06),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(35)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(45)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-1,0),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,-.4)*CFrame.Angles(math.rad(180),math.rad(180),0),.2)
		end	
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Lounge" then -- idle
		if not Humanoid.WalkSpeed == 30 then
			Humanoid.WalkSpeed = 30
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,0,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-3)+math.sin(angle3)*.06),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(5)+(math.sin(angle3)*.1),math.rad(0),math.rad(3)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,-1,0)*CFrame.Angles(0,0,math.rad(-5)+math.sin(angle3)*.02),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,-1,0)*CFrame.Angles(0,0,math.rad(15)+math.sin(angle3)*-.02),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,0,.5),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(-45)),.2)
		end
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Lounge" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.2,math.sin(angle2)*.1,0)*CFrame.Angles(0,math.rad(0),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(5)+math.sin(angle3)*.06,0+math.sin(angle3)*.06,math.rad(-23)+math.sin(angle3)*.06),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(5)+(math.sin(angle3)*.1),math.rad(0),math.rad(23)),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.6,-.2)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,0,.5),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(-45)),.2)
		end				
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Battle" then -- idle
		if not Humanoid.WalkSpeed == 20 then
			Humanoid.WalkSpeed = 20
		end
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.1,0.5,-.7)*CFrame.Angles(math.rad(5),math.rad(-135),math.rad(-90)),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.1,0.5,-.7)*CFrame.Angles(math.rad(5),math.rad(135),math.rad(90)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,-1,0)*CFrame.Angles(0,0,math.rad(-5)+math.sin(angle3)*.02),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,-1,0)*CFrame.Angles(0,0,math.rad(5)+math.sin(angle3)*-.02),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(0,-.5,-1),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,.6,0)*CFrame.Angles(math.rad(90),math.rad(180),math.rad(-90)),.2)
		end	
	elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude > 2 and State == "Battle" then -- walk
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.2,.5+math.sin(angle2)*.1,0)*CFrame.Angles(0,math.rad(0),0),.2)
		end	
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-.9,0.6,-.8)*CFrame.Angles(math.rad(5),math.rad(-135),math.rad(-90)),.1)
		end	
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.sin(-angle3)*.04,math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end	
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.1,0.4,-.3)*CFrame.Angles(math.rad(5),math.rad(135),math.rad(90)),.1)
		end			
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-0.5,(math.sin(angle3)*.1)-.7,-.2)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(-5)),.1)
		end	
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(0.5,(math.sin(angle3)*.1)-.7,-.1)*CFrame.Angles(math.rad(-15)+(math.sin(angle3)*.1),0,math.rad(5)),.1)
		end	
		if LimbAccess.Weapon then
			Staffw.C0 = Lerp(Staffw.C0,CFrame.new(.4,.5,-1),.2)
			Staffw.C1 = Lerp(Staffw.C1,CFrame.new(0,.1,0)*CFrame.Angles(math.rad(135),math.rad(120),math.rad(-135)),.2)
		end	
	end
	if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude < 2 and State == "Changing" then -- idle
		if LimbAccess.RJ then
			RootJoint.C0 = Lerp(RootJoint.C0,CFrame.new(-.5,.5+math.sin(angle2)*.1,0)*CFrame.Angles(math.sin(angle3)*.02,math.rad(0),0),.2)
		end
		if LimbAccess.LA then
			Left_Arm.C0 = Lerp(Left_Arm.C0,CFrame.new(-1.3,0.51,-.7)*CFrame.Angles(math.rad(5),math.rad(-165),math.rad(-90)),.1)
		end
		if LimbAccess.NJ then
			NeckJ.C0 = Lerp(NeckJ.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),math.rad(0)+(math.sin(-angle3)*.04),0),.25)
		end
		if LimbAccess.RA then
			Right_Arm.C0 = Lerp(Right_Arm.C0,CFrame.new(1.3,0.49,-.7)*CFrame.Angles(math.rad(5),math.rad(165),math.rad(90)),.1)
		end
		if LimbAccess.LL then
			Left_Leg.C0 = Lerp(Left_Leg.C0,CFrame.new(-1,-1,-.4)*CFrame.Angles(0,math.rad(25),math.rad(75)),.1)
		end
		if LimbAccess.RL then
			Right_Leg.C0 = Lerp(Right_Leg.C0,CFrame.new(1,-1,-.4)*CFrame.Angles(0,math.rad(-25),math.rad(-75)),.1)
		end				
	end
end)
