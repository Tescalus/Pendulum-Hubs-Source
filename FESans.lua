-- Created by Nebula_Zorua --
-- Sans Curse (A Curse of Light) --
-- Custom Arcane Adventures Magic --
-- Wielder: Everybody (Released) --
-- Why the fuck did I make this --
-- I don't even LIKE undertale --
-- what the fuck --

-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA

-- You can change the Magic Circle n stuff down under Customization, at MagicVariant --
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
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character

bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()
bullet:FindFirstChildOfClass("Attachment"):Destroy()

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
        bbv.Position = mouse.Hit.p
        bhandle.Position = mouse.Hit.p
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
     char.Humanoid.Died:Connect(function()
         dead = true
     end)
     repeat 
         game:GetService("RunService").RenderStepped:Wait()
         if dead == false and bhandle.CanCollide == true then
         bhandle.CanCollide = false
         end
         --if lt == true and dead == false then
         --bhandle.CFrame = char.Torso.CFrame
         bbv.Position = char.Torso.CFrame.p
         if ltt == true and dead == false then
        --bhandle.CFrame = char.Torso.CFrame * CFrame.new(0,0,-6)
        bhandle.Rotation = char.Torso.Rotation
         end
    until char.Humanoid.Health == 0
    
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(17,17,17)
         end
    end)

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

local Emit = IN("ParticleEmitter").Emit;

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
		elseif(who == Plr or who == Char)then
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

local Frame_Speed = 60;
local WalkSpeed = 16
local DamageColor = BrickColor.new'White'

local MagicCircles = {
	Default = {Color=C3.N(1,1,1),Texture1=0,Texture2=0},
	OrangeWarPheonix = {EffectColor=BrickColor.new'Deep orange'.Color,Color=C3.N(.9,.9,.9),Texture1=623153986,Texture2=623153990},
	BlueWarPheonix = {EffectColor=BrickColor.new'Teal'.Color,Color=C3.N(.9,.9,.9),Texture1=462499935,Texture2=462499970},
	Plasma = {Color=C3.N(0.70588235294118,0,0.8),Texture1=415906687,Texture2=415906702},
	Water = {Color=C3.RGB(33, 84, 185),Texture1=408441330,Texture2=408441353},
	Earth = {Color=C3.RGB(86, 36, 36),Texture1=394253616,Texture2=394253651},
	Wind = {Color=C3.N(.8,.8,.8),Texture1=376006317,Texture2=376006346},
	Poseidon = {Color=C3.RGB(71, 99, 130),Texture1=346727970,Texture2=346727994},
	AetherLightning = {Color=C3.RGB(23, 255, 197),Texture1=348320016,Texture2=348320030},
	Light = {Color=C3.N(1,1,0),Texture1=343192085,Texture2=343192112},
	Fire = {Color=C3.N(1,0,0),EffectColor=BrickColor.new'Bright red'.Color,Texture1=313945544,Texture2=313945673},
	Lightning = {Color=C3.N(0,1,1),Texture1=314842290,Texture2=314842440},
	GasterBlaster = {Color=C3.N(1,1,1),Texture1=331948662,Texture2=331948662}
}

local MagicVariant = MagicCircles.GasterBlaster --[[ You can change this for a different element
Example: 

Changing MagicCircles.GasterBlaster to MagicCircles.Light

would make it a Light Element
]]

--// Stop animations \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \\--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5,0.5,0),C1 = CF.N(0,.5,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5,0.5,0),C1 = CF.N(0,.5,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5,-1,0),C1 = CF.N(0,1,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5,-1,0),C1 = CF.N(0,1,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})

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

local DefaultRingParticle = IN("ParticleEmitter")
DefaultRingParticle.Name = 'RingEmit'
DefaultRingParticle.LightEmission = 1
DefaultRingParticle.Size = NumSeq({0,0},{.7,6.28},{.8,5.03},{1,2.9})
DefaultRingParticle.Texture = "rbxassetid://313951123"
DefaultRingParticle.Transparency = NumberSequence.new(0,1)
DefaultRingParticle.ZOffset = 1
DefaultRingParticle.Drag = 0
DefaultRingParticle.Acceleration = V3.N()
DefaultRingParticle.LockedToPart = true
DefaultRingParticle.Enabled = false
DefaultRingParticle.Lifetime = NumberRange.new(.6,.6)
DefaultRingParticle.Rate = 5
DefaultRingParticle.Rotation = NumberRange.new(0,0)
DefaultRingParticle.RotSpeed = NumberRange.new(0,0)
DefaultRingParticle.Speed = NumberRange.new(0,0)
DefaultRingParticle.SpreadAngle = Vector2.new(0,0)

