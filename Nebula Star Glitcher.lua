
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
--// Shortcut Variables \--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local pl = math.random()
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players
local UIS = S.UserInputService
local CAS = S.ContextActionService

print(UIS,CAS)


--// Initializing \--
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
local PlrGui = Plr:FindFirstChildOfClass'PlayerGui'
local Hue = 0;
local Combo = 1
local BloodPuddles = {}

local DontAttackPlayers = false

local BurnInterval = .7

local Radioactive = {}

local Hits = 0;
local HitTime = time()

local MaxHits = 60;
		
local Effects = IN("Folder",Char)
Effects.Name = "Effects"


--// Output Stuff \--

function Output(type,...)
	warn(table.concat{...,"	"})
end

Output("Note","NEBULAGLITCHER V1.2")
Output("Note","INITIAL CREATION: 11th of May, 2018")
Output("Note","LAST UPDATE: 6th of June, 2018")
Output("Warn","LEGEND:")
Output("Warn","* - Exclusive")
Output("Warn","MODE1 -> MODE2 - Transformation")
Output("Warn","! - Brand new")
Output("Warn","? - Spoiler/Upcoming")
Output("Print","===========================")
Output("Note","! Finally finished the 'demo' modes (The first 6 modes, and The Big Black)")
Output("Print","===========================")
Output("Note","Thank you for supporting the development of NebulaGlitcher!")

--// Debounce System \--

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

--// Instance Creation Functions \--

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
	return Sound,soundPart
end


--// Extended ROBLOX tables \--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Require stuff \--
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

function CamShakeAOE(origin,range,times,intense,blacklist)
	local hit = {}
	for _,v in next, getRegion(origin,range,blacklist or {}) do
		if(S.Players:GetPlayerFromCharacter(v.Parent) and v.Parent and not hit[v.Parent] and v.Parent:FindFirstChildOfClass'Humanoid')then
			CamShake(v,times,intense,origin)
			hit[v.Parent] = true
		end
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

--// Customization \--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new'Really black'
local MusicID = 407749940
local Pitch = 1
local VisSong = 147372923;

local God = false
local Muted = false

local PrimaryParts = {}
local SecondaryParts = {}

local WalkSpeed = 16

local Mode = 1;

--// Weapon and GUI creation, and Character Customization \--




pcall(function()Char.LeftWing:destroy()end)
pcall(function()Char.Halo:destroy()end)
local toggleTag = true
local txt = Instance.new("BillboardGui", PlrGui)
txt.Adornee = Head
txt.Name = "NameDetect"
txt.Size = UDim2.new(4, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10/2, 0, 7/2, 0)
text.FontSize = "Size8"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Fantasy"
text.TextStrokeColor3 = Color3.new(0,0,0)
text.TextColor3 = Color3.new(1,0,0)
text.Text = "Solitude"

pcall(function() Char.ReaperShadowHead.Eye1.BrickColor = BrickColor.new'Black' end)
pcall(function() Char.ReaperShadowHead.Eye2.BrickColor = BrickColor.new'Black' end)

function RecolorTextAndRename(name,col1,col2)
	text.TextStrokeColor3 = col2
	text.TextColor3 = col1
	text.Text = name
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local Feather = New("Model",nil,"Feather",{})
local Main = New("Part",Feather,"Main",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 33.7899933, -0.127610922, 1, 0, 0, 0, -1, 0, 0, 0, -1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
local Meshie = New("SpecialMesh",Main,"Mesh",{MeshType = Enum.MeshType.Brick,})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 33.7899933, 0.144406915, 1, 0, 0, 0, -1, 0, 0, 0, -1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 12.3999977, 10.999999),MeshType = Enum.MeshType.Brick,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0, -0.272017837, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 33.7899933, -0.405595958, -1, 0, 0, 0, -1, 0, 0, 0, 1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 12.3999977, 10.999999),MeshType = Enum.MeshType.Brick,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0, 0.277985036, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 32.7949944, -0.405595958, -1, 0, 0, 0, -1, 0, 0, 0, 1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 27.3999977, 10.999999),MeshType = Enum.MeshType.Wedge,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.994998932, 0.277985036, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 32.7949944, 0.144407034, 1, 0, 0, 0, -1, 0, 0, 0, -1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 27.3999977, 10.999999),MeshType = Enum.MeshType.Wedge,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0.994998932, -0.272017956, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 34.7849922, -0.405595958, 1, 0, 0, 0, 1, 0, 0, 0, 1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 27.3999977, 10.999999),MeshType = Enum.MeshType.Wedge,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C1 = CFrame.new(0, -0.994998932, 0.277985036, 1, 0, 0, 0, -1, 0, 0, 0, -1),})
local CrystalPart = New("Part",Feather,"CrystalPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-1.38499999, 34.7849922, 0.144407034, -1, 0, 0, 0, 1, 0, 0, 0, -1),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
local Meshie = New("SpecialMesh",CrystalPart,"Mesh",{Scale = Vector3.new(1, 27.3999977, 10.999999),MeshType = Enum.MeshType.Wedge,})
local mot = New("Motor",CrystalPart,"wald",{Part0 = CrystalPart,Part1 = Main,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.994998932, -0.272017956, 1, 0, 0, 0, -1, 0, 0, 0, -1),})

for _,v in next, Feather:children() do v.CanCollide = false v.BrickColor = BrickColor.new'Black' v.Material = Enum.Material.Neon v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0) end

local Core = New("Model",Char,"Core",{})

local Core1 = New("Part",Core,"Core1",{BrickColor = BrickColor.new("Black"),CanCollide=false,Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.5, 0.5, 1.04999959),CFrame = CFrame.new(-11.8130245, 33.4548035, 27.3183327, -8.05594027e-08, 8.28877091e-08, 1.00000942, 0.707106829, 0.707106829, 9.31322575e-10, -0.707110167, 0.707110226, 2.70083547e-08),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines})
local CW1 = New("Motor",Core1,"CW1",{Part0 = Core1,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -3.09086197e-08, 0.707106769, -0.707106769, 3.09086197e-08, 0.707106769, 0.707106769, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.0409317017, 0.453670502, -0.00761127472, -0.0156120239, -4.36557457e-11, 0.999880552, -0.0062853382, 0.999980271, -9.81385238e-05, -0.999863088, -0.0062860758, -0.015611751),})

local Core2 = New("Part",Core,"Core2",{BrickColor = BrickColor.new("Black"),CanCollide=false,Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.349999994, 0.349999994, 1.06999981),CFrame = CFrame.new(-11.8130217, 33.4548035, 27.3183327, -8.05594027e-08, 8.28877091e-08, 1.00000942, 0.707106829, 0.707106829, 9.31322575e-10, -0.707110167, 0.707110226, 2.70083547e-08),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
local CW2 = New("Motor",Core2,"CW2",{Part0 = Core2,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -3.09086197e-08, 0.707106769, -0.707106769, 3.09086197e-08, 0.707106769, 0.707106769, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.0409317017, 0.453670502, -0.00761413574, -0.0156120239, -4.36557457e-11, 0.999880552, -0.0062853382, 0.999980271, -9.81385238e-05, -0.999863088, -0.0062860758, -0.015611751),})

local CoreH = NewInstance("Humanoid",Core,{MaxHealth=500,Health=500})

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end

local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendants() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

local Halo = NewInstance("Model",Char,{Name='Halo'})

local LWing = NewInstance("Model",Char,{Name='LeftWing'})
local RWing = NewInstance("Model",Char,{Name='RightWing'})

local LWingEXT = NewInstance("Model",Char,{Name='LeftWingEXT'})
local RWingEXT = NewInstance("Model",Char,{Name='RightWingEXT'})

local LWingWelds = {}
local RWingWelds = {}
	
local LWingEWelds = {}
local RWingEWelds = {}

local HaloHandle = NewInstance("Part",Halo,{Size=V3.N(.05,.05,.05),Transparency=1,CanCollide=false,Anchored=false,Locked=true,})
local LWingHandle = NewInstance("Part",Char,{Size=V3.N(.05,.05,.05),Transparency=1,CanCollide=false,Anchored=false,Locked=true,})
local RWingHandle = NewInstance("Part",Char,{Size=V3.N(.05,.05,.05),Transparency=1,CanCollide=false,Anchored=false,Locked=true,})

for i = 1, 360,5 do
	local part = NewInstance("Part",Halo,{BrickColor=BrickColor.new"Black",Material=Enum.Material.Neon,Size=V3.N(0.25,0.1,0.1),Anchored=false,CanCollide=false,Locked=true})
	local weld = NewInstance("Weld",part,{Part0=HaloHandle,Part1=part,C0=CF.A(0,M.R(i),0)*CF.N(0,0,-1)})
	table.insert(PrimaryParts,part)
end

for i = 1, 6 do
	local cr = Part(Char,BrickColor.new'Black',Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),CF.N(),false,false)
	cr.Transparency = 1
	local fuck = Feather:Clone();
	local men = fuck.Main
	--local mesh = Mesh(cr,Enum.MeshType.FileMesh,'rbxassetid://9756362','',V3.N(.75,2,.2),V3.N())
	local weld1 = Weld(cr,men)
	local weld = Weld(men,LWingHandle)
	if(i > 3)then
		for _,v in next, fuck:children() do v.Parent = LWingEXT v.Transparency = 1 end
	else
		for _,v in next, fuck:children() do v.Parent = LWing end
	end
	
	table.insert(LWingWelds,weld)
	table.insert(PrimaryParts,cr)
end

for i = 1, 6 do
	local cr = Part(Char,BrickColor.new'Black',Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),CF.N(),false,false)
	cr.Transparency = 1
	local fuck = Feather:Clone();
	local men = fuck.Main
	--local mesh = Mesh(cr,Enum.MeshType.FileMesh,'rbxassetid://9756362','',V3.N(.75,2,.2),V3.N())
	local weld1 = Weld(cr,men)
	local weld = Weld(men,RWingHandle)
	
	if(i > 3)then
		for _,v in next, fuck:children() do v.Parent = RWingEXT if(v:IsA'BasePart')then v.Transparency = 1 end end
	else
		for _,v in next, fuck:children() do v.Parent = RWing if(v:IsA'BasePart')then v.Transparency = 1 end end
	end
	table.insert(RWingWelds,weld)
	table.insert(PrimaryParts,cr)
end

for _,v in next, PrimaryParts do
	if(v:IsA'BasePart')then
		v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end		
end

Core1.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
Core2.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)

	
--// Stop animations \--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})
local HW = NewInstance('Motor',Char,{Part0=Torso,Part1=HaloHandle,C0=CF.N(0,1.5,1.5)*CF.A(M.R(90),0,0)}) 
local LWW = NewInstance('Motor',Char,{Part0=Torso,Part1=LWingHandle,C0=CF.N(0,0,1.5)}) 
local RWW = NewInstance('Motor',Char,{Part0=Torso,Part1=RWingHandle,C0=CF.N(0,0,1.5)}) 

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \--

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


--// Effect Function(s) \--

function Kill(whom)
	pcall(function()
		if(GetTorso(whom))then Sound(GetTorso(whom),62339698,.25,2,false,true,true) end
		for _,v in next, whom:children() do
			if(v:IsA'BasePart')then
				print("no")
				v.Parent = Effects
				v.CanCollide = false
				v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
				v.Anchored = false
				local dustT = NewInstance("ParticleEmitter",v,{
					Color = ColorSequence.new(Core2.Color),
					LightEmission=1,
					Size=NumberSequence.new(.75,0),
					Texture="rbxassetid://284205403",
					Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)},
					Lifetime = NumberRange.new(1),
					Rate=250,
					Acceleration=V3.N(0,0,0),
					Speed = NumberRange.new(0),
					Enabled = true
				})
				v.Color = Core2.Color
				v.Material = Enum.Material.Neon
				local bv = NewInstance('BodyPosition',v,{MaxForce=V3.N(150,150,150),D=1000,P=3000,position=v.Position+V3.N(M.RNG(-5,5),M.RNG(-5,5),M.RNG(-5,5))})
				v.Transparency = .25
				coroutine.wrap(function()
					for i = v.Transparency, 1, .01 do
						v.Transparency = i
						swait()
					end
					Sound(v,1192402877,1,1,false,true,true)
					v.Transparency = 1
					dustT.Speed=NumberRange.new(1,5)
					dustT.Acceleration=V3.N(0,10,0)
					dustT.Enabled = false
					S.Debris:AddItem(v,3)
				end)()
			end
		end
	end)
end


function NoobySphere(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*(Range or 0),true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	if(Mode == 6 or Mode == 4 or Mode == 696969)then
		fxP.Color = Core2.Color
	end
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			if(Mode == 6 or Mode == 4 or Mode == 696969)then
				fxP.Color = Core2.Color
			end
			
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			speeder = speeder - 0.01*Speed*Lifetime
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, 0)
			if(fxP.Transparency >= 1)then break end
			swait()
		end
		fxP:destroy()
	end)()
end

function NoobySphere2(Lifetime,Type,Pos,StartSize,Inc,Color,MeshId,NotAffect)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	if(not NotAffect and (Mode == 6 or Mode == 4 or Mode == 696969))then
		fxP.Color = Core2.Color
	end
	local Scale = 1
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
		if(not NotAffect and (Mode == 6 or Mode == 4 or Mode == 696969))then
			fxP.Color = Core2.Color
		end
			
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, Scale*Lifetime)
			swait()
		end
		fxP:destroy()
	end)()
	return fxP
end

function NoobyBlock(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,Fade,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Brick),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	if(Mode == 6 or Mode == 4 or Mode == 696969)then
		fxP.Color = Core2.Color
	end
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			if(Mode == 6 or Mode == 4 or Mode == 696969)then
				fxP.Color = Core2.Color
			end
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			if(Fade)then
				fxP.Transparency = i/(10/Lifetime)
			end
			speeder = speeder - 0.01*Speed*Lifetime/10
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxM.Scale = fxM.Scale - Vector3.new(Scale*Lifetime, Scale*Lifetime, Scale*Lifetime)
			swait()
		end
		fxP:destroy()
	end)()
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
	return OEffect{
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
	return OEffect{
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
	return OEffect{
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
	local OnUpdate = data.Update or nil
	local OnHit = data.HitFunction or function(hit,pos)
		AOEDamage(pos,0,{MinimumDamage=05,MaximumDamage=0})
		OEffect{
			Effect='ResizeAndFade',
			Color=Color,
			Size=V3.N(10,10,10),
			Material=Enum.Material.Neon,
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.05,.05,.05),
				EndIsIncrement=true
			}
		}
		for i = 1, 5 do
			local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
			OEffect{
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
			if(OnUpdate and typeof(OnUpdate) == 'function')then
				OnUpdate(Bullet,BMesh,i)
			end
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame).p,StudsPerFrame)
			if(hit)then
				OnHit(hit,pos,norm,dist)
				break;
			else
				Bullet.CFrame = CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame)
			end
			swait()
		end
		Bullet:destroy()
	end)()
	
end

function Puddle(hit,pos,norm,data)
	local material = data.Material or Enum.Material.SmoothPlastic
	local color = data.Color or BrickColor.new'Crimson'
	local size = data.Size or 1
		
	if(hit.Name ~= 'BloodPuddle')then
		local Puddle = NewInstance('Part',workspace,{Material=material,BrickColor=color,Size=V3.N(size,.1,size),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
		local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
		BloodPuddles[Puddle] = 0
	else
		local cyl = hit:FindFirstChild'CylinderMesh'
		if(cyl)then
			BloodPuddles[hit] = 0
			cyl.Scale = cyl.Scale + V3.N(size,0,size)
			hit.Transparency = 0
		end
	end
end

function Droplet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or 1
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 1
	local Shape = data.Shape or 'Ball'
	local Frames = (data.Frames or 160)+1
	local Pos = data.Origin or Root.CFrame
	local Direction = data.Direction or Root.CFrame.lookVector*100000
	local Material = data.Material or Enum.Material.SmoothPlastic
	local Drop = data.Drop or .05
	local Ignorelist = data.Ignorelist or nil
	
	local Bullet = Part(Effects,Color,Material,V3.N(Size,Size,Size),Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 1, Frames do
			Pos = Pos * CF.N(0,-(Drop*i),0)
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i)).p,StudsPerFrame)
			if(hit and (not hit.Parent or not hit.Parent:FindFirstChildOfClass'Humanoid' and not hit.Parent:IsA'Accessory'))then
				Puddle(hit,pos,norm,data)
				break;
			else
				Bullet.CFrame = CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i))
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
			OEffect{Effect='ResizeAndFade',Size=V3.N(thick,thick,thick),CFrame=eCF*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),Color=color,Frames=delay*2,FXSettings={EndSize=V3.N(thick*8,thick*8,thick*8)}}
		else
			zapPart.CFrame = CF.N(pos,posie)*CF.N(0,0,MagZ/parts/2)
		end
		
		lastLightning = zapPart
		OEffect{Effect='Fade',Manual=zapPart,Frames=delay}
		
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

function OEffect(data)
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
		local grow = Size-(Settings.EndSize or (Msh and Msh.Scale or Size)/2)
		
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

