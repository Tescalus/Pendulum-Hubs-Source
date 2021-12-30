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
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
hed.Massless = true
hed.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
torso.Massless = true
torso.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rarm.Massless = true
rarm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
larm.Massless = true
larm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
lleg.Massless = true
lleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rleg.Massless = true
rleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
root.Massless = true
root.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
warn("Netless Activated!")
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character



bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

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
        wait(1)
        --until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
        end
        wait()
        lt = true
         end
         end)
         
    spawn(
        function()
            while true do
                game:GetService("RunService").Heartbeat:Wait()
                bullet.Velocity = Vector3.new(0,26,0)
         end
    end)

 plr:GetMouse().Button1Down:Connect(function()
attackingwithhrp = true	
end)

 
plr:GetMouse().Button1Up:Connect(function()
attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
repeat wait() until attackingwithhrp == true
repeat
game:GetService("RunService").Heartbeat:Wait()
if plr:GetMouse().Target ~= nil then
bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
end
until attackingwithhrp == false
end)
wait(0.016666666666667)
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {tRGB= function(c3) return c3.r*255,c3.g*255,c3.b*255 end,N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
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
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local BloodPuddles = {}
local Glitching = false
local Target;
local Cam = workspace.CurrentCamera
local Effects = IN("Folder",Char)
Effects.Name = "Effects"
local Kills = math.huge;
local PlrGui = Plr:WaitForChild'PlayerGui'
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
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then print("silly");end;end;end},{__index = Instance})
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
			if(Hum and not Hum:FindFirstChild'CamShaking')then
				local cam = workspace.CurrentCamera
				local oCO = Hum.CameraOffset
				local cs = Instance.new("BoolValue",Hum)
				cs.Name = "CamShaking"
				for i = 1, times do
					local camDistFromOrigin
					if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin.Position).magnitude )/25
					elseif(typeof(origin) == 'Vector3')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin).magnitude )/25
					end
					if(camDistFromOrigin)then
						intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
					end
					if(Hum)then
						Hum.CameraOffset = Vector3.new(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
					end
					swait()
				end
				if(Hum)then
					Hum.CameraOffset = oCO
				end
				cs:destroy()
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

function Nametag(color,tag)
	local r,g,b = C3.tRGB(color)
	local c3 = C3.RGB(r/2,g/2,b/2)
	local name = script:FindFirstChild'Nametag' and script.Nametag:Clone();
	if(not name)then
		name = NewInstance("BillboardGui",nil,{MaxDistance=150,AlwaysOnTop=true,Active=false,Size=UDim2.new(5,0,1,0),SizeOffset=Vector2.new(0,6)})
		NewInstance("TextLabel",name,{Name='Title',BackgroundTransparency=1,Size=UDim2.new(2.5,0,1.5,0),Position=UDim2.new(-.75,0,.9,0),Text=tag,Font=Enum.Font.Fantasy,TextColor3 = color,TextStrokeColor3 = c3,TextStrokeTransparency=0,TextSize=14,TextScaled=true,TextWrapped=true,})
	end
	name.Title.Text = tag
	name.Title.TextColor3 = color
	name.Title.TextStrokeColor3 = c3
	
	
	name.Parent = Char
	name.Adornee = Head
	name.PlayerToHideFrom = Plr
	
	return name
end

local Frame_Speed = 60
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new'Really red'
local MusicID = 486598641
local God = false
local Muted = false
local WalkSpeed = 8
if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local NoClear = {}
local Voodoo = New("Model",Char,"Voodoo",{})
local VTorso = New("Part",Voodoo,"Torso",{Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.60029155, 0.60029155, 0.300145775),CFrame = CFrame.new(16.9809666, 34.1897087, 12.3049202, 0.979014099, -0.138922885, 0.149103805, 0.203679025, 0.691457033, -0.693110347, -0.0068100011, 0.708934069, 0.705241799),LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,})
local VHead = New("Part",Voodoo,"Head",{FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.60029155, 0.300145775, 0.300145775),CFrame = CFrame.new(16.9182777, 34.5018272, 12.6228008, 0.981222212, -0.146387979, 0.125594378, 0.192836046, 0.730337858, -0.655302107, 0.0042019859, 0.667215884, 0.744852483),TopSurface = Enum.SurfaceType.Smooth,})
local SMesh = New("SpecialMesh",VHead,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
local mot = New("Motor",Head,"mot",{Part0 = VHead,Part1 = VTorso,C0 = CFrame.new(0, 0, 0, 0.981222093, 0.192836031, 0.00420200033, -0.146387964, 0.730337918, 0.667215943, 0.125594392, -0.655302107, 0.744852543),C1 = CFrame.new(3.43322754e-05, 0.449882507, -0.00149726868, 0.979014099, 0.203679025, -0.0068100011, -0.138922885, 0.691457033, 0.708934069, 0.149103805, -0.693110347, 0.705241799),})
local VLA = New("Part",Voodoo,"Left Arm",{Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300145775, 0.60029155, 0.300145775),CFrame = CFrame.new(16.5398445, 34.0791664, 12.4485207, 0.842483878, 0.427749634, 0.327492595, -0.371340811, 0.901513815, -0.222213656, -0.390290886, 0.0656000972, 0.918351531),})
local mot = New("Motor",VLA,"mot",{Part0 = VLA,Part1 = VTorso,C0 = CFrame.new(0, 0, 0, 0.842483819, -0.371340901, -0.390290916, 0.427749544, 0.901513815, 0.0656001195, 0.327492595, -0.222213745, 0.91835165),C1 = CFrame.new(-0.455356598, 0.0866508484, 0.112116814, 0.979014099, 0.203679025, -0.0068100011, -0.138922885, 0.691457033, 0.708934069, 0.149103805, -0.693110347, 0.705241799),})
local VLL = New("Part",Voodoo,"Left Leg",{Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300145775, 0.60029155, 0.300145775),CFrame = CFrame.new(16.9056549, 33.7453232, 11.9883003, 0.984823465, -0.0888315961, 0.149104908, 0.137862071, 0.922279239, -0.361102521, -0.10543903, 0.376178026, 0.920528531),BottomSurface = Enum.SurfaceType.Smooth,})
local mot = New("Motor",VLL,"mot",{Part0 = VLL,Part1 = VTorso,C0 = CFrame.new(0, 0, 0, 0.984823227, 0.137862027, -0.105439022, -0.0888316259, 0.922279298, 0.376178056, 0.149104908, -0.361102551, 0.920528591),C1 = CFrame.new(-0.162086487, -0.521272659, 0.0734844208, 0.979014099, 0.203679025, -0.0068100011, -0.138922885, 0.691457033, 0.708934069, 0.149103805, -0.693110347, 0.705241799),})
local VRL = New("Part",Voodoo,"Right Leg",{Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300145775, 0.60029155, 0.300145775),CFrame = CFrame.new(17.2400646, 33.8107071, 11.9597893, 0.959730387, -0.238088086, 0.149103299, 0.276998103, 0.890439391, -0.36109513, -0.0467950329, 0.387855232, 0.920531631),BottomSurface = Enum.SurfaceType.Smooth,})
local mot = New("Motor",VRL,"mot",{Part0 = VRL,Part1 = VTorso,C0 = CFrame.new(0, 0, 0, 0.959730327, 0.276998103, -0.0467950143, -0.238088101, 0.89043951, 0.387855232, 0.149103299, -0.361095101, 0.92053175),C1 = CFrame.new(0.178815842, -0.542732239, 0.0579204559, 0.979014099, 0.203679025, -0.0068100011, -0.138922885, 0.691457033, 0.708934069, 0.149103805, -0.693110347, 0.705241799),})
local VRA = New("Part",Voodoo,"Right Arm",{Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300145775, 0.60029155, 0.300145775),CFrame = CFrame.new(17.508316, 34.2938004, 12.3892946, 0.695788145, -0.716024339, -0.0564649031, 0.695248008, 0.651688695, 0.303202778, -0.180302992, -0.250221908, 0.951251626),})
local mot = New("Motor",VRA,"mot",{Part0 = VRA,Part1 = VTorso,C0 = CFrame.new(0, 0, 0, 0.695788085, 0.695248067, -0.180303007, -0.71602428, 0.651688814, -0.250221968, -0.0564648844, 0.303202778, 0.951251745),C1 = CFrame.new(0.536909103, 0.0585308075, 0.0659856796, 0.979014099, 0.203679025, -0.0068100011, -0.138922885, 0.691457033, 0.708934069, 0.149103805, -0.693110347, 0.705241799),})

