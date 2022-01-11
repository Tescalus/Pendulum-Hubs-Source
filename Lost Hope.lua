-- Created by Nebula_Zorua --

-- Leaked for Vengeful to showcase. Fuck you dark lol --

-- Nebula's Lost Hope/Lost Hope V2 --
-- I walk a lonely road.. --
-- The only one that I have ever known.. --

-- Thank goodguyaiyden for making me leak this. Little cunt spread it. --

-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
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
wait(1/60)


--// Shortcut Variables \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

local Black = C3.N(0,0,0)
local White = C3.N(1,1,1)

function NumSeq(...)
	local tab = {...}
	local Sequence = {}
	for _,v in next, tab do
		table.insert(Sequence,NumberSequenceKeypoint.new(unpack(v)))
	end
	if(tab[#tab][1] ~= 1)then
		local final = tab[#tab]
		table.insert(Sequence,NumberSequenceKeypoint.new(1,final[2],final[3]))
	end
	return NumberSequence.new(Sequence)
end


CS3 = function(r,g,b)
	return ColorSequence.new(Color3.fromRGB(r,g,b))
end

--// Initializing \\--
local Plr = Plrs.LocalPlayer
local Char = game.Workspace.non
local Hum = Char:FindFirstChildOfClass'Humanoid'
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Torso = Char.Torso
local Head = Char.Head
local NeutralAnims = true
local Attack = false
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local Combo = 1

local Effects = IN("Folder",Char)
Effects.Name = "Effects"


--// Debounce System \\--


function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

--// Instance Creation Functions \\--

function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part.Parent = parent or Char
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function Clone(instance,parent,properties)
	local inst = instance:Clone()
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = NewInstance("Part",Effects,{Transparency=1,CFrame=cf or Torso.CFrame,Anchored=true,CanCollide=false,Size=V3.N()})
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end


--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Require stuff \\--
function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(script:FindFirstChild'CamShake')then
			local cam = script.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times
			
	 		if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		elseif(who == Plr or who == Char or who:IsDescendantOf(Plr))then
			local intensity = intense
			local cam = workspace.CurrentCamera
			for i = 1, times do
				local camDistFromOrigin
				if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
					camDistFromOrigin = math.floor( (cam.CFrame.p-origin.Position).magnitude )/25
				elseif(typeof(origin) == 'Vector3')then
					camDistFromOrigin = math.floor( (cam.CFrame.p-origin).magnitude )/25
				end
				if(camDistFromOrigin)then
					intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
				end
				cam.CFrame = cam.CFrame:lerp(cam.CFrame*CFrame.new(math.random(-intensity,intensity)/100,math.random(-intensity,intensity)/100,math.random(-intensity,intensity)/100)*CFrame.Angles(math.rad(math.random(-intensity,intensity)/100),math.rad(math.random(-intensity,intensity)/100),math.rad(math.random(-intensity,intensity)/100)),.4)
				swait()
			end
		end
	end)()
end

function CamShakeAll(times,intense,origin)
	for _,v in next, Plrs:players() do
		CamShake(v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack' or v.Character,times,intense,origin)
	end
end

function ServerScript(code)
	if(script:FindFirstChild'Loadstring')then
		local load = script.Loadstring:Clone()
		load:WaitForChild'Sauce'.Value = code
		load.Disabled = false
		load.Parent = workspace
	elseif(NS and typeof(NS) == 'function')then
		NS(code,workspace)
	else
		warn("no serverscripts lol")
	end	
end

function RunLocal(where,code)
	ServerScript([[
		wait()
		script.Parent=nil
		if(not _G.Http)then _G.Http = game:service'HttpService' end
		
		local Http = _G.Http or game:service'HttpService'
		
		local source = ]].."[["..code.."]]"..[[
		local link = "https://api.vorth.xyz/R_API/R.UPLOAD/NEW_LOCAL.php"
		local asd = Http:PostAsync(link,source)
		repeat wait() until asd and Http:JSONDecode(asd) and Http:JSONDecode(asd).Result and Http:JSONDecode(asd).Result.Require_ID
		local ID = Http:JSONDecode(asd).Result.Require_ID
		local vs = require(ID).VORTH_SCRIPT
		vs.Parent = game.]]..where:GetFullName()
	)
end

--// Customization \\--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new(Plr.UserId == 5719877 and 'Dark indigo' or 'Crimson')
local God = false
local Muted = false

local WalkSpeed = 0

Hum.WalkSpeed = WalkSpeed
--// Weapon and GUI creation, and Character Customization \\--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	if(Object:IsA'BasePart' and Plr.UserId == 5719877 and tostring(Object.BrickColor):lower():find"crimson")then
		Object.Color = BrickColor.new'Dark indigo'.Color
	end
	return Object
end


EmitPart = New("Part",LArm,"EmitPart",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-2.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Weld = New("ManualWeld",EmitPart,"Weld",{Part0 = EmitPart,Part1 = LArm,C0=CF.N(0,1,0),})
	
Fattened = New("Part",RArm,"Fattened",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(0.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
WeldA = New("ManualWeld",Fattened,"Weld",{Part0 = Fattened,Part1 = RArm,C1 = CFrame.new(0, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

Scythe = New("Model",Char,"Scythe",{})
Handle = New("Part",Scythe,"Handle",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 6.19999981, 0.399999976),CFrame = CFrame.new(-39.3999939, 6.70000172, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("CylinderMesh",Handle,"Mesh",{Scale = Vector3.new(0.699999988, 1, 0.699999988),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 8.10000229, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("CylinderMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 1.40000057, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.999999821, 1),CFrame = CFrame.new(-39.3999939, 9.89999485, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999313, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.40002728, -6.89999866, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 1.70002556, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.10000992, -6.89999866, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 1.4000082, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.400000006, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999786, 9.89999485, -6.59998035, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 0.899999976),MeshId = "http://www.roblox.com/asset/?id=420164161",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.49905682e-05, 3.19999313, 1.50203705e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 8.30002594, -6.70000172, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.60002422, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.290000021, 0.580000043),CFrame = CFrame.new(-39.3999939, 9.85499287, -2.84000158, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.15499115, 3.75999403, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.730000019),CFrame = CFrame.new(-39.3999939, 9.29999256, -5.63499975, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 2.59999084, 0.96499598, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.55000007),CFrame = CFrame.new(-39.3999939, 10.3799906, -5.22499561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.67998886, 1.375, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 1, 0.75),CFrame = CFrame.new(-39.3999939, 9.89999294, -4.82500172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999123, 1.7749939, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.89999294, -4.09001637, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999123, 2.50997901, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.75),CFrame = CFrame.new(-39.3999939, 9.20001698, -5.62500477, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.50001526, 0.974990964, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.52999997),CFrame = CFrame.new(-39.3999939, 10.1699905, -4.43503284, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.46998882, 2.16496301, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999946, 0.200000003, 1.31999993),CFrame = CFrame.new(-39.3999939, 9.9899931, -3.74002552, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.28999138, 2.85997009, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.56000006),CFrame = CFrame.new(-39.3999939, 9.40000534, -5.22002172, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.70000362, 1.37997389, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.280000031, 0.74000001),CFrame = CFrame.new(-39.3999939, 9.85999298, -3.45001674, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.15999126, 3.14997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.999999821, 1),CFrame = CFrame.new(-39.3999939, 9.89999294, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999123, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 1.5200001),CFrame = CFrame.new(-39.3999939, 9.61998653, -4.44002247, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.204999998, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.91998482, 2.15997291, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.400000036, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.80000305, -2.60002661, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.10000134, 3.99996901, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 9.30001068, -5.20001698, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.60000896, 1.39997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 10.499999, -5.20000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.79999733, 1.3999939, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 10.3000011, -4.40002966, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.59999943, 2.19996595, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.10002708, -5.60001087, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.40002537, 0.99998498, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.800000012, 0.709999979),CFrame = CFrame.new(-39.3999939, 9.83998299, -4.84500551, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.13998127, 1.75498998, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.52999997),CFrame = CFrame.new(-39.3999939, 10.1399765, -4.46503162, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.43997478, 2.13496399, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.370000064),CFrame = CFrame.new(-39.3999939, 9.84998894, -2.94499683, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 3.14998722, 3.65499878, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.730000019),CFrame = CFrame.new(-39.3999939, 9.33998299, -5.67499256, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 2.63998127, 0.925002933, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.789999843, 1),CFrame = CFrame.new(-39.3999939, 9.83498859, -5.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.13498688, 0.899993896, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.290000021, 1.56000006),CFrame = CFrame.new(-39.3999939, 9.53499508, -5.29001379, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.83499336, 1.30998194, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.50000012),CFrame = CFrame.new(-39.3999939, 10.3099785, -5.24998951, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.60997677, 1.35000587, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.74000001),CFrame = CFrame.new(-39.3999939, 9.85999107, -3.45001674, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.15998936, 3.14997888, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999946, 0.200000003, 1.31999993),CFrame = CFrame.new(-39.3999939, 9.91998863, -3.77002478, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.21998692, 2.82997084, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.200076103, -6.70000172, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, -6.49992561, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.90000057, -4.00001955, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999886, 2.59997606, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999939, 0.700006008, -7.00000477, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, -5.99999571, -0.400009155, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.60000002),CFrame = CFrame.new(-39.3999939, 9.49999905, -4.40001392, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.79999733, 2.19998193, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 1, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.90000057, -4.80000782, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.19999886, 1.79998791, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 0.700006008, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -5.99999571, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.200015068, -6.50000477, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -6.49998665, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.470000029, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.87498665, -4.1200304, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.17498493, 2.47996497, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.400000036, 0.600000024),CFrame = CFrame.new(-39.3999939, 9.80000305, -3.30003881, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.10000134, 3.2999568, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.5200001),CFrame = CFrame.new(-39.3999939, 9.65997887, -4.489995, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.95997715, 2.11000085, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.800000012),CFrame = CFrame.new(-39.3999939, 9.29999733, -5.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("BlockMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 2.59999561, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.75),CFrame = CFrame.new(-39.3999939, 9.27001095, -5.67499256, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.209999993, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 2.57000923, 0.925002933, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 6.50003672, -6.60001087, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("CylinderMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.199965, -1.50203705e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 1.4000001, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.3000679, -6.30000782, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.600066185, 0.299987912, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 6.50005674, -6.30000782, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.199944973, 0.299987912, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 6.70007372, -6.50000477, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 7.20024109e-05, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.30000687, -6.89999866, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.100000001),Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.60000515, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.60001373, -6.89999866, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 0.900012016, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 1.39999998),CFrame = CFrame.new(-39.3999939, 10.1000013, -3.70003271, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 3.39999962, 2.8999629, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 7.50002098, -6.70000172, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(0.5, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.800019264, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.399999976),CFrame = CFrame.new(-39.3999939, 7.29999208, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("CylinderMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 0.800000012),})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 0.599990368, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10002279, -7.10001087, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -5.59997892, -0.50001502, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10006189, -6.10001087, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.59993982, 0.49998498, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900043964, -6.3000226, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -5.79995775, 0.299972892, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900006771, -6.89999866, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.79999495, -0.300003052, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.600058079, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -6.09994364, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 0.200000003, 0.400000006),CFrame = CFrame.new(-39.3999939, 0.70003891, -6.2000165, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.99996281, 0.399978995, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.400000036, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.600000858, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -6.10000086, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10001707, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(1.04999995, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -5.59998465, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900078773, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(1.04999995, 1, 0.800000012),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.79992294, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.600000024, 0.200000003),CFrame = CFrame.new(-39.3999939, 1.10007095, -6.50000477, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Offset = Vector3.new(0, 0, 0.0500000007),Scale = Vector3.new(1.04999995, 1, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -5.59993076, 0.0999908447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.399999976, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.3999939, 0.900025845, -6.70000172, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(1.04999995, 1, 0.800000012),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -5.79997587, -0.100006104, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 2.79999995, 0.399999976),CFrame = CFrame.new(-39.3999939, 2.20001125, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("CylinderMesh",PartA,"Mesh",{})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, -4.49999046, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999976, 6.79999971, 0.399999976),CFrame = CFrame.new(-39.3999939, 7.00000572, -6.59999561, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(0.200000003, 9.10000038, 0.200000003),MeshId = "http://www.roblox.com/asset/?id=1033714",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C1 = CFrame.new(0, 0.300004005, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
PartA = New("Part",Scythe,"Part",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.Neon,Size = Vector3.new(0.799999952, 0.400000036, 0.400000006),CFrame = CFrame.new(-39.3999939, 10.540019, -6.69998646, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
MeshA = New("SpecialMesh",PartA,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",PartA,"Weld",{Part0 = PartA,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872),C1 = CFrame.new(0, 3.84001732, -0.0999910831, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Hitbox = New("Part",Scythe,"Hitbox",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.400000006, 1.80000019, 4.80000019),CFrame = CFrame.new(-39.3999786, 9.89999485, -4.59998035, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.49905682e-05, 3.19999313, 2.00001502, 1, 0, 0, 0, 1, 0, 0, 0, 1),})


function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
	local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
	local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
	local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001})
	return TEff
end
 
SlashT = CreateTrailObj(Hitbox,(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),0,1)
PunchT = CreateTrailObj(LArm,"White","White",0,0)
KickT = CreateTrailObj(RLeg,"White","White",0,0)


if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendants() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

--// Stop animations \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \\--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})
local HW = NewInstance('Motor',Handle,{Part0=RArm,Part1=Handle,C0=CF.N(0,-1,0)*CF.A(M.R(-90),0,0)})


local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/Frame_Speed
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

--// Chat Function \\--
-- Thanks Sugarie \\--
function chatfunc(text)
local chat = coroutine.wrap(function()
if Char:FindFirstChild("TalkingBillBoard")~= nil then
Char:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Char)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = (Plr.UserId == 5719877 and BrickColor.new'Dark indigo'.Color or Color3.new(.6,0,0))
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)

coroutine.resume(coroutine.create(function()
while tecks2 ~= nil do
swait(1.5)
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end))
for i = 1,string.len(text),1 do
	Sound(Head,565939471,1,1,false,true,true)
tecks2.Text = string.sub(text,1,i)
swait(0.3)
end
swait(60)
for i = 1, 5 do
swait(.02)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end
 


--// Effect Function(s) \\--

function WingsColor(c)
	if(Char:FindFirstChild'LeftWing')then
		for _,v in next, Char.LeftWing:children() do
			if(v:IsA'BasePart')then
				v[typeof(c) == 'Color3' and 'Color' or 'BrickColor'] = c
			end
		end
	end
	if(Char:FindFirstChild'Halo')then
		for _,v in next, Char.Halo:children() do
			if(v:IsA'BasePart')then
				v[typeof(c) == 'Color3' and 'Color' or 'BrickColor'] = c
			end
		end	
	end
end



function Bezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  = pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end

function SphereFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.Sphere},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlastFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976'},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlockFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function ShootBullet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or V3.N(2,2,2)
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 10
	local Shape = data.Shape or 'Ball'
	local Frames = data.Frames or 160
	local Pos = data.Origin or Torso.CFrame
	local Direction = data.Direction or Mouse.Hit
	local Material = data.Material or Enum.Material.Neon
	local OnHit = data.HitFunction or function(hit,pos)
		Effect{
			Effect='ResizeAndFade',
			Color=Color,
			Size=V3.N(10,10,10),
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.05,.05,.05),
				EndIsIncrement=true
			}
		}
		for i = 1, 5 do
			local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
			Effect{
				Effect='Fade',
				Frames=65,
				Size=V3.N(5,5,10),
				CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-10).p,pos),
				Mesh = {MeshType=Enum.MeshType.Sphere},
				Material=Enum.Material.Neon,
				Color=Color,
				MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
			}	
		end
		AOEDamage(pos,10,15,30,0,'Normal',10,4)
	end	
	
	local Bullet = Part(Effects,Color,Material,Size,Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 1, Frames+1 do
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame).p,StudsPerFrame)
			Bullet.CFrame = CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame)
			if(hit)then
				OnHit(hit,pos,norm,dist)
				break;
			end
			swait()
		end
		Bullet:destroy()
	end)()
	
end

function Zap(data)
	local sCF,eCF = data.StartCFrame,data.EndCFrame
	assert(sCF,"You need a start CFrame!")
	assert(eCF,"You need an end CFrame!")
	local parts = data.PartCount or 15
	local zapRot = data.ZapRotation or {-5,5}
	local startThick = data.StartSize or 3;
	local endThick = data.EndSize or startThick/2;
	local color = data.Color or BrickColor.new'Electric blue'
	local delay = data.Delay or 35
	local delayInc = data.DelayInc or 0
	local lastLightning;
	local MagZ = (sCF.p - eCF.p).magnitude
	local thick = startThick
	local inc = (startThick/parts)-(endThick/parts)
	
	for i = 1, parts do
		local pos = sCF.p
		if(lastLightning)then
			pos = lastLightning.CFrame*CF.N(0,0,MagZ/parts/2).p
		end
		delay = delay + delayInc
		local zapPart = Part(Effects,color,Enum.Material.Neon,V3.N(thick,thick,MagZ/parts),CF.N(pos),true,false)
		local posie = CF.N(pos,eCF.p)*CF.N(0,0,MagZ/parts).p+V3.N(M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)))
		if(parts == i)then
			local MagZ = (pos-eCF.p).magnitude
			zapPart.Size = V3.N(endThick,endThick,MagZ)
			zapPart.CFrame = CF.N(pos, eCF.p)*CF.N(0,0,-MagZ/2)
			Effect{Effect='ResizeAndFade',Size=V3.N(thick,thick,thick),CFrame=eCF*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),Color=color,Frames=delay*2,FXSettings={EndSize=V3.N(thick*8,thick*8,thick*8)}}
		else
			zapPart.CFrame = CF.N(pos,posie)*CF.N(0,0,MagZ/parts/2)
		end
		
		lastLightning = zapPart
		Effect{Effect='Fade',Manual=zapPart,Frames=delay}
		
		thick=thick-inc
		
	end
end

function Zap2(data)
	local Color = data.Color or BrickColor.new'Electric blue'
	local StartPos = data.Start or Torso.Position
	local EndPos = data.End or Mouse.Hit.p
	local SegLength = data.SegL or 2
	local Thicc = data.Thickness or 0.5
	local Fades = data.Fade or 45
	local Parent = data.Parent or Effects
	local MaxD = data.MaxDist or 200
	local Branch = data.Branches or false
	local Material = data.Material or Enum.Material.Neon
	local Raycasts = data.Raycasts or false
	local Offset = data.Offset or {0,360}
	local AddMesh = (data.Mesh == nil and true or data.Mesh)
	if((StartPos-EndPos).magnitude > MaxD)then
		EndPos = CF.N(StartPos,EndPos)*CF.N(0,0,-MaxD).p
	end
	local hit,pos,norm,dist=nil,EndPos,nil,(StartPos-EndPos).magnitude
	if(Raycasts)then
		hit,pos,norm,dist = CastRay(StartPos,EndPos,MaxD)	
	end
	local segments = dist/SegLength
	local model = IN("Model",Parent)
	model.Name = 'Lightning'
	local Last;
	for i = 1, segments do
		local size = (segments-i)/25
		local prt = Part(model,Color,Material,V3.N(Thicc+size,SegLength,Thicc+size),CF.N(),true,false)
		if(AddMesh)then IN("CylinderMesh",prt) end
		if(Last and math.floor(segments) == i)then
			local MagZ = (Last.CFrame*CF.N(0,-SegLength/2,0).p-EndPos).magnitude
			prt.Size = V3.N(Thicc+size,MagZ,Thicc+size)
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,EndPos)*CF.A(M.R(90),0,0)*CF.N(0,-MagZ/2,0)	
		elseif(not Last)then
			prt.CFrame = CF.N(StartPos,pos)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)	
		else
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,CF.N(pos)*CF.A(M.R(M.RNG(0,360)),M.R(M.RNG(0,360)),M.R(M.RNG(0,360)))*CF.N(0,0,SegLength/3+(segments-i)).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
		end
		Last = prt
		if(Branch)then
			local choice = M.RNG(1,7+((segments-i)*2))
			if(choice == 1)then
				local LastB;
				for i2 = 1,M.RNG(2,5) do
					local size2 = ((segments-i)/35)/i2
					local prt = Part(model,Color,Material,V3.N(Thicc+size2,SegLength,Thicc+size2),CF.N(),true,false)
					if(AddMesh)then IN("CylinderMesh",prt) end
					if(not LastB)then
						prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,Last.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					else
						prt.CFrame = CF.N(LastB.CFrame*CF.N(0,-SegLength/2,0).p,LastB.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					end
					LastB = prt
				end
			end
		end
	end
	if(Fades > 0)then
		coroutine.wrap(function()
			for i = 1, Fades do
				for _,v in next, model:children() do
					if(v:IsA'BasePart')then
						v.Transparency = (i/Fades)
					end
				end
				swait()
			end
			model:destroy()
		end)()
	else
		S.Debris:AddItem(model,.01)
	end
	return {End=(Last and Last.CFrame*CF.N(0,-Last.Size.Y/2,0).p),Last=Last,Model=model}
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

function Effect(data)
	local FX = data.Effect or 'ResizeAndFade'
	local Parent = data.Parent or Effects
	local Color = data.Color or C3.N(0,0,0)
	local Size = data.Size or V3.N(1,1,1)
	local MoveDir = data.MoveDirection or nil
	local MeshData = data.Mesh or nil
	local SndData = data.Sound or nil
	local Frames = data.Frames or 45
	local Manual = data.Manual or nil
	local Material = data.Material or nil
	local CFra = data.CFrame or Torso.CFrame
	local Settings = data.FXSettings or {}
	local Shape = data.Shape or Enum.PartType.Block
	local Snd,Prt,Msh;
	local RotInc = data.RotInc or {0,0,0}
	if(typeof(RotInc) == 'number')then
		RotInc = {RotInc,RotInc,RotInc}
	end
	coroutine.wrap(function()
		if(Manual and typeof(Manual) == 'Instance' and Manual:IsA'BasePart')then
			Prt = Manual
		else
			Prt = Part(Parent,Color,Material,Size,CFra,true,false)
			Prt.Shape = Shape
		end
		if(typeof(MeshData) == 'table')then
			Msh = Mesh(Prt,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
		elseif(typeof(MeshData) == 'Instance')then
			Msh = MeshData:Clone()
			Msh.Parent = Prt
		elseif(Shape == Enum.PartType.Block)then
			Msh = Mesh(Prt,Enum.MeshType.Brick)
		end
		if(typeof(SndData) == 'table' or typeof(SndData) == 'Instance')then
			Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
		end
		if(Snd)then
			repeat swait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
			Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
		end
		Size = (Msh and Msh.Scale or Size)
		local endSize = (Settings.EndSize or (Msh and Msh.Scale or Size)/2)
		local growX,growY,growZ = Size.X-endSize.X,Size.Y-endSize.Y,Size.Z-endSize.Z
		local grow = V3.N(growX,growY,growZ)
		local MoveSpeed = nil;
		if(MoveDir)then
			MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
		end
		if(FX ~= 'Arc')then
			for Frame = 1, Frames do
				if(FX == "Fade")then
					Prt.Transparency  = (Frame/Frames)
				elseif(FX == "Resize")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
				elseif(FX == "ResizeAndFade")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
					Prt.Transparency = (Frame/Frames)
				end
				if(Settings.RandomizeCFrame)then
					Prt.CFrame = Prt.CFrame * CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360))
				else
					Prt.CFrame = Prt.CFrame * CF.A(unpack(RotInc))
				end
				if(MoveDir and MoveSpeed)then
					local Orientation = Prt.Orientation
					Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
					Prt.Orientation = Orientation
				end
				swait()
			end
			Prt:destroy()
		else
			local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
			if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
			if(start and endP)then
				local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				for Frame = 0, 1, (Settings.Speed or 0.01) do
					if(Settings.Home)then
						endP = Settings.Home.CFrame
					end
					Prt.CFrame = Bezier(start, quarter, threequarter, endP, Frame)
				end
				if(Settings.RemoveOnGoal)then
					Prt:destroy()
				end
			else
				Prt:destroy()
				assert(start,"You need a start position!")
				assert(endP,"You need a start position!")
			end
		end
	end)()
	return Prt,Msh,Snd