function MagicCircle(Data)
	local Variant = Data.Variant or MagicCircles.Default;
	
	local Size = Data.Size or 10;
	local Pos = Data.Pos*CF.A(M.R(-90),M.R(-90),0) or Torso.CFrame*CF.A(M.R(-90),M.R(-90),0);
	local GrowTime = Data.Time or 1;
	
	local WeldData = Data.Weld or false;
	
	
	local Color = Variant.Color or C3.N(.9,.9,.0)
	
	local CreationParticle = Data.CreationParticle or DefaultRingParticle;
	
	
	local Circle = Part(Effects,BrickColor.new'Maroon',Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),Pos,true,false)
	local CircleM = NewInstance("BlockMesh",Circle,{Scale=V3.N()})
	
	
	local Emitter = DefaultRingParticle:Clone();
	Emitter.Parent = Circle
	Emitter.Color = ColorSequence.new(Variant.Color)
	
	local Top = IN("Decal",Circle)
	Top.Texture = "rbxassetid://"..Variant.Texture1
	Top.Face = Enum.NormalId.Top
	
	local Btm = IN("Decal",Circle)
	Btm.Texture = "rbxassetid://"..Variant.Texture2
	Btm.Face = Enum.NormalId.Bottom
	
	if(WeldData)then
		Circle.Anchored = false
		Weld(WeldData,Circle,Pos,CF.N())
	end
	local GrowFrames = GrowTime * Frame_Speed
	print(GrowFrames)
	--Size*20,0,Size*20
	Circle.Transparency = 1
	local GrownEvent = Instance.new("BindableEvent",Circle)
	coroutine.wrap(function()
		
		Emit(Emitter,5)
		local End = Size*20
		local grow = End/GrowFrames
		for i = 1, GrowFrames+1 do
			local aa = math.min(CircleM.Scale.x + grow,End)
			if(aa >= End)then break end
			CircleM.Scale = V3.N(aa,0,aa)
			swait()
		end
		CircleM.Scale = V3.N(End,0,End)
		GrownEvent:Fire()
		
	end)()
	
	local Table = {
		Circle = Circle,
		Mesh = CircleM,
		Grow = function(size)
			CircleM.Scale = CircleM.Scale + V3.N(size*20,0,size*20)
		end,
		Destroy = function(timer)
			coroutine.wrap(function()
				if(not timer)then timer = 1 end
				Tween(CircleM,{Scale=V3.N(0,0,0)},timer,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
				Tween(Top,{Transparency=1},timer,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
				Tween(Btm,{Transparency=1},timer,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
				S.Debris:AddItem(Circle,timer+1)
			end)()
		end,
		Grown = GrownEvent.Event
	}
		
	return Table;
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
		Frames=duration,
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
		Frames=duration,
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
		Frames=duration,
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
	local Color = data.Color or MagicVariant.EffectColor or MagicVariant.Color
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
	local Material = data.Material or Enum.Material.Neon
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
		if(typeof(SndData) == 'table')then
			Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
		elseif(typeof(SndData) == 'Instance')then
			Snd = SndData
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
function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
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

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function CastRayInDirection(startPos,direction,range,ignoreList)
	local ray = Ray.new(startPos,direction*range)
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


function DealDamage(who,minDam,maxDam,Knock,Type,critChance,critMult)
	if(who)then
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = M.RNG(minDam,maxDam)
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < 0.01) then
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
			coroutine.wrap(function() for i = 1, M.RNG(minDam,maxDam) do swait() DealDamage(v.Parent,0,0,Knock,Type,0,0) end end)()
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
		elseif(who == Plr or who == Char)then
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


--// Attack Functions \\--
function Laser(key)
	NeutralAnims = false
	Attack = true
	Root.Anchored = true
	local data = MagicCircle{Weld=Torso,Pos=CF.N(0,0,-4),Size=5,Variant=MagicVariant,Time=.5}
	local IsGrown = false
	data.Grown:connect(function() IsGrown = true end)
	repeat swait() 
		local Alpha = .1
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(125),0,0),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(125),0,0),Alpha)
		RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
		RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		local LookVector = Mouse.Hit.p
		Torso.CFrame = CF.N(Root.Position,LookVector) 
	until IsGrown
	if(S.UserInputService:IsKeyDown(key))then
		local grown = 0
		repeat 
			local Alpha = .1
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(125),0,0),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(125),0,0),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			local LookVector = Mouse.Hit.p
			Root.CFrame = CF.N(Root.Position,LookVector)
			if(grown < 250)then
				data.Grow(.05)
				grown = grown + 1
			end
			swait()
		until not S.UserInputService:IsKeyDown(key)
	end
	Sound(data.Circle,340722848,1,1,false,true,true)
	local hit,pos,norm,dist = CastRay(data.Circle.CFrame.p,Mouse.Hit.p,1024)
	local part = Part(Effects,MagicVariant.EffectColor or MagicVariant.Color,Enum.Material.Neon,V3.N(dist,data.Mesh.Scale.x/40,data.Mesh.Scale.x/40),CF.N(data.Circle.CFrame.p,pos)*CF.N(0,0,-dist/2)*CF.A(0,M.P/2,0),true,false)
	Mesh(part,Enum.MeshType.Cylinder)
	Tween(part,{Color=C3.N(1,1,1)},1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false)
	Effect{
		Effect='ResizeAndFade',
		Color=MagicVariant.Color,
		Size=V3.N(data.Mesh.Scale.X/20,data.Mesh.Scale.X/20,data.Mesh.Scale.X/20),
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
			Size=V3.N((data.Mesh.Scale.X/20)/2,(data.Mesh.Scale.X/20)/2,data.Mesh.Scale.X/20),
			CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-(data.Mesh.Scale.X/20)).p,pos),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=MagicVariant.Color,
			MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
		}	
	end
	AOEDamage(pos,data.Mesh.Scale.X/20,15,45,0,'Normal',10,4)
	coroutine.wrap(function()
		local frame = (1/30)
		for i = 1, 30 do
			part.Transparency = (i/30)
			swait()
		end
		part:destroy()
	end)()
	Attack = false
	NeutralAnims = true
	Root.Anchored = false
	data.Destroy()