local VHum = NewInstance("Humanoid",Voodoo,{PlatformStand=true,Health=0,DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None})

for _,v in next, Voodoo:GetDescendants() do
	NoClear[v] = true
end

local knife = Part(Char,BrickColor.new'Medium stone grey',Enum.Material.SmoothPlastic,V3.N(.3,3,.5),CF.N(),false,false)
Mesh(knife,Enum.MeshType.FileMesh,'rbxassetid://1245215297','rbxassetid://1245215354',V3.N(1.25,1.45,1.25))

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendants() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

Nametag(C3.N(.75,.75,.75),"The Voodoo Master")

local gui = NewInstance("ScreenGui",PlrGui,{})
local txt = NewInstance("TextLabel",gui,{TextStrokeTransparency=.3,TextStrokeColor3=C3.RGB(107,0,0),Font=Enum.Font.Antique,BackgroundTransparency=1,Size=UDim2.new(.48,0,.1,0),Position=UDim2.new(.279,0,.842,0),Text='Target:',TextColor3=C3.RGB(214,0,0),TextScaled=true,TextWrapped=true,})
local ktxt = NewInstance("TextLabel",gui,{TextStrokeTransparency=.3,TextStrokeColor3=C3.RGB(107,0,0),Font=Enum.Font.Antique,BackgroundTransparency=1,Size=UDim2.new(.48,0,.1,0),Position=UDim2.new(.279,0,.742,0),Text='Target:',TextColor3=C3.RGB(214,0,0),TextScaled=true,TextWrapped=true,})

local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end


local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})

local KW = NewInstance('Motor',Char,{Part0=LArm,Part1=knife,C0=CF.N(0,-1,0)*CF.A(M.R(90),0,0),C1=CF.N(0,-1,0)})
local VW = NewInstance('Motor',Char,{Part0=RArm,Part1=VTorso,C0=CF.N(0,-.8,-.5)*CF.A(M.R(-43),0,0)})

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0
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
function NoobySphere(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,MeshId,Axis)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			speeder = speeder - 0.01*Speed*Lifetime
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			if(Axis == 'x')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, 0, 0)
			elseif(Axis == 'y')then
				fxM.Scale = fxM.Scale + Vector3.new(0, Scale*Lifetime, 0)
			elseif(Axis == 'z')then
				fxM.Scale = fxM.Scale + Vector3.new(0, 0, Scale*Lifetime)
			elseif(Axis == 'xyz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'yz')then
				fxM.Scale = fxM.Scale + Vector3.new(0,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'xz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,0,Scale*Lifetime)
			else
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, 0)
			end
			if(fxP.Transparency >= 1)then break end
			swait()
		end
		fxP:destroy()
	end)()
	return fxP
