-- Created by Nebula_Zorua --
-- The Angel --
-- A higher being.. Here to smite you evil-doers! --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()


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
local PulseTime = 0
local DustTime = 0

local Rooted = false
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
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG = function(min,max,div) return math.random(min,max)/(div or 1) end,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
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
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.Anchored = anchored or true
	part.CanCollide = cancollide or false
	part.Parent = parent or Char
	return part
end
function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local class = "SpecialMesh"
	if(meshtype == Enum.MeshType.Brick)then class = 'BlockMesh' end
	 
	local part = IN(class)
	if(class == "SpecialMesh")then
		part.MeshId = meshid or ""
		part.TextureId = textid or ""
		part.MeshType = meshtype or Enum.MeshType.Sphere
	end
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	
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
local DamageColor = BrickColor.new'New Yeller'
local MusicID = 835120625

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
 Instance.ClearChildrenOfClass(Char,"Decal",true)
local Effects = IN("Folder",Char)
Effects.Name = "Effects"

local Halo = IN("Model",Char)
Halo.Name = "Halo"

local Wings = IN("Model",Char)
Wings.Name = "Wings"

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
tecks2.Text = "The Angle"
tecks2.Font = Enum.Font.Bodoni
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = C3.N(0,0,0)
tecks2.TextStrokeColor3 = C3.N(1,1,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

pcall(function()
	Char.LeftWing:destroy()
	Char.ReaperShadowHead:destroy()
end)

for _,v in next, Char:children() do
	if(v:IsA'BasePart' and v.Transparency < 1 and v ~= Head)then
		NewInstance("SelectionBox",v,{Adornee=v,LineThickness=.01,Color3=C3.N(1,1,0)})
		if(v ~= Head)then IN("BlockMesh",v) end
	end
end

local HaloHandle = NewInstance("Part",Halo,{Size=V3.N(.05,.05,.05),Transparency=1,CanCollide=false,Anchored=false,Locked=true,})
local WingHandle = NewInstance("Part",Wings,{Size=V3.N(.05,.05,.05),Transparency=1,CanCollide=false,Anchored=false,Locked=true,})

for i = 1, 360,5 do
	local part = NewInstance("Part",Halo,{BrickColor=BrickColor.new"New Yeller",Material=Enum.Material.Neon,Size=V3.N(0.69,0.1,0.3),Anchored=false,CanCollide=false,Locked=true,Transparency=.6})
	local weld = NewInstance("Weld",part,{Part0=HaloHandle,Part1=part,C0=CF.A(0,M.R(i),0)*CF.N(0,0,-.6)})
end

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendats() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'

-- Wing Creation
local FeatherWelds = {{},{}}
local inc = 1
for aa = 1, 4 do
	local lastFeather;
	FeatherWelds[1][aa] = {}
	for i = 1, 4+inc do
		local feather = NewInstance("Part",Wings,{CustomPhysicalProperties=PhysicalProperties.new(0,0,0,0,0),TopSurface=10,BottomSurface=10,Size=V3.N(2,.5,.75),CanCollide=false,Color=C3.N(1,1,1)})
		NewInstance("SpecialMesh",feather,{MeshType=Enum.MeshType.Sphere})
		if(lastFeather)then
			table.insert(FeatherWelds[1][aa],NewInstance("Weld",feather,{Part0=lastFeather,Part1=feather,C0=CF.N(.5,.25,0)*CF.A(0,0,M.R(-5))}))
		else
			table.insert(FeatherWelds[1][aa],NewInstance("Weld",feather,{Part0=feather,Part1=WingHandle,C0=CF.N(-2,aa/4,0)*CF.A(0,0,M.R(-5))}))
		end
		lastFeather = feather
	end
	inc = inc + 1
end

local inc = 1
for aa = 1, 4 do
	local lastFeather;
	FeatherWelds[2][aa] = {}
	for i = 1, 4+inc do
		local feather = NewInstance("Part",Wings,{CustomPhysicalProperties=PhysicalProperties.new(0,0,0,0,0),TopSurface=10,BottomSurface=10,Size=V3.N(2,.5,.75),CanCollide=false,Color=C3.N(1,1,1)})
		NewInstance("SpecialMesh",feather,{MeshType=Enum.MeshType.Sphere})
		if(lastFeather)then
			table.insert(FeatherWelds[2][aa],NewInstance("Weld",feather,{Part0=lastFeather,Part1=feather,C0=CF.N(-.5,.25,0)*CF.A(0,0,M.R(5))}))
		else
			table.insert(FeatherWelds[2][aa],NewInstance("Weld",feather,{Part0=feather,Part1=WingHandle,C0=CF.N(2,aa/4,0)*CF.A(0,0,M.R(5))}))
		end
		lastFeather = feather
	end
	inc = inc + 1
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
local HW = NewInstance('Motor',Char,{Part0=Head,Part1=HaloHandle,C0=CF.N(0,2,0)}) 
local WW = NewInstance('Motor',Char,{Part0=Torso,Part1=WingHandle,C0=CF.N(0,1.5,1.5)}) 

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


function Chat(text)
	--if(game.PlaceId ~= 843468296)then
		coroutine.wrap(function()
			if(Char:FindFirstChild'ChatGUI')then Char.ChatGUI:destroy() end
			local BBG = NewInstance("BillboardGui",Char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,3,0),Adornee=Head})
			local Txt = NewInstance("TextLabel",BBG,{Text = "",BackgroundTransparency=1,TextColor3=C3.N(1,1,0),BorderSizePixel=0,Font=Enum.Font.Garamond,TextSize=30,TextStrokeTransparency=1,Size=UDim2.new(1,0,.5,0)})
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
			delay((#text/25)+2, function()
				Txt.Text = ""
				for i = 1, #text do
					Txt.Text = Txt.Text.. string.char(M.RNG(0,126))
				end
			end)
			delay((#text/25)+3, function()
				BBG:destroy()
				SND:destroy()
			end)
		end)()
	--else
	--	Chat2(text)
	--end
end

function Chat2(text)
	coroutine.wrap(function()
		if(Char:FindFirstChild'ChatGUI')then Char.ChatGUI:destroy() end
		local BBG = NewInstance("BillboardGui",Char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,3,0),Adornee=Head})
		local offset = 0;
		local xsize = 0;
		for i = 1, #text do
			offset = offset - 16
			xsize = xsize + 32 	
			delay(i/25, function()
				local Txt = NewInstance("TextLabel",BBG,{Text = text:sub(i,i),Position=UDim2.new(0,offset,0,0),BackgroundTransparency=1,TextColor3=C3.N(1,1,0),BorderSizePixel=0,Font=Enum.Font.Garamond,TextSize=40,TextStrokeTransparency=1,Size=UDim2.new(1,0,.5,0)})
				offset = offset + 32
				while Txt and Txt.Parent do
					Txt.Rotation = M.RNG(-15,15)
					swait()
				end
			end)
		end
		BBG.Size = UDim2.new(0,xsize,0,40)
		delay((#text/25)+3, function()
			for _,v in next, BBG:children() do
				pcall(function() v.Text = string.char(M.RNG(0,126)) end)
			end
		end)
		delay((#text/25)+4, function()
			BBG:destroy()
		end)
	end)()
end


function Transparency(trans)
	for _,v in next, Char:children() do
		if(v:IsA'BasePart' and v ~= Root and v ~= HaloHandle and v ~= WingHandle)then
			v.Transparency = trans
			local sbox = v:findFirstChild'SelectionBox'
			if(sbox)then sbox.Transparency=trans end
		elseif(v:IsA'Accessory' and v:FindFirstChild'Handle')then
			v.Handle.Transparency=trans
		end
	end	
	for _,v in next, Wings:children() do
		if(v:IsA'BasePart' and v ~= WingHandle)then
			v.Transparency = trans
			local sbox = v:findFirstChild'SelectionBox'
			if(sbox)then sbox.Transparency=trans end
		end
	end	
	for _,v in next, Halo:children() do
		if(v:IsA'BasePart' and v ~= HaloHandle)then
			v.Transparency = trans
			local sbox = v:findFirstChild'SelectionBox'
			if(sbox)then sbox.Transparency=trans end
		end
	end	
end

local FXTable = {}

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
						Frame = Frame + Settings.Speed or 0.01
						if(Settings.Home)then
							endP = Settings.Home.CFrame
						end
						Prt.CFrame = Bezier(start, quarter, threequarter, endP, i)
						if(Prt.Transparency >= 1 or Frame >= Frames)then
							if(Settings.RemoveOnGoal)then
								Prt:destroy()
							end
						end
					else
					
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
		repeat wait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
		data.Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
	end
	data.Part = Prt
	data.Mesh = Msh
	data.Sound = Snd
	data.Frame = 0
	data.Size = (Msh and Msh.Scale or Size)
	Size = (Msh and Msh.Scale or Size)
	data.Grow = Size-(Settings.EndSize or (Msh and Msh.Scale or Size)/2)
	table.insert(FXTable,data)
	return Prt,Msh,Snd
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


function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		whom:BreakJoints()
		local Soul = Part(Model,BrickColor.new'Really red','Glass',V3.N(.5,.5,.5),torso.CFrame,true,false)
		Soul.Name = 'Head'
		NewInstance("Humanoid",Model,{Health=0,MaxHealth=0})
		Effect{
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
				Effect{
					Effect = "Fade",
					CFrame = point * CF.N(0, mag/2, 0),
					Size = V3.N(.5,mag+.5,.5),
					Color = Soul.BrickColor
				}
				lastPoint = Soul.CFrame.p
			swait()
		end
		for i = 1, 5 do
			Effect{
				Effect="Fade",
				Color = BrickColor.new'Really red',
				MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
			}	
		end
	end
end

--// Other Functions \\ --

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end


function WingFlutter(Alpha)
	Alpha = Alpha or .1
	for x = 1, 4 do
		if(FeatherWelds[1][x][1])then
			FeatherWelds[1][x][1].C0 = FeatherWelds[1][x][1].C0:lerp(CF.N(-2-.5*M.C(Sine/24),x/4,0-.2*-M.S(Sine/24)),Alpha)
		end
		for i = 2, #FeatherWelds[1][x] do
			FeatherWelds[1][x][i].C0 = FeatherWelds[1][x][i].C0:lerp(CF.N(.5,.25,0)*CF.A(0,0,M.R(-5+2*M.C(Sine/12))),Alpha)
		end
	end
	for x = 1, 4 do
		if(FeatherWelds[2][x][1])then
			FeatherWelds[2][x][1].C0 = FeatherWelds[2][x][1].C0:lerp(CF.N(2+.5*M.C(Sine/24),x/4,0-.4*M.S(Sine/24)),Alpha)
		end
		for i = 2, #FeatherWelds[2][x] do
			FeatherWelds[2][x][i].C0 = FeatherWelds[2][x][i].C0:lerp(CF.N(-.5,.25,0)*CF.A(0,0,M.R(5-2*M.C(Sine/12))),Alpha)
		end
	end
end

function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
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
		Anchored = true
	})
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(1.25, 0, 1.25, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Arial",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
			TextLabel.TextStrokeTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end


function DealDamage(who,minDam,maxDam,Knock,Type,critChance,critMult)
	if(who)then
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = -math.huge
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < 0.1) then
						canHit = false
					else
						Hit[_] = nil
					end
				end
			end
			if(canHit)then
				table.insert(Hit,{hum,time()})
				if(hum.Health >= math.huge)then
					who:BreakJoints()
					if(who:FindFirstChild'Head' and hum.Health > 0)then
						ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), "INSTANT", 1.5, C3.N(1,0,0))
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

