


--God Slayer 




--[[wait(0.1)
-------------------------------
local p=game:service("Players").LocalPlayer
if  p.Name=="Reruderu" then
        p:Kick("go away, skid who uses crappy decompilers,v3rmie skid.")
elseif p.Name=="Rerumu" then
        p:Kick("no thanks, skid who uses crappy decompilers that they didnt make.also being an pathetic v3rmie kid")
end]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
local p=game:service("Players").LocalPlayer
local char=game.Workspace.non
script.Parent=char 
local torso=char.Torso
local hed=char.Head
local larm=char:FindFirstChild("Left Arm")
local rarm=char:FindFirstChild("Right Arm")
local lleg=char:FindFirstChild("Left Leg")
local rleg=char:FindFirstChild("Right Leg") 
local hum=char.Humanoid
local cam=workspace.CurrentCamera
local root=char.HumanoidRootPart
local mouse=p:GetMouse()
local hb=game:service("RunService").Heartbeat
local rs=game:service("RunService").Stepped
hum.MaxHealth=math.huge
hum.Health=hum.MaxHealth
local pgui=Instance.new("ScreenGui",p.PlayerGui)
random={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
local run = 50
local normal = 50
local color = "Really black"
local color2 = "Really blue"
local righteyebrickcolor = "Really blue"
local NumCol = 0,0,255
local GodSlayer = true
local Full = false
hum.WalkSpeed = 50
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
-------------------
local drinks="10722059"
local m="41707332"
local tx="41708701"
local ragesong="590156873"
local breaks="368270172"
local scream="527276541"
local Shirt = "rbxassetid://427841675"
local Pants = "rbxassetid://428282416"
-------------------


function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end

function chatfunc(text)
local chat = coroutine.wrap(function()
if char:FindFirstChild("TalkingBillBoard")~= nil then
char:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = char.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,255)
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
p.Chatted:connect(onChatted)
coroutine.resume(coroutine.create(function()
wait(2)
chatfunc("Allow me to show you what happens when I break my limiter..")
end))


local s0=Instance.new("Sound",char)
s0.SoundId="rbxassetid://"..ragesong
s0.Volume=1999
s0.Pitch=1
s0.Looped=true


local s02=Instance.new("Sound",char)
s02.SoundId="rbxassetid://978788235"
s02.Volume=1999
s02.Pitch=1
s02.Looped=false
s02:Play()

function Sound(ID,Parent,Vol,Pitch,Loop)
	local S0 = Instance.new("Sound",Parent)
	S0.SoundId = ID
	S0.Volume = Vol
	S0.Looped = Loop
	S0.Pitch = Pitch
	wait(.1)
	S0:Play()
end
function weld(a, b, acf)
	local w = Instance.new("Weld", a)
	w.Part0 = a
	w.Part1 = b
	w.C0 = acf
end


wait(9)
char.Head.face:Destroy()
local reye = Instance.new("Part", char)
reye.CanCollide = false
reye.BrickColor = BrickColor.new(righteyebrickcolor)
reye.Material = "Neon"
reye.Size = Vector3.new(.15,.15,.15)
weld(reye, char.Head, CFrame.new(0.15,-0.2,0.55), CFrame.new(1,0,0))
m1 = Instance.new("SpecialMesh", reye)
m1.MeshType = "Sphere"
m1.Scale = Vector3.new(0.9,0.9,0.9)
reye.Locked = true
reye.Name = "re"

local leye = Instance.new("Part", char)
leye.CanCollide = false
leye.BrickColor = BrickColor.new(righteyebrickcolor)
leye.Material = "Neon"
leye.Size = Vector3.new(.15,.15,.15)
weld(leye, char.Head, CFrame.new(-0.15,-0.2,0.55), CFrame.new(1,0,0))
local m = Instance.new("SpecialMesh", leye)
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.9,0.9,0.9)
leye.Locked = true
leye.Name = "le"

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(2)
for i=0,1,0.2 do
wait()
m.Scale = Vector3.new(.9,.9-.8*i,.5)
end
for i=0,1,0.2 do
wait()
m.Scale = Vector3.new(.9,.9+.8*i,.5)
end
end
end),leye,weld)

coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(2)
for z=0,1,0.2 do
wait()
m1.Scale = Vector3.new(.9,.9-.8*z,.5)
end
for z=0,1,0.2 do
wait()
m1.Scale = Vector3.new(.9,.9+.8*z,.5)
end
end
end),reye,weld)



function fnt(pos,dist,splr)
    if splr then return(splr.Torso.CFrame.p -pos).magnitude < dist end
        local list = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -pos).magnitude <= dist then
                            table.insert(list,v)
                        end
                    end
                end
            end
        end
    return list
end
function fnp(pos,dist,splr)
    if splr then return(splr.Torso.CFrame.p -pos).magnitude < dist end
        local list = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Part")then
                    if v ~= char and v.Name~="Car" and v~=torso and v.Name~="Base" and v.Name~="Baseplate" then
                        if(v.Position -pos).magnitude <= dist then
                            table.insert(list,v)
                        end
                end
            end
        end
    return list
end
fw = function(wp0, wp1, wc0x, wc0y, wc0z) -- fast weld
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
local trans=false
------------------------------------
------------------------------------
anim="idle"
local sine=0
local add=0
local value=0
local ffing=false
local msgs=0
attack=false
NoAnims=false
----preparing character----






function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end 
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end

function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------