end

function NoobySphere2(Lifetime,Type,Pos,StartSize,Inc,Color,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())

	local Scale = 1
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do

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
end

function NoobyBlock(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,Fade,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Brick),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
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
function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		print("no")
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

function MultiplyCF(cf,mult)
	local a,b,c,d,e,f,g,h,i,j,k,l = cf:components()
	return CF.N(a*mult,b*mult,c*mult,d*mult,e*mult,f*mult,g*mult,h*mult,i*mult,j*mult,k*mult,l*mult)
end

function ResetVoodoo()
	for _,v in next, Voodoo:GetDescendants() do
		if(not NoClear[v])then
			print("hello")
		end
	end
	VRA.Color = C3.RGB(163,162,165)
	VLA.Color = C3.RGB(163,162,165)
	VRL.Color = C3.RGB(163,162,165)
	VLL.Color = C3.RGB(163,162,165)
	VTorso.Color = C3.RGB(163,162,165)
	VHead.Color = C3.RGB(163,162,165)
end

function ChangeTarget(who)
	local h = who:FindFirstChildOfClass'Humanoid'
	ResetVoodoo()
	if(h and h.Health <= 0)then return end
	Target = who
	for _,v in next, who:children() do
		if(v:IsA'Clothing' or v:IsA'CharacterMesh')then
			v:Clone().Parent = Voodoo
		elseif(v:FindFirstChild'face' and v.Name == 'Head')then
			v.face:Clone().Parent = VHead
		elseif(v:IsA'BodyColors')then
			VTorso.BrickColor = v.TorsoColor
			VHead.BrickColor = v.HeadColor
			VLA.BrickColor = v.LeftArmColor
			VRA.BrickColor = v.RightArmColor
			VLL.BrickColor = v.LeftLegColor
			VRL.BrickColor = v.RightLegColor
		elseif(Voodoo:FindFirstChild(v.Name) and Voodoo[v.Name]:IsA'BasePart' and v:IsA'BasePart')then
			Voodoo[v.Name].Color = v.Color
		end
	end
end

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
	return char and (char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart')
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
	local Who = nil
	local MinDam = 0
	local MaxDam = 0
	local MaxHP = data.MaxHP or 1e5; 
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 0;
	
	local DamageEffects = data.DamageFX or {}
	local DamageType = DamageEffects.Type or "Normal"
	local DeathFunction = DamageEffects.DeathFunction
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local DoneDamage = 0
	
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
			if(not player or player.UserId ~= 5719877 and player.UserId ~= 61573184 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					Humanoid.Health = 100;
					print("Countered damage function!")
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)	
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), DoneDamage, 0, DamageColor.Color)
					end
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
					Humanoid.Health = Humanoid.Health - DoneDamage
					
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

function Kill(dude)
	Kills = Kills + 1
	local t = GetTorso(dude)
	local h = dude:FindFirstChildOfClass'Humanoid'
	if(dude == Target)then
		Target = nil
		ResetVoodoo()
	end
	if(h)then Instance.new("BoolValue",h).Name = 'Killed' end
	if(t)then
		Sound(t,429400881,.7,3,false,true,true)
		local pe = NewInstance("ParticleEmitter",t,{Size=NumberSequence.new(.2,5),Enabled=false,Texture='rbxassetid://771221224',Speed=NumberRange.new(15),VelocitySpread=90,Color=ColorSequence.new(C3.N(1,0,0)),Transparency=NumberSequence.new(0,1),ZOffset=.8,Acceleration=V3.N(0,-25,0),EmissionDirection=Enum.NormalId.Top,Lifetime=NumberRange.new(1),Rate=2500,Rotation=NumberRange.new(-100,100),RotSpeed=NumberRange.new(-100,100),})
		pe:Emit(250)
		NoobySphere(1,0,'Multiply',t.CFrame,V3.N(1,1,1),.1,C3.N(.4,0,0),0,nil,'xyz')
		ResetVoodoo()
		coroutine.wrap(function()
			swait(60)
			for i = 0, 1, .025 do
				for _,v in next, dude:children() do
					if(v:IsA'BasePart' and v.Name ~= 'HumanoidRootPart')then
						v.Transparency = i
					end
				end
				swait()
			end
			for _,v in next, dude:children() do
				if(v:IsA'BasePart')then
					v:destroy()
				end
			end
		end)()
	end
	print("yet again no")
end

function Burn(dude)
    print("hi")
end
function AOEDamage(where,range,options)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent])then
			local callTable = {Who=v.Parent}
			hit[v.Parent] = true
			for _,v in next, options do callTable[_] = v end
			DealDamage(callTable)
		end
	end
	return hit
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