function Effect(data)
	local Color = data.Color or C3.N(0,0,0)
	local Material = data.Material or Enum.Material.Neon;
	local MeshD = data.Mesh or {};
	local SoundD = data.Sound or nil;
	local Shape = data.Shape or Enum.PartType.Block;
	local Size = data.StartSize or V3.N(.1,.1,.1);
	local ESize = data.EndSize or V3.N(6,6,6);
	local Direction = data.Direction or nil;
	local Speed = data.Speed or .1; -- studs per second
	local Boomerang = data.Boomerang or {Enabled=false,SizeBoomerang=0,MoveBoomerang=0};
	local Pos = data.CFrame or Torso.CFrame;
	local Frames = data.Frames or 60;
	local RotInc = data.RotInc or {0,0,0}
	local StartTrans = data.TransStart or 0;
	local EndTrans = data.TransEnd or 1;
	
	if(typeof(RotInc) == 'number')then RotInc = {RotInc,RotInc,RotInc}; end
	local S,PM,P;
	
	coroutine.wrap(function()
		P = Part(Effects,Color,Material,V3.N(1,1,1),Pos,true,false)
		
		if(MeshD == "Blast")then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://20329976','',Size,V3.N(0,0,-Size.X/8))
		elseif(MeshD == 'Ring')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://559831844','',Size,V3.N(0,0,0))
		elseif(MeshD == 'Slash1')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://662586858','',V3.N(Size.X/10,.001,Size.Z/10),V3.N(0,0,0))
		elseif(MeshD == 'Slash2')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://448386996','',V3.N(Size.X/1000,Size.Y/100,Size.Z/100),V3.N(0,0,0))
		elseif(MeshD == 'Slash3')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://4770583','',Size,V3.N(0,0,0))
		elseif(MeshD == 'Tornado1')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://443529437','',Size/10,V3.N(0,0,0))
		elseif(MeshD == 'Tornado2')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://168892432','',Size/4,V3.N(0,0,0))
		elseif(MeshD == 'Skull')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://4770583','',Size*2,V3.N(0,0,0))
		elseif(MeshD == 'Crystal')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://9756362','',Size,V3.N(0,0,0))
		elseif(MeshD == 'Cloud')then
			PM = Mesh(P,Enum.MeshType.FileMesh,'rbxassetid://1095708','',Size,V3.N(0,0,0))
		elseif(typeof(MeshD) == 'table')then
			local Type = MeshD.Type or Enum.MeshType.Brick
			local ID = MeshD.ID or '';
			local Tex = MeshD.Texture or '';
			local Offset = MeshD.Offset or V3.N(0,0,0)
			PM = Mesh(P,Type,ID,Tex,Size,Offset)
		else
			PM = Mesh(P,Enum.MeshType.Brick,'','',Size)
		end
		
		if(typeof(SoundD) == 'table')then
			local ID = SoundD.ID or '';
			local Pitch = SoundD.Pitch or 1;
			local Volume = SoundD.Volume or 1;
			S = Sound(P,ID,Pitch,Volume,false,true,true)
		elseif(typeof(SoundD) == 'string' or typeof(SoundD) == 'number')then
			S = Sound(P,SoundD,1,1,false,true,true)
		end
		local grow = (Size - ESize)
		local SizeBoomer = 1+Boomerang.SizeBoomerang/50
		local MoveBoomer = 1+Boomerang.MoveBoomerang/50
		if(Boomerang and Boomerang.Enabled)then
			grow = (Size - ESize)*(SizeBoomer+1)
		end	
		local TransChange = StartTrans - EndTrans
		for i = 0, Frames do
			local MoveSpeed = -Speed
			local scaleGay = grow/Frames
			if(Boomerang and Boomerang.Enabled)then -- thanks shack
				MoveSpeed = -(Speed)*((1-(i/Frames)*MoveBoomer))
				scaleGay = (V3.N((grow.X)*((1 - (i/Frames)*SizeBoomer)),(grow.Y)*((1 - (i/Frames)*SizeBoomer)),(grow.Z)*((1 - (i/Frames)*SizeBoomer)))*SizeBoomer)/Frames
			end
			if(PM.MeshId == 'rbxassetid://20329976')then
				PM.Offset = V3.N(0,0,-PM.Scale.Z/8)
			elseif(PM.MeshId == 'rbxassetid://4770583')then
				scaleGay = scaleGay*2
			elseif(PM.MeshId == 'rbxassetid://168892432')then
				scaleGay = scaleGay/4
			elseif(PM.MeshId == 'rbxassetid://443529437')then
				scaleGay = scaleGay/10
			elseif(PM.MeshId == 'rbxassetid://443529437')then
				scaleGay = scaleGay/10
			end
			PM.Scale = PM.Scale - scaleGay
			P.Transparency = P.Transparency - TransChange/Frames
			if(RotInc == 'random')then
				P.CFrame=P.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
			elseif(typeof(RotInc) == 'table')then
				P.CFrame=P.CFrame*CF.A(unpack(RotInc))
			end
			
			
			if(Direction and Speed)then
				local Orientation = P.Orientation
				P.CFrame = CF.N(P.Position,Direction.p)*CF.N(0,0,MoveSpeed)
				P.Orientation = Orientation
			end
			swait()
		end

		P.Transparency = 1
		if(S and S.Playing)then
			repeat swait() until not S.Parent or not S.Playing
		end
		if(S and S.Parent)then
			S:destroy()
		end
	end)()
	
	
end


--if(not Plr:IsFriendsWith(5719877))then warn("You aren't whitelisted, dumbass.") warn("Why did you even try?")script.Disabled = true repeat until nil end

function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		print("hi")
		local Soul = Part(Model,BrickColor.new'Black','Glass',V3.N(.5,.5,.5),torso.CFrame,true,false)
		Soul.Name = 'Head'
		NewInstance("Humanoid",Model,{Health=0,MaxHealth=0})
		OEffect{
			Effect="Arc",
			Manual = Soul,
			FXSettings={
				Start=torso.CFrame,
				Home = Torso,
				RemoveOnGoal = true,
			}
		}
		local lastPoint = Soul.CFrame.p
	
		for i = 0, 1, 0.01 do 
				local point = CFrame.new(lastPoint, Soul.Position) * CFrame.Angles(-math.pi/2, 0, 0)
				local mag = (lastPoint - Soul.Position).magnitude
				OEffect{
					Effect = "Fade",
					CFrame = point * CF.N(0, mag/2, 0),
					Size = V3.N(.5,mag+.5,.5),
					Color = Soul.BrickColor
				}
				lastPoint = Soul.CFrame.p
			swait()
		end
		for i = 1, 5 do
			OEffect{
				Effect="Fade",
				Color = BrickColor.new'Black',
				MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
			}	
		end
	end
end

--// Other Functions \ --

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


function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 1;
	
	local DamageEffects = data.DamageFX or {}
	local DamageType = DamageEffects.Type or "Normal"
	local DeathFunction = DamageEffects.DeathFunction
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local DoneDamage = M.RNG(MinDam,MaxDam) * (M.RNG(1,100) <= CritChance and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		for _, p in pairs(Hit) do
			if p[1] == Humanoid then
				if(time() - p[2] <= DB) then
					canHit = false
				else
					Hit[_] = nil
				end
			end
		end
		if(canHit)then
			table.insert(Hit,{Humanoid,time()})
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			if(not player or not DontAttackPlayers and player.UserId ~= 5719877 and player.UserId ~= 61573184 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					Hits = math.min(Hits + 1,MaxHits)
					HitTime = time() + 1
					--Humanoid.Health = 0;
				--	
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Player
					S.Debris:AddItem(c,0.35)
					if(Hits >= MaxHits/4)then
						local Mult = (DoneDamage*(Hits/MaxHits))/2
						--DoneDamage = DoneDamage + Mult
					end
					if(Humanoid.Health > 0)then	
						Hits = math.min(Hits + 1,MaxHits)
						HitTime = time() + 1
						if(Mode == 9 and not Radioactive[Who])then
							Radioactive[Who] = {0,M.RNG(time()+4,time()+14)}
						end
						if(Who:FindFirstChild'Head')then
						--	ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), math.floor(DoneDamage), 1.5, Core2.Color)
						end
						if(Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
						--Humanoid.Health = Humanoid.Health - DoneDamage
					end
					
					if(DamageType == 'Knockback' and HitTorso)then
						local up = DamageEffects.KnockUp or 25
						local back = DamageEffects.KnockBack or 25
						local origin = DamageEffects.Origin or Root
						local decay = DamageEffects.Decay or .5;
						
						local bfos = Instance.new("BodyVelocity",HitTorso)
						bfos.P = 20000	
						bfos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						bfos.Velocity = Vector3.new(0,up,0) + (origin.CFrame.lookVector * back)
						S.Debris:AddItem(bfos,decay)
					end
				end
			end
		end
	end		
end

function AOEDamage(where,range,options)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent])then
			local callTable = {Who=v.Parent}
			hit[v.Parent] = true
			for _,v in next, options do callTable[_] = v end
			--DealDamage(callTable)
		end
	end
	return hit
end

function AOEHeal(where,range,amount)
	local healed = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' or nil)
		if(hum and not healed[hum])then
		--	hum.Health = hum.Health + amount
			if(v.Parent:FindFirstChild'Head' and hum.Health > 0)then
				--ShowDamage((v.Parent.Head.CFrame * CF.N(0, 0, (v.Parent.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "+"..amount, 1.5, BrickColor.new'Lime green'.Color)
			end
		end
	end
end

--// Chat Function \--

function Chat(text,color)
	--if(game.PlaceId ~= 843468296)then
		coroutine.wrap(function()
			if(Char:FindFirstChild'ChatGUI')then Char.ChatGUI:destroy() end
			local BBG = NewInstance("BillboardGui",Char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,2,0),Adornee=Head})
			local Txt = NewInstance("TextLabel",BBG,{Text = "",BackgroundTransparency=1,TextColor3=color,BorderSizePixel=0,Font=Enum.Font.Antique,TextSize=50,TextStrokeTransparency=1,Size=UDim2.new(1,0,.5,0)})
			local SND = Sound(Head,418252437,M.RNG(9,11)/10,3,false,false,true)
			for i = 1, #text do
				delay(i/25, function()
					SND.Pitch = M.RNG(9,11)/10
					SND.Volume = 3
					SND.Parent = Effects
					SND:Play()
					Txt.Text = text:sub(1,i)
				end)
			end
			delay((#text/25)+2.5, function()
				for i = 0, 1, .025 do
					Txt.TextTransparency=i
					Txt.Rotation = M.RNG(-25,25)
					Txt.Position = UDim2.new(0,M.RNG(-15,15),0,M.RNG(-15,15))
					swait()
				end
				BBG:destroy()
			end)
		end)()
	--else
	--	Chat2(text)
	--end
end

--// Everything else \--

function ClickGlitch()
	Attack = true
	NeutralAnims = false
	local oWS = WalkSpeed
	WalkSpeed = 0
	Hum.JumpPower = 0
	Hum.AutoRotate = false
	Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
	for i = 0, 2, 0.1 do
		swait()
		local Alpha = .3
		Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00417825999, 0.00628786907, -0.00260206894, 0.513858557, -0.00539401267, -0.857858002, 1.84496116e-06, 0.99998033, -0.00628653914, 0.85787499, 0.00322880922, 0.513848424),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490777, -0.990816116, 0.0216251202, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49852562, -0.990978837, 0.0154569345, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.30906916, 0.822547674, -0.226739705, -0.481323838, 0.719669759, -0.500402868, -0.832959116, -0.55330795, 0.00544379698, -0.272959113, 0.419435322, 0.865775645),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.35554826, 0.564801514, -0.116690002, 0.84398663, -0.312275827, 0.436085641, 0.311970115, 0.94716835, 0.074478887, -0.43630439, 0.0731864721, 0.896817923),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.85058364e-06, 1.49894369, -0.0143952277, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
	end
	Sound(LArm,217767125,M.RNG(75,125)/100,10,false,true,true)
	OEffect{
		Effect='Fade',
		Size=V3.N(1,1,1),
		CFrame=LArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(0,360),M.RRNG(0,360),M.RRNG(0,360)),
		Color=Core2.Color,
		Material=Enum.Material.Neon,
		FXSettings = {
			RandomizeCFrame=true
		}
	}
	coroutine.wrap(function()
		local MousePos = Mouse.Hit
		local effect = Part(Effects,Core2.Color,Enum.Material.Neon,V3.N(2.5,2.5,2.5),MousePos,true,false)
		for i = 0, 6, .1 do
			effect.Color = Core2.Color
			MousePos = MousePos * CF.N(M.RNG(-15,15)/100,M.RNG(-15,15)/100,M.RNG(-15,15)/100)
			effect.CFrame = MousePos*CF.A(M.RRNG(0,360),M.RRNG(0,360),M.RRNG(0,360))
			effect.Size = V3.N(2.5,2.5,2.5)+V3.N(M.RNG(-150,150)/100,M.RNG(-150,150)/100,M.RNG(-150,150)/100)
			swait()
		end
		AOEDamage(MousePos.p,30,{MinimumDamage=30,MaximumDamage=75})
		for i = 0, 3, .1 do
			effect.Color = Core2.Color
			effect.CFrame = MousePos*CF.A(M.RRNG(0,360),M.RRNG(0,360),M.RRNG(0,360))
			effect.Size = effect.Size + V3.N(1,1,1)
			effect.Transparency = i/3
			swait()
		end
		effect:destroy()
		
	end)()
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00417744182, 0.00628787512, -0.00260255905, 0.513858557, -0.00539401267, -0.857858002, 1.84496116e-06, 0.99998033, -0.00628653914, 0.85787499, 0.00322880922, 0.513848424),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490777, -0.990816116, 0.0216251202, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49852562, -0.990978837, 0.0154569345, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.12360537, 0.516349316, -0.117619619, -0.715893924, 0.486921966, -0.500402868, -0.56499064, -0.825079441, 0.00544379698, -0.410221368, 0.28662011, 0.865775645),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.35554826, 0.564801514, -0.116690002, 0.84398663, -0.312275827, 0.436085641, 0.311970115, 0.94716835, 0.074478887, -0.43630439, 0.0731864721, 0.896817923),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.85058364e-06, 1.49894369, -0.0143952277, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
	end
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00417825999, 0.00628786907, -0.00260206894, 0.513858557, -0.00539401267, -0.857858002, 1.84496116e-06, 0.99998033, -0.00628653914, 0.85787499, 0.00322880922, 0.513848424),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496490777, -0.990816116, 0.0216251202, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49852562, -0.990978837, 0.0154569345, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.30906916, 0.822547674, -0.226739705, -0.481323838, 0.719669759, -0.500402868, -0.832959116, -0.55330795, 0.00544379698, -0.272959113, 0.419435322, 0.865775645),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.35554826, 0.564801514, -0.116690002, 0.84398663, -0.312275827, 0.436085641, 0.311970115, 0.94716835, 0.074478887, -0.43630439, 0.0731864721, 0.896817923),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.85058364e-06, 1.49894369, -0.0143952277, 0.500402868, 0, 0.865792811, -0.00544379698, 0.99998033, 0.00314635527, -0.865775645, -0.00628764462, 0.500392973),Alpha)
	end
	WalkSpeed = oWS
	Hum.JumpPower = 50
	Hum.AutoRotate = true
	Attack = false
	NeutralAnims = true
end

function PureBomb()
	Attack = true
	NeutralAnims = false
	local orb = Part(Effects,BrickColor.new'Baby blue',Enum.Material.Neon,V3.N(1,1,1),RArm.CFrame*CF.N(0,-1,0),true,false)
	local orbM = Mesh(orb,Enum.MeshType.Sphere,"","",V3.N(.1,.1,.1))
	local Scale = 0.1
	local Pos = 0
	Hum.AutoRotate = false
	Sound(orb,136007472,1,5,false,true,true)
	for i = 0, 10, 0.1 do
		Scale = Scale + .05
		orb.CFrame = RArm.CFrame*CF.N(0,-0.5-(Scale/1.5),0)
		Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
		orbM.Scale = V3.N(Scale,Scale,Scale)
		NoobySphere(4,-.1,'Multiply',orb.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(1,1,1),0,BrickColor.new'Baby blue',5)
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674263, 4.19029675e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.49648428, -0.990819931, 0.0216189958, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498537898, -0.990974903, 0.0154631026, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.42302692, 0.493415803, -0.00359773822, 0.940765917, 0.153064445, 0.30254063, -0.162465662, 0.986695945, 0.00599612948, -0.297597915, -0.0547934212, 0.953117669),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.49654758, 0.678199768, 0.0230993181, 0.85657078, -0.45250088, 0.248051316, -0.450519741, -0.89016372, -0.0681223199, 0.251631737, -0.0534004271, -0.966348767),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.00737716e-05, 1.49894738, -0.0144004971, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
	end
	for i = 0, 2, 0.1 do
		swait()
		orb.CFrame = RArm.CFrame*CF.N(0,-0.5-(Scale/1.5),0)
		Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00196742709, 0.00628469, -0.000496770546, 0.917528987, -0.00250149658, -0.39766106, 8.55154781e-07, 0.999980211, -0.00628842553, 0.397668958, 0.00576947257, 0.917510867),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496482432, -0.990816116, 0.0216121897, 0.911208749, 0, 0.411944896, -0.00259129796, 0.999980211, 0.00573186669, -0.41193673, -0.006290399, 0.911190748),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.4985466, -0.990978718, 0.0154598281, 0.911208749, 0, 0.411944896, -0.00259129796, 0.999980211, 0.00573186669, -0.41193673, -0.006290399, 0.911190748),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.49955761, 0.50005585, 0.0206508823, 0.931618989, 0, 0.363436669, -0.00228616199, 0.999980211, 0.0058602551, -0.363429457, -0.006290399, 0.931600571),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42403603, 0.783231854, 0.129635245, 0.955871105, -0.233268648, 0.178595126, -0.293628395, -0.738623917, 0.60680896, -0.00963485241, -0.63247174, -0.774523556),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(3.81190921e-06, 1.49893928, -0.0144081786, 1, -1.86264515e-09, 0, 0, 0.99796468, 0.0637704432, 2.98023224e-08, -0.0637704507, 0.997964561),Alpha)
	end
	Sound(Root,260433768,1,5.25,false,true,true)
	ShootBullet{Size=V3.N(Scale,Scale,Scale),Shape='Ball',Frames=320,Origin=orb.CFrame,Speed=5,Color=BrickColor.new'Baby blue',HitFunction = function(hit,pos)
		local snd, part = SoundPart(151304356,1,5.25,false,true,true,CF.N(pos))
		AOEDamage(pos,Scale*4,{MinimumDamage=25,MaximumDamage=60})
		OEffect{
			Effect='ResizeAndFade',
			Color=BrickColor.new'Baby blue',
			Size=V3.N(Scale*2,Scale*2,Scale*2),
			Material=Enum.Material.Neon,
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.1,.1,.1),
				EndIsIncrement=true
			}
		}
		OEffect{
			Effect='ResizeAndFade',
			Color=BrickColor.new'Pastel light blue',
			Size=V3.N(Scale*1.5,Scale*1.5,Scale*1.5),
			Material=Enum.Material.Neon,
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.1,.1,.1),
				EndIsIncrement=true
			}
		}
		for i = 0, 49 do
			NoobyBlock(1,M.RNG(1,10)/2,"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(4,4,4),0.08,BrickColor.new('Pastel light blue'),0,true)
		end
		for i = 0, 9 do
			NoobySphere(1,2.5,"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(5,5,50),-0.05,BrickColor.new'Baby blue',0)
			NoobySphere(2,5,"Multiply",CF.N(pos)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(5,5,50),-0.05,BrickColor.new'Pastel light blue',0)
		end
	end}
	orb:destroy()
	for i = 0, 1, 0.1 do
		swait()
		Root.CFrame = CF.N(Root.CFrame.p,CF.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z).p)
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00500682555, 0.00628831051, 0.00120097224, 0.92018038, 0.00246177102, 0.391486853, -8.42089548e-07, 0.99998033, -0.0062861559, -0.391494602, 0.00578406826, 0.920162261),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.498779386, -1.00248599, -0.124541134, 0.959937453, -0.00228470936, 0.280205488, -0.0405473076, 0.988310218, 0.146966696, -0.277265698, -0.152440399, 0.94862318),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.539460897, -1.00021362, -0.107664183, 0.949007154, 0.0409194157, -0.312587768, 0.00198236411, 0.990746439, 0.135712415, 0.31524843, -0.129411712, 0.940144241),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.41884661, 0.577570677, -0.000329867005, 0.959363103, 0.138315558, 0.245949864, -0.144226983, 0.989526033, 0.00609558355, -0.242530614, -0.041320473, 0.969263554),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.3995322, 0.560555339, 0.0217598975, 0.860549986, -0.340243995, 0.379061729, 0.396351576, -0.0201387759, -0.917877972, 0.319936305, 0.940121651, 0.117525801),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-1.91013669e-06, 1.4989413, -0.0144026726, 1, -1.86264515e-09, 0, 2.32830644e-10, 0.997965097, 0.0637654439, -2.98023224e-08, -0.0637654439, 0.997965038),Alpha)
	end
	
	Hum.AutoRotate = true
	
	Attack = false
	NeutralAnims = true
end

