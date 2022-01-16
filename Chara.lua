-- Created by Nebula_Zorua --
-- Your DeTERMINATION --
-- Y o u  a c t  l i k e  y o u  h a v e  a  c h o i c e. =) --
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
local hat = Align(char['Red SS'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-.6,-.75)*CFrame.Angles(math.rad(45),math.rad(-20),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
--// Initializing \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local Plrs = S.Players
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
local BloodPuddles = {}
local Effects = {}
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local Souls = 0
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

--// Shortcut Variables \\--
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
local CSK = ColorSequenceKeypoint.new
local CS = ColorSequence.new
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
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = (material or Enum.Material.SmoothPlastic)
	part.TopSurface,part.BottomSurface=10,10
	part.Size = (size or V3.N(1,1,1))
	part.CFrame = (cframe or CF.N(0,0,0))
	part.Anchored = (anchored or false)
	part.CanCollide = (cancollide or false)
	part.Parent = (parent or Char)
	return part
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
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end



--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Customization \\--

local Frame_Speed = 75 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new'Really red'
local MusicID = 935501955
local WalkSpeed = 8
local MaxSouls = 100
local MaxHealth = 500 


if(_G.RefusedAnimation == nil) then _G.RefusedAnimation = false end

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
local Effects = IN("Folder",Char)
Effects.Name = "Effects"

Hum.MaxHealth = MaxHealth
Hum.Health = MaxHealth

local Knife = NewInstance("Part",Char,{Name='Knife',Size=V3.N(.4,3,.7),Anchored=false,CanCollide=false,Locked=true,Archivable=false,Reflectance=.01,Color=C3.N(0,0,0)})
local KnifeMesh = Mesh(Knife,Enum.MeshType.FileMesh,"rbxassetid://121944778","rbxassetid://362719969",V3.N(1,1,1),V3.N())
local AuraEmitter = NewInstance("ParticleEmitter",Knife,{EmissionDirection='Back',Color=CS{CSK(0,C3.N(1,0,0)),CSK(0.5,C3.N(1,1,0)),CSK(1,C3.RGB(255,191,0))},LightEmission=.5,LightInfluence=0,Size=NumberSequence.new(0.3),Texture="rbxassetid://141116476",Transparency=NumberSequence.new(0,1),LockedToPart=true,Lifetime=NumberRange.new(1),Rate=150,Speed=NumberRange.new(0)})
local FireEmitter = NewInstance("ParticleEmitter",Knife,{EmissionDirection='Back',Color=CS(C3.N(1,0,0),C3.N(1,0,0)),LightEmission=.5,LightInfluence=0,Size=NumberSequence.new{NumberSequenceKeypoint.new(0,.5,0),NumberSequenceKeypoint.new(0.755,0,0),NumberSequenceKeypoint.new(1,0,0)},Texture="rbxassetid://141116476",Transparency=NumberSequence.new(0.35,1),Lifetime=NumberRange.new(1,2),Rate=150,Speed=NumberRange.new(3)})

local KTrail = NewInstance("Trail",Knife,{
	Attachment0=NewInstance("Attachment",Knife,{Position=V3.N(0,-.4,0)}),
	Attachment1=NewInstance("Attachment",Knife,{Position=V3.N(0,1.2,0)}),
	Color=CS(C3.N(1,0,0)),
	Enabled=false,
	Transparency=NumberSequence.new(0,1),
	Lifetime=1.25,
})
local Hair = Part(Char,C3.N(0,0,0),Enum.Material.SmoothPlastic,V3.N(1,1,1),CF.N(),false,false)
local HairMesh = Mesh(Hair,Enum.MeshType.FileMesh,"rbxassetid://250264520","rbxassetid://75975464",V3.N(1.05,1.05,1.05),V3.N())

NewInstance("PointLight",Knife,{Color=C3.N(1,0,0),Range=10,Brightness=3})


Hum.DisplayDistanceType = 'None'

local naeeym2 = IN("BillboardGui",Char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,15)
naeeym2.StudsOffset = V3.N(0,2.5,0)
naeeym2.Adornee = Char.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Plr
local tecks2 = IN("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Chara"
tecks2.Font = Enum.Font.Bodoni
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = C3.N(0,0,0)
tecks2.TextStrokeColor3 = C3.N(.7,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2


IN("Shirt",Char)
IN("Pants",Char)

Hum.WalkSpeed = WalkSpeed
if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendats() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end


for i = 1, 35 do
	local FACE = Part(Char,C3.N(0,0,0),Enum.Material.Neon,V3.N(1.01,.5,1.01),CF.N(),false,false)
	FACE.Transparency = 0+(i-1)/35.2
	FACE.Name = 'ShadowFace'
	Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
	NewInstance("Weld",Head,{Part0=Head,Part1=FACE,C0=CF.N(0,.35-(i-1)/75,0)})
	--CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/75,0), CF(0, 0, 0))
end

local LEye = Part(Char,C3.N(1,0,0),Enum.Material.Neon,V3.N(.15,.25,.2),CF.N(),false,false)
local LEyeM = Mesh(LEye,Enum.MeshType.Sphere,"","",V3.N(1,1,1),V3.N())
local LEyeW = NewInstance("Weld",LEye,{Part0=Head,Part1=LEye,C0=CF.N(-.2,.2,-.49)})

local REye = Part(Char,C3.N(1,0,0),Enum.Material.Neon,V3.N(.15,.25,.2),CF.N(),false,false)
local REyeM = Mesh(REye,Enum.MeshType.Sphere,"","",V3.N(1,1,1),V3.N())
local REyeW = NewInstance("Weld",REye,{Part0=Head,Part1=REye,C0=CF.N(.2,.2,-.49)})


pcall(function()
	Char.LeftWing:destroy()
	Char.ReaperShadowHead:destroy()
end)


local Music = Sound(Torso,MusicID,1,3,true,false,true)
Music.Name = 'Music'

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
local HW = NewInstance('Motor',Char,{Part0=RArm,Part1=Knife,C0=CF.N(0,-1,-1)*CF.A(M.R(-90),0,0)})
local HW2 = NewInstance('Motor',Char,{Part0=Head,Part1=Hair,C0=CF.N(0,.25,0)})

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


--// Effect Function(s) \\--

function Bezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  = pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

local FXTable = {}

coroutine.resume(coroutine.create(function()
	while true do
		for i = 1, #FXTable do
			local data = FXTable[i]
			if(data)then
				local Frame = data.Frame
				local FX = data.Effect or 'ResizeAndFade'
				local Parent = data.Parent or Effects
				local Color = data.Color or C3.N(0,0,0)
				local Size = data.Size or V3.N(1,1,1)
				local MoveDir = data.MoveDirection or nil
				local MeshData = data.Mesh or nil
				local SndData = data.Sound or nil
				local Frames = data.Frames or 45
				local CFra = data.CFrame or Torso.CFrame
				local Settings = data.FXSettings or {}
				local Prt,Msh,Snd = data.Part,data.Mesh,data.Sound
				local grow = data.Grow
				
				local MoveSpeed = nil;
				if(MoveDir)then
					MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
				end
				if(FX ~= 'Arc')then
					Frame = Frame + 1
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
					end
					if(MoveDir and MoveSpeed)then
						local Orientation = Prt.Orientation
						Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
						Prt.Orientation = Orientation
					end
					if(Prt.Transparency >= 1 or Frame >= Frames)then
						Prt:destroy()
						table.remove(FXTable,i)
					else
						data.Frame = Frame
					end
				else
					local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
					if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
					if(start and endP)then
						local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
						local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
						Frame = Frame + (Settings.Speed or 0.01)
						if(Settings.Home)then
							endP = Settings.Home.CFrame
						end
						Prt.CFrame = Bezier(start, quarter, threequarter, endP, Frame)
						if(Prt.Transparency >= 1 or Frame >= Frames)then
							if(Settings.RemoveOnGoal)then
								Prt:destroy()
							end
						end
					else
						Prt:destroy()
					end
				end
			end
		end
		swait()
	end
end))

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



function SoulSteal(whom,human)
	local torso = (whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart' or whom:FindFirstChild'Torso')
	local succ, health, alive = pcall(function() return whom:FindFirstChildOfClass'Humanoid'.Health, whom:FindFirstChildOfClass'Humanoid'.Health > 0 end)
	if(torso and torso:IsA'BasePart' and alive == true)then
		whom:FindFirstChildOfClass'Humanoid'.Health = 0
		whom:BreakJoints()
		local Model = IN("Model",Effects)
		warn('Soul stolen from '..whom.Name)
		Model.Name = whom.Name.."'s Soul"
		local Soul = Part(Model,(human and BrickColor.new'Really red' or BrickColor.new(C3.N(1,1,1))),'Glass',V3.N(1,1,1),torso.CFrame,true,false)
		Soul.CanCollide=false
		Mesh(Soul,Enum.MeshType.Sphere)
		Soul.Name = 'Head'
		if(whom.Name == 'CKbackup')then
			Soul.Color = C3.N(1,1,1)
			local DripEmitter = NewInstance("ParticleEmitter",Soul,{EmissionDirection='Bottom',Color=CS(Soul.Color),LightEmission=.5,LightInfluence=0,Size=NumberSequence.new(0.3),Texture="rbxassetid://243132757",Transparency=NumberSequence.new(0,1),LockedToPart=false,Lifetime=NumberRange.new(1),Rate=150,Speed=NumberRange.new(5)})
		end
		local Hoom = NewInstance("Humanoid",Model,{MaxHealth=(health <= 10000 and health/2 or 10000),Health=(health <= 10000 and health/2 or 10000)})
		local AT0 = NewInstance("Attachment",Soul,{Position=V3.N(0,.5,0)})
		local AT1 = NewInstance("Attachment",Soul,{Position=V3.N(0,-.5,0)})
		local Trail = NewInstance("Trail",Soul,{Attachment0=AT0,Attachment1=AT1,Transparency=NumberSequence.new(0),FaceCamera = true,Texture="rbxassetid://945758042",LightEmission=.3,Color=CS(Soul.Color),Lifetime=.5,MinLength=0})
		NewInstance("PointLight",Soul,{Color=Soul.Color,Range=10,Brightness=(human and 3 or .5)})
		
		local turdso = Soul:Clone()
		turdso.Name = "Torso"
		turdso.CanCollide = false
		turdso.Anchored = true
		turdso.CFrame = Soul.CFrame
		turdso.Parent = Model
		turdso.Size = V3.N()
		turdso.Transparency=1
		local Distance = math.huge
		repeat
			Soul.CFrame = CF.N(Soul.Position,Torso.Position)*CF.N(0,0,-1)
			turdso.CFrame = Soul.CFrame
			Distance = (Soul.CFrame.p-Torso.CFrame.p).magnitude
			swait()
		until Hoom.Health <= 0 or not Soul.Parent or Distance <= 1.2
		if(Soul.Parent and Hoom.Health > 0)then
			Model:destroy()
			Effect{
				Effect="ResizeAndFade",
				Mesh={Enum.MeshType.Sphere},
				Color = Soul.Color,
				CFrame=Torso.CFrame,
				Size=V3.N(3,3,3),
				Material=Enum.Material.Neon,
				Sound={SoundId=444667859,Pitch=1,Volume=2.5},
				FXSettings={
					EndSize=V3.N(6,6,6),
				}
			}
			Souls = Souls + (human and 1 or .1)
			warn("Souls: "..Souls)
			MaxHealth = MaxHealth + Hoom.Health
			Hum.Health = Hum.Health + Hoom.Health
			for i = 1, 5 do
				Effect{
					Effect="Fade",
					Color = Soul.Color,
					MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
				}	
			end
		else
			
			warn("Soul destroyed!")
			for i = 1, 5 do
				Effect{
					Effect="Fade",
					Color = Soul.Color,
					CFrame=Soul.CFrame,
					MoveDirection = (Soul.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
				}	
			end
			Effect{
				Effect="ResizeAndFade",
				Mesh={Enum.MeshType.Sphere},
				Sound={SoundId=444667859,Pitch=1,Volume=5},
				Color = Soul.Color,
				CFrame=Soul.CFrame,
				Size=V3.N(3,3,3),
				Material=Enum.Material.Neon,
				FXSettings={
					EndSize=V3.N(6,6,6),
				}
			}
			Model:destroy()
		end
	end
end

--// Other Functions \\ --

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
		Font = "Arcade",
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

function Kill(whom)
	if(whom.Name ~= 'Nebula_Zorua')then
		local isPlr = Plrs:GetPlayerFromCharacter(whom) ~= nil
		coroutine.wrap(SoulSteal)(whom,isPlr)
		for _,v in next, whom:children() do
			if(v:IsA'BasePart')then
				v.Parent = Effects
				v:ClearAllChildren()
				v.Anchored = true
				v.CanCollide = false
				v.Transparency = 1
				local dust = NewInstance("ParticleEmitter",v,{
					Color = ColorSequence.new(C3.N(1,1,1)),
					LightEmission=0,
					LightInfluence=1,
					Size=NumberSequence.new{NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)},
					Texture="rbxassetid://284205403",
					Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)},
					Lifetime = NumberRange.new(1),
					Rate=150,
					Acceleration = V3.N(0,10,0),
					Speed = NumberRange.new(5),
					Enabled = true
				})
				delay(1, function()
					dust.Enabled = false
					S.Debris:AddItem(v,2)
				end)
			end
		end
	else
		warn"nope. nawt happenin'"
	end
end

function DealDamage(who,minDam,maxDam,Knock,Type,critChance,critMult)
	if(who)then
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = 0
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < 0.4) then
						canHit = false
					else
						Hit[_] = nil
					end
				end
			end
			if(canHit)then
				table.insert(Hit,{hum,time()})
				if(GetTorso(who))then
					Sound(GetTorso(who),406913243,1,10,false,true,true)
				end
				if(hum.Health >= math.huge)then
					Kill(who)
					if(who:FindFirstChild'Head' and hum.Health > 0)then
						ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "INSTANT", 3, DamageColor.Color)
					end
				else
					local player = S.Players:GetPlayerFromCharacter(who)
					if(Type == "Fire")then
						--idk..
					else
						local  c = Instance.new("ObjectValue",hum)
						c.Name = "creator"
						c.Value = Plr
						game:service'Debris':AddItem(c,0.35)
						local Crit = false
						if(M.RNG(1,100) <= (critChance or 0) and critMult > 1)then
							Crit = true
							Damage = 0
						end
						Damage = Damage*((Souls/5)+1)
						if(who:FindFirstChild'Head' and hum.Health > 0)then
							ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), (Crit and "[CRIT] " or "").. math.floor(Damage), 3, (Crit and BrickColor.new'New Yeller'.Color or DamageColor.Color))
						end
						
						if(hum.Health - Damage <= 0)then
							Kill(who)
						else
							hum.Health = hum.Health - Damage
							if(Type == 'Knockback' and GetTorso(who))then
								local angle = GetTorso(who).Position - Root.Position + Vector3.new(0, 0, 0).unit
								local body = NewInstance('BodyVelocity',GetTorso(who),{
									P = 500,
									maxForce = V3.N(math.huge,0,math.huge),
									velocity = Root.CFrame.lookVector * Knock + Root.Velocity / 1.05
								})
								game:service'Debris':AddItem(body,.5)
							elseif(Type == "Electric")then
								if(M.RNG(1,100) >= critChance)then
									if(who:FindFirstChild'Head' and hum.Health > 0)then
										ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "[PARALYZED]", 3, BrickColor.new"New Yeller".Color)
									end
									local asd = hum.WalkSpeed/2
									hum.WalkSpeed = asd
									local paralyzed = true
									coroutine.wrap(function()
										while paralyzed do
											swait(25)
											if(M.RNG(1,25) == 1)then
												if(who:FindFirstChild'Head' and hum.Health > 0)then
													ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "[STATIC]", 3, BrickColor.new"New Yeller".Color)
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
end


