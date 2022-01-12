
warn([[Incension Reborn loaded

Created by 
]])
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
local script = game:GetObjects("rbxassetid://5439908063")[1]
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
---- Sources and functions might be taken from others
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
plr = Player
char = game.Workspace.non
Character = game.Workspace.non
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
Camera = cam
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
cam.CameraType = "Custom"
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new

local OVERPOWER = false

function shakes(power,length)
	return nil
end

function localshakes(power,length)
return nil
end

local Booleans = {
  CamFollow = true,
  GyroUse = true
}

function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end

local Directer = Inst("BodyGyro", root)
Directer.MaxTorque = Vec3(0, 0, 0)
Directer.P = 600000
local CPart = Inst("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1

local rainbowmode = false
local chaosmode = false

local kan = Instance.new("Sound",tors)
kan.Volume = 0.5
kan.TimePosition = 0
kan.PlaybackSpeed = 1.01
kan.Pitch = 1.01
kan.SoundId = "rbxassetid://1882656833" -- 2485070323/1882656833, Original: 2026469207
kan.Name = "ye"
kan.Looped = true
kan:Play()

local currentThemePlaying = kan.SoundId
local currentPitch = kan.Pitch
local currentVol = kan.Volume
function newTheme(ID,timepos,pitch,vol)
local kanz = kan
--kanz:Stop()
kanz.Volume = vol
--kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
--kanz:Play()
--coroutine.resume(coroutine.create(function()
--wait(0.05)
--end))
end


function newThemeCust(ID,timepos,pitch,vol)
local kanz = kan
kanz:Stop()
kanz.Volume = vol
kanz.TimePosition = timepos
kanz.PlaybackSpeed = pitch
kanz.Pitch = pitch
kanz.SoundId = ID
kanz.Name = "wrecked"
kanz.Looped = true
currentThemePlaying = kanz.SoundId
currentVol = kanz.Volume
currentPitch = kanz.Pitch
kanz:Play()
coroutine.resume(coroutine.create(function()
wait(0.05)
end))
end

local mutedtog = false

function CameraEnshaking(Length,Intensity)
coroutine.resume(coroutine.create(function()
      local intensity = 1*Intensity
      local rotM = 0.01*Intensity
for i = 0, Length, 0.1 do
swait()
intensity = intensity - 0.05*Intensity/Length
rotM = rotM - 0.0005*Intensity/Length
      hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
      cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
end
Humanoid.CameraOffset = Vec3(0, 0, 0)
end))
end
CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Noob)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
CameraShake(Times, Power, Noob)
end
end
end
end
end
end

local toggleTag = true
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.Font = "Antique"
modet.TextStrokeColor3 = Color3.new(1,0,0)
modet.TextColor3 = Color3.new(0.25,0,0)
modet.Text = ""


function chatfunc(text,color,typet,font,timeex)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
modet.TextTransparency = modet.TextTransparency  + 1
modet.TextStrokeTransparency = modet.TextStrokeTransparency + 1
for i = 0, 74*timeex do
swait()
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
modet.TextTransparency = modet.TextTransparency - .02
modet.TextStrokeTransparency = modet.TextStrokeTransparency - .02
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
if toggleTag == false then
modet.TextTransparency = 1
modet.TextStrokeTransparency = 1
end
naeeym2:Destroy()
end)
chat()
end

function bosschatfunc(text,color,watval)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Dialog")~= nil then
v.PlayerGui:FindFirstChild("Dialog"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
CFuncs["EchoSound"].Create("rbxassetid://525200869", scrg, 0.5, 1,0,10,0.1,0.25,1)
scrg.Name = "Dialog"
local txtlb = Instance.new("TextLabel",scrg)
txtlb.Text = ""
txtlb.Font = "Bodoni"
txtlb.TextColor3 = Color3.new(0,0,0)
txtlb.TextStrokeTransparency = 0
txtlb.BackgroundTransparency = 0.75
txtlb.BackgroundColor3 = Color3.new(0,0,0)
txtlb.TextStrokeColor3 = color
txtlb.TextScaled = true
txtlb.Size = UDim2.new(1,0,0.25,0)
txtlb.TextXAlignment = "Left"
txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
local txtlb2 = Instance.new("TextLabel",scrg)
txtlb2.Text = "???:"
txtlb2.Font = "Arcade"
txtlb2.TextColor3 = Color3.new(0,0,0)
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color
txtlb2.TextSize = 40
txtlb2.Size = UDim2.new(1,0,0.25,0)
txtlb2.TextXAlignment = "Left"
txtlb2.Position = UDim2.new(0,0,1,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb.Rotation = math.random(-1,1)
txtlb2.Rotation = math.random(-1,1)
txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb.TextStrokeColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = 1.75
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 9 do
		swait()
		fval = fval + 0.05
		flol = flol - 0.1
		flil = flil - 0.1
		txtlb.Text = ""
		txtlb.Position = UDim2.new(0,0,flol,0)
		txtlb2.Position = UDim2.new(0,0,flil,0)
	end
	txtlb.Text = text
wait(watval)
local valinc = 0
for i = 0, 99 do
swait()
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb.Rotation = txtlb.Rotation + valinc*20
txtlb2.Rotation = txtlb2.Rotation - valinc*50
txtlb.Position = UDim2.new(0,0,flol,0)
txtlb2.Position = UDim2.new(0,0,flil,0)
txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
txtlb.TextTransparency = txtlb.TextTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
end
scrg:Destroy()
end))
end))
end
end