function AOEDamage(where,range,minDam,maxDam,Knock,Type,critChance,critMult)
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')then
			DealDamage(v.Parent,minDam,maxDam,Knock,Type,critChance,critMult)
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

function Smite()
	Zap{
		StartCFrame=CF.N(Mouse.Hit.p)*CF.N(0,500,0),
		EndCFrame=CF.N(Mouse.Hit.p),
		ZapRotation = {-5,5},
		StartSize = 5,
		EndSize = 1,
		Delay=5,
		DelayInc=1,
	}
	AOEDamage(Mouse.Hit.p,3,15,35,false,"Electric",75,1)
end

function LightningStorm()
	Attack = true
	Rooted = true
	NeutralAnims = false
	Hum.AutoRotate = false
	repeat swait()
		Root.CFrame = Root.CFrame:lerp(CF.N(Root.CFrame.p,V3.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z)),.1)
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0109784482, 0.00629424211+.25*M.C(Sine/12), 0.00456619123, 0, 0.00628576428, 0.999979854, 0, 0.99998033, -0.00628576661, -0.999999702, -7.27595761e-12, 0)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.51089513, 0.618211091+.1*M.C(Sine/12), -0.00361234695, 0.982347131, 0.18641524, 0.0156120034, -0.186530694, 0.982429147, 0.00628500059, -0.0141660646, -0.0090861693, 0.999858379)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.17289495, 0.616719723+.1*M.C(Sine/12), 0.011598235, -0.52721566, -0.849588335, 0.0156120034, 0.849726856, -0.527186096, 0.00628500059, 0.0028907666, 0.0165794864, 0.999858379)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00954779983, 1.49905622, 0.00156322215, -1.82539225e-07, 0.0574940294, -0.998345554, 0.00628540665, 0.998326242, 0.0574929155, 0.999979854, -0.00627500098, -0.000361557119),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	until not S.UserInputService:IsKeyDown(Enum.KeyCode.C)
	local where = Mouse.Hit.p
	for i = 0, 6, .1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0109784482, 0.00629424211+.25*M.C(Sine/12), 0.00456619123, 0, 0.00628576428, 0.999979854, 0, 0.99998033, -0.00628576661, -0.999999702, -7.27595761e-12, 0)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.51089513, 0.618211091+.1*M.C(Sine/12), -0.00361234695, 0.982347131, 0.18641524, 0.0156120034, -0.186530694, 0.982429147, 0.00628500059, -0.0141660646, -0.0090861693, 0.999858379)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.17289495, 0.616719723+.1*M.C(Sine/12), 0.011598235, -0.52721566, -0.849588335, 0.0156120034, 0.849726856, -0.527186096, 0.00628500059, 0.0028907666, 0.0165794864, 0.999858379)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00954779983, 1.49905622, 0.00156322215, -1.82539225e-07, 0.0574940294, -0.998345554, 0.00628540665, 0.998326242, 0.0574929155, 0.999979854, -0.00627500098, -0.000361557119),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	for i = 0, 1.4, .1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0109784482, 0.00629424211+.25*M.C(Sine/12), 0.00456619123, 0, 0.00628576428, 0.999979854, 0, 0.99998033, -0.00628576661, -0.999999702, -7.27595761e-12, 0)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.51089513, 0.618211091+.1*M.C(Sine/12), -0.00361234695, 0.982347131, 0.18641524, 0.0156120034, -0.186530694, 0.982429147, 0.00628500059, -0.0141660646, -0.0090861693, 0.999858379)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.39888549, 0.921575725+.1*M.C(Sine/12), 0.00929622632, -0.917422354, -0.397608638, 0.0156120034, 0.397739291, -0.917477012, 0.00628500059, 0.0118246814, 0.0119755063, 0.999858379)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00954779983, 1.49905622, 0.00156322215, -1.82539225e-07, 0.0574940294, -0.998345554, 0.00628540665, 0.998326242, 0.0574929155, 0.999979854, -0.00627500098, -0.000361557119),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	for i = 0, .8, .1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0109784482, 0.00629424211+.25*M.C(Sine/12), 0.00456619123, 0, 0.00628576428, 0.999979854, 0, 0.99998033, -0.00628576661, -0.999999702, -7.27595761e-12, 0)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.51089513, 0.618211091+.1*M.C(Sine/12), -0.00361234695, 0.982347131, 0.18641524, 0.0156120034, -0.186530694, 0.982429147, 0.00628500059, -0.0141660646, -0.0090861693, 0.999858379)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.39452517, 0.577189744, 0.0083861379, 0.913589835, -0.406337589, 0.0156120034, 0.406289399, 0.913722992, 0.00628500059, -0.0168188754, 0.000601077918, 0.999858379)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00954779983, 1.49905622, 0.00156322215, -1.82539225e-07, 0.0574940294, -0.998345554, 0.00628540665, 0.998326242, 0.0574929155, 0.999979854, -0.00627500098, -0.000361557119),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	
	for i = 0, 6, .1 do
		pcall(function() Sound(Torso,481719045,1,1,false,true,true) end)
		local pos = CF.N(where)*CF.N(M.RNG(-1000,1000,100),0,M.RNG(-1000,1000,100))
		local part,rayPos,norm,dist = CastRay(pos*CF.N(0,500,0).p,pos.p,1500)
		Zap{
			StartCFrame=pos*CF.N(0,500,0),
			EndCFrame=CF.N(rayPos),
			ZapRotation = {-5,5},
			StartSize = 1,
			EndSize = .5,
			Delay=10,
			DelayInc=2,
		}
		AOEDamage(rayPos,5,45,65,0,'Electric',25,2)
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0109784482, 0.00629424211+.25*M.C(Sine/12), 0.00456619123, 0, 0.00628576428, 0.999979854, 0, 0.99998033, -0.00628576661, -0.999999702, -7.27595761e-12, 0)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.51089513, 0.618211091+.1*M.C(Sine/12), -0.00361234695, 0.982347131, 0.18641524, 0.0156120034, -0.186530694, 0.982429147, 0.00628500059, -0.0141660646, -0.0090861693, 0.999858379)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.39452517, 0.577189744, 0.0083861379, 0.913589835, -0.406337589, 0.0156120034, 0.406289399, 0.913722992, 0.00628500059, -0.0168188754, 0.000601077918, 0.999858379)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00954779983, 1.49905622, 0.00156322215, -1.82539225e-07, 0.0574940294, -0.998345554, 0.00628540665, 0.998326242, 0.0574929155, 0.999979854, -0.00627500098, -0.000361557119),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	Hum.AutoRotate = true
	Attack = false
	NeutralAnims = true
	Rooted = false