function AOEDamage(where,range,minDam,maxDam,Knock,Type,critChance,critMult)
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Name ~= 'Nebula_Zorua')then
			if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')then
				DealDamage(v.Parent,minDam,maxDam,Knock,Type,critChance,critMult)
			end
		end
	end
end

function AOEKill(where,range)
	for _,v in next, getRegion(where,range,{Char,Effects}) do
		local succ,alive = pcall(function() return v.Parent:FindFirstChildOfClass'Humanoid'.Health > 0 end)
		if(v.Name ~= 'Nebula_Zorua')then
			if(v.Parent and alive == true)then
				coroutine.wrap(Kill)(v.Parent)
			end
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


--// Attack Functions \\--


function Slash()
	Attack = true
	NeutralAnims = false
	local sound = Sound(Knife,437475935,1,5,false,true,false)
	for i = 0, 2, 0.1 do
		swait()
		local Alpha = .2
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.0343287587, 0.00629056804, 0.0572580174, 0.943793893, 0.00207689893, 0.330528289, 1.0000764e-06, 0.99998033, -0.00628630351, -0.330534875, 0.00593330665, 0.943775296),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496478021, -0.990818381, 0.021652732, 0.999878168, 0, 0.0156089365, -9.80779296e-05, 0.99998033, 0.00628268253, -0.0156086385, -0.00628344761, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498511612, -0.990985274, 0.0154910646, 0.999878168, 0, 0.0156089365, -9.80779296e-05, 0.99998033, 0.00628268253, -0.0156086385, -0.00628344761, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.32692134, 0.474511296, -0.0055731535, 0.934981823, 0.354351997, 0.0156129003, -0.354479939, 0.93504262, 0.00628374517, -0.0123721063, -0.0114096552, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.12629449, 0.369358033, -0.486052871, 0.490151912, 0.65154773, 0.57899636, 0.721657813, 0.0691910982, -0.688783586, -0.488836735, 0.755445719, -0.436280251),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0118216109, 1.49854016, -0.0795068145, 0.943793833, 0.0190048125, -0.329988182, 0.00207654224, 0.997985244, 0.0634154305, 0.330528468, -0.0605363287, 0.94185257),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
	end
	KTrail.Enabled = true
	sound:Play()
	for i = 0, 2.5, 0.1 do
		swait()
		AOEDamage(Knife.CFrame.p,1,15,30,0,"Normal",0,1)
		local Alpha = .25
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0352100767, 0.00629066909, -0.0097481478, 0.817972422, -0.00361463916, -0.575246274, -1.74103582e-06, 0.99998033, -0.00628598873, 0.575257719, 0.00514276745, 0.817956269),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496478021, -0.990818381, 0.0216572341, 0.999878287, 0, 0.015610218, -9.80866607e-05, 0.99998033, 0.00628274865, -0.0156098902, -0.00628351374, 0.999858499),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498511702, -0.990985274, 0.0154905058, 0.999878287, 0, 0.015610218, -9.80866607e-05, 0.99998033, 0.00628274865, -0.0156098902, -0.00628351374, 0.999858499),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.32694602, 0.474510223, -0.00555660389, 0.934981823, 0.354351729, 0.0156157613, -0.354479671, 0.935042739, 0.00628153514, -0.012375474, -0.0114085823, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.23906493, 0.406229913, 0.00231830776, 0.49015066, -0.849889755, 0.193494052, 0.721655607, 0.520183682, 0.456752002, -0.488841236, -0.0842411816, 0.868295968),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0315471888, 1.49887729, -0.0257819965, 0.817972481, -0.0330747738, 0.574305832, -0.00361499586, 0.998030663, 0.0626262054, -0.575246155, -0.0533026271, 0.81624186),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
	end
	KTrail.Enabled = false
	Attack = false
	NeutralAnims = true