fw(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
fw(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
fw(torso, hed, 0, 1.5, 0)
fw(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
fw(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
fw(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
--------------rot------------
local r=0
local radd=0.04
coroutine.wrap(function()
while rs:wait() do
r=r+radd
end
end)()
attack = false
-----------------------------

-----------------------------


                if trans == false then
                        attack=true
                        NoAnims=true
                        hum.WalkSpeed=50
                        
                        local fx = Instance.new("Sound",char)
                        fx.SoundId="rbxassetid://"..drinks
                        fx.Volume=0
                        fx.Pitch=1
                        fx:Play()
                        
                       
                        
                        
                        fx.SoundId="rbxassetid://"..breaks
                        fx.Volume=10
                        fx:Play()
                        
                       
                       
                        
                        print("drinked")
                        
                      
                        
                        coroutine.wrap(function()
                                while trans == false do
                                        wait(0.2)
                                        local ef = Instance.new("Part",char)
                                        ef.Name="pulse"
                                        ef.BrickColor=BrickColor.new(color2)
                                        ef.Material="Neon"
                                        ef.Shape="Ball"
                                        ef.CanCollide=false
                                        ef.Anchored=true
                                        ef.Size=Vector3.new(1,1,1)
                                        ef.CFrame=root.CFrame
                                        
                                        local ef2 = ef:Clone()
                                        ef2.Parent=ef
                                        ef2.BrickColor=BrickColor.new(color)
                                        ef2.Name="call"
                                        ef2.Size=Vector3.new(1,1,1)
                                        local em=Instance.new("SpecialMesh",ef2)
                                        em.MeshId="rbxassetid://3270017"
                                        em.Scale=Vector3.new(1,1,0.0001)
                                        
                                        local ef3 = ef2:Clone()
                                        ef3.Parent=ef
                                        ef3.Name="aura"
                                        ef3.CFrame=root.CFrame
                                        local em2=ef3.Mesh
                                        em2.MeshId="rbxassetid://20329976"
                                        em2.Scale=Vector3.new(1,0.4,1)
                                        
                                        local ef4 = ef3:Clone()
                                        ef4.Parent=ef
                                        local em3=ef4.Mesh
                                        
                                        local ef5 = ef2:Clone()
                                        ef5.Parent=ef
                                        local em4=ef5.Mesh
                                        
                                        coroutine.wrap(function()
                                                for i = 1, 60 do
                                                        rs:wait()
                                                        ef.Size=ef.Size+Vector3.new(1,1,1)
                                                        ef.Transparency=ef.Transparency+1/60
                                                        ef2.Size=ef2.Size+Vector3.new(1,0.3,1)
                                                        ef2.Transparency=ef2.Transparency+1/60
                                                        em.Scale=em.Scale+Vector3.new(1,1,0)
                                                        ef2.CFrame=torso.CFrame*CFrame.Angles(r,r,r)
                                                        ef3.Size=ef3.Size+Vector3.new(1,0.3,1)
                                                        ef3.Transparency=ef3.Transparency+1/60
                                                        ef3.CFrame=root.CFrame*CFrame.Angles(0,r,0)
                                                        em2.Scale=em2.Scale+Vector3.new(1,0.3,1)
                                                        ef4.Size=ef4.Size+Vector3.new(1,0.3,1)
                                                        ef4.Transparency=ef4.Transparency+1/60
                                                        ef4.CFrame=root.CFrame*CFrame.Angles(0,-r,0)
                                                        em3.Scale=em3.Scale+Vector3.new(1,0.3,1)
                                                        ef5.Transparency=ef5.Transparency+1/60
                                                        em4.Scale=em4.Scale+Vector3.new(1,1,0)
                                                        ef5.CFrame=torso.CFrame*CFrame.Angles(-r,-r,-r)
                                                end
                                                ef:Destroy()
                                                ef2:Destroy()
                                                ef3:Destroy()
                                                ef4:Destroy()
                                                ef5:Destroy()
                                        end)()
                                end
                                        local ef = Instance.new("Part",char)
                                        ef.Name="pulse"
                                        ef.BrickColor=BrickColor.new(color2)
                                        ef.Material="Neon"
                                        ef.Shape="Ball"
                                        ef.CanCollide=false
                                        ef.Anchored=true
                                        ef.Size=Vector3.new(1,1,1)
                                        ef.CFrame=root.CFrame
                                        local em=Instance.new("SpecialMesh",ef)
                                        em.MeshId="rbxassetid://9982590"
                                        em.Scale=Vector3.new(1,0.3,1)
                                        
                                        local ef2 = ef:Clone()
                                        ef2.Parent=ef
                                        ef2.Name="aura"
                                        ef2.CFrame=root.CFrame
                                        ef2.Mesh:Destroy()
                                        
                                        local ef3 = ef:Clone()
                                        ef3.Parent=ef
                                        ef3.Name="aura"
                                        ef3.CFrame=root.CFrame
                                        ef3.Mesh:Destroy()
                                        local em2=Instance.new("SpecialMesh",ef3)
                                        em2.MeshId="rbxassetid://20329976"
                                        em2.Scale=Vector3.new(1,0.3,1)
                                        
                                        coroutine.wrap(function()
                                                for i = 1, 250 do
                                                        ef.Size=ef.Size+Vector3.new(2,2,2)
                                                        ef.Transparency=ef.Transparency+1/160
                                                        em.Scale=em.Scale+Vector3.new(0.6,0.6,0.6)
                                                        ef.CFrame=root.CFrame*CFrame.Angles(r,r,r)
                                                        ef3.Transparency=ef3.Transparency+1/160
                                                        ef3.CFrame=root.CFrame*CFrame.Angles(0,r,0)
                                                        em2.Scale=em2.Scale+Vector3.new(2,0.8,2)
                                                        ef2.Size=ef2.Size+Vector3.new(2,2,2)
                                                        ef2.Transparency=ef2.Transparency+1/160
                                                        rs:wait()
                                                end
                                                ef:Destroy()
                                                ef2:Destroy()
                                                ef3:Destroy()
                                                s02:Destroy()

                                        end)()
                        end)()
                        
                        for i = 1, 270 do
                                torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,4,0)*CFrame.Angles(math.rad(20),0,0),0.25)
                                rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0.2)*CFrame.Angles(math.rad(-40),0,0.15),0.25)
                                lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0.2)*CFrame.Angles(math.rad(-40),0,-0.15),0.25)
                                rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.2)*CFrame.Angles(math.rad(-40),0,-6),0.25)
                                larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5,0.2)*CFrame.Angles(math.rad(-40),0,6),0.25)
                                hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),0.25)
                                rs:wait()
                        end
                        wait(8.7)
                        s0:Play()
                        trans=true
                        print("screamed")
						for i,v in pairs(char:GetChildren()) do
							if v:FindFirstChild("Handle") then
								v.Handle.Transparency=1
							end
						end
                        hum.WalkSpeed=50
                        NoAnims=false
                        attack=false
                end
     

------effects------

ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = Shirt
char.Pants.PantsTemplate = Pants
end)

char["Body Colors"].HeadColor = BrickColor.new("Dirt brown")
char["Body Colors"].TorsoColor = BrickColor.new("Dirt brown")
char["Body Colors"].LeftArmColor = BrickColor.new("Dirt brown")
char["Body Colors"].RightArmColor = BrickColor.new("Dirt brown")


 
hum = char.Humanoid
 
function CreateMesh(parent, id, x, y, z, texture)
local m=Instance.new("SpecialMesh", parent)
m.MeshType = "FileMesh"
m.MeshId=id
if texture ~= nil then
m.TextureId=texture
end
m.Scale = Vector3.new(x,y,z)
end
 
 local euler = CFrame.fromEulerAnglesXYZ
 
Hat=function()
hat = Instance.new("Part", char)
CreateMesh(hat, "rbxassetid://667528488", 1.1, 1.1, 1.1,"rbxassetid://845828015")
hat.Name = "PurpleHair"
hat.Locked = true
hat.BrickColor = BrickColor.new("Dark indigo")
hat.CanCollide=true
hat.Size=Vector3.new(1,1,1)
hatw = Instance.new("Weld",hat)
hatw.Part0=hat
hatw.Part1=char['Head']
hatw.C0=CFrame.new(-0.1,-0.4,0)
hatw.C1=euler(math.rad(0),math.rad(0),math.rad(0))
end
 

Hat2=function()
hat2 = Instance.new("Part", char)
CreateMesh(hat2, "rbxassetid://943649996", 0.5, 0.5, 0.5,"rbxassetid://943650208")
hat2.Name = "DisguiseScarf"
hat2.Locked = true
hat2.BrickColor = BrickColor.new("Dark indigo")
hat2.CanCollide=true
hat2.Size=Vector3.new(1,1,1)
hat2w = Instance.new("Weld",hat2)
hat2w.Part0=hat2
hat2w.Part1=char['Head']
hat2w.C0=CFrame.new(0,0.5,0)
hat2w.C1=euler(math.rad(0),math.rad(0),math.rad(0))
end

Hat()
Hat2()

hum.MaxHealth=math.huge
hum.Health=hum.MaxHealth


Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }





CV="Really blue"
	
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 11, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(0,0,255)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "God Slayer"







rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(0)
hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 20
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 20
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(0)
hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 20
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 20
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(0)
hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 20
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 20
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(0)
hit:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 20
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://588693156"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 20
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)








local attacktype = 1
local attack = false



function attackone()
	Debounces.RPunch = true
Debounces.LPunch = true
	attack = true
	NoAnims = true
	for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
	attack = false
	NoAnims = false
	Debounces.RPunch = false
Debounces.LPunch = false
end

function attacktwo()
	Debounces.RPunch = true
Debounces.LPunch = true
	NoAnims = true
	attack = true
	for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
	attack = false
	NoAnims = false
	Debounces.RPunch = false
Debounces.LPunch = false

end


function attackthree()
	Debounces.RPunch = true
Debounces.LPunch = true
	NoAnims = true
	attack = true
	for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
	attack = false
	NoAnims = false
	Debounces.RPunch = false