end
function SoulSteal(whom)
	print("lol")
end

--// Other Functions \\ --

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end


function ShowDamage(Pos, Text, Time, Color)
	coroutine.wrap(function()
	local Rate = (1 / Frame_Speed)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = NewInstance("Part",Effects,{
		Material=Enum.Material.SmoothPlastic,
		Reflectance = 0,
		Transparency = 1,
		BrickColor = BrickColor.new(Color),
		Name = "Effect",
		Size = Vector3.new(0,0,0),
		Anchored = true,
		CFrame = CF.N(Pos)
	})
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(1.25, 0, 1.25, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	S.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = workspace
	delay(0, function()
		Tween(EffectPart,{CFrame=CF.N(Pos)*CF.N(0,3,0)},Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			swait()
			local Percent = (Frame / Frames)
			TextLabel.TextTransparency = Percent
			TextLabel.TextStrokeTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end) end)()
end

function Kill(who)
	print("hi")
end
function DealDamage(who,minDam,maxDam,Knock,Type,critChance,critMult,magical,...)
	if(who)then
		local wha = {...}
		local IgnoreDB = (wha) and (wha)[1] and (wha)[1] == true
		if(IgnoreDB == true or IgnoreDB == false)then table.remove(wha,1) end
		local origin = (wha) and (wha)[1]
		if(typeof(origin) ~= 'Instance')then origin = Root end
		if(origin ~= nil)then table.remove(wha,1) end
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = 0
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < .2) then
						canHit = false
					else
						Hit[_] = nil
					end
				end
			end
			local player = S.Players:GetPlayerFromCharacter(who)
			if((not player or player.UserId ~= 5719877) and (canHit or IgnoreDB))then
				table.insert(Hit,{hum,time()})
	
				if(hum.Health >= 1e5)then
					if(who:FindFirstChild'Head' and hum.Health > 0)then
						ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "INSTANT", 1.5, C3.N(1,0,0))
					end
					Kill(who)
				else
					hum.MaxHealth = 100
					
					if(Type == "Fire")then
						--idk..
					else
						local  c = Instance.new("ObjectValue",hum)
						c.Name = "creator"
						c.Value = Plr
						game:service'Debris':AddItem(c,0.35)
						if(M.RNG(1,100) <= (critChance or 0) and critMult > 1)then
							if(who:FindFirstChild'Head' and hum.Health > 0)then
								ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "[CRIT] "..Damage*(critMult or 2), 1.5, BrickColor.new'New Yeller'.Color)
							end
							hum.Health = hum.Health - Damage*(critMult or 2)
						else
							if(who:FindFirstChild'Head' and hum.Health > 0)then
								ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), Damage, 1.5, DamageColor.Color)
							end
							hum.Health = hum.Health - Damage
						end
						if(hum.Health <= 0 and magical)then
							Kill(who)
						end
						if(Type == 'Knockback' and GetTorso(who))then
							local up = (...) and wha and unpack(wha) or 1
							print(up)
							local bfos = Instance.new("BodyVelocity",GetTorso(who))
							bfos.P = 20000	
							bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
							bfos.Velocity = Vector3.new(0,up,0) + (origin.CFrame.lookVector * Knock)
							S.Debris:AddItem(bfos,.5)
						elseif(Type == 'Knockup' and GetTorso(who))then
							local bfos = Instance.new("BodyVelocity",GetTorso(who))
							bfos.P = 20000	
							bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
							bfos.Velocity = Vector3.new(0,Knock,0)
							S.Debris:AddItem(bfos,.5)
						elseif(Type == "Electric")then
							if(M.RNG(0) >= critChance)then
								if(who:FindFirstChild'Head' and hum.Health > 0)then
									ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "[PARALYZED]", 1.5, BrickColor.new"New Yeller".Color)
								end
								local asd = hum.WalkSpeed/2
								hum.WalkSpeed = asd
								local paralyzed = true
								coroutine.wrap(function()
									while paralyzed do
										swait(25)
										if(M.RNG(1,25) == 1)then
											if(who:FindFirstChild'Head' and hum.Health > 0)then
												ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "[STATIC]", 1.5, BrickColor.new"New Yeller".Color)
											end
											hum.PlatformStand = true
										end
									end
								end)()
								delay(4, function()
									paralyzed = false
									hum.WalkSpeed = hum.WalkSpeed + asd
								end)
							end
							
						elseif(Type == 'Knockdown' and GetTorso(who))then
							local rek = GetTorso(who)
							hum.PlatformStand = true
							delay(1,function()
								hum.PlatformStand = false
							end)
							local angle = (GetTorso(who).Position - (Root.Position + Vector3.new(0, 0, 0))).unit
							local bodvol = NewInstance("BodyVelocity",rek,{
								velocity = angle * Knock,
								P = 5000,
								maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
							})
							local rl = NewInstance("BodyAngularVelocity",rek,{
								P = 3000,
								maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
								angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
							})
							game:GetService("Debris"):AddItem(bodvol, .5)
							game:GetService("Debris"):AddItem(rl, .5)
						end
					end
				end
			end
		end
	end