end


function HolyBomb()
	Attack = true
	Chat2("jajajajaja ez nooby")
	swait(60)
	Rooted = true
	NeutralAnims = false
	for i = 0, 6, 0.1 do
		swait()
		local Alpha = .05
		Zap{
			StartCFrame=CF.N(Root.CFrame.p)*CF.N(0,250,0),
			EndCFrame=CF.N(Root.CFrame.p),
			ZapRotation = {-15,15},
			Color=C3.N(1,1,0),
			StartSize = 1,
			EndSize = 1,
			Delay=5,
			DelayInc=1,
		}
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20455468e-13, 0.00629198179, 1.40559132e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.507250547, -0.110386491, -0.672860861, 0.999877751, -0.00782374945, 0.013510122, -9.81397825e-05, 0.862201095, 0.506566346, -0.0156116877, -0.506505728, 0.862094939),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.487759113, -0.105839849, -0.680253506, 0.999877751, -0.00782374945, 0.013510122, -9.81397825e-05, 0.862201095, 0.506566346, -0.0156116877, -0.506505728, 0.862094939),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.04961777, 0.162827805, -0.367515624, 0.65209949, -0.758071303, 0.00966797117, 0.478066534, 0.401272744, -0.781301916, 0.588403046, 0.514108539, 0.624078274),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.01012444, 0.107069746, -0.463154793, 0.633318067, 0.773830771, 0.00966686849, -0.478192717, 0.401122361, -0.781301916, -0.608473003, 0.490190029, 0.624078274),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(6.11957148e-06, 1.44927096, -0.405988753, 0.999999583, 7.24568963e-07, -6.8731606e-07, 6.33735908e-09, 0.684226215, 0.729269981, 1.00024045e-06, -0.729269683, 0.684225917),Alpha)
		WingFlutter()
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),.3)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),.3)
	end
	for i = 0, .8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(0.00439098151, 0.0666924566, 0.281248361, 0.999959052, 0.00860917568, -0.00265517179, -0.0086270012, 0.830053985, -0.557616353, -0.00259668194, 0.557616353, 0.830094337),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497570813, -0.936474979, -0.0477344394, 0.999878109, -0.00782567263, 0.0135120051, -9.73803981e-05, 0.862202823, 0.506563246, -0.0156142879, -0.506502926, 0.862096965),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.497439325, -0.931922615, -0.0551193655, 0.999878109, -0.00782567263, 0.0135120051, -9.73803981e-05, 0.862202823, 0.506563246, -0.0156142879, -0.506502926, 0.862096965),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.30848432, 0.518583834, 0.0627421439, 0.758070946, 0.652100444, 0.0096699167, -0.401271075, 0.478066146, -0.781302929, -0.514110804, 0.588402867, 0.624077141),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42235136, 0.462758094, -0.0433900952, 0.77383244, -0.633316636, 0.00966930948, 0.401121885, 0.478191316, -0.781302929, 0.49018833, 0.608476162, 0.624077141),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00874680094, 1.45278561, 0.153901845, 0.999851108, 0.0168225225, 0.00386164617, -0.014445669, 0.938051641, -0.346193999, -0.00944628194, 0.346086651, 0.938155115),Alpha)
	end
	delay(1, function()
		NeutralAnims = true
		Rooted = false
	end)
	local start = NewInstance("Part",Effects,{Anchored=true,CanCollide=false,Transparency=1,CFrame=Root.CFrame})
	Sound(Char,579687077,.5,2,false,true,true)
	Sound(Char,239000203,.75,2,false,true,true)
	for i = 1, 140 do
		AOEDamage(start.CFrame.p,95,1000,1000,0,'Normal',100,5)
		Effect{
			Effect='ResizeAndFade',
			Mesh={MeshType=Enum.MeshType.Sphere},
			Color=C3.N(1,1,0),
			Material=Enum.Material.Neon,
			CFrame=CF.N(start.CFrame.p)*CF.N(M.RNG(-75,75),M.RNG(-75,75),M.RNG(-75,75)),
			Frames=60,
			FXSettings={
				EndIsIncrement=true,
				EndSize=V3.N(.6,.6,.6)
			}
		}
		swait(1)
	end
	Attack = false