Debounces.LPunch = false
end


function attackfour()
	Debounces.RPunch = true
Debounces.LPunch = true
	NoAnims = true
	attack = true
	for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
	attack = false
	NoAnims = false
	Debounces.RPunch = false
Debounces.LPunch = false
end


mouse.Button1Down:connect(function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 4
    attackthree()
  elseif attack == false and attacktype == 4 then
    attacktype = 1
    attackfour()
  end
end)


--[[function Transformation()
	hum.WalkSpeed = 0
	local Portal = Instance.new("Model",char)
local prt1 = Instance.new("Model",Portal)
local prt2 = Instance.new("Model",Portal)
local prt3 = Instance.new("Model",Portal)
for i = 1,7 do
local p = Instance.new("Part",prt1)
p.Locked = true
p.Anchored = true
p.Transparency = 1
p.CanCollide = false
p.BrickColor = BrickColor.new("Really red")
p.TopSurface = 0
p.Material = "Neon"
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end for i = 1,7 do
local p = Instance.new("Part",prt2)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.BrickColor = BrickColor.new("Really black")
p.TopSurface = 0
p.Material = "Neon"
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end for i = 1,7 do
local p = Instance.new("Part",prt3)
p.Locked = true
p.Anchored = true
p.CanCollide = false
p.Transparency = 1
p.BrickColor = BrickColor.new("Really red")
p.TopSurface = 0
p.Material = "Neon"
p.BottomSurface = 0
p.Size = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Name = 'm'
m.Scale = Vector3.new(1,1,1)
m.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end
local Rot,Rate,Dist,Size = 0,65,65,1
coroutine.wrap(function()
while wait()do
if _DEBOUNCE then break end
for i,v in pairs(prt1:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(char.Torso.Position)* CFrame.fromEulerAnglesXYZ(0,math.rad((i *360/#prt1:GetChildren())+Rot),0)* CFrame.new(0,0,-Dist)
v.m.Scale = Vector3.new(Size,Size,Size)
end for i,v in pairs(prt2:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(char.Torso.Position)* CFrame.fromEulerAnglesXYZ(math.rad((i *360/#prt2:GetChildren())+Rot),0,0)* CFrame.new(0,0,-Dist)
v.m.Scale = Vector3.new(Size,Size,Size)
end for i,v in pairs(prt3:GetChildren())do
v.Transparency = v.Transparency -0.035
v.CFrame = CFrame.new(char.Torso.Position)* CFrame.fromEulerAnglesXYZ(0,0,math.rad((i *360/#prt2:GetChildren())+Rot))* CFrame.new(-Dist,-Dist,0)
v.m.Scale = Vector3.new(Size,Size,Size)
end
Rot = Rot >= 360 and 0 or Rot +Rate
end end)()
wait(0.75)
for i = 1,90 do
Rate = Rate -(2.3/3)
Dist = Dist -(1.5/3)
wait()
end
wait(1)
for i = 1,30 do
Rate = Rate -(2.3/3)
Dist = Dist +0.5
wait()
end
wait(2)
for i = 1,30 do
Rate = Rate +(9.2/3)
Dist = Dist -1.75
wait()
end
wait(0.75)
for i = 1,6 do
Rate = Rate -4
Dist = Dist +0.5
wait()
end
Rate = 0
Dist = 6
wait(2)
for i = 1,90 do
Rate = Rate +0.5
Dist = Dist +0.2
wait()
end
wait(1)
for i = 1,30 do
Dist = Dist -(24/30)
Size = Size +0.05
wait()
end
-- Scream in pain


coroutine.resume(coroutine.create(function()
	wait(2)
		game.Lighting.TimeOfDay = "00:00:00"
		
		hat.Transparency = 1
		Hat3=function()
hat3 = Instance.new("Part", char)
CreateMesh(hat3, "rbxassetid://667528488", 1.1, 1.1, 1.1)
hat3.Name = "RedHair"
hat3.Locked = true
hat3.BrickColor = BrickColor.new("Maroon")
hat3.CanCollide=true
hat3.Size=Vector3.new(1,1,1)
hat3w = Instance.new("Weld",hat3)
hat3w.Part0=hat3
hat3w.Part1=char['Head']
hat3w.C0=CFrame.new(-0.1,-0.4,0)
hat3w.C1=euler(math.rad(0),math.rad(0),math.rad(0))
end
 
		
	
	ypcall(function()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://519769931"
char.Pants.PantsTemplate = "rbxassetid://519770250"
	end)
		
ragesong2 = "492913801"
s02=Instance.new("Sound",char)
s02.SoundId="rbxassetid://"..ragesong2
s02.Volume=1999
s02.Pitch=1
s02.Looped=true
righteyebrickcolor = "Really red"
s0:Stop()
wait(0.01)
s02:Play()
reye.BrickColor = BrickColor.new(righteyebrickcolor)
leye.BrickColor = BrickColor.new(righteyebrickcolor)
text.TextStrokeColor3 = Color3.new(255,0,0)
hat.BrickColor = BrickColor.new("Maroon")
Hat3()
end))


tran = 0
for i,v in pairs(char:GetChildren()) do 
if v.Name == "Head" or v.Name == "Torso" or v.Name == "Torso" or v.Name == "Left Arm" or v.Name == "Right Arm" or v.Name == "Left Leg" or v.Name == "Right Leg" then
Glow1 = Color3.new(.6,0,.1)
Glow2 = Color3.new(0,0,0)

GlowParticle = Instance.new("ParticleEmitter",v)
GlowParticle.LightEmission = 1
GlowParticle.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle.Size = NumberSequence.new(0,2)

GlowParticle.Texture = "http://www.roblox.com/asset/?id=467188845"
GlowParticle.Transparency = NumberSequence.new(tran,1)
GlowParticle.LockedToPart = true
GlowParticle.Lifetime = NumberRange.new(0.5)
GlowParticle.Rate= 300
GlowParticle.Speed =NumberRange.new(0)
end end 













coroutine.wrap(function()
for i = 1,3 do
wait()
end end)()
wait(1.65)
_DEBOUNCE = true
wait()
Portal:Destroy()
coroutine.wrap(function()
local Pos = char.Torso.Position
local BOOSH = Instance.new("Sound",Workspace)
BOOSH.SoundId = "http://www.roblox.com/asset/?id=2101159"
BOOSH.Volume = 1
BOOSH.Pitch = 0.675
local Fuse = Instance.new("Sound",Workspace)
Fuse.SoundId = "http://www.roblox.com/asset/?id=2233908"
Fuse.Volume = 1
Fuse.Pitch = 0.25
local BOOSH2 = Instance.new("Sound",Workspace)
BOOSH2.SoundId = "http://www.roblox.com/asset/?id=3264793"
BOOSH2.Volume = 1
BOOSH2.Pitch = 0.25
local dsound = true
local PewPew = Instance.new("Sound",Workspace)
PewPew.Name = "PewPew"
PewPew.SoundId = "http://www.roblox.com/asset/?id=34315534"
PewPew.Volume = 1
PewPew.Pitch = 0.32
local function GetHumanoids()
local Characters = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
local Hu = v:findFirstChild("Humanoid")
local Torso = v:findFirstChild("Torso")
if Hu and Torso and v.Name ~= p.Name then
table.insert(Characters,Torso)
end end end
return Characters
end
local function Boom()
for i = 1,25 do
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(40 +i *2.5)/2 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit


end end end
local p = Instance.new("Part",char)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = BrickColor.new("Really red")
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
local rm = Instance.new("SpecialMesh",p)
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rm.Name = "BlastMesh"
rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for n = 1,15 do
rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*4/2
if 2 +i/5 == 1.2 then
rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",char)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CanCollide = false
p.BrickColor = BrickColor.new("Really red")
p.CFrame = CFrame.new(Pos)
local m = Instance.new("BlockMesh",p)
coroutine.wrap(function()
for x = 1,48 do
m.Scale = m.Scale + Vector3.new(0.48 *2 -x/50 +i *0.4,0.48 *2 -i/50 +i *0.4,0.48 *2 -i/50 +i *0.4)/2
p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/60,math.random(-10,10)/50)
p.Transparency = x/48
Wait()
end
p:Destroy()
end)()
Game:GetService("Debris"):AddItem(p,5)
local p = Instance.new("Part",char)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = BrickColor.new("Really black")
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
Wait(0.1)
end for i = 10,19 do
local p = Instance.new("Part",char)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = BrickColor.new("Really red")
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(0,0,0)
local m = Instance.new("SpecialMesh",p)
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
m.Scale = Vector3.new(1,0.25,1)
coroutine.wrap(function()
for n = 1,13 do
m.Scale = m.Scale + Vector3.new(0.7 +1 +i/5,0.7/(n/5),0.7 +1 +i/5)*4/2
if 1 +i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/13
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(0,math.random(-4,4)/20,0)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("Part",char)
p.Name = "BlastRing"
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Anchored = true
p.BrickColor = BrickColor.new("Really black")
p.Size = Vector3.new(1,1,1)
p.CFrame = CFrame.new(Pos -Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
m.Name = "BlastMesh"
m.Scale = Vector3.new(0.1,0.1,0.1)
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
coroutine.wrap(function()
for n = 1,15 do
m.Scale = m.Scale + Vector3.new(1.5 + 3 +i/5,1.5 + 3+i/5,0.1)*4/2
if 3+i/5 == 1.2 then
m.Scale = m.Scale + Vector3.new(0,0.9,0)
end
p.Transparency = n/15
p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/90,math.random(-20,20)/170,0)
Wait()
end
p:Destroy()
end)()
for _,v in pairs(GetHumanoids())do
if(Pos - v.Position).magnitude <=(5 +i *9.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit


end end end
Wait(0.1)
end for i = 30,37 do
for _,v in pairs(GetHumanoids())do
if(Pos -v.Position).magnitude <=(140 +i *2.5)/3 then
local h = v.Parent:findFirstChild("Humanoid")
if h then
local Moar =(Pos - v.Position).unit


end end end end
dsound = false
wait(6.5)
for i = 1,30 do
BOOSH.Volume = BOOSH.Volume -0.033
BOOSH2.Volume = BOOSH.Volume
Fuse.Volume = BOOSH.Volume
Wait()
end
BOOSH:Stop()
BOOSH2:Stop()
Fuse:Stop()
end
BOOSH2:Play()
Fuse:Play()
BOOSH:Play()
Boom()
end)()
hum.WalkSpeed = 5
end]]


GroundWave = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Really blue", "Really blue"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end



function BurningEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(0)
eff1.Rate = 100
eff1.Texture = "rbxassetid://284205403"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(0,0,255))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(0.2)
eff2.Speed = NumberRange.new(0)
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(0,0,255))
local eff3 = Instance.new("ParticleEmitter",part)
eff3.Size = NumberSequence.new(0.2)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(1)
eff3.Speed = NumberRange.new(0)
eff3.Rate = 100
eff3.Texture = "rbxassetid://284205403"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(0,0,255))
end


function FullPower()
	NoAnims = true
	attack = true
	
	
	
	Full = true
	
	
	for i = 1, 40 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.10)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(10)), 0.2)--rarm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.2,-.70)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-10)), 0.2)--larm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.4)--lleg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.6, -.40) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.4)--rleg
	end
	
	
	
	
	
	
	
	
	
	for i = 1, 20 do
	wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.4)--leg
			end
	
	s0:Destroy()
	ragesong = "397952612"
	wait(0.001)
	s02 = Instance.new("Sound",char)
	s02.Volume = 90
	s02.SoundId = "rbxassetid://"..ragesong
	s02.Looped = true
	s02.Pitch = 1
	wait(0.001)
	s02:Play()
	
	