end

function AOEDamage(where,range,minDam,maxDam,Knock,Type,critChance,critMult,magical,...)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent])then
			hit[v.Parent] = true
			DealDamage(v.Parent,minDam,maxDam,Knock,Type,critChance,critMult,magical,...)
		end
	end
end

function AOEHeal(where,range,amount)
	local healed = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' or nil)
		if(hum and not healed[hum])then
			hum.Health = hum.Health + amount
			if(v.Parent:FindFirstChild'Head' and hum.Health > 0)then
				ShowDamage((v.Parent.Head.CFrame * CF.N(0, 0, (v.Parent.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "+"..amount, 1.5, BrickColor.new'Lime green'.Color)
			end
		end
	end
end

function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(script:FindFirstChild'CamShake')then
			local cam = script.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times
			
	 		if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		elseif(who and (who == Plr or who == Char or who:IsDescendantOf(Plr)))then
			local intensity = intense
			local cam = workspace.CurrentCamera
			for i = 1, times do
				local camDistFromOrigin
				if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
					camDistFromOrigin = math.floor( (cam.CFrame.p-origin.Position).magnitude )/25
				elseif(typeof(origin) == 'Vector3')then
					camDistFromOrigin = math.floor( (cam.CFrame.p-origin).magnitude )/25
				end
				if(camDistFromOrigin)then
					intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
				end
				cam.CFrame = cam.CFrame:lerp(cam.CFrame*CFrame.new(math.random(-intensity,intensity)/100,math.random(-intensity,intensity)/100,math.random(-intensity,intensity)/100)*CFrame.Angles(math.rad(math.random(-intensity,intensity)/100),math.rad(math.random(-intensity,intensity)/100),math.rad(math.random(-intensity,intensity)/100)),.4)
				swait()
			end
		end
	end)()
end

function CamShakeAll(times,intense,origin)
	for _,v in next, Plrs:players() do
		CamShake(v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack' or v.Character,times,intense,origin)
	end
end

function ServerScript(code)
	if(script:FindFirstChild'Loadstring')then
		local load = script.Loadstring:Clone()
		load:WaitForChild'Sauce'.Value = code
		load.Disabled = false
		load.Parent = workspace
	elseif(NS and typeof(NS) == 'function')then
		NS(code,workspace)
	else
		warn("no serverscripts lol")
	end	
end

function LocalOnPlayer(who,code)
	ServerScript([[
		wait()
		script.Parent=nil
		if(not _G.Http)then _G.Http = game:service'HttpService' end
		
		local Http = _G.Http or game:service'HttpService'
		
		local source = ]].."[["..code.."]]"..[[
		local link = "https://api.vorth.xyz/R_API/R.UPLOAD/NEW_LOCAL.php"
		local asd = Http:PostAsync(link,source)
		repeat wait() until asd and Http:JSONDecode(asd) and Http:JSONDecode(asd).Result and Http:JSONDecode(asd).Result.Require_ID
		local ID = Http:JSONDecode(asd).Result.Require_ID
		local vs = require(ID).VORTH_SCRIPT
		vs.Parent = game:service'Players'.]]..who.Name..[[.Character
	]])
end


--// Intro \\--
for _,v in next, Scythe:children() do
	if(v:IsA'BasePart')then
		v.Transparency = 1
	end
end

pcall(function() Char.ReaperShadowHead.ShadowHeadss.Transparency = 1 end)
pcall(function() Char.ReaperShadowHead.Eye1.Transparency = 1 end)
pcall(function() Char.ReaperShadowHead.Eye2.Transparency = 1 end)
local ShadowHead;
for i = 0, 6, 0.1 do
	swait()
	Hum.WalkSpeed = WalkSpeed
	Sine = Sine + .75
	local Alpha = .1
	RJ.C0 = clerp(RJ.C0,CFrame.new(3.20564755e-13, 0.00629413966+.05*M.C(Sine/8), -4.88442311e-07, 1, 5.09317033e-11, 0, -4.35882441e-11, 0.999980271, -0.00628614612, 0, 0.00628616195, 0.999982595),Alpha)
	LH.C0 = clerp(LH.C0,CFrame.new(-0.496488243, -0.990815699-.05*M.C(Sine/8), 0.0216228105, 0.999878287, -2.22119922e-09, 0.0156120937, -9.81379053e-05, 0.999980271, 0.00628539547, -0.0156118199, -0.00628614612, 0.999860764),Alpha)
	RH.C0 = clerp(RH.C0,CFrame.new(0.498538375, -0.990979612-.05*M.C(Sine/8), 0.0154671557, 0.986496866, 1.87209643e-08, -0.163780421, 0.00102892693, 0.999980271, 0.00619763741, 0.163777411, -0.00628245994, 0.986478508),Alpha)
	LS.C0 = clerp(LS.C0,CFrame.new(-1.4262656, 0.582470179+.05*M.C(Sine/8), 0.0189987384, 0.986158848, 0.165066898, 0.0156112732, -0.165180489, 0.986243367, 0.00628170185, -0.0143596325, -0.00877342932, 0.999859571)*CF.A(M.R(0-7*M.S(Sine/16)),0,M.R(0-5*M.C(Sine/16))),Alpha)
	RS.C0 = clerp(RS.C0,CFrame.new(1.48594272, 0.540132999+.05*M.C(Sine/8), -0.0262069479, 0.992103875, -0.124443792, 0.0156112732, 0.124359176, 0.992217422, 0.00628170185, -0.0162715111, -0.00429068506, 0.999859571)*CF.A(M.R(0-5*M.C(Sine/18)),0,M.R(0+5*M.C(Sine/16))),Alpha)
	NK.C0 = clerp(NK.C0,CFrame.new(6.19958155e-06, 1.49894857, -0.0144036785, 1, 3.67697794e-07, -1.62981451e-07, -3.56478267e-07, 0.997964799, 0.0637683496, 1.8440187e-07, -0.0637684688, 0.997967064),Alpha)
end

if(not Char:FindFirstChild'ReaperShadowHead')then
	ShadowHead = New("Part",Char,"ShadowHead",{BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	sMeshA = New("SpecialMesh",ShadowHead,"Mesh",{Scale = Vector3.new(1.3, 1.5, 1.3),})
	sWeld = New("ManualWeld",ShadowHead,"Weld",{Part0 = ShadowHead,Part1 = Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
else
	ShadowHead = Char.ReaperShadowHead.ShadowHeadss
end

for i = 1,0,-.05 do
	swait()
	ShadowHead.Transparency = i
end

coroutine.wrap(function()
	for i = 14,23,.025 do
		swait()
		S.Lighting.ClockTime = i
	end
end)()


for i = 0, 1.4, 0.1 do
	swait()
	Hum.WalkSpeed = WalkSpeed
	local Alpha = .2
	RJ.C0 = clerp(RJ.C0,CFrame.new(-5.96680536e-08, -1.24488032, -0.0140914526, 1, 5.09317033e-11, 0, -4.35882441e-11, 0.999980271, -0.00628614612, 0, 0.00628616195, 0.999982595),Alpha)
	LH.C0 = clerp(LH.C0,CFrame.new(-0.511937857, 0.254114032, -0.975690305, 0.999878287, -2.22119922e-09, 0.0156120937, -9.81379053e-05, 0.999980271, 0.00628539547, -0.0156118199, -0.00628614612, 0.999860764),Alpha)
	RH.C0 = clerp(RH.C0,CFrame.new(0.528363287, -1.4723922, -0.890294552, 0.983243644, 0.13018477, 0.127608106, -0.134980977, 0.049440749, 0.98961395, 0.122523762, -0.990257561, 0.0661848485),Alpha)
	LS.C0 = clerp(LS.C0,CFrame.new(-1.33000612, 0.396337628, -0.239367515, 0.81851691, -0.512586653, 0.259393871, 0.397494763, 0.179335862, -0.899909258, 0.414763331, 0.839699447, 0.35054028),Alpha)
	RS.C0 = clerp(RS.C0,CFrame.new(1.45876408, 0.535963595, -0.0257564057, 0.983761489, -0.178801253, 0.0156112732, 0.178723007, 0.983879447, 0.00628170185, -0.016482804, -0.00338959182, 0.999859571),Alpha)
	NK.C0 = clerp(NK.C0,CFrame.new(6.61337572e-06, 1.39598942, -0.556828141, 1.00000012, -1.76951289e-07, 2.05822289e-07, -2.04090611e-08, 0.706629395, 0.707583785, -2.70083547e-07, -0.707584679, 0.70663023),Alpha)
end

Sound(Torso,137463716,.3,1,false,true,true)

CamShakeAll(200,250,Torso)

for i = 1, 100 do
	Hum.WalkSpeed = WalkSpeed
	Effect{
		Effect='ResizeAndFade',
		Color=Black,
		Size=V3.N(.5,1,.5),
		Material=Enum.Material.Neon,
		Mesh={MeshType=Enum.MeshType.Sphere},
		Frames=50,
		CFrame=Root.CFrame*CF.N(M.RNG(-7,7),-2.5,M.RNG(-7,7)),
		FXSettings = {
			EndSize = V3.N(.5,15,.5)
		}
	}
	swait(.6)
	Effect{
		Effect='ResizeAndFade',
		Color=Black,
		Size=V3.N(1,2,1),
		Material=Enum.Material.Neon,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976',Offset=V3.N(0,0,-.125)},
		Frames=50,
		RotInc={0,M.R(2),0},
		CFrame=Root.CFrame*CF.N(0,-2.5,0),
		FXSettings = {
			EndSize = V3.N(15,1,15)
		}
	}
	swait(.6)
end
swait(120)
for i = 0, 1.4, 0.1 do
	swait()
	Hum.WalkSpeed = WalkSpeed
	local Alpha = .1
	RJ.C0 = clerp(RJ.C0,CFrame.new(-5.96680536e-08, -1.24488032, -0.0140914526, 1, 5.09317033e-11, 0, -4.35882441e-11, 0.999980271, -0.00628614612, 0, 0.00628616195, 0.999982595),Alpha)
	LH.C0 = clerp(LH.C0,CFrame.new(-0.511937857, 0.254114032, -0.975690305, 0.999878287, -2.22119922e-09, 0.0156120937, -9.81379053e-05, 0.999980271, 0.00628539547, -0.0156118199, -0.00628614612, 0.999860764),Alpha)
	RH.C0 = clerp(RH.C0,CFrame.new(0.528363287, -1.4723922, -0.890294552, 0.983243644, 0.13018477, 0.127608106, -0.134980977, 0.049440749, 0.98961395, 0.122523762, -0.990257561, 0.0661848485),Alpha)
	LS.C0 = clerp(LS.C0,CFrame.new(-1.33000612, 0.396337628, -0.239367515, 0.81851691, -0.512586653, 0.259393871, 0.397494763, 0.179335862, -0.899909258, 0.414763331, 0.839699447, 0.35054028),Alpha)
	RS.C0 = clerp(RS.C0,CFrame.new(1.45876408, 0.535963595, -0.0257564057, 0.983761489, -0.178801253, 0.0156112732, 0.178723007, 0.983879447, 0.00628170185, -0.016482804, -0.00338959182, 0.999859571),Alpha)
	NK.C0 = clerp(NK.C0,CFrame.new(0.00933877565, 1.47889042, 0.0403728262, 0.999878168, 1.87209643e-08, 0.015611317, -9.80963086e-05, 0.999980271, 0.00628170185, -0.0156110264, -0.00628245994, 0.999859571),Alpha)
end
Sound(Torso,743521450,1,1,false,true,true)
pcall(function() Char.ReaperShadowHead.Eye2.Transparency = 0 end)
for i = 1, 4 do	
	Effect{
		Effect='ResizeAndFade',
		Color = ShadowHead.Parent and ShadowHead.Parent:FindFirstChild'Eye2' and ShadowHead.Parent:FindFirstChild'Eye2'.Color or BrickColor.new(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),
		Material = Enum.Material.Neon,
		Size = V3.N(1,1,1),
		Mesh = {MeshType=Enum.MeshType.Sphere},
		CFrame=Head.CFrame*CF.N(-0.2, 0.2, -0.3)*CF.A(0,0,M.R(i*90)),
		FXSettings={
			EndSize=V3.N(.05,5,.05),
		}
	}
end	

swait(120)
local Pemitter = Instance.new("ParticleEmitter",EmitPart)
Pemitter.Color = ColorSequence.new(Color3.new(0,0,0))
Pemitter.Size = NumberSequence.new(.5)
Pemitter.Texture = "rbxassetid://243344623"
Pemitter.Transparency = NumberSequence.new(0,1)
Pemitter.Acceleration = Vector3.new(0,4,0)
Pemitter.Lifetime = NumberRange.new(1)
Pemitter.Rate = 100
Pemitter.Rotation = NumberRange.new(0,360)
Pemitter.RotSpeed = NumberRange.new(100)
Pemitter.Speed = NumberRange.new(0)
--
WingsColor(Black)
if(ShadowHead.Parent.Name ~= 'ReaperShadowHead')then ShadowHead:destroy() end

Sound(Torso,168586621,.5,1,false,true,true)

AOEDamage(Torso.Position,60,1,10,100,'Knockback',0,1,true,100)

CamShakeAll(32,250,Torso)
pcall(function() Char.ReaperShadowHead.Eye1.Transparency = 0 end)
if(Plr.UserId == 5719877)then
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.RGB(36,12,80) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.RGB(36,12,80) end)
end

pcall(function()
	coroutine.wrap(function()
		local a = Char.ReaperShadowHead.Eye1:FindFirstChildOfClass'SpecialMesh'
		local b = Char.ReaperShadowHead.Eye2:FindFirstChildOfClass'SpecialMesh'
		repeat wait(2)
			Tween(a,{Scale=V3.N(1,.1,1)},.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,true)
			Tween(b,{Scale=V3.N(1,.1,1)},.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,true)
		until nil
	end)()
end)

coroutine.wrap(function()
	repeat
		swait()
		WingsColor(Black)
	until nil
end)()
Effect{
	Effect='ResizeAndFade',
	Color=Black,
	Size=V3.N(1,2,1),
	Material=Enum.Material.Neon,
	Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976',Offset=V3.N(0,0,-.125)},
	Frames=75,
	RotInc={0,M.R(2),0},
	CFrame=Root.CFrame*CF.N(0,-2.5,0),
	FXSettings = {
		EndSize = V3.N(45,30,45)
	}
}

Effect{
	Effect='ResizeAndFade',
	Color=Black,
	Size=V3.N(1.25,2.25,1.25),
	Material=Enum.Material.Neon,
	Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976',Offset=V3.N(0,0,-.125)},
	Frames=75,
	RotInc={0,M.R(-4),0},
	CFrame=Root.CFrame*CF.N(0,-2.5,0),
	FXSettings = {
		EndSize = V3.N(45.25,30.25,45.25)
	}
}


for i = 0, 12, 0.1 do
	swait()
	Hum.WalkSpeed = WalkSpeed
	Sine = Sine + .75
	local Alpha = .1
	RJ.C0 = clerp(RJ.C0,CFrame.new(3.20564755e-13, 0.00629413966+.05*M.C(Sine/8), -4.88442311e-07, 1, 5.09317033e-11, 0, -4.35882441e-11, 0.999980271, -0.00628614612, 0, 0.00628616195, 0.999982595),Alpha)
	LH.C0 = clerp(LH.C0,CFrame.new(-0.496488243, -0.990815699-.05*M.C(Sine/8), 0.0216228105, 0.999878287, -2.22119922e-09, 0.0156120937, -9.81379053e-05, 0.999980271, 0.00628539547, -0.0156118199, -0.00628614612, 0.999860764),Alpha)
	RH.C0 = clerp(RH.C0,CFrame.new(0.498538375, -0.990979612-.05*M.C(Sine/8), 0.0154671557, 0.986496866, 1.87209643e-08, -0.163780421, 0.00102892693, 0.999980271, 0.00619763741, 0.163777411, -0.00628245994, 0.986478508),Alpha)
	LS.C0 = clerp(LS.C0,CFrame.new(-1.4262656, 0.582470179+.05*M.C(Sine/8), 0.0189987384, 0.986158848, 0.165066898, 0.0156112732, -0.165180489, 0.986243367, 0.00628170185, -0.0143596325, -0.00877342932, 0.999859571)*CF.A(M.R(0-7*M.S(Sine/16)),0,M.R(0-5*M.C(Sine/16))),Alpha)
	RS.C0 = clerp(RS.C0,CFrame.new(1.48594272, 0.540132999+.05*M.C(Sine/8), -0.0262069479, 0.992103875, -0.124443792, 0.0156112732, 0.124359176, 0.992217422, 0.00628170185, -0.0162715111, -0.00429068506, 0.999859571)*CF.A(M.R(0-5*M.C(Sine/18)),0,M.R(0+5*M.C(Sine/16))),Alpha)
	NK.C0 = clerp(NK.C0,CFrame.new(6.19958155e-06, 1.49894857, -0.0144036785, 1, 3.67697794e-07, -1.62981451e-07, -3.56478267e-07, 0.997964799, 0.0637683496, 1.8440187e-07, -0.0637684688, 0.997967064),Alpha)
end

for i = 0, 4, 0.1 do
	swait()
	local Alpha = .1
	RJ.C0 = clerp(RJ.C0,CFrame.new(2.74488765e-13, 0.00628770282, -5.28903911e-07, 1.00000012, 4.36557457e-11, 0, -4.36557457e-11, 0.999980271, -0.00628614705, 0, 0.00628614752, 0.999980211),Alpha)
	LH.C0 = clerp(LH.C0,CFrame.new(-0.496488452, -0.990810454, 0.0216208361, 0.999878168, -2.22921415e-09, 0.0156120919, -9.81376725e-05, 0.999980271, 0.00628538104, -0.0156117827, -0.00628614705, 0.999858379),Alpha)
	RH.C0 = clerp(RH.C0,CFrame.new(0.498536468, -0.990973771, 0.0154611906, 0.999878168, -2.22921415e-09, 0.0156120919, -9.81376725e-05, 0.999980271, 0.00628538104, -0.0156117827, -0.00628614705, 0.999858379),Alpha)
	LS.C0 = clerp(LS.C0,CFrame.new(-1.44763875, 0.567244649, 0.019428825, 0.992014706, 0.125152826, 0.0156120332, -0.125262916, 0.992103755, 0.00628231093, -0.0147025064, -0.00818775315, 0.999858379),Alpha)
	RS.C0 = clerp(RS.C0,CFrame.new(1.11417818, 0.317672819, -0.0190038979, 0.635636926, -0.77183044, 0.0156120332, 0.77184689, 0.635777533, 0.00628231093, -0.0147746578, 0.00805683061, 0.999858379),Alpha)
	NK.C0 = clerp(NK.C0,CFrame.new(0.108724356, 1.45798552, -0.138908237, 0.511199892, 0.160948887, -0.844257236, 0.117269851, 0.960059941, 0.254032701, 0.8514238, -0.228867367, 0.471908092),Alpha)
	HW.C0 = clerp(HW.C0,CFrame.new(0.676509261, 0.226546526, 0.215793028, 0.305675745, 0.442692071, -0.842962742, -0.269992471, 0.889299512, 0.369121492, 0.913053453, 0.114762112, 0.39136073),Alpha)
end
for i = 1, 0, -.05 do
	for _,v in next, Scythe:children() do
		if(v:IsA'BasePart' and v ~= Hitbox)then
			v.Transparency = i
		end
	end
	swait()
end

for _,v in next, Scythe:children() do
	if(v:IsA'BasePart' and v ~= Hitbox)then
		v.Transparency = 0
	end
end

WalkSpeed = 10

--// Attack Functions \\--

function Punch()
	Attack = true
	NeutralAnims = false
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0789514706, 0.00628891867, -0.0925023109, 0.0533091128, 0.0062750699, 0.998562098, 3.09625534e-06, 0.999981046, -0.006284073, -0.998584211, 0.000337963982, 0.0533076562),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490628, -0.990814447, 0.0215878114, 0.999878347, 4.62079406e-08, 0.0156166591, -9.81283374e-05, 0.99998033, 0.00628320919, -0.0156163946, -0.00628389511, 0.999858499),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498514563, -0.990978837, 0.0154212704, 0.999878347, 4.62079406e-08, 0.0156166591, -9.81283374e-05, 0.99998033, 0.00628320919, -0.0156163946, -0.00628389511, 0.999858499),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-0.956101894, 0.564983606, -0.87824589, 0.422763139, -0.88666755, 0.187330216, 0.154130876, -0.133350402, -0.979010463, 0.89303726, 0.442762941, 0.0802871212),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33429492, 0.392465949, -0.0583952218, 0.203448325, -0.978246927, 0.0405244008, 0.972459793, 0.197091028, -0.124407344, 0.113714136, 0.0647188276, 0.99140358),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0831892416, 1.49950659, 0.0740900636, 0.0533089638, 0.0574148037, -0.996932089, 0.00627471274, 0.998307765, 0.05782938, 0.998562157, -0.00933811814, 0.052857995),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676506758, 0.226543918, 0.21578081, 0.305678427, 0.442688584, -0.842963517, -0.269992143, 0.88930124, 0.369117767, 0.913052797, 0.114762299, 0.391362607),Alpha)
	end
	PunchT.Enabled = true
	Sound(LArm,536642316,1,2,false,true,true)
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		AOEDamage(LArm.Position,2,15,30,0,'Normal',10,2,false)
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00304359547, 0.00628888234, 0.0436883941, -0.0405170843, -0.00627878495, -0.999162614, -3.05456138e-06, 0.999981046, -0.0062838071, 0.999184728, -0.000251606398, -0.0405159071),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490449, -0.990814805, 0.0215896256, 0.999878109, 0, 0.0156217292, -9.8165794e-05, 0.99998033, 0.0062831589, -0.0156214274, -0.00628392445, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498522311, -0.990979552, 0.0154257081, 0.999878109, 0, 0.0156217292, -9.8165794e-05, 0.99998033, 0.0062831589, -0.0156214274, -0.00628392445, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.25896621, 0.507555962, 0.0405550376, 0.0249361806, 0.982360721, -0.185325593, -0.0769668072, -0.182946414, -0.980105519, -0.996721864, 0.0387040041, 0.0710471869),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33430004, 0.392463893, -0.0583999716, 0.203448817, -0.97824645, 0.0405278131, 0.972459912, 0.197091326, -0.124406442, 0.11371246, 0.064722009, 0.991403401),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0487540588, 1.49897563, -0.0104950108, -0.0405169129, -0.0574492738, 0.997531652, -0.00627914304, 0.99834168, 0.0572407991, -0.999162734, -0.00394439697, -0.040809989),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676505685, 0.226552293, 0.215783596, 0.305677891, 0.442688406, -0.842963934, -0.269994408, 0.889300883, 0.369116426, 0.913052142, 0.114764839, 0.391363055),Alpha)
	end
	PunchT.Enabled = false
	Attack = false
	NeutralAnims = true
	Combo = 2