end

function Lazor()
	Rooted = true
	Attack = true
	Hum.AutoRotate=false
	NeutralAnims = false
	Chat2("idot die jajajajaja")
	--Effect{Effect='Resize',Mesh={MeshType=Enum.MeshType.FileMesh},Size=V3.N(1,1,1),CFrame=,Frames=60,FXSettings={EndSize=V3.N(4,4,4)}}
	local snd = Sound(Torso,705787045,1,1,true,false,false)
	for i = 0, 6, .1 do
		Effect{
			Effect='Fade',
			Color=BrickColor.new'New Yeller',
			Size=V3.N((i/2),(i/2),(i/2)),
			Material=Enum.Material.Neon,
			Mesh={MeshType=Enum.MeshType.Sphere},
			Frames=15,
			CFrame=RArm.CFrame*CF.N(0,-1.5,0),
			Sound=false
		}
		swait()
		Root.CFrame =Root.CFrame:lerp(CF.N(Root.CFrame.p,V3.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z)),.1)
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.09520316, 0.319447398+.1*M.C(Sine/12), 0.380316556, 0.862274766, -0.50140965, 0.071203351, 0.413908899, 0.77874434, 0.471420079, -0.291823745, -0.377021939, 0.879029453)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.46309233, 0.634022355+.1*M.C(Sine/12), 0.0835287869, -0.816918671, -0.539614618, 0.203615591, -0.392316222, 0.261119068, -0.881989181, 0.422766358, -0.800395131, -0.425012559),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	snd:Play()
	for i = 0, 24, .1 do
		swait()
		Effect{
			Effect='Fade',
			Color=BrickColor.new'New Yeller',
			Size=V3.N(3,3,3),
			Material=Enum.Material.Neon,
			Mesh={MeshType=Enum.MeshType.Sphere},
			Frames=15,
			CFrame=RArm.CFrame*CF.N(0,-1.5,0),
		}
		if(Mouse.Target)then
			Zap{
				StartCFrame=RArm.CFrame*CF.N(0,-1.5,0),
				EndCFrame=Mouse.Hit,
				ZapRotation = {-5,5},
				PartCount=10,
				StartSize = .5,
				EndSize = .5,
				Color = C3.N(1,1,0),
				DelayInc=0,
				Delay =5,
			}
		end
		AOEDamage(Mouse.Hit.p,3,10,15,false,"Electric",25,2)
		Root.CFrame = Root.CFrame:lerp(CF.N(Root.CFrame.p,V3.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z)),.1)
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.09520316, 0.319447398+.1*M.C(Sine/12), 0.380316556, 0.862274766, -0.50140965, 0.071203351, 0.413908899, 0.77874434, 0.471420079, -0.291823745, -0.377021939, 0.879029453)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42641699, 0.76597631+.1*M.C(Sine/12), -0.207831383, 0.954205394, 0.219142094, 0.203637421, 0.275958538, -0.38200587, -0.881996989, -0.115491927, 0.897801638, -0.424986154),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	coroutine.wrap(function()
		for i = 1, 0,-.05 do
			snd.Volume = i
			swait()
		end
		snd:destroy()
	end)()
	Rooted = false
	Attack = false
	Hum.AutoRotate=true
	NeutralAnims = true