local Create = LoadLibrary("RbxUtility").Create

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
                                        Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                                        TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
		["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
                    Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
                    TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
                    Name = "Echo",
					Feedback = fedb,
                    DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local halocolor = BrickColor.new("Pastel light blue")
local halocolor2 = BrickColor.new("Cool yellow")
local starcolor = BrickColor.new("Bright yellow")
local lunacolor = BrickColor.new("Navy blue")
local lunacolor2 = BrickColor.new("Bright blue")
local wepcolor = BrickColor.new("Really black")
local maincolor = BrickColor.new("Really black")
local m = Instance.new("Model",char)
local m2 = Instance.new("Model",char)
local m3 = Instance.new("Model",char)
local mw1 = Instance.new("Model",char)
local mw2 = Instance.new("Model",char)


gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end
--------------------------- GUI STUFF
--[[local basgui = it("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local fullscreenz = it("Frame")
fullscreenz.Parent = basgui
fullscreenz.BackgroundColor3 = Color3.new(255, 255, 255)
fullscreenz.BackgroundTransparency = 1
fullscreenz.BorderColor3 = Color3.new(17, 17, 17)
fullscreenz.Size = UDim2.new(1, 0, 1, 0)
fullscreenz.Position = UDim2.new(0, 0, 0, 0)
local imgl2 = Instance.new("ImageLabel",fullscreenz)
imgl2.BackgroundTransparency = 1
imgl2.BorderSizePixel = 0
imgl2.ImageTransparency = 0.5
imgl2.ImageColor3 = Color3.new(1,0,0)
imgl2.Position = UDim2.new(0.75,-200,0.55,-200)
imgl2.Size = UDim2.new(0,1000,0,1000)
imgl2.Image = "rbxassetid://2325939897"
local techc = imgl2:Clone()
techc.Parent = fullscreenz
techc.ImageTransparency = 0
techc.Size = UDim2.new(0,900,0,900)
techc.Position = UDim2.new(0.75,-150,0.55,-150)
techc.ImageColor3 = Color3.new(1,0,0)
techc.Image = "rbxassetid://2273224484"
local circl = imgl2:Clone()
circl.Parent = fullscreenz
circl.ImageTransparency = 0
circl.Size = UDim2.new(0,550,0,550)
circl.Position = UDim2.new(0.75,25,0.55,25)
circl.ImageColor3 = Color3.new(0,0,0)
circl.Image = "rbxassetid://2312119891"
local circl2 = imgl2:Clone()
circl2.Parent = fullscreenz
circl2.ImageTransparency = 0
circl2.Size = UDim2.new(0,700,0,700)
circl2.Position = UDim2.new(0.75,-50,0.55,-50)
circl2.ImageColor3 = Color3.new(1,0,0)
circl2.Image = "rbxassetid://2312119891"
local imgl2b = imgl2:Clone()
imgl2b.Parent = fullscreenz
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,800,0,800)
imgl2b.Position = UDim2.new(0.75,-100,0.55,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
local ned = Instance.new("TextLabel",fullscreenz)
ned.ZIndex = 2
ned.Font = "Arcade"
ned.BackgroundTransparency = 1
ned.BorderSizePixel = 0.65
ned.Size = UDim2.new(0.3,0,0.2,0)
ned.Position = UDim2.new(0.7,0,0.8,0)
ned.TextColor3 = BrickColor.new("Really red").Color
ned.TextStrokeColor3 = BrickColor.new("Really black").Color
ned.TextScaled = true
ned.TextStrokeTransparency = 0
ned.Text = "MAYHEM"
ned.TextSize = 24
ned.Rotation = 1
ned.TextXAlignment = "Right"
ned.TextYAlignment = "Bottom"]]--

local extrawingmod1 = Instance.new("Model",char)
local extrawingmod2 = Instance.new("Model",char)

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.1,0.1,0.1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end

function CreateMesha(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end

function CreateWelda(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end


--------------
-------------- ground effect
local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWelda(sorb,rarm,sorb,0,2.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local cena = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWelda(cena,root,cena,0,3,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local effar = Instance.new("ParticleEmitter",cena)
effar.Texture = "rbxassetid://2344870656"
effar.LightEmission = 1
effar.Color = ColorSequence.new(Color3.new(1,1,1))
effar.Rate = 250
effar.Enabled = false
effar.EmissionDirection = "Front"
effar.Lifetime = NumberRange.new(0.5,1)
effar.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,15,0),NumberSequenceKeypoint.new(0.1,5,0),NumberSequenceKeypoint.new(0.8,2,0),NumberSequenceKeypoint.new(1,0,0)})
effar.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
effar.Speed = NumberRange.new(30,40)
effar.Acceleration = Vector3.new(0,50,0)
effar.Drag = 5
effar.Rotation = NumberRange.new(-500,500)
effar.SpreadAngle = Vector2.new(0,900)
effar.RotSpeed = NumberRange.new(-500,500)
-------------- things
local cen = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
local centrweld = CreateWelda(cen,root,cen,0,-3,-1.5,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local maincoler = BrickColor.new("Really red")

local gntl = script.FakeArm:Clone()
gntl.Anchored = false
for i,v in pairs(gntl.StrobeGauntlet:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Anchored = false
	end
end
for i,v in pairs(gntl.TemperGauntlet:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Anchored = false
	end
end
gntl.Parent = m
CreateWelda(gntl,rarm,gntl,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(180),math.rad(0))

local gntl2 = script.FakeArm:Clone()
gntl2.Anchored = false
for i,v in pairs(gntl2.StrobeGauntlet:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Anchored = false
	end
end
for i,v in pairs(gntl2.TemperGauntlet:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Anchored = false
	end
end
gntl2.Parent = m
CreateWelda(gntl2,larm,gntl2,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local gatlR = Instance.new("Model",m)
local centerR = CreateParta(m,1,1,"SmoothPlastic",BrickColor.new("White"))
local hologrmgun = CreateWelda(centerR,rarm,centerR,0,2.5,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",7,0.3,0.3)
local blink = Instance.new("ParticleEmitter",barz)
blink.Texture = "rbxassetid://2344870656"
blink.LightEmission = 1
blink.Color = ColorSequence.new(Color3.new(1,1,1))
blink.Rate = 0
blink.Enabled = false
blink.Lifetime = NumberRange.new(0.25)
blink.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,20,0),NumberSequenceKeypoint.new(1,0,0)})
blink.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,1,0)})
blink.Speed = NumberRange.new(0)
blink.Drag = 5
blink.Rotation = NumberRange.new(-500,500)
blink.SpreadAngle = Vector2.new(0,900)
blink.RotSpeed = NumberRange.new(-500,500) 

local fir = Instance.new("ParticleEmitter",barz)
fir.Texture = "rbxassetid://2344870656"
fir.LightEmission = 1
fir.Color = ColorSequence.new(Color3.new(1,1,1))
fir.Rate = 500
fir.Enabled = false
fir.Lifetime = NumberRange.new(0.15,0.5)
fir.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,5,0),NumberSequenceKeypoint.new(0.1,1,0),NumberSequenceKeypoint.new(1,0,0)})
fir.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
fir.Speed = NumberRange.new(50,100)
fir.EmissionDirection = "Right"
fir.Drag = 5
fir.Rotation = NumberRange.new(-500,500)
fir.SpreadAngle = Vector2.new(15,15)
fir.RotSpeed = NumberRange.new(-500,500)
local hgwR0 = CreateWelda(barz,centerR,barz,0,0,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR1 = CreateWelda(barz,centerR,barz,0,0.35,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR2 = CreateWelda(barz,centerR,barz,0,-0.35,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR3 = CreateWelda(barz,centerR,barz,0,0.35,0,math.rad(60),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR4 = CreateWelda(barz,centerR,barz,0,-0.35,0,math.rad(60),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR5 = CreateWelda(barz,centerR,barz,0,0.35,0,math.rad(-60),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
barz = CreateParta(gatlR,1,1,"Neon",BrickColor.new("White"))
CreateMesha(barz,"Cylinder",5,0.3,0.3)
local hgwR6 = CreateWelda(barz,centerR,barz,0,-0.35,0,math.rad(-60),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local orng1 = script.gatr1:Clone()
orng1.Anchored = false
orng1.Parent = gatlR
local hgwRA1 = CreateWelda(orng1,centerR,orng1,2.5,0,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local orng2 = script.gatr2:Clone()
orng2.Anchored = false
orng2.Parent = gatlR
local hgwRA2 = CreateWelda(orng2,centerR,orng2,2,0,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local orng3 = script.gatr3:Clone()
orng3.Anchored = false
orng3.Parent = gatlR
local hgwRA3 = CreateWelda(orng3,centerR,orng3,0,0,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local orng4 = script.gatr4:Clone()
orng4.Anchored = false
orng4.Parent = gatlR
local hgwRA4 = CreateWelda(orng4,centerR,orng4,-3,0,0,math.rad(0),math.rad(0),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local orng5 = script.gatr5:Clone()
orng5.Anchored = false
orng5.Parent = gatlR
local hgwRA5 = CreateWelda(orng5,centerR,orng5,-2,0,0,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local orgcl = BrickColor.new("White")

local tg = script.tag:Clone()
tg.Parent = hed
tg.Enabled = true
------


function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end

Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1

function RecolorTextAndRename(name,col1,col2,font)
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
modet.Font = font
modet.Text = name
techc.ImageColor3 = col2
circl.ImageColor3 = col2
circl2.ImageColor3 = col1
imgl2.ImageColor3 = col1
imgl2b.ImageColor3 = col2
ned.Text = name
ned.TextColor3 = col1
ned.TextStrokeColor3 = col2
end

local disably = true

function warnedpeople(text,represfont,color,color2)
	if disably ~= true then
CFuncs["Sound"].Create("rbxassetid://534859368", char, 2.5,1)
CFuncs["Sound"].Create("rbxassetid://963718869", char, 1,1)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.resume(coroutine.create(function()
if v.PlayerGui:FindFirstChild("Spinny")~= nil then
v.PlayerGui:FindFirstChild("Spinny"):destroy()
end
local scrg = Instance.new("ScreenGui",v.PlayerGui)
scrg.Name = "Spinny"
local frm = Instance.new("Frame",scrg)
frm.BackgroundTransparency = 0.25
frm.BackgroundColor3 = color
frm.BorderSizePixel = 0
frm.Rotation = 45
frm.Size = UDim2.new(3,0,0,100)
frm.Position = UDim2.new(-4,0,0,0)
local frm2 = frm:Clone()
frm2.Parent = scrg
frm2.BackgroundColor3 = color2
frm2.Position = UDim2.new(-4.05,0,0,0)
local imlb = Instance.new("ImageLabel",scrg)
imlb.BackgroundTransparency = 1
imlb.BackgroundColor3 = Color3.new(0,0,0)
imlb.Image = "rbxassetid://2344851144"
imlb.Size = UDim2.new(0,750,0,750)
imlb.ImageColor3 = color2
imlb.ImageTransparency = 0.25
imlb.Position = UDim2.new(-2.5,0,-2.5,0)
local imlb2 = imlb:Clone()
imlb2.Image = "rbxassetid://2325939897"
imlb2.Size = UDim2.new(1,0,1,0)
imlb2.ImageColor3 = color
imlb2.ImageTransparency = 0
imlb2.Position = UDim2.new(0,0,0,0)
local imlb3 = imlb:Clone()
imlb3.Image = "rbxassetid://2344830904"
imlb3.Size = UDim2.new(1,0,1,0)
imlb3.ImageColor3 = color2
imlb3.ImageTransparency = 0
imlb3.Position = UDim2.new(0,0,0,0)
local imlb4 = imlb:Clone()
imlb4.Image = "rbxassetid://2344870656"
imlb4.Size = UDim2.new(3,0,3,0)
imlb4.ImageColor3 = Color3.new(1,1,1)
imlb4.ImageTransparency = 0
imlb4.Position = UDim2.new(-1,0,-1,0)
local imlb5 = imlb:Clone()
imlb5.Image = "rbxassetid://2344870656"
imlb5.Size = UDim2.new(10,0,10,0)
imlb5.ImageColor3 = color2
imlb5.ImageTransparency = 0
imlb5.Position = UDim2.new(-4.5,0,-4.5,0)
imlb2.Parent = imlb
imlb3.Parent = imlb
imlb4.Parent = imlb
imlb5.Parent = imlb
local txtlb2 = Instance.new("TextLabel",imlb)
txtlb2.Text = text
txtlb2.Font = represfont
txtlb2.TextColor3 = color
txtlb2.TextStrokeTransparency = 0
txtlb2.BackgroundTransparency = 1
txtlb2.TextStrokeColor3 = color2
txtlb2.TextScaled = true
txtlb2.Size = UDim2.new(1,0,1,0)
txtlb2.Position = UDim2.new(0,0,0,0)
local fvalen = 0.55
local fval = -0.49
coroutine.resume(coroutine.create(function()
while true do
swait()
if chaosmode == true then
txtlb2.Rotation = math.random(-1,1)
imlb.Position = imlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
imlb.ImageColor3 = BrickColor.random().Color
txtlb2.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
coroutine.resume(coroutine.create(function()
while true do
swait()
if scrg.Parent ~= nil then
	fvalen = fvalen - 0.0001
elseif scrg.Parent == nil then
break
end
end
end))
local flol = -5
local flil = 1.6
coroutine.resume(coroutine.create(function()
	for i = 0, 49 do
		swait()
		flol = flol + 0.125
		flil = flil - 0.1
		frm.Size = frm.Size + UDim2.new(0.1,0,0,0)
		frm.Rotation = frm.Rotation - 0.25
		frm2.Size = frm2.Size + UDim2.new(0.1,0,0,0)
		frm2.Rotation = frm.Rotation + 0.325
		imlb3.Rotation = imlb3.Rotation - 10
		imlb2.Rotation = imlb.Rotation + 7.5
		imlb.Rotation = imlb.Rotation + 5
		txtlb2.Rotation = txtlb2.Rotation - 5.125
		imlb.Position = imlb.Position + UDim2.new(0.05125,0,0.04775,0)
	end
	for i = 0, 99 do
		swait()
		fval = fval + 0.05
		flol = flol + 0.005
		frm.Size = frm.Size + UDim2.new(0.005,0,0,0)
		frm.Rotation = frm.Rotation - 0.075
		frm2.Size = frm2.Size + UDim2.new(0.005,0,0,0)
		frm2.Rotation = frm2.Rotation + 0.125
		imlb3.Rotation = imlb3.Rotation - 2
		imlb2.Rotation = imlb.Rotation + 1.5
		imlb.Rotation = imlb.Rotation + 1
		txtlb2.Rotation = txtlb2.Rotation - 1.125
		imlb.Position = imlb.Position + UDim2.new(0.0015,0,0.00075,0)
	end
local valinc = 0
local vinc2 = 1
for i = 0, 99 do
swait()
vinc2 = vinc2 + 0.25
valinc = valinc + 0.0001
flol = flol + valinc
flil = flil + valinc
txtlb2.Rotation = txtlb2.Rotation - 1.125*vinc2
imlb3.Rotation = imlb3.Rotation - 2*vinc2
imlb.Rotation = imlb.Rotation + 1*vinc2
imlb.Position = imlb.Position + UDim2.new(0.0015*vinc2,0,0.0005*vinc2,0)
frm.Size = frm.Size + UDim2.new(0.005*vinc2,0,0,0)
frm.Rotation = frm.Rotation + 0.1*vinc2
frm2.Size = frm2.Size + UDim2.new(0.005*vinc2,0,0,0)
frm2.Rotation = frm2.Rotation + 0.225*vinc2
frm2.BackgroundTransparency = frm2.BackgroundTransparency + 0.0075
frm.BackgroundTransparency = frm.BackgroundTransparency + 0.0075
imlb.ImageTransparency = imlb.ImageTransparency + 0.005
imlb2.ImageTransparency = imlb2.ImageTransparency + 0.01
imlb3.ImageTransparency = imlb3.ImageTransparency + 0.01
imlb4.ImageTransparency = imlb4.ImageTransparency + 0.01
imlb5.ImageTransparency = imlb4.ImageTransparency + 0.01
txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
end
scrg:Destroy()
end))
end))
end
end
end


--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
------------------
function swait(num)
if num == 0 or num == nil then
        game:GetService("RunService").RenderStepped:wait()
	else
		for i = 1, num do
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end
-------- RAINBOW LEAVE IT TO ME
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
while wait() do
	for i = 0, 254/5 do
		swait()
		g = g + 5
	end
	for i = 0, 254/5 do
		swait()
		r = r - 5
	end
	for i = 0, 254/5 do
		swait()
		b = b + 5
	end
	for i = 0, 254/5 do
		swait()
		g = g - 5
	end
	for i = 0, 254/5 do
		swait()
		r = r + 5
	end
	for i = 0, 254/5 do
		swait()
		b = b - 5
	end
end
end))
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

function showdamage(font,pos,color,txt)
	local mn = script.dmgpart:Clone()
	mn.gb.Enabled = true
	local mntext = mn.gb.dtxt
	mntext.Font = font
	mntext.TextColor3 = color
	mntext.Text = txt
	mn.Parent = workspace
	mn.Position = pos
	game:GetService("Debris"):AddItem(mn, 30)
	coroutine.resume(coroutine.create(function()
		local val = 0.1
		local rd = math.random(1,2)
		for i = 0, 24 do
			swait()
			if rd == 1 then
			mntext.Rotation = mntext.Rotation + val*5
			elseif rd == 2 then
			mntext.Rotation = mntext.Rotation - val*5
			end
			mn.CFrame = mn.CFrame*CFrame.new(0,val,0)
			val = val - 0.004
		end
		swait(60)
		for i = 0, 24 do
			swait()
			mntext.TextStrokeTransparency = mntext.TextStrokeTransparency + 0.04
			mntext.TextTransparency = mntext.TextTransparency + 0.04
		end
		game:GetService("Debris"):AddItem(mn, 0.5)
	end))
end

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game.Players.LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 0.5, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
      end
      coroutine.resume(coroutine.create(function()
      showdamage("SourceSansLight",h.Parent.Head.Position,Color3.new(1,1,1),Damage)
coroutine.resume(coroutine.create(function()
for i = 1, math.random(5,12) do
	trailMK(math.random(4,5),math.random(50,200)/1000,"Add",h.Parent.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,-0.0025,Color3.fromRGB(255,255,255),0)
end
end))
end))
    else
      coroutine.resume(coroutine.create(function()
      showdamage("SourceSansLight",h.Parent.Head.Position,Color3.new(1,1,1),Damage)
coroutine.resume(coroutine.create(function()
for i = 1, math.random(5,12) do
	trailMK(math.random(4,5),math.random(50,200)/1000,"Add",h.Parent.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,-0.0025,Color3.fromRGB(255,255,255),0)
end
end))
end))
    end
    if Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Head
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type, id)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://" ..id, 1)
        end
      end
    end
  end
end

function MagniDamageWithEffect(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
	MagicBlock(BrickColor.new("Pastel light blue"),head.CFrame,5,5,5,1,1,1,0.05)
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
        end
      end
    end
  end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSphere(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlockSteady(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShock(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,1,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
local dec = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
local dec2 = decal(prt.Color,"http://www.roblox.com/asset/?id=874580939","Front",prt)
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
dec.Transparency=i
dec2.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAlt(brickcolor,cframe,x1,y1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,0.01))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockAltCircle(brickcolor,cframe,x1,z1,x3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0.1,0)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,-0.1,0)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,0,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt(brickcolor,cframe,x1,y1,z1,x3,y3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,0)
end
Part.Parent=nil
end),prt,msh)
end

function MagicShockTrailAlt2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,rottype)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
	local rtype = rottype
for i=0,1,delay do
swait()
if rtype == 1 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,0.1)
elseif rtype == 2 then
prt.CFrame = prt.CFrame*CFrame.Angles(0,0,-0.1)
end
prt.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
    return true
end

function dmgstop()
	return true
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

local origcolor = BrickColor.new("Pastel light blue")
---- This section of explosions.

----


function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end

function waveEff(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
rngm.MeshId = "rbxassetid://20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(5*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-5*bonuspeed/2),0)
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, 0, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function wind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function groundwind(type,pos,scale,value,speed)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=1051557"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.CFrame = rng.CFrame*CFrame.Angles(0,0.025*speed,0)
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2/5, scaler2)
end
rng:Destroy()
end))
end

function CameraManager()
  if TwoD and not CamInterrupt then
    if Humanoid.Health > 0 then
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Scriptable"
      Humanoid.AutoRotate = false
      if Booleans.GyroUse then
        Directer.MaxTorque = Vec3(0, huge, 0)
      else
        Directer.MaxTorque = Vec3(0, 0, 0)
      end
      if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
        if Booleans.CamFollow then
          CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
          Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
        else
          CPart.Position = RootPart.Position
        end
      else
        local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
        CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
      end
      Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
    else
      Camera.CameraSubject = Humanoid
      Camera.CameraType = "Custom"
    end
  end
end

function ring(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
end
rng:Destroy()
end))
end


function wave(type,pos,scale,value)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = origcolor
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value
end
rng.Transparency = rng.Transparency + 0.01
rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, scaler2)
end
rng:Destroy()
end))
end

function sphere(bonuspeed,type,pos,scale,value,color,color3x)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
rng.Color = color3x
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color,color3x)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
rng.Color = color3x
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end

function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function PixelBlockNeg(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 0
local speeder = FastSpeed/10
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder + 0.01*FastSpeed*bonuspeed/10
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
--rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,lt)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
rng.Color = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
local trl = Instance.new("Trail",rng)
	local a0 = Instance.new("Attachment",rng)
	a0.Position = Vector3.new(x1/2,0,0)
	local a1 = Instance.new("Attachment",rng)
	a1.Position = Vector3.new(-x1/2,0,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.Color = ColorSequence.new(color)
	trl.Lifetime = lt
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,rng.Transparency,0),NumberSequenceKeypoint.new(1,1,0)})
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function sphereMKn(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,lt)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
rng.Color = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end


function trailMK(bonuspeed,FastSpeed,type,pos,x,value,color,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
rng.Color = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
local trl = Instance.new("Trail",rng)
	local a0 = Instance.new("Attachment",rng)
	a0.Position = Vector3.new(x/2,0,0)
	local a1 = Instance.new("Attachment",rng)
	a1.Position = Vector3.new(-x/2,0,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.Color = ColorSequence.new(color)
	trl.Lifetime = 0.25
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(0,0,0)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,rng.Transparency,0),NumberSequenceKeypoint.new(1,1,0)})
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end