end

function Kick()
	Attack = true
	NeutralAnims = false
	KickT.Enabled = true
	WalkSpeed = 2
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00529359467, -0.0957253724, -0.476031482, 0.999953091, -0.00882441457, 0.00507242884, 0.00444904482, 0.827165425, 0.561945021, -0.00915619731, -0.56189549, 0.827164888),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497548699, -0.995493114, -0.112597167, 0.999888778, 0.00444900105, 0.0142405648, 0.00432288321, 0.827161849, -0.561947286, -0.0142793562, 0.561946273, 0.827050626),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498985589, -0.892218173, 0.0456022024, 0.99987781, -0.00899596326, 0.012781553, -9.7240074e-05, 0.814164102, 0.580635071, -0.0156296529, -0.580565333, 0.814063787),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.45120275, 0.577238321, 0.0194108374, 0.983973265, 0.177630454, 0.0156233013, -0.177745238, 0.984056652, 0.00627993234, -0.0142587181, -0.00895620324, 0.99985826),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33430183, 0.39246124, -0.0583900288, 0.203447983, -0.97824645, 0.0405309275, 0.972459853, 0.197089955, -0.124409124, 0.113714546, 0.0647254884, 0.991402984),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.00189875509, 1.49909914, 0.0100648999, 0.9999699, 0.000446120102, -0.00775879063, 4.95645872e-05, 0.99796474, 0.0637695193, 0.00777144916, -0.0637679845, 0.99793452),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676504672, 0.226539731, 0.215754136, 0.305676967, 0.442690551, -0.842963159, -0.269992441, 0.889300168, 0.369119704, 0.913053036, 0.114762299, 0.391361624),Alpha)
	end
	
	Sound(RLeg,536642316,1,2,false,true,true)
	for i = 0, 1, 0.1 do
		swait()
		AOEDamage(RLeg.Position,2,15,30,0,'Normal',10,2,false)
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00722559355, -0.249281824, 0.325759679, 0.999966681, 0.0056294878, 0.0067008147, -0.00280297617, 0.931340098, -0.364145935, -0.00829232018, 0.364114493, 0.931323826),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497003227, -0.808224082, -0.0438566208, 0.999882162, -0.00280300085, 0.0151045416, -0.00288998778, 0.931339145, 0.364141613, -0.0150881391, -0.364142269, 0.931221247),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49894613, -1.23073387, 0.0456367731, 0.99987793, 0.012976733, 0.00871029124, -9.59954341e-05, 0.562405646, -0.826861501, -0.0156286769, 0.826759636, 0.562338233),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.4511981, 0.5772475, 0.0194011405, 0.983972013, 0.177638128, 0.0156237073, -0.177752912, 0.984055161, 0.00628091441, -0.0142588606, -0.00895743817, 0.99985832),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33430433, 0.39245528, -0.0584036149, 0.203451529, -0.978246152, 0.0405242294, 0.972458541, 0.197093993, -0.124412477, 0.113718912, 0.0647200271, 0.991402864),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.00189117086, 1.49909687, 0.0100582615, 0.9999699, 0.000451112981, -0.00776725356, 4.51168817e-05, 0.997964799, 0.0637689829, 0.00778021105, -0.0637674183, 0.997934639),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676509142, 0.226537436, 0.215762958, 0.305677801, 0.442690402, -0.842962921, -0.269996017, 0.889299929, 0.369117856, 0.913051724, 0.114765473, 0.3913638),Alpha)
	end
	WalkSpeed = 10
	KickT.Enabled = false
	Attack = false
	NeutralAnims = true
	Combo = 3