end

Mouse.Button1Down:connect(function()
	if(Attack)then return end
	Slash()	
end)

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'z')then AOEKill(Root.CFrame.p,25) end -- TODO: Animation and effects
	if(k == 'q')then WalkSpeed = (WalkSpeed == 8 and 32 or 8) end	
end)


function Refuse()
	Attack = true
	warn("B u t  i t  r e f u s e d.")
	local oMH = MaxHealth
	MaxHealth = "inf"
	Hum.MaxHealth = "inf"
	Hum.Health = "inf"
	Char.Parent = nil
	Hum:destroy()
	if(not _G.RefusedAnimation)then
		_G.RefusedAnimation = true
		
	
		local Soul;
		function Soul(where,decalId)
			local destroy = false	
			local soul = NewInstance("Part",workspace)
			soul.Name = "Soul"
			soul.Transparency=1
			soul.Size = V3.N(2,2,.05)
			soul.Anchored=true
			soul.CanCollide=false
			soul.CFrame = where
			local heartF = NewInstance("Decal",soul,{Face=Enum.NormalId.Front,Texture="rbxassetid://"..decalId})
			local heartB = NewInstance("Decal",soul,{Face=Enum.NormalId.Back,Texture="rbxassetid://"..decalId})
			return soul,heartF,heartB
		end
		local owo = Root.CFrame
		local s,f,b = Soul(owo,1569347904)
		swait(60)
		local snd = Sound(s,862552636,1,5,false,false,false)
		snd:Play()
		f.Texture = "rbxassetid://1569348344"
		b.Texture = "rbxassetid://1569348344"
		swait(15)
		snd:Stop()
		swait(60)
		print'lol'
		for i = 0, 6, .1 do
			swait()
			s.CFrame = owo * CF.N(M.RNG(-50,50)/100,M.RNG(-50,50)/100,M.RNG(-50,50)/100)
		end
		local snd = Sound(s,862552636,1,5,false,false,false)
		snd:Play()
		s.CFrame = owo
		f.Texture = "rbxassetid://1569347904"
		b.Texture = "rbxassetid://1569347904"
		swait(15)
		snd:Stop()
		swait(60)
	
		print("why are you reading these?")
	end
	
	RJ.Parent = Char
	LS.Parent = Char
	RS.Parent = Char
	LH.Parent = Char
	RH.Parent = Char
	NK.Parent = Char
	
	LArm.Parent = Char
	RArm.Parent = Char
	LLeg.Parent = Char
	LArm.Parent = Char
	Root.Parent = Char
	Torso.Parent = Char
	Head.Parent = Char
	
	Knife.Parent = Char
	Hair.Parent = Char
	
	HW.Parent = Char
	HW2.Parent = Char
	

	REye:destroy()
	LEye:destroy()
	
	for _,v in next, Char:children() do
		if(v.Name == 'ShadowFace')then v:destroy() end
	end
	LEye = Part(Char,C3.N(1,0,0),Enum.Material.Neon,V3.N(.15,.25,.2),CF.N(),false,false)
	LEyeM = Mesh(LEye,Enum.MeshType.Sphere,"","",V3.N(1,1,1),V3.N())
	LEyeW = NewInstance("Weld",LEye,{Part0=Head,Part1=LEye,C0=CF.N(-.2,.2,-.49)})
	
	REye = Part(Char,C3.N(1,0,0),Enum.Material.Neon,V3.N(.15,.25,.2),CF.N(),false,false)
	REyeM = Mesh(REye,Enum.MeshType.Sphere,"","",V3.N(1,1,1),V3.N())
	REyeW = NewInstance("Weld",REye,{Part0=Head,Part1=REye,C0=CF.N(.2,.2,-.49)})
	for i = 1, 35 do
		local FACE = Part(Char,C3.N(0,0,0),Enum.Material.Neon,V3.N(1.01,.5,1.01),CF.N(),false,false)
		FACE.Transparency = 0+(i-1)/35.2
		FACE.Name = 'ShadowFace'
		Head:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = FACE
		NewInstance("Weld",Head,{Part0=Head,Part1=FACE,C0=CF.N(0,.35-(i-1)/75,0)})
		--CreateWeldOrSnapOrMotor("Weld", Head, Head, FACE, CF(0,0.35-(i-1)/75,0), CF(0, 0, 0))
	end
	Hum = NewInstance("Humanoid",Char,{DisplayDistanceType='None'})
	ConnectHum()
	MaxHealth = oMH
	Hum.MaxHealth = MaxHealth
	Hum.Health = MaxHealth
	swait(5)
	Char.Parent = workspace
	
	Attack = false