function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,color3x)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
rng.Color = color3x
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 1
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency - 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end

function dmg(dude)
if dude.Name ~= Character then
local keptcolor = maincoler
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
--[[local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"]]--
local ds = coroutine.wrap(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Name = "DEMINISHED"
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.75, 0.285)
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
coroutine.resume(coroutine.create(function()
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 0.75
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(keptcolor.Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
        local sbs = Instance.new("BodyPosition", v)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
        sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2))
v.Color = keptcolor.Color
coroutine.resume(coroutine.create(function()
sphere2(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,keptcolor)
CFuncs["Sound"].Create("rbxassetid://1192402877", v, 0.5, 0.75)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
end))
end))
end
end
end))
end)
ds()
end
end


function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end

function FaceMouse()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

function FaceMouse2()
  Cam = workspace.CurrentCamera
  return {
    CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)),
    Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
  }
end

local ModeType = "N"
-- Functions are ready.
local storehumanoidWS = 16

function createBGCircle(size,parent,color)
local bgui = Instance.new("BillboardGui",parent)
bgui.Size = UDim2.new(size, 0, size, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 0
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547" --997291547,521073910
imgc.ImageColor3 = color
return bgui,imgc
end

function symbolizeBlink(guipar,size,img,color,bonussize,vol,pit,soundid,spar,rotationenabled,rotsp,delay)
local bgui,imgc = createBGCircle(size,guipar,color)
bgui.AlwaysOnTop = true
imgc.Image = "rbxassetid://" ..img
local rrot = math.random(1,2)
CFuncs["Sound"].Create("rbxassetid://" ..soundid, spar, vol,pit)
coroutine.resume(coroutine.create(function()
for i = 0, 24*delay do
swait()
if rotationenabled == true then
if rrot == 1 then
imgc.Rotation = imgc.Rotation + rotsp
elseif rrot == 2 then
imgc.Rotation = imgc.Rotation - rotsp
end
end
bgui.Size = bgui.Size + UDim2.new(1*bonussize/delay,0,1*bonussize/delay,0)
imgc.ImageTransparency = imgc.ImageTransparency + 0.04/delay
end
bgui:Destroy()
end))
end

function aone()
	attack = true
	hum.WalkSpeed = 3
	local trl = Instance.new("Trail",rarm)
	local a0 = Instance.new("Attachment",rarm)
	a0.Position = Vector3.new(0.5,-1,0)
	local a1 = Instance.new("Attachment",rarm)
	a1.Position = Vector3.new(0.5,1,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.5
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
	for i = 0, 3 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-35),math.rad(-8),math.rad(-25)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(40),math.rad(-1)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.5)*angles(math.rad(1),math.rad(-20),math.rad(-42)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(10),math.rad(-10)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-27)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(80),math.rad(0),math.rad(-36)),.3)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*1.5
	hbax.Anchored = true
	MagniDamage(hbax, 3.5, 10,18, 0, "Normal", 153092227)
	CFuncs["Sound"].Create("rbxassetid://2295409459", rarm, 2, 1)
	for i = 0, 4 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1.2,-1,-0.4)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-60),math.rad(-10)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(10)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.4,-0.4,-0.25)*angles(math.rad(0),math.rad(20),math.rad(82)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-20),math.rad(-82)),.4)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-1)*angles(math.rad(160),math.rad(20),math.rad(-20)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(80),math.rad(0),math.rad(-10)),.4)
	end
	trl.Enabled = false
	game:GetService("Debris"):AddItem(trl,4)
	hbax:Destroy()
	attack = false
	hum.WalkSpeed = 50
end

function atwo()
	attack = true
	hum.WalkSpeed = 3
	local trl = Instance.new("Trail",larm)
	local a0 = Instance.new("Attachment",larm)
	a0.Position = Vector3.new(-0.5,-1,0)
	local a1 = Instance.new("Attachment",larm)
	a1.Position = Vector3.new(-0.5,1,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.5
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
	for i = 0, 3 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(-8),math.rad(-25)),.3)
LH.C0=clerp(LH.C0,cf(-1,-0.4,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(20),math.rad(-5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.5)*angles(math.rad(1),math.rad(20),math.rad(30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(-10),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(40),math.rad(0),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0,0)*angles(math.rad(140),math.rad(0),math.rad(10)),.3)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*1.5
	hbax.Anchored = true
	MagniDamage(hbax, 3.5, 10,18, 0, "Normal", 153092227)
	CFuncs["Sound"].Create("rbxassetid://2295409459", rarm, 2, 1)
	for i = 0, 4 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-25),math.rad(-8),math.rad(-15)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.4)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(40),math.rad(-1)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0.4,-0.25,-0.25)*angles(math.rad(1),math.rad(-20),math.rad(-60)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(10),math.rad(50)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(40),math.rad(0),math.rad(20)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,1,-0.4)*angles(math.rad(160),math.rad(0),math.rad(10)),.4)
	end
	trl.Enabled = false
	game:GetService("Debris"):AddItem(trl,4)
	hbax:Destroy()
	attack = false
	hum.WalkSpeed = 50
end

function athree()
	attack = true
	hum.WalkSpeed = 1
	local trl = Instance.new("Trail",larm)
	local a0 = Instance.new("Attachment",larm)
	a0.Position = Vector3.new(-0.5,-1,0)
	local a1 = Instance.new("Attachment",larm)
	a1.Position = Vector3.new(-0.5,1,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.5
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
	
	local trl2 = Instance.new("Trail",rarm)
	local a02 = Instance.new("Attachment",rarm)
	a02.Position = Vector3.new(0.5,-1,0)
	local a12 = Instance.new("Attachment",rarm)
	a12.Position = Vector3.new(0.5,1,0)
	trl2.Attachment0 = a02
	trl2.Attachment1 = a12
	trl2.Color = ColorSequence.new(orgcl.Color)
	trl2.Lifetime = 0.5
	trl2.LightEmission = 1
	trl2.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.2,0,0),NumberSequenceKeypoint.new(1,1,0)})
	for x = 0, 2 do
	for i = 0, 2 ,0.5 do
		swait()
		root.Velocity = root.CFrame.lookVector*15
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-25)),.6)
LH.C0=clerp(LH.C0,cf(-1,-0.4,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-20)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.6)*angles(math.rad(30),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.6)
RW.C0=clerp(RW.C0,cf(1,1.25,-1.25)*angles(math.rad(120),math.rad(0),math.rad(-20)),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.5)*angles(math.rad(120),math.rad(0),math.rad(5)),.6)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*1.5
	hbax.Anchored = true
	MagniDamage(hbax, 3.5, 3,6, 0, "Normal", 153092227)
	hbax:Destroy()
	CFuncs["Sound"].Create("rbxassetid://2295409459", rarm, 0.4, 1.5)
	for i = 0, 2 ,0.5 do
		swait()
		root.Velocity = root.CFrame.lookVector*15
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-25)),.6)
LH.C0=clerp(LH.C0,cf(-1,-0.4,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-20)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.6)*angles(math.rad(30),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0.5)*angles(math.rad(120),math.rad(0),math.rad(-5)),.6)
LW.C0=clerp(LW.C0,cf(-1,1.25,-1.25)*angles(math.rad(120),math.rad(0),math.rad(20)),.6)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*1.5
	hbax.Anchored = true
	MagniDamage(hbax, 3.5, 3,6, 0, "Normal", 153092227)
	hbax:Destroy()
	CFuncs["Sound"].Create("rbxassetid://2295409459", larm, 0.4, 1.5)
	end
	trl.Enabled = false
	game:GetService("Debris"):AddItem(trl,4)
	trl2.Enabled = false
	game:GetService("Debris"):AddItem(trl2,4)
	attack = false
	hum.WalkSpeed = 50
end

function afour()
	attack = true
	for i = 0, 1 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.2,0)*angles(math.rad(10),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(25)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(-20),math.rad(-15)),.3)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*3
	hbax.Anchored = true
	CFuncs["Sound"].Create("rbxassetid://200632370", root, 1, 1)
for x = 0, 2 do
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*3
	MagniDamage(hbax, 5, 6,10, 0, "Normal")
for i = 0, 1 ,0.6 do
		swait()
		root.Velocity = root.CFrame.lookVector*55
		slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-1,-3)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.035,0.01,0.035),math.random(5,20)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(55)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(-20),math.rad(-60)),.3)
end
for i = 0, 1 ,0.6 do
		swait()
		root.Velocity = root.CFrame.lookVector*55
		slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-1,-3)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.035,0.01,0.035),math.random(5,20)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(55)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(-20),math.rad(-60)),.3)
end
for i = 0, 1 ,0.6 do
		swait()
		root.Velocity = root.CFrame.lookVector*55
		slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-1,-3)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.035,0.01,0.035),math.random(5,20)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(-180)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(55)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(-20),math.rad(-60)),.3)
end
for i = 0, 1 ,0.6 do
		swait()
		root.Velocity = root.CFrame.lookVector*55
		slash(math.random(50,100)/10,5,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-1,-3)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))),vt(0.035,0.01,0.035),math.random(5,20)/250,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(90)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(-270)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(55)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(13),math.rad(-20),math.rad(-60)),.3)
end
end
	hbax:Destroy()
	attack = false
end

function afive()
	attack = true
	hum.WalkSpeed = 0
	for i = 0, 2 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(13),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-1)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-13)),.3)
	end
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame*CFrame.new(0,-3,0)
	hbax.Anchored = true
	game:GetService("Debris"):AddItem(hbax,10)