function Aeroplane()
	Attack = true
	NeutralAnims = false
	NoobySphere2(3,'Multiply',Root.CFrame,V3.N(2,2,2),.5,BrickColor.new'White')
	local rad = 0
	for i = 0, 3, 0.1 do
		AOEDamage(Root.CFrame.p,4,{MinimumDamage=15,MaximumDamage=30})
		swait()
		Root.Velocity = Root.CFrame.lookVector*(350-(i*66))
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00760343159, 1, -0.486851215, 0.99976027, -0.0157056805, -0.0152531685, 0.0156109696, 0.022916859, 0.99961555, -0.0153500848, -0.99961406, 0.0231565442),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.494159192, -0.989393592, 0.0215745792, 0.998326361, 0.0556856021, 0.0156117883, -0.0557892919, 0.998422861, 0.00628646836, -0.0152371004, -0.00714691728, 0.999858439),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.467966676, -0.990411818, 0.015948534, 0.997011065, -0.0756644681, 0.0156140458, 0.0755743459, 0.99712044, 0.00628457591, -0.0160446018, -0.00508577004, 0.999858439),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48234439, 0.488731831, 0.0204298086, 1.08988024e-06, 0.999878109, 0.0156131675, -0.999979973, -9.79125834e-05, 0.00634019636, 0.00634095073, -0.0156128611, 0.999858081),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.44239902, 0.478527635, -0.0251723044, 0.000173310371, -0.999878168, 0.0156102739, 0.999979973, 0.00027231226, 0.00634019636, -0.00634367391, 0.0156088611, 0.999858141),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(5.21446054e-06, 1.48825693, 0.499068856, 1, -4.4076296e-07, 3.08027957e-05, 2.98316445e-05, 0.26330927, -0.964711607, -7.68547761e-06, 0.964711607, 0.26330927),Alpha)
	end
	for i = 0, 18, 0.1 do
		AOEDamage(Root.CFrame.p,4,{MinimumDamage=15,MaximumDamage=30})
		swait()
		rad = rad + .1
		local Alpha = .3
		Root.Velocity = Root.CFrame.lookVector*150
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00760343159, 1, -0.486851215, 0.99976027, -0.0157056805, -0.0152531685, 0.0156109696, 0.022916859, 0.99961555, -0.0153500848, -0.99961406, 0.0231565442)*CF.A(0,M.R((rad*360)),0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.494159192, -0.989393592, 0.0215745792, 0.998326361, 0.0556856021, 0.0156117883, -0.0557892919, 0.998422861, 0.00628646836, -0.0152371004, -0.00714691728, 0.999858439),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.467966676, -0.990411818, 0.015948534, 0.997011065, -0.0756644681, 0.0156140458, 0.0755743459, 0.99712044, 0.00628457591, -0.0160446018, -0.00508577004, 0.999858439),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48234439, 0.488731831, 0.0204298086, 1.08988024e-06, 0.999878109, 0.0156131675, -0.999979973, -9.79125834e-05, 0.00634019636, 0.00634095073, -0.0156128611, 0.999858081),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.44239902, 0.478527635, -0.0251723044, 0.000173310371, -0.999878168, 0.0156102739, 0.999979973, 0.00027231226, 0.00634019636, -0.00634367391, 0.0156088611, 0.999858141),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(5.21446054e-06, 1.48825693, 0.499068856, 1, -4.4076296e-07, 3.08027957e-05, 2.98316445e-05, 0.26330927, -0.964711607, -7.68547761e-06, 0.964711607, 0.26330927),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function Shrek()
	Attack = true
	NeutralAnims = false
	local oWS = WalkSpeed
	for i = 0, 2, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(-0.0045717326, 0.0650117323, -0.292746365, 0.999985039, -0.0054067187, -0.000930163078, 0.00540099945, 0.940456271, 0.339872152, -0.000962814316, -0.339872032, 0.940471232),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.497873425, -1.08922517, -0.0665005744, 0.991378665, 0.00540100131, 0.130918339, 0.0394607596, 0.940456986, -0.337614775, -0.124946497, 0.339870125, 0.932135701),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.497141123, -1.09262908, -0.0732582211, 0.991080165, 0.00540100131, -0.133158669, -0.0502922162, 0.940456986, -0.336171925, 0.123414315, 0.339870125, 0.932339728),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.01297855, 0.687084556, -0.109048009, 0.909904242, -0.414624929, -0.0126772588, -0.341911346, -0.732326984, -0.588892102, 0.234885365, 0.540169775, -0.808112383),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.10972738, 0.686874747, -0.142190307, 0.902195573, 0.431141198, -0.012677161, 0.341730058, -0.732411623, -0.588892102, -0.263180494, 0.526963592, -0.808112264),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(1.14651302e-05, 1.49894774, -0.0143921971, 1.00000012, 1.31642446e-06, -5.17815351e-07, -1.28056854e-06, 0.997964919, 0.0637671649, 5.99771738e-07, -0.0637671053, 0.997964978),Alpha)
	end
	WalkSpeed = 0
	Sound(Head,368794903,1.2,10,false,true,true)
	local wo = IN("Model",Effects)
	
	for i = 1, 3 do
		local wat = 12.5+(i*2)
		local screamPart = Part(wo,BrickColor.new'Pearl',Enum.Material.Neon,V3.N(1,1,1),Head.CFrame,false,false)
		screamPart.Transparency = .6+(i/10)
		Mesh(screamPart,Enum.MeshType.Sphere,"","",V3.N(wat,wat,wat))
		Weld(screamPart,Torso)
	end
	
	for i = 0, 8, 0.1 do
		swait()
		AOEDamage(Torso.CFrame.p,20,{
			MinimumDamage=5,
			MaximumDamage=10
		})
		local Alpha = .3
		RJ.C0 = RJ.C0:lerp(CFrame.new(0.00617184862, -0.15, 0.395316333, 0.999986708, 0.00508808438, -0.000884585083, -0.00509300316, 0.943203092, -0.332178056, -0.000855805352, 0.332178146, 0.943216264)*CF.A(M.R(20),0,0),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.497282684, -1.06256902, -0.0290378034, 0.999878228, -0.00509300316, 0.0147562362, -9.85493534e-05, 0.943203092, 0.332217097, -0.0156101063, -0.332178056, 0.943087518)*CF.A(M.R(-20),0,0),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.497732252, -1.05967009, -0.03568241, 0.999878228, -0.00509300316, 0.0147562362, -9.85493534e-05, 0.943203092, 0.332217097, -0.0156101063, -0.332178056, 0.943087518)*CF.A(M.R(-20),0,0),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.42849481, 0.494048148, -0.00801739097, 0.98822248, 0.134164602, 0.0735954121, -0.152104512, 0.808569551, 0.568401217, 0.0167523213, -0.572901011, 0.819453418),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.41312766, 0.523678839, 0.0325531065, 0.980119586, -0.184282064, 0.0735261068, 0.110644385, 0.815263927, 0.568421364, -0.164693028, -0.548985541, 0.81944561),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(9.04871195e-06, 1.49893618, -0.0143969432, 1.00000012, 9.62987542e-07, -2.71946192e-07, -9.43895429e-07, 0.997964919, 0.0637682378, 3.31550837e-07, -0.063768208, 0.997964799),Alpha)
	end
	print("hola")
	WalkSpeed = oWS
	Attack = false
	NeutralAnims = true
end