end

function Teleport()
	Rooted = true
	Attack = true
	Hum.AutoRotate=false
	NeutralAnims = false
	repeat swait() 
		Root.CFrame =Root.CFrame:lerp(CF.N(Root.CFrame.p,V3.N(Mouse.Hit.x,Root.CFrame.y,Mouse.Hit.z)),.1)
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.30013025, 0.503248096+.1*M.C(Sine/12), -0.596688211, 0.828000546, -0.560713708, -6.38549547e-10, 0.003524723, 0.00520492578, -0.999980271, 0.560702682, 0.827984214, 0.00628613681),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.27528536, 0.496638358+.1*M.C(Sine/12), -0.579756379, 0.810091436, 0.586290658, -1.40121659e-09, -0.00368550443, 0.00509234518, -0.999980271, -0.586279035, 0.810075462, 0.00628613681),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	until not S.UserInputService:IsKeyDown(Enum.KeyCode.Q)
	local p = Mouse.Hit.p

	--
	local circle = NewInstance("Part",Effects,{CFrame=Root.CFrame*CF.N(0,0,-2),Size=V3.N(.05,.05,.05),Transparency=1,Anchored=true,CanCollide=false})
	local decalF = NewInstance("Decal",circle,{Name='Front',Texture="rbxassetid://524002938",Color3=C3.N(1,1,0),Face=Enum.NormalId.Front,Transparency = 1})
	local decalB = NewInstance("Decal",circle,{Name='Back',Texture="rbxassetid://524002938",Color3=C3.N(1,1,0),Face=Enum.NormalId.Back,Transparency=1})
	local asd = CF.N(p,Root.Position)
	local circle2=circle:Clone()
	circle2.Parent = Effects
	circle2.CFrame = asd*CF.N(0,4,0)
	Root.Anchored = true
	for i = 0, 3, .1 do
		swait() 
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.21875513, 0.506383479+.1*M.C(Sine/12), -0.0979118943, 0.810091376, 0.586290598, 2.45534384e-08, -0.00368548767, 0.0050923666, -0.999980271, -0.586278975, 0.810075402, 0.00628614426),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.20952582, 0.499788254+.1*M.C(Sine/12), -0.0786797404, 0.828000546, -0.560713649, -2.55837147e-08, 0.0035247067, 0.00520494673, -0.999980271, 0.560702622, 0.827984214, 0.00628614519),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
		circle.Size = circle.Size + V3.N(.2,.2,0)
		circle2.Size = circle2.Size + V3.N(.2,.2,0)
		circle.Front.Transparency=1-(i/3)
		circle.Back.Transparency=1-(i/3)
		circle2.Front.Transparency=1-(i/3)
		circle2.Back.Transparency=1-(i/3)
		
		circle.CFrame=circle.CFrame*CF.A(0,0,M.R(5))
		circle2.CFrame=circle2.CFrame*CF.A(0,0,M.R(5))
	end
	Root.Anchored = true
	for i = 1, 3,.1 do
		Root.Anchored = true
		swait()
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.09520316, 0.319447398+.1*M.C(Sine/12), 0.380316556, 0.862274766, -0.50140965, 0.071203351, 0.413908899, 0.77874434, 0.471420079, -0.291823745, -0.377021939, 0.879029453)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.38953996, 0.579314649+.1*M.C(Sine/12), 0.00156672322, 0.963396549, -0.267624378, 0.0156119959, 0.267557263, 0.9635216, 0.0062854127, -0.0167246256, -0.0018782462, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
	end
	for i = 0, 2, .1 do
		swait()
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00288401172, -0.186870754+.25*M.C(Sine/12), -0.184415281, 0.999970019, -0.00748212682, -0.00185852405, 0.00747100171, 0.880958676, 0.473134309, -0.00190276653, -0.473133981, 0.880988002)*CF.A(-M.R(10+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.455414772, -0.964986682, 0.0489092469, 0.999094486, 0.0300228745, 0.0301540364, -0.0396850631, 0.913133621, 0.405724436, -0.0153536471, -0.406553656, 0.913497925)*CF.A(0,M.R(2+7*M.C(Sine/12)),-M.R(2+7*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.544458926, -0.964868069, 0.0333667099, 0.999092519, 0.0301021822, 0.0301397741, -0.0397526845, 0.913105845, 0.405780286, -0.015305927, -0.406610161, 0.913473606)*CF.A(0,-M.R(2+7*M.C(Sine/12)),M.R(2+7*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.36389351, 0.578486085+.1*M.C(Sine/12), 0.180077106, -0.966345549, 0.257006437, -0.0111429691, 0.189922124, 0.683552086, -0.704759717, -0.173510939, -0.683157504, -0.709358692)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.36815977, 0.578247666+.1*M.C(Sine/12), 0.13745755, 0.960469842, -0.278161407, 0.0111425305, 0.189813495, 0.683640122, 0.704703569, -0.203638792, -0.674731433, 0.709414363)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00204973482, 1.42796898, 0.117728591, 0.999878228, 0.00747100171, 0.0137089603, -9.46668442e-05, 0.880958676, -0.473193318, -0.0156122521, 0.473134309, 0.880851984),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
		Root.CFrame = Root.CFrame * CF.N(0,0,-.1)
		Transparency(i/2)
	end
	Zap{
		StartCFrame=Root.CFrame,
		EndCFrame=asd*CF.N(0,4,0),
		ZapRotation = {-5,5},
		PartCount=10,
		StartSize = 4,
		EndSize = .5,
		Color = C3.N(1,1,0),
		DelayInc=5,
		Delay = 15,
	}
	Root.CFrame = asd*CF.N(0,4,0)
	Root.Anchored = true

	for i = 0, 2, .1 do
		Root.Anchored = true
		swait()
		local Alpha = .1
		Change = .5
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00288401172, -0.186870754+.25*M.C(Sine/12), -0.184415281, 0.999970019, -0.00748212682, -0.00185852405, 0.00747100171, 0.880958676, 0.473134309, -0.00190276653, -0.473133981, 0.880988002)*CF.A(-M.R(10+5*M.S(Sine/12)),0,0),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.455414772, -0.964986682, 0.0489092469, 0.999094486, 0.0300228745, 0.0301540364, -0.0396850631, 0.913133621, 0.405724436, -0.0153536471, -0.406553656, 0.913497925)*CF.A(0,M.R(2+7*M.C(Sine/12)),-M.R(2+7*M.C(Sine/12))),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.544458926, -0.964868069, 0.0333667099, 0.999092519, 0.0301021822, 0.0301397741, -0.0397526845, 0.913105845, 0.405780286, -0.015305927, -0.406610161, 0.913473606)*CF.A(0,-M.R(2+7*M.C(Sine/12)),M.R(2+7*M.C(Sine/12))),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.36389351, 0.578486085+.1*M.C(Sine/12), 0.180077106, -0.966345549, 0.257006437, -0.0111429691, 0.189922124, 0.683552086, -0.704759717, -0.173510939, -0.683157504, -0.709358692)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.36815977, 0.578247666+.1*M.C(Sine/12), 0.13745755, 0.960469842, -0.278161407, 0.0111425305, 0.189813495, 0.683640122, 0.704703569, -0.203638792, -0.674731433, 0.709414363)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.00204973482, 1.42796898, 0.117728591, 0.999878228, 0.00747100171, 0.0137089603, -9.46668442e-05, 0.880958676, -0.473193318, -0.0156122521, 0.473134309, 0.880851984),Alpha)
		HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
		WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
		WingFlutter()
		Root.CFrame = Root.CFrame * CF.N(0,0,-.1)
		Transparency(1-(i/2))
	end
	
	
	Transparency(0)
	coroutine.wrap(function()
		for i = 0, 3, .1 do
			swait() 
			local Alpha = .1
			Change = .5
			circle.Size = circle.Size - V3.N(.2,.2,0)
			circle2.Size = circle2.Size - V3.N(.2,.2,0)
			circle.Front.Transparency=(i/3)
			circle.Back.Transparency=(i/3)
			circle2.Front.Transparency=(i/3)
			circle2.Back.Transparency=(i/3)
			
			circle.CFrame=circle.CFrame*CF.A(0,0,-M.R(5))
			circle2.CFrame=circle2.CFrame*CF.A(0,0,-M.R(5))
		end
	end)()
	Hum.AutoRotate = true
	Root.Anchored = false
	Rooted = false
	Attack = false
	NeutralAnims = true