local selectionBoxOfTorso = Instance.new("SelectionBox",torso)
selectionBoxOfTorso.Adornee = torso
selectionBoxOfTorso.Color = BrickColor.new("Really blue")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",char["Right Arm"])
selectionBoxOfRightArm.Adornee = char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Really blue")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",char["Right Leg"])
selectionBoxOfRightLeg.Adornee = char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Really blue")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",char["Left Arm"])
selectionBoxOfLeftArm.Adornee = char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Really blue")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Really blue")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0

BurningEff(reye)

LightOnBody = Instance.new("PointLight", hed)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 0, 255)

r = game:GetService("RunService").RenderStepped
Activated = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
	Debri = coroutine.wrap(function()
	repeat	
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while r:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
	until Activated == false
	end)
	Debri()
	
	l = game.Lighting
l.TimeOfDay = 1
game.Lighting.Ambient = Color3.new(0,0,0)
l.Brightness = 0.1

	
	spawn(function()
	while wait(2)
		 do
		GroundWave()	
	end
	end)	
	
	
	local eColors = {"Really blue", "Really blue"}
	coroutine.resume(coroutine.create(function()
function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} 
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part")  then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
end

while wait(lightspeed) do 
			lightspeed = math.random(0.1,0.2)
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2	
	Lightning(SPos1, SPos2, 4, 3, eColors[math.random(1,#eColors)], .2, .56) 
end
end))
	for i = 1, 20 do
		wait()
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.3,.2)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(0)), 0.4)--head
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)--torso
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(60)), 0.2)--arm
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.5,0)*CFrame.Angles(math.rad(-120),math.rad(0),math.rad(-60)), 0.2)--arm
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.4)--leg
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(10)), 0.4)--leg
end
	
	
	attack = false
	NoAnims = false
end

function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end



Grab = false





fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		fat.Event:wait()
	else
		for i = 1, NUMBER do
			fat.Event:wait()
		end
	end
end





function GrabAndDrag()
	NoAnims = true
	attack = true
	
	if Grab == false then
	
	for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			   
			
			
				
			z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://227194112"
z.Volume = 90
wait(.1)
z:Play()
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,1.5),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
			

           --[[ elseif hum1 == nil then
                con1:disconnect()
                wait() return]]
            end
        end)


        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(30),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-30), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    con1:disconnect()

if gp == nil then 
	attack = false
	NoAnims = false
	return end

    
    
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-73)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
			end
			
			
			coroutine.resume(coroutine.create(function()
	local BF = Instance.new("BodyVelocity",hed)
	BF.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	BF.velocity = root.CFrame.lookVector*120
	wait(2.5)
	BF:remove()
			end))
			
			
			
			z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://138223085"
z.Volume = 90
wait(.1)
z:Play()