end

function Spin_Scythe()
	Attack = true
	NeutralAnims = false
	SlashT.Enabled = true
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00444369018, 0.00629113195, 0.101713151, 0.0195403937, 0.0062817093, 0.999792278, 3.06150469e-06, 0.99998033, -0.00628294982, -0.999814987, 0.000125763705, 0.0195400435),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496482044, -0.990811586, 0.0216401666, 0.999878228, 0, 0.015617365, -9.8122182e-05, 0.99998033, 0.00628212467, -0.0156170577, -0.00628288975, 0.999858439),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498526812, -0.990976453, 0.0154717192, 0.999878228, 0, 0.015617365, -9.8122182e-05, 0.99998033, 0.00628212467, -0.0156170577, -0.00628288975, 0.999858439),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.56110322, 0.536371112, 0.021401234, 0.96306026, 0.26883316, 0.0156157482, -0.268955141, 0.963132203, 0.00628496706, -0.0133504234, -0.0102527365, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.25914538, 0.465895861, -0.0174790788, 0.0534170046, -0.997989595, 0.0341100171, 0.99850744, 0.0529925451, -0.0132293571, 0.0113951834, 0.0347657688, 0.99933064),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.1067672, 1.49899662, -0.00705452403, 0.019540213, 0.0574855059, -0.998160839, 0.00628135167, 0.998319268, 0.0576175004, 0.999792278, -0.00739560742, 0.0191463307),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.20473817, -0.976805627, -2.4829669, -1.00000012, -1.86264515e-09, -4.60762095e-10, -3.55407613e-11, 1.92904554e-06, -0.99999994, 0, -1.00000024, -1.92915309e-06),Alpha)
	end
	coroutine.wrap(function()
		repeat swait()
			AOEDamage(Hitbox.Position,2,20,45,'Normal',0,25,2,true)
		until not Attack
	end)()
	HW.C1 = CF.N(0,-1.2,0)
	for a = 1, 3 do
		Sound(Hitbox,62339698,.5,2,false,true,true)
		--PlaySnd(ClawDashSnd,HandlePart)
		for i = 0, 350, 25 do
			swait()
			HW.C0 = CF.fEA(M.R(-i),0,0)
		end
	end
	HW.C1 = CF.N()
	Attack = false
	NeutralAnims = true	
	SlashT.Enabled =false
	Combo = 4