local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
if OVERPOWER == false then
localshakes(0.15,0.5)
CFuncs["Sound"].Create("rbxassetid://824687369", hbax, 3, 1)
CFuncs["Sound"].Create("rbxassetid://1259054947", hbax, 1, 1.2)
MagniDamage(hbax, 10, 12,20, 0, "Normal")
sphere2(3,"Add",hbax.CFrame,vt(0,1,0),0.25,0.01,0.25,orgcl,orgcl.Color)
sphere2(4,"Add",hbax.CFrame,vt(0,1,0),0.25,0.01,0.25,orgcl,orgcl.Color)
for i = 0, 19 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",hbax.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.01,0.05),math.random(10,50)/250,BrickColor.new("White"))
end
for i = 0, 9 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(2,5),math.random(2,5),math.random(2,5))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.new(math.random(-6,6),-4,math.random(-6,6))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(1,2),math.random(1,2),math.random(1,2))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-30,30),math.random(30,60),math.random(-30,30))
deb2.RotVelocity = vt(math.random(-50,50),math.random(-50,50),math.random(-50,50))
deb2.CFrame = root.CFrame*CFrame.new(math.random(-3,3),-4,math.random(-3,3))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,0.5,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-0.5,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(orgcl.Color)
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,15)
game:GetService("Debris"):AddItem(deb2,15)
coroutine.resume(coroutine.create(function()
	wait(5)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
	end
	deb:Destroy()
end))
end
elseif OVERPOWER == true then
shakes(0.3,1)
CFuncs["Sound"].Create("rbxassetid://824687369", hbax, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1259054947", hbax, 5, 0.75)
MagniDamage(hbax, 25, 24,60, 0, "Normal")
sphere2(3,"Add",hbax.CFrame,vt(0,1,0),1,0.01,1,orgcl,orgcl.Color)
sphere2(4,"Add",hbax.CFrame,vt(0,1,0),1,0.01,1,orgcl,orgcl.Color)
for i = 0, 39 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",hbax.CFrame*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.01,0.05),math.random(20,100)/250,BrickColor.new("White"))
end
for i = 0, 29 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(4,10),math.random(4,10),math.random(4,10))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.new(math.random(-12,12),-4,math.random(-12,12))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(2,4),math.random(2,4),math.random(2,4))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-60,60),math.random(60,120),math.random(-60,60))
deb2.RotVelocity = vt(math.random(-50,50),math.random(-50,50),math.random(-50,50))
deb2.CFrame = root.CFrame*CFrame.new(math.random(-6,6),-4,math.random(-6,6))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,1,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-1,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(orgcl.Color)
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,15)
game:GetService("Debris"):AddItem(deb2,15)
coroutine.resume(coroutine.create(function()
	wait(5)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
	end
	deb:Destroy()
end))
end
end
end
	--CFuncs["Sound"].Create("rbxassetid://200632211", hbax, 1, 1)
	for i = 0, 1 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(5)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.4,-0.2)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-47),math.rad(0),math.rad(14)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-52),math.rad(0),math.rad(-14)),.3)
	end
	attack = false
	hum.WalkSpeed = storehumanoidWS
end
--- abilities

function bigjoke()
	attack = true
	hum.WalkSpeed = 0
	CFuncs["Sound"].Create("rbxassetid://459523787", char, 5, 1)
	for i = 0, 15 ,0.1 do
		swait()
		trailMK(math.random(2,5),-0.5*12,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(0,0,-25*12),50,-0.0025,Color3.fromRGB(255,255,255),0)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-40),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(0.8,0.75,-0.5)*angles(math.rad(170),math.rad(0),math.rad(-20)),.2)
LW.C0=clerp(LW.C0,cf(-0.8,0.75,-0.5)*angles(math.rad(170),math.rad(0),math.rad(20)),.2)
	end
	MagniDamage(root, 800, 1000,60000, 0, "Normal", 0)
	shakes(8,10)
	CFuncs["Sound"].Create("rbxassetid://341301373", char, 5, 1.3)
sphere2(1,"Add",root.CFrame,vt(1,1,1),6,6,6,bc("White"),Color3.new(1,1,1))
sphere2(1,"Add",root.CFrame,vt(1,1,1),12,12,12,bc("White"),Color3.new(1,1,1))
sphere2(1,"Add",root.CFrame,vt(1,1,1),24,24,24,bc("White"),Color3.new(1,1,1))
sphere2(2,"Add",root.CFrame,vt(1,1,1),6,6,6,bc("White"),Color3.new(1,1,1))
sphere2(2,"Add",root.CFrame,vt(1,1,1),12,12,12,bc("White"),Color3.new(1,1,1))
sphere2(2,"Add",root.CFrame,vt(1,1,1),24,24,24,bc("White"),Color3.new(1,1,1))
sphere2(3,"Add",root.CFrame,vt(1,1,1),6,6,6,bc("White"),Color3.new(1,1,1))
sphere2(3,"Add",root.CFrame,vt(1,1,1),12,12,12,bc("White"),Color3.new(1,1,1))
sphere2(3,"Add",root.CFrame,vt(1,1,1),24,24,24,bc("White"),Color3.new(1,1,1))
sphere2(4,"Add",root.CFrame,vt(1,1,1),6,6,6,bc("White"),Color3.new(1,1,1))
sphere2(4,"Add",root.CFrame,vt(1,1,1),12,12,12,bc("White"),Color3.new(1,1,1))
sphere2(4,"Add",root.CFrame,vt(1,1,1),24,24,24,bc("White"),Color3.new(1,1,1))
for i = 0, 99 do
slash(math.random(5,20)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.8,0)*CFrame.Angles(math.rad(math.random(-2,2)),math.rad(math.random(-360,360)),math.rad(math.random(-2,2))),vt(0.05,0.001,0.05),math.random(1200,1800)/250,BrickColor.new("White"))
end
local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
local rotation = 0
for i = 0, 35 do
rotation = rotation + 10
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(50,60),math.random(25,35),math.random(50,60))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-3,150)*CFrame.Angles(math.rad(math.random(20,30)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debb = Instance.new("Part", char)
debb.Anchored = true
debb.CanCollide = false
debb.FormFactor = 3
debb.Name = "Ring"
debb.Material = hf.Material
debb.Color = hf.Color
debb.Size = vt(math.random(40,50),math.random(19,25),math.random(40,50))
debb.Transparency = 0
debb.TopSurface = 0
debb.BottomSurface = 0
debb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-6,175)*CFrame.Angles(math.rad(math.random(10,20)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debc = Instance.new("Part", char)
debc.Anchored = true
debc.CanCollide = false
debc.FormFactor = 3
debc.Name = "Ring"
debc.Material = hf.Material
debc.Color = hf.Color
debc.Size = vt(math.random(35,40),math.random(14,18),math.random(35,40))
debc.Transparency = 0
debc.TopSurface = 0
debc.BottomSurface = 0
debc.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-6,200)*CFrame.Angles(math.rad(math.random(5,10)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(50,60),math.random(50,60),math.random(50,60))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = root.CFrame
deb2.Velocity = vt(math.random(-300,300),math.random(250,500),math.random(-300,300))
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,20,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-20,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,1,1))
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(debb,30)
game:GetService("Debris"):AddItem(debc,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
	wait(15)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
		debb.Transparency = debb.Transparency + 0.04
		debc.Transparency = debc.Transparency + 0.04
	end
	deb:Destroy()
	debb:Destroy()
	debc:Destroy()
end))
end
end
	for i = 0, 25 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.15,-0.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(40)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(30)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-1)*angles(math.rad(40),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.6)
RW.C0=clerp(RW.C0,cf(1,0.75,-0.75)*angles(math.rad(40),math.rad(0),math.rad(-20)),.6)
LW.C0=clerp(LW.C0,cf(-1,0.75,-0.75)*angles(math.rad(40),math.rad(0),math.rad(20)),.6)
	end
	attack = false
	hum.WalkSpeed = 50
end
local chrged = false
function test()
	attack = true
for i = 0, 49 do
slash(math.random(10,100)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.01,0.05),math.random(25,500)/250,BrickColor.new("White"))
end
shakes(0.25,0.25)
CFuncs["Sound"].Create("rbxassetid://1295446488", root, 5, 1)
for i = 0, 3 ,0.1 do
	swait()
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(18),math.rad(0),math.rad(-45)),.3)
root.Velocity = root.Velocity + vt(0,300,0)
end
for x = 0, 4 do
for i = 0, 1 ,0.6 do
	swait()
root.Velocity = vt(0,0,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.25)*angles(math.rad(80),math.rad(0),math.rad(-90)),.3)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.25)*angles(math.rad(67),math.rad(0),math.rad(87)),.3)
end
for i = 0, 1 ,0.6 do
	swait()
root.Velocity = vt(0,0,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.25)*angles(math.rad(80),math.rad(0),math.rad(-90)),.3)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.25)*angles(math.rad(67),math.rad(0),math.rad(87)),.3)
end
for i = 0, 1 ,0.6 do
	swait()
root.Velocity = vt(0,0,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.25)*angles(math.rad(80),math.rad(0),math.rad(-90)),.3)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.25)*angles(math.rad(67),math.rad(0),math.rad(87)),.3)
end
for i = 0, 1 ,0.6 do
	swait()
root.Velocity = vt(0,0,0)
RH.C0=clerp(RH.C0,cf(1,-0.4,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0)*angles(math.rad(-270),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.25)*angles(math.rad(80),math.rad(0),math.rad(-90)),.3)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.25)*angles(math.rad(67),math.rad(0),math.rad(87)),.3)
end
end
local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
hum.WalkSpeed = 100
while true do
swait()
sphere2(2,"Add",rarm.CFrame*CFrame.new(0,-1.5,0),vt(3,3,3),-0.03,-0.03,-0.03,orgcl,orgcl.Color)
sphere2(2,"Add",larm.CFrame*CFrame.new(0,-1.5,0),vt(3,3,3),-0.03,-0.03,-0.03,orgcl,orgcl.Color)
RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(150),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.15,0.85,0)*angles(math.rad(160),math.rad(0),math.rad(-10)),.3)
LW.C0=clerp(LW.C0,cf(-1.15,0.85,0)*angles(math.rad(160),math.rad(0),math.rad(10)),.3)
hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
	attack = false
	hum.WalkSpeed = storehumanoidWS
	if OVERPOWER == false then
	shakes(0.6,1)
sphere2(3,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),1,1,1,orgcl,orgcl.Color)
sphere2(4,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),1,1,1,orgcl,orgcl.Color)
local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
hbax.CFrame = root.CFrame
hbax.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1066991958", hbax, 4, 0.9)
CFuncs["Sound"].Create("rbxassetid://2036839549", hbax, 2.75, 1)
CFuncs["Sound"].Create("rbxassetid://1259054947", hbax, 3.5, 1)
MagniDamage(hbax, 32, 21,32, 0, "Normal")
game:GetService("Debris"):AddItem(hbax,15)
for i = 0, 24 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.01,0.05),math.random(25,500)/250,BrickColor.new("White"))
end
for i = 0, 24 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(12,18),math.random(12,18),math.random(12,18))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.new(math.random(-40,40),-5,math.random(-40,40))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(2,6),math.random(2,6),math.random(2,6))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-30,30),math.random(50,200),math.random(-30,30))
deb2.RotVelocity = vt(math.random(-50,50),math.random(-50,50),math.random(-50,50))
deb2.CFrame = root.CFrame*CFrame.new(math.random(-20,20),-5,math.random(-20,20))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,1,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-1,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(orgcl.Color)
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,15)
game:GetService("Debris"):AddItem(deb2,15)
coroutine.resume(coroutine.create(function()
	wait(5)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
	end
	deb:Destroy()
end))
end
elseif OVERPOWER == true then
shakes(1.2,2)
sphere2(1,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
sphere2(2,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
sphere2(3,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
sphere2(4,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
sphere2(5,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
sphere2(6,"Add",root.CFrame*CFrame.new(0,-3,0),vt(0,0,0),3,3,3,orgcl,orgcl.Color)
local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
hbax.CFrame = root.CFrame
hbax.Anchored = true
CFuncs["Sound"].Create("rbxassetid://1066991958", hbax, 10, 0.5)
CFuncs["Sound"].Create("rbxassetid://2036839549", hbax, 10, 0.75)
CFuncs["Sound"].Create("rbxassetid://1259054947", hbax, 10, 0.75)
for i = 0, 2 do
CFuncs["Sound"].Create("rbxassetid://782354021", hbax, 7, 0.75)
CFuncs["Sound"].Create("rbxassetid://824687369", hbax, 10, 1)
end
MagniDamage(hbax, 64, 50,90, 0, "Normal")
game:GetService("Debris"):AddItem(hbax,15)
for i = 0, 49 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.01,0.05),math.random(50,750)/250,BrickColor.new("White"))
end
for i = 0, 49 do
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(24,36),math.random(24,36),math.random(24,36))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.new(math.random(-80,80),-5,math.random(-80,80))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(4,12),math.random(4,12),math.random(4,12))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.Velocity = vt(math.random(-60,60),math.random(100,400),math.random(-60,60))
deb2.RotVelocity = vt(math.random(-50,50),math.random(-50,50),math.random(-50,50))
deb2.CFrame = root.CFrame*CFrame.new(math.random(-40,40),-5,math.random(-40,40))*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,2,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-2,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(orgcl.Color)
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,15)
game:GetService("Debris"):AddItem(deb2,15)
coroutine.resume(coroutine.create(function()
	wait(5)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
	end
	deb:Destroy()
end))
end
end
break
end
end
end