end

function ConnectHum()
	Hum.Died:connect(Refuse)
end
ConnectHum()


--// Wrap it all up \\--
while true do
	swait()
	Sine = Sine + Change
	if(not Music)then
		Music = Sound(Torso,MusicID,1,3,true,false,true)
		Music.Name = 'Music'
	end
	Music.Pitch = 1
	Music.Volume = 5
	Music.SoundId = "rbxassetid://"..MusicID
	Music.Parent = Torso
	Music:Resume()
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * 4), Char)
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end
	Hum.WalkSpeed = WalkSpeed
	if(State == 'Walk')then
		if(Hum.WalkSpeed >= 24)then
			local wsVal = 22 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.1 * (Hum.WalkSpeed/16),1)
			Change = 2
			RH.C1 = RH.C1:lerp(CF.N(0,1,0)*CF.N(0,0-.2*M.C(Sine/wsVal),0+.4*M.C(Sine/wsVal))*CF.A(M.R(25+45*M.C(Sine/wsVal))+-M.S(Sine/wsVal),0,0),Alpha)
			LH.C1 = LH.C1:lerp(CF.N(0,1,0)*CF.N(0,0+.2*M.C(Sine/wsVal),0-.4*M.C(Sine/wsVal))*CF.A(M.R(25-45*M.C(Sine/wsVal))+M.S(Sine/wsVal),0,0),Alpha)
		else
			Change = .9
			local wsVal = 8 / (Hum.WalkSpeed/8)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/8),1)
			LH.C1 = LH.C1:lerp(CF.N(0,1-.2*M.C(Sine/wsVal)/2,.4*M.C(Sine/wsVal)/2)*CF.A(M.R(15-2*M.C(Sine/wsVal))-M.S(Sine/wsVal)/2.5,0,0)*CF.A(M.R(0-3*M.C(Sine/wsVal)),0,0),Alpha)
			RH.C1 = RH.C1:lerp(CF.N(0,1+.2*M.C(Sine/wsVal)/2,-.4*M.C(Sine/wsVal)/2)*CF.A(M.R(15+2*M.C(Sine/wsVal))+M.S(Sine/wsVal)/2.5,0,0)*CF.A(M.R(0+3*M.C(Sine/wsVal)),0,0),Alpha)
		end
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.1)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.1)
	end	
	
	local face = Head:FindFirstChild'face'
	if(not face)then
		NewInstance("Decal",Head,{Name='face',Face=Enum.NormalId.Front,Texture="rbxassetid://404306534"})
	else
		face.Texture = "rbxassetid://404306534"
	end
	RArm.BrickColor = BrickColor.new'Pastel brown'
	LArm.BrickColor = BrickColor.new'Pastel brown'
	RLeg.BrickColor = BrickColor.new'Pastel brown'
	LLeg.BrickColor = BrickColor.new'Pastel brown'
	Torso.BrickColor = BrickColor.new'Pastel brown'
	Head.BrickColor = BrickColor.new'Pastel brown'
	Hum.Name = 'Chara'
	if(Hum.MaxHealth ~= MaxHealth)then
		Hum.MaxHealth = MaxHealth
	end
	Hum.DisplayDistanceType='None'
	if(NeutralAnims)then	
		if(State == 'Idle')then
			Change = 1
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0999571308, 0+.05*M.C(Sine/16), -0.237876296, 0.857335567, -0.00323621999, -0.514731407, 0, 0.99998033, -0.00628707698, 0.51474154, 0.00539013464, 0.85731858),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.536091685, -0.991042495-.05*M.C(Sine/16), -0.0134909991, 0.849195242, 0, 0.528063774, -0.00331997755, 0.99998033, 0.00533895614, -0.528053343, -0.00628707698, 0.849178433),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.529067397, -0.991597891-.05*M.C(Sine/16), -0.0818087086, 0.849195242, 0, 0.528063774, -0.00331997755, 0.99998033, 0.00533895614, -0.528053343, -0.00628707698, 0.849178433),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.32175505, 0.156236127+.15*M.C(Sine/16), 0.233877867, 0.877554953, -0.456876248, 0.145469457, 0.259513229, 0.707695842, 0.657129884, -0.403175086, -0.538916171, 0.739607573),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.2516855, 0.604915917+.15*M.C(Sine/16), -0.0189059302, 0.915104508, -0.287113011, -0.283108115, 0.301054537, 0.953587949, 0.00603589695, 0.268235415, -0.0907544345, 0.959069014),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(1.79447234e-05, 1.49895597, -0.0143749639, 0.769539058, -0.360377938, 0.527197778, 0.387706369, 0.919646919, 0.0627188534, -0.507438183, 0.156133309, 0.847424924),Alpha)
			HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
			-- idle
		elseif(State == 'Walk')then
			if(Hum.WalkSpeed >= 24)then
				local wsVal = 22 / (Hum.WalkSpeed/16)
				local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
				RJ.C0 = RJ.C0:lerp(CF.N(0,0-.15*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-15),M.R(0-15*M.S(Sine/wsVal)/2),0),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5+15*M.S(Sine/wsVal))),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,0+.3*M.S(Sine/wsVal))*CF.A(M.R(0-45*M.S(Sine/wsVal)),0,M.R(5+15*M.S(Sine/wsVal))),Alpha)
				NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(15),0,0),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.15*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(15),0,0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.15*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(15),0,0),Alpha)
				HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
			else
				local wsVal = 8 / (Hum.WalkSpeed/8)
				local Alpha = math.min(.2 * (Hum.WalkSpeed/8),1)
				RJ.C0 = RJ.C0:lerp(CF.N(0,0-.05*M.C(Sine/(wsVal/2)),0)*CF.A(0,M.R(0-5*M.S(Sine/wsVal)/2),0),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0+.3*M.S(Sine/wsVal))*CF.A(M.R(0-25*M.S(Sine/wsVal)),0,M.R(5-5*M.S(Sine/wsVal))),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+25*M.S(Sine/wsVal)),0,M.R(-5-5*M.S(Sine/wsVal))),Alpha)
				NK.C0 = NK.C0:lerp(NKC0,Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.05*M.C(Sine/(wsVal/2)),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.05*M.C(Sine/(wsVal/2)),0),Alpha)
				HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
			end
		elseif(State == 'Jump' or State == 'Fall')then
			if(Walking)then
				local Alpha = .2
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.497912645, -1.0987643, -0.0683324337, 0.999878228, 0.00860835519, 0.0130246133, -0.00010142161, 0.837816596, -0.545952022, -0.015611981, 0.545884132, 0.837715328),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.499978393, -1.16382337, 0.109293163, 0.999878228, -0.0120433727, 0.00993486121, -0.00010142161, 0.631323814, 0.775519371, -0.015611981, -0.775425911, 0.631245613),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
				HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
			else
				local Alpha = .2
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.504374504, -0.291219354, -0.487436086, 0.999878228, -0.00438931212, 0.0149825988, -0.00010142161, 0.957819223, 0.287371844, -0.015611981, -0.287338346, 0.957701981),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.453094482, -0.871358454, 0.0898642987, 0.985589385, -0.168456957, 0.0153662469, 0.162863791, 0.969548643, 0.182895929, -0.0457084104, -0.177757636, 0.983012319),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
				HW.C0 = HW.C0:lerp(CF.N(0,-1,-1)*CF.A(M.R(-90),0,0),Alpha)
			end
		elseif(State == 'Paralyzed')then
			-- paralyzed
		elseif(State == 'Sit')then
			-- sit
		end
	end
end