function MurderKnife()
	local Sai = New("Model",Char,"Sai",{})
	local Handle = New("Part",Sai,"Handle",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-13.6449995, 31.3018703, 19.1356354, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
	local HW = New("Weld",Handle,'Weld',{Part0=RArm,Part1=Handle,C0=CF.N(0,-1,0)*CF.A(M.R(-90),0,0)})
	local HandPE = New('ParticleEmitter',Handle,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.3,0),Texture='rbxasset://textures/particles/sparkles_main.dds',LockedToPart=true,EmissionDirection='Top',Enabled=true,Lifetime=NumberRange.new(.3),Rate=50,Speed=NumberRange.new(5)})
	local Extendo = New("Part",Sai,"Extendo",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-13.6450005, 32.2849998, 18.6353073, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
	local ExtenPE = New('ParticleEmitter',Extendo,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.2,0),Texture='rbxasset://textures/particles/sparkles_main.dds',LockedToPart=true,EmissionDirection='Top',Enabled=true,Lifetime=NumberRange.new(.2),Rate=75,Speed=NumberRange.new(5)})
	local mot = New("Motor",Extendo,"mot",{Part0 = Extendo,Part1 = Handle,C1 = CFrame.new(-9.53674316e-07, 0.983129501, -0.500328064, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
	local Extendo = New("Part",Sai,"Extendo",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-13.6450005, 32.2849998, 19.6353073, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
	local ExtenPE = New('ParticleEmitter',Extendo,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.2,0),Texture='rbxasset://textures/particles/sparkles_main.dds',LockedToPart=true,EmissionDirection='Top',Enabled=true,Lifetime=NumberRange.new(.2),Rate=75,Speed=NumberRange.new(5)})
	local mot = New("Motor",Extendo,"mot",{Part0 = Extendo,Part1 = Handle,C1 = CFrame.new(-9.53674316e-07, 0.983129501, 0.499671936, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
	local BladenShit = New("Part",Sai,"BladenShit",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 0.0500000007, 0.0500000007),CFrame = CFrame.new(-13.6450005, 32.2849274, 19.1353073, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
	local BladePE = New('ParticleEmitter',BladenShit,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.3,0),Texture='rbxasset://textures/particles/smoke_main.dds',LockedToPart=true,EmissionDirection='Top',Enabled=true,Lifetime=NumberRange.new(.5),Rate=75,Speed=NumberRange.new(5)})
	local HanB1PE = New('ParticleEmitter',BladenShit,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.3,0),Texture='rbxasset://textures/particles/sparkles_main.dds',LockedToPart=true,EmissionDirection='Front',Enabled=true,Lifetime=NumberRange.new(.25),Rate=50,Speed=NumberRange.new(5)})
	local HanB2PE = New('ParticleEmitter',BladenShit,'ParticleEmitter',{Color=ColorSequence.new(C3.N(1,0,0)),LightEmission=.25,LightInfluence=25,Size=NumberSequence.new(.3,0),Texture='rbxasset://textures/particles/sparkles_main.dds',LockedToPart=true,EmissionDirection='Back',Enabled=true,Lifetime=NumberRange.new(.25),Rate=50,Speed=NumberRange.new(5)})
	local mot = New("Motor",BladenShit,"mot",{Part0 = BladenShit,Part1 = Handle,C1 = CFrame.new(-9.53674316e-07, 0.983057022, -0.000328063965, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
	local Hitbox = New("Part",Sai,"Hitbox",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.0500000007, 1.74999952, 0.340000063),CFrame = CFrame.new(-13.6450005, 33.2651939, 19.1278477, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
	local mot = New("Motor",Hitbox,"mot",{Part0 = Hitbox,Part1 = Handle,C1 = CFrame.new(-9.53674316e-07, 1.96332359, -0.00778770447, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
	
	return HW,Sai
end



function MurderNigger(target)
	if(target)then
		local torso = GetTorso(target)
		local hum = target:FindFirstChildOfClass'Humanoid'
		local hed = target:FindFirstChild'Head'
		if(torso and hum and hum.Health > 0 and hed)then
			local oWS = WalkSpeed
			local oPar = target.Parent
			local originalpos = Root.CFrame
			WalkSpeed = 0
			Hum.JumpPower = 0
			Attack = true
			NeutralAnims = false
			Root.Anchored = true
			torso.Anchored = true
			target.Parent = Char
			Hum.AutoRotate = false
			for i = 0, 9 do
				NoobySphere(3,.25,'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(1,1,10),-.01,Core2.BrickColor)
			end
			for i = 1, 24 do
				NoobyBlock(1,M.RNG(4,8),'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(3,3,3),.06,Core2.BrickColor,0)
			end
			NoobySphere2(3,'Multiply',Root.CFrame,V3.N(),.25,Core2.BrickColor)
			Root.CFrame = torso.CFrame*CF.N(0, 0, 1.89)
			for i = 0, 9 do
				NoobySphere(3,.25,'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(1,1,10),-.01,Core2.BrickColor)
			end
			for i = 1, 24 do
				NoobyBlock(1,M.RNG(4,8),'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(3,3,3),.06,Core2.BrickColor,0)
			end
			NoobySphere2(3,'Multiply',Root.CFrame,V3.N(),.25,Core2.BrickColor)
			
			local HW,knife = MurderKnife()
			--847061203
			Sound(Core2,847061203,1,2.5,false,true,true)
			for i = 0, 3, 0.1 do
				swait()
				local Alpha = .2
				RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0.00628662109, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha)
				LH.C0 = LH.C0:lerp(CFrame.new(-0.496665925, -0.990936279, 0.00762737356, 1, -3.37450885e-08, 2.21652698e-07, 3.37455646e-08, 1, -2.1504236e-06, -2.21652627e-07, 2.1504236e-06, 1),Alpha)
				RH.C0 = RH.C0:lerp(CFrame.new(0.498333007, -0.991060257, 0.0170113072, 1, -3.37450885e-08, 2.21652698e-07, 3.37455646e-08, 1, -2.1504236e-06, -2.21652627e-07, 2.1504236e-06, 1),Alpha)
				LS.C0 = LS.C0:lerp(CFrame.new(-1.28516543, 0.724190474, -0.474189818, 0.972499251, 0.184650362, -0.141949132, -0.134552032, -0.0520570427, -0.989538252, -0.190108046, 0.981424689, -0.0257803537),Alpha)
				RS.C0 = RS.C0:lerp(CFrame.new(1.14291549, 0.806114435, 0.620829105, 0.806192696, 0.353628874, 0.474341691, 0.13779296, -0.891899109, 0.430730879, 0.575383842, -0.281891108, -0.767770052),Alpha)
				NK.C0 = NK.C0:lerp(CFrame.new(8.77380371e-05, 1.49900436, -0.00497436523, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha)
				HW.C0 = clerp(HW.C0,CFrame.new(-0.142453238, -1.03396463, -0.198824421, -0.998497248, 0.0548028648, 8.5413456e-05, 7.66813755e-05, -0.000161617994, 1, 0.0548028946, 0.998497188, 0.000157207251),Alpha)
			end
			Sound(torso,429400881,1.2,4,false,true,true)
			target.Parent = oPar
			local hum = target:FindFirstChildOfClass'Humanoid'
			if(hum)then
				hum.Health=hum.Health-hum.MaxHealth/3
			end
			for i = 0, 3, 0.1 do
				swait()
				local Alpha = .3
				RJ.C0 = RJ.C0:lerp(CFrame.new(-0.00238382886, 0.00628662109, -0.00060180336, 0.896098733, 0, -0.443854868, 0, 1, 0, 0.443854868, 0, 0.896098733),Alpha)
				LH.C0 = LH.C0:lerp(CFrame.new(-0.496673644, -0.990932465, 0.00768280122, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),Alpha)
				RH.C0 = RH.C0:lerp(CFrame.new(0.498329222, -0.991056442, 0.017009737, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),Alpha)
				LS.C0 = LS.C0:lerp(CFrame.new(-1.17789793, 0.575393677, -0.0879677832, 0.584696472, 0.754816532, -0.297291398, -0.179923102, -0.236678019, -0.95478332, -0.791048646, 0.61174798, -0.00257586688),Alpha)
				RS.C0 = RS.C0:lerp(CFrame.new(1.05549359, 0.484450161, -0.690232515, 0.71294421, 0.397806346, -0.577460706, -0.424427927, -0.410723001, -0.806949615, -0.558185995, 0.820400417, -0.123982459),Alpha)
				NK.C0 = NK.C0:lerp(CFrame.new(0.000124273589, 1.49900436, -0.00493157003, 0.896098733, 0, 0.443854868, 0, 1, 0, -0.443854868, 0, 0.896098733),Alpha)
				HW.C0 = clerp(HW.C0,CFrame.new(0.0260544084, -1.07189536, -0.570477843, -0.998497128, 0.0523602702, -0.0161807239, 7.93784857e-05, 0.29663223, 0.954991877, 0.054803364, 0.953555346, -0.29619059),Alpha)
			end
			for i = 0, 3, 0.1 do
				swait()
				local Alpha = .3
				RJ.C0 = RJ.C0:lerp(CFrame.new(-0.00238382886, 0.00628662109, -0.00060180336, 0.896098733, 0, -0.443854868, 0, 1, 0, 0.443854868, 0, 0.896098733),Alpha)
				LH.C0 = LH.C0:lerp(CFrame.new(-0.496673644, -0.990932465, 0.00768280122, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),Alpha)
				RH.C0 = RH.C0:lerp(CFrame.new(0.498329222, -0.991056442, 0.017009737, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),Alpha)
				LS.C0 = LS.C0:lerp(CFrame.new(-1.17789793, 0.575393677, -0.0879677832, 0.584696472, 0.754816532, -0.297291398, -0.179923102, -0.236678019, -0.95478332, -0.791048646, 0.61174798, -0.00257586688),Alpha)
				RS.C0 = RS.C0:lerp(CFrame.new(1.05549359, 0.484450161, -0.690232515, 0.71294421, 0.397806346, -0.577460706, -0.424427927, -0.410723001, -0.806949615, -0.558185995, 0.820400417, -0.123982459)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
				NK.C0 = NK.C0:lerp(CFrame.new(0.000124273589, 1.49900436, -0.00493157003, 0.896098733, 0, 0.443854868, 0, 1, 0, -0.443854868, 0, 0.896098733),Alpha)
				HW.C0 = clerp(HW.C0,CFrame.new(0.0260544084, -1.07189536, -0.570477843, -0.998497128, 0.0523602702, -0.0161807239, 7.93784857e-05, 0.29663223, 0.954991877, 0.054803364, 0.953555346, -0.29619059),Alpha)
			end
			Sound(torso,429400881,.7,4,false,true,true)
			if(hum)then
				hum.Health=hum.Health-hum.MaxHealth/3
			end
			coroutine.wrap(function()
				local hum = target:FindFirstChildOfClass'Humanoid'
				if(hum)then
					repeat swait() 
						hum.Health=hum.Health-.5
					until hum.Health <= 1
					Kill(target)
					knife:destroy()
				end
			end)()
			for i = 0, 3, 0.1 do
				swait()
				local Alpha = .3
				RJ.C0 = RJ.C0:lerp(CFrame.new(0.000169749488, 0.00628662109, -6.61667073e-05, 0.999548376, 0, 0.0300540105, 0, 1, 0, -0.0300540105, 0, 0.999548376),Alpha)
				LH.C0 = LH.C0:lerp(CFrame.new(-0.444387794, -0.990932465, -0.227554411, 0.882354379, 0, -0.470585763, 0, 1, 0, 0.470585763, 0, 0.882354379),Alpha)
				RH.C0 = RH.C0:lerp(CFrame.new(0.495574117, -0.991056442, 0.0314709544, 0.97812444, 0, -0.208021611, 0, 1, 0, 0.208021611, 0, 0.97812444),Alpha)
				LS.C0 = LS.C0:lerp(CFrame.new(-1.00046349, 0.575390875, -0.63252908, 0.888165712, 0.3781358, -0.261104196, -0.179923102, -0.236678019, -0.95478332, -0.42283538, 0.894984365, -0.142173931),Alpha)
				RS.C0 = RS.C0:lerp(CFrame.new(1.35260987, 0.74367249, -0.148820311, 0.373968333, 0.469723582, -0.799692273, -0.757211864, -0.343237787, -0.555714011, -0.53551662, 0.813355863, 0.227320194),Alpha)
				NK.C0 = NK.C0:lerp(CFrame.new(-0.000104449631, 1.49900436, -0.00490342593, 0.999548376, 0, -0.0300540105, 0, 1, 0, 0.0300540105, 0, 0.999548376),Alpha)
				HW.C0 = clerp(HW.C0,CFrame.new(-0.315003902, -0.881822228, -0.534994423, -0.905889809, 0.289212197, -0.309386551, -0.423450023, -0.631175756, 0.649851799, -0.00733225048, 0.719703913, 0.694242597),Alpha)
			end
			
			
			HW.Part0 = target:FindFirstChild'Head'
			HW.C0 = CFrame.new(0.976348281, 0.254784644, 0.639342666, -0.527396142, -0.778684974, -0.339857459, 0.83536917, -0.402301013, -0.374582857, 0.154957026, -0.481460005, 0.862661362)
			delay(2, function() 
				print("hi")
				knife:destroy() 
			end)
			WalkSpeed = oWS
			Hum.JumpPower = 50
			Hum.AutoRotate = true
			Root.CFrame = originalpos
			Sound(Core2,847061203,1,2.5,false,true,true)
			for i = 0, 9 do
				NoobySphere(3,.25,'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(1,1,10),-.01,Core2.BrickColor)
			end
			for i = 1, 24 do
				NoobyBlock(1,M.RNG(4,8),'Multiply',Root.CFrame*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(3,3,3),.06,Core2.BrickColor,0)
			end
			NoobySphere2(3,'Multiply',Root.CFrame,V3.N(),.25,Core2.BrickColor)
			
			Root.Anchored = false
			torso.Anchored = false
			Attack = false
			NeutralAnims = true
		end
	end
end

function MobileMurder()
	Attack = true
	local oWS = WalkSpeed
	WalkSpeed = 0
	local what;
	what = Mouse.Button1Down:connect(function()
		what:disconnect();
		local target = (Mouse.Target and Mouse.Target.Parent)
		if(target)then
			local torso = GetTorso(target)
			local hum = target:FindFirstChildOfClass'Humanoid'
			local hed = target:FindFirstChild'Head'
			if(torso and hum and hum.Health > 0 and hed)then
				WalkSpeed = oWS
				MurderNigger(target)
			else
				WalkSpeed = oWS
				Attack = false
			end
		else
			WalkSpeed = oWS
			Attack = false
		end
	end)	
end


function NeckSnap(target)
	if(target)then
		local torso = GetTorso(target)
		local hum = target:FindFirstChildOfClass'Humanoid'
		local hed = target:FindFirstChild'Head'
		if(torso and hum and hum.Health > 0 and hed)then
			local oWS = WalkSpeed
			local oPar = target.Parent
			local originalpos = Root.CFrame
			WalkSpeed = 0
			Hum.JumpPower = 0
			Attack = true
			NeutralAnims = false
			Root.Anchored = true
			torso.Anchored = true
			target.Parent = Char
			Hum.AutoRotate = false
			Root.CFrame = torso.CFrame*CF.N(-0.54454422, 0, 0.987496376)
			for _,v in next, torso:children() do
				if(v:IsA'JointInstance' and (v.Part0 == hed or v.Part1 == hed))then
					v:destroy()
				end
			end
			print("no")
			local weld = NewInstance('Motor',torso,{Part0=hed,Part1=torso,C0=CF.N(0,-1.5,0)})
			for i = 0, 1, 0.1 do
				swait()
				local Alpha = .3
				RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674263, 4.19029675e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.49648428, -0.990816116, 0.0216189735, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498537898, -0.990978718, 0.0154631268, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-0.763917506, 0.783056259, -0.756683111, 0.675138593, -0.737685442, 0.00284584239, 0.140656561, 0.124941669, -0.982143223, 0.724157274, 0.663483143, 0.188113257),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.23871374, 1.09544897, -0.196351975, 0.766011953, 0.365654767, -0.528698623, -0.105766296, -0.739559352, -0.664729595, -0.634065628, 0.565109432, -0.527837396),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.00737725e-05, 1.4989512, -0.0144016817, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
			end
			Sound(hed,1093102664,1,5,false,true,true)
			for i = 0, 1.3, 0.1 do
				swait()
				local Alpha = .3
				weld.C0 = weld.C0:lerp(CF.N(0,-1.5,0)*CF.A(0,M.R(-90),0),Alpha)
				RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674263, 4.19029675e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.49648428, -0.990818024, 0.0216189846, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498537898, -0.990980625, 0.0154631399, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.38228214, 0.484847993, -0.0603635609, 0.424681932, 0.905338109, 0.00285495515, -0.169125155, 0.0824314952, -0.982141495, -0.889405489, 0.41661495, 0.18812263),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.40680802, 0.48904568, -0.02736184, 0.441890627, -0.897064447, 0.00284484075, 0.169923306, 0.0805888921, -0.982156575, 0.8808285, 0.43448925, 0.188043654),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.00737716e-05, 1.49894726, -0.014402397, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
			end
			target.Parent = oPar
			print("hi")
			WalkSpeed = oWS
			Hum.JumpPower = 50
			Hum.AutoRotate = true
			Root.Anchored = false
			torso.Anchored = false
			Attack = false
			NeutralAnims = true
		end
	end
end

function MobileNeckSnap()
	Attack = true
	local oWS = WalkSpeed
	WalkSpeed = 0
	local what;
	what = Mouse.Button1Down:connect(function()
		what:disconnect();
		local target = (Mouse.Target and Mouse.Target.Parent)
		if(target)then
			local torso = GetTorso(target)
			local hum = target:FindFirstChildOfClass'Humanoid'
			local hed = target:FindFirstChild'Head'
			if(torso and hum and hum.Health > 0 and hed)then
				WalkSpeed = oWS
				NeckSnap(target)
			else
				WalkSpeed = oWS
				Attack = false
			end
		else
			WalkSpeed = oWS
			Attack = false
		end
	end)	
end

function SongSmash()
	Attack = true
	NeutralAnims = false
	for i = 0, 3, 0.1 do
		swait()
		NoobySphere(5,.3,"Multiply",LArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(.1,.1,.1),0,Core2.Color,0,1088207)
		NoobyBlock(2,.04,'Multiply',LArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(1,1,1),.004,Core2.Color,0,true)
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.001753752, 0.00628927909, -0.000408248976, 0.942081869, -0.00210913899, -0.335376531, 7.21194738e-07, 0.99998033, -0.00628671842, 0.335383177, 0.00592236174, 0.942063153),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496480286, -0.990816116, 0.0216198936, 0.9367311, 0, 0.350050032, -0.00220137485, 0.99998033, 0.00589086255, -0.350043088, -0.00628874451, 0.936712503),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498543233, -0.990978837, 0.0154619068, 0.975587726, 0, -0.219610512, 0.00138107454, 0.99998033, 0.00613522204, 0.219606131, -0.00628874451, 0.975568414),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.40567565, 0.408012271, -0.00104653835, 0.958351374, 0.285325468, -0.0123402029, 0.2337396, -0.758791327, 0.607948899, 0.164099574, -0.585512877, -0.793880343),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42242038, 0.493699282, -0.0249331407, 0.987734318, -0.155363053, 0.0156076849, 0.155282006, 0.987850249, 0.0062857219, -0.0163946152, -0.00378503278, 0.999858558),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.16258161e-05, 1.49894369, -0.0144085325, 0.9367311, 0, 0.350050032, -0.00220137485, 0.99998033, 0.00589086255, -0.350043088, -0.00628874451, 0.936712503),Alpha)
	end
	AOEDamage(Root.CFrame.p,110,{MinimumDamage=pl/15,MaximumDamage=pl/5})
	NoobySphere2(3,"Multiply",Root.CFrame*CF.N(0,-2.9,0),V3.N(110,0.1,110),0.01,Core2.Color)
	for i = 1, 20 do
		NoobySphere(3,0.5,"Multiply",Root.CFrame*CF.N(M.RNG(-42.5,42.5),-5,M.RNG(-42.5,42.5))*CF.A(M.R(90)+M.RRNG(-45,45),M.RRNG(-45,45),M.RRNG(-45,45)),V3.N(.5,.5,.5),0,Core2.Color,0,1088207)
		NoobySphere(3,0.5,"Multiply",Root.CFrame*CF.N(M.RNG(-42.5,42.5),-5,M.RNG(-42.5,42.5))*CF.A(M.R(90)+M.RRNG(-45,45),M.RRNG(-45,45),M.RRNG(-45,45)),V3.N(.5,.5,.5),0,Core2.Color,0,1088207)
	end
	for i = 0, 3, 0.1 do
		swait()
		local Alpha = .4
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0056809783, -1.84688139, -0.363832742, 0.999853492, -0.0143729132, -0.00929748639, 0.0143199814, 0.40471217, 0.914332032, -0.00937880948, -0.914331198, 0.404858679),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.498466104, -0.621809721, -0.107522458, 0.999878109, -0.00381839275, 0.0151433209, -9.67067026e-05, 0.968117595, 0.250496507, -0.0156170065, -0.25046742, 0.967999101),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.49715057, -0.612025738, -0.0758087933, 0.999878109, -0.00322529091, 0.0152806351, -9.67067026e-05, 0.977144957, 0.212574452, -0.0156170065, -0.212549999, 0.977025449),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.46437562, 0.573429823, -0.135539591, 0.995870709, 0.090780057, 0.000750792213, -0.0041781459, 0.0540931821, -0.998527229, -0.090686962, 0.99440074, 0.054249078),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.46732497, 0.668299794, -0.164544582, 0.998940408, -0.0457421541, -0.00509791775, -0.000265741721, 0.105029136, -0.994469225, 0.0460245833, 0.993416667, 0.104905695),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(7.62883064e-06, 1.49891925, -0.0144104436, 1.00000012, -4.65661287e-10, 1.62981451e-09, 4.65661287e-10, 0.997964621, 0.0637715757, 6.98491931e-10, -0.0637715459, 0.997964621),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function AttackOne()
	Attack = true
	NeutralAnims = false
	for i = 0, .7, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.054845117, 0.00628340431, 0.0621978641, 0.574560821, -0.00514742406, -0.818445683, 1.76018864e-06, 0.99998033, -0.00628790678, 0.818461895, 0.00361134461, 0.574549437),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.525948346, -0.994591057, 0.0135081597, 0.989666939, 0.0856333151, 0.115006924, -0.0869238526, 0.996195495, 0.00624422729, -0.114034653, -0.0161765479, 0.993345082),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.487148911, -0.967346072, -0.0260838568, 0.964277864, -0.0686885938, 0.255832553, -0.00166595122, 0.964203477, 0.265158683, -0.264888048, -0.256112814, 0.92964536),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.38879275, 0.498546124, -0.255748421, 0.692717075, 0.721134841, 0.0103802728, 0.00202227081, 0.0124506345, -0.999920607, -0.721206725, 0.692682922, 0.00716643687),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.27866459, 0.504911065, -0.181807131, 0.763874948, -0.645362377, -0.00163397193, -0.0634241104, -0.0725510716, -0.995346248, 0.642240286, 0.760423601, -0.0963514596),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0864869878, 1.49901688, -0.00313834194, 0.57456094, -0.0470548049, 0.817108035, -0.00514778076, 0.998118699, 0.0610983856, -0.818445623, -0.0393110402, 0.573237658),Alpha)
	end
	Sound(RArm,200632136,1.1,5,false,true,true)
	for i = 0, .9, 0.1 do
		swait()
		local Alpha = .3
		AOEDamage(RArm.CFrame.p,2,{MinimumDamage=10,MaximumDamage=30})
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0895246193, 0.00628795894, -0.0240665041, 0.667355478, 0.00468144845, 0.744724631, -1.60177922e-06, 0.99998033, -0.00628458662, -0.744739354, 0.0041928608, 0.667342305),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.525933743, -0.994594276, 0.0135074947, 0.995298743, 0.0856334865, -0.0452488065, -0.0847965032, 0.996195495, 0.0201073457, 0.0467984378, -0.0161758773, 0.998773336),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.490905643, -0.74434638, -0.358290195, 0.993401766, -0.0489627272, -0.103709608, 0.0897386894, 0.894942641, 0.437063992, 0.0714142919, -0.443486929, 0.893431306),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.34781098, 0.451429009, 0.184345022, 0.920896769, 0.211902812, 0.327179492, -0.00245033321, 0.842468321, -0.538740575, -0.389798939, 0.495322734, 0.776345491),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33741677, 0.579409122, -0.335710943, 0.71467489, -0.698394477, 0.0385371894, -0.0347292982, -0.0904589221, -0.995294571, 0.698594153, 0.709973574, -0.0889034569),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0455316827, 1.49947691, 0.069996126, 0.667355359, 0.0428168029, -0.743507743, 0.00468109129, 0.99808526, 0.0616789386, 0.744724751, -0.0446421988, 0.665876985),Alpha)
	end
	Combo = 2
	Attack = false
	NeutralAnims = true
end

function AttackTwo()
	Attack = true
	NeutralAnims = false
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00337019563, 0.00628272956, -0.00105122454, 0.788301051, 0.00386909139, 0.615277588, -1.32338778e-06, 0.99998033, -0.00628654705, -0.615289807, 0.00495487731, 0.788285434),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.370244205, -1.06356883, -0.0345072895, 0.88316524, 0.227487147, 0.41020599, -0.259257317, 0.965541184, 0.0227174684, -0.390902787, -0.126412138, 0.911709964),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.39778316, -1.07560706, -0.0971514285, 0.900898933, -0.0766149312, -0.427213579, 0.151964575, 0.977673352, 0.145127282, 0.406556368, -0.195666283, 0.892427385),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.47616029, 0.512279212, 0.0670655966, 0.904187679, -0.427135438, 0.00023345463, 0.00958644785, 0.0197467823, -0.999759197, 0.427027881, 0.903972089, 0.0219495054),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.33361411, 0.488021076, -0.300545812, 0.00661067665, -0.543416262, 0.839437485, 0.976997852, -0.175422177, -0.121254832, 0.213147745, 0.820930004, 0.529756606)*CF.A(0,M.R(-90),0),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.000233855098, 1.49894583, -0.0145844966, 0.788300931, 0.0353745371, -0.614272296, 0.0038687347, 0.998041451, 0.062439695, 0.615277767, -0.0515977256, 0.786619961),Alpha)
	end	
	Sound(LArm,200632136,.9,5,false,true,true)
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		AOEDamage(LArm.CFrame.p,2,{MinimumDamage=10,MaximumDamage=30})
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0139055764, 0.00628619827, -0.0431878939, 0.736094832, -0.0042554969, -0.676865041, 1.4556681e-06, 0.99998033, -0.00628536195, 0.676878333, 0.00462563755, 0.736080408),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.370245337, -1.06356549, -0.0345049649, 0.883166075, 0.227488101, 0.410203636, -0.25925675, 0.965541363, 0.0227144919, -0.390901268, -0.126408711, 0.911711276),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.397780299, -1.07560635, -0.0971318483, 0.900898337, -0.076615192, -0.427214652, 0.151964024, 0.977673769, 0.145124823, 0.406557709, -0.195663959, 0.892427325),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.54785693, 0.502721965, -0.369121343, 0.640384734, 0.768054307, 9.36477445e-05, -0.0167029109, 0.0140483743, -0.999761999, -0.767872751, 0.640230715, 0.0218251087),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.41005266, 0.394677043, -0.101526827, 0.621816397, -0.730075538, 0.283432782, 0.783004642, 0.586830258, -0.206238553, -0.0157571733, 0.350171626, 0.93655318)*CF.A(0,M.R(-90),0),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0361058414, 1.49909592, 0.00928576291, 0.736094952, -0.0389148258, 0.67575866, -0.00425585406, 0.998060346, 0.0621110015, -0.676864862, -0.0485955328, 0.7345016),Alpha)
	end
	Combo = 3
	Attack = false
	NeutralAnims = true
end

function AttackThree()
	Attack = true
	NeutralAnims = false
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674868, -5.34626452e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496486187, -0.990816116, 0.0216190033, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498537898, -0.990978718, 0.0154631268, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.12213016, 0.47289753, -0.302224725, 0.912795186, -0.408417523, -7.55176477e-10, 0.00256825075, 0.00573992962, -0.999980211, 0.408409536, 0.912777245, 0.00628829934),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.11283636, 0.472678095, -0.337120384, 0.899599433, 0.436715961, -7.55176477e-10, -0.00274620112, 0.00565694971, -0.999980211, -0.436707377, 0.89958173, 0.00628829934),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(8.16642296e-06, 1.49894738, -0.0144004971, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
	end
	--for a = 1, 3 do
	local a = 2
	coroutine.wrap(function()
		for i = 5,45,10 do
			local hite = Instance.new("Part",Char)
			hite.Anchored = true
			hite.CanCollide = false
			hite.Material = "Neon"
			hite.Size = V3.N(1, 1, 1)
			hite.Transparency = 1
			hite.CFrame = (Root.CFrame + Root.CFrame.lookVector)*CF.A(0,M.R(90+(a*45)),0)*CF.N(0,0,i)
			CamShakeAOE(hite.CFrame.p,10,30,250)
			NoobySphere2(3,'Multiply',hite.CFrame,V3.N(0,0,0),.15,Core2.Color)
			NoobySphere2(6,'Multiply',hite.CFrame,V3.N(0,0,0),.3,Core2.Color)
			for i = 1, 2 do
				NoobySphere(2,.2,'Multiply',Root.CFrame*CF.N(0,-.5,-.5)*CF.A(M.RRNG(-20,20),M.RRNG(-20,20),M.RRNG(-20,20)),V3.N(.5,.5,5),-.005,Core2.Color,0)			
			end
			for i = 1, 5 do
				NoobySphere(2.25,.6,'Multiply',hite.CFrame*CF.N(0,0,0)*CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360)),V3.N(2,2,2),0,Core2.Color,0)
			end
			AOEDamage(hite.CFrame.p,10,{MinimumDamage=25,MaximumDamage=45})
			Sound(hite,183763506,1,5,false,true,true)
			S.Debris:AddItem(hite,2)
			swait()
		end
	end)()
	--end
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00691798097, -0.0495741703, 0.443018734, 0.999998093, -0.00196288247, -0.000110176392, 0.00196200004, 0.992848635, 0.119364031, -0.000124909915, -0.119364008, 0.992850542),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497228384, -0.946920514, -0.0261252522, 0.999878228, 0.0041074818, 0.0150607219, -9.9174933e-05, 0.966415524, -0.256984442, -0.0156104742, 0.25695163, 0.966298223),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.497788221, -0.949530363, -0.0326310396, 0.999878228, 0.0041074818, 0.0150607219, -9.9174933e-05, 0.966415524, -0.256984442, -0.0156104742, 0.25695163, 0.966298223),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.43487072, 0.476260573, 0.232709944, -0.586293817, 0.810098529, 9.3865674e-07, -0.00509618223, -0.00368710607, -0.999980271, -0.810082495, -0.586282253, 0.00629013777),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.44212484, 0.475975186, 0.187793851, -0.560718656, -0.828006506, -2.90002208e-06, 0.00520995259, -0.00352462381, -0.999980271, 0.827990055, -0.56070751, 0.00629019737),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(9.53681956e-06, 1.49895513, -0.0144005343, 1.00000012, 0, 9.31322575e-10, 1.16415322e-10, 0.99796474, 0.0637698025, -9.31322575e-10, -0.0637697875, 0.997964621),Alpha)
	end
	Combo = 1
	Attack = false
	NeutralAnims = true