end

function Balls(key)
	NeutralAnims = false
	Attack = true
	Root.Anchored = true
	local data = MagicCircle{Weld=Torso,Pos=CF.N(0,0,-1),Size=5,Variant=MagicVariant,Time=.5}
	local IsGrown = false
	data.Grown:connect(function() IsGrown = true end)
	repeat swait() 
		local Alpha = .1
		local idk = M.R(25)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
		RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
		RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		local LookVector = Mouse.Hit.p
		Torso.CFrame = CF.N(Root.Position,LookVector) 
	until IsGrown
	local projectiles = 5
	if(S.UserInputService:IsKeyDown(key))then
		local grown = 0
		repeat 
			local Alpha = .1
			local idk = M.R(25)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			local LookVector = Mouse.Hit.p
			Root.CFrame = CF.N(Root.Position,LookVector)
			if(grown < 250)then
				data.Grow(.05)
				grown = grown + 1
				projectiles = projectiles + .05
			end
			swait()
		until not S.UserInputService:IsKeyDown(key)
	end
	for i = 1, math.floor(projectiles) do
		data.Grow(-math.floor(projectiles)/20)
		local LookVector = Mouse.Hit.p
		Root.CFrame = CF.N(Root.Position,LookVector)
		ShootBullet{Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
		swait(1)
	end
	
	Attack = false
	NeutralAnims = true
	Root.Anchored = false
	data.Destroy()
end

function DLaser(key)
	NeutralAnims = false
	Attack = true
	Root.Anchored = true
	local data1 = MagicCircle{Weld=Torso,Pos=CF.N(-4,0,-4),Size=5,Variant=MagicVariant,Time=.5}
	local data2 = MagicCircle{Weld=Torso,Pos=CF.N(4,0,-4),Size=5,Variant=MagicVariant,Time=.5}
	local IsGrown = false
	data1.Grown:connect(function() IsGrown = true end)
	repeat swait() 
		local Alpha = .1
		local idk = M.R(25)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
		RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
		RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		local LookVector = Mouse.Hit.p
		Torso.CFrame = CF.N(Root.Position,LookVector) 
	until IsGrown
	if(S.UserInputService:IsKeyDown(key))then
		local grown = 0
		repeat 
			local Alpha = .1
			local idk = M.R(25)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			local LookVector = Mouse.Hit.p
			Root.CFrame = CF.N(Root.Position,LookVector)
			if(grown < 250)then
				data1.Grow(.05)
				data2.Grow(.05)
				grown = grown + 1
			end
			swait()
		until not S.UserInputService:IsKeyDown(key)
	end
	Sound(data1.Circle,340722848,1,1,false,true,true)
	Sound(data2.Circle,340722848,1,1,false,true,true)
	local hit,pos,norm,dist = CastRay(data1.Circle.CFrame.p,Mouse.Hit.p,1024)
	local part1 = Part(Effects,MagicVariant.EffectColor or MagicVariant.Color,Enum.Material.Neon,V3.N(dist,data1.Mesh.Scale.x/40,data1.Mesh.Scale.x/40),CF.N(data1.Circle.CFrame.p,pos)*CF.N(0,0,-dist/2)*CF.A(0,M.P/2,0),true,false)
	Mesh(part1,Enum.MeshType.Cylinder)
	
	
	local part2 = Part(Effects,MagicVariant.EffectColor or MagicVariant.Color,Enum.Material.Neon,V3.N(dist,data2.Mesh.Scale.x/40,data2.Mesh.Scale.x/40),CF.N(data2.Circle.CFrame.p,pos)*CF.N(0,0,-dist/2)*CF.A(0,M.P/2,0),true,false)
	Mesh(part2,Enum.MeshType.Cylinder)
	Tween(part1,{Color=C3.N(1,1,1)},1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false)
	Tween(part2,{Color=C3.N(1,1,1)},1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false)
	Effect{
		Effect='ResizeAndFade',
		Color=MagicVariant.Color,
		Size=V3.N(data1.Mesh.Scale.X/20,data1.Mesh.Scale.X/20,data1.Mesh.Scale.X/20),
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
			Size=V3.N((data1.Mesh.Scale.X/20)/2,(data1.Mesh.Scale.X/20)/2,data1.Mesh.Scale.X/20),
			CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-(data1.Mesh.Scale.X/20)).p,pos),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=MagicVariant.Color,
			MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
		}	
	end
	AOEDamage(pos,data1.Mesh.Scale.X/20,15,45,0,'Normal',10,4)
	AOEDamage(pos,data2.Mesh.Scale.X/20,15,45,0,'Normal',10,4)
	coroutine.wrap(function()
		local frame = (1/30)
		for i = 1, 30 do
			part1.Transparency = (i/30)
			part2.Transparency = (i/30)
			swait()
		end
		part1:destroy()
		part2:destroy()
	end)()
	Attack = false
	NeutralAnims = true
	Root.Anchored = false
	data1.Destroy()
	data2.Destroy()