function a()
chrged = true
attack = true
hum.WalkSpeed = 1
local clevel = 1
effar.Color = ColorSequence.new(orgcl.Color)
effar.Enabled = true
local loopedboi = Instance.new("Sound",root)
loopedboi.Volume = 0
loopedboi.SoundId = "rbxassetid://2162238374"
loopedboi.Looped = true
loopedboi:Play()
local chboi = Instance.new("Sound",root)
chboi.Volume = 2
chboi.Pitch = 0.2
chboi.SoundId = "rbxassetid://136007472"
chboi:Play()
while true do
swait()
if OVERPOWER == false then
clevel = clevel + 0.1
elseif OVERPOWER == true then
clevel = clevel + 1
end
chboi.Volume = 2+clevel/100
loopedboi.Volume = 0+clevel/100
loopedboi.Pitch = 1-clevel/1000
--localshakes(clevel/10000,1)
waveEff(10,"Add",root.CFrame*CFrame.new(0,-2.5,0),vt(0,1.25,0),0.125,orgcl)
slash(math.random(30,100)/10,3,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01+clevel/2000,0.001,0.01+clevel/2000),math.random(-1,1)/250,orgcl)
sphere2(3,"Add",rarm.CFrame*CFrame.new(0,-1,0),vt(0.5,0.5,0.5),clevel/1000,clevel/1000,clevel/1000,orgcl,orgcl.Color)
RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(13),math.rad(1)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(-1)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,0 + 0.05 * math.cos(sine / 20))*angles(math.rad(1),math.rad(0),math.rad(-48)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(48)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.35,0)*angles(math.rad(160),math.rad(0),math.rad(12)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-48)),.3)
if chrged == false then
	effar.Enabled = false
	chboi:Destroy()
	loopedboi:Destroy()
	if OVERPOWER == false then
	shakes(0.05*clevel/2.5,1.5*clevel/75)
	for i = 0, 1+clevel/50 do
	CFuncs["Sound"].Create("rbxassetid://782354021", root, 1+clevel/2, 1-clevel/1500)
	end
	coroutine.resume(coroutine.create(function()
	local dist = 3
	for x = 0, 2 do
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*dist*clevel/5
	hbax.Anchored = true
	for i = 0, 1+clevel/50 do
	CFuncs["Sound"].Create("rbxassetid://824687369", hbax, 0.5+clevel/2, 1-clevel/5000)
	end
for i = 0, 9 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",hbax.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01*clevel/2.5,0.001,0.01*clevel/2.5),math.random(10,25)/250*clevel/2.5,orgcl)
end
	sphere2(3,"Add",hbax.CFrame,vt(2.5*clevel/2.5,2.5*clevel/2.5,2.5*clevel/2.5),0.1,0.1,0.1,orgcl,orgcl.Color)
	sphere2(3,"Add",hbax.CFrame,vt(1.5*clevel/2.5,1.5*clevel/2.5,1.5*clevel/2.5),0.1,0.1,0.1,bc("White"),Color3.new(1,1,1))
	MagniDamage(hbax, 4*clevel/3, 3*clevel/2.5,8*clevel/2.5, 0, "Normal")
	game:GetService("Debris"):AddItem(hbax,10)
	dist = dist + 3
	for i = 0, 1, 0.3 do
	swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-15),math.rad(10)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(-1)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,0)*angles(math.rad(10),math.rad(0),math.rad(70)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-70)),.6)
RW.C0=clerp(RW.C0,cf(1.25,0.45,-0.25)*angles(math.rad(90),math.rad(0),math.rad(-24)),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-46)),.6)
	end
	end		
	attack = false
	end))
	elseif OVERPOWER == true then
	for n = 0, 4 do
	shakes(0.05*clevel/2.5,1.5*clevel/75)
	for i = 0, 1+clevel/50 do
	CFuncs["Sound"].Create("rbxassetid://782354021", root, 1+clevel/2, 1-clevel/1500)
	end
	coroutine.resume(coroutine.create(function()
	local dist = 3
	for x = 0, 2 do
	local hbax = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
	hbax.CFrame = root.CFrame + root.CFrame.lookVector*dist*clevel/5
	hbax.Anchored = true
	for i = 0, 1+clevel/50 do
	CFuncs["Sound"].Create("rbxassetid://824687369", hbax, 0.5+clevel/2, 1-clevel/5000)
	end
for i = 0, 9 do
slash(math.random(30,100)/10,3,true,"Round","Add","Out",hbax.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01*clevel/2.5,0.001,0.01*clevel/2.5),math.random(10,25)/250*clevel/2.5,orgcl)
end
	sphere2(3,"Add",hbax.CFrame,vt(2.5*clevel/2.5,2.5*clevel/2.5,2.5*clevel/2.5),0.1,0.1,0.1,orgcl,orgcl.Color)
	sphere2(3,"Add",hbax.CFrame,vt(1.5*clevel/2.5,1.5*clevel/2.5,1.5*clevel/2.5),0.1,0.1,0.1,bc("White"),Color3.new(1,1,1))
	MagniDamage(hbax, 4*clevel/3, 3*clevel/2.5,8*clevel/2.5, 0, "Normal")
	game:GetService("Debris"):AddItem(hbax,10)
	dist = dist + 3
	for i = 0, 1, 0.3 do
	swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-15),math.rad(10)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(20),math.rad(-1)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.25,0)*angles(math.rad(10),math.rad(0),math.rad(70)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-70)),.6)
RW.C0=clerp(RW.C0,cf(1.25,0.45,-0.25)*angles(math.rad(90),math.rad(0),math.rad(-24)),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-50),math.rad(0),math.rad(-46)),.6)
	end
	end
	attack = false
	end))
	swait(30)
	end
	end
	hum.WalkSpeed = storehumanoidWS
	break
end
end
end

local holden = false
function hm()
	hum.WalkSpeed = 0
	attack = true
	CFuncs["Sound"].Create("rbxassetid://186234895", centerR, 3, 1)
	local SPD = 1
	local mult = 1
	local ratez = 1