end

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'q')then Teleport() end
	if(k == 'z')then Lazor() end
	if(k == 'x')then Smite() end
	if(k == 'v')then HolyBomb() end
	if(k == 'c')then LightningStorm() end
end)

	
--// Wrap it all up \\--
while true do
	swait()
	Sine = Sine + Change
	
	if(not Music or not Music.Parent)then
		local a = Music.TimePosition
		Music = Sound(Char,MusicID,1,3,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = a
	end
	Music.Playing = true
	Torso.Color = C3.N(0,0,0)
	RArm.Color = C3.N(0,0,0)
	LArm.Color = C3.N(0,0,0)
	RLeg.Color = C3.N(0,0,0)
	LLeg.Color = C3.N(0,0,0)
	Head.Color = C3.N(0,0,0)
	Music.Volume = 5
	Music.Pitch = 1
	Music.Playing = true
	Hum.HipHeight = 2
	Sine = Sine + Change
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * 100), Char)
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or Walking and "Walk" or "Idle")
	if(time()-PulseTime > .05)then
		PulseTime = time()
		if(hitfloor)then
			local angles = CF.A(M.RRNG(-15,15),M.RRNG(-45,45),M.RRNG(-45,45))
			Effect{
				Effect='ResizeAndFade',
				Color=hitfloor.Color,
				Material=hitfloor.Material,
				Frames=60,
				Mesh={MeshType=Enum.MeshType.FileMesh,MeshId="rbxassetid://662586858",Scale=V3.N(.01,.01,.01)},
				CFrame=CF.N(posfloor)*angles,
				MoveDirection=CF.N(posfloor)*angles*CF.N(0,6,0).p,
				FXSettings = {
					EndSize=V3.N(.0005,.0005,.0005),
					EndIsIncrement=true
				}
			}
		end
		local pos = CF.N(Torso.CFrame.p)*CF.N(0,-2,0)*CF.A(0,M.RRNG(-180,180),0)*CF.N(0,0,M.RNG(-15,-5))
		local hitfloor2,posfloor2 = workspace:FindPartOnRay(Ray.new(pos.p,((CFrame.new(pos.p,pos.p - Vector3.new(0,1,0))).lookVector).unit * 100), Char)
		
		if(hitfloor2)then
			pos = CF.N(posfloor2)
			Effect{
				Effect='ResizeAndFade',
				Color=BrickColor.new'New Yeller',
				Size=V3.N(2,2,2),
				Material=Enum.Material.Neon,
				Mesh={MeshType=Enum.MeshType.Sphere},
				Frames=45,
				CFrame=pos,
				FXSettings = {
					EndSize = V3.N(-.01,.25,-.01),
					EndIsIncrement = true
				}
			}
		else
			Effect{
				Effect='ResizeAndFade',
				Color=BrickColor.new'New Yeller',
				Size=V3.N(2,2,2),
				Material=Enum.Material.Neon,
				Mesh={MeshType=Enum.MeshType.Sphere},
				Frames=45,
				CFrame=pos,
				FXSettings = {
					EndSize = V3.N(-.01,.25,-.01),
					EndIsIncrement = true
				}
			}
		end
	end
	Hum.Name = math.random()*100000
	Hum.MaxHealth = 1e100
	Hum.Health = 1e100
	if(M.RNG(1,50) == 1)then
		local pos = CF.N(Torso.CFrame.p)*CF.N(0,-2,0)*CF.A(0,M.RRNG(-180,180),0)*CF.N(0,0,M.RNG(-30,-15))
		local hitfloor2,posfloor2 = workspace:FindPartOnRay(Ray.new(pos.p,((CFrame.new(pos.p,pos.p - Vector3.new(0,1,0))).lookVector).unit * 100), Char)
		
		if(hitfloor2)then
			pos = CF.N(posfloor2)
		end
		Zap{
			StartCFrame=Torso.CFrame,
			EndCFrame=pos,
			ZapRotation = {-2,2},
			PartCount=5,
			StartSize = .5,
			EndSize = 0,
			Color = C3.N(1,1,0),
			DelayInc=5,
			Delay = 15,
			Sound=false
		}
	end
	if(Rooted == false)then
		Hum.WalkSpeed = 32
		Hum.JumpPower = 75
	else
		Hum.WalkSpeed = 0
		Hum.JumpPower = 0
	end
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			Change = .5
			RJ.C0 = clerp(RJ.C0,CFrame.new(3.20625471e-13, 0+.25*M.C(Sine/12), -6.20266655e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(-M.R(3+5*M.S(Sine/12)),0,0),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.443078369, -0.366475701, -0.69529891, 0.999093771, 0.0300307292, 0.0301540978, -0.039692279, 0.913133621, 0.405723602, -0.0153505448, -0.406552792, 0.913497925)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.563508928, -0.975499094, 0.0143494867, 0.992422402, -0.121874072, 0.0156119959, 0.121789157, 0.992536128, 0.0062854127, -0.0162614994, -0.00433641672, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),-M.R(0+5*M.C(Sine/12))),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.09520316, 0.319447398+.1*M.C(Sine/12), 0.380316556, 0.862274766, -0.50140965, 0.071203351, 0.413908899, 0.77874434, 0.471420079, -0.291823745, -0.377021939, 0.879029453)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.38953996, 0.579314649+.1*M.C(Sine/12), 0.00156672322, 0.963396549, -0.267624378, 0.0156119959, 0.267557263, 0.9635216, 0.0062854127, -0.0167246256, -0.0018782462, 0.999858022)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-7.09252117e-06, 1.4989512, -0.0144005567, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905),Alpha)
			HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
			WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
			WingFlutter()

		elseif(State == 'Walk')then
			local Alpha = .1
			Change = .5
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00288401172, -0.186870754+.25*M.C(Sine/12), -0.184415281, 0.999970019, -0.00748212682, -0.00185852405, 0.00747100171, 0.880958676, 0.473134309, -0.00190276653, -0.473133981, 0.880988002)*CF.A(-M.R(10+5*M.S(Sine/12)),0,0),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.455414772, -0.964986682, 0.0489092469, 0.999094486, 0.0300228745, 0.0301540364, -0.0396850631, 0.913133621, 0.405724436, -0.0153536471, -0.406553656, 0.913497925)*CF.A(0,M.R(2+7*M.C(Sine/12)),-M.R(2+7*M.C(Sine/12))),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.544458926, -0.964868069, 0.0333667099, 0.999092519, 0.0301021822, 0.0301397741, -0.0397526845, 0.913105845, 0.405780286, -0.015305927, -0.406610161, 0.913473606)*CF.A(0,-M.R(2+7*M.C(Sine/12)),M.R(2+7*M.C(Sine/12))),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.36389351, 0.578486085+.1*M.C(Sine/12), 0.180077106, -0.966345549, 0.257006437, -0.0111429691, 0.189922124, 0.683552086, -0.704759717, -0.173510939, -0.683157504, -0.709358692)*CF.A(0,M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.36815977, 0.578247666+.1*M.C(Sine/12), 0.13745755, 0.960469842, -0.278161407, 0.0111425305, 0.189813495, 0.683640122, 0.704703569, -0.203638792, -0.674731433, 0.709414363)*CF.A(0,-M.R(0+5*M.C(Sine/12)),M.R(0+5*M.C(Sine/12))),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(0.00204973482, 1.42796898, 0.117728591, 0.999878228, 0.00747100171, 0.0137089603, -9.46668442e-05, 0.880958676, -0.473193318, -0.0156122521, 0.473134309, 0.880851984),Alpha)
			HW.C0 = HW.C0:lerp(CF.N(0,2,0)*CF.A(M.R(0+15*M.C(Sine/36)),0,M.R(0+15*M.S(Sine/36)))*CF.N(-M.R(0+15*M.S(Sine/36)),0,M.R(0+15*M.C(Sine/36))),Alpha)
			WW.C0 = WW.C0:lerp(CF.N(0,1.5+.3*M.C(Sine/12),1.5),Alpha)
			WingFlutter()
		elseif(State == 'Paralyzed')then
			-- paralyzed
		elseif(State == 'Sit')then
			-- sit
		end
	end
end