coroutine.resume(coroutine.create(function()
	for i=1,78 do
wait()
MagicBlock(BrickColor.new("Really blue"),gp:FindFirstChild("Torso").CFrame,1,1,1,0.5,0.5,0.5,0.025)
wait(0.01)
MagicBlock(BrickColor.new("Really black"),gp:FindFirstChild("Torso").CFrame,1,1,1,0.5,0.5,0.5,0.025)
end
end))

			coroutine.resume(coroutine.create(function()
				Grabee = gp:FindFirstChild("Torso")
		par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
				wait(0.01)
				for i = 1,78 do
					wait(0.01)
				for i=1, 5 do
			p=Instance.new("Part")
			p.FrontSurface=par.TopSurface
			p.Material=par.Material
			p.BottomSurface=0
			p.Anchored=true p.CanCollide=false
			p.BrickColor=par.BrickColor
			p.Size=Vector3.new(math.random(15,35)/5,math.random(15,35)/5,math.random(4,5))
			p.CFrame=CFrame.new(Grabee.Position-Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),loc+Vector3.new(0,1000-i*20,0))*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
			p.Parent=char
			game:GetService("Debris"):AddItem(p,2+i*.1)
			if math.random(1,5)==5 then
				coroutine.resume(coroutine.create(function(p) f=Instance.new("Smoke") f.Parent=p f.Size=30 f.RiseVelocity=0 f.Opacity=.025 Swait(.1) f.Enabled=false Swait(1) f:Remove() end),p)
			end
				end
				end
				
			end))
			
			coroutine.resume(coroutine.create(function()
				Grabee = gp:FindFirstChild("Torso")
		par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
				wait(0.01)
				
		for i=1, 78 do
			wait(0.01)
			for i=1, 1 do
			p=Instance.new("Part")
			p.TopSurface=par.TopSurface
			p.BottomSurface=par.BottomSurface
			p.Material=par.Material
			p.BottomSurface=0
			p.Anchored=false p.CanCollide=false
			p.BrickColor=par.BrickColor
			p.formFactor="Custom"
			p.Size=Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
			p.CFrame=CFrame.new(Grabee.Position-Vector3.new(math.random(-4,4),-2,math.random(-4,4)))*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
			p.Parent=char
			game:GetService("Debris"):AddItem(p,3+i*.1)
			p.Velocity=Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
			p.RotVelocity=p.Velocity
			if math.random(1,5)==5 then
				coroutine.resume(coroutine.create(function(p) f=Instance.new("Smoke") f.Parent=p f.Size=15 f.RiseVelocity=10 f.Opacity=.1 Swait(.1) f.Enabled=false Swait(1) f:Remove() end),p)
			end
			end
			Swait(.025)
		end	
				
			end))
	for i = 1, 100 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.4)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(-13)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(80), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(70), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
	asd:Destroy()
	gp = nil
	hum1.Health = 0
	attack = false
	ht = nil
	NoAnims = false
	Grab = false
end
end











function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end



function Ring()
	
	
	local effspwn = Instance.new("Part")      
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = workspace
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = root.CFrame * CFrame.Angles(math.rad(180), 0, 0)
    effspwn.Parent = model

 for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(0)
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 200
        end
    end 
	coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring1"
      shok.BrickColor = BrickColor.new("Really blue")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(0.1, 0.1, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring2"
      shok.BrickColor = BrickColor.new("Really blue")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(12, 12, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
    end))

coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shokwve"
      shok.BrickColor = BrickColor.new("Really black")
      shok.Position = effspwn.Position + Vector3.new(0, 5, 0)
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.6
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(1, 1, 1)
      mesh.Parent = shok
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2, 2, 2)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 32 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.03
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock2"
      shok.BrickColor = BrickColor.new("Really black")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Really blue")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
    end))
    
end







it=Instance.new
vt=Vector3.new
cf=CFrame.new

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end


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
fp.Position=torso.Position 
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


function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
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
prt.Material = "SmoothPlastic"
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



function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=game.Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end

function Landing()
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	MagicBlock(BrickColor.new("Really black"),root.CFrame,5*2.5,5*2.5,5*2.5,1.5*2.5,1.5*2.5,1.5*2.5,0.025) 
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	MagicBlock(BrickColor.new("Really black"),root.CFrame,5*2.5,5*2.5,5*2.5,1.5*2.5,1.5*2.5,1.5*2.5,0.025) 
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	MagicBlock(BrickColor.new("Really black"),root.CFrame,5*2.5,5*2.5,5*2.5,1.5*2.5,1.5*2.5,1.5*2.5,0.025) 
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
end










    function nooutline(part)
        part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
    end




function debris(cfremz, thepart, amt)
    for j = 1, amt do
      do
        local pr = Instance.new("Part")
        nooutline(pr)
        pr.Name = "debrisobeb"
        pr.Anchored = true
        pr.BrickColor = thepart.BrickColor
        pr.CanCollide = true
        pr.Material = thepart.Material
        pr.Transparency = thepart.Transparency
        pr.Size = Vector3.new(math.random(16, 24), math.random(12, 16), math.random(16, 24))
        pr.CFrame = cfremz * CFrame.Angles(0, math.rad(amt * j), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr.Parent = workspace
        game.Debris:AddItem(pr, 25)
        delay(15, function()
          if pr then
            pr.CanCollide = false
            pr.Anchored = false
          end
        end)
      end
    end
    for c = 1, amt do
      do
        local pr2 = Instance.new("Part")
        nooutline(pr2)
        pr2.Name = "moredebr"
        pr2.Anchored = false
        pr2.BrickColor = thepart.BrickColor
        pr2.CanCollide = false
        pr2.Material = thepart.Material
        pr2.Transparency = thepart.Transparency
        pr2.Size = Vector3.new(math.random(8, 18), math.random(6, 18), math.random(8, 18))
        pr2.CFrame = cfremz * CFrame.Angles(0, math.rad(30 * c), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr2.Parent = workspace
        pr2.Velocity = Vector3.new(math.random(-75, 75), math.random(120, 240), math.random(-75, 75))
        pr2.RotVelocity = Vector3.new(math.random(-35, 35), math.random(-35, 35), math.random(-35, 35))
        game.Debris:AddItem(pr2, 45)
        delay(2, function()
          pr2.CanCollide = true
          wait(10)
          if pr2 then
            pr2.CanCollide = false
          end
        end)
      end
    end
  end










function AirSlam()
	NoAnims = true
	attack = true
	for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            if Debounces.on == false then break end
                wait()
            end
            wait(0.5)
        

coroutine.resume(coroutine.create(function()
       MagicBlock(BrickColor.new("Really blue"),root.CFrame,5*2.5,5*2.5,5*2.5,1.25*2.5,1.25*2.5,1.25*2.5,0.015) 
	MagicBlock(BrickColor.new("Really black"),root.CFrame,5*2.5,5*2.5,5*2.5,1.5*2.5,1.5*2.5,1.5*2.5,0.025) 
	MagicBlock(BrickColor.new("Really blue"),root.CFrame,10*2.5,10*2.5,10*2.5,5.5*2.5,5.5*2.5,5.5*2.5,0.15)
	end))
	
           Sound("http://www.roblox.com/asset?id = 180199750",char,90,1,false)
                
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,150,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        if Debounces.on == false then break end
        wait()
    end
BV:Destroy()

		coroutine.resume(coroutine.create(function()
					for i = 1, 2880, 48 do 
            			torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(i), math.rad(0), math.rad(0))
						rs:wait(4)
					end
					torso.Weld.C1 = CFrame.new(0, -1, 0)
		end))
		
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end

if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end
end
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
		if par then
      local cfremz = CFrame.new(loc)
      debris(cfremz, par, 50)
		    end
coroutine.resume(coroutine.create(function()
	Ring()
end))
Landing()
Sound("rbxassetid://514867425",char,90,1,false)
hum.WalkSpeed = 50
for i = 1, 25 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.3) *CFrame.Angles (math.rad(120),math.rad(10),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,1,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, 0, -.6) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.2)
            if Debounces.on == false then break end
                wait()
            end
            wait(0.2)
	attack = false
	NoAnims = false
end



