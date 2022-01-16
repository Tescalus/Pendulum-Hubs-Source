loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld", par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)


player = game:service("Players").LocalPlayer
char = game.Workspace.non
local beat = true
local beattime = 0.6
suit = Instance.new("Model", char)
suit.Name = "Gaster"
local vDebounce = false
Torso = char.Torso  
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
local SHOT_SPEED = 100
local SHOT_TIME = 1
local NOZZLE_OFFSET = Vector3.new(0, 0, 0)
mouse = player:GetMouse()

shieldparent1 = nil 
shieldparent2 = nil
shieldparent3 = nil
shieldparent4 = nil
shieldparent5 = nil
shieldparent6 = nil

switchvalue = 0
RandomGasterRotaion = 0
RandomPerseverance = 0

ShieldValueToGaster = false
ShieldValueToGasterDebounce = false

RW, LW = Instance.new("Weld"), Instance.new("Weld") 
 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 
RSH, LSH = nil, nil 

LS = Torso["Left Shoulder"] 
 
LH = Torso["Left Hip"] 
 
RS = Torso["Right Shoulder"] 
 
RH = Torso["Right Hip"] 
RSH = char.Torso["Right Shoulder"] 
 
LSH = char.Torso["Left Shoulder"] 



function startup()
	
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 

for i = 1,5 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(-8),0),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(8),0),LW.C0,0.1)	
		

end	
coroutine.resume(coroutine.create(function()
wait(1)
for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(-math.rad(-.1),-math.rad(-.1),-math.rad(3)),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(math.rad(.1),math.rad(.1),-math.rad(-3)),LW.C0,0.1)	
		

end	

for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(-math.rad(-4),-math.rad(-4),-math.rad(-4)),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(-4),-math.rad(4)),LW.C0,0.1)	
		

end	


end))
end



local Sounds = {
        Gaster = Instance.new("Sound"),
        Gun = Instance.new("Sound"),
        Switch = Instance.new("Sound"),
        Explode = Instance.new("Sound"),
        GasterTheme = Instance.new("Sound")
}
 
Sounds["Gaster"].SoundId = "rbxassetid://345052019"
Sounds["Gaster"].Volume = 1
Sounds["Gun"].SoundId = "http://www.roblox.com/asset?id=406913243"
Sounds["Gun"].Volume = 1
Sounds["Switch"].SoundId = "http://www.roblox.com/asset?id=388205678"
Sounds["Switch"].Volume = 1
Sounds["Explode"].SoundId = "rbxasset://sounds/collide.wav"
Sounds["Explode"].Volume = .1
Sounds["GasterTheme"].SoundId = "rbxassetid://323177357"
Sounds["GasterTheme"].Volume = 99
 
function PlaySound(soundname, pitch, where, looped)
        Sounds[soundname].Parent = where
        Sounds[soundname].Pitch = pitch
        Sounds[soundname].Looped= looped
        Sounds[soundname]:Play()
        local oldsound = Sounds[soundname]
        coroutine.resume(coroutine.create(function()

                wait(4)
for i = 1,1 do
		if oldsound.Looped == true then return end
                oldsound:Destroy()
end
        end))
        Sounds[soundname] = Sounds[soundname]:clone()
end

firstuse = true
InUse = false

JusticeAttack = false
JusticeAttackDebounce = false

IntegrityAttack = false
IntegrityAttackDebounce = false

PerseveranceAttack = false
PerseveranceAttackDebounce = false

KindnessAttack = false
KindnessAttackDebounce = false

DeterminationAttack = false
DetermiantionAttackDebounce = false

PatienceAttack = false
PatienceAttackDebounce = false

BraveryAttack = false
BraveryAttackDebounce = false


hand1DeterminationhealthDown = false
hand2PerseverancehealthDown = false
hand3PatiencehealthDown = false
hand4IntegrityhealthDown = false
hand5BraveryhealthDown = false
hand6JusticehealthDown = false
hand7KindnesshealthDown = false

hand1Determination = Instance.new("Model", char)
hand1Determination.Name ="Red"
hand2Perseverance = Instance.new("Model", char)
hand2Perseverance.Name ="Purple"
hand3Patience = Instance.new("Model", char)
hand3Patience.Name = "Cyan"
hand4Integrity = Instance.new("Model", char)
hand4Integrity.Name = "Blue"
hand5Bravery = Instance.new("Model", char)
hand5Bravery.Name = "Orange"
hand6Justice = Instance.new("Model", char)
hand6Justice.Name = "Yellow"
hand7Kindness = Instance.new("Model", char)
hand7Kindness.Name = "Green"

function teleportPlayer(pos)
 
	if player == nil or player.Character == nil then return end

	char["Left Leg"].CFrame = CFrame.new(Vector3.new(pos.x, pos.y , pos.z))
coroutine.resume(coroutine.create(function()

TeleportPart = Instance.new("Part",workspace)

TeleportPart.FormFactor="Custom"

TeleportPart.Size=Vector3.new(0.8,0.8,0.8)

TeleportPart.TopSurface = 0

TeleportPart.BottomSurface = 0

local colorc = {"Black"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

TeleportPart.BrickColor = Fire

TeleportPart.CanCollide=false

TeleportPart.Anchored=true

TeleportPart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

TeleportPartmesh = Instance.new("BlockMesh",TeleportPart)
	

game.Debris:AddItem(TeleportPart,1.5)

for i = 1,5 do wait()
Torso.Transparency = Torso.Transparency - 0.2
char["Left Arm"].Transparency = char["Left Arm"].Transparency - 0.2
char["Left Leg"].Transparency = char["Left Leg"].Transparency - 0.2
char["Right Arm"].Transparency = char["Right Arm"].Transparency - 0.2
char["Right Leg"].Transparency = char["Right Leg"].Transparency - 0.2
char.Head.Transparency = char.Head.Transparency - 0.2
Crack1.Transparency = Crack1.Transparency - 0.2
Crack2.Transparency = Crack2.Transparency - 0.2
mouth.Transparency = mouth.Transparency - 0.2
Eye1.Transparency = Eye1.Transparency - 0.2
Eye2.Transparency = Eye2.Transparency - 0.2
MEye1.Transparency = MEye1.Transparency - 0.2
MEye2.Transparency = MEye2.Transparency - 0.2
end


Torso.Transparency = 0
char["Left Arm"].Transparency = 0
char["Left Leg"].Transparency = 0
char["Right Arm"].Transparency = 0
char["Right Leg"].Transparency = 0
char.Head.Transparency = 0
Crack1.Transparency = 0
Crack2.Transparency = 0
mouth.Transparency = 0
Eye1.Transparency = 0
Eye2.Transparency = 0
MEye1.Transparency = 0
MEye2.Transparency = 0

end))

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = Torso.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Black")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05	
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)



end
for i = 1,10 do wait()
	
TeleportPartmesh.Scale=Vector3.new(2*i,2*i,2*i)
TeleportPart.CFrame = clerp(TeleportPart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),TeleportPart.CFrame,0.1) 
TeleportPart.Transparency = TeleportPart.Transparency + 0.1	
end	
end