function BurnANigga()
	Attack = true
	NeutralAnims = false
	local Target = Target
	for i = 0, 3, 0.1 do
		swait()
		local Alpha = .2
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.499999344, -1.02113664, -2.92062759e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.499997526, -1.0211345, -1.49011612e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.48020887, 0.396520793, -0.0840251297, 0.125036538, -0.110845402, 0.985939026, -0.0894355327, 0.988434374, 0.122468963, -0.988111138, -0.103490412, 0.113677412),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.49998105, 0.499911726, 1.90734863e-06, 0.902840197, -0.0815670565, 0.422160357, 0.389566094, -0.260352403, -0.883433402, 0.18197079, 0.962058306, -0.20328176),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(2.08616257e-06, 1.50000572, 1.21630728e-06, 0.102758601, -0.164331287, 0.981036484, -0.0197002441, 0.985729218, 0.167181715, -0.994509459, -0.0365053862, 0.098055318),Alpha)
	end
	knife.Transparency = 1
	local Match = New("Model",Char,"Match",{})
	local Handle = New("Part",Match,"Handle",{BrickColor = BrickColor.new("Brick yellow"),Material = Enum.Material.Wood,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.2069068, 0.200000003),CFrame = CFrame.new(22.6316547, 30.6187859, 20.0125217, 0.836512625, -0.224143878, -0.499997824, 0.258817941, 0.965925753, 2.13843787e-08, 0.482960761, -0.129409477, 0.866021514),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.843137, 0.772549, 0.603922),})

	local FXHead = New("Part",Match,"FXHead",{BrickColor = BrickColor.new("Dusty Rose"),Material = Enum.Material.Concrete,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.144828811, 0.225289285, 0.144828811),CFrame = CFrame.new(22.4783554, 31.2793884, 19.9240131, 0.836508334, -0.224146977, -0.499995291, 0.258818597, 0.965925217, -3.05112985e-06, 0.482958704, -0.129407614, 0.866017997),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.639216, 0.294118, 0.294118),})
	local Mesh = New("SpecialMesh",FXHead,"Mesh",{MeshType = Enum.MeshType.Sphere,})
	local mot = New("Motor",FXHead,"mot",{Part0 = FXHead,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.836515725, 0.258820862, 0.482963055, -0.224147007, 0.965925395, -0.129407734, -0.499999642, -3.10509813e-06, 0.866025686),C1 = CFrame.new(-7.62939453e-06, 0.683908463, -9.53674316e-07, 0.836512625, 0.258817941, 0.482960761, -0.224143878, 0.965925753, -0.129409477, -0.499997824, 2.13843787e-08, 0.866021514),})
	local MHead = New("Part",Match,"MHead",{BrickColor = BrickColor.new("Dusty Rose"),Material = Enum.Material.Concrete,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.0804604515, 0.0482763015, 0.0804604515),CFrame = CFrame.new(22.4945812, 31.209444, 19.9333839, 0.836508274, -0.224147394, -0.499995291, 0.258818835, 0.965925217, -3.39144185e-06, 0.482958704, -0.12940748, 0.866017878),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.639216, 0.294118, 0.294118),})
	local mot = New("Motor",MHead,"mot",{Part0 = MHead,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.836515665, 0.2588211, 0.482963055, -0.224147394, 0.965925276, -0.12940757, -0.499999642, -3.44821296e-06, 0.866025627),C1 = CFrame.new(-1.14440918e-05, 0.611497879, 1.90734863e-06, 0.836512625, 0.258817941, 0.482960761, -0.224143878, 0.965925753, -0.129409477, -0.499997824, 2.13843787e-08, 0.866021514),})	local Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(0.400000006, 1, 0.400000006),})
	
	local fire = NewInstance("ParticleEmitter",FXHead,{
		Color = ColorSequence.new(C3.RGB(255,237,210),C3.RGB(255,170,0)),
		LightEmission=1,
		LightInfluence=0,
		Size=NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.3,.25),NumberSequenceKeypoint.new(.597,.312),NumberSequenceKeypoint.new(1,0)},	
		Texture='rbxassetid://242461088',
		Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.199,.825),NumberSequenceKeypoint.new(.6,1),NumberSequenceKeypoint.new(1,1)},
		ZOffset=.2,
		Acceleration=V3.N(0,.75,0),
		LockedToPart=true,
		EmissionDirection=Enum.NormalId.Top,
		Lifetime=NumberRange.new(.75),
		Rate=50,
		Speed=NumberRange.new(0)
	})
	local HW = NewInstance('Weld',Char,{Part0=LArm,Part1=Handle,C0=CF.N(0,-1,0)*CF.A(M.R(-90),0,0)})
	for i = 0, 7, 0.1 do
		swait()
		local Alpha = .1
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21805193e-08, -0.0789600536, 1.08964741e-06, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.499998987, -1.02113318, -1.04308128e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.499997348, -1.02113235, -5.96046448e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.28626728, 0.457301795, 0.0561587811, 0.779788852, 0.617777467, -0.101375088, -0.0164614469, -0.141639799, -0.98978132, -0.625823021, 0.773489416, -0.100280359),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.49997759, 0.499910235, 1.22189522e-06, 0.902840197, -0.0815670565, 0.422160357, 0.389566094, -0.260352403, -0.883433402, 0.18197079, 0.962058306, -0.20328176),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(3.81376594e-06, 1.5000037, 3.7914142e-06, 0.561061919, 0.0163413882, 0.827610493, -0.0240478665, 0.999704778, -0.00343565643, -0.827422142, -0.0179739445, 0.561289608),Alpha)
	end
	for i = 0, 1, 0.1 do
		swait()
		local Alpha = .15
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.499998987, -1.02113295, -1.96695328e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.499997348, -1.02113235, -5.96046448e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-0.56364888, 0.845062912, -0.882486701, 0.556871235, -0.829850614, 0.0351991951, -0.0293087214, -0.0619851053, -0.99764663, 0.830079675, 0.554528773, -0.0588402748),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.49997818, 0.499908328, 1.7285347e-06, 0.902840197, -0.0815670565, 0.422160357, 0.389566094, -0.260352403, -0.883433402, 0.18197079, 0.962058306, -0.20328176),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(-2.10106373e-06, 1.50000787, -1.17905438e-06, 0.744260013, 0.016378643, -0.667686522, -0.000203326344, 0.999704778, 0.0242953151, 0.667887568, -0.0179455429, 0.74404341),Alpha)
	end
	Burn(Target)
	for i = 0, 6, 0.1 do
		swait()
		local Alpha = .15
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.499998987, -1.02113318, -1.04308128e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.499997348, -1.02113235, -5.96046448e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-0.431874216, 0.854955196, -0.97056669, 0.117097467, -0.829880476, -0.545511901, -0.991014123, -0.0618889406, -0.118577883, 0.064643696, 0.554494739, -0.829670548),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.55841696, 0.530878901, -0.013287276, 0.846236467, 0.325094491, 0.422130316, 0.464434087, -0.0617963374, -0.883448958, -0.261117637, 0.943658531, -0.203279719),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(-3.43844295e-06, 1.50000417, 3.09199095e-07, 0.744260013, 0.016378643, -0.667686522, -0.000203326344, 0.999704778, 0.0242953151, 0.667887568, -0.0179455429, 0.74404341),Alpha)
	end
	for i = 0, 3, 0.1 do
		swait()
		local Alpha = .1
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.499999344, -1.02113664, -2.92062759e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.499997526, -1.0211345, -1.49011612e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.48020887, 0.396520793, -0.0840251297, 0.125036538, -0.110845402, 0.985939026, -0.0894355327, 0.988434374, 0.122468963, -0.988111138, -0.103490412, 0.113677412),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.49998105, 0.499911726, 1.90734863e-06, 0.902840197, -0.0815670565, 0.422160357, 0.389566094, -0.260352403, -0.883433402, 0.18197079, 0.962058306, -0.20328176),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(2.08616257e-06, 1.50000572, 1.21630728e-06, 0.102758601, -0.164331287, 0.981036484, -0.0197002441, 0.985729218, 0.167181715, -0.994509459, -0.0365053862, 0.098055318),Alpha)
	end
	knife.Transparency = 0
	Attack = false
	NeutralAnims = true
	