function CreatePart(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.Parent = parent
p.Size = Vector3.new(1,1,1)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.BrickColor = brickcolor
p.Material = material
return p
end


function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end



--[[HandleR = Instance.new("Part")
	HandleR.BrickColor = BrickColor.new("Really blue")
	HandleR.Material = "Neon"
	HandleR.Transparency = 0.3
	HandleR.Size = Vector3.new(1,0.8,4)
	HandleR.CFrame = sorb.CFrame
	HandleRM = Instance.new("SpecialMesh",HandleR)
	HandleRM.MeshId = "rbxasset://fonts/sword.mesh"
	HandleRM.Scale = Vector3.new(1,1,1)
	
	HandleL = Instance.new("Part")
	HandleL.BrickColor = BrickColor.new("Really blue")
	HandleL.Material = "Neon"
	HandleL.Transparency = 0.3
	HandleL.Size = Vector3.new(1,0.8,4)
	HandleL.CFrame = sorb2.CFrame
	HandleLM = Instance.new("SpecialMesh",HandleL)
	HandleLM.MeshId = "rbxasset://fonts/sword.mesh"
	HandleLM.Scale = Vector3.new(1,1,1)]]
	

local sorb = CreatePart(m,1,1,"SmoothPlastic",BrickColor.new("Really blue"))
CreateWeld(sorb,rarm,sorb,0,2,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local sorb2 = CreatePart(m,1,1,"SmoothPlastic",BrickColor.new("Really blue"))
CreateWeld(sorb2,larm,sorb2,0,2,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


v3 = Vector3.new
rad=math.rad

kiblade = Instance.new("Part",char)
kiblade.Name = "Blade"
kiblade.Size = v3(1,5,1)
kiblade.Transparency = 1
kiblade.BrickColor = BrickColor.new("Really blue")
kiblade.Position = v3(999,999,999)
kiblade.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade)
kiblademesh.MeshType = "FileMesh"
kiblademesh.MeshId = "rbxassetid://898849476"
kiblademesh.Scale = v3(0.01,0.008,0.01)
kiweld7 = Instance.new("Weld",kiblade)
kiweld7.Part0 = rarm
kiweld7.Part1 = kiblade
kiweld7.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
kiblade1 = Instance.new("Part",char)
kiblade1.Name = "Blade"
kiblade1.Transparency = 1
kiblade1.Size = v3(0.1,0.1,0.1)
kiblade1.Position = v3(999,999,999)
kiblade1.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade1)
kiblademesh.MeshType = "Sphere"
kiblademesh.Scale = v3(1,1,1)
kiweld = Instance.new("Weld",kiblade1)
kiweld.Part0 = rarm
kiweld.Part1 = kiblade1
kiweld.C0 = CFrame.new(0,-1,0)
kiblade2 = Instance.new("Part",char)
kiblade2.Name = "Blade"
kiblade2.Size = v3(0.1,0.1,0.1)
kiblade2.Transparency = 1
kiblade2.Position = v3(999,999,999)
kiblade2.CanCollide = false
kiblademesh = Instance.new("SpecialMesh",kiblade2)
kiblademesh.MeshType = "Sphere"
kiblademesh.Scale = v3(1,1,1)
kiweld = Instance.new("Weld",kiblade2)
kiweld.Part0 = rarm
kiweld.Part1 = kiblade2
kiweld.C0 = CFrame.new(0,-4.5,0)
torso = game.Players.LocalPlayer.Character.Torso
head = game.Players.LocalPlayer.Character.Head
torso1 = Instance.new("Attachment",kiblade1)
head1 = Instance.new("Attachment",kiblade2)
trail = Instance.new("Trail",torso)
trail.Color = ColorSequence.new(Color3.fromRGB(0,0,255))
trail.Attachment0 = torso1
trail.Attachment1 = head1
trail.Lifetime = 0.5
trail.Enabled = false




kiblade2 = Instance.new("Part",char)
kiblade2.Name = "Blade"
kiblade2.Size = v3(1,5,1)
kiblade2.Transparency = 1
kiblade2.BrickColor = BrickColor.new("Really blue")
kiblade2.Position = v3(999,999,999)
kiblade2.CanCollide = false
kiblademesh2 = Instance.new("SpecialMesh",kiblade2)
kiblademesh2.MeshType = "FileMesh"
kiblademesh2.MeshId = "rbxassetid://898849476"
kiblademesh2.Scale = v3(0.01,0.008,0.01)
kiweld72 = Instance.new("Weld",kiblade2)
kiweld72.Part0 = larm
kiweld72.Part1 = kiblade2
kiweld72.C0 = CFrame.new(0,-2.1,0) * CFrame.Angles(rad(180),rad(0),rad(0))
kiblade12 = Instance.new("Part",char)
kiblade12.Name = "Blade"
kiblade12.Transparency = 1
kiblade12.Size = v3(0.1,0.1,0.1)
kiblade12.Position = v3(999,999,999)
kiblade12.CanCollide = false
kiblademesh2 = Instance.new("SpecialMesh",kiblade12)
kiblademesh2.MeshType = "Sphere"
kiblademesh2.Scale = v3(1,1,1)
kiweld2 = Instance.new("Weld",kiblade12)
kiweld2.Part0 = larm
kiweld2.Part1 = kiblade12
kiweld2.C0 = CFrame.new(0,-1,0)
kiblade22 = Instance.new("Part",char)
kiblade22.Name = "Blade"
kiblade22.Size = v3(0.1,0.1,0.1)
kiblade22.Transparency = 1
kiblade22.Position = v3(999,999,999)
kiblade22.CanCollide = false
kiblademesh2 = Instance.new("SpecialMesh",kiblade22)
kiblademesh2.MeshType = "Sphere"
kiblademesh2.Scale = v3(1,1,1)
kiweld2 = Instance.new("Weld",kiblade22)
kiweld2.Part0 = larm
kiweld2.Part1 = kiblade22
kiweld2.C0 = CFrame.new(0,-4.5,0)
torso2 = game.Players.LocalPlayer.Character.Torso
head2 = game.Players.LocalPlayer.Character.Head
torso12 = Instance.new("Attachment",kiblade12)
head12 = Instance.new("Attachment",kiblade22)
trail2 = Instance.new("Trail",torso2)
trail2.Color = ColorSequence.new(Color3.fromRGB(0,0,255))
trail2.Attachment0 = torso12
trail2.Attachment1 = head12
trail2.Lifetime = 0.5
trail2.Enabled = false



local Gibs = game.Workspace












function Kill(Character)
print("no")
end
	
	

function SpinSlice()
	NoAnims = true
	attack = true
	
	
	Sound("rbxassetid://588738949",char,90,1,false)
	kiblade.Transparency = 0
	kiblade2.Transparency = 0
    trail.Enabled = true
    trail2.Enabled = true

	hum.WalkSpeed = 50
	for i = 1,40 do
		torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,0+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15+math.sin(sine/14)/20),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15+-math.sin(sine/14)/20),0.25)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,-0.2)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(90)), 0.5)--arm
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.2)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-90)), 0.5)--arm
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-20),0,0),0.25)
if Debounces.on == false then break end
                wait()
	end
	
	
	coroutine.resume(coroutine.create(function()
	local BF = Instance.new("BodyVelocity",hed)
	BF.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	BF.velocity = root.CFrame.lookVector*120
	wait(2.0)
	BF:remove()
	end))
	local HitBox = Instance.new("Part",rarm)
	HitBox.Size = Vector3.new(1,5,1)
	HitBox.CanCollide = false
	HitBox.Transparency = 1
	local HitBox2 = Instance.new("Weld",HitBox)
	HitBox2.Part0 = rarm
	HitBox2.Part1 = HitBox
	HitBox2.C0 = CFrame.new(0,-1.8,0)
	HitBox.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= nil and hit.Parent.Name ~= char.Name then
			Kill(hit.Parent)
			hit.Parent.Humanoid.PlatformStand = true
		end
	end)
	
	local HitBox2 = Instance.new("Part",larm)
	HitBox2.Size = Vector3.new(1,5,1)
	HitBox2.CanCollide = false
	HitBox2.Transparency = 1
	local HitBox22 = Instance.new("Weld",HitBox2)
	HitBox22.Part0 = larm
	HitBox22.Part1 = HitBox2
	HitBox22.C0 = CFrame.new(0,-1.8,0)
	HitBox2.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= nil and hit.Parent.Name ~= char.Name then
			Kill(hit.Parent)
			hit.Parent.Humanoid.PlatformStand = true
		end
		end)

	for i = 1,40 do
		torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,0+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15+math.sin(sine/14)/20),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15+-math.sin(sine/14)/20),0.25)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.6,-0.2)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(90)), 0.5)--arm
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.6,-.2)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-90)), 0.5)--arm
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-20),0,0),0.25)
	root.CFrame = root.CFrame * CFrame.fromEulerAnglesXYZ(0,1,0)
	 if Debounces.on == false then break end
                wait()
	end
	kiblade.Transparency = 1
	kiblade2.Transparency = 1
	trail.Enabled = false
    trail2.Enabled = false