blink.Enabled = true
	hgwR0.C1=clerp(hgwR0.C1,cf(-10,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwR1.C1=clerp(hgwR1.C1,cf(10,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwR2.C1=clerp(hgwR2.C1,cf(10,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwR3.C1=clerp(hgwR3.C1,cf(10,0,0)*angles(math.rad(60),math.rad(0),math.rad(90)),1)
	hgwR4.C1=clerp(hgwR4.C1,cf(10,0,0)*angles(math.rad(60),math.rad(0),math.rad(90)),1)
	hgwR5.C1=clerp(hgwR5.C1,cf(10,0,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),1)
	hgwR6.C1=clerp(hgwR6.C1,cf(10,0,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),1)
	hgwRA1.C1=clerp(hgwRA1.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwRA2.C1=clerp(hgwRA2.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwRA3.C1=clerp(hgwRA3.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwRA4.C1=clerp(hgwRA4.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	hgwRA5.C1=clerp(hgwRA5.C1,cf(5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),1)
	for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Transparency = 1
		end
	end
	for i = 0, 14 ,0.1 do
		swait()
		SPD = SPD*mult
		mult = mult + 0.003
		blink.Rate = ratez
		ratez = ratez + 0.25*mult
	for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Transparency = part.Transparency - 0.004
		end
	end
		hologrmgun.C0=clerp(hologrmgun.C0,cf(0,0,0)*angles(math.rad(0),math.rad(SPD),math.rad(0)),1)
		hgwR0.C1=clerp(hgwR0.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR1.C1=clerp(hgwR1.C1,cf(0,0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR2.C1=clerp(hgwR2.C1,cf(0,-0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR3.C1=clerp(hgwR3.C1,cf(0,0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR4.C1=clerp(hgwR4.C1,cf(0,-0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR5.C1=clerp(hgwR5.C1,cf(0,0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
		hgwR6.C1=clerp(hgwR6.C1,cf(0,-0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
		hgwRA1.C1=clerp(hgwRA1.C1,cf(2.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA2.C1=clerp(hgwRA2.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA3.C1=clerp(hgwRA3.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA4.C1=clerp(hgwRA4.C1,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA5.C1=clerp(hgwRA5.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(-25)),.3)
LH.C0=clerp(LH.C0,cf(-1,-0.6,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.6)*angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.4)*angles(math.rad(120),math.rad(0),math.rad(-30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(-6)),.3)
	end
	blink.Rate = 0
	blink.Enabled = false
	fir.Enabled = true
	local halt = 0
	while true do
		if holden == true then
	CFuncs["Sound"].Create("rbxassetid://150305126", centerR, 0.65, 1)
	RW.C0=clerp(RW.C0,cf(1.5,0.5,-0)*angles(math.rad(95),math.rad(0),math.rad(90)),1)
	local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    centerR.CFrame.p,                           -- origin
	    (mouse.Hit.p - centerR.CFrame.p).unit * 500 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (centerR.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(centerR.CFrame.p, position) * CFrame.new(0, 0, 0)
				 local lb = Instance.new("Part")
  lb.Parent = char
    lb.Color = orgcl.Color
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 1
     lb.Size = vt(0.25,0.25,0.25)
     lb.CFrame = a.CFrame*CFrame.new(math.random(-30,30)/60,math.random(-30,30)/60,0)
lb.Anchored = false
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
local trl = Instance.new("Trail",lb)
	local a0 = Instance.new("Attachment",lb)
	a0.Position = Vector3.new(0.25,0,0)
	local a1 = Instance.new("Attachment",lb)
	a1.Position = Vector3.new(-0.25,0,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.FaceCamera = true
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.25
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*300
  bv.Parent = lb
local hitted = false
game:GetService("Debris"):AddItem(a, 0.1)
coroutine.resume(coroutine.create(function()
swait(10)
lb.Touched:connect(function(hit)
if hitted == false and hit.Parent ~= char then
local hbax = CreateParta(lb,1,1,"SmoothPlastic",BrickColor.random())
hbax.CFrame = lb.CFrame
hbax.Anchored = true
sphere2(2.5,"Add",hbax.CFrame,vt(0,0,0),0.1,0.1,0.1,orgcl,orgcl.Color)
sphere2(5,"Add",hbax.CFrame,vt(0,0,0),0.1,0.1,0.1,orgcl,orgcl.Color)
coroutine.resume(coroutine.create(function()
for i = 1, math.random(3,8) do
	trailMK(math.random(4,5),math.random(50,200)/1000,"Add",hbax.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,-0.0025,orgcl.Color,0)
end
end))
MagniDamage(hbax,10,8,15,0,"Normal",153092227)
hitted = true
lb.Transparency = 1
lb.Anchored = true
trl.Disabled = false
wait(1)
lb:Destroy()
end
end)
end))
	for i = 0, 1 ,0.2 do
		swait()
		halt = halt + 15
		trailMK(math.random(8,10),math.random(25,50)/50,"Add",centerR.CFrame*CFrame.Angles(math.rad(-90 + math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10))),0.25,0,orgcl.Color,0,1)
		hologrmgun.C0=clerp(hologrmgun.C0,cf(0,0,0)*angles(math.rad(0),math.rad(halt),math.rad(0)),1)
		hgwR0.C1=clerp(hgwR0.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR1.C1=clerp(hgwR1.C1,cf(0,0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR2.C1=clerp(hgwR2.C1,cf(0,-0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR3.C1=clerp(hgwR3.C1,cf(0,0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR4.C1=clerp(hgwR4.C1,cf(0,-0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR5.C1=clerp(hgwR5.C1,cf(0,0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
		hgwR6.C1=clerp(hgwR6.C1,cf(0,-0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(-25)),.5)
LH.C0=clerp(LH.C0,cf(-1,-0.6,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-20)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.025,-0.6)*angles(math.rad(0),math.rad(0),math.rad(90)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(-90)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0)*angles(math.rad(90),math.rad(0),math.rad(90)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(-60)),.5)
	end
elseif holden == false then
	attack = false
	fir.Enabled = false
	coroutine.resume(coroutine.create(function()
		for i = 0, 4 ,0.1 do
		swait()
		halt = halt + 15
	for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Transparency = part.Transparency + 0.016
		end
	end
		hologrmgun.C0=clerp(hologrmgun.C0,cf(0,0,0)*angles(math.rad(0),math.rad(halt),math.rad(0)),1)
		hgwR0.C1=clerp(hgwR0.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR1.C1=clerp(hgwR1.C1,cf(0,0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR2.C1=clerp(hgwR2.C1,cf(0,-0.6,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		hgwR3.C1=clerp(hgwR3.C1,cf(0,0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR4.C1=clerp(hgwR4.C1,cf(0,-0.6,0)*angles(math.rad(60),math.rad(0),math.rad(90)),.05)
		hgwR5.C1=clerp(hgwR5.C1,cf(0,0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
		hgwR6.C1=clerp(hgwR6.C1,cf(0,-0.6,0)*angles(math.rad(-60),math.rad(0),math.rad(90)),.05)
		hgwRA1.C1=clerp(hgwRA1.C1,cf(2.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA2.C1=clerp(hgwRA2.C1,cf(2,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA3.C1=clerp(hgwRA3.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA4.C1=clerp(hgwRA4.C1,cf(-3,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
	hgwRA5.C1=clerp(hgwRA5.C1,cf(-2,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.05)
		end
	for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Transparency = 1
		end
	end
	end))
	hum.WalkSpeed = 50
	break
	end
	end
end
local holdingRocc = false
local truerock = nil
function rocc()
	attack = true
	hum.WalkSpeed = 0
	hum.JumpPower = 0
for i = 0, 3 ,0.15 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1.2,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(60),math.rad(-10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.2,0)*angles(math.rad(-5),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(10),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0.6)*angles(math.rad(140),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
end
CFuncs["Sound"].Create("rbxassetid://2295409459", rarm, 2, 0.8)
local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
	localshakes(0.2,1)
	CFuncs["Sound"].Create("rbxassetid://199145477", root, 1, 0.9)
sphere2(5,"Add",root.CFrame*CFrame.new(0,0,-3),vt(3,0,3),0,0.7,0,bc("White"),Color3.new(1,1,1))
sphere2(5,"Add",root.CFrame*CFrame.new(0,0,-3),vt(3,0,3),0.05,0.7,0.05,bc("White"),Color3.new(1,1,1))
local rotation = 0
for i = 0, 35 do
rotation = rotation + 10
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(2,3),math.random(2,3),math.random(2,3))
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.new(0,0,-3)*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-5,2)*CFrame.Angles(math.rad(math.random(20,30)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-1,1),0)
local debb = Instance.new("Part", char)
debb.Anchored = true
debb.CanCollide = false
debb.FormFactor = 3
debb.Name = "Ring"
debb.Material = hf.Material
debb.Color = hf.Color
debb.Size = vt(math.random(3,4),math.random(2,3),math.random(3,4))
debb.Transparency = 0
debb.TopSurface = 0
debb.BottomSurface = 0
debb.CFrame = root.CFrame*CFrame.new(0,0,-3)*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-5.5,3.5)*CFrame.Angles(math.rad(math.random(10,20)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-1,1),0)
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(1,2),math.random(1,2),math.random(1,2))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = root.CFrame*CFrame.new(0,-3,-3)
deb2.Velocity = vt(math.random(-20,20),math.random(30,60),math.random(-20,20))
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,0.5,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-0.5,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,1,1))
tl.LightEmission = 1
tl.Lifetime = 0.5
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(debb,30)
game:GetService("Debris"):AddItem(deb2,5)
coroutine.resume(coroutine.create(function()
	wait(0.5)
	deb2.CanCollide = true
	wait(5)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
		debb.Transparency = debb.Transparency + 0.04
	end
	deb:Destroy()
	debb:Destroy()
end))
end
end
for i = 0, 6 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.2,-0.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(30)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.6,-0.8)*angles(math.rad(40),math.rad(0),math.rad(30)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(-20),math.rad(-30)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-1.1)*angles(math.rad(40),math.rad(0),math.rad(30)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-60)),.5)
end
if hf ~= nil then
	holdingRocc = true
local rockz = CreateParta(char,0,0,"Plastic",BrickColor.random())
rockz.Color = hf.Color
rockz.Material = hf.Material
rockz.Transparency = hf.Transparency
rockz.Reflectance = hf.Reflectance
CreateMesha(rockz,"Brick",3,3,3)
CreateWelda(rockz,sorb,rockz,0,0,0,math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),0,0,0,math.rad(0),math.rad(0),math.rad(0))
truerock = rockz
end
attack = false
hum.WalkSpeed = 50
hum.JumpPower = 50
end
function throwRocc()
	hum.WalkSpeed = 2
	attack = true
	for i = 0, 4 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(-25)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(6),math.rad(0),math.rad(8)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.6,-0.5)*angles(math.rad(-20),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(20),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,1.2,-0.4)*angles(math.rad(210),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-40)),.3)
	end
	CFuncs["Sound"].Create("rbxassetid://2295409459", rarm, 3, 0.7)
	holdingRocc = false
	local a = Instance.new("Part",Character)
	a.Name = "Direction"	
	a.Anchored = true
	a.BrickColor = bc("Bright red")
a.Material = "Neon"
a.Transparency = 1
	a.CanCollide = false
	local ray = Ray.new(
	    centerR.CFrame.p,                           -- origin
	    (mouse.Hit.p - centerR.CFrame.p).unit * 500 -- direction
	) 
	local ignore = Character
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	local distance = (centerR.CFrame.p - position).magnitude
	a.Size = Vector3.new(0.1, 0.1, 0.1)
	a.CFrame = CFrame.new(centerR.CFrame.p, position) * CFrame.new(0, 0, 0)
				 local lb = Instance.new("Part")
  lb.Parent = char
    lb.Color = truerock.Color
     lb.CanCollide = false
lb.Material = truerock.Material
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = truerock.Transparency
lb.Reflectance = truerock.Reflectance
     lb.Size = vt(0.5,0.5,0.5)
     lb.CFrame = a.CFrame
lb.Anchored = false
lb.RotVelocity = vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Brick"
thingery.Scale = vt(6,6,6)
local trl = Instance.new("Trail",lb)
	local a0 = Instance.new("Attachment",lb)
	a0.Position = Vector3.new(1.5,0,0)
	local a1 = Instance.new("Attachment",lb)
	a1.Position = Vector3.new(-1.5,0,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.FaceCamera = true
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.25
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
game:GetService("Debris"):AddItem(lb, 10)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = lb.CFrame.lookVector*150
  bv.Parent = lb
local hitted = false
game:GetService("Debris"):AddItem(a, 0.1)
coroutine.resume(coroutine.create(function()
swait(10)
lb.Touched:connect(function(hit)
if hitted == false and hit.Parent ~= char then
local hbax = CreateParta(lb,1,1,"SmoothPlastic",BrickColor.random())
hbax.CFrame = lb.CFrame
hbax.Anchored = true
sphere2(2.5,"Add",hbax.CFrame,vt(0,0,0),0.2,0.2,0.2,bc("White"),Color3.new(1,1,1))
sphere2(5,"Add",hbax.CFrame,vt(0,0,0),0.2,0.2,0.2,bc("White"),Color3.new(1,1,1))
CFuncs["Sound"].Create("rbxassetid://199145477", hbax, 1, 0.75)
coroutine.resume(coroutine.create(function()
for i = 1, math.random(6,12) do
	trailMK(math.random(2,5),math.random(50,400)/1000,"Add",hbax.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,-0.0025,Color3.new(1,1,1),0)
end
for i = 0, math.random(14,24) do
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = lb.Material
deb2.Color = lb.Color
deb2.Size = vt(math.random(1,2),math.random(1,2),math.random(1,2))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = lb.CFrame
deb2.Velocity = vt(math.random(-40,40),math.random(30,60),math.random(-40,40))
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,0.5,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-0.5,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,1,1))
tl.LightEmission = 1
tl.Lifetime = 0.5
game:GetService("Debris"):AddItem(deb2,5)
coroutine.resume(coroutine.create(function()
	wait(0.5)
	deb2.CanCollide = true
end))
end
end))
MagniDamage(hbax,18,15,25,0,"Normal",153092227)
hitted = true
lb.Transparency = 1
lb.Anchored = true
trl.Disabled = false
wait(1)
lb:Destroy()
end
end)
end))
truerock:Destroy()
	for i = 0, 5 ,0.2 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.6,-0.3)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-45),math.rad(0),math.rad(-25)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(15),math.rad(0),math.rad(8)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.6,-0.6)*angles(math.rad(20),math.rad(0),math.rad(60)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(-10),math.rad(-60)),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.6)*angles(math.rad(60),math.rad(0),math.rad(-10)),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(40),math.rad(0),math.rad(-60)),.4)
	end
	attack = false
	hum.WalkSpeed = 50
end
function VErupt()
	attack = true
	hum.WalkSpeed = 0
	CFuncs["Sound"].Create("rbxassetid://2923164079", root, 4, 1)
	for i = 0, 9 ,0.2 do
		swait()
		sphere2(4,"Add",rarm.CFrame*CFrame.new(0,-2,0),vt(0,0,0),0.035,0.035,0.035,bc("Neon orange"),Color3.new(1,0.3,0))
		sphere2(4,"Add",larm.CFrame*CFrame.new(0,-2,0),vt(0,0,0),0.035,0.035,0.035,bc("Neon orange"),Color3.new(1,0.3,0))
RH.C0=clerp(RH.C0,cf(1,-1,-0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(5),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(5),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.4,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(-0),math.rad(-0)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(110)),.2)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(-110)),.2)
	end
	CFuncs["Sound"].Create("rbxassetid://2923152577", root, 4, 1)
	CFuncs["Sound"].Create("rbxassetid://824687369", root, 3, 1)
	CFuncs["Sound"].Create("rbxassetid://153092227", root, 2, 0.8)
	localshakes(0.5,0.75)
	MagniDamage(root,25,20,30,0,"Normal",153092227)
	sphere2(1,"Add",root.CFrame*CFrame.new(0,-2.8,0),vt(0,0,0),1,1,1,bc("Neon orange"),Color3.new(1,0.3,0))
	sphere2(2,"Add",root.CFrame*CFrame.new(0,-2.8,0),vt(0,0,0),1,1,1,bc("Neon orange"),Color3.new(1,0.3,0))
	sphere2(3,"Add",root.CFrame*CFrame.new(0,-2.8,0),vt(0,0,0),1,1,1,bc("Neon orange"),Color3.new(1,0.3,0))
	sphere2(4,"Add",root.CFrame*CFrame.new(0,-2.8,0),vt(0,0,0),1,1,1,bc("Neon orange"),Color3.new(1,0.3,0))
	local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
for i = 0, 49 do
slash(math.random(10,20)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(math.rad(math.random(-4,4)),math.rad(math.random(-360,360)),math.rad(math.random(-4,4))),vt(0.01,0.001,0.01),math.random(125,250)/250,BrickColor.new("Neon orange"))
end
local rotation = 0
for i = 0, 35 do
rotation = rotation + 10
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(50,60)/4,math.random(25,35)/4,math.random(50,60)/4)
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-6,100/4)*CFrame.Angles(math.rad(math.random(20,30)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debb = Instance.new("Part", char)
debb.Anchored = true
debb.CanCollide = false
debb.FormFactor = 3
debb.Name = "Ring"
debb.Material = hf.Material
debb.Color = hf.Color
debb.Size = vt(math.random(40,50)/4,math.random(19,25)/4,math.random(40,50)/4)
debb.Transparency = 0
debb.TopSurface = 0
debb.BottomSurface = 0
debb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-7,125/4)*CFrame.Angles(math.rad(math.random(10,20)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debc = Instance.new("Part", char)
debc.Anchored = true
debc.CanCollide = false
debc.FormFactor = 3
debc.Name = "Ring"
debc.Material = hf.Material
debc.Color = hf.Color
debc.Size = vt(math.random(35,40)/4,math.random(14,18)/4,math.random(35,40)/4)
debc.Transparency = 0
debc.TopSurface = 0
debc.BottomSurface = 0
debc.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-7,150/4)*CFrame.Angles(math.rad(math.random(5,10)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(50,60)/16,math.random(50,60)/16,math.random(50,60)/16)
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = root.CFrame
deb2.Velocity = vt(math.random(-300,300)/4,math.random(250,500)/4,math.random(-300,300)/4)
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,20/16,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-20/16,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,1,1))
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(debb,30)
game:GetService("Debris"):AddItem(debc,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
	wait(15)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
		debb.Transparency = debb.Transparency + 0.04
		debc.Transparency = debc.Transparency + 0.04
	end
	deb:Destroy()
	debb:Destroy()
	debc:Destroy()
end))
end
end
	for i = 0, math.random(6,16) do
		local lb = Instance.new("Part")
  lb.Parent = char
    lb.Color = orgcl.Color
     lb.CanCollide = false
lb.Material = "Neon"
     lb.Anchored = true
lb.TopSurface = 0
        lb.BottomSurface = 0
     lb.Transparency = 0
     lb.Size = vt(0.5,0.5,0.5)
     lb.CFrame = root.CFrame*CFrame.new(math.random(-10,10),-3,math.random(-10,10))
lb.Anchored = false
lb.Velocity = Vector3.new(math.random(-60,60),math.random(75,150),math.random(-60,60))
lb.RotVelocity = vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
local thingery = Instance.new("SpecialMesh",lb)
     thingery.MeshType = "Sphere"
thingery.Scale = vt(4,4,4)
local trl = Instance.new("Trail",lb)
	local a0 = Instance.new("Attachment",lb)
	a0.Position = Vector3.new(1,0,0)
	local a1 = Instance.new("Attachment",lb)
	a1.Position = Vector3.new(-1,0,0)
	trl.Attachment0 = a0
	trl.Attachment1 = a1
	trl.FaceCamera = true
	trl.Color = ColorSequence.new(orgcl.Color)
	trl.Lifetime = 0.25
	trl.LightEmission = 1
	trl.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
	trl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
game:GetService("Debris"):AddItem(lb, 10)
local hitted = false
coroutine.resume(coroutine.create(function()
swait(25)
 lb.CanCollide = true
lb.Touched:connect(function(hit)
if hitted == false and hit.Parent ~= char then
local hbax = CreateParta(lb,1,1,"SmoothPlastic",BrickColor.random())
hbax.CFrame = lb.CFrame
hbax.Anchored = true
sphere2(2,"Add",hbax.CFrame,vt(0,0,0),0.2,0.2,0.2,bc("Neon orange"),Color3.new(1,0.3,0))
sphere2(4,"Add",hbax.CFrame,vt(0,0,0),0.2,0.2,0.2,bc("Neon orange"),Color3.new(1,0.3,0))
sphere2(6,"Add",hbax.CFrame,vt(0,0,0),0.2,0.2,0.2,bc("Neon orange"),Color3.new(1,0.3,0))
CFuncs["Sound"].Create("rbxassetid://782353443", hbax, 1, 1)
CFuncs["Sound"].Create("rbxassetid://2295409845", hbax, 0.75, 1.25)
for i = 1, math.random(4,9) do
	trailMK(math.random(1,2),math.random(50,1000)/1000,"Add",hbax.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,-0.0025,Color3.new(1,0.3,0),0)
end
coroutine.resume(coroutine.create(function()
for i = 0, math.random(2,4) do
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = lb.Material
deb2.Color = lb.Color
deb2.Size = vt(math.random(1,2),math.random(1,2),math.random(1,2))
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = lb.CFrame
deb2.Velocity = vt(math.random(-20,20),math.random(20,40),math.random(-20,20))
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,0.5,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-0.5,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,0.3,0))
tl.LightEmission = 1
tl.Lifetime = 0.5
game:GetService("Debris"):AddItem(deb2,5)
coroutine.resume(coroutine.create(function()
	wait(0.5)
	deb2.CanCollide = true
end))
end
end))
MagniDamage(hbax,16,10,40,0,"Normal",153092227)
hitted = true
lb.Transparency = 1
lb.Anchored = true
trl.Disabled = false
wait(1)
lb:Destroy()
end
end)
end))
	end
	for i = 0, 4 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.3,-0.2)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(5),math.rad(-10)),.6)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(5),math.rad(20)),.6)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-1.4,-1.8)*angles(math.rad(60),math.rad(0),math.rad(0)),.6)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(-0),math.rad(-0)),.6)
RW.C0=clerp(RW.C0,cf(1.5,0.5,-0.4)*angles(math.rad(60),math.rad(0),math.rad(-10)),.6)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,-0.4)*angles(math.rad(60),math.rad(0),math.rad(10)),.6)
	end
	hum.WalkSpeed = 50
	attack = false
end
----
function visibgaunt(a)
	for i,v in pairs(a:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Transparency = 0
	end
end
end
function invisibgaunt(a)
for i,v in pairs(a:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") then
		v.Transparency = 1
	end
end
end
-------------------------------------
function LUL()
hum.WalkSpeed = 0
attack = true
orgcl = BrickColor.new("Really red")
local bp = Instance.new("BodyPosition",tors)
bp.Position = root.Position + Vector3.new(0,35,0)
bp.MaxForce = Vector3.new(50000,100000,50000)
bp.P = 50000
local siz = 0
CFuncs["Sound"].Create("rbxassetid://1895411681", tors, 2,1)
for i = 0, 29 do
	sphereMK(math.random(1,2),math.random(5,15)/15,"Add",root.CFrame*CFrame.new(math.random(-10,10),-3,math.random(-10,10))*CFrame.Angles(math.rad(90),0,0),0.5,0.5,math.random(1,2),0,Color3.fromRGB(255,0,0),0,1)
end
for i = 0, 3 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.3,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1,0.75,-0.4)*angles(math.rad(160),math.rad(0),math.rad(-30)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.75,-0.4)*angles(math.rad(160),math.rad(0),math.rad(30)),.2)
end
CFuncs["Sound"].Create("rbxassetid://2374026404", tors, 1.5,0.8)
for i = 0, 5 ,0.1 do
		swait()
		siz = siz + 0.005
		localshakes(siz/2,0.2)
		sphere2(2.5,"Add",tors.CFrame,vt(0,0,0),siz,siz,siz,bc("Really red"),Color3.new(1,0,0))
trailMK(math.random(2,5),-0.5,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))*CFrame.new(0,0,-25),2,-0.0025,Color3.fromRGB(255,0,0),0)
RH.C0=clerp(RH.C0,cf(1,-0.3,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0)),.2)
RW.C0=clerp(RW.C0,cf(1,0.75,-0.4)*angles(math.rad(160),math.rad(0),math.rad(-30)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.75,-0.4)*angles(math.rad(160),math.rad(0),math.rad(30)),.2)
end
localshakes(2,2)
invisibgaunt(gntl.StrobeGauntlet)
invisibgaunt(gntl2.StrobeGauntlet)
visibgaunt(gntl.TemperGauntlet)
visibgaunt(gntl2.TemperGauntlet)
invisibgaunt(gntl.AbyssGauntlet)
invisibgaunt(gntl2.AbyssGauntlet)
invisibgaunt(gntl.IgneusGauntlet)
invisibgaunt(gntl2.IgneusGauntlet)
for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Color = orgcl.Color
		end
end
for i,v in pairs(tg:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundColor3 = orgcl.Color
	elseif v:IsA("TextLabel") then
		v.TextColor3 = orgcl.Color
	end
end
blink.Color = ColorSequence.new(orgcl.Color)
fir.Color = ColorSequence.new(orgcl.Color)
sphere2(2.5,"Add",tors.CFrame,vt(1,1,1),0.3,0.3,0.3,bc("Really red"),Color3.new(1,0,0))
sphere2(2.5,"Add",tors.CFrame,vt(1,1,1),0.6,0.6,0.6,bc("Really red"),Color3.new(1,0,0))
sphere2(5,"Add",tors.CFrame,vt(1,1,1),0.3,0.3,0.3,bc("Really red"),Color3.new(1,0,0))
sphere2(5,"Add",tors.CFrame,vt(1,1,1),0.6,0.6,0.6,bc("Really red"),Color3.new(1,0,0))
CFuncs["Sound"].Create("rbxassetid://2295409845", tors, 3,0.9)
CFuncs["Sound"].Create("rbxassetid://3041462242", tors, 2,1)
CFuncs["Sound"].Create("rbxassetid://3190948728", tors, 4,0.5)
ModeType = "R"
newTheme("rbxassetid://1751171913",0,1.01,0.5)
for i = 0, 49 do
	sphereMK(math.random(1,2),math.random(5,25)/15,"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.85,0.85,3,0,Color3.fromRGB(255,0,0),0,1)
end
for i = 0, 9 ,0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-20),math.rad(0),math.rad(-35)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-20),math.rad(0),math.rad(35)),.5)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25),math.rad(0),math.rad(0)),.5)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(60)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(-60)),.5)
end
bp:Destroy()
attack = false
storehumanoidWS = 16
hum.WalkSpeed = 50
end
-------------------------------------

function h()
	attack = true
	local dist = 1000
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	--[[CFuncs["Sound"].Create("rbxassetid://3028505295", char, 0.5,1.3)
	CFuncs["LongSound"].Create("rbxassetid://1177785010", char, 1, 1)
	sphere2(6,"Add",root.CFrame,vt(20,800000,20),-0.1,0.25,-0.1,MAINRUINCOLOR)
	sphere2(8,"Add",root.CFrame,vt(35,800000,35),-0.25,0.25,-0.25,MAINRUINCOLOR)]]--
	for i = 0, 7, 0.1 do
		swait()
		dist = dist - 12.5
		RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,dist)*angles(math.rad(-20),math.rad(0),math.rad(0)),1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(-80)),.3)
	end
	CFuncs["Sound"].Create("rbxassetid://824687369", root, 8, 1)
	CFuncs["Sound"].Create("rbxassetid://438666141", root, 6, 0.75)
	sphere2(2,"Add",root.CFrame,vt(8,8,8),2,2,2,bc("White"),Color3.new(1,1,1))
	sphere2(3,"Add",root.CFrame,vt(8,8,8),2,2,2,bc("White"),Color3.new(1,1,1))
	sphere2(4,"Add",root.CFrame,vt(8,8,8),2,2,2,bc("White"),Color3.new(1,1,1))
	sphere2(2,"Add",root.CFrame,vt(8,8,8),4,4,4,bc("White"),Color3.new(1,1,1))
	sphere2(3,"Add",root.CFrame,vt(8,8,8),4,4,4,bc("White"),Color3.new(1,1,1))
	sphere2(4,"Add",root.CFrame,vt(8,8,8),4,4,4,bc("White"),Color3.new(1,1,1))
for i = 0, 49 do
slash(math.random(10,20)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.001,0.05),math.random(5,1500)/250,BrickColor.new("White"))
slash(math.random(10,20)/10,3,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-360,360)),math.rad(math.random(-10,10))),vt(0.05,0.001,0.05),math.random(5,150)/250,BrickColor.new("White"))
end
local hf,pf=rayCast(root.Position,(CFrame.new(root.Position,root.Position - vt(0,1,0))).lookVector,4,char)
if hf ~= nil then
local rotation = 0
for i = 0, 35 do
rotation = rotation + 10
local deb = Instance.new("Part", char)
deb.Anchored = true
deb.CanCollide = false
deb.FormFactor = 3
deb.Name = "Ring"
deb.Material = hf.Material
deb.Color = hf.Color
deb.Size = vt(math.random(50,60)/4,math.random(25,35)/4,math.random(50,60)/4)
deb.Transparency = 0
deb.TopSurface = 0
deb.BottomSurface = 0
deb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-5,150/4)*CFrame.Angles(math.rad(math.random(20,30)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debb = Instance.new("Part", char)
debb.Anchored = true
debb.CanCollide = false
debb.FormFactor = 3
debb.Name = "Ring"
debb.Material = hf.Material
debb.Color = hf.Color
debb.Size = vt(math.random(40,50)/4,math.random(19,25)/4,math.random(40,50)/4)
debb.Transparency = 0
debb.TopSurface = 0
debb.BottomSurface = 0
debb.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-7,175/4)*CFrame.Angles(math.rad(math.random(10,20)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local debc = Instance.new("Part", char)
debc.Anchored = true
debc.CanCollide = false
debc.FormFactor = 3
debc.Name = "Ring"
debc.Material = hf.Material
debc.Color = hf.Color
debc.Size = vt(math.random(35,40)/4,math.random(14,18)/4,math.random(35,40)/4)
debc.Transparency = 0
debc.TopSurface = 0
debc.BottomSurface = 0
debc.CFrame = root.CFrame*CFrame.Angles(0,math.rad(rotation),0)*CFrame.new(0,-7,200/4)*CFrame.Angles(math.rad(math.random(5,10)),math.rad(0),math.rad(0))*CFrame.new(0,math.random(-5,5),0)
local deb2 = Instance.new("Part", char)
deb2.CanCollide = false
deb2.FormFactor = 3
deb2.Name = "Ring"
deb2.Material = hf.Material
deb2.Color = hf.Color
deb2.Size = vt(math.random(50,60)/4,math.random(50,60)/4,math.random(50,60)/4)
deb2.Transparency = 0
deb2.TopSurface = 0
deb2.BottomSurface = 0
deb2.CFrame = root.CFrame
deb2.Velocity = vt(math.random(-300,300)/4,math.random(250,500)/2,math.random(-300,300)/4)
deb2.RotVelocity = vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
local at1 = Instance.new('Attachment',deb2)
at1.Position = vt(0,20/4,0)
local at2 = Instance.new('Attachment',deb2)
at2.Position = vt(0,-20/4,0)
local tl = Instance.new('Trail',deb2)
tl.Attachment0 = at1
tl.Attachment1 = at2
tl.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl.Color = ColorSequence.new(Color3.new(1,1,1))
tl.LightEmission = 1
tl.Lifetime = 1
game:GetService("Debris"):AddItem(deb,30)
game:GetService("Debris"):AddItem(debb,30)
game:GetService("Debris"):AddItem(debc,30)
game:GetService("Debris"):AddItem(deb2,30)
coroutine.resume(coroutine.create(function()
	wait(15)
	for i = 0, 24 do
		swait()
		deb.Transparency = deb.Transparency + 0.04
		debb.Transparency = debb.Transparency + 0.04
		debc.Transparency = debc.Transparency + 0.04
	end
	deb:Destroy()
	debb:Destroy()
	debc:Destroy()
end))
end
end
	for i = 0, 15, 0.1 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-0.25,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(40)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.125)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.2,-0.75)*angles(math.rad(45),math.rad(0),math.rad(0)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(10)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-10)),.3)
	end
	attack = false
	hum.WalkSpeed = 50
	hum.JumpPower = 50