end

function KillVoodoo()
	Attack = true
	NeutralAnims = false
	WalkSpeed = 0
	local Target = Target
	for i = 0, 1.9, 0.1 do
		swait()
		local Alpha = .1
		RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
		LH.C0 = LH.C0:lerp(CFrame.new(-0.500003159, -1.02113652, -1.87754631e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
		RH.C0 = RH.C0:lerp(CFrame.new(0.500005007, -1.02113163, -4.17232513e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
		LS.C0 = LS.C0:lerp(CFrame.new(-1.30809402, 0.707052946, -0.212298125, 0.324948817, 0.857990444, 0.397815555, 0.638829648, -0.509305477, 0.576632023, 0.697354972, 0.0667604953, -0.71360743),Alpha)
		RS.C0 = RS.C0:lerp(CFrame.new(1.17349327, 0.596340418, -0.226585925, 0.880390525, 0.216107711, 0.422145128, 0.452990264, -0.119689628, -0.883444428, -0.140392065, 0.969003797, -0.203268766),Alpha)
		NK.C0 = NK.C0:lerp(CFrame.new(4.42750752e-06, 1.50000238, 4.23006713e-06, 0.827343702, 0.0163316131, -0.561455429, -0.00340057909, 0.99970448, 0.024066925, 0.56168288, -0.0180016756, 0.827154636),Alpha)	
	end
	local gay = Plrs:GetPlayerFromCharacter(Target)
	if(not gay or Plr.UserId == 5719877 or gay.UserId ~= 5719877 and gay.UserId ~= 19909695 and gay.UserId ~= 33104243)then
		Kill(Target)
		for i = 0, 1.2, 0.1 do
			swait()
			local Alpha = .2
			RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
			LH.C0 = LH.C0:lerp(CFrame.new(-0.500003159, -1.02113652, -1.87754631e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
			RH.C0 = RH.C0:lerp(CFrame.new(0.500005007, -1.02113163, -4.17232513e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
			LS.C0 = LS.C0:lerp(CFrame.new(-0.765871823, 0.875704765, -0.619495153, 0.324934751, -0.587293684, 0.74128288, 0.638849139, -0.441647798, -0.629935622, 0.697343588, 0.678255379, 0.231685296),Alpha)
			RS.C0 = RS.C0:lerp(CFrame.new(1.17349327, 0.596340418, -0.226585925, 0.880390525, 0.216107711, 0.422145128, 0.452990264, -0.119689628, -0.883444428, -0.140392065, 0.969003797, -0.203268766),Alpha)
			NK.C0 = NK.C0:lerp(CFrame.new(4.42750752e-06, 1.50000238, 4.23006713e-06, 0.827343702, 0.0163316131, -0.561455429, -0.00340057909, 0.99970448, 0.024066925, 0.56168288, -0.0180016756, 0.827154636),Alpha)
		end
		for i = 0, .9, 0.1 do
			swait()
			local Alpha = .2
			RJ.C0 = RJ.C0:lerp(CFrame.new(-2.16149999e-07, -0.0789605081, -7.11530447e-07, 0.999989629, 2.49221875e-06, 1.27442513e-06, 2.73494675e-06, 0.965795875, 0.259301215, 5.88124067e-07, -0.259299994, 0.965785265),Alpha)
			LH.C0 = LH.C0:lerp(CFrame.new(-0.500001371, -1.02113628, -5.54323196e-06, 0.996183932, 0.0871576071, 5.81604752e-07, -0.0841722414, 0.96212101, -0.259300053, -0.0225983392, 0.258314729, 0.965785265),Alpha)
			RH.C0 = RH.C0:lerp(CFrame.new(0.49999243, -1.02113175, -5.66244125e-06, 0.996184528, -0.0871521831, 5.94584947e-07, 0.0841772109, 0.962120533, -0.259300053, 0.0226008799, 0.25831449, 0.965785265),Alpha)
			LS.C0 = LS.C0:lerp(CFrame.new(-1.34198368, 0.383808315, 0.099660337, 0.324967146, 0.259882778, 0.90930742, 0.638826787, -0.76930356, -0.00842937827, 0.697345734, 0.583627462, -0.416016668),Alpha)
			RS.C0 = RS.C0:lerp(CFrame.new(1.1734798, 0.596339762, -0.226573557, 0.880385041, 0.216106832, 0.422140598, 0.452991217, -0.1196879, -0.883443415, -0.140389711, 0.968996823, -0.203268081),Alpha)
			NK.C0 = NK.C0:lerp(CFrame.new(4.42750752e-06, 1.50000238, 4.23006713e-06, 0.827343702, 0.0163316131, -0.561455429, -0.00340057909, 0.99970448, 0.024066925, 0.56168288, -0.0180016756, 0.827154636),Alpha)	
		end
	else
		for i = 0, 1.2, 0.1 do
			swait()
			local Alpha = .2
			RJ.C0 = RJ.C0:lerp(CFrame.new(-7.21813294e-08, -0.0789605454, -7.5250864e-07, 0.999996543, 8.32955209e-07, 4.22970459e-07, 9.11652307e-07, 0.965796173, 0.259301841, 1.96043004e-07, -0.259301394, 0.965792596),Alpha)
			LH.C0 = LH.C0:lerp(CFrame.new(-0.500003159, -1.02113652, -1.87754631e-06, 0.996191025, 0.0871564001, 1.89523718e-07, -0.0841739103, 0.962121129, -0.259301454, -0.0225992389, 0.258315265, 0.965792596),Alpha)
			RH.C0 = RH.C0:lerp(CFrame.new(0.500005007, -1.02113163, -4.17232513e-07, 0.996191263, -0.087154597, 2.02503998e-07, 0.0841755792, 0.96212101, -0.259301454, 0.0226000845, 0.258315176, 0.965792596),Alpha)
			LS.C0 = LS.C0:lerp(CFrame.new(-0.765871823, 0.875704765, -0.619495153, 0.324934751, -0.587293684, 0.74128288, 0.638849139, -0.441647798, -0.629935622, 0.697343588, 0.678255379, 0.231685296),Alpha)
			RS.C0 = RS.C0:lerp(CFrame.new(1.34997082, 0.691436887, -0.00414918363, 0.308846682, -0.493054748, -0.813330948, -0.13198103, 0.824647903, -0.550033391, 0.94190836, 0.277220637, 0.18961516),Alpha)
			NK.C0 = NK.C0:lerp(CFrame.new(4.42750752e-06, 1.50000238, 4.23006713e-06, 0.827343702, 0.0163316131, -0.561455429, -0.00340057909, 0.99970448, 0.024066925, 0.56168288, -0.0180016756, 0.827154636),Alpha)
		end
		for i = 0, .9, 0.1 do
			swait()
			local Alpha = .2
			RJ.C0 = RJ.C0:lerp(CFrame.new(-2.16149999e-07, -0.0789605081, -7.11530447e-07, 0.999989629, 2.49221875e-06, 1.27442513e-06, 2.73494675e-06, 0.965795875, 0.259301215, 5.88124067e-07, -0.259299994, 0.965785265),Alpha)
			LH.C0 = LH.C0:lerp(CFrame.new(-0.500001371, -1.02113628, -5.54323196e-06, 0.996183932, 0.0871576071, 5.81604752e-07, -0.0841722414, 0.96212101, -0.259300053, -0.0225983392, 0.258314729, 0.965785265),Alpha)
			RH.C0 = RH.C0:lerp(CFrame.new(0.49999243, -1.02113175, -5.66244125e-06, 0.996184528, -0.0871521831, 5.94584947e-07, 0.0841772109, 0.962120533, -0.259300053, 0.0226008799, 0.25831449, 0.965785265),Alpha)
			LS.C0 = LS.C0:lerp(CFrame.new(-1.34198368, 0.383808315, 0.099660337, 0.324967146, 0.259882778, 0.90930742, 0.638826787, -0.76930356, -0.00842937827, 0.697345734, 0.583627462, -0.416016668),Alpha)
			RS.C0 = RS.C0:lerp(CFrame.new(1.34997082, 0.691436887, -0.00414918363, 0.308846682, -0.493054748, -0.813330948, -0.13198103, 0.824647903, -0.550033391, 0.94190836, 0.277220637, 0.18961516),Alpha)
			NK.C0 = NK.C0:lerp(CFrame.new(4.42750752e-06, 1.50000238, 4.23006713e-06, 0.827343702, 0.0163316131, -0.561455429, -0.00340057909, 0.99970448, 0.024066925, 0.56168288, -0.0180016756, 0.827154636),Alpha)	
		end
	end
	WalkSpeed = 8
	Attack = false
	NeutralAnims = true
end

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'q')then
		local targ = (Mouse.Target and Mouse.Target.Parent)
		if(targ and GetTorso(targ) and targ:FindFirstChildOfClass'Humanoid')then
			ChangeTarget(targ)
		end
	elseif(k == 'z' and Target)then
		BurnANigga()
	end
end)

Mouse.Button1Down:connect(function()
	if(Attack)then return end
	if(Target)then
		KillVoodoo()
	else
	end
end)

coroutine.wrap(function()
	while true do
		if(M.RNG(1,350) == 1 and not Glitching)then
			for i = 1, M.RNG(100,300)/100 do
				local TP = Music.TimePosition
				Glitching = true
				swait(M.RNG(15,30))
				Glitching = false
				Music.TimePosition = TP
			end
		end
		swait()
	end	
end)()

local Texts = {"INSANITY","BURN","DIE","CRY","VOODOO","NO STRINGS ATTACHED", "PENDULUM HUB IS THE BEST FUCKING HUB"}
coroutine.wrap(function()
	while true do
		if(M.RNG(1,65) >= (Glitching and 5 or 40))then
			local frame = NewInstance("Frame",gui,{Size=UDim2.new(.26,0,.07,0),BackgroundTransparency=1,Position=UDim2.new(M.RNG(0,100)/100,0,M.RNG(0,100)/100,0)})
			local fat = Texts[M.RNG(1,#Texts)]
			local toxt = "";
			for i = 1, #fat do
				if(M.RNG(1,2) == 1)then
					toxt = toxt..fat:sub(i,i):lower()
				else
					toxt = toxt..fat:sub(i,i)
				end
			end
			local rot = M.RNG(-15,15)
			local txt = NewInstance('TextLabel',frame,{Rotation=rot,TextTransparency=1,Text=toxt,TextColor3=C3.N(M.RNG(50,100)/100,0,0),FontSize=M.RNG(8,14),Font=Enum.Font.Antique})	
			coroutine.wrap(function()
				for i = 1, 30 do
					swait()
					txt.Rotation = rot+M.RNG(-15,15)
					txt.TextTransparency = txt.TextTransparency - 1/30
				end
				for i = 1, 30 do
					swait()
					txt.Rotation = rot+M.RNG(-15,15)
					txt.TextTransparency = txt.TextTransparency + 1/30
				end
				txt:destroy()
			end)()
		end
		swait()
	end
end)()

local FT,RA,LA,RL,LL = Instance.new("BlockMesh"),Instance.new("BlockMesh"),Instance.new("BlockMesh"),Instance.new("BlockMesh"),Instance.new("BlockMesh")

local Meshes = {FT,RA,LA,RL,LL}

for _,v in next, Char:GetDescendants() do
	if(v:IsA'DataModelMesh')then
		table.insert(Meshes,v)
	end
end

while true do
	swait()
	
	if(Target and (not Target.Parent or not Target:FindFirstChildOfClass'Humanoid' or Target:FindFirstChildOfClass'Humanoid'.Health <= 0))then
		Target = nil
		ResetVoodoo()
	end
	txt.Rotation = M.RNG(-150,150)/150
	txt.Text = 'Target: '..(Target and Target.Name or '')
	
	ktxt.Rotation = M.RNG(-150,150)/150
	ktxt.Text = 'Kills: '..Kills
	
	Hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	
	VHum.PlatformStand = true
	VHum:ChangeState(Enum.HumanoidStateType.Physics)
	VHum:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
	
	Sine = Sine + Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(Char,MusicID,1,10,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Music.SoundId = "rbxassetid://"..MusicID
	Music.Parent = Torso
	Music.Pitch = (Glitching and M.RNG(55,175)/100 or 1)
	Music.Volume = 3
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
	
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and (Hum.WalkSpeed < 24 and "Walk" or "Run") or hitfloor and "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end																																																																																																				
	if(State == 'Run')then
		local wsVal = 16 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
		Change = 1
		RH.C1 = RH.C1:lerp(CF.N(0,1-.5*M.C(Sine/wsVal)/2,.5*M.C(Sine/wsVal)/2)*CF.A(M.R(25-15*M.C(Sine/wsVal))+-M.S(Sine/wsVal)/2,0,0),Alpha)
		LH.C1 = LH.C1:lerp(CF.N(0,1+.5*M.C(Sine/wsVal)/2,-.5*M.C(Sine/wsVal)/2)*CF.A(M.R(25+15*M.C(Sine/wsVal))+M.S(Sine/wsVal)/2,0,0),Alpha)
	elseif(State == 'Walk')then
		local wsVal = 7 / (Hum.WalkSpeed/16)
		local Alpha = math.min(.15 * (Hum.WalkSpeed/16),1)
		Change = 1
		RH.C1 = RH.C1:lerp(CF.N(0,1-.5*M.C(Sine/wsVal)/2,.5*M.C(Sine/wsVal)/2)*CF.A(M.R(15-5*M.C(Sine/wsVal))+-M.S(Sine/wsVal)/2,0,0),Alpha)
		LH.C1 = LH.C1:lerp(CF.N(0,1+.5*M.C(Sine/wsVal)/2,-.5*M.C(Sine/wsVal)/2)*CF.A(M.R(15+5*M.C(Sine/wsVal))+M.S(Sine/wsVal)/2,0,0),Alpha)
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.2)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.2)
	end
	Hum.WalkSpeed = WalkSpeed
	if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
	if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
	
	if(Glitching)then
		Hum.CameraOffset = V3.N(M.RNG(-25,25)/100,M.RNG(-25,25)/100,M.RNG(-25,25)/100)
	elseif(not Hum:FindFirstChild'CamShaking')then
		Hum.CameraOffset = V3.N(0,0,0)
	end
	
	if(Glitching)then
		RA.Parent = RArm
		LA.Parent = LArm
		FT.Parent = Torso
		RL.Parent = RLeg
		LL.Parent = LLeg
		for _,v in next, Meshes do
			v.Offset = V3.N(M.RNG(-25,25)/100,M.RNG(-25,25)/100,M.RNG(-25,25)/100)
		end	

		RLeg.Material = Enum.Material.Neon
		LLeg.Material = Enum.Material.Neon
		RArm.Material = Enum.Material.Neon
		LArm.Material = Enum.Material.Neon
		Torso.Material = Enum.Material.Neon	
		Head.Material = Enum.Material.Neon	
	else
		for _,v in next, Meshes do
			v.Offset = V3.N(0,0,0)
		end
		RA.Parent = nil
		LA.Parent = nil
		FT.Parent = nil
		RL.Parent = nil
		LL.Parent = nil
		RLeg.Material = Enum.Material.SmoothPlastic
		LLeg.Material = Enum.Material.SmoothPlastic
		RArm.Material = Enum.Material.SmoothPlastic
		LArm.Material = Enum.Material.SmoothPlastic
		Torso.Material = Enum.Material.SmoothPlastic
		Head.Material = Enum.Material.SmoothPlastic
	end
	
	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .1
			Change = 1
			NK.C0 = NK.C0:lerp(NKC0*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),.3)
			if(M.RNG(1,45) == 45)then
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,0)*CF.A(M.RRNG(15,65),M.RRNG(-35,35),0),1)
			end
			if(not Glitching)then
				RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0,-.1+.05*M.C(Sine/24),0)*CF.A(M.R(-15),0,0),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.A(M.R(15),0,M.R(-5-5*M.C(Sine/24))),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(105-5*M.C(Sine/24)),M.R(25),M.R(5+5*M.C(Sine/16))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0-.05*M.C(Sine/24),0)*CF.A(M.R(15),0,M.R(-5)),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0-.05*M.C(Sine/24),0)*CF.A(M.R(15),0,M.R(5)),Alpha)
			else
				RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0,-.2+.1*M.C(Sine/24),0)*CF.A(M.R(-45),0,0),1)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,.1*M.C(Sine/24),0)*CF.A(M.R(180),0,M.R(25)+M.RRNG(-3,3)),1)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(0,.1*M.C(Sine/24),0)*CF.A(M.R(180),0,M.R(-25)+M.RRNG(-3,3)),1)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,-.1*M.C(Sine/24),0)*CF.A(M.R(45),0,M.R(-5)),1)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,-.1*M.C(Sine/24),0)*CF.A(M.R(45),0,M.R(5)),1)
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,-.2)*CF.A(M.R(-25),0,0)*CF.A(M.RRNG(-5,5),M.RRNG(-3,3),0),.1)
			end
			
		elseif(State == 'Run')then
			local wsVal = 7 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.2 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(-15+2.5*M.C(Sine/(wsVal/2))),M.R(8*M.C(Sine/wsVal)),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = RS.C0:lerp(RSC0*CF.N(0,0,0+.3*M.S(Sine/wsVal))*CF.A(M.R(0-45*M.S(Sine/wsVal)),0,M.R(5)),Alpha)
			LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
			RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0)*CF.A(0,-M.R(4*M.C(Sine/wsVal)),0),Alpha)
		elseif(State == 'Walk')then
			local wsVal = 7 / (Hum.WalkSpeed/16)
			local Alpha = math.min(.15 * (Hum.WalkSpeed/16),1)			
			NK.C0 = NK.C0:lerp(NKC0*CF.A(0,-Head.RotVelocity.y/75,0)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),.3)
			if(M.RNG(1,45) == 45)then
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,0)*CF.A(M.RRNG(15,65),M.RRNG(-35,35),0),1)
			end
			if(not Glitching)then
				RJ.C0 = RJ.C0:lerp(CF.N(0,-.075+.1*M.C(Sine/(wsVal/2)+-M.S(Sine/(wsVal/2))/7),0)*CF.A(M.R(-15-2.5*M.C(Sine/(wsVal/2))),M.R(4*M.C(Sine/wsVal)),Root.RotVelocity.y/75),Alpha)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,-.27*M.C(Sine/wsVal))*CF.A(M.R(28*M.C(Sine/wsVal)),0,M.R(-5-7*M.S(Sine/wsVal))+LArm.RotVelocity.y/35),Alpha)
				RS.C0 = RS.C0:lerp(RSC0*CF.A(M.R(105-5*M.C(Sine/24)),M.R(25),M.R(5+5*M.C(Sine/16))),Alpha)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(15+2.5*M.C(Sine/(wsVal/2))),M.R(-4*M.C(Sine/wsVal)),0),Alpha)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,0-.1*M.C(Sine/(wsVal/2)),0)*CF.A(M.R(15+2.5*M.C(Sine/(wsVal/2))),M.R(-4*M.C(Sine/wsVal)),0),Alpha)
			else
				RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0,-.2+.1*M.C(Sine/24),0)*CF.A(M.R(-45),0,0),1)
				LS.C0 = LS.C0:lerp(LSC0*CF.N(0,.1*M.C(Sine/24),0)*CF.A(M.R(180),0,M.R(25)+M.RRNG(-3,3)),1)
				RS.C0 = RS.C0:lerp(RSC0*CF.N(0,.1*M.C(Sine/24),0)*CF.A(M.R(180),0,M.R(-25)+M.RRNG(-3,3)),1)
				LH.C0 = LH.C0:lerp(LHC0*CF.N(0,-.1*M.C(Sine/24),0)*CF.A(M.R(45),0,M.R(-5)),1)
				RH.C0 = RH.C0:lerp(RHC0*CF.N(0,-.1*M.C(Sine/24),0)*CF.A(M.R(45),0,M.R(5)),1)
				NK.C0 = NK.C0:lerp(NKC0*CF.N(0,0,-.2)*CF.A(M.R(-25),0,0)*CF.A(M.RRNG(-5,5),M.RRNG(-3,3),0),.1)
			end
			
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
		elseif(State == 'Sit')then
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