end


function BLaser(key)
	NeutralAnims = false
	Attack = true
	Root.Anchored = true
	local data = MagicCircle{Weld=Torso,Pos=CF.N(0,0,-1),Size=15,Variant=MagicVariant,Time=.75}
	local IsGrown = false
	data.Grown:connect(function() IsGrown = true end)
	repeat swait() 
		local Alpha = .1
		local idk = M.R(25)
		LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
		RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
		RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
		NK.C0 = NK.C0:lerp(NKC0,Alpha)
		LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
		RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
		local LookVector = Mouse.Hit.p
		Torso.CFrame = CF.N(Root.Position,LookVector) 
	until IsGrown
	if(S.UserInputService:IsKeyDown(key))then
		local grown = 0
		repeat 
			local Alpha = .1
			local idk = M.R(25)
			LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha)
			RJ.C0 = RJ.C0:lerp(RJC0,Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.A(0,0,M.R(-5)),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),Alpha)
			local LookVector = Mouse.Hit.p
			Root.CFrame = CF.N(Root.Position,LookVector)
			swait()
		until not S.UserInputService:IsKeyDown(key)
	end
	
	local hit,pos,norm,dist = CastRay(data.Circle.CFrame.p,Mouse.Hit.p,1024)
	local part = Part(Effects,MagicVariant.EffectColor or MagicVariant.Color,Enum.Material.Neon,V3.N(dist,data.Mesh.Scale.x/40,data.Mesh.Scale.x/40),CF.N(data.Circle.CFrame.p,pos)*CF.N(0,0,-dist/2)*CF.A(0,M.P/2,0),true,false)
	Mesh(part,Enum.MeshType.Cylinder)
	Tween(part,{Color=C3.N(1,1,1)},1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false)
	local aa = data.Circle:Clone();
	aa.Parent = Effects
	aa.Anchored = true
	local blast = Sound(aa,334702766,1,5,false,true,true)
	data.Circle:destroy()
	if(not blast.IsLoaded)then repeat swait() until blast.IsLoaded end
	Effect{
		Effect='ResizeAndFade',
		Color=MagicVariant.Color,
		Size=V3.N(data.Mesh.Scale.X/20,data.Mesh.Scale.X/20,data.Mesh.Scale.X/20),
		Mesh={MeshType=Enum.MeshType.Sphere},
		CFrame=CF.N(pos),
		Sound=blast,
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
			Sound=blast,
			Size=V3.N((data.Mesh.Scale.X/20)/2,(data.Mesh.Scale.X/20)/2,data.Mesh.Scale.X/20),
			CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-(data.Mesh.Scale.X/20)).p,pos),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=MagicVariant.Color,
			MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
		}	
	end
	AOEDamage(pos,data.Mesh.Scale.X/20,45,75,0,'Normal',10,4)
	coroutine.wrap(function()
		for i = 1, (blast.TimeLength*Frame_Speed) do
			part.Transparency = (i/(blast.TimeLength*Frame_Speed))
			for _,v in next, aa:children() do if v:IsA'Decal' then v.Transparency = (i/(blast.TimeLength*Frame_Speed)) end end
			swait()
		end
		aa:destroy()
		part:destroy()
	end)()
	
	Attack = false
	NeutralAnims = true
	Root.Anchored = false
	Root.Velocity = Mouse.Hit.lookVector*-125