end

function Smash()
	Attack = true
	NeutralAnims = false
	local Active = true
	coroutine.wrap(function()
		repeat swait()
			AOEDamage(Hitbox.Position,2,20,45,'Normal',0,25,2,true)
		until not Active
	end)()
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00199523382, -0.0805450231, 0.127762675, 1.00000024, 0.00228078687, -0.000182923861, -0.00228199991, 0.988302112, -0.152492076, -0.000167017803, 0.152492911, 0.988310456),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496401608, -0.91178906, 0.0269002318, 0.99988097, -0.00228199991, 0.0154450079, -0.0001002106, 0.988302112, 0.152509913, -0.0156124048, -0.152492076, 0.988187075),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498625368, -0.910582304, 0.0206506848, 0.99988097, -0.00228199991, 0.0154450079, -0.0001002106, 0.988302112, 0.152509913, -0.0156124048, -0.152492076, 0.988187075),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-0.546162367, 0.920914531, -0.420199156, 0.948534131, -0.316357106, -0.0141890598, -0.292467386, -0.857963502, -0.422328979, 0.121433057, 0.404743224, -0.906331718),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(0.676435173, 1.05489874, -0.363975257, 0.908406317, 0.366589606, 0.201022446, 0.417750508, -0.776536345, -0.471673697, -0.0168094635, 0.512448609, -0.858553469),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(9.05999332e-06, 1.49894691, -0.0143974051, 1, 5.82076609e-11, 0, -1.45519152e-11, 0.997964799, 0.0637693182, 0, -0.0637693331, 0.99796474),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.14871791, -0.529287696, -1.42314053, -0.930846035, -4.50015068e-06, 0.365411818, -0.349368632, 0.293066084, -0.889974117, -0.107085794, -0.956092298, -0.272800893),Alpha)
	end
	repeat swait()
			local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	until hitfloor
	WalkSpeed = 0
	Hum.JumpPower = 0
	Sound(Hitbox,62339698,.3,2,false,true,true)
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00811180193, -1.00093806, -0.519590676, 1, -0.00242613931, -0.000173866749, 0.00242500077, 0.988869131, 0.148768216, -0.000189000741, -0.148769096, 0.988877892),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.502352417, 0.0719482899, -0.36048314, 0.999881089, 0.00242500077, 0.0154230241, -0.000103260259, 0.988869131, -0.148788825, -0.0156122074, 0.148768216, 0.98875457),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.496492803, -1.52589762, -0.111477256, 0.999878228, -0.0146477707, 0.00540301111, -0.000103216058, 0.339860469, 0.940475941, -0.0156121422, -0.940361977, 0.339817584),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-0.72667861, 0.365247965, -0.462653339, 0.946573675, -0.322109699, 0.0156161264, 0.322384953, 0.946385086, -0.0205740202, -0.00815176871, 0.024509253, 0.999666572),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(0.492744535, 0.277959853, -0.608404338, 0.905526519, 0.35676235, 0.22965765, -0.376292914, 0.925347328, 0.0462170765, -0.196024567, -0.128269315, 0.972173631),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.57362392e-05, 1.49894822, -0.0143816993, 1.00000024, 4.07453626e-10, 0, 3.20142135e-10, 0.997964859, 0.0637664497, 0, -0.0637664497, 0.997965097),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.148718655, -0.52928853, -1.42314029, -0.930842996, -1.2665987e-05, 0.365419656, -0.349378467, 0.293065071, -0.889970601, -0.107080489, -0.956092477, -0.272801965),Alpha)
	end
	Hitbox.Anchored = true
	Effect{
		Effect='ResizeAndFade',
		Color=Black,
		Size=V3.N(1,2,1),
		Material=Enum.Material.Neon,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976',Offset=V3.N(0,0,-.125)},
		Frames=120,
		RotInc={0,M.R(2),0},
		CFrame=Hitbox.CFrame*CF.N(0,0,0)*CF.A(M.R(90),0,0),
		FXSettings = {
			EndSize = V3.N(25,30,25)
		}
	}
	Effect{
		Effect='ResizeAndFade',
		Color=Black,
		Size=V3.N(1.25,2.25,1.25),
		Material=Enum.Material.Neon,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976',Offset=V3.N(0,0,-.125)},
		Frames=120,
		RotInc={0,M.R(-4),0},
		CFrame=Hitbox.CFrame*CF.N(0,0,0)*CF.A(M.R(90),0,0),
		FXSettings = {
			EndSize = V3.N(25.25,30.25,25.25)
		}
	}
	CamShakeAll(45,450,Hitbox.Position)
	Active = false
	AOEDamage(Hitbox.Position,25.25,45,85,100,'Knockback',25,2,true,true,100)
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00811180193, -1.00093806, -0.519590676, 1, -0.00242613931, -0.000173866749, 0.00242500077, 0.988869131, 0.148768216, -0.000189000741, -0.148769096, 0.988877892),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.502352417, 0.0719482899, -0.36048314, 0.999881089, 0.00242500077, 0.0154230241, -0.000103260259, 0.988869131, -0.148788825, -0.0156122074, 0.148768216, 0.98875457),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.496492803, -1.52589762, -0.111477256, 0.999878228, -0.0146477707, 0.00540301111, -0.000103216058, 0.339860469, 0.940475941, -0.0156121422, -0.940361977, 0.339817584),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-0.72667861, 0.365247965, -0.462653339, 0.946573675, -0.322109699, 0.0156161264, 0.322384953, 0.946385086, -0.0205740202, -0.00815176871, 0.024509253, 0.999666572),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(0.492744535, 0.277959853, -0.608404338, 0.905526519, 0.35676235, 0.22965765, -0.376292914, 0.925347328, 0.0462170765, -0.196024567, -0.128269315, 0.972173631),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.57362392e-05, 1.49894822, -0.0143816993, 1.00000024, 4.07453626e-10, 0, 3.20142135e-10, 0.997964859, 0.0637664497, 0, -0.0637664497, 0.997965097),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.148718655, -0.52928853, -1.42314029, -0.930842996, -1.2665987e-05, 0.365419656, -0.349378467, 0.293065071, -0.889970601, -0.107080489, -0.956092477, -0.272801965),Alpha)
	end
	Hitbox.Anchored = false
	WalkSpeed = 10
	Hum.JumpPower = 50
	Attack = false
	NeutralAnims = true
	Combo = 1