end
--h()
-------------------------------------

local attacktype = 1
Humanoid.Animator.Parent = nil
mouse.Button1Down:connect(function()
if holdingRocc == false then
  if attack == false and attacktype == 1 then
    attacktype = 2
    aone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    atwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    athree()
  elseif attack == false and attacktype == 4 then
    attacktype = 5
    --afour()
 elseif attack == false and attacktype == 5 then
    attacktype = 1
    --afive()
  end
elseif holdingRocc == true then
	if attack == false then
	throwRocc()
	end
end
end)
mouse.KeyDown:connect(function(k)
if k == "q" and attack == false and ModeType ~= "N" and holdingRocc == false then
ModeType = "N"
storehumanoidWS = 16
hum.WalkSpeed = 50
visibgaunt(gntl.StrobeGauntlet)
visibgaunt(gntl2.StrobeGauntlet)
invisibgaunt(gntl.TemperGauntlet)
invisibgaunt(gntl2.TemperGauntlet)
invisibgaunt(gntl.AbyssGauntlet)
invisibgaunt(gntl2.AbyssGauntlet)
invisibgaunt(gntl.IgneusGauntlet)
invisibgaunt(gntl2.IgneusGauntlet)
newTheme("rbxassetid://1882656833",0,1.01,0.5) -- 2485070323, Original: 2026469207
orgcl = BrickColor.new("White")
for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Color = orgcl.Color
		end
end
for i,v in pairs(tg:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundColor3 = orgcl.Color
	elseif v:IsA("TextLabel") then
		v.TextColor3 = orgcl.Color
	end
end
blink.Color = ColorSequence.new(orgcl.Color)
fir.Color = ColorSequence.new(orgcl.Color)
end
if k == "e" and attack == false and ModeType ~= "A" and holdingRocc == false then
ModeType = "A"
storehumanoidWS = 16
hum.WalkSpeed = 50
newTheme("rbxassetid://2606277947",0,1.01,0.5)
orgcl = BrickColor.new("Royal purple")
invisibgaunt(gntl.StrobeGauntlet)
invisibgaunt(gntl2.StrobeGauntlet)
invisibgaunt(gntl.TemperGauntlet)
invisibgaunt(gntl2.TemperGauntlet)
invisibgaunt(gntl.IgneusGauntlet)
invisibgaunt(gntl2.IgneusGauntlet)
visibgaunt(gntl.AbyssGauntlet)
visibgaunt(gntl2.AbyssGauntlet)
blink.Color = ColorSequence.new(orgcl.Color)
fir.Color = ColorSequence.new(orgcl.Color)
for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Color = orgcl.Color
		end
end
for i,v in pairs(tg:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundColor3 = orgcl.Color
	elseif v:IsA("TextLabel") then
		v.TextColor3 = orgcl.Color
	end
end
end
if k == "r" and attack == false and ModeType ~= "R" and holdingRocc == false then
LUL()
end
if k == "t" and attack == false and ModeType ~= "S" and holdingRocc == false then
ModeType = "S"
storehumanoidWS = 16
hum.WalkSpeed = 50
newTheme("rbxassetid://1492179112",0,1.01,0.5)
orgcl = BrickColor.new("Neon orange")
invisibgaunt(gntl.StrobeGauntlet)
invisibgaunt(gntl2.StrobeGauntlet)
invisibgaunt(gntl.TemperGauntlet)
invisibgaunt(gntl2.TemperGauntlet)
visibgaunt(gntl.IgneusGauntlet)
visibgaunt(gntl2.IgneusGauntlet)
invisibgaunt(gntl.AbyssGauntlet)
invisibgaunt(gntl2.AbyssGauntlet)
blink.Color = ColorSequence.new(orgcl.Color)
fir.Color = ColorSequence.new(orgcl.Color)
for a,part in pairs(gatlR:GetChildren()) do
		if part:IsA("Part") or part:IsA("UnionOperation") then
			part.Color = orgcl.Color
		end
end
for i,v in pairs(tg:GetDescendants()) do
	if v:IsA("Frame") then
		v.BackgroundColor3 = orgcl.Color
	elseif v:IsA("TextLabel") then
		v.TextColor3 = orgcl.Color
	end
end
end
if k == "l" and mutedtog == false then
mutedtog = true
kan.Volume = 0
elseif k == "l" and mutedtog == true then
mutedtog = false
kan.Volume = 1.25
end
if k == "p" and toggleTag == false then
toggleTag = true
tg.Enabled = true
elseif k == "p" and toggleTag == true then
toggleTag = false
tg.Enabled = false
end
if holdingRocc == false then
if k == "z" and attack == false then
rocc()
end
if k == "x" and attack == false then
if ModeType == "S" then
	VErupt()
end
end
if k == "c" and attack == false and holden == false then
holden = true
hm()
end
if k == "v" and attack == false then
bigjoke()
end
if k == "b" and attack == false then
--uberult()
end
end
--[[if k == "m" and attack == false and OVERPOWER == false and plr.UserId == 98888707 then ---- dont customize this or anything else
OVERPOWER = true
elseif k == "m" and attack == false and OVERPOWER == true and plr.UserId == 98888707 then
OVERPOWER = false
end]]--
end)
mouse.KeyUp:connect(function(k)
if k == "c" and attack == true and holden == true then
holden = false
end
end)


local rotationa = 0
coroutine.resume(coroutine.create(function()
	while true do
		swait()
		if ModeType == "A" then
		slash(math.random(6,8),1,true,"Round","Add","Out",larm.CFrame*CFrame.new(0,-0.8 + 0.1 * math.cos(sine / 125),0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.0075 - 0.0025 * math.cos(sine / 125),0.0001,0.0075 - 0.0025 * math.cos(sine / 125)),math.random(1,2)/250,BrickColor.new("Royal purple"))
		slash(math.random(6,8),1,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-0.8 + 0.1 * math.cos(sine / 125),0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.0075 - 0.0025 * math.cos(sine / 125),0.0001,0.0075 - 0.0025 * math.cos(sine / 125)),math.random(1,2)/250,BrickColor.new("Royal purple"))
		slash(math.random(6,8),1,true,"Round","Add","Out",larm.CFrame*CFrame.new(0,-0.8 - 0.1 * math.cos(sine / 125),0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.0075 + 0.0025 * math.cos(sine / 125),0.0001,0.0075 + 0.0025 * math.cos(sine / 125)),math.random(1,2)/250,BrickColor.new("Royal purple"))
		slash(math.random(6,8),1,true,"Round","Add","Out",rarm.CFrame*CFrame.new(0,-0.8 - 0.1 * math.cos(sine / 125),0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.0075 + 0.0025 * math.cos(sine / 125),0.0001,0.0075 + 0.0025 * math.cos(sine / 125)),math.random(1,2)/250,BrickColor.new("Royal purple"))
		elseif ModeType == "R" then
			rotationa = rotationa + 10
			slash(math.random(5,8),2,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.01,0.0001,0.01),math.random(20,25)/250,BrickColor.new("Really red"))
trailMK(math.random(4,6),math.random(1,500)/1000,"Add",root.CFrame*CFrame.Angles(0,math.rad(0+rotationa),0)*CFrame.new(math.random(-15,15),-3,math.random(-15,15))*CFrame.Angles(math.rad(90 + math.random(-6,6)),math.rad(math.random(-6,6)),math.rad(math.random(-6,6))),1,-0.0025,Color3.fromRGB(255,0,0),0)
		elseif ModeType == "S" then
			sphereMKn(math.random(4,8),math.random(2,8)/100,"Add",rarm.CFrame*CFrame.new(math.random(-6,6)/10,-0.5 + math.random(-10,10)/10,math.random(-6,6)/10)*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),1,1,1,-0.01,Color3.fromRGB(255,100,0),0,1)
			sphereMKn(math.random(4,8),math.random(2,8)/100,"Add",larm.CFrame*CFrame.new(math.random(-6,6)/10,-0.5 + math.random(-10,10)/10,math.random(-6,6)/10)*CFrame.Angles(math.rad(90 + math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),1,1,1,-0.01,Color3.fromRGB(255,100,0),0,1)
		slash(math.random(5,8),2,true,"Round","Add","Out",root.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(math.rad(math.random(-3,3)),math.rad(math.random(-360,360)),math.rad(math.random(-3,3))),vt(0.01,0.0001,0.01),math.random(10,15)/250,BrickColor.new("Neon orange"))
		end
	end
end))
Instance.new("ForceField",char).Visible = false
idleanim=.4
while true do
if mutedtog == false then
kan.Volume = currentVol
elseif mutedtog == true then
kan.Volume = 0
end
CameraManager()
swait()
 sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(10),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
