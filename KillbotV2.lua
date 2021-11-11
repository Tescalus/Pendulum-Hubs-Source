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
 -- FLING BELOW!

power = 25000

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.Torso
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.Torso.Position

--// SHORTCUTS \\--
local SCRIPTUTIL = game:GetObjects("rbxassetid://5276526474")[1]

local function linear(t, b, c, d)
  return c * t / d + b
end

local function inBack(t, b, c, d, s)
  if not s then s = 1.70158 end
  t = t / d
  return c * t * t * ((s + 1) * t - s) + b
end

local function outBack(t, b, c, d, s)
  if not s then s = 1.70158 end
  t = t / d - 1
  return c * (t * t * ((s + 1) * t + s) + 1) + b
end

local Vector3Sequence,Vector3SequenceKeypoint = {},{}
Vector3SequenceKeypoint.new = function(time,value,envelope)
	--bad argument #2 to 'new' (number expected, got Vector3)
	assert(typeof(time)=='number',"bad argument #1 to 'new' (number expected, got "..typeof(time))
	assert(typeof(value)=='Vector3',"bad argument #2 to 'new' (Vector3 expected, got "..typeof(value))
	return {Time=time,Value=value,Envelope=envelope}
end

Vector3Sequence.new = function(...)
	local tuple={...}
	if(#tuple==2)then
		return Vector3Sequence.new{Vector3SequenceKeypoint.new(0,tuple[1]),Vector3SequenceKeypoint.new(1,tuple[2])}
	else
		local thing = tuple[1]
		if(typeof(thing)=='Vector3')then
			return Vector3Sequence.new(thing,thing)
		elseif(typeof(thing)=='table')then
			assert(#thing>=2,"Vector3Sequence: requires at least 2 keypoints")
			local last;
			for i,v in next, thing do
				assert(v.Value and v.Time and typeof(v.Value)=='Vector3',"expected 'Vector3SequenceKeypoint' at index "..i)
				if(not last or v.Time>last)then
					last=v.Time
				else
					error("Vector3Sequence: all keypoints must be ordered by time")
				end
			end
			return setmetatable({
				Keypoints=thing;
			},{__index=Vector3Sequence})
		else
			return error("table of Vector3SequenceKeypoints expected.")
		end
	end
end

local CFrameSequence,CFrameSequenceKeypoint = {},{}
CFrameSequenceKeypoint.new = function(time,value,envelope)
	--bad argument #2 to 'new' (number expected, got CFrame)
	assert(typeof(time)=='number',"bad argument #1 to 'new' (number expected, got "..typeof(time))
	assert(typeof(value)=='CFrame',"bad argument #2 to 'new' (CFrame expected, got "..typeof(value))
	return {Time=time,Value=value,Envelope=envelope}
end

CFrameSequence.new = function(...)
	local tuple={...}
	if(#tuple==2)then
		return CFrameSequence.new{CFrameSequenceKeypoint.new(0,tuple[1]),CFrameSequenceKeypoint.new(1,tuple[2])}
	else
		local thing = tuple[1]
		if(typeof(thing)=='CFrame')then
			return CFrameSequence.new(thing,thing)
		elseif(typeof(thing)=='table')then
			assert(#thing>=2,"CFrameSequence: requires at least 2 keypoints")
			local last;
			for i,v in next, thing do
				assert(v.Value and v.Time and typeof(v.Value)=='CFrame',"expected 'CFrameSequenceKeypoint' at index "..i)
				if(not last or v.Time>last)then
					last=v.Time
				else
					error("CFrameSequence: all keypoints must be ordered by time")
				end
			end
			return setmetatable({
				Keypoints=thing;
			},{__index=CFrameSequence})
		else
			return error("table of CFrameSequenceKeypoints expected.")
		end
	end
end

local RNG = (function()
    local RNG = Random.new();
    return function(min,max,int)
        return int and RNG:NextInteger(min,max) or RNG:NextNumber(min,max)
    end;
end)();
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {
	N=CFrame.new;
	A=CFrame.Angles;
	fEA=CFrame.fromEulerAnglesXYZ;
}
local C3 = {
	N=Color3.new;
	RGB=Color3.fromRGB;
	HSV=function(...)local data={...}if(typeof(data)=='Color3')then return Color3.toHSV(...)else return Color3.fromHSV(...)end;end;
}
local V3 = {
	N=Vector3.new;
	FNI=Vector3.FromNormalId;
	A=Vector3.FromAxis;
}
local M = {
	C=math.cos;
	R=math.rad;
	S=math.sin;
	T=math.tan;
	AT=math.atan;
	AT2=math.atan2;
	AS=math.asin;
	AC=math.acos;
	A=math.abs;
	F=math.floor;
	CE=math.ceil;
	P=math.pi;
	RNG=RNG;
	H=math.huge;
	RRNG=function(...) return math.rad(RNG(...)) end
}
local R3 = Region3.new
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// INITIALIZATION \\--
local Plr = Plrs.LocalPlayer
local Char = workspace.non
local Hum = Char:FindFirstChildOfClass'Humanoid'
assert(Hum and Hum.RigType==Enum.HumanoidRigType.R6,"You need to have a valid Humanoid instance! (Exising and R6)")
local Head = Char.Head
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Torso= Char.Torso
local Root = Char.HumanoidRootPart
local NeutralAnims = true
local Attack = false
local legAnims = true
local Mouse = Plr:GetMouse()
local EffectFolder=Instance.new("Folder")
EffectFolder.Name='Effects'
EffectFolder.Parent=Char
local FXFolder = SCRIPTUTIL:WaitForChild'Effects'
FXFolder.Parent=nil
local ExplosionDeb = SCRIPTUTIL:WaitForChild'ExplosionDebris'
ExplosionDeb.Parent=nil
local GibParticles = SCRIPTUTIL:WaitForChild'gibBlood'
GibParticles.Parent=nil
local Movement = 8
local Sine = 0;
local Change = 1;
local wsVal = 8
local crushedHead = SCRIPTUTIL:WaitForChild'CrushedHead'
crushedHead.Parent=nil
local BloodParticles = IN("Attachment")
SCRIPTUTIL:WaitForChild'Mist'.Parent=BloodParticles

--// INSTANCE CREATORS \\--
local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
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
	Sound.Parent =parent or workspace
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	part.Parent = parent
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	weld.Parent = part0
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

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = Part(EffectFolder,C3.N(1,1,1),Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),cf,true,false)
	soundPart.Transparency=1
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

function Joint(name,part0,part1,c0,c1,type)
	local joint = IN(type or "Motor6D")
	joint.Part0 = part0
	joint.Part1 = part1
	joint.C0 = c0 or CF.N()
	joint.C1 = c1 or CF.N()
	joint.Parent=part0
	joint.Name=name or part0.." to "..part1.." "..joint.ClassName
	return joint
end

function Animate(joint,c0,alpha,style,dir)
	if(style=='Lerp')then
		joint.C0 = joint.C0:lerp(c0,alpha)
	else
		local info = TweenInfo.new(alpha or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,0,false,0)
		local tween = S.TweenService:Create(joint,info,{C0=c0})
		tween:Play();
		return tween;
	end
end

function NewInstance(instance,parent,properties)if(properties.Parent)then properties.Parent=parent end;local new = IN(instance)if(properties)then for prop,val in next, properties do pcall(function() new[prop]=val end)end;end;new.Parent=parent;return new;end

function GetAdjacentParts(part)
	local function createLargerHitbox(part)
		local n = 0.2
		local clone = part:Clone()
		
		clone.Transparency = .8
		clone.BrickColor = BrickColor.Red()
		clone.Size = clone.Size + Vector3.new(n, n, n)
		clone.Name = "hitbox"
		clone.CFrame = part.CFrame
		clone.Anchored=true
		clone.CanCollide=true
		
		if (clone:IsA("WedgePart")) then
			clone.Size = clone.Size + Vector3.new(0, n, n)
			clone.CFrame = part.CFrame * CFrame.new(0, n / 2, -n /2)
		end
		
		if (clone:IsA("CornerWedgePart")) then
			clone.Size = clone.Size + Vector3.new(n, n, n)
			clone.CFrame = part.CFrame * CFrame.new(-n / 2, n / 2, n / 2)
		end
		clone.Parent = part
		
		return clone
	end
	
	local hitbox = createLargerHitbox(part)
	local touchingParts = hitbox:getTouchingParts()
	hitbox:Destroy()
	
	return (function()
		local adjacent={}
		for _,v in next, touchingParts do if(v~=part)then table.insert(adjacent,v)end;end
		return adjacent;
	end)()
end
--// CUSTOMIZABLE VARIABLES \\--
local Gren = SCRIPTUTIL:WaitForChild'Grenade'
local ShakeFactor = 2
local DamageColor = BrickColor.new'Really red';
local MusicData = {Parent=Torso,ID=4466439348;Pitch=.9;Volume=2;}
local God = false
local WalkSpeed = 25

local Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
Music.Name = 'Music'

local Morph = SCRIPTUTIL:WaitForChild'Morph'
Morph.Head:Destroy()
local Highlights=Morph:WaitForChild'Right Arm':WaitForChild'Highlights'
for _,v in next, Char:children() do
	if(Morph:FindFirstChild(v.Name))then
		local part = Morph[v.Name]
		part.Parent=Char
		part:SetPrimaryPartCFrame(v.CFrame)
		for _,c in next, part:GetDescendants() do
			if(c:IsA'BasePart' and c~=part.PrimaryPart)then
				c.Massless=true
				c.Anchored=false
				local j = Weld(v,c,CFrame.new(),c.CFrame:inverse()*v.CFrame)
				c.CanCollide=false
			end
		end
		part.PrimaryPart:destroy()
	end
end

--// JOINTS \\--

local RJ = Joint("RootJoint",Root,Torso,CF.N(),CF.N())
local NK = Joint("Neck",Torso,Head,CF.N(0,1.5,0),CF.N())
local LS = Joint("Left Shoulder",Torso,LArm,CF.N(-1.5,.5,0),CF.N(0,.5,0))
local RS = Joint("Right Shoulder",Torso,RArm,CF.N(1.5,.5,0),CF.N(0,.5,0))
local LH = Joint("Left Hip",Torso,LLeg,CF.N(-.5,-2,0),CF.N(0,0,0))
local RH = Joint("Right Hip",Torso,RLeg,CF.N(.5,-2,0),CF.N(0,0,0))

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", SCRIPTUTIL)
ArtificialHB.Name = "Heartbeat"

SCRIPTUTIL:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/60
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			SCRIPTUTIL.Heartbeat:Fire()
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

--// STOP ANIMATIONS \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// EFFECT FUNCTIONS \\--


local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end

function fakePhysics(elapsed,cframe,velocity,rotation,acceleration)
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function Projectile(data)
	local Size = data.Size or 1;
	local Origin = data.Origin or CFrame.new();
	local Velocity = data.Velocity or Vector3.new(0,100,0);
	local Gravity = data.Gravity or workspace.Gravity;
	local Color = data.Color or Color3.new(.7,0,0);
	local Lifetime = data.Lifetime or 1;
	local Material = data.Material or Enum.Material.Glass;
	local ignore = data.Ignorelist or {Char};
	local Init = data.Init;
	local Update = data.Update;
	local HitFunc = data.Hit;
	local ShouldCollide = data.BeforeCollision;
	local DeleteOnHit = not not data.DeleteOnHit;
	local ProjectilePart = data.Projectile or nil;
	local Look = data.AimAtPos or false;
	local drop = ProjectilePart or Part(nil,Color,Material,Vector3.new(Size,Size,Size),Origin,true,false)
	local StartTravel = tick()
	local currCF = data.Origin
	if(not ProjectilePart)then
		Mesh(drop,Enum.MeshType.Sphere)
		drop.Parent=EffectFolder
	end
	drop.Material = Material
	drop.Color = Color
	drop.CFrame=Origin
	local object=setmetatable({Part=drop},{
		__newindex=function(s,i,v)
			if(i=='Gravity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Gravity = v Gravity=v
			elseif(i=='Velocity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Velocity = v Velocity=v
			elseif(i=='Lifetime')then data.Lifetime = v Lifetime=v 
			elseif(i=='Ignorelist')then data.Ignorelist = v ignore=v
			elseif(i=='DeleteOnHit')then data.DeleteOnHit = v DeleteOnHit=v 
			else
				pcall(function()
					drop[i]=v
				end)
			end
		end;
		__index=data;
	})
	
	
	if(Init)then
		Init(drop)
	end
	local startTick = tick();
	coroutine.wrap(function()
		while true do
			local elapsed = tick()-startTick
			local trElapsed = tick()-StartTravel
			if(elapsed>Lifetime)then
				drop:destroy();
				break
			end
			local newCF = fakePhysics(trElapsed,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local nextCF = fakePhysics(trElapsed+.05,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local dist = (drop.Position-newCF.p).magnitude
			local hit,pos,norm = CastRay(drop.Position,newCF.p,dist,ignore)
			currCF=newCF
			local doCollide = hit and (GetTorso(hit.Parent) or hit.CanCollide) and (not ShouldCollide or ShouldCollide(hit))
			if(hit and not doCollide)then table.insert(ignore,hit) end
			if(Look)then
				drop.CFrame = CFrame.new(newCF.p,nextCF.p)
			else
				drop.CFrame = CFrame.new(newCF.p)
			end
			if(Update)then Update(drop,object,elapsed) end
			if(doCollide)then
				if(DeleteOnHit or not HitFunc)then drop:destroy() end
				if(HitFunc)then if(HitFunc(hit,pos,norm,object,drop))then break end end
			end
			if(not drop.Parent)then
				break
			end
			swait()
		end
	end)()
	return object
end
	
function Chat(txt,Timer,Alpha,clr)
	if(Head:FindFirstChild'Chattie' and Head.Chattie:FindFirstChild'Killchat')then
		Head.Chattie.Killchat.Value=true
	elseif(Head:FindFirstChild'Chattie')then
		Head.Chattie:destroy()
	end
	local nig = V3.N(0,0,0)
	local clr = (typeof(clr)=='BrickColor' and clr.Color or typeof(clr)=='Color3' and clr or C3.N(1,1,1))
	local bg = NewInstance("BillboardGui",Head,{
		Name='Chattie';
		Adornee=Head;
		LightInfluence=0;
		Size=UDim2.new(4,0,2,0);
	})
	local dismiss = NewInstance("BoolValue",bg,{
		Name='Killchat';
	})
	
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=clr;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=0;
		TextStrokeTransparency=.5;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,3,0),outBack(1-i,0,1,1,6))
			if(dismiss.Value)then break end
			swait()
		end
		local start = tick()
		nig=bg.StudsOffsetWorldSpace
		repeat swait() until dismiss.Value or tick()-start>=timer
		bg.Name='DismissingChat'
		for i = 0, 1, .05 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,2,0),linear(i,0,1,1))
			text.TextTransparency=i;
			text.TextStrokeTransparency=.5+i/2;
			swait()
		end
		bg:destroy()
	end)()
end

function ShowDamage(pos,txt,timer,clr)
	local nig = typeof(pos)=='Vector3' and CF.N(pos) or pos
	local part = Part(EffectFolder,clr,Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),nig,true,false)
	part.Transparency=1
	local bg = NewInstance("BillboardGui",part,{
		Adornee=part;
		LightInfluence=0;
		Size=UDim2.new(2,0,1,0);
	})
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=part.Color;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=1;
		TextStrokeTransparency=1;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			part.CFrame=nig:lerp(nig+V3.N(0,3,0),outBack(1-i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency-.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency-.01;
			swait()
		end
		local start = tick()
		repeat swait() until tick()-start>=timer
		local endRot=M.RNG(-25,25)
		for i = 0, 1, .02 do
			part.CFrame=(nig+V3.N(0,3,0)):lerp(nig+V3.N(0,-10,0),inBack(i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency+.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency+.01;
			swait()
		end
		part:destroy()
	end)()
end

--[[function CamshakePlayer(p,settings)
	local sh = SCRIPTUTIL:WaitForChild'CamShake':Clone()	
	local optionFolder = sh:WaitForChild'Options'
	for _,v in next, optionFolder:children() do
		if(settings[v.Name])then
			v.Value=settings[v.Name]
		end
	end
	local originVal;
	if(typeof(settings.Origin)=='Vector3')then
		originVal=IN("Vector3Value")
	elseif(typeof(settings.Origin)=='CFrame')then
		originVal=IN("CFrameValue")
	elseif(typeof(settings.Origin)=='Instance')then
		originVal=IN("ObjectValue")
	end
	if(originVal)then
		originVal.Name = 'Origin'
		originVal.Value = settings.Origin
		originVal.Parent=optionFolder
	end
	local parent = p.Character or p:FindFirstChildOfClass'Backpack' or p:FindFirstChildOfClass'PlayerGui'
	if(parent)then
		local nig = sh:Clone();
		nig.Parent=parent
		nig.Disabled=false
		S.Debris:AddItem(nig,(settings.Duration or 2)+1)
	end
end

function Camshake(settings)
	for _,p in next, game:service'Players':players() do
		CamshakePlayer(p,settings)
	end
end]]
function Tween(object,properties,time,style,dir,repeats,reverse,delay)
	local info = TweenInfo.new(time or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,repeats or 0,reverse or false,delay or 0)
	local tween = S.TweenService:Create(object,info,properties)
	tween:Play()
	return tween;
end

local function numLerp(Start,Finish,Alpha)
    return Start + (Finish- Start) * Alpha
end
function IsValidEnum(val,enum,def)
	local enum = Enum[tostring(enum)]
	local succ,err=pcall(function() return enum[val.Name] end)
	if(not err)then
		return val
	else
		return def
	end
end

function IsValid(val,type,def)
	if(typeof(type)=='string')then
		return (typeof(val)==type and val or def)
	elseif(typeof(type)=='table')then
		for i,v in next, type do
			if(typeof(val)==v)then
				return val
			end
		end
	end
	return def
end

local FXInformation = {}
function EffectFunc(data)
	--if(typeof(data)=='Instance' and data:IsA'ModuleScript')then	data=require(data)end
	assert(typeof(data)=='table',"Expected 'table' calling EffectFunc")
	data.Parent=EffectFolder
	if(data.BeamEffect)then
		return Slash(data)
	end
	
	local Lifetime = data.Lifetime or 1;
	local Color = data.Color or Color3.new(1,1,1)
	local EndColor = data.EndColor
	local Size = data.Size or Vector3.new(1,1,1)
	local EndSize = data.EndSize
	local Transparency = data.Transparency or 0
	local EndTransparency = data.EndTransparency or 1
	local Material = data.Material or Enum.Material.Neon;
	local Part = typeof(data.RefPart)=='Instance' and data.RefPart or typeof(data.RefPart)=='string' and FXFolder:FindFirstChild(data.RefPart);
	local CF = data.CFrame or CFrame.new(0,10,0)
	local EndCF = data.EndCFrame or data.EndPos
	local Mesh = data.MeshData or data.Mesh or {MeshType=Enum.MeshType.Brick}
	local Rotation = data.Rotation or {0,0,0}
	local UpdateCF = data.UpdateCFrame;
	local Update = data.Update;
	
	local CSQ,SSQ,TSQ,CFQ;
	if(typeof(Color)=='BrickColor')then Color = Color.Color end
	if(typeof(EndColor)=='BrickColor')then EndColor = EndColor.Color end
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3' and typeof(EndColor)=='Color3')then
		CSQ = ColorSequence.new(Color,EndColor)
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	
	if(typeof(Size)=='table' and Size.Keypoints and typeof(Size.Keypoints[1].Value)=='Vector3')then
		SSQ = Size
	elseif(typeof(Size)=='Vector3' and typeof(EndSize)=='Vector3')then
		SSQ = Vector3Sequence.new(Size,EndSize)
	elseif(typeof(Size)=='Vector3')then
		SSQ = Vector3Sequence.new(Size)
	else
		SSQ = Vector3Sequence.new(Vector3.new(1,1,1))
	end
	
	if(typeof(CF)=='table' and CF.Keypoints and typeof(CF.Keypoints[1].Value)=='CFrame')then
		CFQ = CF
	elseif(typeof(CF)=='CFrame' and typeof(EndCF)=='CFrame')then
		CFQ = CFrameSequence.new(CF,EndCF)
	elseif(typeof(CF)=='CFrame')then
		CFQ = CFrameSequence.new(CF)
	else
		CFQ = CFrameSequence.new(CFrame.new(0,10,0))
	end
		
	if(typeof(Transparency)=='NumberSequence')then
		TSQ = Transparency
	elseif(typeof(Transparency)=='number' and typeof(EndTransparency)=='number')then
		TSQ = NumberSequence.new(Transparency,EndTransparency)
	elseif(typeof(Transparency)=='number')then
		TSQ = NumberSequence.new(Transparency)
	else
		TSQ = NumberSequence.new(0,1)
	end
	
	
	local part,mesh;
	if(not Part or not Part:IsA'BasePart')then
		part = Instance.new("Part")
		mesh = Instance.new("SpecialMesh",part)
	else
		part=Part:Clone();
		mesh=part:FindFirstChildOfClass'DataModelMesh'
	end
	part.Color = CSQ.Keypoints[1].Value
	part.Transparency = TSQ.Keypoints[1].Value
	part.Size = (not mesh and SSQ.Keypoints[1].Value or Vector3.new(1,1,1))
	part.Anchored = true
	part.CanCollide = false
	part.CFrame = CFQ.Keypoints[1].Value
	part.Material = Material
	part.Locked = true
	part.Parent = EffectFolder
	if(mesh)then
		mesh.Scale = SSQ.Keypoints[1].Value
		mesh.MeshType = Mesh.MeshType or Mesh.Type or Enum.MeshType.Brick
		mesh.MeshId = Mesh.MeshId or Mesh.Id or ""
		mesh.TextureId = Mesh.TextureId or Mesh.Texture or ""
	end
	game:service'Debris':AddItem(part,Lifetime*1.5)
	table.insert(FXInformation,{
		Part=part;
		Mesh=mesh;
		Lifetime=Lifetime;
		Create=tick();
		ColorSeq=CSQ;
		SizeSeq=SSQ;
		TranSeq=TSQ;
		CFSeq=CFQ;
		ColorPoint=CSQ.Keypoints[1];
		SizePoint=SSQ.Keypoints[1];
		TranPoint=TSQ.Keypoints[1];
		CFPoint=CFQ.Keypoints[1];
		Rotation=Rotation;
		CurrRot=CFrame.new();
		UpdateCF=(typeof(UpdateCF)=='function' and UpdateCF or nil);-- typeof(UpdateCF)=='Instance' and UpdateCF:IsA'ModuleScript' and require(UpdateCF) or
		OnUpdate=(typeof(Update)=='function' and Update or nil) -- typeof(Update)=='Instance' and Update:IsA'ModuleScript' and require(Update) or 
	})
end

function GetKeyframe(sequence,currentTime,lifeTime)
	local scale = currentTime/lifeTime
	for i = 1,#sequence.Keypoints do
		local keyframe = sequence.Keypoints[i]
		local nframe = sequence.Keypoints[i+1]
		if(not nframe or keyframe.Time>=scale and keyframe.Time<nframe.Time)then
			return keyframe
		end
	end
	return sequence.Keypoints[1];
end;

coroutine.wrap(function()
	while true do
		swait()
		local queue={}
		for i,dat in next, FXInformation do
			local part,mesh,lifetime,created,csq,ssq,tsq,cfq,rot,ucf,upd = 
																	dat.Part,
																	dat.Mesh,
																	dat.Lifetime,
																	dat.Create,
																	dat.ColorSeq,
																	dat.SizeSeq,
																	dat.TranSeq,
																	dat.CFSeq,
																	dat.Rotation,
																	dat.UpdateCF,
																	dat.OnUpdate;
			local current = tick();
			local elapsed = tick()-created
			local currentcpoint = GetKeyframe(csq,elapsed,lifetime)
			local currentspoint = GetKeyframe(ssq,elapsed,lifetime)
			local currenttpoint = GetKeyframe(tsq,elapsed,lifetime)
			local currentcfpoint = GetKeyframe(cfq,elapsed,lifetime)
			
			local currentcolor = currentcpoint.Value
			local currenttrans = currenttpoint.Value
			local currentsize = currentspoint.Value
			local currentcf = currentcfpoint.Value
			
			if(currentcpoint~=dat.ColorPoint)then
				Tween(part,{Color=currentcolor},(currentcpoint.Time-dat.ColorPoint.Time)*lifetime)
				dat.ColorPoint=currentcpoint
			end
			if(currenttpoint~=dat.TranPoint)then
				Tween(part,{Transparency=currenttrans},(currenttpoint.Time-dat.TranPoint.Time)*lifetime)
				dat.TranPoint=currenttpoint
			end
			if(currentspoint~=dat.SizePoint)then
				if(mesh)then
					Tween(mesh,{Scale=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				else
					Tween(part,{Size=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				end
				
				dat.SizePoint=currentspoint
			end
			local newRot={0,0,0}
			if(rot=='random')then
				dat.CurrRot = CFrame.Angles(math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)))
			elseif(typeof(rot)=='table')then
				dat.CurrRot = dat.CurrRot*CFrame.Angles(math.rad(rot[1]),math.rad(rot[2]),math.rad(rot[3]))
			end
			if(ucf and typeof(ucf)=='function')then
				part.CFrame=ucf(dat)
			elseif(#cfq.Keypoints==2)then
				part.CFrame=cfq.Keypoints[1].Value:lerp(cfq.Keypoints[2].Value,elapsed/lifetime)*dat.CurrRot
			else
				if(currentcfpoint~=dat.CFPoint)then
					Tween(part,{CFrame=currentcf},(currentcfpoint.Time-dat.CFPoint.Time)*lifetime)
					dat.CFPoint=currentcfpoint
				end
			end
			if(typeof(upd)=='function')then upd(dat) end
			if(not part or not part.Parent)then
				table.insert(queue,tostring(i))
			end
			if(elapsed>=lifetime)then
				part:destroy()
			end
		end
		for _,v in next, queue do FXInformation[tonumber(v)]=nil; end
	end
end)()

function Slash(data) -- Credit to Kyu for the basic idea behind it
	local Parent = IsValid(data.Parent,'Instance',workspace)
	local Color = IsValid(data.Color,{'Color3','BrickColor'},Color3.new(1,1,1))
	local Width = IsValid(data.Width,'number',2);
	local EndWidth = IsValid(data.EndWidth,'number',0);
	local Length = IsValid(data.Length,'number',1);
	local EndLength = IsValid(data.EndLength,'number',Length*2);
	local Curve = IsValid(data.Curve,"number",2);
	local EndCurve = IsValid(data.EndCurve,"number",Curve*2);
	local SCFrame = IsValid(data.CFrame,'CFrame',CFrame.new(0,10,0))
	local Lifetime = IsValid(data.Lifetime,'number',.25)
	local Offset = IsValid(data.Offset,'CFrame',CFrame.new())
	local Style = IsValidEnum(IsValid(data.EasingStyle,'EnumItem',Enum.EasingStyle.Quad),Enum.EasingStyle,Enum.EasingStyle.Quad)
	local Direction = IsValidEnum(IsValid(data.EasingDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local Delay = IsValid(data.Delay,'number',0)
	local BeamProperties = IsValid(data.BeamProps,'table',{})
	local FadeAway = IsValid(data.Fades,'boolean',false)
	local FadeStyle = IsValidEnum(IsValid(data.FadeStyle,'EnumItem',Enum.EasingStyle.Linear),Enum.EasingStyle,Enum.EasingStyle.Linear)
	local FadeDir = IsValidEnum(IsValid(data.FadeDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local CSQ;
	local TSQ;
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	elseif(typeof(Color)=='BrickColor')then
		CSQ = ColorSequence.new(Color.Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	local P = Part(Parent,Color,Enum.Material.SmoothPlastic,Vector3.new(0,0,0),SCFrame,true,false)
	P.Transparency = 1
	local A0 = Instance.new("Attachment")
	local A1 = Instance.new("Attachment")
	A0.Position = Vector3.new(0,0,Length)
	A1.Position = Vector3.new(0,0,-Length)
	A0.Parent=P
	A1.Parent=P
	local Beam = Instance.new("Beam")
	Beam.Attachment0=A0
	Beam.Attachment1=A1
	Beam.FaceCamera=true
	Beam.LightInfluence=BeamProperties.LightInfluence or 0
	Beam.LightEmission=BeamProperties.LightEmission or 1
	for i,v in next, BeamProperties do
		pcall(function() Beam[i]=v end)
	end
	Beam.Color = CSQ
	Beam.CurveSize0 = Curve
	Beam.CurveSize1 = -Curve
	Beam.Width0=Width
	Beam.Width1=Width
	Beam.Parent=P
	local ti = {Lifetime,Style,Direction,0,false,Delay}
	Tween(P,{CFrame = SCFrame*Offset},unpack(ti))
	Tween(Beam,{Width0=EndWidth,Width1=EndWidth,CurveSize0=EndCurve,CurveSize1=-EndCurve},unpack(ti))
	Tween(A0,{Position=Vector3.new(0,0,EndLength)},unpack(ti))
	Tween(A1,{Position=Vector3.new(0,0,-EndLength)},unpack(ti)).Completed:connect(function() P:destroy() end)
	if(FadeAway)then
		local part = Instance.new("Part")
		part.Transparency = Beam.Transparency.Keypoints[1].Value or 0
		Tween(part,{Transparency=1},Lifetime,FadeStyle,FadeDir,0,false,Delay)
		repeat swait()
			Beam.Transparency=NumberSequence.new(part.Transparency)
		until not P.Parent
	end
end
 
--// MISCELLANEOUS FUNCTIONS \\--
function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

--// DAMAGE, AOE, AND ATTACK FUNCTIONS \\--

function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	local DamageIsPercentage = data.PercentageDamage or true
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 1;
	
	
	local OnHitFunc = data.OnHit
	local DeathFunction = data.OnDeath
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local Critical = M.RNG(1,100,true) <= CritChance
	local DoneDamage = M.RNG(MinDam,MaxDam,true) * (Critical and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		if(canHit)then
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			
			if(not player or player.UserId ~= 5719877 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					--Humanoid.Health = 0;
					--Who:BreakJoints();
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)	
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), DoneDamage, 1.5, DamageColor)
					end
					local DoneDamage = DoneDamage*(DamageIsPercentage and Humanoid.MaxHealth/100 or 1)
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
					--Humanoid.Health = Humanoid.Health - DoneDamage
					if(OnHitFunc)then
						OnHitFunc(Who,HitTorso)
					end
				end
			end
		end
	end		
end

function AoE(where,range,func)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')
		if(hum and not hit[hum])then
			hit[hum] = true
			func(v.Parent,hum)
		end
	end
	return hit
end

function AoEDamage(where,range,data)
	AoE(where,range,function(c,h)
		data.Who=c
		DealDamage(data)
	end)
end

function CheckWhitelisted(char)
	local player = S.Players:GetPlayerFromCharacter(char);
	return player and (player.UserId==5719877 or player.UserId==33104243) or false
end

function GetClosestChar(where,range,includeWhitelist)
	local closestTorso,closestChar,closestDist;
	AoE(where,range,function(char,hum)
		if(CheckWhitelisted(char) and not includeWhitelist)then return end
		local torso = GetTorso(char)
		local hum = char:FindFirstChildOfClass'Humanoid'
		local dist = (where-torso.Position).magnitude
		if((not closestTorso or dist<closestDist) and hum and hum.Health>0)then
			closestDist=dist
			closestTorso=torso
			closestChar=char
		end
	end)
	return closestChar,closestDist
end


function Kill(char,bloodyMist,beheaded,neckslit,necksnap)
	if(CheckWhitelisted(char))then return end
	local torso = GetTorso(char)
	local hum = char:FindFirstChildOfClass'Humanoid'
	if(not hum or not torso)then return end
	if(bloodyMist)then
		if(hum.Health>0)then
			Sound(torso,429400881,1,1,false,true,true)
		end
		local mistAtt=BloodParticles:Clone()
		mistAtt.Parent=workspace.Terrain
		mistAtt.CFrame=torso.CFrame
		mistAtt:WaitForChild'Mist':Emit(15)
		S.Debris:AddItem(mistAtt,2.5)
	end
end

function CrushHead(char)
	if true then return end
	if(char)then
		local h = char:FindFirstChild'Head';
		if(h)then
			local crushed = crushedHead:Clone();
			crushed.Parent=char
			crushed:SetPrimaryPartCFrame(h.CFrame);
			crushed.PrimaryPart:destroy()
			for _,v in next, crushed:children() do
				if(v:IsA'BasePart')then
					v.Color=h.Color
					v.Material=h.Material
					v.Anchored=false
					v.CanCollide=true
				end
			end
			h:destroy()
		end	
	end
end


function Gib(char)
	if true then return end
	if(CheckWhitelisted(char))then return end
	--char:BreakJoints()
	for _,v in next, char:GetDescendants() do if(v:IsA'Constraint')then v:destroy() end end
	for _,v in next, char:children() do
		if(v.Name:lower():find"leg" or v.Name:lower():find"arm" or v.Name:lower():find"torso" or v.Name=='Head')then
			local prt = GibParticles:Clone()
			prt.Parent=v
			delay(1,function()
				prt.Enabled=false
			end)
			local Vel = IN("BodyVelocity")
			Vel.P=9e9
			Vel.MaxForce=V3.N(M.H,M.H,M.H)
			Vel.Velocity=CF.A(0,M.RRNG(0,360),M.RRNG(0,360)).lookVector*M.RNG(50,100)+V3.N(0,M.RNG(50,100),0)
			Vel.Parent=v
			S.Debris:AddItem(Vel,.1)
		end
	end
	S.Debris:AddItem(char,7)
end

function Grenade()
	Attack=true
	NeutralAnims=false
	legAnims=false
	WalkSpeed=2
	local Grenade = Gren:Clone()
	Grenade.Parent=Char
	Grenade.Anchored=false
	local HW = Joint("HandleWeld",RArm,Grenade,CF.N(0,-1.1,0)*CF.A(M.R(-90),0,0))
	Animate(HW,CF.N(0,-1.1,0)*CF.A(M.R(-90),M.R(0),M.R(0)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(LS,CF.N(-1.3,0.4,-0.6)*CF.A(M.R(83.3),M.R(10.9),M.R(39)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(LH,CF.N(-0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(0),M.R(0),M.R(0)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(NK,CF.N(0,1.5,-0.1)*CF.A(M.R(-11.7),M.R(0),M.R(0)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RH,CF.N(0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RS,CF.N(1,0.3,-0.7)*CF.A(M.R(97.4),M.R(20.5),M.R(-55.3)),.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	wait(.4)
	Sound(RArm,326088041,1,3,false,true,true)
	delay(2,function()
		S.Debris:AddItem(Grenade,7)
		Grenade.Anchored=true
		Grenade.CanCollide=false
		Grenade.Transparency=1
		Sound(Grenade,2011915907,1,5,false,true,true)
		local Sequences = {
			ColorSequence.new(C3.N(1,0,0));
			ColorSequence.new(C3.N(1,1,0));
			ColorSequence.new(C3.N(1,0,0),C3.N(1,1,0));
			ColorSequence.new(C3.N(1,.75,0));
		}
		AoE(Grenade.Position,35,function(c,h)
			if(h)then
				Gib(c)
			end
		end,{Grenade,Char})
		for i = 1,5 do
			local Size = M.RNG(32,37)
			EffectFunc{
				Lifetime=M.RNG(.6,.8);
				CFrame=Grenade.CFrame*CF.N(M.RNG(-3,3),M.RNG(-3,3),M.RNG(-3,3));
				Transparency=0;
				Mesh={Type=Enum.MeshType.Sphere};
				Size=Vector3Sequence.new{
					Vector3SequenceKeypoint.new(0,V3.N(0,0,0));
					Vector3SequenceKeypoint.new(.5,V3.N(Size,Size,Size)),
					Vector3SequenceKeypoint.new(1,V3.N(Size+2,Size+2,Size+2)),
				};
				Color=Sequences[M.RNG(1,#Sequences,true)];
			}
		end
		for i = 1,M.RNG(5,8,true) do
			local debris = ExplosionDeb:Clone();
			debris.CFrame = Grenade.CFrame
			debris.Anchored=false
			debris.Parent=EffectFolder
			local Vel = IN("BodyVelocity")
			Vel.P=9e9
			Vel.MaxForce=V3.N(M.H,M.H,M.H)
			Vel.Velocity=CF.A(0,M.RRNG(0,360),M.RRNG(0,360)).lookVector*M.RNG(50,100)+V3.N(0,M.RNG(50,100),0)
			Vel.Parent=debris
			S.Debris:AddItem(Vel,.1)
			S.Debris:AddItem(debris,10)
		end
	end)
	
	Animate(HW,CF.N(0,-1.1,0)*CF.A(M.R(-90),M.R(0),M.R(0)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(LS,CF.N(-1.6,0.5,0.1)*CF.A(M.R(-0.9),M.R(7.1),M.R(-8.2)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(LH,CF.N(-0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(0),M.R(0),M.R(0)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(NK,CF.N(0,1.5,0.1)*CF.A(M.R(1.6),M.R(0),M.R(0)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RH,CF.N(0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	Animate(RS,CF.N(1.5,0.9,0)*CF.A(M.R(-147.6),M.R(-4.7),M.R(-1.8)),.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
	wait(.6)
	Grenade.Parent=workspace
	HW:destroy()
	Grenade.CanCollide=true
	local Vel = IN("BodyVelocity")
	Vel.P=9e9
	Vel.MaxForce=V3.N(M.H,M.H,M.H)
	Vel.Velocity=CF.N(Grenade.CFrame.p,Mouse.Hit.p).lookVector*math.min((Grenade.CFrame.p-Mouse.Hit.p).magnitude*2,150)
	Vel.Parent=Grenade
	S.Debris:AddItem(Vel,.1)
	Animate(HW,CF.N(0,-1.1,0)*CF.A(M.R(-90),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(LS,CF.N(-1.5,0.5,0)*CF.A(M.R(-30.4),M.R(10.2),M.R(-3.7)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(LH,CF.N(-0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(0),M.R(40.1),M.R(0)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(NK,CF.N(0,1.5,0.1)*CF.A(M.R(2.1),M.R(-40.1),M.R(1.4)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(RH,CF.N(0.5,-2,0)*CF.A(M.R(0),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In)
	Animate(RS,CF.N(1.5,0.6,-0.1)*CF.A(M.R(83),M.R(6.5),M.R(27.8)),.1,Enum.EasingStyle.Quad,Enum.EasingDirection.In).Completed:wait()
	wait(.1)
	Attack=false
	NeutralAnims=true
	legAnims=true
	WalkSpeed=8
end

function Stomp()
	local Grabbed = GetClosestChar(Torso.CFrame*CF.N(0,0,-2).p,4)
	if(Grabbed)then
		local GrabbedTors=GetTorso(Grabbed)
		if(GrabbedTors)then
			Attack=true
			NeutralAnims=false
			Hum.AutoRotate=false
			legAnims=false
			WalkSpeed=0
			local gRoot = Grabbed:FindFirstChild'HumanoidRootPart' or Grabbed:FindFirstChild'Torso'
			if(gRoot)then
				gRoot.Anchored=true
				gRoot.CFrame = Root.CFrame*CF.N(-2,-2.4,-1.2)*CF.A(M.R(90),0,M.R(-90))
			
				Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LS,CF.N(-1.5,0.54,0)*CF.A(M.R(0),M.R(0),M.R(-8.2)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LH,CF.N(-0.5,-1.19,-0.63)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RJ,CF.N(0,-0.15,0.7)*CF.A(M.R(26.1),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RH,CF.N(0.5,-1.86,0.38)*CF.A(M.R(-26.1),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RS,CF.N(1.5,0.56,0)*CF.A(M.R(0),M.R(0),M.R(8.4)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				wait(.4)
				Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LS,CF.N(-1.5,0.54,0)*CF.A(M.R(0),M.R(0),M.R(-8.2)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LH,CF.N(-0.5,-1.41,-1.14)*CF.A(M.R(19),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RJ,CF.N(0,-0.33,-0.65)*CF.A(M.R(-19),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RH,CF.N(0.5,-1.85,0.28)*CF.A(M.R(-19.7),M.R(0),M.R(0)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RS,CF.N(1.5,0.56,0)*CF.A(M.R(0),M.R(0),M.R(8.4)),.1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				wait(.035)
				gRoot.Anchored=false
				Kill(Grabbed,false)
				local mistAtt=BloodParticles:Clone()
				mistAtt.Parent=workspace.Terrain
				mistAtt.CFrame=GrabbedTors.CFrame*CF.N(0,GrabbedTors.Size.y/2,0)
				mistAtt:WaitForChild'Mist':Emit(15)
				S.Debris:AddItem(mistAtt,2.5)
				Sound(GrabbedTors,429400881,.75,2,false,true,true)
				CrushHead(Grabbed)
				wait(.1)
			end
			Hum.AutoRotate=true
			Attack=false
			NeutralAnims=true
			legAnims=true
			WalkSpeed=8
		end
	end
end

function SnapNeck()
	local Grabbed = GetClosestChar(Torso.CFrame*CF.N(0,0,-2).p,4)
	if(Grabbed)then
		local GrabbedTors=GetTorso(Grabbed)
		if(GrabbedTors)then
			Attack=true
			NeutralAnims=false
			Hum.AutoRotate=false
			legAnims=false
			WalkSpeed=0
			local gRoot = Grabbed:FindFirstChild'HumanoidRootPart' or Grabbed:FindFirstChild'Torso'
			if(gRoot)then
				gRoot.Anchored=true
				gRoot.CFrame = Root.CFrame*CF.N(0,0,-.95)
				Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LS,CF.N(-1.35,0.98,-0.64)*CF.A(M.R(91.3),M.R(-7.4),M.R(43.1)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LH,CF.N(-0.5,-1.99,0.01)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RJ,CF.N(0,0.01,0)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RH,CF.N(0.5,-1.99,0.02)*CF.A(M.R(0),M.R(0),M.R(0)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RS,CF.N(1.29,1.08,-0.4)*CF.A(M.R(135.4),M.R(0),M.R(-30)),.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				wait(.4)
				Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LS,CF.N(-1.33,0.58,0.09)*CF.A(M.R(113.7),M.R(-1.8),M.R(15)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(LH,CF.N(-0.5,-1.99,0.01)*CF.A(M.R(0),M.R(0),M.R(0)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RJ,CF.N(0,0.01,0)*CF.A(M.R(0),M.R(0),M.R(0)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RH,CF.N(0.5,-1.99,0.02)*CF.A(M.R(0),M.R(0),M.R(0)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				Animate(RS,CF.N(1.09,0.86,-0.01)*CF.A(M.R(116.7),M.R(1.8),M.R(-5.4)),.05,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut)
				gRoot.Anchored=false
				Sound(GrabbedTors,363808674,1,2,false,true,true)
				Kill(Grabbed,false,false,false,true)
				wait(.2)
			end
			Hum.AutoRotate=true
			Attack=false
			NeutralAnims=true
			legAnims=true
			WalkSpeed=8
		end
	end
end

function Screech()
	Attack=true
	NeutralAnims=false
	legAnims=false
	WalkSpeed=0
	local Snd = Sound(Head,198165368,.5,5,false,false,false)
	Snd:Play()
	while Snd.Playing do
		local Alpha = .2
		Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(0),M.R(0))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha,'Lerp')
		Animate(LS,CF.N(-1.46,0.61,0.03)*CF.A(M.R(-70.1),M.R(2.2),M.R(-20))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha,'Lerp')
		Animate(LH,CF.N(-0.53,-1.92,0.72)*CF.A(M.R(-40.8),M.R(-3.5),M.R(-2.3)),Alpha,'Lerp')
		Animate(RJ,CF.N(0,-0.04,0.69)*CF.A(M.R(40.8),M.R(4.1),M.R(-0.5)),Alpha,'Lerp')
		Animate(RH,CF.N(0.46,-1.91,0.8)*CF.A(M.R(-40.8),M.R(-3.5),M.R(-2.3)),Alpha,'Lerp')
		Animate(RS,CF.N(1.43,0.46,0.11)*CF.A(M.R(-70.1),M.R(2.2),M.R(11.3))*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha,'Lerp')
		AoE(Head.Position,25,function(char,hum)
			if(hum.Health>0)then
				local tors = GetTorso(char)
				Kill(char,false)
				if(tors)then
					local mistAtt=BloodParticles:Clone()
					mistAtt.Parent=workspace.Terrain
					mistAtt.CFrame=tors.CFrame*CF.N(0,tors.Size.y/2,0)
					mistAtt:WaitForChild'Mist':Emit(30)
					S.Debris:AddItem(mistAtt,2.5)
					Sound(tors,429400881,.75,2,false,true,true)
				end
				CrushHead(char)
			end
		end)
		swait()
	end
	legAnims=true
	WalkSpeed=8
	Attack=false
	NeutralAnims=true
end

function Teleport(CF)
	for _,v in next, Char:children() do
		if(v:IsA'BasePart' and v.Transparency<1)then
			local mesh = v:FindFirstChildOfClass'SpecialMesh'
			EffectFunc{
				Lifetime=.5,
				CFrame=v.CFrame,
				Color=Highlights.Color,
				Material=Enum.Material.Neon,
				Size=mesh and mesh.Scale or v.Size,
				Mesh=mesh
			}
		end
	end
	Root.CFrame=CF
	
end

--// EVERYTHING ELSE \\--

function Knockback(velocity,decay)
	return function(w,t)
		local BV = IN("BodyVelocity")
		BV.P=20000
		BV.MaxForce=V3.N(M.H,M.H,M.H)
		BV.Velocity=velocity or V3.N(0,25,0)+(Root.CFrame.lookVector*25)
		BV.Parent=t
		S.Debris:AddItem(BV,decay or .5)
	end
end

S.UserInputService.InputBegan:connect(function(io,gpe)
	if(gpe or Attack)then return end
	if(io.KeyCode==Enum.KeyCode.Z)then
		Grenade()
	elseif(io.KeyCode==Enum.KeyCode.X)then
		Stomp()
	elseif(io.KeyCode==Enum.KeyCode.C)then
		SnapNeck()
	elseif(io.KeyCode==Enum.KeyCode.V)then
		Screech()
	elseif(io.KeyCode==Enum.KeyCode.E)then
		Teleport(Mouse.Hit*CF.N(0,2,0))
	end
end)

coroutine.wrap(function()
	while true do
		if(M.RNG(1,25,true)==1)then
			NK.C1=CF.A(M.RRNG(-35,35),M.RRNG(-35,35),M.RRNG(-35,35))
			Highlights.Color = C3.N(1,0,0)
		else
			Highlights.Color = C3.N(.5,.5,1)
		end
		swait(3)
	end
end)()

while true do
	swait()
	Sine=Sine+Change
	NK.C1=NK.C1:lerp(CF.A(M.RRNG(-ShakeFactor,ShakeFactor),M.RRNG(-ShakeFactor,ShakeFactor),M.RRNG(-ShakeFactor,ShakeFactor)),.3)
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Music.SoundId = "rbxassetid://"..MusicData.ID
	Music.Parent = MusicData.Parent
	Music.Pitch = MusicData.Pitch
	Music.Volume = MusicData.Volume
	
	
	local Hit,Pos = CastRay(Root.Position,Root.Position-V3.N(0,1,0),4)
	local Walking = Hum.MoveDirection.magnitude>0
	local State = (not Hit and Root.Velocity.Y<-1 and 'Fall' or not Hit and Root.Velocity.Y>1 and 'Jump' or Walking and "Walk" or "Idle")
	if(not EffectFolder or EffectFolder.Parent~=Char)then
		EffectFolder=Instance.new("Folder")
		EffectFolder.Name='Effects'
		EffectFolder.Parent=Char
	end
	
	--I know this looks like jl's
	--It's more inspired by my old one which is a modified ver of Kyu's, but replacing Root.Velocity with Hum.MoveDirection and removing the clamp
	local FwdDir = (Walking and Hum.MoveDirection*Root.CFrame.lookVector or V3.N())
	local RigDir = (Walking and Hum.MoveDirection*Root.CFrame.rightVector or V3.N())
	local Vec = {
		X=RigDir.X+RigDir.Z,
		Z=FwdDir.X+FwdDir.Z
	};
	
	Hum.WalkSpeed=WalkSpeed
	local Value = Movement/10
	if(legAnims)then
		if(State=='Walk')then
			Change=1
			Animate(LH,CF.N(-.5-.5*M.C(Sine/wsVal)*Vec.X,-1.9+.15*M.S(Sine/wsVal),0+.65*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(-5-45*M.C(Sine/wsVal)+M.S(Sine/wsVal))*Vec.Z,0,M.R(0-30*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.X),.2,'Lerp')
			Animate(RH,CF.N(.5+.5*M.C(Sine/wsVal)*Vec.X,-1.9-.15*M.S(Sine/wsVal),0-.65*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(-5+45*M.C(Sine/wsVal)+M.S(Sine/wsVal))*Vec.Z,0,M.R(0+30*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.X),.2,'Lerp')
		elseif(State=='Idle')then
			Change=1
			if(not NeutralAnims)then
				Animate(LH,CF.N(-0.5,-2,0)*CF.A(M.R(0),M.R(5.6),M.R(0)),.2,'Lerp')
				Animate(RH,CF.N(0.5,-2,0)*CF.A(M.R(0),M.R(-5.6),M.R(0)),.2,'Lerp')
			end
		elseif(State=='Jump' or State=='Fall')then
			Animate(LH,LHC0*CF.A(0,0,M.R(-5)),.1,'Lerp')
			Animate(RH,RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),.1,'Lerp')
		end
	end
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0-5*M.S(Sine/48)),M.R(0),M.R(0+7*M.S(Sine/48))),Alpha,'Lerp')
			Animate(LS,CF.N(-1.5,0.5+.2*M.S(Sine/24),0)*CF.A(M.R(0),M.R(0),M.R(-5+5*M.C(Sine/24))),Alpha,'Lerp')
			Animate(LH,CF.N(-0.52,-2-.2*M.C(Sine/24),-0.01)*CF.A(M.R(0),M.R(9.7),M.R(-5)),Alpha,'Lerp')
			Animate(RJ,CF.N(0,0+.2*M.C(Sine/24),0)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
			Animate(RH,CF.N(0.57,-2-.2*M.C(Sine/24),0)*CF.A(M.R(0),M.R(-12.7),M.R(4.4)),Alpha,'Lerp')
			Animate(RS,CF.N(1.45,0.5+.2*M.S(Sine/24),0)*CF.A(M.R(180),M.R(0),M.R(-20+2*M.C(Sine/24))),Alpha,'Lerp')
		elseif(State == 'Walk')then
			local Alpha = .2
			Animate(RJ,CF.N(0,0,-.2)*CF.A(M.R(-10*Vec.Z),0,M.R(-10*Vec.X))*CF.N(0,-.1-.15*M.C(Sine/(wsVal/2)),0)*CF.A(0,M.R(0-15*M.S(Sine/wsVal)/2),0),Alpha,'Lerp')
			Animate(NK,NKC0,Alpha,'Lerp')
			Animate(RS,RSC0*CF.A(0,0,M.R(3))*CF.N(0,0,0+.25*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0-25*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,0),Alpha,'Lerp')
			Animate(LS,LSC0*CF.A(0,0,M.R(-3))*CF.N(0,0,0-.25*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0+25*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,0),Alpha,'Lerp')
		elseif(State == 'Jump')then
			local Alpha = .3
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			Animate(LS,LSC0*CF.A(M.R(-5),0,M.R(-90)),Alpha,'Lerp')
			Animate(RS,RSC0*CF.A(M.R(-5),0,M.R(90)),Alpha,'Lerp')
			Animate(RJ,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha,'Lerp')
			Animate(NK,NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha,'Lerp')
		elseif(State == 'Fall')then
			local Alpha = .3
			local idk = math.min(math.max(Root.Velocity.Y/50,-M.R(90)),M.R(90))
			Animate(LS,LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),Alpha,'Lerp')
			Animate(RS,RSC0*CF.A(M.R(-5),0,M.R(90)-idk),Alpha,'Lerp')
			Animate(RJ,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha,'Lerp')
			Animate(NK,NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),Alpha,'Lerp')
		end
	end

end