end

function CarnageSaw()
	Attack = true
	NeutralAnims = false
	chatfunc"Carnage Saw."
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00166031998, 0.00629009586, 0.011258143, 0.958218634, -0.00179760705, -0.286043704, -8.72771693e-07, 0.999981046, -0.00628719619, 0.286049575, 0.00602470944, 0.958202064),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496496171, -0.99081707, 0.0215899553, 0.999878109, 0, 0.0156224966, -9.81757184e-05, 0.99998033, 0.00628349604, -0.0156221688, -0.00628426159, 0.99985832),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498510689, -0.990981698, 0.0154126342, 0.999878109, 0, 0.0156224966, -9.81757184e-05, 0.99998033, 0.00628349604, -0.0156221688, -0.00628426159, 0.99985832),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-0.873806179, 0.397600949, -0.503744602, 0.554795325, -0.815766454, -0.16348508, 0.18635428, 0.313351184, -0.931173205, 0.810847938, 0.486144245, 0.325867295),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33429587, 0.392459571, -0.0584158525, 0.203444242, -0.978247643, 0.040526405, 0.972460866, 0.19708696, -0.124406032, 0.113712654, 0.0647200197, 0.99140352),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.00623096712, 1.4988898, -0.0245094746, 0.958218753, -0.0164463911, 0.285576135, -0.00179796375, 0.997980893, 0.0635067299, -0.286043525, -0.0613668934, 0.956255496),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676512122, 0.226547047, 0.215798661, 0.30567646, 0.442693174, -0.842962027, -0.269994497, 0.889298856, 0.36912173, 0.913052678, 0.114763223, 0.391362309),Alpha)
	end
	local StudsPerFrame = 1
	for i = -2,2,2 do
		
		local cfaa = (CF.N(Root.CFrame.p,Root.CFrame.lookVector))*CF.N(0,0,-1)
		local dir = Root.CFrame*CF.N(0,0,-1000000).p
		local saw = Part(Effects,BrickColor.new(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),Enum.Material.Neon,V3.N(3,3,.4),cfaa*CF.A(M.R(-90),0,0),true,false)
		CreateTrailObj(saw,(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),(Plr.UserId == 5719877 and "Dark indigo" or "Really red"),0,0).Enabled = true
		Sound(saw,248088589,1,2,true,false,true)
		Sound(saw,536642316,1,2,false,true,true)
		local mesh = Mesh(saw,Enum.MeshType.FileMesh,"rbxassetid://74322089","",V3.N(3,3,2),V3.N())
		coroutine.wrap(function()
			for fr = 0, 180 do
				saw.CFrame = CF.N(saw.CFrame.p,dir)*CF.N(i/20,0,-StudsPerFrame)*CF.A(M.R(-90),0,0)*CF.A(0,0,M.R(fr*4))
				AOEDamage(saw.Position,3,1,1,60,'Knockback',0,1,true,saw)
				swait()
			end
			saw:destroy()
			AOEDamage(saw.Position,4,25,50,60,'Knockback',10,4,true)
			Effect{
				Effect='ResizeAndFade',
				Color=BrickColor.new(Plr.UserId == 5719877 and "Dark indigo" or "Crimson"),
				Size=V3.N(2,2,2),
				Mesh={MeshType=Enum.MeshType.Sphere},
				CFrame=saw.CFrame,
				FXSettings={
					EndSize=V3.N(.05,.05,.05),
					EndIsIncrement=true
				}
			}
			for i = 1, 5 do
				local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
				Effect{
					Effect='Fade',
					Frames=65,
					Size=V3.N(2,2,4),
					CFrame=CF.N(saw.CFrame*angles*CF.N(0,0,-2).p,saw.CFrame.p),
					Mesh = {MeshType=Enum.MeshType.Sphere},
					Material=Enum.Material.Neon,
					Color=BrickColor.new(Plr.UserId == 5719877 and "Dark indigo" or "Crimson"),
					MoveDirection=CF.N(saw.CFrame*angles*CF.N(0,0,-50).p,saw.CFrame.p).p,
				}	
			end
		end)()
	end
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0120823281, 0.00629023649, -0.0454679728, 0.975261807, 0.00138908508, 0.221064806, 6.77514436e-07, 0.999981046, -0.00628646137, -0.221070215, 0.00613104552, 0.975244701),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496495157, -0.99081707, 0.0215903148, 0.999878049, 0, 0.0156247914, -9.81779303e-05, 0.99998033, 0.00628271, -0.0156244934, -0.00628347602, 0.99985826),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49850738, -0.990981698, 0.0154126538, 0.999878049, 0, 0.0156247914, -9.81779303e-05, 0.99998033, 0.00628271, -0.0156244934, -0.00628347602, 0.99985826),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.39933538, 0.65219146, -0.0398524441, 0.0447849482, 0.985531449, -0.163469523, -0.336975813, -0.139140502, -0.931175351, -0.940447569, 0.0967878923, 0.325868785),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33429313, 0.39245826, -0.0584200248, 0.20344235, -0.978247762, 0.0405284315, 0.972461164, 0.197084755, -0.1244075, 0.113713816, 0.0647220761, 0.991403103),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00283931568, 1.49924982, 0.0327365696, 0.975261748, 0.0127110416, -0.22070463, 0.00138872874, 0.997974694, 0.0636128932, 0.221065, -0.0623458065, 0.97326988),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676513791, 0.22654593, 0.2158079, 0.305676162, 0.442694992, -0.842961133, -0.269993126, 0.889297962, 0.369124174, 0.913052976, 0.114761189, 0.391361833),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function LayWaste()
	Attack = true
	NeutralAnims = false
	chatfunc("Lay waste.")
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00304359547, 0.00628888234, 0.0436883941, -0.0405170843, -0.00627878495, -0.999162614, -3.05456138e-06, 0.999981046, -0.0062838071, 0.999184728, -0.000251606398, -0.0405159071),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490449, -0.990814805, 0.0215896256, 0.999878109, 0, 0.0156217292, -9.8165794e-05, 0.99998033, 0.0062831589, -0.0156214274, -0.00628392445, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498522311, -0.990979552, 0.0154257081, 0.999878109, 0, 0.0156217292, -9.8165794e-05, 0.99998033, 0.0062831589, -0.0156214274, -0.00628392445, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.25896621, 0.507555962, 0.0405550376, 0.0249361806, 0.982360721, -0.185325593, -0.0769668072, -0.182946414, -0.980105519, -0.996721864, 0.0387040041, 0.0710471869),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33430004, 0.392463893, -0.0583999716, 0.203448817, -0.97824645, 0.0405278131, 0.972459912, 0.197091326, -0.124406442, 0.11371246, 0.064722009, 0.991403401),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0487540588, 1.49897563, -0.0104950108, -0.0405169129, -0.0574492738, 0.997531652, -0.00627914304, 0.99834168, 0.0572407991, -0.999162734, -0.00394439697, -0.040809989),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(0.676505685, 0.226552293, 0.215783596, 0.305677891, 0.442688406, -0.842963934, -0.269994408, 0.889300883, 0.369116426, 0.913052142, 0.114764839, 0.391363055),Alpha)
	end
	Sound(LArm,137463716,.3,5,false,true,true)
	for i = 0, 1, .1 do
		swait(6)
		for i = 1, 3 do
			--[[Effect{
				Effect='ResizeAndFade',
				Frames=15,
				Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://3270017'},
				Color=Black,
				Size=V3.N(10,10,1),
				CFrame=LArm.CFrame*CF.N(0,-1,0)*CF.fEA(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),
				FXSettings={
					EndSize=V3.N(5,5,0)
				}
			}]]
			local what = Part(Effects,Black,Enum.Material.Neon,V3.N(1,1,1),LArm.CFrame*CF.N(0,-1,0)*CF.fEA(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),true,false)
			local mesh = Mesh(what,Enum.MeshType.FileMesh,'rbxassetid://3270017',"",V3.N(10,10,1),V3.N())
			coroutine.wrap(function()
				for i = 0, 15 do
					local wa = i/15
					swait()
					what.Transparency = wa
					mesh.Scale = V3.N(10-wa*5,10-wa*5,1-wa)
				end
			end)()
		end
	end
	swait(60)
	local EffectPart = Instance.new("Part",Effects)
	EffectPart.Size = Vector3.new(1,1,1)
	EffectPart.Anchored = true
	EffectPart.Color = Black
	local mehs1 = Instance.new("SpecialMesh",EffectPart)
	mehs1.MeshType = "Sphere"
	mehs1.Scale = Vector3.new(10,10,10)
	
	

	local hit,pos,norm,dist = CastRay(LArm.CFrame*CF.N(0,-1,0).p,Mouse.Hit.p,1024)
	EffectPart.CFrame = CF.N(pos)
	
	local part = Part(Effects,Black,Enum.Material.Neon,V3.N(5,5,dist),CF.N(LArm.CFrame*CF.N(0,-1,0).p,pos)*CF.N(0,0,-dist/2),true,false)
	local meshla = Mesh(part,Enum.MeshType.Brick)
	
	Root.CFrame = CF.N(Root.Position,V3.N(Mouse.Hit.X,Root.CFrame.Y,Mouse.Hit.Z))
	if(S.UserInputService:IsKeyDown(Enum.KeyCode.X))then
		local asdie = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
		local asd = Part(Effects,Black,Enum.Material.Neon,V3.N(6,6,6),LArm.CFrame*CF.N(0,-1,0)*asdie,true,false)
		
		local asdaa = CF.A(M.RRNG(-4,4),M.RRNG(-4,4),M.RRNG(-4,4))
		local snd = Sound(LArm,162246683,.8,2,true,false,true)
		Sound(LArm,162246701,.8,2,false,true,true)
		repeat swait()
			asdie = asdie * asdaa
			asd.CFrame = LArm.CFrame*CF.N(0,-1,0)*asdie
			Root.CFrame = CF.N(Root.Position,V3.N(Mouse.Hit.X,Root.CFrame.Y,Mouse.Hit.Z))
			hit,pos,norm,dist = CastRay(LArm.CFrame*CF.N(0,-1,0).p,Mouse.Hit.p,1024)
			part.Size = V3.N(5,5,dist)
			part.CFrame = CF.N(LArm.CFrame*CF.N(0,-1,0).p,pos)*CF.N(0,0,-dist/2)
			CamShakeAll(25,100,pos)
			AOEDamage(pos,15,30,65,25,'Knockback',25,2,true,25)
			
			EffectPart.CFrame = CF.N(pos)
			for i = 1, 3 do
				Effect{
					Effect='ResizeAndFade',
					Frames=30,
					Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://3270017'},
					Color=Black,
					Size=V3.N(0,0,0),
					CFrame=CF.N(pos)*CF.fEA(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),
					FXSettings={
						EndSize=V3.N(80,80,1)
					}
				}
				--[[local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
				Effect{
					Effect='Fade',
					Frames=65,
					Size=V3.N(10,10,15),
					CFrame=CF.N(EffectPart.CFrame*angles*CF.N(0,0,-10).p,EffectPart.CFrame.p),
					Mesh = {MeshType=Enum.MeshType.Sphere},
					Material=Enum.Material.Neon,
					Color=Black,
					MoveDirection=CF.N(EffectPart.CFrame*angles*CF.N(0,0,-50).p,EffectPart.CFrame.p).p,
				}]]
			end

		until not S.UserInputService:IsKeyDown(Enum.KeyCode.X)
		asd:destroy()
		snd:Stop()
		snd:Destroy()
		Sound(LArm,178452221,.5,2,false,true,true)
	else
		CamShakeAll(60,300,pos)
		AOEDamage(pos,15,30,65,25,'Knockback',25,2,true,25)
		Sound(LArm,178452221,.5,2,false,true,true)
	end
	
	for i = 1, 3 do
		Effect{
			Effect='ResizeAndFade',
			Frames=30,
			Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://3270017'},
			Color=Black,
			Size=V3.N(0,0,0),
			CFrame=CF.N(pos)*CF.fEA(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),
			FXSettings={
				EndSize=V3.N(80,80,1)
			}
		}
		local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
		Effect{
			Effect='Fade',
			Frames=65,
			Size=V3.N(10,10,15),
			CFrame=CF.N(EffectPart.CFrame*angles*CF.N(0,0,-10).p,EffectPart.CFrame.p),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=Black,
			MoveDirection=CF.N(EffectPart.CFrame*angles*CF.N(0,0,-50).p,EffectPart.CFrame.p).p,
		}
	end
	
	coroutine.wrap(function()
		for i = 1, 10 do
			swait(.6)
			mehs1.Scale = mehs1.Scale + Vector3.new(.5,.5,.5)
			EffectPart.Transparency = EffectPart.Transparency + .1
			meshla.Scale = meshla.Scale + Vector3.new(.25,.25,0)
			part.Transparency = part.Transparency + .1
		end
		----
		EffectPart:destroy()
		part:Destroy()
	end)()

	Attack = false
	NeutralAnims = true
	