for _,v in pairs(char.Head:GetChildren()) do if v.ClassName=="Decal" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Shirt" or v.ClassName=="Pants" or v.ClassName=="T-Shirt" or v.ClassName=="ShirtGraphic" or v.ClassName=="CharacterMesh" then v:remove() end end
shirt=Instance.new("Shirt", char)
pants=Instance.new("Pants", char)
char.Head.BrickColor = BrickColor.new("Institutional white")


shirt.ShirtTemplate="rbxassetid://535199088"
pants.PantsTemplate="rbxassetid://532840011"

--------Gaster's head



mouth = Instance.new("Part",suit)
mouth.Size = Vector3.new(0.2,.7,0.4)
mouth.Transparency = 0
mouth.BrickColor = BrickColor.new("Really black")
mouth.CanCollide = false
mouthMesh = Instance.new("SpecialMesh",mouth)
mouthMesh.MeshType = "Sphere"
mouthMesh.Scale = Vector3.new(2.5,0.1,0.8)

weld(char.Head,mouth,CFrame.new(0,0,0),CFrame.new(0, .3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


Crack2 = Instance.new("Part",suit)
Crack2.Size = Vector3.new(0.2,.7,0.4)
Crack2.Transparency = 0
Crack2.BrickColor = BrickColor.new("Really black")
Crack2.CanCollide = false
Crack2Mesh = Instance.new("SpecialMesh",Crack2)
Crack2Mesh.MeshType = "Sphere"
Crack2Mesh.Scale = Vector3.new(0.3,0.7,0.8)

weld(char.Head,Crack2,CFrame.new(0,0,0),CFrame.new(.2, .15, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -.2),char)


Crack1 = Instance.new("Part",suit)
Crack1.Size = Vector3.new(0.2,.7,0.4)
Crack1.Transparency = 0
Crack1.BrickColor = BrickColor.new("Really black")
Crack1.CanCollide = false
Crack1Mesh = Instance.new("SpecialMesh",Crack1)
Crack1Mesh.MeshType = "Sphere"
Crack1Mesh.Scale = Vector3.new(0.3,0.7,0.65)

weld(char.Head,Crack1,CFrame.new(0,0,0),CFrame.new(-.2, -.3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, .2),char)


Eye1 = Instance.new("Part",suit)
Eye1.Size = Vector3.new(0.4,0.4,0.4)
Eye1.Transparency = 0
Eye1.BrickColor = BrickColor.new("Really black")
Eye1.CanCollide = false
Eye1Mesh = Instance.new("SpecialMesh",Eye1)
Eye1Mesh.MeshType = "Sphere"
Eye1Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye1,CFrame.new(0,0,0),CFrame.new(-.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


Eye2 = Instance.new("Part",suit)
Eye2.Size = Vector3.new(0.4,0.4,0.4)
Eye2.Transparency = 0
Eye2.CanCollide = false
Eye2.BrickColor = BrickColor.new("Really black")
Eye2Mesh = Instance.new("SpecialMesh",Eye2)
Eye2Mesh.MeshType = "Sphere"
Eye2Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye2,CFrame.new(0,0,0),CFrame.new(.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

MEye1 = Instance.new("Part",suit)
MEye1.Size = Vector3.new(0.3,0.3,0.3)
MEye1.Transparency = 0
MEye1.Material= "Neon"
MEye1.BrickColor = BrickColor.new("Institutional white")
MEye1.CanCollide = false
MEye1Mesh = Instance.new("SpecialMesh",MEye1)
MEye1Mesh.MeshType = "Sphere"
MEye1Mesh.Scale = Vector3.new(.2,.5,.2)

weld(Eye1,MEye1,CFrame.new(0,0,0),CFrame.new(-.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

MEye2 = Instance.new("Part",suit)
MEye2.Size = Vector3.new(0.3,0.3,0.3)
MEye2.Transparency = 0
MEye2.Material= "Neon"
MEye2.BrickColor = BrickColor.new("Institutional white")
MEye2.CanCollide = false
MEye2Mesh = Instance.new("SpecialMesh",MEye2)
MEye2Mesh.MeshType = "Sphere"
MEye2Mesh.Scale = Vector3.new(.2,.5,.2)

weld(Eye2,MEye2,CFrame.new(0,0,0),CFrame.new(.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


--------Gaster's hand

startup()

hand1DeterminationPosition = Instance.new("Part",suit)
hand1DeterminationPosition.Size = Vector3.new(1,1,1)
hand1DeterminationPosition.Transparency = 1
hand1DeterminationPosition.CanCollide = false

weld(Torso,hand1DeterminationPosition,CFrame.new(0,0,0),CFrame.new(-2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand2PerseverancePosition = Instance.new("Part",suit)
hand2PerseverancePosition.Size = Vector3.new(1,1,1)
hand2PerseverancePosition.Transparency = 1
hand2PerseverancePosition.CanCollide = false

weld(Torso,hand2PerseverancePosition,CFrame.new(0,0,0),CFrame.new(2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand3PatiencePosition = Instance.new("Part",suit)
hand3PatiencePosition.Size = Vector3.new(1,1,1)
hand3PatiencePosition.Transparency = 1
hand3PatiencePosition.CanCollide = false

weld(Torso,hand3PatiencePosition,CFrame.new(0,0,0),CFrame.new(-4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand4IntegrityPosition = Instance.new("Part",suit)
hand4IntegrityPosition.Size = Vector3.new(1,1,1)
hand4IntegrityPosition.Transparency = 1
hand4IntegrityPosition.CanCollide = false

weld(Torso,hand4IntegrityPosition,CFrame.new(0,0,0),CFrame.new(4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand5BraveryPosition = Instance.new("Part",suit)
hand5BraveryPosition.Size = Vector3.new(1,1,1)
hand5BraveryPosition.Transparency = 1
hand5BraveryPosition.CanCollide = false

weld(Torso,hand5BraveryPosition,CFrame.new(0,0,0),CFrame.new(-6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand6JusticePosition = Instance.new("Part",suit)
hand6JusticePosition.Size = Vector3.new(1,1,1)
hand6JusticePosition.Transparency = 1
hand6JusticePosition.CanCollide = false

weld(Torso,hand6JusticePosition,CFrame.new(0,0,0),CFrame.new(6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand7KindnessPosition = Instance.new("Part",suit)
hand7KindnessPosition.Size = Vector3.new(1,1,1)
hand7KindnessPosition.Transparency = 1
hand7KindnessPosition.CanCollide = false

weld(Torso,hand7KindnessPosition,CFrame.new(0,0,0),CFrame.new(0, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


AttackPosition = Instance.new("Part",suit)
AttackPosition.Size = Vector3.new(1,1,1)
AttackPosition.Transparency = 1
AttackPosition.CanCollide = false

weld(Torso,AttackPosition,CFrame.new(0,0,0),CFrame.new(0, 0, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



--------Gaster's Health of hands and hands

hand1Determinationhealth = Instance.new("Humanoid",hand1Determination)
hand1Determinationhealth.DisplayDistanceType = "None"
hand1Determinationhealth.Health = 100
hand1Determinationhealth.MaxHealth = 100

Determination = Instance.new("Part",hand1Determination)
Determination.Size = Vector3.new(1,1.5,0.2)
Determination.Name = "Head"
Determination.Position = hand1DeterminationPosition.Position
DeterminationMesh = Instance.new("SpecialMesh",Determination)
DeterminationMesh.MeshId = "rbxassetid://430045961"
DeterminationMesh.Offset = Vector3.new(0.09,0.1,0)
Determination.BrickColor = BrickColor.new("Institutional white")

DeterminationOrb = Instance.new("Part",Determination)
DeterminationOrb.Size = Vector3.new(0.3,0.3,0.2)
DeterminationOrb.BrickColor = BrickColor.new("Really red")
weld(Determination,DeterminationOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand1DeterminationPosition,Determination,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end	
p:remove()



--2--


hand2Perseverancehealth = Instance.new("Humanoid",hand2Perseverance)
hand2Perseverancehealth.DisplayDistanceType = "None"
hand2Perseverancehealth.Health = 100
hand2Perseverancehealth.MaxHealth = 100

Perseverance = Instance.new("Part",hand2Perseverance)
Perseverance.Size = Vector3.new(1,1.5,0.2)
Perseverance.Name = "Head"
Perseverance.Position = hand2PerseverancePosition.Position
PerseveranceMesh = Instance.new("SpecialMesh",Perseverance)
PerseveranceMesh.MeshId = "rbxassetid://430045961"
PerseveranceMesh.Offset = Vector3.new(0.09,0.1,0)
Perseverance.BrickColor = BrickColor.new("Institutional white")

PerseveranceOrb = Instance.new("Part",Perseverance)
PerseveranceOrb.Size = Vector3.new(0.3,0.3,0.2)
PerseveranceOrb.BrickColor = BrickColor.new("Magenta")
weld(Perseverance,PerseveranceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand2PerseverancePosition,Perseverance,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--3--

hand3Patiencehealth = Instance.new("Humanoid",hand3Patience)
hand3Patiencehealth.DisplayDistanceType = "None"
hand3Patiencehealth.Health = 100
hand3Patiencehealth.MaxHealth = 100

Patience = Instance.new("Part",hand3Patience)
Patience.Size = Vector3.new(1,1.5,0.2)
Patience.Name = "Head"
PatienceMesh = Instance.new("SpecialMesh",Patience)
PatienceMesh.MeshId = "rbxassetid://430045961"
PatienceMesh.Offset = Vector3.new(0.09,0.1,0)
Patience.BrickColor = BrickColor.new("Institutional white")


PatienceOrb = Instance.new("Part",Patience)
PatienceOrb.Size = Vector3.new(0.3,0.3,0.2)
PatienceOrb.BrickColor = BrickColor.new("Cyan")
weld(Patience,PatienceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand3PatiencePosition,Patience,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--4--

hand4Integrityhealth = Instance.new("Humanoid",hand4Integrity)
hand4Integrityhealth.DisplayDistanceType = "None"
hand4Integrityhealth.Health = 100
hand4Integrityhealth.MaxHealth = 100

Integrity = Instance.new("Part",hand4Integrity)
Integrity.Size = Vector3.new(1,1.5,0.2)
Integrity.Name = "Head"
Integrity.Position = hand1DeterminationPosition.Position
IntegrityMesh = Instance.new("SpecialMesh",Integrity)
IntegrityMesh.MeshId = "rbxassetid://430045961"
IntegrityMesh.Offset = Vector3.new(0.09,0.1,0)
Integrity.BrickColor = BrickColor.new("Institutional white")


IntegrityOrb = Instance.new("Part",Integrity)
IntegrityOrb.Size = Vector3.new(0.3,0.3,0.2)
IntegrityOrb.BrickColor = BrickColor.new("Deep blue")
weld(Integrity,IntegrityOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand4IntegrityPosition,Integrity,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end	
p:remove()

--5--


hand5Braveryhealth = Instance.new("Humanoid",hand5Bravery)
hand5Braveryhealth.DisplayDistanceType = "None"
hand5Braveryhealth.Health = 100
hand5Braveryhealth.MaxHealth = 100


Bravery = Instance.new("Part",hand5Bravery)
Bravery .Size = Vector3.new(1,1.5,0.2)
Bravery .Name = "Head"
Bravery.Position = hand1DeterminationPosition.Position
BraveryMesh = Instance.new("SpecialMesh",Bravery)
BraveryMesh.MeshId = "rbxassetid://430045961"
BraveryMesh.Offset = Vector3.new(0.09,0.1,0)
Bravery.BrickColor = BrickColor.new("Institutional white")

BraveryOrb = Instance.new("Part",Bravery)
BraveryOrb.Size = Vector3.new(0.3,0.3,0.2)
BraveryOrb.BrickColor = BrickColor.new("Deep orange")
weld(Bravery,BraveryOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand5BraveryPosition,Bravery,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end	
p:remove()
--6--

hand6Justicehealth = Instance.new("Humanoid",hand6Justice)
hand6Justicehealth.DisplayDistanceType = "None"
hand6Justicehealth.Health = 100
hand6Justicehealth.MaxHealth = 100

Justice = Instance.new("Part",hand6Justice)
Justice .Size = Vector3.new(1,1.5,0.2)
Justice.Name = "Head"
Justice.Position = hand1DeterminationPosition.Position
JusticeMesh = Instance.new("SpecialMesh",Justice)
JusticeMesh.MeshId = "rbxassetid://430045961"
JusticeMesh.Offset = Vector3.new(0.09,0.1,0)
Justice.BrickColor = BrickColor.new("Institutional white")

JusticeOrb = Instance.new("Part",Justice)
JusticeOrb.Size = Vector3.new(0.3,0.3,0.2)
JusticeOrb.BrickColor = BrickColor.new("New Yeller")
weld(Justice,JusticeOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand6JusticePosition,Justice,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end	
p:remove()
--7--

hand7Kindnesshealth = Instance.new("Humanoid",hand7Kindness)
hand7Kindnesshealth.DisplayDistanceType = "None"
hand7Kindnesshealth.Health = 100
hand7Kindnesshealth.MaxHealth = 100

Kindness = Instance.new("Part",hand7Kindness)
Kindness .Size = Vector3.new(1,1.5,0.2)
Kindness.Name = "Head"
Kindness.Position = hand1DeterminationPosition.Position
KindnessMesh = Instance.new("SpecialMesh",Kindness)
KindnessMesh.MeshId = "rbxassetid://430045961"
KindnessMesh.Offset = Vector3.new(0.09,0.1,0)
Kindness.BrickColor = BrickColor.new("Institutional white")

KindnessOrb = Instance.new("Part",Kindness)
KindnessOrb.Size = Vector3.new(0.3,0.3,0.2)
KindnessOrb.BrickColor = BrickColor.new("Lime green")
weld(Kindness,KindnessOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand7KindnessPosition,Kindness,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end	
p:remove()

PlaySound("GasterTheme", 1, char.Torso, true)

---functions and attacks

function BravAttack()
if hand5BraveryhealthDown ==  true then return end
if switchvalue == 7 then	

BraveryAttack = true	
	
WeldBravery = Instance.new("Weld",Bravery)
WeldBravery.Part0 = AttackPosition
WeldBravery.Part1 = Bravery
WeldBravery.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function BravRest()
if hand5BraveryhealthDown ==  true then return end	
if switchvalue == 6 then

if BraveryAttack == true then
WeldBravery:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
BraveryAttack = false	

	
end
end
end

function PatAttack()
if hand3PatiencehealthDown ==  true then return end
if switchvalue == 6 then	

PatienceAttack = true	
	
WeldPatience = Instance.new("Weld",Patience)
WeldPatience.Part0 = AttackPosition
WeldPatience.Part1 = Patience
WeldPatience.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function PatRest()
if hand3PatiencehealthDown ==  true then return end	
if switchvalue == 7 or switchvalue == 5 then

if PatienceAttack == true then
WeldPatience:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
PatienceAttack = false	

	
end
end
end


function DetAttack()
if hand1DeterminationhealthDown ==  true then return end
if switchvalue == 5 then	

DeterminationAttack = true	
	
WeldDet = Instance.new("Weld",Determination)
WeldDet.Part0 = AttackPosition
WeldDet.Part1 = Determination
WeldDet.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function DetRest()
if hand1DeterminationhealthDown ==  true then return end	
if switchvalue == 6 or switchvalue == 4 then

if DeterminationAttack == true then
WeldDet:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
DeterminationAttack = false	

	
end
end
end



function KinAttack()
if hand7KindnesshealthDown ==  true then return end
if switchvalue == 4 then	

KindAttack = true	
	
WeldKind = Instance.new("Weld",Kindness)
WeldKind.Part0 = AttackPosition
WeldKind.Part1 = Kindness
WeldKind.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function KinRest()
if hand7KindnesshealthDown ==  true then return end	
if switchvalue == 5 or switchvalue == 3 then

if KindAttack == true then
WeldKind:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
KindAttack = false	

	
end
end
end




function PerAttack()
if hand2PerseverancehealthDown ==  true then return end
if switchvalue == 3 then	

PerseveranceAttack = true	
	
WeldPer = Instance.new("Weld",Perseverance)
WeldPer.Part0 = AttackPosition
WeldPer.Part1 = Perseverance
WeldPer.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function PerRest()
if hand2PerseverancehealthDown ==  true then return end	
if switchvalue == 4 or switchvalue == 2 then

if PerseveranceAttack == true then
WeldPer:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
PerseveranceAttack = false	

	
end
end
end
 

function IntAttack()
if hand4IntegrityhealthDown ==  true then return end
if switchvalue == 2 then	

IntegrityAttack = true	
	
WeldInt = Instance.new("Weld",Integrity)
WeldInt.Part0 = AttackPosition
WeldInt.Part1 = Integrity
WeldInt.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end



function IntRest()
if hand4IntegrityhealthDown ==  true then return end	
if switchvalue == 3 or switchvalue == 1 then

if IntegrityAttack == true then
WeldInt:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
IntegrityAttack = false	

	
end
end
end




function JusAttack()

if switchvalue == 1 then	
if hand6JusticehealthDown ==  true then return end
JusticeAttack = true	
	
Weldjus = Instance.new("Weld",Justice)
Weldjus.Part0 = AttackPosition
Weldjus.Part1 = Justice
Weldjus.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))


	
end

end




function JusRest()
if hand6JusticehealthDown ==  true then return end	
if switchvalue == 2 then

if JusticeAttack == true then
Weldjus:remove()	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))
	
JusticeAttack = false	

	
end
end
end












--Key Presses

mouse.Button1Up:connect(function() 
	
InUse = false	
	
	
end)

mouse.Button1Down:connect(function() 
	
InUse = true	
	
	
end)

 mouse.KeyDown:connect(function(key)

if key =="r" then
if  hand7KindnesshealthDown	== true	then return end	
if	ShieldValueToGasterDebounce == true then return end

if ShieldValueToGaster == false then 
ShieldValueToGaster = true
if ShieldValueToGasterDebounce == false then
ShieldValueToGasterDebounce = true
	

local ShieldOfGaster6= Instance.new("Part",hand7Kindness)
ShieldOfGaster6.TopSurface = "Smooth"
ShieldOfGaster6.BottomSurface = "Smooth"
ShieldOfGaster6.Size = Vector3.new(18, 3, 18)
ShieldOfGaster6.CanCollide = true
ShieldOfGaster6.Anchored =true
ShieldOfGaster6.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster6 .FormFactor = "Custom"
ShieldOfGaster6.Transparency = 0.7
ShieldOfGaster6.CFrame= Torso.CFrame*CFrame.new(0,10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent6 = ShieldOfGaster6

local ShieldOfGaster5= Instance.new("Part",hand7Kindness)
ShieldOfGaster5.TopSurface = "Smooth"
ShieldOfGaster5.BottomSurface = "Smooth"
ShieldOfGaster5.Size = Vector3.new(18, 3, 18)
ShieldOfGaster5.CanCollide = true
ShieldOfGaster5.Anchored =true
ShieldOfGaster5.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster5 .FormFactor = "Custom"
ShieldOfGaster5.Transparency = 0.7
ShieldOfGaster5.CFrame= Torso.CFrame*CFrame.new(0,-10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent5 = ShieldOfGaster5

local ShieldOfGaster4= Instance.new("Part",hand7Kindness)
ShieldOfGaster4.TopSurface = "Smooth"
ShieldOfGaster4.BottomSurface = "Smooth"
ShieldOfGaster4.Size = Vector3.new(3, 18, 18)
ShieldOfGaster4.CanCollide = true
ShieldOfGaster4.Anchored =true
ShieldOfGaster4.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster4 .FormFactor = "Custom"
ShieldOfGaster4.Transparency = 0.7
ShieldOfGaster4.CFrame= Torso.CFrame*CFrame.new(-10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent4 = ShieldOfGaster4

local ShieldOfGaster3= Instance.new("Part",hand7Kindness)
ShieldOfGaster3.TopSurface = "Smooth"
ShieldOfGaster3.BottomSurface = "Smooth"
ShieldOfGaster3.Size = Vector3.new(3, 18, 18)
ShieldOfGaster3.CanCollide = true
ShieldOfGaster3.Anchored =true
ShieldOfGaster3.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster3 .FormFactor = "Custom"
ShieldOfGaster3.Transparency = 0.7
ShieldOfGaster3.CFrame= Torso.CFrame*CFrame.new(10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent3 = ShieldOfGaster3

local ShieldOfGaster2= Instance.new("Part",hand7Kindness)
ShieldOfGaster2.TopSurface = "Smooth"
ShieldOfGaster2.BottomSurface = "Smooth"
ShieldOfGaster2.Size = Vector3.new(18, 18, 3)
ShieldOfGaster2.CanCollide = true
ShieldOfGaster2.Anchored =true
ShieldOfGaster2.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster2 .FormFactor = "Custom"
ShieldOfGaster2.Transparency = 0.7
ShieldOfGaster2.CFrame= Torso.CFrame*CFrame.new(0,0,-10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent2 = ShieldOfGaster2

local ShieldOfGaster1= Instance.new("Part",hand7Kindness)
ShieldOfGaster1.TopSurface = "Smooth"
ShieldOfGaster1.BottomSurface = "Smooth"
ShieldOfGaster1.Size = Vector3.new(18, 18, 3)
ShieldOfGaster1.CanCollide = true
ShieldOfGaster1.Anchored =true
ShieldOfGaster1.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster1 .FormFactor = "Custom"
ShieldOfGaster1.Transparency = 0.7
ShieldOfGaster1.CFrame= Torso.CFrame*CFrame.new(0,0,10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent1 = ShieldOfGaster1
	 
for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = Torso.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Lime green")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05	
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)
end

ShieldValueToGasterDebounce = false
ShieldValueToGaster = true
end


elseif ShieldValueToGaster == true then 
ShieldValueToGaster = false
if ShieldValueToGasterDebounce == false then
ShieldValueToGasterDebounce = true

	
for i = 1,3 do wait()	
shieldparent6.Transparency =shieldparent6.Transparency + 0.1
shieldparent5.Transparency =shieldparent5.Transparency + 0.1
shieldparent4.Transparency =shieldparent4.Transparency + 0.1
shieldparent3.Transparency =shieldparent3.Transparency + 0.1
shieldparent2.Transparency =shieldparent2.Transparency + 0.1
shieldparent1.Transparency =shieldparent1.Transparency + 0.1
end
shieldparent6:remove()
shieldparent5:remove()
shieldparent4:remove()
shieldparent3:remove()
shieldparent2:remove()
shieldparent1:remove()

shieldparent1=nil
shieldparent2=nil
shieldparent3=nil
shieldparent4=nil
shieldparent5=nil
shieldparent6=nil


ShieldValueToGasterDebounce = false
ShieldValueToGaster = false		
end
end	
	
	
end

	
if key =="x" then
if (not vDebounce) then
	vDebounce = true	
for i = 1,5 do wait()
Torso.Transparency = Torso.Transparency + 0.2
char["Left Arm"].Transparency = char["Left Arm"].Transparency + 0.2
char["Left Leg"].Transparency = char["Left Leg"].Transparency + 0.2
char["Right Arm"].Transparency = char["Right Arm"].Transparency + 0.2
char["Right Leg"].Transparency = char["Right Leg"].Transparency + 0.2
char.Head.Transparency = char.Head.Transparency + 0.2
Crack1.Transparency = Crack1.Transparency + 0.2
Crack2.Transparency = Crack2.Transparency + 0.2
mouth.Transparency = mouth.Transparency + 0.2
Eye1.Transparency = Eye1.Transparency + 0.2
Eye2.Transparency = Eye2.Transparency + 0.2
MEye1.Transparency = MEye1.Transparency + 0.2
MEye2.Transparency = MEye2.Transparency + 0.2
end
	
teleportPlayer(mouse.hit.p)	
char.Humanoid.PlatformStand = false
vDebounce = false
end	
end	
	


if key == "q" then
	
if switchvalue == 1 then return end	
	
switchvalue = switchvalue - 1

print (switchvalue)

JusAttack()
JusRest()
IntAttack()
IntRest()
PerAttack()
PerRest()
KinAttack()
KinRest()
DetAttack()
DetRest()
PatAttack()
PatRest()
BravAttack()
BravRest()			
end	
		
if key == "e" then
	
if switchvalue == 7 then return end	
	
switchvalue = switchvalue + 1

print (switchvalue)

JusAttack()
JusRest()
IntAttack()	
IntRest()
PerAttack()
PerRest()
KinAttack()
KinRest()
DetAttack()
DetRest()
PatAttack()
PatRest()
BravAttack()
BravRest()			
end	


	
end)









---runservices








game:service("RunService").Stepped:connect(function() wait(.5)


if hand1DeterminationhealthDown == true and hand2PerseverancehealthDown == true and hand3PatiencehealthDown == true and hand4IntegrityhealthDown == true and hand5BraveryhealthDown == true and hand6JusticehealthDown == true and hand7KindnesshealthDown == true then
	
char.Humanoid.Health = 0
	
	
end 	
 	 	

if InUse == false then return end	
	
if JusticeAttack == true then
	
if InUse == false then return end
if InUse == true then
if JusticeAttackDebounce == true then return end	
if JusticeAttackDebounce == false then
	

JusticeAttackDebounce = true

wait(.2)
	
	
local PewJustice = Instance.new("Part",suit)
PewJustice.Size = Vector3.new(2,1,4)
PewJustice.BrickColor = BrickColor.new("New Yeller")
PewJustice.Position = Justice.Position
PewJustice.CanCollide = false

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(.5,.5),math.random(.5,.5),math.random(.5,.5))
parti.CFrame = Justice.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("New Yeller")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-2,2)/100,math.random(-2,2)/100,math.random(-2,2)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05	
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)



end

coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))         

		local handleCFrame = PewJustice.CFrame
		local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
		local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
		local laserShotClone = PewJustice:Clone()
	    PewJustice:remove()	
	    laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (PewJustice.Size.Z / 2))
		local bodyVelocity = Instance.new('BodyVelocity')
		bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
		bodyVelocity.Parent = laserShotClone
		bodyVelocity.Name = "Magic"
		bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


		laserShotClone.Parent = suit 
		
		
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

coroutine.resume(coroutine.create(function()
laserShotClone.Magic:remove()

wait(3)
laserShotClone:remove()
end))

end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)		
			
	
JusticeAttackDebounce = false		
end
end	
end	


----2nd Attack






 

if IntegrityAttack == true then
	
if InUse == false then return end
if InUse == true then
if IntegrityAttackDebounce == true then return end	
if IntegrityAttackDebounce == false then
	

IntegrityAttackDebounce = true

wait(.5)
	
for i = 1,2 do wait(1)	
local PewIntegrity = Instance.new("Part",suit)
PewIntegrity.Size = Vector3.new(5,1,5)
PewIntegrity.BrickColor = BrickColor.new("Dark blue")
PewIntegrity.Position = Integrity.Position
PewIntegrity.CanCollide = false
PewIntegrity.Transparency = 0.4

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))         

		local handleCFrame = PewIntegrity.CFrame
		local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
		local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
		local laserShotClone = PewIntegrity:Clone()
	    PewIntegrity:remove()	
	    laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (PewIntegrity.Size.Z / 2))
		local bodyVelocity = Instance.new('BodyVelocity')
		bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
		negativevelocity = bodyVelocity.velocity*-1
		bodyVelocity.Parent = laserShotClone
		bodyVelocity.Name = "Magic"
		bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


		laserShotClone.Parent = suit 
		
		
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)



end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)
coroutine.resume(coroutine.create(function()		
for i = 1,25 do wait()
	
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(5,1,5)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true	

p.Transparency = 0.7

p.CFrame =(laserShotClone.CFrame*CFrame.new(0,0,0)*CFrame.Angles(0,0.3*i,0))
	
game.Debris:AddItem(p,.2)
	
end			
	
bodyVelocity.velocity = negativevelocity	

for i = 1,25 do wait()
	
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(5,1,5)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true	

p.Transparency = 0.7
	
game.Debris:AddItem(p,.2)
p.CFrame =(laserShotClone.CFrame*CFrame.new(0,0,0)*CFrame.Angles(0,0.3*i,0))
	
end
end))		
end	
wait(1)
IntegrityAttackDebounce = false		
end
end	
end	


--3rd AttackPosition
if PerseveranceAttack == true then
	
if InUse == false then return end
if InUse == true then
if PerseveranceAttackDebounce == true then return end	
if PerseveranceAttackDebounce == false then
PerseveranceAttackDebounce = true	
RandomPerseverance = math.random(1,2)

if RandomPerseverance == 2 then	
local randomnumber = math.random(1,2)



wait(.3)
	


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,5 do wait()
	
p.Size=Vector3.new(0.5*i,0.5*i,0.5*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))

local throwbone1 = Instance.new("Part",suit)
throwbone1.TopSurface = "Smooth"
throwbone1.BottomSurface = "Smooth"
throwbone1.Size = Vector3.new(0.2, 0.2, 3)
throwbone1.CanCollide = true
throwbone1.BrickColor = BrickColor.new("Magenta")
throwbone1 .FormFactor = "Custom"
local Weldbonepart2 = Instance.new("Weld",throwbone1)
Weldbonepart2.Part0 = throwbone1
Weldbonepart2.Part1 = Perseverance 
Weldbonepart2.Name = "WBP22"

local throwbone1weld2 = Instance.new("Part",throwbone1)
throwbone1weld2.TopSurface = "Smooth"
throwbone1weld2.BottomSurface = "Smooth"
throwbone1weld2.Size = Vector3.new(0.4, 0.4, 0.4)
throwbone1weld2.CanCollide = true
throwbone1weld2.BrickColor = BrickColor.new("Magenta")
throwbone1weld2 .FormFactor = "Custom"
local Weldbonepart2weld2 = Instance.new("Weld",throwbone1)
Weldbonepart2weld2.Part0 = throwbone1weld2
Weldbonepart2weld2.Part1 = throwbone1
Weldbonepart2weld2.Name = "WBP2W2"
Weldbonepart2weld2.C1 = CFrame.new(0, 0, -1.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local throwbone1weld1 = Instance.new("Part",throwbone1)
throwbone1weld1.TopSurface = "Smooth"
throwbone1weld1.BottomSurface = "Smooth"
throwbone1weld1.Size = Vector3.new(0.4, 0.4, 0.4)
throwbone1weld1.CanCollide = true
throwbone1weld1.BrickColor = BrickColor.new("Magenta")
throwbone1weld1 .FormFactor = "Custom"
local Weldbonepart2weld1 = Instance.new("Weld",throwbone1)
Weldbonepart2weld1.Part0 = throwbone1weld1
Weldbonepart2weld1.Part1 = throwbone1
Weldbonepart2weld1.Name = "WBP2W1"
Weldbonepart2weld1.C1 = CFrame.new(0, 0, 1.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


if randomnumber == 1 then
for i = 1,10 do wait()
	
Weldbonepart2.C1 = CFrame.new(-3, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7*i, 0, 0)
	
	
end
end 

if randomnumber == 2 then
for i = 1,10 do wait()
	
Weldbonepart2.C1 = CFrame.new(3, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7*i, 0, 0)
	
	
end
end    


		local handleCFrame = throwbone1.CFrame
		local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
		local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
		local laserShotClone = throwbone1:Clone()
		laserShotClone.WBP22:remove()
		laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (throwbone1.Size.Z / 2))
		local bodyVelocity = Instance.new('BodyVelocity')
		bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
		bodyVelocity.Parent = laserShotClone
		bodyVelocity.Name = "Magic"
		bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


		laserShotClone.Parent = suit 

throwbone1:remove()         


		
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

coroutine.resume(coroutine.create(function()
laserShotClone.Magic:remove()

wait(3)
laserShotClone:remove()
end))

end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)		


elseif RandomPerseverance == 1 then	
	
           PlaySound("Gaster", 1, PerseveranceOrb,false)
           wait(1)
	       local ray = Ray.new(PerseveranceOrb.CFrame.p, (mouse.Hit.p - PerseveranceOrb.CFrame.p).unit*1000)
	       local hit, position = game.Workspace:FindPartOnRay(ray, char)
	
	

	

                local ray = Ray.new(PerseveranceOrb.CFrame.p, (mouse.Hit.p -PerseveranceOrb.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - PerseveranceOrb.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Bright purple")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.8,0.1,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, PerseveranceOrb.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)



coroutine.resume(coroutine.create(function()
	wait(1)
                for i=1,10 do
                    wait()
                    rp.Transparency=rp.Transparency + 0.1
 
                end
rp:remove()
end))

function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end rp.Touched:connect(touch)
	
 	
	
	
	
	
			
end
RandomPerseverance = 0

PerseveranceAttackDebounce = false		
end
end	
end	

if KindAttack == true then
	
if InUse == false then return end
if InUse == true then
if KindnessAttackDebounce == true then return end	
if KindnessAttackDebounce == false then
KindnessAttackDebounce = true
                local ray = Ray.new(Kindness.CFrame.p, (mouse.Hit.p -Kindness.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - Kindness.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=1
                rp.BrickColor=BrickColor.new("Deep orange")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.6,0.6,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, Kindness.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
                rp:Destroy()



local ps = Instance.new("Part", suit)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Toothpaste")
 ps.FormFactor = "Custom"
ps.Transparency = 1
 ps.Size = Vector3.new(.2, 3, 3)
 ps.Anchored = true
 ps.CanCollide = false
 ps.CFrame = CFrame.new(position)*CFrame.new(0,3,0)
local cy=Instance.new("SpecialMesh",ps)
cy.MeshType = "Cylinder"

coroutine.resume(coroutine.create(function()
	


local SpawnSounds = {
        Spike = Instance.new("Sound")

}
 
SpawnSounds["Spike"].SoundId = "http://www.roblox.com/asset?id=486286230"
SpawnSounds["Spike"].Volume = 0.5
 
function PlaySpawnSound(soundname, pitch)
        SpawnSounds[soundname].Parent = ps
        SpawnSounds[soundname].Pitch = pitch
        SpawnSounds[soundname]:Play()
        local oldsound = SpawnSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        SpawnSounds[soundname] = SpawnSounds[soundname]:clone()
end



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))  

PlaySpawnSound("Spike", 1)




wait(0.5)



end))



local Shield6= Instance.new("Part",hand7Kindness)
Shield6.TopSurface = "Smooth"
Shield6.BottomSurface = "Smooth"
Shield6.Size = Vector3.new(18, 3, 18)
Shield6.CanCollide = true
Shield6.Anchored =true
Shield6.BrickColor = BrickColor.new("Lime green")
Shield6 .FormFactor = "Custom"
Shield6.Transparency = 0.7
Shield6.CFrame= ps.CFrame*CFrame.new(0,10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield5= Instance.new("Part",hand7Kindness)
Shield5.TopSurface = "Smooth"
Shield5.BottomSurface = "Smooth"
Shield5.Size = Vector3.new(18, 3, 18)
Shield5.CanCollide = true
Shield5.Anchored =true
Shield5.BrickColor = BrickColor.new("Lime green")
Shield5 .FormFactor = "Custom"
Shield5.Transparency = 0.7
Shield5.CFrame= ps.CFrame*CFrame.new(0,-10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield4= Instance.new("Part",hand7Kindness)
Shield4.TopSurface = "Smooth"
Shield4.BottomSurface = "Smooth"
Shield4.Size = Vector3.new(3, 18, 18)
Shield4.CanCollide = true
Shield4.Anchored =true
Shield4.BrickColor = BrickColor.new("Lime green")
Shield4 .FormFactor = "Custom"
Shield4.Transparency = 0.7
Shield4.CFrame= ps.CFrame*CFrame.new(-10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield3= Instance.new("Part",hand7Kindness)
Shield3.TopSurface = "Smooth"
Shield3.BottomSurface = "Smooth"
Shield3.Size = Vector3.new(3, 18, 18)
Shield3.CanCollide = true
Shield3.Anchored =true
Shield3.BrickColor = BrickColor.new("Lime green")
Shield3 .FormFactor = "Custom"
Shield3.Transparency = 0.7
Shield3.CFrame= ps.CFrame*CFrame.new(10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield2= Instance.new("Part",hand7Kindness)
Shield2.TopSurface = "Smooth"
Shield2.BottomSurface = "Smooth"
Shield2.Size = Vector3.new(18, 18, 3)
Shield2.CanCollide = true
Shield2.Anchored =true
Shield2.BrickColor = BrickColor.new("Lime green")
Shield2 .FormFactor = "Custom"
Shield2.Transparency = 0.7
Shield2.CFrame= ps.CFrame*CFrame.new(0,0,-10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield1= Instance.new("Part",hand7Kindness)
Shield1.TopSurface = "Smooth"
Shield1.BottomSurface = "Smooth"
Shield1.Size = Vector3.new(18, 18, 3)
Shield1.CanCollide = true
Shield1.Anchored =true
Shield1.BrickColor = BrickColor.new("Lime green")
Shield1 .FormFactor = "Custom"
Shield1.Transparency = 0.7
Shield1.CFrame= ps.CFrame*CFrame.new(0,0,10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = ps.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Lime green")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05	
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)
end

wait(3)

function squeeze(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end 

Shield6.Touched:connect(squeeze)
Shield5.Touched:connect(squeeze)
Shield4.Touched:connect(squeeze)
Shield3.Touched:connect(squeeze)
Shield2.Touched:connect(squeeze)
Shield1.Touched:connect(squeeze)


for i = 1,30 do wait()
	
Shield6.CFrame= clerp(Shield6.CFrame*CFrame.new(0,-.01*i,0),ps.CFrame,.1)
Shield5.CFrame= clerp(Shield5.CFrame*CFrame.new(0,.01*i,0),ps.CFrame,.1)
Shield4.CFrame= clerp(Shield4.CFrame*CFrame.new(.01*i,0,0),ps.CFrame,.1)
Shield3.CFrame= clerp(Shield3.CFrame*CFrame.new(-.01*i,0,0),ps.CFrame,.1)
Shield2.CFrame= clerp(Shield2.CFrame*CFrame.new(0,0,.01*i),ps.CFrame,.1)
Shield1.CFrame= clerp(Shield1.CFrame*CFrame.new(0,0,-.01*i),ps.CFrame,.1)
	
	
end


for i = 1,30 do wait()
	
Shield6.CFrame= clerp(Shield6.CFrame*CFrame.new(0,-.01*i,0),ps.CFrame,.1)
Shield5.CFrame= clerp(Shield5.CFrame*CFrame.new(0,.01*i,0),ps.CFrame,.1)
Shield4.CFrame= clerp(Shield4.CFrame*CFrame.new(.01*i,0,0),ps.CFrame,.1)
Shield3.CFrame= clerp(Shield3.CFrame*CFrame.new(-.01*i,0,0),ps.CFrame,.1)
Shield2.CFrame= clerp(Shield2.CFrame*CFrame.new(0,0,.01*i),ps.CFrame,.1)
Shield1.CFrame= clerp(Shield1.CFrame*CFrame.new(0,0,-.01*i),ps.CFrame,.1)
	
	
end


ps:remove()	


wait(3)
Shield1:Remove()
Shield2:Remove()
Shield3:Remove()
Shield4:Remove()
Shield5:Remove()
Shield6:Remove()

KindnessAttackDebounce = false		
end
end
end





---5th attack---


if DeterminationAttack == true then
	
if InUse == false then return end
if InUse == true then
if DetermiantionAttackDebounce == true then return end	
if DetermiantionAttackDebounce == false then
	

DetermiantionAttackDebounce = true


for i = 1,3 do
local head = Instance.new("Part",char)
head.Size = Vector3.new(18,.2,18)
head.CanCollide = false
head.Anchored = true
head.CFrame = CFrame.new(char.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
head.Transparency = 1
for i = 1,2 do
decal = Instance.new("Decal",head)
decal.Texture = "rbxassetid://333659534"
if i == 1 then
decal.Face = Enum.NormalId.Top
else
decal.Face = Enum.NormalId.Bottom
end
end

local bg = Instance.new("BodyGyro") 
bg.Parent = head
bg.maxTorque = Vector3.new(0,0,0) 
bg.maxTorque = Vector3.new(0,0,0) 

RandomGasterRotaion = math.random(-10,10)

for i = 1,5 do wait()
	print ' test'
head.CFrame = clerp(head.CFrame*CFrame.new(RandomGasterRotaion,1*i,1*i),head.CFrame,.1)


end
RandomGasterRotaion = 0


	       local ray = Ray.new(head.CFrame.p, (mouse.Hit.p - head.CFrame.p).unit*1000)
	       local hit, position = game.Workspace:FindPartOnRay(ray, char)
	
	

	

                local ray = Ray.new(head.CFrame.p, (mouse.Hit.p -head.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - head.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Institutional white")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(10,0,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, head.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
head.CFrame = CFrame.new(head.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end rp.Touched:connect(touch)

coroutine.resume(coroutine.create(function()
	
PlaySound("Gaster", 1, head,false)
                for i=1,10 do
                    wait()
                    cy.Scale=cy.Scale+Vector3.new(0,0,.01*i)
                    head.CFrame = head.CFrame*CFrame.new(0,0,1*i)*CFrame.Angles(0,0,0)
                end
for i=1,10 do wait()
	
decal.Transparency =	decal.Transparency + 0.1
rp.Transparency =	rp.Transparency + 0.1	
	
end 
wait(1)
head:Destroy()
rp:Destroy()
end))
end	


wait(0.1)	
DetermiantionAttackDebounce = false		

end

end	
end	




if PatienceAttack == true then
	
if InUse == false then return end
if InUse == true then
if PatienceAttackDebounce == true then return end	
if PatienceAttackDebounce == false then
	

PatienceAttackDebounce = true




	       local ray = Ray.new(PatienceOrb.CFrame.p, (mouse.Hit.p - PatienceOrb.CFrame.p).unit*1000)
	       local hit, position = game.Workspace:FindPartOnRay(ray, char)
	
	

	

                local ray = Ray.new(PatienceOrb.CFrame.p, (mouse.Hit.p -PatienceOrb.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - PatienceOrb.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Cyan")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.5,0.5,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, PatienceOrb.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
coroutine.resume(coroutine.create(function()
                for i=1,13 do
                    wait()
                    cy.Scale=cy.Scale-Vector3.new(.01*i,.01*i,0)
 
                end
end))
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0
local hittorso = hit.Parent.Torso
local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

local Tied = Instance.new("Part",hittorso)
Tied.Size = Vector3.new(4,2,1.5)
Tied.Name = "Rope"
Tied.CanCollide = false
Tied.Transparency = 0.1
Tied.BrickColor = BrickColor.new("Cyan")
Tied.CFrame = hittorso.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local Weld = Instance.new("Weld",hittorso)
Weld.Part0 = hittorso
Weld.Part1 = Tied
Weld.C1 = hittorso.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


hit.Parent.Torso.Anchored = true
hit.Parent["Left Arm"].Anchored = true
hit.Parent["Right Arm"].Anchored = true

wait(3)

for i = 1,10 do wait(.1)
	
Tied.Transparency = Tied.Transparency  + 0.1
	
	
end


hit.Parent.Torso.Anchored = false
hit.Parent["Left Arm"].Anchored = false
hit.Parent["Right Arm"].Anchored = false


end end rp.Touched:connect(touch)

coroutine.resume(coroutine.create(function()
	

wait(1)

rp:Destroy()
end))
end	


wait(1)	
PatienceAttackDebounce = false		

end

end	

if BraveryAttack == true then
	
if InUse == false then return end
if InUse == true then
if BraveryAttackDebounce == true then return end	
if BraveryAttackDebounce == false then
BraveryAttackDebounce = true
                local ray = Ray.new(Bravery.CFrame.p, (mouse.Hit.p -Bravery.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - Bravery.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=1
                rp.BrickColor=BrickColor.new("Deep orange")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.6,0.6,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, Kindness.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
                rp:Destroy()



local ps = Instance.new("Part", suit)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Toothpaste")
 ps.FormFactor = "Custom"
ps.Transparency = 1
 ps.Size = Vector3.new(.5, .5, .5)
 ps.Anchored = true
 ps.CanCollide = false
 ps.CFrame = CFrame.new(position)*CFrame.new(0,3,0)
local cy=Instance.new("SpecialMesh",ps)
cy.MeshType = "Cylinder"
for i =1,5 do

coroutine.resume(coroutine.create(function()	
coroutine.resume(coroutine.create(function()
	


local SpawnSounds = {
        Spike = Instance.new("Sound")

}
 
SpawnSounds["Spike"].SoundId = "http://www.roblox.com/asset?id=486286230"
SpawnSounds["Spike"].Volume = 0.1
 
function PlaySpawnSound(soundname, pitch)
        SpawnSounds[soundname].Parent = ps
        SpawnSounds[soundname].Pitch = pitch
        SpawnSounds[soundname]:Play()
        local oldsound = SpawnSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        SpawnSounds[soundname] = SpawnSounds[soundname]:clone()
end



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.3,0.3,0.3)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,8 do wait()
	
p.Size=Vector3.new(0.3*i,0.3*i,0.3*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))  

PlaySpawnSound("Spike", 1)



wait(0.5)



end))







xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)	
	
local Bomb= Instance.new("Part",hand5Bravery)
Bomb.TopSurface = "Smooth"
Bomb.BottomSurface = "Smooth"
Bomb.Size = Vector3.new(0.1,0.1,0.1)
Bomb.CanCollide = true
Bomb.Anchored =true
Bomb.BrickColor = BrickColor.new("Mid gray")
Bomb .Shape = "Ball"
Bomb .Material= "Neon"
Bomb.Transparency = 0
Bomb.CFrame= ps.CFrame*CFrame.new(xmathrandom,ymathrandom ,zmathrandom )*CFrame.fromEulerAnglesXYZ(0, 0, 0)


xmathrandom = 0
ymathrandom = 0
zmathrandom = 0

wait(1)


Bomb.BrickColor = BrickColor.new("Deep orange")
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.1,0.1,0.1)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()	
for i = 1,2 do wait()
	
p.Size=Vector3.new(0.1*i,0.1*i,0.1*i)
p.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))
end	
p:remove()
end))  
wait(1)


local explosion = Instance.new("Part",workspace)

explosion.FormFactor="Custom"

explosion.Size=Vector3.new(0.8,0.8,0.8)

explosion.TopSurface = 0

explosion.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

explosion.BrickColor = Fire

explosion.CanCollide=false

explosion.Anchored=true

explosion.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

PlaySound("Explode", 1, explosion, false)

function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-0

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end 

explosion.Touched:connect(touch)

coroutine.resume(coroutine.create(function()	
for i = 1,10 do wait()
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
explosion.Size=Vector3.new(3*i,3*i,3*i)
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
explosion.Transparency=explosion.Transparency + 0.1
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
end	
explosion:remove()
Bomb:remove()
end))  






ps:remove()	
end))
end
wait(2)


BraveryAttackDebounce = false		
end
end
end




	
	












 	
	

	
end)


game:service("RunService").Stepped:connect(function()
	
	
if hand1Determinationhealth.Health == 0 then

if hand1DeterminationhealthDown == false then
hand1DeterminationhealthDown	= true

Determination:remove()
DeterminationAttack = false
DetermiantionAttackDebounce = false	

	
	
end	
	
	
end	
	
end)

game:service("RunService").Stepped:connect(function()
	
	
if hand2Perseverancehealth.Health == 0 then

if hand2PerseverancehealthDown == false then
hand2PerseverancehealthDown	= true

Perseverance:remove()
PerseveranceAttack = false
PerseveranceAttackDebounce = false	

	
	
end	
	
	
end
	
end)
game:service("RunService").Stepped:connect(function()
	
	
if hand3Patiencehealth.Health == 0 then

if hand3PatiencehealthDown == false then
hand3PatiencehealthDown	= true

Patience:remove()
PatienceAttack = false
PatienceAttackDebounce = false	

	
	
end	
	
	
end

	
end)
game:service("RunService").Stepped:connect(function()
	
	
if hand4Integrityhealth.Health == 0 then

if hand4IntegrityhealthDown == false then
hand4IntegrityhealthDown	= true

Integrity:remove()
IntegrityAttack = false
IntegrityAttackDebounce = false	

	
	
end	
	
	
end
	
end)
game:service("RunService").Stepped:connect(function()
	
	
if hand5Braveryhealth.Health == 0 then

if hand5BraveryhealthDown == false then
hand5BraveryhealthDown	= true

Bravery:remove()
BraveryAttack = false
BraveryAttackDebounce = false

	
	
end	
	
	
end
	
end)
game:service("RunService").Stepped:connect(function()
	
	
if hand6Justicehealth.Health == 0 then

if hand6JusticehealthDown == false then
hand6JusticehealthDown	= true

Justice:remove()
JusticeAttack = false
JusticeAttackDebounce = false	

	
	
end	
	
	
end
	
end)
game:service("RunService").Stepped:connect(function()
	
	
if hand7Kindnesshealth.Health == 0 then

if hand7KindnesshealthDown == false then
hand7KindnesshealthDown	= true

Kindness:remove()
KindnessAttack = false
KindnessAttackDebounce = false	

if	ShieldValueToGasterDebounce == false then 
ShieldValueToGasterDebounce = true 
for i = 1,3 do wait()	
shieldparent6.Transparency =shieldparent6.Transparency + 0.1
shieldparent5.Transparency =shieldparent5.Transparency + 0.1
shieldparent4.Transparency =shieldparent4.Transparency + 0.1
shieldparent3.Transparency =shieldparent3.Transparency + 0.1
shieldparent2.Transparency =shieldparent2.Transparency + 0.1
shieldparent1.Transparency =shieldparent1.Transparency + 0.1
end
shieldparent6:remove()
shieldparent5:remove()
shieldparent4:remove()
shieldparent3:remove()
shieldparent2:remove()
shieldparent1:remove()

shieldparent1=nil
shieldparent2=nil
shieldparent3=nil
shieldparent4=nil
shieldparent5=nil
shieldparent6=nil




end	
	
end	
	
	
end
	
end)

char.Humanoid.MaxHealth = math.huge
wait()
char.Humanoid.Health = math.huge