end

function Skill1()
	Laser(Enum.KeyCode.Q)
end

function Skill2()
	DLaser(Enum.KeyCode.Z)
end

function Skill3()
	BLaser(Enum.KeyCode.X)
end

--// Wrap it all up \\--

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'q')then Skill1() end
	if(k == 'z')then Skill2() end
	if(k == 'x')then Skill3() end
end)

Plr.Chatted:connect(function(m)
	
	if(m:sub(1,3) == '/e ')then
		local msg = m:sub(4)
		--emote commands (gotta do)
	end
end)
while true do
	swait()
	Sine = Sine + Change

	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4)), Char)
	
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and (Hum.WalkSpeed > 24 and "Run" or "Walk") or hitfloor and "Idle")
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
		local wsVal = 20 / (Hum.WalkSpeed/16)
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
			RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0+.2*M.C(Sine/12),.2*M.C(Sine/6),0)*CF.A(M.R(-5+5*M.C(Sine/12)),0,0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0*CF.A(M.R(-5+5*M.C(Sine/12)),0,0),Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(.25,0,0)*CF.A(M.R(-45),0,M.R(45+5*M.C(Sine/12))),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(-.25,0,0)*CF.A(M.R(-45),0,M.R(-45-5*M.C(Sine/12))),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0-.2*M.C(Sine/12),-.2*M.C(Sine/6),0)*CF.A(M.R(5-5*M.C(Sine/12)),M.R(10),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0-.2*M.C(Sine/12),-.2*M.C(Sine/6),0)*CF.A(M.R(5-5*M.C(Sine/12)),M.R(-10),0),Alpha)
			-- idle
		elseif(State == 'Run')then
			local wsVal = 20 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-15+2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,0+.3*M.S(Sine/wsVal))*CF.A(M.R(0-45*M.S(Sine/wsVal)),0,M.R(5)),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
		elseif(State == 'Walk')then
			local wsVal = 20 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.3 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-5-2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.22*M.C(Sine/wsVal))*CF.A(M.R(37*M.C(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,.22*M.C(Sine/wsVal))*CF.A(M.R(-37*M.C(Sine/wsVal)),0,M.R(5)),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
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
	
end