HitBox:Destroy()
HitBox2:Destroy()
    hum.WalkSpeed = 50
	attack = false
	NoAnims = false
end
	
	
	
	
function hito(partoz, magn, dmg, debtim)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChildOfClass("Humanoid") and guy:FindFirstChild("Head") and guy ~= char and magn > (guy:FindFirstChild("Head").Position - partoz.Position).magnitude and guy:FindFirstChild("Head"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChildOfClass("Humanoid")
          local hed = guy:FindFirstChild("Head")
          humz:TakeDamage(0)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = hed
          delay(debtim, function()
            db:Destroy()
          end)
        end
      end
    end
  end
	
	
	
	ang = CFrame.Angles
rd = math.rad
rd2 = math.random
ov = false



nooutline = function(i)	
	i.TopSurface = 10
end
makepart = function(l, m, n, o, p, q, r)	
	local s = Instance.new("Part")
	s.BrickColor = BrickColor.new(l)
	s.Name = m
	s.Transparency = o
	nooutline(s)
	s.Reflectance = n
	s.Material = p
	s.Anchored = true
	s.CanCollide = false
	s.Locked = true
	s.CFrame = r
	s.Size = Vector3.new(0.2, 0.2, 0.2)
	s.Parent = q
	return s
end

makemesh = function(t, u, v, w)	
	local x = Instance.new("SpecialMesh")
	x.MeshType = t
	x.Scale = u
	if t == "FileMesh" then
		x.MeshId = v
	end
	x.Parent = w
	return x
end

local H = {}


	Barrage = function()
	modz = Instance.new("Model")
	modz.Name = "efx"
	modz.Parent = char	
	ov = true
	hum.AutoRotate = false
	local aN = nil
	local a9 = true
	local aa = {}
	local ab = {}
	local b7 = {}
	for j = 1, 16 do
		local ac = Instance.new("Part")
		nooutline(ac)
		ac.Anchored = true
		ac.Locked = true
		ac.CanCollide = false
		ac.Material = "Neon"
		ac.Size = Vector3.new(1, 1, 1)
		ac.Transparency = 1
		ac.CFrame = CFrame.new(0, 1000, 0)
		ac.Parent = modz
		ac.BrickColor = BrickColor.new("Really blue")
		makemesh("Sphere", (Vector3.new(0, 0, 0)), nil, ac)
		table.insert(aa, ac)
	end
	for j = 1, 40 do
		local a3 = makepart("Really blue", "nah", 0, 1, "Neon", modz, cf(0, 1000, 0))
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://489415447", a3)
		table.insert(ab, a3)
	end
	for j = 1, 30 do
		local a3 = makepart("Really blue", "nah", 0, 1, "Neon", modz, cf(0, 1000, 0))
		makemesh("FileMesh", Vector3.new(0, 0, 0), "rbxassetid://3270017", a3)
		table.insert(b7, a3)
	end
	local b8 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", rarm)
	local b9 = makemesh("FileMesh", Vector3.new(0, 0, 0), "", larm)
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aN = aO.Transparency
			aO.Transparency = 1
		end
	end
	local a8 = Instance.new("BodyGyro")
	a8.MaxTorque = Vector3.new(1050, 3000, 750)
	a8.CFrame = CFrame.new(root.Position, mouse.Hit.p)
	a8.P = 580000
	a8.D = 250
	a8.Parent = root
	coroutine.resume(coroutine.create(function()		
		while a8 do
			swait()
			a8.CFrame = CFrame.new(root.Position, mouse.Hit.p)
		end
	end))
	local af = 0
	local ag = 0
	repeat
			ag = ag + 1
			if af == 0 then
				af = 1
			else
				af = af % 14 + 1
			end
		coroutine.resume(coroutine.create(function()		
		local ah = aa[af]
		local ai = ab[af]
		local aj = ab[af + 14]
		local ba = b7[af]
		ah.Size = Vector3.new(1, 1, 2)
		ah.CFrame = cf(root.CFrame * cf(rd2(-600, 600) / 100, rd2(-150, 350) / 100, rd2(-200, -50) / 100).p, mouse.Hit * cf(rd2(-4, 4), rd2(-2, 2), 0).p)
		ah.Transparency = 0.25
		ah:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0, 0, 0)
		ai.Transparency = 0.35
		ai:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.6, 0.6, 0.6)
		aj.Transparency = 0.45
		aj:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.7, 0.7, 0.7)
		aj.CFrame = ah.CFrame * ang(0, rd(90), rd(90))
		if af % 2 == 1 then
			ai.CFrame = cf(rarm.CFrame * cf(rd2(-6, 6) / 10, rd2(4, 12) / 10, rd2(-12, -1) / 10).p, mouse.Hit.p) * ang(0, rd(90), rd(90))
		else
			if af % 2 == 0 then
				ai.CFrame = cf(larm.CFrame * cf(rd2(-6, 6) / 10, rd2(3, 8) / 10, rd2(-12, -1) / 10).p, mouse.Hit.p) * ang(0, rd(90), rd(90))
			end
		end
		ba.CFrame = ah.CFrame * cf(0, 0, -8)
		ba.Transparency = 0.4
		ba:FindFirstChildOfClass("SpecialMesh").Scale = Vector3.new(0.7, 0.7, 0.7)
		local bb = ah.CFrame * cf(0, 0, -5)
		local bc = aj.CFrame * cf(0, -0.1, 0)
		local bd = ba.CFrame * cf(0, 0, rd2(-300, 50) / 100)
		local ak = false
		for j = 1, 12 do
			swait()
			local a0 = Ray.new(ah.Position, ah.CFrame.lookVector * (12.5 - j))
			local a1, a2 = workspace:FindPartOnRayWithIgnoreList(a0, {char}, true, true)
			if a1 and ak == false then
				ak = true
				local a3 = makepart("Really blue", "nah", 0, 0.2, "SmoothPlastic", modz, cf(a2, ah.CFrame.p) * ang(0, 0, 0) * ang(0, rd(270), rd(90)))
				do
					local a4 = makemesh("FileMesh", Vector3.new(0.4, 0.4, 0.4), "rbxassetid://489415447", a3)
					game.Debris:AddItem(a3, 0.5)
					local a5 = rd2(1, 12)
					if a5 == 6 then
						hito(a3, 3.25, 6, 0.06, ah.CFrame.lookVector * 10, Vector3.new(0, 0, rd2(-8, 8)))
					else
						hito(a3, 3.25, 6, 0.06, ah.CFrame.lookVector * 10)
					end
					coroutine.resume(coroutine.create(function()			
			for I = 1, 4 do
				swait()
				a4.Scale = a4.Scale + Vector3.new(0.8, 0.8, 0.8)
				a3.Transparency = a3.Transparency + 0.2
			end
			a3:Destroy()
		end))
				end
			end
					ah.Size = ah.Size:lerp(Vector3.new(2, 2, 12), 0.5)
					ah.CFrame = ah.CFrame:lerp(bb, 1)
					ah:FindFirstChildOfClass("SpecialMesh").Scale = ah:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1, 1, 1), 0.45)
					ah.Transparency = ah.Transparency + 0.0725
					ai:FindFirstChildOfClass("SpecialMesh").Scale = ai:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1.25, 1.2, 1.25), 0.4)
					ai.Transparency = ai.Transparency + 0.06
					aj:FindFirstChildOfClass("SpecialMesh").Scale = aj:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(1.6, 1.6, 1.6), 0.4)
					aj.CFrame = aj.CFrame:lerp(bc, 0.3)
					aj.Transparency = aj.Transparency + 0.05
					ba:FindFirstChildOfClass("SpecialMesh").Scale = ba:FindFirstChildOfClass("SpecialMesh").Scale:lerp(Vector3.new(4.5, 4.5, 4.5), 0.4)
					ba.CFrame = ba.CFrame:lerp(bd, 0.3)
					ba.Transparency = ba.Transparency + 0.06
		end
	end))
			swait()
		until ov == false
	for I,aO in pairs(H) do
		if aO.Parent == rarm or aO.Parent == larm then
			aO.Transparency = aN
		end
	end
	b8:Destroy()
	b9:Destroy()
	a8:Destroy()
	hum.AutoRotate = true
	ov = false
	wait(1)
	for I,al in pairs(aa) do
		al:Destroy()
	end
	for I,am in pairs(ab) do
		am:Destroy()
	end
	for I,be in pairs(b7) do
		be:Destroy()
	end
	end
	
	
	
	
	
	
	function Kneel()
		
 for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
	
	hum2 = v:FindFirstChild('Humanoid')
    hum2.PlatformStand=true
   