end


local WingSine = 0
local WingChange = 1

function MurderMode()
	Attack = true
	NeutralAnims = false
	local Sin = 0
	MusicID = 407749940
	Pitch = 1
	WalkSpeed = 0
	Sound(Core2,136007472,1.25,2.5,false,true,true)
	for i = 0, 4, 0.1 do
		swait()
		NoobySphere(2.5,-1.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(3.5,3.5,45),-.035,Core2.Color,100)
		Sin = Sin + 5
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00700476859, 0.0667984039, -0.448462069, 0.999972343, -0.00723911775, -0.00172879919, 0.00722799823, 0.88917774, 0.457504779, -0.00177471992, -0.457504541, 0.889205575),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497889668, -1.14359522, -0.0677340925, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.497117043, -1.14809179, -0.0749855936, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.20745349, 0.562693655, 0.156515986, 0.841866791, -0.539501786, -0.014077506, -0.490290582, -0.753652692, -0.43774724, 0.225555882, 0.375426948, -0.898987949)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.17680144, 0.613272369, 0.0997506529, 0.834507108, 0.550817847, -0.0140647329, 0.49015516, -0.753777146, -0.437684804, -0.251686275, 0.358357221, -0.899018526)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(6.50798393e-06, 1.53005648, -0.348988175, 1.00000012, 2.40840018e-06, -1.19656324e-05, 5.68898395e-06, 0.775360823, 0.631518543, 1.07986853e-05, -0.631518602, 0.775360942)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
	end
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Black' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(1,0,0) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(1,0,0) end)
	WalkSpeed = 16
	Mode = 1
	Core2.BrickColor = BrickColor.new'Black'
	Core2.Material = Enum.Material.Neon
	Sound(Root,"206082327",1,2.5,false,true,true)
	Sound(Root,"847061203",1,5,false,true,true)
	Sound(Root,"239000203",1,2.5,false,true,true)
	Sound(Root,"579687077",.75,2.5,false,true,true)
	RecolorTextAndRename("Murder",Color3.new(1,0,0),Color3.new(0,0,0))
	NoobySphere2(2.5,'Multiply',Core2.CFrame,V3.N(0,0,0),1,Core2.BrickColor)
	for i = 1, 24 do
		NoobyBlock(1,M.RNG(20,100)/100,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(2,2,2),.04,Core2.Color,0,true)
	end
	for i = 0, 15 do
		NoobySphere(3,-.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(.5,.5,25),-.04,Core2.Color,0)
	end
	for i = 0, 1.4, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.0104959598, -0.113952652, 0.672263861, 0.999963522, 0.00820299331, -0.0023882892, -0.00821700692, 0.846846819, -0.531773448, -0.00233961921, 0.531773746, 0.846883237),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.49749428, -1.06169748, -0.0426189601, 0.999878228, -0.00744201383, 0.013721575, -0.000100045589, 0.875963986, 0.482376754, -0.0156094572, -0.482319295, 0.875856459),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498449236, -1.1497941, 0.0108022094, 0.999878228, -0.0120362351, 0.009939529, -0.000100045589, 0.631795883, 0.775134981, -0.0156094572, -0.775041461, 0.631717622),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.12307608, 0.484921068, 0.092245549, 0.865161359, 0.501252413, -0.0155520458, 0.497926384, -0.862286389, -0.092366755, -0.059709385, 0.07216838, -0.995603561),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.37669122, 0.484069884, 0.0531393886, 0.866546988, -0.498853445, -0.0155524863, -0.49802509, -0.862227678, -0.0923835635, 0.032676056, 0.0878001451, -0.995602131),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.14440181e-05, 1.49895036, -0.0144141242, 1.00000012, 0, -9.31322575e-10, 0, 0.99796474, 0.0637694895, -9.31322575e-10, -0.0637694895, 0.99796468),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function PureMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Pastel Blue' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pastel Blue' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pastel Blue' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pastel Blue' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Pastel Blue' end
	end
	WalkSpeed = 16
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(0,1,1) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(0,1,1) end)
	RecolorTextAndRename("Clarity",C3.N(1,1,1),BrickColor.new'Pastel Blue'.Color)
	MusicID = 1539245059
	Pitch = 1
	Mode = 2
	Core2.BrickColor = BrickColor.new'Pastel Blue'	
	Core2.Material = Enum.Material.Neon
end

function GlitchMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.DiamondPlate v.Transparency = 0 v.BrickColor = BrickColor.new'White' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.DiamondPlate v.Transparency = 1 v.BrickColor = BrickColor.new'White' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.DiamondPlate v.Transparency = 1 v.BrickColor = BrickColor.new'White' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.DiamondPlate v.Transparency = 1 v.BrickColor = BrickColor.new'White' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'White' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(1,1,1) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(1,1,1) end)
	WalkSpeed = 16
	RecolorTextAndRename("Glitchy",C3.N(1,1,1),C3.N(1,1,1))
	MusicID = 1470848774
	Pitch = .93
	Mode = 3
	Core2.BrickColor = BrickColor.new'Dark stone grey'
	Core2.Material = Enum.Material.DiamondPlate	
end	

function StressMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .25 v.BrickColor = BrickColor.new'Crimson' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.Color = C3.RGB(16,16,16) end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Crimson' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Crimson' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Crimson' end
	end
	WalkSpeed = 14
	RecolorTextAndRename("Stress",C3.N(.6,0,0),C3.N(0,0,0))
	MusicID = 614032233
	Pitch = 1
	Mode = 4
	Core2.BrickColor = BrickColor.new'Black'
	Core2.Material = Enum.Material.Neon	
end	

function JusticeMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Institutional white' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(1,1,1) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(1,1,1) end)
	WalkSpeed = 50
	RecolorTextAndRename("Justice",C3.N(1,1,1),C3.N(0,0,0))
	MusicID = 1102271169
	Pitch = 1
	Mode = 5
	Core2.BrickColor = BrickColor.new'White'
	Core2.Material = Enum.Material.Neon	
end	

function IceMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Pastel light blue' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Pastel light blue' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pastel light blue' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pastel light blue' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Pastel light blue' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(0,1,1) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(0,1,1) end)
	WalkSpeed = 8
	RecolorTextAndRename("SubZero",C3.N(0,1,1),C3.N(1,1,1))
	MusicID = 144121562
	Pitch = 1
	Mode = 7
	Core2.BrickColor = BrickColor.new'Pastel light blue'
	Core2.Material = Enum.Material.Neon	
end

function LoveMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Pink' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Pink' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pink' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Pink' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Pink' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = BrickColor.new'Pink'.Color end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = BrickColor.new'Pink'.Color end)
	WalkSpeed = 16
	RecolorTextAndRename("Love",BrickColor.new'Pink'.Color,C3.N(1,1,1))
	MusicID = 1030177093
	Pitch = 1
	Mode = 8
	Core2.BrickColor = BrickColor.new'Pink'
	Core2.Material = Enum.Material.Neon	
end



function VisMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Institutional white' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Institutional white' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(1,1,1) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(1,1,1) end)
	WalkSpeed = 16
	RecolorTextAndRename("Visualiser",C3.N(1,1,1),C3.N(0,0,0))
	MusicID = VisSong
	Pitch = 1
	Mode = 6
	Core2.BrickColor = BrickColor.new'White'
	Core2.Material = Enum.Material.Neon	
end	

function ToxicMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Lime green' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .85 v.BrickColor = BrickColor.new'Forest green' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .75 v.BrickColor = BrickColor.new'Forest green' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Forest green' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Lime green' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = BrickColor.new'Lime green'.Color end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = BrickColor.new'Lime green'.Color end)
	WalkSpeed = 14
	RecolorTextAndRename("Nuclear",BrickColor.new'Lime green'.Color,C3.N(0,.6,0))
	MusicID = 798163149
	Pitch = 1
	Mode = 9
	Core2.BrickColor = BrickColor.new'Lime green'
	Core2.Material = Enum.Material.Neon	
end

function BarracudaMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'New Yeller' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'New Yeller' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .5 v.BrickColor = BrickColor.new'New Yeller' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .5 v.BrickColor = BrickColor.new'New Yeller' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'New Yeller' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = BrickColor.new'Lime green'.Color end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = BrickColor.new'Lime green'.Color end)
	WalkSpeed = 24
	RecolorTextAndRename("Pendulum Hub Master",BrickColor.new'New Yeller'.Color,C3.N(1,1,1))
	MusicID = 256251217
	Pitch = 1
	Mode = 16
	Core2.BrickColor = BrickColor.new'New Yeller'
	Core2.Material = Enum.Material.Neon	
end

function FluctuateMode()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Alder' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Alder' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Alder' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 1 v.BrickColor = BrickColor.new'Alder' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Alder' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = BrickColor.new'Alder'.Color end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = BrickColor.new'Alder'.Color end)
	WalkSpeed = 18
	RecolorTextAndRename("FLUCTUATION",BrickColor.new'Alder'.Color,C3.N(1,1,1))
	MusicID = 1047567668
	Pitch = 1
	Mode = 10
	Core2.BrickColor = BrickColor.new'Alder'
	Core2.Material = Enum.Material.Neon	
end

function InsaneMode()
	Attack = true
	NeutralAnims = false
	local Sin = 0
	MusicID = 919231299
	Pitch = 1
	WalkSpeed = 0
	Sound(Core2,136007472,1.25,2.5,false,true,true)
	for i = 0, 4, 0.1 do
		swait()
		NoobySphere(2.5,-1.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(3.5,3.5,45),-.035,Core2.Color,100)
		Sin = Sin + 5
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00700476859, 0.0667984039, -0.448462069, 0.999972343, -0.00723911775, -0.00172879919, 0.00722799823, 0.88917774, 0.457504779, -0.00177471992, -0.457504541, 0.889205575),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497889668, -1.14359522, -0.0677340925, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.497117043, -1.14809179, -0.0749855936, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.20745349, 0.562693655, 0.156515986, 0.841866791, -0.539501786, -0.014077506, -0.490290582, -0.753652692, -0.43774724, 0.225555882, 0.375426948, -0.898987949)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.17680144, 0.613272369, 0.0997506529, 0.834507108, 0.550817847, -0.0140647329, 0.49015516, -0.753777146, -0.437684804, -0.251686275, 0.358357221, -0.899018526)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(6.50798393e-06, 1.53005648, -0.348988175, 1.00000012, 2.40840018e-06, -1.19656324e-05, 5.68898395e-06, 0.775360823, 0.631518543, 1.07986853e-05, -0.631518602, 0.775360942)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
	end
	for i = 0, 8, 0.1 do
		swait()
		NoobySphere(2.5,-1.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(3.5,3.5,45),-.035,Core2.Color,100)
		NoobySphere(2.5,1.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(3.5,3.5,45),.035,Core2.Color,0)
		Sin = Sin + 5
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00700476859, 0.0667984039, -0.448462069, 0.999972343, -0.00723911775, -0.00172879919, 0.00722799823, 0.88917774, 0.457504779, -0.00177471992, -0.457504541, 0.889205575),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497889668, -1.14359522, -0.0677340925, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.497117043, -1.14809179, -0.0749855936, 0.999878228, 0.00722799823, 0.0138372099, -9.56082804e-05, 0.88917774, -0.457561791, -0.0156109957, 0.457504779, 0.889070213),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.20745349, 0.562693655, 0.156515986, 0.841866791, -0.539501786, -0.014077506, -0.490290582, -0.753652692, -0.43774724, 0.225555882, 0.375426948, -0.898987949)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.17680144, 0.613272369, 0.0997506529, 0.834507108, 0.550817847, -0.0140647329, 0.49015516, -0.753777146, -0.437684804, -0.251686275, 0.358357221, -0.899018526)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(6.50798393e-06, 1.53005648, -0.348988175, 1.00000012, 2.40840018e-06, -1.19656324e-05, 5.68898395e-06, 0.775360823, 0.631518543, 1.07986853e-05, -0.631518602, 0.775360942)*CF.A(0,M.R(0+16*M.S(Sin)),0),Alpha)
	end
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Really black' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = 0 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .5 v.BrickColor = BrickColor.new'Really black' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.Transparency = .5 v.BrickColor = BrickColor.new'Black' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Neon v.BrickColor = BrickColor.new'Black' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(1,0,0) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(1,0,0) end)
	WalkSpeed = 12
	Mode = 696969
	Core2.BrickColor = BrickColor.new'Black'
	Core2.Material = Enum.Material.Neon
	Sound(Root,"206082327",1,2.5,false,true,true)
	Sound(Root,"847061203",1,5,false,true,true)
	Sound(Root,"239000203",1,2.5,false,true,true)
	Sound(Root,"579687077",.75,2.5,false,true,true)
	RecolorTextAndRename("INSANITY",Color3.new(0,0,0),Color3.new(1,1,1))
	NoobySphere2(2.5,'Multiply',Core2.CFrame,V3.N(0,0,0),1,Core2.BrickColor)
	for i = 1, 24 do
		NoobyBlock(1,M.RNG(20,100)/100,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(2,2,2),.04,Core2.Color,0,true)
	end
	for i = 0, 15 do
		NoobySphere(3,-.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(.5,.5,25),-.04,Core2.Color,0)
	end
	for i = 0, 1.4, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.0104959598, -0.113952652, 0.672263861, 0.999963522, 0.00820299331, -0.0023882892, -0.00821700692, 0.846846819, -0.531773448, -0.00233961921, 0.531773746, 0.846883237),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.49749428, -1.06169748, -0.0426189601, 0.999878228, -0.00744201383, 0.013721575, -0.000100045589, 0.875963986, 0.482376754, -0.0156094572, -0.482319295, 0.875856459),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498449236, -1.1497941, 0.0108022094, 0.999878228, -0.0120362351, 0.009939529, -0.000100045589, 0.631795883, 0.775134981, -0.0156094572, -0.775041461, 0.631717622),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.12307608, 0.484921068, 0.092245549, 0.865161359, 0.501252413, -0.0155520458, 0.497926384, -0.862286389, -0.092366755, -0.059709385, 0.07216838, -0.995603561),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.37669122, 0.484069884, 0.0531393886, 0.866546988, -0.498853445, -0.0155524863, -0.49802509, -0.862227678, -0.0923835635, 0.032676056, 0.0878001451, -0.995602131),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.14440181e-05, 1.49895036, -0.0144141242, 1.00000012, 0, -9.31322575e-10, 0, 0.99796474, 0.0637694895, -9.31322575e-10, -0.0637694895, 0.99796468),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function RiddleMeThis()
	Attack = true
	NeutralAnims = false
	WalkSpeed = 0
	MusicID = 1420353940
	Pitch = 1
	Muted = true
	repeat swait() until Music.IsLoaded	
	Muted = false
	Music.TimePosition = 0

		local A_1 = "Riddle Me This.."
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
		wait(2)
		local A_1 = "Riddle Me That.."
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
		wait(2)
		local A_1 = "Whos Afraid Of The Big Black..?"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.BrickColor = BrickColor.new'Really black' end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.BrickColor = BrickColor.new'Really black' end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = .25 v.BrickColor = BrickColor.new'Medium stone grey' end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = .25 v.BrickColor = BrickColor.new'Medium stone grey' end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.BrickColor = BrickColor.new'Really black' end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = BrickColor.new'Black'.Color end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = BrickColor.new'Black'.Color end)
	WalkSpeed = 50
	RecolorTextAndRename("The Big Black",BrickColor.new'Really black'.Color,C3.N(1,1,1))
	Core2.BrickColor = BrickColor.new'Really black'
	Core2.Material = Enum.Material.Glass	
	Mode = 666666666666
	Sound(Root,"206082327",1,2.5,false,true,true)
	Sound(Root,"847061203",1,5,false,true,true)
	Sound(Root,"239000203",1,2.5,false,true,true)
	Sound(Root,"579687077",.75,2.5,false,true,true)
	NoobySphere2(2.5,'Multiply',Core2.CFrame,V3.N(0,0,0),1,Core2.BrickColor)
	for i = 1, 24 do
		NoobyBlock(1,M.RNG(20,100)/100,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(2,2,2),.04,Core2.Color,0,true)
	end
	for i = 0, 15 do
		NoobySphere(3,-.5,'Multiply',Core2.CFrame*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(.5,.5,25),-.04,Core2.Color,0)
	end
	for i = 0, .7, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.0104959598, -0.113952652, 0.672263861, 0.999963522, 0.00820299331, -0.0023882892, -0.00821700692, 0.846846819, -0.531773448, -0.00233961921, 0.531773746, 0.846883237),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.49749428, -1.06169748, -0.0426189601, 0.999878228, -0.00744201383, 0.013721575, -0.000100045589, 0.875963986, 0.482376754, -0.0156094572, -0.482319295, 0.875856459),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498449236, -1.1497941, 0.0108022094, 0.999878228, -0.0120362351, 0.009939529, -0.000100045589, 0.631795883, 0.775134981, -0.0156094572, -0.775041461, 0.631717622),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.12307608, 0.484921068, 0.092245549, 0.865161359, 0.501252413, -0.0155520458, 0.497926384, -0.862286389, -0.092366755, -0.059709385, 0.07216838, -0.995603561),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.37669122, 0.484069884, 0.0531393886, 0.866546988, -0.498853445, -0.0155524863, -0.49802509, -0.862227678, -0.0923835635, 0.032676056, 0.0878001451, -0.995602131),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(1.14440181e-05, 1.49895036, -0.0144141242, 1.00000012, 0, -9.31322575e-10, 0, 0.99796474, 0.0637694895, -9.31322575e-10, -0.0637694895, 0.99796468),Alpha)
	end
	Attack = false
	NeutralAnims = true
end

function L_O_S_T()
	for _,v in next, LWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.Color = C3.N(.4,0,0) end
	end
	for _,v in next, RWing:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.Color = C3.N(.4,0,0) end
	end
	for _,v in next, LWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.Color = C3.N(.4,0,0) end
	end
	for _,v in next, RWingEXT:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Transparency = 0 v.Color = C3.N(.4,0,0) end
	end
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v.Name ~= 'Main')then v.Material = Enum.Material.Glass v.Color = C3.N(.4,0,0) end
	end
	pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(.4,0,0) end)
	pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(.4,0,0) end)
	WalkSpeed = 24
	RecolorTextAndRename("L O S T  S O U L",BrickColor.new'Crimson'.Color,C3.N(0,0,0))
	MusicID = 343860759
	Pitch = .9
	Mode = 666
	Core2.Color = C3.N(.4,0,0)
	Core2.Material = Enum.Material.Neon	
end

--// Wrap it all up \--

Plr.Chatted:connect(function(msg)
	if(msg:sub(1,5) == "play/" and Mode == 6)then
		local info = game.MarketplaceService:GetProductInfo(tonumber(msg:sub(6)))
		if(info and info.Name)then
			Chat("Playing: "..info.Name,'rainbow')
		end
		MusicID = msg:sub(6)
		VisSong = msg:sub(6)
	elseif(msg:sub(1,5) == 'tpos/' and Mode == 6)then
		Music.TimePosition = tonumber(msg:sub(6))
	end	
end)