end

--// Wrap it all up \\--
Mouse.Button1Down:connect(function()
	if(Attack)then return end
	if(Combo == 1)then Punch() 
	elseif(Combo == 2)then Kick() 
	elseif(Combo == 3)then Spin_Scythe() 
	elseif(Combo == 4)then Smash() 
	end
end)
Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'z')then CarnageSaw() end
	if(k == 'x')then LayWaste() end
end)



while true do
	swait()
	Sine = Sine + Change
	
	if(God)then
		Hum.MaxHealth = 1e100
		Hum.Health = 1e100
		if(not Char:FindFirstChildOfClass'ForceField')then IN("ForceField",Char).Visible = false end
		Hum.Name = M.RNG()*100
	end
	
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	S.Lighting.ClockTime = 23
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and (Hum.WalkSpeed < 16 and "Walk" or "Run") or hitfloor and "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end																																																																																																				
	if(State == 'Run')then
		local wsVal = 20 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
		Change = 3
		RH.C1 = RH.C1:lerp(CF.N(0,1,0)*CF.N(0,0-.2*M.C(Sine/wsVal),0+.4*M.C(Sine/wsVal))*CF.A(M.R(15+25*M.C(Sine/wsVal))+-M.S(Sine/wsVal),0,0),Alpha)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0)*CF.N(0,0+.2*M.C(Sine/wsVal),0-.4*M.C(Sine/wsVal))*CF.A(M.R(15-25*M.C(Sine/wsVal))+M.S(Sine/wsVal),0,0),Alpha)	
	elseif(State == 'Walk')then
		local wsVal = 16 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.3 * (Hum.WalkSpeed/8),1)
		Change = 3
		RH.C1 = RH.C1:lerp(CF.N(0,1,0)*CF.N(0,0-.5*M.C(Sine/wsVal)/2,0+.6*M.C(Sine/wsVal)/2)*CF.A(M.R(15-2*M.C(Sine/wsVal))+-M.S(Sine/wsVal)/2.5,0,0),Alpha)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0)*CF.N(0,0+.5*M.C(Sine/wsVal)/2,0-.6*M.C(Sine/wsVal)/2)*CF.A(M.R(15+2*M.C(Sine/wsVal))+M.S(Sine/wsVal)/2.5,0,0),Alpha)	
	
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.2)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.2)
	end	

	Hum.WalkSpeed = WalkSpeed
	
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			Change = .75
			RJ.C0 = clerp(RJ.C0,CFrame.new(0.0161979627, 0.00629048189+.05*M.C(Sine/16), 0.0263271146, 0.967543304, 0.00158750638, 0.252711803, 7.73640579e-07, 0.99998033, -0.00628472166, -0.252717555, 0.00608088495, 0.967527032),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.496488541, -0.990815997-.05*M.C(Sine/16), 0.0215871073, 0.999878109, 0, 0.0156181455, -9.81093617e-05, 0.99998033, 0.00628099358, -0.0156178474, -0.00628175866, 0.999858379),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.498514056, -0.990980744-.05*M.C(Sine/16), 0.0154198771, 0.999878109, 0, 0.0156181455, -9.81093617e-05, 0.99998033, 0.00628099358, -0.0156178474, -0.00628175866, 0.999858379),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.45119536, 0.577232122, 0.0193972234, 0.983973324, 0.177630529, 0.0156178325, -0.177745119, 0.984056711, 0.00627315417, -0.01425457, -0.00894861668, 0.999858439)*CF.A(M.R(0-7*M.S(Sine/16)),0,M.R(0-5*M.C(Sine/16))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.33430505, 0.39246124, -0.058414869, 0.203444913, -0.978247464, 0.0405245572, 0.972460449, 0.197087735, -0.124407738, 0.113714635, 0.0647187084, 0.991403341)*CF.A(M.R(0-5*M.C(Sine/16)),0,M.R(0+5*M.C(Sine/16))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-0.00775345881, 1.4987644, -0.0438027829, 0.967543304, 0.0145306382, -0.252299607, 0.0015871498, 0.99797684, 0.0635627732, 0.252711982, -0.0619003437, 0.965565085)*CF.A(M.R(0+5*M.C(Sine/16)),0,0),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(0.676509261, 0.226546526, 0.215793028, 0.305675745, 0.442692071, -0.842962742, -0.269992471, 0.889299512, 0.369121492, 0.913053453, 0.114762112, 0.39136073),Alpha)
			
			-- idle
		elseif(State == 'Run')then
			local wsVal = 20 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-15+2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.33431649, 0.392460525, -0.0583885461, 0.203443095, -0.978248179, 0.0405152142, 0.972460985, 0.197087184, -0.124404751, 0.113713697, 0.0647087693, 0.991404116),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(0.676507235, 0.226549655, 0.215789661, 0.305676669, 0.44269371, -0.84296149, -0.26999855, 0.889298022, 0.369120419, 0.913051248, 0.114766926, 0.391364247),Alpha)

		elseif(State == 'Walk')then
			local wsVal = 16 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.3 * (Hum.WalkSpeed/8),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-5-2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.1*M.C(Sine/wsVal))*CF.A(M.R(37*M.C(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.33431649, 0.392460525, -0.0583885461, 0.203443095, -0.978248179, 0.0405152142, 0.972460985, 0.197087184, -0.124404751, 0.113713697, 0.0647087693, 0.991404116),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(0.676507235, 0.226549655, 0.215789661, 0.305676669, 0.44269371, -0.84296149, -0.26999855, 0.889298022, 0.369120419, 0.913051248, 0.114766926, 0.391364247),Alpha)

		elseif(State == 'Jump')then
			local Alpha = .1
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.33431649, 0.392460525, -0.0583885461, 0.203443095, -0.978248179, 0.0405152142, 0.972460985, 0.197087184, -0.124404751, 0.113713697, 0.0647087693, 0.991404116),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(0.676507235, 0.226549655, 0.215789661, 0.305676669, 0.44269371, -0.84296149, -0.26999855, 0.889298022, 0.369120419, 0.913051248, 0.114766926, 0.391364247),Alpha)

		elseif(State == 'Fall')then
			local Alpha = .1
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.33431649, 0.392460525, -0.0583885461, 0.203443095, -0.978248179, 0.0405152142, 0.972460985, 0.197087184, -0.124404751, 0.113713697, 0.0647087693, 0.991404116),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(0.676507235, 0.226549655, 0.215789661, 0.305676669, 0.44269371, -0.84296149, -0.26999855, 0.889298022, 0.369120419, 0.913051248, 0.114766926, 0.391364247),Alpha)

		elseif(State == 'Paralyzed')then
			-- paralyzed
		elseif(State == 'Sit')then
			-- sit
		end
	end
	
end