end
end
	end
	
--[[mouse.KeyDown:connect(function(key)
	if key == "l" and Trans == false and Strength then
		Transformation()
		Trans = true
	end
end)]]



mouse.KeyDown:connect(function(key)
	if key == "z" then
		GrabAndDrag()
	end
end)


mouse.KeyDown:connect(function(key)
	if key == "x"  then
		AirSlam()
	end
end)



mouse.KeyDown:connect(function(key)
	if key == "c"  then
		SpinSlice()
	end
end)


mouse.KeyDown:connect(function(key)
	if key == "p"  and Full == false then
		FullPower()
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "1"  then
		Sound("rbxassetid://966268002",char,90,1,false)
		Kneel()
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "v" then
		if ov == false then
		hed.Weld.C0 = hed.Weld.C0 * CFrame.Angles(0,0,0)
        wait()
        local ChatService = game:GetService("Chat")
	    wait()
        local ChatService = game:GetService("Chat")
coroutine.resume(coroutine.create(function()
s = 0
repeat
s = s + 1
Barrage()
wait()
until not ov
end))
if Full == true then
coroutine.resume(coroutine.create(function()
s = 0
repeat
s = s + 1
Barrage()
wait()
until not ov
end))	
end
mouse.KeyUp:connect(function(key)
	if key == "v" then
		wait(0.4)
		ov = false
		wait(0.1)
end
end)
end
end
end)





-----animations-----

game:GetService("RunService").RenderStepped:connect(function()
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + add
if ffing==true then
anim="jump"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
anim="idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
anim = "walk"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
anim = "run"
end

if NoAnims==false then
if anim=="idle" then
add=0.5
if trans == false then
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.6+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(0)+-math.sin(sine/14)/7,0,-6+-math.sin(sine/14)/7),0.1)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/7,0,0),0.1)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),0.25)
else
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,0+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15+math.sin(sine/14)/20),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15+-math.sin(sine/14)/20),0.25)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(0.8,0.6,-0.6)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-90)), 0.5)--arm
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-0.8,0.6,-.6)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.5)--arm
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,-0.15)*CFrame.Angles(math.rad(-20),0,0),0.25)
end

elseif anim=="walk" then
add=0.5
if trans == false then
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1+math.sin(sine/3.5)/3,0)*CFrame.Angles(math.rad(-10),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1+math.sin(sine/7)/2,-0.15+-math.sin(sine/7)/2)*CFrame.Angles(math.rad(-20)+math.sin(sine/7)/2,0,0.05),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1+-math.sin(sine/7)/2,-0.15+math.sin(sine/7)/2)*CFrame.Angles(math.rad(-20)+-math.sin(sine/7)/2,0,-0.05),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5+-math.cos(sine/7)/7,0+math.sin(sine/14)/7)*CFrame.Angles(math.rad(0)+-math.sin(sine/14)/2,0,-6+-math.sin(sine/14)/7),0.1)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5+-math.cos(sine/10)/14,0)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/7,0,0),0.1)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),0,0),0.25)
else
change = 0.5
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 3), -math.sin(sine / 6) / 4) * CFrame.Angles(math.sin(sine / 6) / 2.8, -math.sin(sine / 6) / 3, math.rad(-10 - 2 * math.cos(sine / 3))), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 - 0.05 * math.cos(sine / 3), math.sin(sine / 6) / 4) * CFrame.Angles(-math.sin(sine / 6) / 2.8, -math.sin(sine / 6) / 3, math.rad(10 + 2 * math.cos(sine / 3))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8 + 2 * math.cos(sine / 3)), math.rad(0), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.15 * math.cos(sine / 6) / 5, -0.15 + math.sin(sine / 6) / 5) * CFrame.Angles(math.rad(-14) + -math.sin(sine / 6) / 2.7, 0, 0), 0.4)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 + 0.15 * math.cos(sine / 6) / 5, -0.15 + -math.sin(sine / 6) / 5) * CFrame.Angles(math.rad(-14) + math.sin(sine / 6) / 2.7, 0, 0), 0.4)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.07 * math.cos(sine / 3), 0) * CFrame.Angles(math.rad(-4 + 1 * math.cos(sine / 3)), 0, math.rad(0)), 0.2)
end

elseif anim=="run" then
add=0.5
if trans == false then
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1+math.sin(sine/2)/3,0)*CFrame.Angles(math.rad(-37),0,0),0.025)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1+math.sin(sine/4)/2,-0.15+-math.sin(sine/4)/2)*CFrame.Angles(math.rad(-20)+math.sin(sine/4)/2,0,0.05),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1+-math.sin(sine/4)/2,-0.15+math.sin(sine/4)/2)*CFrame.Angles(math.rad(-20)+-math.sin(sine/4)/2,0,-0.05),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.1)*CFrame.Angles(math.rad(-20)+-math.sin(sine/17)/7,0,-6),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5,0.1)*CFrame.Angles(math.rad(-20)+-math.sin(sine/17)/7,0,6),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),0,0),0.25)
else
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,1+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(-70),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(-20)+-math.sin(sine/14)/7,0,-6),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5+-math.cos(sine/14)/7,0)*CFrame.Angles(math.rad(-20)+-math.sin(sine/14)/7,0,6),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0.3)*CFrame.Angles(math.rad(70),0,0),0.25)
end

elseif anim=="jump" then
add=0.5
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0+-math.cos(sine/14)/7,.5+-math.cos(sine/14)/7,0+-math.cos(sine/14)/7)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-0.7,-0.5)*CFrame.Angles(math.rad(10),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0.1)*CFrame.Angles(math.rad(-10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(50),0,90),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(50),0,-90),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,-0.1)*CFrame.Angles(math.rad(-20),0,0),0.25)

end
end
                 
end)


--[[l = game.Lighting
l.TimeOfDay = 1
game.Lighting.Ambient = Color3.new(0,0,0)
l.Brightness = 0.1]]--