if ModeType == "N" then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(20 - 1 * math.cos(sine / 56)),math.rad(-1)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.01,0 + 0.1 * math.cos(sine / 20))*angles(math.rad(1),math.rad(0),math.rad(-40)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 5 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 58)),math.rad(40)),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,-0.1 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(140 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.15 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(120 + 3 * math.cos(sine / 20)),math.rad(3 - 1 * math.cos(sine / 59)),math.rad(-21 - 3 * math.cos(sine / 45))),.1)
elseif ModeType == "A" then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(5),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(50),math.rad(-1)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 20))*angles(math.rad(1),math.rad(0),math.rad(-50)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2 * math.cos(sine / 37)),math.rad(0),math.rad(50)),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),-0.1)*angles(math.rad(70 + 1 * math.cos(sine / 72)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(-10 + 1 * math.cos(sine / 45))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.25 + 0.025 * math.cos(sine / 45),-0.3)*angles(math.rad(120 - 1 * math.cos(sine / 66)),math.rad(1 - 1 * math.cos(sine / 59)),math.rad(-40 - 1 * math.cos(sine / 45))),.1)
elseif ModeType == "R" then
	local rtwi = math.random(1,30)
	if rtwi == 1 then
		if holdingRocc == false then
		RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.075 * math.cos(sine / 20),0)*angles(math.rad(0 + math.random(-5,5)),math.rad(2 + math.random(-5,5)),math.rad(15 + math.random(-5,5))),1)
		end
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.075 * math.cos(sine / 20),0)*angles(math.rad(0 + math.random(-5,5)),math.rad(2 + math.random(-5,5)),math.rad(-15 + math.random(-5,5))),1)
	end
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0 - 1 * math.cos(sine / 56)),math.rad(0)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 20))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 3 * math.cos(sine / 0.05)),math.rad(0 - 3 * math.cos(sine / 0.06)),math.rad(0 + 8 * math.cos(sine / 0.05))),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.075 * math.cos(sine / 20),0)*angles(math.rad(0 + 5 * math.cos(sine / 50)),math.rad(2 - 3 * math.cos(sine / 52)),math.rad(15 + 5 * math.cos(sine / 20))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.075 * math.cos(sine / 20),0)*angles(math.rad(0 + 5 * math.cos(sine / 50)),math.rad(2 - 3 * math.cos(sine / 52)),math.rad(-15 - 5 * math.cos(sine / 20))),.1)
elseif ModeType == "S" then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-40),math.rad(1)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 20),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-1),math.rad(10),math.rad(5)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.1 * math.cos(sine / 20))*angles(math.rad(1),math.rad(0),math.rad(50)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15 - 2 * math.cos(sine / 37)),math.rad(0),math.rad(-50)),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(10 + 1 * math.cos(sine / 72)),math.rad(15 - 1 * math.cos(sine / 58)),math.rad(30 + 1 * math.cos(sine / 45))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5 + 0.025 * math.cos(sine / 45),0)*angles(math.rad(10 - 1 * math.cos(sine / 66)),math.rad(20 - 1 * math.cos(sine / 59)),math.rad(-10 - 1 * math.cos(sine / 45))),.1)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
if ModeType == "N" then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 6)),math.rad(0 + 70 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 6)),math.rad(0 + 70 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.15,-0.05 - 0.05 * math.cos(sine / 3))*angles(math.rad(10 + 3 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 6))),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,0 + 0.025 * math.cos(sine / 20),-0.2)*angles(math.rad(135 + 3 * math.cos(sine / 20)),math.rad(8 - 1 * math.cos(sine / 58)),math.rad(-10 + 1 * math.cos(sine / 45))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0 + 0.025 * math.cos(sine / 45),-0.2)*angles(math.rad(135 + 3 * math.cos(sine / 20)),math.rad(-8 - 1 * math.cos(sine / 59)),math.rad(10 - 1 * math.cos(sine / 45))),.1)
elseif ModeType ~= "N" then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 6)),math.rad(0 + 55 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 6)),math.rad(0 + 55 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 3))*angles(math.rad(5 + 3 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 6))),.1)
if holdingRocc == false then
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 6))*angles(math.rad(0 - 60 * math.cos(sine / 6)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 3))),.1)
elseif holdingRocc == true then
RW.C0=clerp(RW.C0,cf(1.5,0.75 + 0.025 * math.cos(sine / 20),0)*angles(math.rad(160 + 3 * math.cos(sine / 20)),math.rad(2 - 1 * math.cos(sine / 58)),math.rad(4 + 3 * math.cos(sine / 45))),.1)
end
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 6))*angles(math.rad(0 + 60 * math.cos(sine / 6)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 3))),.1)
end
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 95 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(25 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 1 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 + 2 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 1 * math.cos(sine / 6))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(-10),math.rad(7 + 5 * math.cos(sine / 6))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0.3)*angles(math.rad(-50 + 10 * math.cos(sine / 3)),math.rad(10),math.rad(-7 - 5 * math.cos(sine / 6))),.1)
end
end
end
end