function KeyPress(code)
	if(code == Enum.KeyCode.One and Mode ~= 1)then
		MurderMode()
	elseif(code == Enum.KeyCode.Two and Mode ~= 2)then
		PureMode()
	elseif(code == Enum.KeyCode.Three and Mode ~= 3)then
		GlitchMode()
	elseif(code == Enum.KeyCode.Four and Mode ~= 4)then
		StressMode()
	elseif(code == Enum.KeyCode.Five and Mode ~= 5)then
		JusticeMode()
	elseif(code == Enum.KeyCode.Six and Mode ~= 6)then
		VisMode()
	elseif(code == Enum.KeyCode.Seven and Mode ~= 7)then
		IceMode()
	elseif(code == Enum.KeyCode.Eight and Mode ~= 8)then
		LoveMode()
	elseif(code == Enum.KeyCode.Nine and Mode ~= 9)then
		ToxicMode()
	elseif(code == Enum.KeyCode.Zero and Mode ~= 10)then
		FluctuateMode()
	-- Transformations
	elseif(code == Enum.KeyCode.T)then
		if(Mode == 1)then
			RiddleMeThis()
		elseif(Mode == 4)then
			InsaneMode()
		elseif(Mode == 666666666666)then
			L_O_S_T()
		elseif(Mode == 666)then
			MurderMode()
		elseif(Mode == 696969)then
			StressMode()
		elseif(Mode == 10)then
			BarracudaMode()
		end
	-- Toggle player attacking
	elseif(code == Enum.KeyCode.Semicolon)then
		DontAttackPlayers = not DontAttackPlayers
		Chat(DontAttackPlayers and "You can no longer attack players" or "You can now attack players")
	-- Attacks
	elseif(code == Enum.KeyCode.Z)then
		if(Mode == 1)then
			if(not UIS.TouchEnabled)then MurderNigger((Mouse.Target and Mouse.Target.Parent)) else Output("Note","Tap someone, to murder them") MobileMurder() end
		elseif(Mode == 666666666666)then
			if(not UIS.TouchEnabled)then NeckSnap((Mouse.Target and Mouse.Target.Parent)) else Output("Note","Tap someone, to snap their neck") MobileNeckSnap() end

		elseif(Mode == 2)then
			PureBomb()
		elseif(Mode == 3)then
			ClickGlitch()
		elseif(Mode == 4)then
			Shrek()
		elseif(Mode == 5)then
			Aeroplane()
		elseif(Mode == 6)then
			SongSmash()
		end
	end
end

function AttackCombo()
	if(Combo == 1)then AttackOne() elseif(Combo == 2)then AttackTwo() elseif(Combo == 3)then AttackThree() end
end

-- Mode Changing Keys

function BuildButton(name,pos,act,image)
	if(UIS.TouchEnabled)then
		local func = function()
			if(not Attack)then
				act()
			end
		end
		local downID = 97166756;
		local upID = 97166444;
		local bPos = UDim2.new(.72,-pos.x,.20,-pos.y)
		
		local button = MobileButton:Clone();
		button.Parent = MobileGUI
		button.ActionTitle.Text = name
		button.MouseButton1Down:connect(function()
			button.Image = 'rbxassetid://'..downID
			func()
		end)
		button.MouseButton1Up:connect(function()
			button.Image = 'rbxassetid://'..upID
		end)
		button.MouseLeave:connect(function()
			button.Image = 'rbxassetid://'..upID
		end)
		button.Position = bPos
		if(image)then
			button.ActionTitle:destroy()
			button.ActionIcon.Image = 'rbxassetid://'..image
		end
		return button;
	end
end
local keys = {"One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Zero"}

function BuildModeButton(name,pos,act,number)
	if(UIS.TouchEnabled)then
		local func = function()
			if(not Attack and Mode ~= number)then
				act()
			end
		end
		local downID = 97166756;
		local upID = 97166444;
		local bPos = UDim2.new(.72,-pos.x,.20,-pos.y)
		
		local button = MobileButton:Clone();
		button.Parent = MobileGUI
		button.ActionTitle.Text = name
		button.MouseButton1Down:connect(function()
			button.Image = 'rbxassetid://'..downID
			func()
		end)
		button.MouseButton1Up:connect(function()
			button.Image = 'rbxassetid://'..upID
		end)
		button.MouseLeave:connect(function()
			button.Image = 'rbxassetid://'..upID
		end)
		button.Position = bPos
		return button;
	end
end

if(UIS.TouchEnabled)then
	Output("Warn","FYI, not all moves will be mobile supporting in the future.")
	local ModeButtons = {}
	
	table.insert(ModeButtons,BuildModeButton("Murder",Vector2.new(500,205),MurderMode,1))
	table.insert(ModeButtons,BuildModeButton("Clarity",Vector2.new(500,155),PureMode,2))
	table.insert(ModeButtons,BuildModeButton("Glitchy",Vector2.new(500,105),GlitchMode,3))
	table.insert(ModeButtons,BuildModeButton("Stress",Vector2.new(500,55),StressMode,4))
	table.insert(ModeButtons,BuildModeButton("Justice",Vector2.new(500,5),JusticeMode,5))
	table.insert(ModeButtons,BuildModeButton("Visual",Vector2.new(450,205),VisMode,6))
	table.insert(ModeButtons,BuildModeButton("SubZero",Vector2.new(450,155),IceMode,7))
	table.insert(ModeButtons,BuildModeButton("Love",Vector2.new(450,105),LoveMode,8))
	table.insert(ModeButtons,BuildModeButton("Nuclear",Vector2.new(450,55),ToxicMode,9))
	table.insert(ModeButtons,BuildModeButton("FLUCTUATE",Vector2.new(450,5),FluctuateMode,10))
	
	local HideB;
	local Hiding = false;
	HideB = BuildButton("Hide",Vector2.new(550,205),function() Hiding = not Hiding; for _,v in next, ModeButtons do v.Visible = not Hiding; end HideB.ActionTitle.Text = (Hiding and 'Show' or 'Hide') end)
	
	BuildButton("Attack",Vector2.new(0,0),AttackCombo,1826947151)
	
	BuildButton("Z",Vector2.new(25,100),function() KeyPress(Enum.KeyCode.Z) end)
	BuildButton("X",Vector2.new(75,50),function() KeyPress(Enum.KeyCode.X) end)
	BuildButton("C",Vector2.new(75,150),function() KeyPress(Enum.KeyCode.C) end)
	BuildButton("V",Vector2.new(125,100),function() KeyPress(Enum.KeyCode.V) end)
end

UIS.InputBegan:connect(function(io,gpe)
	if(Attack)then return end
	if(not gpe)then
		local code = io.KeyCode;
		if(io.UserInputType == Enum.UserInputType.Keyboard)then
			KeyPress(code)
		elseif(io.UserInputType == Enum.UserInputType.MouseButton1)then
			AttackCombo()
		end
	end
end)


coroutine.wrap(function()
	-- AURAS
	while true do		
		if(Mode == 5)then
			NoobySphere(5,0.15,"Multiply",Root.CFrame*CF.N(M.RNG(-5,5),-6,M.RNG(-5,5))*CF.A(M.R(90),0,0),V3.N(1.5,1.5,10),-0.015,BrickColor.new'White',0)
		elseif(Mode == 10 or Mode == 666666666666)then
			NoobySphere(5,math.random(25,75)/100,"Multiply",Root.CFrame*CF.N(M.RNG(-15,15),-10,M.RNG(-15,15))*CF.A(M.R(90),0,0)*CF.A(M.RRNG(-25,25),M.RRNG(-25,25),M.RRNG(-25,25)),V3.N(.75,.75,15),.005,Core2.BrickColor,0)			
		end
		if(Mode == 666666666666)then
			NoobySphere(5,math.random(75,150)/100,"Multiply",Root.CFrame*CF.N(M.RNG(-35,35),-10,M.RNG(-35,35))*CF.A(M.R(90),0,0)*CF.A(M.RRNG(-25,25),M.RRNG(-25,25),M.RRNG(-25,25)),V3.N(.75,.75,25),.005,Core2.BrickColor,0)					
		end
		swait(1)
	end
end)()

coroutine.resume(coroutine.create(function() -- Burning Damge Loop
	while true do
		swait(1)
		for who,data in next, Radioactive do
			local lastBurn, burnMaxTime = unpack(data)
			if(time()-lastBurn >= BurnInterval)then
				data[1] = time()
				for _,v in next, who:children() do if(v.Name == 'Health' and v:IsA'Script')then v.Disabled = true end end
				local hum = who:FindFirstChildOfClass'Humanoid'
				local tors = GetTorso(who)
				if(hum and tors and hum.Health >= 0)then
					local BurnDamage = {4,12}
					local  c = Instance.new("ObjectValue",hum)
					c.Name = "creator"
					c.Value = Player
					game:service'Debris':AddItem(c,0.35)
					local DoneDamage = M.RNG(unpack(BurnDamage))
					Droplet{Size=.5,Color=BrickColor.new'Lime green',Direction=-(tors.CFrame.upVector*2000),Origin=tors.CFrame}
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Player
					S.Debris:AddItem(c,0.35)
					if(Hits >= MaxHits/4)then
						local Mult = (DoneDamage*(Hits/MaxHits))*4
						DoneDamage = DoneDamage + Mult
					end
					if(hum.Health > 0)then	
						Hits = math.min(Hits + 1,MaxHits)
						HitTime = HitTime + .1
						if(who:FindFirstChild'Head')then
							ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), math.floor(DoneDamage), 1.5, BrickColor.new'Forest green'.Color)
						end
						if(hum.Health-DoneDamage <= 0)then print'Got kill' end
						hum.MaxHealth = hum.MaxHealth - DoneDamage
					end
				end
				if(time() >= burnMaxTime or hum and hum.Health <= 0)then
					Radioactive[who] = nil;
					for _,v in next, who:children() do if(v.Name == 'Health' and v:IsA'Script')then v.Disabled = false end end
				end
			end
		end
	end
end))

while true do
	swait()
	Sine = Sine + Change
	WingSine = WingSine + WingChange
	if(Hue > 360)then Hue = 0 end
	Hue = Hue + 1
	
	if(not Music or not Music.Parent)then
		local tPos = 0;
		if(Music)then tPos = Music.TimePosition; Music:Stop(); Music:Destroy(); end
		Music = Sound(Char,MusicID,1,3,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tPos;
	end
	Music.SoundId = "rbxassetid://"..MusicID
	Music.Parent = Char
	Music.Pitch = Pitch
	Music.Volume = 2
	if(not Muted)then
		Music:Resume()
	else
		Music:Pause()
	end
	
	if(God)then
		Hum.MaxHealth = 1e100
		Hum.Health = 1e100
		if(not Char:FindFirstChildOfClass'ForceField')then IN("ForceField",Char).Visible = false end
		Hum.Name = M.RNG()*100
	end
	
	local hitfloor,posfloor,norm = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	
	if(Mode == 3)then
		for _,v in next, LWing:children() do
			local what = M.RNG()
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,what,what)
			end
		end
		for _,v in next, RWing:children() do
			local what = M.RNG()
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,what,what)
			end
		end
		for _,v in next, LWingEXT:children() do
			local what = M.RNG()
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,what,what)
			end
		end
		for _,v in next, RWingEXT:children() do
			local what = M.RNG()
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,what,what)
			end
		end

		local what1 = M.RNG()
		local what2 = M.RNG()
		local what3 = M.RNG()
		local what4 = M.RNG()
		Core2.Color = C3.N(what1,what1,what1)
		
		for _,v in next, Halo:children() do
			if(v:IsA'BasePart')then
				v.Color = C3.N(what1,what1,what1)
			end
		end
		
		text.TextStrokeColor3 = C3.N(what2,what2,what2)
		text.TextColor3 = C3.N(what3,what3,what3)
		pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(what4,what4,what4) end)
		pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(what4,what4,what4) end)
	elseif(Mode == 4)then
		for _,v in next, LWing:children() do
			local what = M.RNG()*.5
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,0,0)
			end
		end
		for _,v in next, LWingEXT:children() do
			local what = M.RNG()*.5
			if(v:IsA'BasePart')then
				v.Color = C3.N(what,0,0)
			end
		end

		local what1 = M.RNG()*.5
		local what2 = M.RNG()*.5
		local what3 = M.RNG()*.5
		local what4 = M.RNG()*.5
		Core2.Color = C3.N(what1,0,0)
		
		for _,v in next, Halo:children() do
			if(v:IsA'BasePart')then
				v.Color = C3.N(what1,0,0)
			end
		end
		
		text.TextStrokeColor3 = C3.N(what2,0,0)
		text.TextColor3 = C3.N(what3,0,0)
		pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(what4,0,0) end)
		pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(what4,0,0) end)
	elseif(Mode == 696969)then
		for _,v in next, LWing:children() do
			if(v:IsA'BasePart')then
				v.Color = C3.N(M.RNG()*.35,0,0)
			end
		end
		for _,v in next, LWingEXT:children() do
			if(v:IsA'BasePart')then
				v.Color = C3.N(M.RNG()*.35,0,0)
			end
		end

		Core2.Color = C3.N(M.RNG()*.35,0,0)
		
		for _,v in next, Halo:children() do
			if(v:IsA'BasePart')then
				v.Color = Core2.Color
			end
		end
		
		text.TextStrokeColor3 = C3.N(M.RNG()*.35,0,0)
		text.TextColor3 = C3.N(M.RNG()*.35,0,0)
		pcall(function() Char.ReaperShadowHead.Eye1.Color = C3.N(M.RNG()*.35,0,0) end)
		pcall(function() Char.ReaperShadowHead.Eye2.Color = C3.N(M.RNG()*.35,0,0)end)	
	elseif(Mode == 6)then
		local color = C3.HSV(Hue/360,1,math.min(pl/1000,1))
		local color2 = C3.HSV(Hue/360,1,math.min(pl/500,1))
		for _,v in next, LWing:children() do
			if(v:IsA'BasePart')then
				v.Color = v.Color:lerp(color,.3)
			end
		end
		for _,v in next, RWing:children() do
			if(v:IsA'BasePart')then
				v.Color = v.Color:lerp(color,.3)
			end
		end
		for _,v in next, LWingEXT:children() do
			if(v:IsA'BasePart')then
				v.Color = v.Color:lerp(color,.3)
			end
		end
		for _,v in next, RWingEXT:children() do
			if(v:IsA'BasePart')then
				v.Color = v.Color:lerp(color,.3)
			end
		end
		Core2.Color = Core2.Color:lerp(color,.3)
		
		for _,v in next, Halo:children() do
			if(v:IsA'BasePart')then
				v.Color = v.Color:lerp(color,.3)
			end
		end
		
		text.TextStrokeColor3 = text.TextStrokeColor3:lerp(color2,.3)
		text.TextColor3 = text.TextColor3:lerp(color2,.3)
		pcall(function() Char.ReaperShadowHead.Eye1.Color = Char.ReaperShadowHead.Eye1.Color:lerp(color,.3) end)
		pcall(function() Char.ReaperShadowHead.Eye2.Color = Char.ReaperShadowHead.Eye2.Color:lerp(color,.3) end)
	end
	
	LWingWelds[1].C0 = LWingWelds[1].C0:lerp(CF.N(0,0,2.25)*CF.A(0,M.R(-90),0)*CF.A(M.R(5+10*M.C(WingSine/32)),0,M.R(12.5+5*M.C(WingSine/32))),.1)
	LWingWelds[2].C0 = LWingWelds[2].C0:lerp(CF.N(0,1,3.5)*CF.A(0,M.R(-90),0)*CF.A(M.R(10+15*M.C(WingSine/32)),0,M.R(25+7.5*M.C(WingSine/32))),.1)
	LWingWelds[3].C0 = LWingWelds[3].C0:lerp(CF.N(0,2,4.5)*CF.A(0,M.R(-90),0)*CF.A(M.R(15+20*M.C(WingSine/32)),0,M.R(37.5+10*M.C(WingSine/32))),.1)
	LWingWelds[4].C0 = LWingWelds[4].C0:lerp(CF.N(0,3,5.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(20+25*M.C(WingSine/32)),0,M.R(50+12.5*M.C(WingSine/32))),.1)
	LWingWelds[5].C0 = LWingWelds[5].C0:lerp(CF.N(0,4,6.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(25+30*M.C(WingSine/32)),0,M.R(62.5+15*M.C(WingSine/32))),.1)
	LWingWelds[6].C0 = LWingWelds[6].C0:lerp(CF.N(0,5,7.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(35+40*M.C(WingSine/32)),0,M.R(75+17.5*M.C(WingSine/32))),.1)
	
	RWingWelds[1].C0 = RWingWelds[1].C0:lerp(CF.N(0,0,-2.25)*CF.A(0,M.R(-90),0)*CF.A(M.R(5+10*M.C(WingSine/32)),0,-M.R(12.5+5*M.C(WingSine/32))),.1)
	RWingWelds[2].C0 = RWingWelds[2].C0:lerp(CF.N(0,1,-3.5)*CF.A(0,M.R(-90),0)*CF.A(M.R(10+15*M.C(WingSine/32)),0,-M.R(25+7.5*M.C(WingSine/32))),.1)
	RWingWelds[3].C0 = RWingWelds[3].C0:lerp(CF.N(0,2,-4.5)*CF.A(0,M.R(-90),0)*CF.A(M.R(15+20*M.C(WingSine/32)),0,-M.R(37.5+10*M.C(WingSine/32))),.1)
	RWingWelds[4].C0 = RWingWelds[4].C0:lerp(CF.N(0,3,-5.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(20+25*M.C(WingSine/32)),0,-M.R(50+12.5*M.C(WingSine/32))),.1)
	RWingWelds[5].C0 = RWingWelds[5].C0:lerp(CF.N(0,4,-6.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(25+30*M.C(WingSine/32)),0,-M.R(62.5+15*M.C(WingSine/32))),.1)
	RWingWelds[6].C0 = RWingWelds[6].C0:lerp(CF.N(0,5,-7.75)*CF.A(0,M.R(-90),0)*CF.A(M.R(35+40*M.C(WingSine/32)),0,-M.R(75+17.5*M.C(WingSine/32))),.1)
	
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and (Hum.WalkSpeed < 24 and "Walk" or "Run") or hitfloor and "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end																																																																																																		
	if(State == 'Run' and Mode ~= 5 and Mode ~= 10 and Mode ~= 666666666666 and Mode ~= 666)then
		local wsVal = 7 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
		Change = 1
			
	elseif(State == 'Walk' and Mode ~= 5 and Mode ~= 10 and Mode ~= 666666666666 and Mode ~= 666)then
		local wsVal = 7 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
		Change = 1
		if(Mode == 7)then
			RH.C1 = RH.C1:lerp(CF.N(0,1-.05*M.C(Sine/wsVal),0+.1*M.C(Sine/wsVal))*CF.A(M.R(8-0*M.C(Sine/wsVal))+-M.S(Sine/wsVal)/3,0,0),Alpha)
			LH.C1 = LH.C1:lerp(CF.N(0,1+.05*M.C(Sine/wsVal),0-.1*M.C(Sine/wsVal))*CF.A(M.R(8+0*M.C(Sine/wsVal))+M.S(Sine/wsVal)/3,0,0),Alpha)
		else
			RH.C1 = RH.C1:lerp(CF.N(0,1-.1*M.C(Sine/wsVal),0+.2*M.C(Sine/wsVal))*CF.A(M.R(16-0*M.C(Sine/wsVal))+-M.S(Sine/wsVal)/1.75,0,0),Alpha)
			LH.C1 = LH.C1:lerp(CF.N(0,1+.1*M.C(Sine/wsVal),0-.2*M.C(Sine/wsVal))*CF.A(M.R(16+0*M.C(Sine/wsVal))+M.S(Sine/wsVal)/1.75,0,0),Alpha)
		end
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.2)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.2)
	end	
	

	
	if(Hits > 0)then
		local TimeDiff = (HitTime-time())*2
	--	ComboBG:TweenPosition(UDim2.new(0,0,.4,0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.2,true)
	--	ComboFill:TweenSize(UDim2.new(math.min(1*TimeDiff,1),0,1,0),Enum.EasingDirection.Out,Enum.EasingStyle.Linear,.1,true)		
	end
	
	if(HitTime < time() and Hits > 0)then
		Hits = 0
	--	ComboBG:TweenPosition(UDim2.new(-.1,0,.4,0),Enum.EasingDirection.Out,Enum.EasingStyle.Linear,.2,true)
	end
--	ComboLbl.Text = Hits
	
	Hum.WalkSpeed = WalkSpeed
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			if(Mode == 1)then
				Change = 1
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00779043138, -0.0846293643+.1*M.C(Sine/32), -0.204210758, 0.912902117, -0.00691865245, -0.408120036, 0.117574908, 0.961935759, 0.246689886, 0.390878439, -0.273188382, 0.87896657),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.587742627, -1.00122428-.1*M.C(Sine/32), -0.165018916, 0.860076427, 0.294745922, 0.416405559, -0.252913684, 0.955196917, -0.15373303, -0.443061411, 0.0269074962, 0.896087468),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.343915284, -1.07833397-.1*M.C(Sine/32), -0.0402937233, 0.964631855, -0.173768938, -0.198217094, 0.117325157, 0.956397653, -0.26746732, 0.236051857, 0.234751642, 0.942958832),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.39700282, 0.545769572, -0.00181379914, 0.907886505, 0.355485201, -0.222199559, -0.405204862, 0.880023003, -0.247727305, 0.107477367, 0.314944565, 0.943005204)*CF.A(0,M.R(16-8*M.C(Sine/32)),M.R(0+12*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.476125))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(0.903979659, 0.624733686, -0.396169931, 0.827836394, 0.560810268, -0.013374418, 0.472599089, -0.7100721, -0.521965444, -0.302220345, 0.42578119, -0.852861941)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(-0.0470906645, 1.53467083, -0.115898043, 0.906688511, -0.16142872, 0.389688164, -0.00265284558, 0.921666741, 0.387973785, -0.421792656, -0.352805078, 0.835236311)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
			elseif(Mode == 2)then
				Change = 1
				RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674868+.1*M.C(Sine/32), -5.34626452e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.496485978, -0.990816116-.1*M.C(Sine/32), 0.0216165781, 0.970629156, 7.27576055e-11, 0.240580648, -0.00151285366, 0.999980211, 0.00610364834, -0.240575925, -0.00628834311, 0.970610023),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.491330802, -1.06821454-.1*M.C(Sine/32), 0.0589520633, 0.986244023, 0.0538565964, -0.156276181, 0.00103943795, 0.943392873, 0.331676066, 0.165292785, -0.327276021, 0.930359602),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-0.787155986, 0.248306945, -0.683226228, 0.0398273654, -0.999169707, 0.00859495346, 0.554963291, 0.0149663882, -0.831740201, 0.830920994, 0.0378959104, 0.555098593)*CF.A(M.R(0+5*M.C(Sine/32)),0,0),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(0.787632346, 0.574486911, -0.794373989, 0.0789790228, 0.995851278, 0.0451963581, 0.631366551, -0.0148838377, -0.775341749, -0.771452367, 0.0897712111, -0.629922688)*CF.A(M.R(0+5*M.C(Sine/32)),0,0),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(8.16642296e-06, 1.49894726, -0.014402397, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
			elseif(Mode == 3)then
				Change = 1
				RJ.C0 = clerp(RJ.C0,CFrame.new(0.022457514, 0.0062841149, -0.00324006379, 0.982301593, 0.00117789698, 0.187302738, -4.02951969e-07, 0.999980211, -0.00628649723, -0.187306449, 0.00617515948, 0.982282162),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.539962769, -1.00525093, -0.13583532, 0.998935044, -0.0434875898, 0.0154168755, 0.040365234, 0.985544145, 0.164539278, -0.0223494321, -0.163741738, 0.986250162),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498531163, -0.990978718, 0.01546143, 0.985106111, 0, -0.171948016, 0.00108131359, 0.999980211, 0.00619494682, 0.171944603, -0.00628860993, 0.98508662),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.42806315, 0.51039964, -0.00658199936, 0.990103781, 0.139778674, -0.0125195384, -0.139578417, 0.97154665, -0.191350713, -0.0145834237, 0.191204533, 0.981441915)*CF.A(0,0,M.R(0+6*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.42666709, 0.532186806, -0.134510398, 0.990944147, -0.126525059, 0.0449620783, 0.133282125, 0.967499852, -0.214895189, -0.0163111985, 0.218941733, 0.975601614)*CF.A(0,0,M.R(0-6*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.012802)),M.R(0-15*M.S(Sine/0.716246))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(2.28285789e-05, 1.49894154, -0.0143941939, 0.984171331, -0.0497024879, -0.170107797, 0.0760453045, 0.985445082, 0.152036116, 0.160075322, -0.162565485, 0.973626494)*CF.A(M.R(0+3*M.C(Sine/32)),0,M.R(0+6*M.C(Sine/32)))*CF.A(0,M.R(0+16*M.C(Sine/0.98172)),M.R(0+15*M.S(Sine/0.65142))),Alpha)
			elseif(Mode == 4)then
				Change = 1 
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00847404078, -0.131645858+.1*M.C(Sine/16), -0.542845488, 0.999965072, -0.00807052851, -0.00218774565, 0.00805599708, 0.85972774, 0.510689199, -0.00224066619, -0.51068902, 0.859762609),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.496114701, -1.0144912-.1*M.C(Sine/16), 0.0453964472, 0.976583362, 0.00805600174, 0.214989081, 0.103035107, 0.859728813, -0.50025022, -0.188862324, 0.510687351, 0.838766694),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498885572, -1.01948476-.1*M.C(Sine/16), 0.0378640294, 0.997592449, 0.00805600174, -0.0688822865, -0.0420893468, 0.859728813, -0.509013772, 0.055119466, 0.510687351, 0.857997894),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.42592692, 0.493003547, -0.129623473, 0.987043619, 0.159894824, 0.0133710029, -0.130732149, 0.849730968, -0.51075089, -0.0930281729, 0.502385318, 0.859624803)*CF.A(0,0,M.R(0+6*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.817272)),M.R(0+15*M.S(Sine/0.9872346))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.1449033, 0.691183329, -0.239056498, 0.899715602, 0.434673697, 0.0396348648, 0.435808241, -0.899650335, -0.0264700353, 0.024151668, 0.0410887003, -0.998863578)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(7.87388399e-06, 1.43020797, -0.212884247, 1, -8.72649252e-07, -4.02983278e-06, 2.92807817e-06, 0.838354766, 0.545125127, 2.90293247e-06, -0.545125067, 0.838354826)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
			elseif(Mode == 5)then
				Change = 1
				RJ.C0 = clerp(RJ.C0,CFrame.new(5.48791013e-11+.2*M.S(Sine/30), 1.2571125+.5*M.C(Sine/32), -3.51015478e-06+.2*M.S(Sine/32), 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.436587602, -0.992619872, 0.0206923336, 0.99808234, 0.0599006973, 0.0156119233, -0.0600048117, 0.998178363, 0.00628757617, -0.0152068557, -0.0072123101, 0.999858439),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.481217712, -0.504008591, -0.8678087, 0.997120202, -0.0733773932, -0.0191624481, 0.0741236135, 0.889526427, 0.450830936, -0.0160352942, -0.450953096, 0.892403722),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.49673307, 0.593781948+.1*M.C(Sine/32), 0.0200225115, 0.966687799, 0.25548178, 0.0156119233, -0.255602777, 0.96676141, 0.00628757617, -0.0134866452, -0.0100685749, 0.999858439)*CF.A(0,0,M.R(0+5*M.C(Sine/32))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50987279, 0.675035477+.1*M.C(Sine/32), -0.0274340063, 0.943747699, -0.330297619, 0.0156119233, 0.33023873, 0.943876505, 0.00628757617, -0.0168125015, -0.000778224785, 0.999858439)*CF.A(0,0,M.R(0-5*M.C(Sine/32))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(4.35172478e-06, 1.49894357, -0.0144011974, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799),Alpha)
			elseif(Mode == 6)then
				Change = 3
				RJ.C0 = clerp(RJ.C0,CFrame.new(2.74447132e-13, 0.00628674263-(pl/3000), 4.19029675e-07, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.50538516, -1.00439715+.2*M.C(Sine/16)+(pl/3000), -0.54824096, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498537898, -0.990978718+(pl/3000), 0.0154631268, 0.999878109, -9.59694546e-11, 0.015612145, -9.81408521e-05, 0.999980211, 0.00628542574, -0.0156118376, -0.00628619269, 0.999858439),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.42332602, 0.626581013-(pl/3000), -0.328449368, 0.922103286, 0.304182172, -0.239162698, -0.178854272, -0.213036552, -0.960534513, -0.343127936, 0.92848742, -0.142037436)*CF.A(-M.R(pl/36),0,0),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.0793153, 0.434256732-(pl/3000), 0.60275507, 0.650267124, 0.696277916, -0.303891033, -0.505378187, 0.695125222, 0.511267006, 0.567226231, -0.178880244, 0.803900838),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(7.8920275e-06, 1.49894428, -0.0144027323, 0.983284235, 0.010468211, -0.181776017, 0.00114496367, 0.9979707, 0.0636651218, 0.182073623, -0.0628090426, 0.981276989)*CF.A(M.R(pl/36),0,0),Alpha)
			elseif(Mode == 7)then
				Change = 1	
				RJ.C0 = clerp(RJ.C0,CFrame.new(0.0101235649, -1.07766318+.1*M.C(Sine/16), 0.648248792, 0.999971092, -0.00739747565, -0.00181146339, 0.00738599803, 0.883920729, 0.467578471, -0.00185771007, -0.467578262, 0.883949816)*CF.A(0,M.R(0+2*M.C(Sine/0.12512)),M.R(0+2*M.S(Sine/0.0512412))),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.504728794, 0.381877124-.1*M.C(Sine/16), -0.515005529, 0.999878228, 0.00738599803, 0.0137542095, -9.66741936e-05, 0.883920729, -0.467636794, -0.0156115945, 0.467578471, 0.883813798)*CF.A(0,-M.R(0+2*M.C(Sine/0.12512)),-M.R(0+2*M.S(Sine/0.0512412)))*CF.A(M.R(0+1*M.S(Sine/0.283547)),M.R(0+1*M.C(Sine/0.356723)),0),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.491205901, 0.34564203-.1*M.C(Sine/16), -0.462503195, 0.999878228, 0.00738599803, 0.0137542095, -9.66741936e-05, 0.883920729, -0.467636794, -0.0156115945, 0.467578471, 0.883813798)*CF.A(0,-M.R(0+2*M.C(Sine/0.12512)),-M.R(0+2*M.S(Sine/0.0512412)))*CF.A(M.R(0+1*M.S(Sine/0.283547)),M.R(0+1*M.C(Sine/0.356723)),0),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-0.80868268, 0.497842163, -0.14479053, 0.744864702, -0.66721499, -0.00102781132, -0.0409338176, -0.0441599488, -0.998185575, 0.665959001, 0.743555188, -0.0602048337)*CF.A(0,M.R(0+2*M.C(Sine/0.134561367)),M.R(0+5*M.S(Sine/0.127347))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(0.754446983, 0.405229449, -0.406160057, 0.458563089, 0.88866204, -0.000157270115, 0.00361818075, -0.00204397738, -0.999991417, -0.88865459, 0.45855853, -0.00415253639)*CF.A(0,M.R(0+2*M.C(Sine/0.12543152)),M.R(0+5*M.S(Sine/0.273456123))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(3.87876844e-06, 1.54665208, -0.105986834, 1.00000012, 2.60770321e-06, 2.79070809e-05, -1.28485262e-05, 0.927553773, 0.373690069, -2.49119475e-05, -0.373690099, 0.927553654)*CF.A(0,M.R(0+2*M.C(Sine/0.25432)),M.R(0+5*M.S(Sine/0.421342134))),Alpha)
			elseif(Mode == 8)then
				Change = 1
				RJ.C0 = RJ.C0:lerp(CF.N(0,0,0)*CF.A(0,0,M.R(0+5*M.C(Sine/16))),Alpha)
				NK.C0 = NK.C0:lerp(NKC0*CF.A(0,0,-M.R(0+5*M.C(Sine/16))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,-M.R(0+5*M.C(Sine/16)))*CF.A(M.R(-15),M.R(25),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.A(0,0,-M.R(0+5*M.C(Sine/16))),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,-.15,0)*CF.A(M.R(15),0,M.R(20)),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.A(0,0,M.R(5+5*M.S(Sine/16))),Alpha)
			elseif(Mode == 9)then
				Change = 1
				if(hitfloor and Mode == 9)then OEffect{Material=Enum.Material.Neon,Effect='Fade',Mesh={MeshType=Enum.MeshType.Cylinder},Size=V3.N(.1,5,5),Frames=120,Color=BrickColor.new'Forest green',CFrame=CF.N(posfloor,posfloor+norm)*CF.A(0,M.R(90),0)} end
				local Colors = {"Forest green","Lime green","Earth green"}
				NoobyBlock(4,.025,"Multiply",LArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(1,1,1),.012,BrickColor.new(Colors[M.RNG(1,#Colors)]),0,true)
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00763900485, 0.0576088727+.1*M.C(Sine/32), -0.489215493, 0.999976635, -0.00668978505, -0.00145753659, 0.00667999825, 0.906569779, 0.422003359, -0.00150175206, -0.422003239, 0.906593204),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.508842707, -1.12272382-.1*M.C(Sine/32), -0.0245408416, 0.973195612, 0.0299689136, 0.228018239, 0.0911211073, 0.860081792, -0.501952767, -0.211157292, 0.509275496, 0.834296942),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.505672514, -1.12652683-.1*M.C(Sine/32), -0.0664639771, 0.908796906, 0.0139010083, -0.417007297, -0.155455723, 0.938765347, -0.307495654, 0.387197405, 0.344277233, 0.855307937),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.45529008, 0.399098635+.1*M.C(Sine/32), -0.00237059593, 0.9937765, 0.103129238, -0.0421066694, -0.0848314539, 0.45566994, -0.88609755, -0.0721958056, 0.884154797, 0.461582631)*CF.A(0,0,M.R(0-10*M.C(Sine/32)))*CF.A(0,M.R(0+6*M.C(Sine/0.1872634)),M.R(0+12*M.S(Sine/0.0124723465))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.25761306, 0.482083619+.1*M.C(Sine/32), -0.434745401, 0.42843774, 0.695737422, -0.576533496, 0.754532933, -0.626516104, -0.195340306, -0.497112989, -0.351322293, -0.793379903)*CF.A(0,M.R(0+6*M.C(Sine/0.1872634)),M.R(0+12*M.S(Sine/0.0124723465))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.26473606e-05, 1.49894953, -0.0143971443, 0.998992383, 0.0431914814, 0.0122066746, -0.03513439, 0.921768486, -0.386146128, -0.0279299468, 0.385328114, 0.922357082)*CF.A(M.R(0+10*M.C(Sine/32)),0,0)*CF.A(0,M.R(0+6*M.C(Sine/0.1872634)),M.R(0+12*M.S(Sine/0.0124723465))),Alpha)
			elseif(Mode == 10)then
				NoobyBlock(4,.025,"Multiply",LArm.CFrame*CF.N(0,-1,0)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(1,1,1),.012,BrickColor.new'Alder',0,true)
				Change = 1	
				RJ.C0 = clerp(RJ.C0,CFrame.new(3.20710125e-11+.2*M.S(Sine/32), 0.881578624+.5*M.C(Sine/32), -9.84873623e-07+.2*M.C(Sine/24), 0.999999821, 3.63797881e-11, 0, -4.58300065e-11, 0.999980092, -0.00628619455, 9.31322575e-10, 0.00628619082, 0.999980509),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.507622898, -0.617543876, -0.694063663, 0.999877989, -0.00717858272, 0.0138636231, -9.81731864e-05, 0.885106385, 0.465388477, -0.0156116197, -0.465333343, 0.884998262),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.499199599, -0.96504283, 0.0578122139, 0.999877989, -0.00369151891, 0.0151692061, -9.81731864e-05, 0.970136404, 0.242559701, -0.0156116197, -0.242531747, 0.970018268),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.40968728, 0.491904348, 0.019305028, 0.895423353, 0.179754242, 0.407314837, -0.16739957, 0.983670354, -0.0661047474, -0.412546366, -0.00899259746, 0.910892725)*CF.A(0,0,M.R(0+10*M.C(Sine/32))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(0.648883045, 0.459784538, -0.511239171, -0.133737907, 0.979713619, 0.149248496, 0.396290839, 0.190905675, -0.898058236, -0.908332765, -0.0609586462, -0.413783163)*CF.A(M.R(0+4*M.C(Sine/32)),M.R(0+4*M.C(Sine/32)),0),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(7.21290917e-06, 1.49894142, -0.0144039318, 0.999999821, 3.67581379e-07, -1.60187483e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.0637688339, 0.997965097),Alpha)
			elseif(Mode == 16)then
				Change = 1	
				RJ.C0 = RJ.C0:lerp(CF.N(0+.2*M.S(Sine/32),1.3-.5*M.C(Sine/32),0+.2*M.C(Sine/24))*CF.A(M.R(0+1.5*M.S(Sine/32)),M.R(0+5*M.S(Sine/36)),0),Alpha)
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,0)*CF.A(M.R(0+5*M.C(Sine/32)),0,0),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(.75,0+.1*M.C(Sine/32),-.5)*CF.A(M.R(-25-5*M.C(Sine/32)),M.R(15),M.R(80+10*M.C(Sine/32))),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(-.5,0+.1*M.C(Sine/32),-.5)*CF.A(M.R(25+5*M.C(Sine/32)),M.R(-15),M.R(-85-5*M.C(Sine/32))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,.4,-.5)*CF.A(M.R(-15-2.5*M.S(Sine/32)),M.R(25-5*M.C(Sine/32)),M.R(-5)),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.A(M.R(-15-5*M.C(Sine/32)),M.R(-25),M.R(5)),Alpha)
			elseif(Mode == 696969)then
				Change = 1
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00497054448, 0.0384125113+.1*M.C(Sine/32), -0.318240643, 0.999985576, -0.00531026162, -0.000893360935, 0.00530399941, 0.942669153, 0.333686858, -0.00092981942, -0.333686769, 0.942683578),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.497181207, -1.07329571-.1*M.C(Sine/32), -0.0259589553, 0.991927385, 0.00536903273, 0.126693994, 0.0373182632, 0.942499518, -0.332117736, -0.12119215, 0.334164649, 0.934690654),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.508173347, -1.05517495-.1*M.C(Sine/32), -0.101279587, 0.989477396, 0.015710555, -0.143832386, -0.0531964861, 0.963962197, -0.260666966, 0.13455373, 0.265575409, 0.954654515),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.3136189, 0.462844551+.1*M.C(Sine/32), 0.00274867564, 0.929629087, -0.368184805, -0.015158236, -0.360420376, -0.899919868, -0.245441884, 0.0767267719, 0.23363328, -0.969292879)*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.25962329, 0.543387234+.1*M.C(Sine/32), 0.0906403661, 0.898135066, 0.439483941, -0.0144048491, 0.399390757, -0.829028964, -0.391405523, -0.183958456, 0.345781803, -0.920105577)*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(-0.00269337045, 1.48585653, -0.187648922, 0.999991715, -0.00401760591, -0.00077160541, 0.00405273447, 0.94710511, 0.320898026, -0.000558450818, -0.320898473, 0.947113574)*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+7.5*M.S(Sine/0.01278125))),Alpha)
			elseif(Mode == 666666666666)then
				Change = 1
				NoobySphere(4,.025,"Multiply",RArm.CFrame*CF.N(0,-1.25,0)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),V3.N(.5,.5,.5),0,BrickColor.new'Black',0)
				RJ.C0 = clerp(RJ.C0,CFrame.new(7.0558559e-11, 1.61628103+.5*M.C(Sine/32), -3.05566937e-06, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.473465502, -1.00430846, 0.0547358543, 0.996436775, 0.0789096355, 0.0297838245, -0.0829922184, 0.980262518, 0.179437637, -0.0150366053, -0.181270093, 0.983318448),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.500664473, -0.996896267, 0.0722374618, 0.994860828, -0.10125193, 0.00038037356, 0.0999543592, 0.982697129, 0.155934408, -0.0161624532, -0.155095011, 0.987767398),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.29428089, 0.420441031, 0.493041277, 0.816086888, -0.538787425, 0.209070042, 0.381859779, 0.774240494, 0.504712522, -0.43380329, -0.33205387, 0.837588906)*CF.A(0,0,M.R(0-5*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.36178303, 0.535555065, 0.0481818169, 0.959323943, -0.276642442, -0.0562722012, -0.281998605, -0.948367953, -0.145173192, -0.0132056763, 0.155136824, -0.98780489)*CF.A(0,0,M.R(0+5*M.C(Sine/32)))*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(0.0176411867, 1.49121404, -0.0637010336, 0.942441404, 0.0288463272, -0.333124816, 0.0213407781, 0.989051461, 0.146020114, 0.333689809, -0.144724563, 0.931507409)*CF.A(0,M.R(0+32*M.C(Sine/0.025345)),M.R(0+24*M.S(Sine/0.0245987638))),Alpha)
			elseif(Mode == 666)then
				Change = 1
				RJ.C0 = RJ.C0:lerp(CF.N(0+.2*M.S(Sine/30),1.6+.2*M.C(Sine/32),0+.2*M.C(Sine/26))*CF.A(0,M.RRNG(-5,5),0),Alpha)
				if(M.RNG(1,30) == 1)then
					NK.C0 = NK.C0:lerp(NKC0*CF.A(M.RRNG(0,45),M.RRNG(-45,45),M.RRNG(-45,45)),1)
				else
					NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,-.35)*CF.A(M.R(-45+5*M.C(Sine/32)),0,0)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
				end
				LS.C0 = LS.C0:lerp(LSC0*CF.N(.75,0+.1*M.C(Sine/32),-.5)*CF.A(0,M.R(15),M.R(80+5*M.C(Sine/32)))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(-.5,0+.1*M.C(Sine/32),-.5)*CF.A(0,M.R(-15),M.R(-85-5*M.C(Sine/32)))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,.4,-.5)*CF.A(M.R(-15-2.5*M.S(Sine/32)),M.R(25-5*M.C(Sine/32)),M.R(-5))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.A(M.R(-15-5*M.C(Sine/32)),M.R(-25),M.R(5))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
			else			
				Change = 1
				RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0,.2*M.C(Sine/6),0)*CF.A(M.R(-5+5*M.C(Sine/12)),M.R(-10),0),Alpha)
				NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-5+5*M.C(Sine/12)),0,0),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.A(0,0,M.R(-7-5*M.C(Sine/12))),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.A(0,0,M.R(7+5*M.C(Sine/12))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,-.2*M.C(Sine/6),0)*CF.A(M.R(5-5*M.C(Sine/12)),M.R(10),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,-.2*M.C(Sine/6),0)*CF.A(M.R(5-5*M.C(Sine/12)),M.R(-10),0),Alpha)
			end
			-- idle
		elseif(State == 'Run' and Mode ~= 5 and Mode ~= 10 and Mode ~= 666666666666 and Mode ~= 666 and Mode ~= 16)then
			local wsVal = 7 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-15+2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,0+.3*M.S(Sine/wsVal))*CF.A(M.R(0-45*M.S(Sine/wsVal)),0,M.R(5)),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
		elseif(State == 'Walk' and Mode ~= 5 and Mode ~= 7 and Mode ~= 10 and Mode ~= 666666666666 and Mode ~= 666 and Mode ~= 16)then
			local wsVal = 7 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
			if(Mode == 4)then
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00847404078, -0.131645858-.1*M.C(Sine/(wsVal)), -0.542845488, 0.999965072, -0.00807052851, -0.00218774565, 0.00805599708, 0.85972774, 0.510689199, -0.00224066619, -0.51068902, 0.859762609),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.496114701, -1.0144912+.1*M.C(Sine/(wsVal)), 0.0453964472, 0.976583362, 0.00805600174, 0.214989081, 0.103035107, 0.859728813, -0.50025022, -0.188862324, 0.510687351, 0.838766694),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498885572, -1.01948476+.1*M.C(Sine/(wsVal)), 0.0378640294, 0.997592449, 0.00805600174, -0.0688822865, -0.0420893468, 0.859728813, -0.509013772, 0.055119466, 0.510687351, 0.857997894),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.42592692, 0.493003547, -0.129623473, 0.987043619, 0.159894824, 0.0133710029, -0.130732149, 0.849730968, -0.51075089, -0.0930281729, 0.502385318, 0.859624803)*CF.A(M.R(0+15*M.C(Sine/wsVal)),0,0)*CF.A(0,M.R(0+4*M.C(Sine/0.817272)),M.R(0+15*M.S(Sine/0.9872346))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.1449033, 0.691183329, -0.239056498, 0.899715602, 0.434673697, 0.0396348648, 0.435808241, -0.899650335, -0.0264700353, 0.024151668, 0.0410887003, -0.998863578)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(7.87388399e-06, 1.43020797, -0.212884247, 1, -8.72649252e-07, -4.02983278e-06, 2.92807817e-06, 0.838354766, 0.545125127, 2.90293247e-06, -0.545125067, 0.838354826)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
			elseif(Mode == 696969)then
				RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00847404078, -0.131645858-.1*M.C(Sine/(wsVal)), -0.542845488, 0.999965072, -0.00807052851, -0.00218774565, 0.00805599708, 0.85972774, 0.510689199, -0.00224066619, -0.51068902, 0.859762609),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.496114701, -1.0144912+.1*M.C(Sine/(wsVal)), 0.0453964472, 0.976583362, 0.00805600174, 0.214989081, 0.103035107, 0.859728813, -0.50025022, -0.188862324, 0.510687351, 0.838766694),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.498885572, -1.01948476+.1*M.C(Sine/(wsVal)), 0.0378640294, 0.997592449, 0.00805600174, -0.0688822865, -0.0420893468, 0.859728813, -0.509013772, 0.055119466, 0.510687351, 0.857997894),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.3136189, 0.462844551+.1*M.C(Sine/wsVal), 0.00274867564, 0.929629087, -0.368184805, -0.015158236, -0.360420376, -0.899919868, -0.245441884, 0.0767267719, 0.23363328, -0.969292879)*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.25962329, 0.543387234+.1*M.C(Sine/wsVal), 0.0906403661, 0.898135066, 0.439483941, -0.0144048491, 0.399390757, -0.829028964, -0.391405523, -0.183958456, 0.345781803, -0.920105577)*CF.A(0,M.R(0+4*M.C(Sine/0.173278)),M.R(0+15*M.S(Sine/0.01278125))),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(7.87388399e-06, 1.43020797, -0.212884247, 1, -8.72649252e-07, -4.02983278e-06, 2.92807817e-06, 0.838354766, 0.545125127, 2.90293247e-06, -0.545125067, 0.838354826)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
			
			elseif(Mode == 1)then
				RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-5-2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
				NK.C0 = NK.C0:lerp(NKC0*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.22*M.C(Sine/wsVal))*CF.A(M.R(0+37*M.C(Sine/wsVal)),0,M.R(-5+10*M.C(Sine/(wsVal/2))) ),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.2, 0.7, -0.396169931, 0.827836394, 0.560810268, -0.013374418, 0.472599089, -0.7100721, -0.521965444, -0.302220345, 0.42578119, -0.852861941)*CF.A(0,M.R(0+4*M.C(Sine/0.61237)),M.R(0+15*M.S(Sine/0.716246))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			else 
				if(hitfloor and Mode == 9)then OEffect{Material=Enum.Material.Neon,Effect='Fade',Mesh={MeshType=Enum.MeshType.Cylinder},Size=V3.N(.1,5,5),Frames=120,Color=BrickColor.new'Forest green',CFrame=CF.N(posfloor,posfloor+norm)*CF.A(0,M.R(90),0)} end
				RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-5-2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
				NK.C0 = NK.C0:lerp(NKC0,Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.22*M.C(Sine/wsVal))*CF.A(M.R(37*M.C(Sine/wsVal)),0,M.R(-5+10*M.C(Sine/(wsVal/2))) ),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,.22*M.C(Sine/wsVal))*CF.A(M.R(-37*M.C(Sine/wsVal)),0,M.R(5-10*M.C(Sine/(wsVal/2))) ),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			end
		elseif(State == 'Walk' and Mode == 7)then
			local wsVal = 7 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.3 * (Hum.WalkSpeed/8),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-2.5-1.25*M.C(Sine/(wsVal/2))),M.R(4*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.11*M.C(Sine/wsVal))*CF.A(M.R(18.5*M.C(Sine/wsVal)),0,M.R(-2.5+5*M.C(Sine/(wsVal/2))) ),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,.11*M.C(Sine/wsVal))*CF.A(M.R(-18.5*M.C(Sine/wsVal)),0,M.R(2.5-5*M.C(Sine/(wsVal/2))) ),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
		elseif((State == 'Walk' or State == 'Run') and Mode == 10)then
			Change = 1
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.48791013e-11, 0.881578624+.5*M.C(Sine/32), -3.51015478e-06, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271)*CF.A(M.R(-45),0,0),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.507622898, -0.617543876, -0.694063663, 0.999877989, -0.00717858272, 0.0138636231, -9.81731864e-05, 0.885106385, 0.465388477, -0.0156116197, -0.465333343, 0.884998262),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.499199599, -0.96504283, 0.0578122139, 0.999877989, -0.00369151891, 0.0151692061, -9.81731864e-05, 0.970136404, 0.242559701, -0.0156116197, -0.242531747, 0.970018268),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49673307, 0.593781948+.2*M.C(Sine/32), 0.0200225115, 0.966687799, 0.25548178, 0.0156119233, -0.255602777, 0.96676141, 0.00628757617, -0.0134866452, -0.0100685749, 0.999858439)*CF.A(M.R(-45),M.R(25),M.R(5+5*M.C(Sine/32))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.50987279, 0.675035477+.2*M.C(Sine/32), -0.0274340063, 0.943747699, -0.330297619, 0.0156119233, 0.33023873, 0.943876505, 0.00628757617, -0.0168125015, -0.000778224785, 0.999858439)*CF.A(M.R(-45),M.R(-25),M.R(-5-5*M.C(Sine/32))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(4.35172478e-06, 1.49894357, -0.0144011974, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799)*CF.A(M.R(45),0,0),Alpha)
		elseif((State == 'Walk' or State == 'Run') and Mode == 666666666666)then
			Change = 1
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.48791013e-11, 1.61628103+.5*M.C(Sine/32), -3.51015478e-06, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271)*CF.A(M.R(-65),0,0),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.507622898, -0.617543876, -0.694063663, 0.999877989, -0.00717858272, 0.0138636231, -9.81731864e-05, 0.885106385, 0.465388477, -0.0156116197, -0.465333343, 0.884998262),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.499199599, -0.96504283, 0.0578122139, 0.999877989, -0.00369151891, 0.0151692061, -9.81731864e-05, 0.970136404, 0.242559701, -0.0156116197, -0.242531747, 0.970018268),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49673307, 0.593781948+.2*M.C(Sine/32), 0.0200225115, 0.966687799, 0.25548178, 0.0156119233, -0.255602777, 0.96676141, 0.00628757617, -0.0134866452, -0.0100685749, 0.999858439)*CF.A(M.R(-55),M.R(25),M.R(5+5*M.C(Sine/32))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.50987279, 0.675035477+.2*M.C(Sine/32), -0.0274340063, 0.943747699, -0.330297619, 0.0156119233, 0.33023873, 0.943876505, 0.00628757617, -0.0168125015, -0.000778224785, 0.999858439)*CF.A(M.R(-55),M.R(-25),M.R(-5-5*M.C(Sine/32))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(4.35172478e-06, 1.49894357, -0.0144011974, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799)*CF.A(M.R(65),0,0),Alpha)
		elseif((State == 'Walk' or State == 'Run') and Mode == 666)then
			Change = 1
			local Alpha = .1
			RJ.C0 = RJ.C0:lerp(CF.N(0+.2*M.S(Sine/30),1.6+.2*M.C(Sine/32),0+.2*M.C(Sine/26))*CF.A(M.R(-45),M.RRNG(-5,5),0),Alpha)
			if(M.RNG(1,30) == 1)then
				NK.C0 = NK.C0:lerp(NKC0*CF.A(M.RRNG(0,45),M.RRNG(-45,45),M.RRNG(-45,45)),1)
			else
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,-.35)*CF.A(M.R(-25+5*M.C(Sine/32)),0,0)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
			end
			LS.C0 = LS.C0:lerp(LSC0*CF.N(.75,0+.1*M.C(Sine/32),-.5)*CF.A(0,M.R(15),M.R(80+5*M.C(Sine/32)))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(-.5,0+.1*M.C(Sine/32),-.5)*CF.A(0,M.R(-15),M.R(-85-5*M.C(Sine/32)))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,.4,-.5)*CF.A(M.R(-35-2.5*M.S(Sine/32)),M.R(25-5*M.C(Sine/32)),M.R(-5))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.A(M.R(-35-5*M.C(Sine/32)),M.R(-25),M.R(5))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		elseif((State == 'Walk' or State == 'Run') and Mode == 16)then
			local Alpha = .1
			Change = 1	
			RJ.C0 = RJ.C0:lerp(CF.N(0+.2*M.S(Sine/32),1.3-.5*M.C(Sine/32),0+.2*M.C(Sine/24))*CF.A(M.R(-45+1.5*M.S(Sine/32)),M.R(0+5*M.S(Sine/36)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,0)*CF.A(M.R(25+5*M.C(Sine/32)),0,0),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(.75,0+.1*M.C(Sine/32),-.5)*CF.A(M.R(-25-5*M.C(Sine/32)),M.R(15),M.R(80+10*M.C(Sine/32))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(-.5,0+.1*M.C(Sine/32),-.5)*CF.A(M.R(25+5*M.C(Sine/32)),M.R(-15),M.R(-85-5*M.C(Sine/32))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,.4,-.5)*CF.A(M.R(-35-2.5*M.S(Sine/32)),M.R(25-5*M.C(Sine/32)),M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.A(M.R(-35-5*M.C(Sine/32)),M.R(-25),M.R(5)),Alpha)
		elseif((State == 'Walk' or State == 'Run'))then
			Change = 1
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.48791013e-11, 1.2571125+.5*M.C(Sine/32), -3.51015478e-06, 0.99999994, 4.36557457e-11, 0, -4.3652193e-11, 0.999980211, -0.00628619269, 9.31322575e-10, 0.00628619175, 0.999980271)*CF.A(M.R(-75),0,0),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.436587602, -0.992619872, 0.0206923336, 0.99808234, 0.0599006973, 0.0156119233, -0.0600048117, 0.998178363, 0.00628757617, -0.0152068557, -0.0072123101, 0.999858439),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.481217712, -0.504008591, -0.8678087, 0.997120202, -0.0733773932, -0.0191624481, 0.0741236135, 0.889526427, 0.450830936, -0.0160352942, -0.450953096, 0.892403722),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.49673307, 0.593781948+.2*M.C(Sine/32), 0.0200225115, 0.966687799, 0.25548178, 0.0156119233, -0.255602777, 0.96676141, 0.00628757617, -0.0134866452, -0.0100685749, 0.999858439)*CF.A(M.R(-15),M.R(25),M.R(5+5*M.C(Sine/32))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.50987279, 0.675035477+.2*M.C(Sine/32), -0.0274340063, 0.943747699, -0.330297619, 0.0156119233, 0.33023873, 0.943876505, 0.00628757617, -0.0168125015, -0.000778224785, 0.999858439)*CF.A(M.R(-15),M.R(-25),M.R(-5-5*M.C(Sine/32))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(4.35172478e-06, 1.49894357, -0.0144011974, 0.99999994, 3.67523171e-07, -1.61118805e-07, -3.56500095e-07, 0.997964799, 0.0637688041, 1.8440187e-07, -0.063768819, 0.997964799)*CF.A(M.R(75),0,0),Alpha)
		
		elseif(State == 'Jump')then
			local Alpha = .1
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		elseif(State == 'Fall')then
			local Alpha = .1
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		elseif(State == 'Paralyzed')then
			-- paralyzed
		elseif(State == 'Sit')then
			-- sit
		end
	end
	


	
	for i,v in next, BloodPuddles do
		local mesh = i:FindFirstChild'CylinderMesh'
		BloodPuddles[i] = v + 1
		if(not mesh or i.Transparency >= 1)then
			i:destroy() 
			BloodPuddles[i] = nil
		elseif(v >= Frame_Speed*4)then
			local trans = (v-Frame_Speed*4)/(Frame_Speed*2)
			i.Transparency = trans
	            if(mesh.Scale.Z > 0)then
	                mesh.Scale = mesh.Scale-V3.N(.05,0,.05)
	            end
		else
			i.Transparency = 0
		end
	end
end


while true do
wait()
lia4.CFrame = lia4.CFrame * CFrame.fromEulerAnglesXYZ(25, 0, 0) -- 100% is normal, less than 100% is faster, greater than 100% is slow, so don't bother entering 200
end
