--[Made by R R U#4232 & Dooven]--
--[For AzuLX.]--
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

game.Workspace.non.Humanoid.WalkSpeed = 20

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
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = game.Workspace.non
local Humanoid = Character.Humanoid
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
  local shirtid = 179641921
  local pantsid = 215261448
  if Character:findFirstChild("Shirt") ~= nil then
    Character.Shirt:Destroy()
  end
  if Character:findFirstChild("Pants") ~= nil then
    Character.Pants:Destroy()
  end
  local shirt = Instance.new("Shirt", Character)
  shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=" .. shirtid .. ""
  local pants = Instance.new("Pants", Character)
  pants.PantsTemplate = "http://www.roblox.com/asset/?id=" .. pantsid .. ""
local Camera = game.Workspace.CurrentCamera
local HumanoidRootPart = Character.HumanoidRootPart
local RootJoint = HumanoidRootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local Torsovelocity = (HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = HumanoidRootPart.Velocity.y
local sine = 0
local change = 1
local Create = LoadLibrary("RbxUtility").Create


for i,v in pairs(Character:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end

end
for i,v in pairs(Head:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end

local m = Create("Model"){
        Parent = Character,
        Name = "WeaponModel",
}

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil


local newMotor = function(part0, part1, c0, c1)
        local w = Create('Motor'){
                Parent = part0,
                Part0 = part0,
                Part1 = part1,
                C0 = c0,
                C1 = c1,
        }
        return w
end

function clerp(a, b, t)
        return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
        RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
        Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
        RW.C0 = clerp(RW.C0, table[3], speed) 
        LW.C0 = clerp(LW.C0, table[4], speed) 
        RH.C0 = clerp(RH.C0, table[5], speed) 
        LH.C0 = clerp(LH.C0, table[6], speed) 
        if bool == true then
                if resetc1 == false then
                        resetc1 = true
                        RootJoint.C1 = RootJoint.C1
                        Torso.Neck.C1 = Torso.Neck.C1
                        RW.C1 = rarmc1
                        LW.C1 = larmc1
                        RH.C1 = rlegc1
                        LH.C1 = llegc1
                end
        end
end

ArtificialHB = Create("BindableEvent", script){
        Parent = script,
        Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
        tf = tf + s
        if tf >= frame then
                if allowframeloss then
                        script.Heartbeat:Fire()
                        lastframe = tick()
                else
                        for i = 1, math.floor(tf / frame) do
                                script.Heartbeat:Fire()
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

function RemoveOutlines(part)
        part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
        
CFuncs = {        
        Part = {
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
        
        Mesh = {
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

        Weld = {
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

        Sound = {
                Create = function(id, par, vol, pit) 
                        coroutine.resume(coroutine.create(function()
                                local Sound = Create("Sound"){
                                        Volume = vol,
                                        Pitch = pit or 1,
                                        SoundId = "rbxassetid://" .. id,
                                        Parent = par or workspace,
                                }
                                Sound:play() 
                                game:GetService("Debris"):AddItem(Sound, 10)
                        end))
                end;
        };
        
        Decal = {
                Create = function(Color, Texture, Transparency, Name, Parent)
                        local Decal = Create("Decal"){
                                Color3 = Color,
                                Texture = "rbxassetid://" .. Texture,
                                Transparency = Transparency,
                                Name = Name,
                                Parent = Parent,
                        }
                        return Decal
                end;
        };
        
        BillboardGui = {
                Create = function(Parent, Image, Position, Size)
                        local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
                        BillPar.CFrame = CFrame.new(Position)
                        local Bill = Create("BillboardGui"){
                                Parent = BillPar,
                                Adornee = BillPar,
                                Size = UDim2.new(1, 0, 1, 0),
                                SizeOffset = Vector2.new(Size, Size),
                        }
                        local d = Create("ImageLabel", Bill){
                                Parent = Bill,
                                BackgroundTransparency = 1,
                                Size = UDim2.new(1, 0, 1, 0),
                                Image = "rbxassetid://" .. Image,
                        }
                        return BillPar
                end
        };
        
        ParticleEmitter = {
                Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
                        local Particle = Create("ParticleEmitter"){
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
                        return Particle
                end;
        };
        
        CreateTemplate = {
                
        };
}

function rayCast(Position, Direction, Range, Ignore)
        return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
        local list = (game.Workspace:children())
        local torso = nil
        local dist = 1000
        local temp, human, temp2 = nil, nil, nil
        for x = 1, #list do
                temp2 = list[x]
                if temp2.className == "Model" and temp2.Name ~= Character.Name then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
                                local dohit = true
                                if dohit == true then
                                        torso = temp
                                        dist = (temp.Position - pos).magnitude
                                end
                        end
                end
        end
        return torso, dist
end

function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
        if hit.Parent == nil then
                return
        end
        local h = hit.Parent:FindFirstChild("Humanoid")
        for _, v in pairs(hit.Parent:children()) do
                if v:IsA("Humanoid") then
                        h = v
                end
        end
        if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
                if hit.Parent:findFirstChild("DebounceHit") ~= nil then
                        if hit.Parent.DebounceHit.Value == true then
                                return
                        end
                end
                local c = Create("ObjectValue"){
                        Name = "creator",
                        Value = game:service("Players").LocalPlayer,
                        Parent = h,
                }
                game:GetService("Debris"):AddItem(c, .5)
                if HitSound ~= nil and HitPitch ~= nil then
                        CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
                end
                local Damage = math.random(0, 0)
                local blocked = false
                local block = hit.Parent:findFirstChild("Block")
                if block ~= nil then
                        if block.className == "IntValue" then
                                if block.Value > 0 then
                                        blocked = true
                                        block.Value = block.Value - 1
                                        print(block.Value)
                                end
                        end
                end
                if blocked == false then
                        h.Health = h.Health - Damage
                        ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                else
                        h.Health = h.Health - (Damage / 2)
                        ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                end
                if Type == "Knockdown" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand = false
                        end), hum)
                        local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
                        local bodvol = Create("BodyVelocity"){
                                velocity = angle * knockback,
                                P = 5000,
                                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                                Parent = hit,
                        }
                        local rl = Create("BodyAngularVelocity"){
                                P = 3000,
                                maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
                                angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
                                Parent = hit,
                        }
                        game:GetService("Debris"):AddItem(bodvol, .5)
                        game:GetService("Debris"):AddItem(rl, .5)
                elseif Type == "Normal" then
                        local vp = Create("BodyVelocity"){
                                P = 500,
                                maxForce = Vector3.new(math.huge, 0, math.huge),
                                velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
                        }
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
                elseif Type == "Up" then
                        local bodyVelocity = Create("BodyVelocity"){
                                velocity = Vector3.new(0, 20, 0),
                                P = 5000,
                                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                                Parent = hit,
                        }
                        game:GetService("Debris"):AddItem(bodyVelocity, .5)
                elseif Type == "DarkUp" then
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 1, 0.1 do
                                        swait()
                                        Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
                                end
                        end))
                        local bodyVelocity = Create("BodyVelocity"){
                                velocity = Vector3.new(0, 20, 0),
                                P = 5000,
                                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                                Parent = hit,
                        }
                        game:GetService("Debris"):AddItem(bodyVelocity, 1)
                elseif Type == "Snare" then
                        local bp = Create("BodyPosition"){
                                P = 2000,
                                D = 100,
                                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                                position = hit.Parent.Torso.Position,
                                Parent = hit.Parent.Torso,
                        }
                        game:GetService("Debris"):AddItem(bp, 1)
                elseif Type == "Freeze" then
                        local BodPos = Create("BodyPosition"){
                                P = 50000,
                                D = 1000,
                                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                                position = hit.Parent.Torso.Position,
                                Parent = hit.Parent.Torso,
                        }
                        local BodGy = Create("BodyGyro") {
                                maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
                                P = 20e+003,
                                Parent = hit.Parent.Torso,
                                cframe = hit.Parent.Torso.CFrame,
                        }
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part) 
                                swait(1.5)
                                Part.Anchored = false
                        end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                end
                local debounce = Create("BoolValue"){
                        Name = "DebounceHit",
                        Parent = hit.Parent,
                        Value = true,
                }
                game:GetService("Debris"):AddItem(debounce, Delay)
                c = Create("ObjectValue"){
                        Name = "creator",
                        Value = Player,
                        Parent = h,
                }
                game:GetService("Debris"):AddItem(c, .5)
        end
end

function ShowDamage(Pos, Text, Time, Color)
        local Rate = (1 / 30)
        local Pos = (Pos or Vector3.new(0, 0, 0))
        local Text = (Text or "")
        local Time = (Time or 2)
        local Color = (Color or Color3.new(1, 0, 1))
        local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
        EffectPart.Anchored = true
        local BillboardGui = Create("BillboardGui"){
                Size = UDim2.new(3, 0, 3, 0),
                Adornee = EffectPart,
                Parent = EffectPart,
        }
        local TextLabel = Create("TextLabel"){
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Text = Text,
                Font = "SciFi",
                TextColor3 = Color,
                TextScaled = true,
                Parent = BillboardGui,
        }
        game.Debris:AddItem(EffectPart, (Time))
        EffectPart.Parent = game:GetService("Workspace")
        delay(0, function()
                local Frames = (Time / Rate)
                for Frame = 1, Frames do
                        wait(Rate)
                        local Percent = (Frame / Frames)
                        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
                        TextLabel.TextTransparency = Percent
                end
                if EffectPart and EffectPart.Parent then
                        EffectPart:Destroy()
                end
        end)
end

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
        for _, c in pairs(workspace:children()) do
                local hum = c:findFirstChild("Humanoid")
                if hum ~= nil then
                        local head = c:findFirstChild("Torso")
                        if head ~= nil then
                                local targ = head.Position - Part.Position
                                local mag = targ.magnitude
                                if mag <= Magnitude and c.Name ~= Player.Name then 
                                        Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, HumanoidRootPart, .1, HitSound, HitPitch)
                                end
                        end
                end
        end
end
Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(1.04638278, 0.0833724737, 1.05752301))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0152893066, 1.09336019, -0.0100250244, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0641347393, 0.0500000007, 0.152304679))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, 0.513473511, 1.46200466, 5.20654203e-06, 1.18329763e-06, 0.999999881, -0.975133061, -0.22161977, 5.3393137e-06, 0.2216198, -0.975133181, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.658302665, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.28811264, -0.738201141, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.108014137, 0.26328364))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555763245, 0.309574127, -0.606243134, 1.65529309e-05, 7.33769298e-07, 1, 0.573578358, -0.819151282, -8.89335024e-06, 0.819151282, 0.573578358, -1.39802642e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.344293952, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.541404724, -1.87218857, 0.523193359, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675083995, 1, 0.222779289))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.50349045, -0.861419678, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 1.05752575, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.53163147, 0, 0.0329122543, -0.99999994, 0, 0, 0, 0, -1, 0, -0.99999994, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.337542862, 1, 0.418529719))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.243030414, 0.459734023, 1.05752301))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.438461304, -0.26919359, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.54006958, -1.71354675, -0.523193359, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675083995, 0.54005003, 0.222779289))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(1.03524435, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00072479248, 0.540725708, -1.71354663, 0.00129503128, 0, -0.999999106, -0.999999166, 0, -0.0012950314, 0, 0.99999994, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.675373614, 0.540040255))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.344293952, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.538574219, -1.87218857, 0.523193359, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675083995, 1, 0.222779289))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.344294101, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.526565552, -1.87218475, 0.528656006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.945115685, 1, 0.270034641))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel brown","Part",Vector3.new(0.0500000007, 1.04508948, 0.351043731))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515830994, -0.00331878662, -1.87555981, -0.999985933, -2.03286595e-06, 0.00531513244, 0.00531513244, 1.08051044e-08, 0.999985933, -2.0328946e-06, 1, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.405052274, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.108014137, 1.08013809))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.573822021, 0.795421124, -0.00455093384, 0.999990582, -1.22497568e-11, -4.32133675e-07, -1.3222512e-10, -1, 7.14671614e-07, -4.32133675e-07, -7.14687474e-07, -0.999990582))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.264971137, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.370452881, 0.528656006, 1.71016216, 1, 0, 0, 0, 0, 1, 0, -1, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.270031154, 0.404953033))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.108014137, 0.195775047))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555763245, 0.309577942, -0.835769653, 1.65529309e-05, 7.33769298e-07, 1, 0.573578358, -0.819151282, -8.89335024e-06, 0.819151282, 0.573578358, -1.39802642e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.139411315, 0.189023912))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.269522369, 0.465808868, 0.361175537, 0, 1, -1.90737774e-05, 0, -1.90737774e-05, -1, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810090542, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.189023659, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.361175537, -0.293157101, -0.529937744, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135017633, 0.222782701))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.186323255, 0.0500000007, 0.139405593))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.36088562, -0.0552983284, -0.465808868, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.688589931, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.351044953, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.526565552, -1.87556076, -0.522010803, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.945115685, 1, 0.270034641))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0500000007, 1.05752301))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.54850769, -0.0329122543, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.33753258, 0.418533385, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0500000007, 0.229529947, 0.12151558))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.533878326, -0.33636713, 0.364547729, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.135017127, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.5381813, -0.912792206, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.41573334, -0.827659607, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.3286171, -0.765209198, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.344293505))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.090637207, 0.759609222, -1.87218857, -0.772800207, 0, -0.634649456, -0.634649456, 0, 0.772800207, 0, 1, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.209355459, 0.133411139, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.45623398, -0.854667664, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark grey metallic","Part",Vector3.new(0.135017142, 0.229529947, 0.249781966))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468715668, -0.33636713, 0.367919922, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Smoky grey","Part",Vector3.new(0.135017142, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0168762207, -2.03002834, 0.52538681, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.675088227, 0.135017321))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.859531403, -0.44026947, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19582748, -0.671401978, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09476471, -0.571334839, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0500000007, 0.0540070646, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.55575943, 0.323707581, 0.414218903, 1.65532128e-05, -7.33742297e-07, 1, -0.96592325, -0.258826882, 1.57992254e-05, 0.258827269, -0.96592325, -4.99316093e-06))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 0.405050665))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555763245, 0.386886597, -0.429077148, 1.65531746e-05, -7.33704496e-07, 1, 0.500003278, -0.866021752, -8.91209766e-06, 0.866024137, 0.499998361, -1.3968539e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 0.675088227, 0.405050665))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.900035858, -0.467273712, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Bronze","Part",Vector3.new(0.0500000007, 0.128266707, 0.0735845044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.052482605, 1.26431131, -0.703346252, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.607576489, 0.465810537, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0168762207, -0.272230148, 0.526569366, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.087764129))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(1.11389136, 1.20840704, 1.05752301))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.10258675, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.721561432, -0.342132568, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.128266707, 0.0735845044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.052482605, 1.69636393, -0.703346252, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.37586975, -0.771961212, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.24307632, -0.678161621, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.081010066, 0.192399919, 0.256532729))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.22579956, 0.62935257, -0.00640869141, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.371296942, 0.0500000007, 0.0641332269))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00978088379, -1.63422871, 0.565216064, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.675088227, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57868195, -0.939796448, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1553154, -0.64440155, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.809329987, -0.375881195, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.04751587, -0.564586639, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.762077332, -0.369132996, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0500000007, 0.229529947, 0.12151558))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.533878326, -0.33636713, 0.0877609253, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.135017127, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.492813081, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.256530762, 0.525382996, -1.70003986, 1, 0, 0, 0, 0, -1, 0, 1, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135015577, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 1.13845181, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.132003784, -1.32190323, -0.529941559, 0.996194303, -0.0871559381, 0, 0.0871559381, 0.996194303, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Bronze","Part",Vector3.new(0.548506975, 0.081010513, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.47307253, -0.706390381, 0.0496139526, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.121515632))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0500000007, 0.192399919, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.631729126, 0.62935257, -0.00640869141, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810099304, 1, 0.810102522))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Cork","Part",Vector3.new(0.114089504, 0.593267679, 0.57044816))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629348755, -1.76418209, 0.00540161133, -2.08616257e-07, 0, 0.999999523, 0, 1, 0, -0.999999523, 0, -2.08616257e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Smoky grey","Part",Vector3.new(0.306360722, 0.0500000007, 0.135017291))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.85997057, 0.52538681, -0.0168762207, 0, -1, 8.40593259e-07, 0, 8.40593259e-07, 1, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135016143, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0070076, -0.537582397, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.947299957, -0.474021912, 0.529941559, -0.642785966, -0.766045868, 0, -0.766045868, 0.642785966, 0, 0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 1.38823497, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0715637207, -1.19936228, -0.536693573, 0.996194303, -0.0871559381, 0, 0.0871559381, 0.996194303, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Burlap","Part",Vector3.new(0.159725294, 0.593267679, 0.479176491))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629348755, -1.76418209, 0.00540161133, -2.08616257e-07, 0, 0.999999523, 0, 1, 0, -0.999999523, 0, -2.08616257e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.128266707, 0.120840646))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709815979, 1.91525793, -0.00581359863, -8.9409852e-08, 7.40605037e-06, -1, -1.23655088e-11, -1, -7.40605083e-06, -1, 1.17033345e-11, 8.9409852e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411800921, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.135017142, 0.411803752, 0.357795775))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.483390808, -1.56421185, -0.00547790527, 8.94069672e-08, 0, 1.00000036, 0, 1, 0, -1.00000036, 0, 8.94069672e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Cork","Part",Vector3.new(0.0500000007, 0.0945122913, 0.242356047))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.82267046, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.978873014, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.186323255, 0.0500000007, 0.139405593))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0908508301, -0.0559717417, -0.465808868, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.715593457, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.0810106024, 0.26328364))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555763245, 0.518636227, 0.00337982178, 8.16583633e-06, 6.08402217e-14, 1.0000006, 7.4505806e-09, -1, 0, 1.00000203, 7.4505957e-09, 2.5331974e-07))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.081010066, 0.0641331747, 0.3712973))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.50933456, 0.69348526, -0.00978088379, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.139411315, 0.189023912))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.269522369, 0.465808868, 0.0911407471, 0, 1, -1.90737774e-05, 0, -1.90737774e-05, -1, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810090542, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.168769881, 0.192400649, 0.256532788))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.35068786, 0.629364014, 0.00640869141, 0, 0.99999994, 7.62946365e-06, 0, -7.62946456e-06, 1, 0.99999994, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.216027081, 0.176872194, 0.139405593))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0911331177, -0.160843372, -0.465808868, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.408428609, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.61680222, -1.16871262, -0.529941559, 0.642785847, 0.766045988, 0, -0.766045988, 0.642785847, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0607560128, 0.192400023, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.682358265, 0.62935257, -0.00640869141, 0, -0.99999994, 0, 0, 0, 0.99999994, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.810101688))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.128266707, 0.282861292))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709758759, 1.91525793, -0.00581359863, -8.9409852e-08, 7.40605037e-06, -1, -1.23655088e-11, -1, -7.40605083e-06, -1, 1.17033345e-11, 8.9409852e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0691962242, 0.128266707, 0.3098647))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71272898, -0.709766388, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.335097373, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.58486176, -1.18335342, -0.536693573, 0.64278698, 0.766044974, 0, -0.766044855, 0.642788112, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.128266707, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0690307617, 1.69636393, -0.699970245, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.843855798, 1, 0.796603382))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.189023659, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0911407471, -0.293157101, -0.529937744, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135017633, 0.222782701))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Burlap","Part",Vector3.new(0.135017142, 0.276786089, 0.222778469))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.469081879, -1.56421185, -0.00547790527, 8.94069672e-08, 0, 1.00000036, 0, 1, 0, -1.00000036, 0, 8.94069672e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fossil","Part",Vector3.new(0.386486471, 0.0945122913, 0.242356047))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09349298, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Cork","Part",Vector3.new(0.0500000007, 0.0945122913, 0.242356047))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.876677513, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.978873014, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.479310691, 0.192399919, 0.229529291))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.952392578, 0.62935257, -0.00640869141, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.148518652, 0.0641331747, 0.3712973))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.54309273, 0.565216064, -0.00978088379, 0, -1, 0, 0, 0, 1, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Part",Vector3.new(0.0500000007, 0.0500000007, 0.18902418))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.631038666, -0.655351162, -0.013168335, -3.60608101e-06, 0, 1.00000262, 0, 1, 0, -1.00000274, 0, -3.47942114e-06))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.945119858, 0.675088227, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(1.15439665, 0.108014137, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0135040283, 0.795419574, -0.551368713, 0.999990582, -1.22497568e-11, -4.32133675e-07, -1.3222512e-10, -1, 7.14671614e-07, -4.32133675e-07, -7.14687474e-07, -0.999990582))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.810097456))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Cork","Part",Vector3.new(0.0500000007, 0.0945122913, 0.242356047))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.29417467, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.37973538, 0.108014062, 0.377373338))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.48995447, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark grey metallic","Part",Vector3.new(0.135017142, 0.229529947, 0.249781966))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468715668, -0.33636713, 0.0911407471, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.432054609, 0.0500000007, 0.192399636))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00640869141, -1.45195389, 0.62935257, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.675088227, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.843856573, 0.45872131, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.135009766, -0.269699097, -0.516441345, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.546819985))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.205361113, 0.593267679, 0.342268884))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629348755, -1.76418209, 0.00540161133, -2.08616257e-07, 0, 0.999999523, 0, 1, 0, -0.999999523, 0, -2.08616257e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark grey metallic","Part",Vector3.new(0.135017142, 0.229529947, 0.249781966))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468715668, -0.33636713, 0.0911407471, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0945122913, 0.0803352892))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.869924545, -0.706390381, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.978873014, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.894447327, -0.473934174, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0500000007, 0.229529947, 0.12151558))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.533878326, -0.33636713, -0.175521851, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.135017127, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.351044953, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.519821167, -1.87556076, 0.525279999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.945115685, 1, 0.135017321))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.101262994))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.529838562, 0.0392303467, -1.73636055, 8.9407358e-08, -3.90595455e-12, 1, 1, -2.54064798e-06, -8.9407358e-08, 2.54064798e-06, 1, 3.67794684e-12))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.270034045, 0.270035267, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Bronze","Part",Vector3.new(0.548506975, 0.081010513, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.47307253, -0.706390381, -0.0718994141, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.121515632))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.252319336, -1.71016026, 0.528656006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0337542854, 0.405035764, 0.270034641))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19023132, -0.678066254, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0500000007, 0.0540070646, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555728912, 0.321769714, 0.421491623, -1.49999996e-05, 0, -1, 0.965923786, -0.258826941, -1.44888563e-05, -0.258826941, -0.965923786, 3.88240414e-06))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 0.405050665))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark grey metallic","Part",Vector3.new(0.135017142, 0.229529947, 0.249781966))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.468715668, -0.33636713, -0.172149658, -1.56462193e-07, 0, 1, 0, 1, 0, -1, 0, -1.56462193e-07))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.163708225, 0.128266707, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.77348852, -0.709766388, -0.00581359863, 5.7731726e-14, -1, -3.33786761e-06, 8.94072301e-08, -3.33786784e-06, 1, -1, -3.56161227e-13, 8.94072301e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.796603918))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.23749161, -0.684814453, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.459058732, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.266662598, 0.525382996, 1.70003986, -1, 0, 0, 0, 0, -1, -0, -1, -0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135015577, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.189023659, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.178894043, -0.293157101, -0.529937744, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.135017633, 0.222782701))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 1.38823497, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.071647644, -1.20307684, -0.536693573, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Bronze","Part",Vector3.new(0.0500000007, 0.276786089, 0.3098647))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.562984467, -1.56421185, -0.00581359863, 8.94069672e-08, 0, 1.00000036, 0, 1, 0, -1.00000036, 0, 8.94069672e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.573822558, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.301342994, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.59178543, -1.16899872, -0.536693573, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555728912, 0.387886047, -0.430725098, -1.49999996e-05, 0, -1, -0.500004053, -0.866023123, 7.50006075e-06, -0.866023123, 0.500004053, 1.29903465e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 0.40505293, 0.540067911))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.853935242, -0.446933746, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14972305, -0.651065826, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.28251266, -0.744865417, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.388513148, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.6203537, -1.16923141, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.150206491, 0.128266707, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0113449097, 1.26431131, -0.70672226, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.796603382))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.0641347393, 0.0500000007, 0.150952265))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.629348755, -0.48160553, 1.48082256, -4.24029076e-06, 7.70973315e-07, 0.99999994, -0.983869433, 0.178887993, -4.30981027e-06, -0.178887993, -0.983869433, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0337544084, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.243125647, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35975647, 0.538852692, -1.71016216, -0.999614418, 0, 0.0277675819, 0.0277675819, 0, 0.999614418, 0, 1, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.134963527, 0.404942691))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.216027081, 0.177547306, 0.139405593))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.178894043, -0.160507202, -0.465808868, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Pine Cone","Part",Vector3.new(0.0945120081, 0.411803752, 0.357795775))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.618408203, -1.56421185, -0.00547790527, 8.94069672e-08, 0, 1.00000036, 0, 1, 0, -1.00000036, 0, 8.94069672e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.186323255, 0.0500000007, 0.139405593))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.176528931, -0.0584003329, -0.465808868, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.600828469, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.128266707, 0.0735845044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0757904053, 1.69636393, -0.703346252, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.0500000007, 0.139411315, 0.189023912))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.269522369, 0.465808868, -0.178894043, 0, 1, -1.90737774e-05, 0, -1.90737774e-05, -1, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.810090542, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.756481171, -0.375797272, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Bronze","Part",Vector3.new(0.0500000007, 0.128266707, 0.0735845044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0757904053, 1.26431131, -0.703346252, -1.00000036, 2.27373675e-13, 1.49011612e-07, 6.74247984e-12, -1, -7.40582755e-06, 1.49011612e-07, -7.40582391e-06, 1.00000036))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.303787261, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.7159729, -0.348796844, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.45064545, -0.861320496, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.0877614841, 0.229529336))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555763245, 0.264877319, 0.824264526, 1.6e-05, 0, 1, -0.642791808, -0.76604104, 1.02846689e-05, 0.766040981, -0.642791748, -1.22566553e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.32302475, -0.771865845, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(1.02849352, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0026473999, 0.539413452, 1.71692264, 0.00131267088, 0, -0.999999106, 0.999999166, 0, 0.001312671, 0, -0.99999994, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.675087631, 0.675118029))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.53258896, -0.919445038, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.243030414, 0.459734023, 1.05752301))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.408432007, -0.269193828, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.0877614841, 0.26328364))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.55575943, 0.26486969, 0.638614655, 1.6e-05, 0, 1, -0.642791808, -0.76604104, 1.02846689e-05, 0.766040981, -0.642791748, -1.22566553e-05))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.80373764, -0.382545471, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.41013718, -0.834323883, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.3702774, -0.778621674, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.941703796, -0.480686188, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 1.13845217, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125656128, -1.32797337, -0.529941559, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57309341, -0.94644928, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.344293952, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.538726807, -1.87218857, 0.523193359, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675083995, 1, 0.222779289))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.04192352, -0.571250916, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.351044953, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.435470581, -1.87556076, -0.525382996, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.945115685, 1, 0.135017321))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.344293952, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.455062866, -1.56165028, -0.517284393, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.702087402, 1, 0.256533682))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.4978981, -0.868080139, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08917618, -0.5779953, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.03901553, 0.555130005, -0.532653809, 0, -0.999872744, -0.0159533862, 0, -0.0159533862, 0.999872744, -1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.134949848, 0.247005403, 0.43184635))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Part",Vector3.new(0.0500000007, 0.108014137, 1.08013809))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553565979, 0.795421124, -0.00455093384, 0.999990582, -1.22497568e-11, -4.32133675e-07, -1.3222512e-10, -1, 7.14671614e-07, -4.32133675e-07, -7.14687474e-07, -0.999990582))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675085485, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 1.05752301))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.546485901, -0.504627228, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.418553114, 0.249764621, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.0500000007, 0.0509690829, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00141525, -0.544242859, -0.529941559, 0.64278245, -0.766041815, 0, 0.766041815, 0.64278245, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.557856202, 1, 0.0337543301))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Part",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.471412659, -1.71354675, -0.523193359, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.675083995, 0.54005003, 0.222779289))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(1.05752182, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0480981469, 0.53163147, -8.74227837e-08, -4.37113883e-08, 1, 8.74227695e-08, 1, 4.37113954e-08, -1, 8.74227766e-08, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.188977525, 0.337543249))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00331878662, -0.535591125, 1.69391513, -0.00531508913, -9.77295613e-08, -0.999985874, 0.999918044, 0.0116463816, -0.00531472964, 0.0116462177, -0.99993217, -6.18038393e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(20.9017105, 0.405026346, 0.0047173989))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.107181802, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.04718781, 0.339355469, 0.245807648, -0.576880455, -0.403930277, -0.709964216, 0.497109741, -0.863290906, 0.0872388333, -0.648144126, -0.302603811, 0.698813319))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.794755161))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.770606995, 0.708450317, -0.351963043, 0.967050672, 0.254584253, -1.48079444e-05, 0.0826564878, -0.314029723, -0.945808291, -0.240792483, 0.914643228, -0.324725658))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 0.638503134, 0.21922037))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel brown","Wedge",Vector3.new(1.04508543, 0.0500000007, 1.73903191))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00331878662, -0.535591125, -0.824278235, 0.00531508913, 9.77295684e-08, 0.999985874, 0.999918044, 0.011646294, -0.00531472964, -0.0116461311, 0.99993217, 6.18033737e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.405026346, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.742729187, 1.70004284, 0.090637207, 0.634649396, 4.37113918e-08, -0.772800267, 9.53017505e-08, -1.00000012, 2.17026397e-08, -0.772800267, -8.74227837e-08, -0.634649396))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.808496714, 8.24082308e-05, 0.209355727))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 1.03524816, 0.317291468))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.540725708, 0.00072479248, 1.88569069, 0.999999166, -8.74227837e-08, 0.00129498774, -0.00129498774, 8.74227695e-08, 0.999999166, -8.75359234e-08, -1, 8.73094876e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675371051, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.522029877, -0.55355072, 1.88906372, -3.82021826e-05, -8.74227837e-08, -1, 1, 8.74227695e-08, -3.82021826e-05, 8.7426109e-08, -1, 8.74194441e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.270071417, 0.134976953, 6.48075199))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0611634366, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555782318, 0.388336182, 0.390235901, 7.77088935e-05, 3.37525198e-05, 1, -0.86602366, -0.500002801, 8.41740912e-05, 0.500002801, -0.86602366, -9.62418289e-06))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67549479, 1, 0.541193545))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555763245, 0.411060333, -0.293209076, -9.56356962e-05, 4.30139622e-08, -1, -0.795197546, -0.606350362, 7.60231997e-05, -0.606350362, 0.795197546, 5.80229498e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675588846, 0.98241359, 0.534079671))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.371298254, 0.0675086454))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.69348526, 0.00978088379, 1.58359432, -4.37113883e-08, -8.74227837e-08, -1, 1, 8.74227695e-08, -4.37113954e-08, 8.74227766e-08, -1, 8.74227766e-08))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555770874, -0.501294136, 0.0910186768, 9.16502613e-05, 2.45560241e-05, 0.99999994, 0.179111063, 0.983828783, -4.05745013e-05, -0.983828843, 0.179111078, 8.57699124e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67556864, 0.366148919, 0.173220813))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.107181802, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04718781, 0.339355469, -0.219249725, 0.576880455, 0.403930277, 0.709964216, 0.497109681, -0.863290906, 0.0872388929, 0.648144186, 0.302603722, -0.698813319))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.267637104))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465812683, -0.192398071, 0.269522309, -4.37113883e-08, -1.91611998e-05, -1, 1, 8.74219381e-08, -4.37130616e-08, 8.74227766e-08, -1, 1.91611998e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.27001825, 0.810091436))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399308, 0.0500000007, 0.108903877))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.62935257, -0.411552429, 0.54927063, 9.16058696e-08, -3.40850548e-08, -1, 0.731049657, 0.682324171, 4.37113883e-08, 0.682324171, -0.731049657, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.552753448, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399308, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, -0.411548615, -0.480018616, -9.16058767e-08, 3.40850619e-08, 1, 0.731049716, 0.682324111, 4.37113954e-08, -0.682324111, 0.731049716, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.552753448, 0.592224836))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.0500000007, 0.148518816))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.565216064, -0.192741394, 1.54309273, -4.37113883e-08, -8.74227837e-08, -1, 1, 8.74227695e-08, -4.37113954e-08, 8.74227766e-08, -1, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.675085604, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399308, 0.0945121944, 0.0607560836))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, -0.0610961914, -0.682358325, -4.37113847e-08, 8.74227766e-08, 1, 0.99999994, -8.74227624e-08, 4.37113954e-08, 8.74227695e-08, 0.99999994, -8.74227766e-08))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Smoky grey","Wedge",Vector3.new(0.0500000007, 0.506315947, 0.306361079))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.523193359, -0.303787231, 1.85997057, -4.37113883e-08, -9.28016107e-07, -1, 1, 8.74227339e-08, -4.371147e-08, 8.74227766e-08, -1, 9.2801605e-07))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.222779512, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.529941559, -1.97336829, 0.111991882, -8.81277131e-08, -4.2272152e-08, 1, 0.0163958296, 0.999865592, 4.37113954e-08, -0.999865592, 0.0163958296, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563455, 4.84033775, 5.96444082))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(1.05752182, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.474937439, 0.275318146, -7.93964361e-08, -5.70055576e-08, 1, -0.884929776, 0.465724468, -4.37113883e-08, -0.465724468, -0.884929776, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.298693717, 0.157197356))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(1.05752182, 0.0500000007, 0.064135842))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.53163147, 0.00961863995, -4.37113883e-08, 8.74227837e-08, 1, 1, -8.74227695e-08, 4.37113954e-08, 8.74227766e-08, 1, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.337544113, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139405355, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, 0.0552964211, 0.461608887, -8.74227837e-08, 4.37113883e-08, -1, 8.74227695e-08, -1, -4.37113954e-08, -1, -8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.688489795, 0.302758038))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465812683, -0.462432861, 0.269522309, -4.37113883e-08, -1.91611998e-05, -1, 1, 8.74219381e-08, -4.37130616e-08, 8.74227766e-08, -1, 1.91611998e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.27001825, 0.810091436))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.192399934, 0.168770507, 0.0877609327))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.629360199, 1.35068786, 0.165740967, -8.74227837e-08, 7.67317579e-06, -1, 8.74227695e-08, -1, -7.67317579e-06, -1, -8.74234445e-08, 8.74221087e-08))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0528277457))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555774689, -0.50129509, -0.0602798462, -9.16502613e-05, -2.45560241e-05, -0.99999994, 0.179110974, 0.983828783, -4.05744941e-05, 0.983828843, -0.179110989, -8.57699197e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67556864, 0.366148919, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.525382996, 0.256530762, 1.87556088, 4.37113883e-08, -8.74227837e-08, 1, -1, 8.74227695e-08, 4.37113954e-08, -8.74227766e-08, -1, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.135015085, 9.85629749, 7.02085495))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.102949925, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.78037262, 0.755385399, -0.222774506, 0.733187735, 6.81165062e-08, 0.680026174, 0.205778524, -0.953116298, -0.221865311, 0.648144126, 0.302603751, -0.698813319))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.40868488))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.529941559, 0.0833435059, 1.1157608, 1.90446823e-08, -9.58682804e-08, -1, 0.964422584, -0.264365494, 4.37113883e-08, -0.264365494, -0.964422584, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563455, 5.58356047, 30.6353893))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.536693573, 0.11466217, 1.19525909, 2.2542773e-08, -9.51065218e-08, -1, 0.973457158, -0.228869319, 4.37113883e-08, -0.228869319, -0.973457158, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 3.97467518, 27.4786549))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(1.05752182, 0.0500000007, 0.0646160543))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.47492981, -0.239078522, 7.93964432e-08, 5.70055647e-08, -1, -0.884929836, 0.465724379, -4.37113954e-08, 0.465724379, 0.884929836, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.298693717, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.0500000007, 0.148518816))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.69348526, -0.192741394, 1.54308987, -4.37113883e-08, -8.74227837e-08, -1, 1, 8.74227695e-08, -4.37113954e-08, 8.74227766e-08, -1, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.675085604, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399293, 0.0500000007, 0.108903326))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, -0.420921326, 0.540523529, -2.76954779e-08, -9.37357356e-08, 0.99999994, -0.731049597, 0.682324111, 4.37113918e-08, -0.682324171, -0.731049657, -8.74227695e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.552756906, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, -0.26952225, -0.259902954, 8.74227837e-08, -1.91174895e-05, -1, -8.74227695e-08, 1, -1.91174895e-05, 1, 8.74244463e-08, 8.74211068e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.810093522, 0.270048499))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.103349805))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.770599365, 0.708446503, 0.409118652, -0.967050672, -0.254584253, 1.48079444e-05, 0.0826564655, -0.314029634, -0.945808291, 0.240792483, -0.914643228, 0.324725568))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 0.638503134, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139405355, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, 0.0552453995, 0.191574097, -8.74227837e-08, 4.37113883e-08, -1, 8.74227695e-08, -1, -4.37113954e-08, -1, -8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.686496556, 0.302754194))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.324046075, 0.268346846))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.528656006, -1.8823061, -0.368766785, 8.74227837e-08, -4.37113883e-08, -1, -8.74227695e-08, 1, -4.37113954e-08, 1, 8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.270030171, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139405355, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.465808868, 0.0552964211, -0.260437012, 8.74227837e-08, 4.37113883e-08, 1, -8.74227695e-08, -1, 4.37113954e-08, 1, -8.74227766e-08, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.688489795, 0.291317493))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.102949925, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.78036499, 0.755386353, 0.249336243, -0.733187735, -6.81165062e-08, -0.680026174, 0.205778584, -0.953116298, -0.221865371, -0.648144126, -0.302603841, 0.698813319))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.653707385))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.536693573, -1.9572345, 0.0839691162, -8.80640627e-08, -4.24046007e-08, 1, 0.0148925427, 0.999889135, 4.37113954e-08, -0.999889135, 0.0148925427, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 3.90631938, 4.7987113))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.525382996, -1.87556076, -0.266662598, -8.74227837e-08, -4.37113883e-08, 1, 8.74227695e-08, 1, 4.37113954e-08, -1, 8.74227766e-08, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.135015085, 7.02087212, 9.18118668))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, -0.269522309, 0.0101318359, 8.74227837e-08, -1.91174895e-05, -1, -8.74227695e-08, 1, -1.91174895e-05, 1, 8.74244463e-08, 8.74211068e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.810093522, 0.270048499))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.148519203, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.69348526, -1.54308987, 0.208938599, 8.74227837e-08, -4.37113883e-08, -1, -8.74227695e-08, 1, -4.37113954e-08, 1, 8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.540073812))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.529941559, 1.10215974, 0.0577468872, -8.69007195e-08, 4.47402968e-08, -0.99999994, -0.011804116, -0.999930263, -4.37113918e-08, -0.999930322, 0.0118041169, 8.74227695e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563418, 30.9874535, 8.10216904))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.192399934, 0.0877615437, 0.168770075))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.629364014, -0.17855835, -1.35068786, 4.37113883e-08, 7.71688701e-06, -1, -1, -8.74224355e-08, -4.37120633e-08, -8.74227766e-08, 1, 7.71688701e-06))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399308, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, -0.00640869141, 0.631729126, 4.37113883e-08, -8.74227837e-08, 1, -1, 8.74227695e-08, 4.37113954e-08, -8.74227766e-08, -1, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.810103774, 0.810106814))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.148519203, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.565216064, -1.54309273, 0.208938599, 8.74227837e-08, -4.37113883e-08, -1, -8.74227695e-08, 1, -4.37113954e-08, 1, 8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.540073812))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.536693573, -1.95723546, 0.148918152, 8.80640556e-08, 4.24046043e-08, -1, 0.0148924552, 0.999889135, 4.37113883e-08, 0.999889135, -0.0148924552, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 3.90631938, 4.51700687))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0611634366, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555709839, 0.386684418, 0.391223907, -7.79999973e-05, 3.40000006e-05, -1, 0.866023839, -0.500002861, -8.45499526e-05, -0.500002861, -0.866023839, 9.55540963e-06))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67549479, 1, 0.541193545))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555728912, -0.217227936, 0.533725739, -0.000123999998, 0, -1, 0.807636201, 0.589681089, -0.000100146885, 0.589681089, -0.807636201, -7.31204564e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67573899, 0.636941433, 0.465273589))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.555194855, 0.467124939, 0.36000061, -3.06501606e-05, 2.90948924e-06, -1, 0.83384186, -0.552003324, -2.71634344e-05, -0.552003324, -0.83384186, 1.44929418e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696305871, 0.0247554742, 0.404291272))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.539615631, -0.48657608, 0.367115021, 0.0270563476, -0.0178941377, 0.999473751, -0.833402753, 0.551713288, 0.0324383378, -0.552003384, -0.833841801, 1.43209782e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.700802028, 0.0212231912, 0.119826697))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.536693573, 1.192083, 0.0504150391, -8.70570531e-08, 4.44353176e-08, -1, -0.0082979165, -0.999965549, -4.37113954e-08, -0.999965549, 0.0082979165, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 27.6380062, 6.25639725))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.529941559, 1.10215855, 0.221809387, 8.69007124e-08, -4.47402968e-08, 0.99999994, -0.0118042035, -0.999930263, -4.37113847e-08, 0.999930322, -0.0118042044, -8.74227695e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563418, 30.9874535, 3.08003712))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555194855, 0.467121124, -0.324245453, 3.06501606e-05, -2.90948924e-06, 1, 0.833841801, -0.552003384, -2.71634326e-05, 0.552003384, 0.833841801, -1.44929445e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696305871, 0.0247554742, 1.02585542))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.539615631, -0.486579895, -0.331356049, -0.0270563476, 0.0178941377, -0.999473751, -0.833402812, 0.551713228, 0.0324383378, 0.552003324, 0.83384186, -1.43181423e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.700802028, 0.0212231912, 1.31032002))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.529941559, 0.0833358765, -0.315032959, -1.90446805e-08, 9.58682875e-08, 1, 0.964422584, -0.264365584, 4.37113954e-08, 0.264365584, 0.964422584, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563455, 5.58356047, 1.39369953))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.529941559, -1.97336555, 0.176620483, 8.8127706e-08, 4.2272152e-08, -1, 0.0163957421, 0.999865592, 4.37113883e-08, 0.999865592, -0.0163957421, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337563455, 4.84033775, 5.58007813))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0595786124))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555713654, -0.507730484, -0.0617752075, 9.30000024e-05, -2.49999994e-05, 1, -0.17911002, 0.983829141, 4.12529589e-05, -0.983829141, -0.17911002, 8.70183576e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67556864, 0.366148919, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.13940534, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.465808868, 0.0552453399, 0.00959777832, 8.74227837e-08, 4.37113847e-08, 0.99999994, -8.74227695e-08, -0.99999994, 4.37113918e-08, 1, -8.74227695e-08, -8.74227695e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.686496556, 0.291320086))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465812683, 0.0776367188, 0.269522369, -4.37113883e-08, -1.91611998e-05, -1, 1, 8.74219381e-08, -4.37130616e-08, 8.74227766e-08, -1, 1.91611998e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.27001825, 0.810091436))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0641329363, 0.371298254, 0.0675086454))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69348526, -0.00978088379, 1.58359432, 4.37113883e-08, -8.74227837e-08, 1, -1, 8.74227695e-08, 4.37113954e-08, -8.74227766e-08, -1, -8.74227766e-08))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.535457611, 1.7000339, 0.35974884, 0.0277676675, 4.37113847e-08, 0.999614298, -8.61753051e-08, -0.999999881, 4.61220537e-08, 0.999614418, -8.74227695e-08, -0.0277676694))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.270863324, 9.27092624e-05, 4.86251926))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.555725098, -0.211772919, -0.504261017, 0.000123999998, 0, 1, 0.807636201, 0.589681089, -0.000100146885, -0.589681089, 0.807636201, 7.31204564e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.67573899, 0.636941433, 0.872362018))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.243126556, 0.330796599))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.535457611, 0.35975647, 1.88568604, -0.0277676266, -8.74227837e-08, -0.999614477, 0.999614477, 8.74227695e-08, -0.0277676266, 8.98165951e-08, -1, 8.4961556e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.270863384, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399293, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.62935257, -0.42092514, -0.4712677, 2.76954708e-08, 9.37357356e-08, -0.99999994, -0.731049657, 0.682324052, 4.37113847e-08, 0.682324111, 0.731049716, 8.74227695e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.552756906, 0.592228413))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139405355, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, 0.0549083352, -0.0771331787, -8.74227837e-08, 4.37113883e-08, -1, 8.74227695e-08, -1, -4.37113954e-08, -1, -8.74227766e-08, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672991931, 0.249770984))
Hitbox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","Hitbox",Vector3.new(0.120000005, 1, 0.329999983))
HitboxWeld=CFuncs.Weld.Create(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.627754211, -0.327106476, 0.0131378174, -1.66445971e-05, 0, 1, 0, 1, 0, -1.00000012, 0, -1.66669488e-05))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Smoky grey","Wedge",Vector3.new(0.0500000007, 0.306361854, 0.42192933))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.523189545, -1.85997045, 0.295349121, 8.74227766e-08, -8.84304711e-07, -1, -8.74227624e-08, 0.99999994, -8.84304654e-07, 0.99999994, 8.74228405e-08, 8.74227055e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.222779512, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.536693573, 1.19208264, 0.172233582, 8.7057046e-08, -4.44353176e-08, 1, -0.00829800405, -0.999965549, -4.37113883e-08, 0.999965549, -0.00829800405, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 27.6380062, 2.64928603))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Fawn brown","Wedge",Vector3.new(0.192399308, 0.0607562438, 0.0945122093))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62935257, 0.682358265, 0.0739135742, 8.74227837e-08, 4.37113883e-08, 1, -8.74227695e-08, -1, 4.37113954e-08, 1, -8.74227766e-08, -8.74227766e-08))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.536693573, 0.11466217, -0.48682785, -2.25427712e-08, 9.51065289e-08, 1, 0.973457158, -0.228869408, 4.37113954e-08, 0.228869408, 0.973457158, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0337537713, 3.97467518, 0.858574271))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.106814466, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.712554932, 0.774607658, 0.197937012, -0.599465728, 3.0233231e-08, 0.800400376, -0.118955061, -0.988894463, -0.0890922248, 0.791511595, -0.148619428, 0.592808366))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.321058601))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(1.05752182, 0.459589362, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.282396615, -0.523025513, -8.62992451e-08, -4.58897382e-08, -1, 0.0250746086, -0.999685585, 4.37113883e-08, -0.999685585, -0.0250746086, 8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.23055236))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139410779, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.465808868, -0.269522309, 0.280166626, 8.74227837e-08, -1.91174895e-05, -1, -8.74227695e-08, 1, -1.91174895e-05, 1, 8.74244463e-08, 8.74211068e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.810093522, 0.270048499))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0806279853, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.992591858, 0.405396461, 0.191970825, -0.494292915, 0.414775312, 0.7639606, -0.3594217, -0.897704601, 0.2548379, 0.791511536, -0.148619458, 0.592808366))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.559800684))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 1.02849734, 0.310537636))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.538726807, -0.0026473999, -1.54477215, 0.999999166, 8.74227837e-08, 0.00131271465, 0.00131271465, -8.74227695e-08, -0.999999166, -8.73079458e-08, 1, -8.75374653e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.702425897, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0806279853, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.992591858, 0.405396461, 0.191970825, -0.494292915, 0.414775312, 0.7639606, -0.3594217, -0.897704601, 0.2548379, 0.791511536, -0.148619458, 0.592808366))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.559800684))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0765397921))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.379867554, -0.632884979, 0.811159015, 0.983531415, -8.74227837e-08, 0.180737108, -0.180737108, 8.74227695e-08, 0.983531415, -1.01783591e-07, -1, 7.01825016e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 0.620216846, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0649755448))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553184509, 0.50504303, 0.276264191, -0.0031059985, 0.00259082159, -0.999991834, 0.766036212, -0.642784655, -0.00404468086, -0.642789841, -0.766042531, 1.18245753e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696310937, 0.169315577, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.139405355, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.465808868, 0.054908216, 0.278305054, 8.74227837e-08, 4.37113883e-08, 1, -8.74227695e-08, -1, 4.37113954e-08, 1, -8.74227766e-08, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672991931, 0.34430328))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.106814466, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.703151703, 0.776472092, -0.154205322, 0.599465728, -3.02332346e-08, -0.800400376, -0.118954994, -0.988894463, -0.0890921727, -0.791511595, 0.148619339, -0.592808366))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 1, 0.931916833))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.55298996, 0.509017944, -2.03901529, -4.37113883e-08, -0.0159532968, 0.999872744, 1, -8.81089903e-08, 4.2311143e-08, 8.74227766e-08, 0.999872744, 0.0159532987))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.332603961, 0.513271928, 0.134950027))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.324038088))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.523197174, -0.481536865, 1.88906384, -9.49235891e-06, -8.74227837e-08, 0.99999994, -0.99999994, 8.74227695e-08, -9.49235891e-06, -8.74219381e-08, -1, -8.74236008e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.222785935, 0.27005434, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.554504395, 0.545787811, -0.0348358154, 0.00192654971, -0.000516140426, 0.999997973, 0.494223207, -0.869333923, -0.00140084699, 0.869332969, 0.494224966, -0.00141972653))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696309328, 0.288319528, 0.201645643))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.310538411, 1.0284946))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.538734436, -1.8890667, -0.00264358521, -0.999999166, -4.37113883e-08, -0.00131275842, -4.38261161e-08, 1, 8.7365315e-08, 0.00131275831, 8.74227766e-08, -0.999999106))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.702425897, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dirt brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.379859924, -0.636264801, -0.757151067, -0.983531415, 8.74227766e-08, -0.180737108, -0.180737108, -3.82137093e-15, 0.983531415, 8.59830465e-08, 1, 1.58005431e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.675085723, 0.75523448, 0.629478753))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.554912567, -2.03901529, 0.549530029, 8.74227837e-08, 0.0159533434, -0.999872804, -8.74227695e-08, 0.999872804, 0.0159533434, 1, 8.60169678e-08, 8.88063454e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.232822806, 0.134950355, 0.243240163))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.556274414, -0.436325073, 0.37153244, -0.00163434516, 0.000437854877, 0.999998569, -0.879204035, 0.476442546, -0.00164553791, -0.476442575, -0.879205465, -0.000393707742))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.676927626, 0.0942352489, 1.30710232))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.553184509, 0.505050659, -0.232379913, 0.0031059985, -0.00259082159, 0.999991834, 0.766036153, -0.642784715, -0.00404468086, 0.6427899, 0.766042471, -1.18249291e-05))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696310937, 0.169315577, 0.455717415))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(0.0500000007, 0.0500000007, 1.05752301))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.518432081, 0.530776978, 0, 0.0250745658, -0.999685585, 8.74227837e-08, 0.999685585, 0.0250745658, -8.74227695e-08, 8.52031974e-08, 8.95873882e-08, 1))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.249689594, 0.54022187, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.556274414, -0.436325073, -0.32901001, 0.00163434516, -0.000437854877, -0.999998569, -0.879204094, 0.476442456, -0.00164553791, 0.476442486, 0.879205525, 0.000393707596))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.676927626, 0.0942352489, 0.393941104))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.0500000007, 0.0500000007, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.554504395, 0.545787811, 0.0469818115, -0.00192654971, 0.000516140426, -0.999997973, 0.494223297, -0.869333863, -0.0014008471, -0.86933291, -0.494225055, 0.00141972641))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.696309328, 0.288319528, 0.284511149))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Brown","Wedge",Vector3.new(1.05752182, 0.459589362, 0.0500000007))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.28239733, 0.53653717, 8.62992522e-08, 4.58897382e-08, 1, 0.0250745211, -0.999685585, 4.37113954e-08, 0.999685585, 0.0250745211, -8.74227766e-08))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.309668154))

Hood=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Hood",Vector3.new(2, 2, 2))
HoodWeld=CFuncs.Weld.Create(m,Character["Head"],Hood,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101699829, -0.210492611, 0.0272598267, 0.999999344, 2.20501395e-12, 2.03211084e-06, -5.11861913e-08, 1.00000167, -9.68575478e-07, -2.0840796e-06, 6.40749931e-07, 0.999998868))
CFuncs.Mesh.Create("SpecialMesh",Hood,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=16952952",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 1.04999995, 1.04999995))

EffectModel = Create("Model"){
        
        
        Parent = Character,
        Name = "Effects",
}

Effects = {
        Block = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
                        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        if Type == 1 or Type == nil then
                                table.insert(Effects, {
                                        prt,
                                        "Block1",
                                        delay,
                                        x3,
                                        y3,
                                        z3,
                                        msh
                                })
                        elseif Type == 2 then
                                table.insert(Effects, {
                                        prt,
                                        "Block2",
                                        delay,
                                        x3,
                                        y3,
                                        z3,
                                        msh
                                })
                        end
                end;
        };
        
        Cylinder = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
                        local prt = CFuncs.Part..Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 2)
                        Effects[#Effects + 1] = {
                                prt,
                                "Cylinder",
                                delay,
                                x3,
                                y3,
                                z3
                        }
                end;
        };
        
        Head = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
                        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Cylinder",
                                delay,
                                x3,
                                y3,
                                z3,
                                msh
                        })
                end;
        };
        
        Sphere = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
                        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Cylinder",
                                delay,
                                x3,
                                y3,
                                z3,
                                msh
                        })
                end;
        };
        
        Elect = {
                Create = function(cff, x, y, z)
                        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
                        prt.Anchored = true
                        prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
                        prt.CFrame = CFrame.new(prt.Position)
                        game:GetService("Debris"):AddItem(prt, 2)
                        local xval = math.random() / 2
                        local yval = math.random() / 2
                        local zval = math.random() / 2
                        local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
                        table.insert(Effects, {
                                prt,
                                "Elec",
                                0.1,
                                x,
                                y,
                                z,
                                xval,
                                yval,
                                zval
                        })
                end;

        };
        
        Ring = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
                        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Cylinder",
                                delay,
                                x3,
                                y3,
                                z3,
                                msh
                        })
                end;
        };


        Wave = {
                Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
                        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Cylinder",
                                delay,
                                x3,
                                y3,
                                z3,
                                msh
                        })
                end;
        };

        Break = {
                Create = function(brickcolor, cframe, x1, y1, z1)
                        local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
                        prt.Anchored = true
                        prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                        local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        local num = math.random(10, 50) / 1000
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Shatter",
                                num,
                                prt.CFrame,
                                math.random() - math.random(),
                                0,
                                math.random(50, 100) / 100
                        })
                end;
        };
        
        Fire = {
                Create = function(brickcolor, cframe, x1, y1, z1, delay)
                        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "Fire",
                                delay,
                                1,
                                1,
                                1,
                                msh
                        })
                end;
        };
        
        FireWave = {
                Create = function(brickcolor, cframe, x1, y1, z1)
                        local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new(.2,.2,.2))
                        prt.Anchored = true
                        prt.CFrame = cframe
                        msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
                        local d = Create("Decal"){
                                Parent = prt,
                                Texture = "rbxassetid://26356434",
                                Face = "Top",
                        }
                        local d = Create("Decal"){
                                Parent = prt,
                                Texture = "rbxassetid://26356434",
                                Face = "Bottom",
                        }
                        game:GetService("Debris"):AddItem(prt, 10)
                        table.insert(Effects, {
                                prt,
                                "FireWave",
                                1,
                                30,
                                math.random(400, 600) / 100,
                                msh
                        })
                end;
        };
        
        Lightning = {
                Create = function(p0, p1, tym, ofs, col, th, tra, last)
                        local magz = (p0 - p1).magnitude
                        local curpos = p0
                        local trz = {
                                -ofs,
                                ofs
                        }
                        for i = 1, tym do
                                local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
                                local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
                                local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
                                li.Material = "Neon"
                                if tym == i then
                                        local magz2 = (curpos - p1).magnitude
                                        li.Size = Vector3.new(th, th, magz2)
                                        li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
                                        table.insert(Effects, {
                                                li,
                                                "Disappear",
                                                last
                                        })
                                else
                                        do
                                                do
                                                        li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
                                                        curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
                                                        game.Debris:AddItem(li, 10)
                                                        table.insert(Effects, {
                                                                li,
                                                                "Disappear",
                                                                last
                                                        })
                                                end
                                        end
                                end
                        end
                end
        };

        EffectTemplate = {

        };
}
function attackone()
        attack = true
		

                for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 0.984807789, 3.03181423e-07, -0.173648596, -3.44375053e-07, 1, -2.07095127e-07, 0.173648626, 2.63749143e-07, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.12985765e-06, 1.49997663, -8.56826432e-08, 0.866024911, -1.14462102e-06, 0.500000954, 8.8323435e-07, 1, 7.59434215e-07, -0.500000954, -2.16071157e-07, 0.866024911) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.139232755, 0.119617142, -0.773203194, 0.433008641, 0.750001729, 0.500000954, -0.86602819, 0.499995232, 7.60190005e-07, -0.249997541, -0.433015257, 0.866024911) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.986185312, 0.65001601, 1.19676161, 0.81914866, 0.571391463, 0.0499935225, 8.6615529e-07, 0.0871553048, -0.996201992, -0.573573172, 0.816032112, 0.071396403) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.790098131, -1.89686155, -0.00130658597, 0.852867544, -0.234925717, 0.466290712, 0.173651159, 0.969845891, 0.171009839, -0.492404729, -0.0648768246, 0.867945075) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433005452, -1.99999499, 0.249998093, 0.866024911, -0.086822249, 0.492405236, 8.8323435e-07, 0.984808743, 0.17364265, -0.500000954, -0.150378421, 0.852868974) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                end
                MagnitudeDamage(Hitbox, 5, 3, 8, 1, 'Normal', '199149186', 1)
                CFuncs.Sound.Create('199145095', HumanoidRootPart, 1, 1.7)
                CFuncs.Sound.Create('159882584', HumanoidRootPart, 1, 1)
                                for i = 0, 0.5, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.866026819, -0.0868241489, 0.49240151, 1.00699549e-06, 0.984807909, 0.173647389, -0.499997675, -0.150382802, 0.852870166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0347294286, 1.51139152, 0.0664977282, 0.984808326, 3.99740031e-07, -0.173644826, -0.0301532689, 0.984808087, -0.171008825, 0.171006754, 0.173646867, 0.969847143) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.87467527, 0.250018179, 0.176201999, 0.119320169, -0.415730357, -0.901616216, 0.467101544, 0.824843228, -0.318513215, 0.876107037, -0.383140415, 0.29260844) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.14032137, 0.71974057, -1.10771382, 0.939778388, -0.341699362, -0.00759586971, -0.0370066538, -0.0796358734, -0.99613744, 0.33977443, 0.936428964, -0.0874852985) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.606089354, -1.95606029, 0.169776708, 0.969846606, -0.138260901, -0.200702518, 0.141317025, 0.989964068, 0.000909551978, 0.198562533, -0.0292448103, 0.979651749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.492399365, -1.95453429, -0.432794929, 0.984808326, 0.0301524121, -0.171006903, -0.0301532689, 0.999542058, 0.00259293616, 0.171006754, 0.00260289013, 0.985266447) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
        
        attack = false
end

function attacktwo()
        attack = true
                for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.766043425, 0, -0.642789066, 0, 1, 0, 0.642789066, 0, 0.766043425) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.7950489e-08, 1.49999022, 4.07073095e-08, 0.819151163, -2.53004906e-08, 0.573577821, 3.62908921e-08, 1, -7.71863728e-09, -0.573577821, 2.7138384e-08, 0.819151163) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70060778, 0.0830032229, -0.693996668, 0.619650841, -0.675921798, -0.398962885, 0.643637836, 0.728505611, -0.234561399, 0.449190378, -0.111440599, 0.886458755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.34243941, 0.0653340667, 0.957744598, 0.883021653, 0.321395665, 0.342022389, -0.342021704, 0.939694822, -3.64369761e-08, -0.32139501, -0.116979033, 0.939693689) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.698243499, -1.93866825, -0.468385577, 0.892536998, -0.157378942, 0.422618568, 0.173648432, 0.984807611, -5.17513143e-09, -0.416198075, 0.0733872205, 0.906305969) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.649266303, -1.99999702, 0.171937123, 0.422616988, 0, 0.906312048, 0, 1, 0, -0.906312048, 0, 0.422616988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                end
                MagnitudeDamage(RightLeg, 10, 3, 8, 1, 'Normal', '199149186', 1)
                CFuncs.Sound.Create('159972627', HumanoidRootPart, 1, 1)

        for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.851650238, -0.231881678, 0.470024049, 0.342022449, 0.925416112, -0.163176328, -0.397129834, 0.299727947, 0.867439747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.374779433, 1.44796014, 0.0115288794, 0.929005623, 0.183490396, -0.321394771, -0.0925199986, 0.956005931, 0.278379738, 0.358335465, -0.228877649, 0.905111551) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.61636841, -0.150927484, 0.792154253, 0.844053686, -0.360361874, -0.397129834, 0.490403473, 0.818332672, 0.299727947, 0.216973737, -0.447740406, 0.867439747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.61482358, 0.602433681, 0.0318350196, 0.734107375, 0.550791144, -0.397129834, -0.463495553, 0.833866179, 0.299727947, 0.496240675, -0.0359646678, 0.867439747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.780632377, -1.52732766, -1.10416782, 0.851650238, -0.472120732, -0.227581561, -0.231881678, 0.0499956161, -0.971458614, 0.470024049, 0.880115151, -0.0668973178) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.109869, -1.73488867, 0.0913401544, 0.851650238, 0.342022449, -0.397129834, -0.231881678, 0.925416112, 0.299727947, 0.470024049, -0.163176328, 0.867439747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
        
        attack = false
end

function attackthree()
	attack = true
	CFuncs.Sound.Create("541909867", Torso, 1, 1)
	MagnitudeDamage(RightLeg, 10, 3, 8, 1, 'Normal', '199149186', 1)
	for i = 0, 1, 0.1 do
		swait()
	PlayAnimationFromTable({
         CFrame.new(0.40526396, 0.0169513971, 0.187530264, -0.313355327, 0.310338736, -0.897497654, -0.756498933, 0.489720076, 0.433463544, 0.574042976, 0.814783275, 0.0813141614) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00682294369, 1.51228654, -0.0713720024, 0.479012877, -0.372790068, 0.794716716, 4.67896461e-06, 0.905342162, 0.424683571, -0.877810657, -0.203425378, 0.43367216) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.330322206, 0.389174014, -0.682259917, -0.144331515, 0.939254761, 0.311399192, -0.98875773, -0.124458969, -0.0828757137, -0.0390846431, -0.31986165, 0.94666028) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.16195273, 0.28790167, 0.750266492, 0.40399605, 0.901343465, 0.156101227, -0.597077608, 0.389112025, -0.701491714, -0.693027377, 0.190194592, 0.695373297) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.27621162, -1.4038974, -0.265293539, 0.148384452, -0.95709008, 0.248948976, 0.948983252, 0.208629847, 0.236472979, -0.278259009, 0.201161399, 0.93920958) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.47020769, -1.33852017, -0.156540334, 0.495247245, 0.765504241, 0.410772204, -0.630034029, 0.642032027, -0.43686679, -0.598153889, -0.0424444601, 0.800259531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
	attack = false
end 


function attacko()
        attack = true
local Blade=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade",Vector3.new(0.0500000007, 1.53244674, 0.0945124701))
BladeWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.621009827, -1.22111011, 0.0493774414, -2.63735069e-06, 4.37113883e-08, 1, -8.74228903e-08, -1, 4.37111574e-08, 1, -8.74227766e-08, 2.63735069e-06))
CFuncs.Mesh.Create("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126534, 1, 1))
Blade2=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade2",Vector3.new(0.0500000007, 0.0945123211, 1.53244293))
Blade2Weld=CFuncs.Weld.Create(m,Blade,Blade2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0944976807, -1.1920929e-07, 1, -4.37118466e-08, -1.31145043e-07, 1.31145043e-07, 1.680487e-07, 1, -4.37118217e-08, -1, 1.68048714e-07))
CFuncs.Mesh.Create("SpecialMesh",Blade2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126116, 1, 1))
CFuncs.Sound.Create('210933582', Blade, 1, 1)
                for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.89253974, -0.157381982, 0.42261833, 0.17365095, 0.984808683, 4.87254681e-07, -0.416197389, 0.0733878911, 0.906307757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.121821553, 1.46740782, 0.262791663, 0.941519976, 0.0103148594, -0.336826146, 0.010310119, 0.998183012, 0.0593923181, 0.336826712, -0.0593909882, 0.939700246) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.64151144, -0.00116300583, 0.753913403, 0.753910244, -0.508331656, -0.416197389, 0.58507961, 0.807650208, 0.0733878911, 0.29883638, -0.298836112, 0.906307757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.75806463, 0.59317708, -0.0825409442, 0.817183018, -0.50521338, -0.277440965, -0.406906515, -0.164759099, -0.898490131, 0.408217996, 0.847120702, -0.340212345) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.27155605, -1.90206921, 0.206549585, 0.89253974, 0.209258556, -0.399481922, -0.157381982, 0.974667192, 0.158926845, 0.42261833, -0.0789768323, 0.902860284) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.793571234, -1.89092338, -0.211310133, 0.89253974, 0.17365095, -0.416197389, -0.157381982, 0.984808683, 0.0733878911, 0.42261833, 4.87254681e-07, 0.906307757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                end
                CFuncs.Sound.Create('160212892', HumanoidRootPart, 1, 1)
                game:GetService("Chat"):Chat(Character, "Die.", 1)
                wait(1)
                        for i = 0.3, 0.5, 0.1 do
                                swait()
                PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.983257949, -0.157377273, 0.0918638185, 0.163174719, 0.984809577, -0.0593924634, -0.0811212212, 0.0733877122, 0.994000733) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.204345509, 1.46740866, 0.205272287, 0.985589743, -0.0106223505, -0.168826923, 0.0204705317, 0.998183072, 0.0566986129, 0.167917639, -0.0593375936, 0.984015465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.72769666, 0.0878838301, 0.443601936, 0.810647368, -0.539129913, -0.228443041, 0.585081816, 0.761130512, 0.279921889, 0.0229605585, -0.360575885, 0.932448745) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.27590084, 0.505026519, -1.78636563, 0.981755316, -0.167336941, -0.0903198943, -0.0750583187, 0.0953961462, -0.992606401, 0.174715415, 0.981275499, 0.0810948461) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.570928037, -2.14176869, 0.156457633, 0.99777478, -0.00369539298, -0.0665933788, 0.0142633943, 0.987188399, 0.158927172, 0.065152742, -0.159522474, 0.985045493) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.817977905, -1.89092767, 0.07285285, 0.983257949, 0.163174719, -0.0811212212, -0.157377273, 0.984809577, 0.0733877122, 0.0918638185, -0.0593924634, 0.994000733) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                        end
                        MagnitudeDamage(Hitbox, 5, 30, 80, 1, 'Normal', '199149186', 1)
wait(0.2)
                        
        attack = false
		Blade.Transparency = 1
		Blade2.Transparency = 1
		CFuncs.Sound.Create('210943487', Blade, 1, 1)
end

function leapandstab()
attack = true
Humanoid.Jump = true
Torso.Velocity = Torso.CFrame.lookVector * 80
		for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.0170370154, -0.129409999, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999082, 1.1920929e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50000203, -2.68220276e-07, 2.70617306e-09, 0.965925813, -0.258819073, -1.1657886e-07, 0.258819073, 0.965925932, -3.56137753e-06, 1.0356307e-06, 3.39746475e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.49999905, 2.98086391e-08, 6.09189215e-08, 0.965922892, 0.258830428, -3.76242582e-07, -0.258830607, 0.965922832, 1.05947256e-05, 3.08454037e-06, -1.01327896e-05, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.60213828, 0.124440551, 1, 0, 0, 0, 0.86602509, 0.500000775, 0, -0.500000775, 0.86602509) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.53557265, 0.239738822, 1, 0, 0, 0, 0.86602509, 0.500000775, 0, -0.500000775, 0.86602509) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.0669870079, -0.250001043, 1, 0, 0, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999058, -7.15255908e-07, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50000215, -1.31129968e-06, 3.93822006e-08, 0.965925992, -0.258818448, -4.59039427e-07, 0.258818418, 0.96592617, -3.84449959e-06, 1.43796206e-06, 3.57627869e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.09766221, 1.28171778, -1.25524684e-05, -0.342026591, 0.939690232, -7.53054053e-07, -0.939690292, -0.342026591, 1.05798244e-05, 8.85128975e-06, 4.2617321e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.500003934, -1.66351461, 0.21195507, 0.996194661, -0.0871565416, 7.96405629e-07, 0.0616284311, 0.704416156, 0.707106888, -0.0616295487, -0.704416037, 0.707106948) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499998122, -1.66351438, 0.211955011, 0.98480773, 0.173648283, 1.52748851e-06, -0.122789018, 0.696364522, 0.707106471, 0.122786753, -0.696364164, 0.707107246) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	local Blade=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade",Vector3.new(0.0500000007, 1.53244674, 0.0945124701))
BladeWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.621009827, -1.22111011, 0.0493774414, -2.63735069e-06, 4.37113883e-08, 1, -8.74228903e-08, -1, 4.37111574e-08, 1, -8.74227766e-08, 2.63735069e-06))
CFuncs.Mesh.Create("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126534, 1, 1))
Blade2=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade2",Vector3.new(0.0500000007, 0.0945123211, 1.53244293))
Blade2Weld=CFuncs.Weld.Create(m,Blade,Blade2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0944976807, -1.1920929e-07, 1, -4.37118466e-08, -1.31145043e-07, 1.31145043e-07, 1.680487e-07, 1, -4.37118217e-08, -1, 1.68048714e-07))
CFuncs.Mesh.Create("SpecialMesh",Blade2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126116, 1, 1))
CFuncs.Sound.Create('210933582', Blade, 1, 1)
		for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.0669873208, -0.250001878, 1, 0, 0, 0, 0.866026759, 0.500001073, 0, -0.500001073, 0.866026759) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999511, -7.15256931e-07, 1, 0, 0, 0, 1.00000167, 0, 0, 0, 1.00000167) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.34587502, 0.575230002, -0.862330139, 0.965925574, 0.0225543324, 0.25783506, 0.258819938, -0.0841969848, -0.962254822, 6.64591789e-06, 0.996196926, -0.0871641934) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.4022826, 1.02862644, 0.269331396, -0.34201014, 0.32140094, 0.883021653, -0.939695954, -0.116971403, -0.321386009, -4.55975533e-06, -0.939691544, 0.3420237) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.22161603, 0.65314275, 1, 0, 0, 0, 0.0871560276, 0.996195674, 0, -0.996195674, 0.0871560276) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499992371, -1.22161603, 0.65314275, 1, 0, 0, 0, 0.0871560276, 0.996195674, 0, -0.996195674, 0.0871560276) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end

	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.207442358, -0.182590216, 0.332334548, 0.973936617, -0.0509843975, 0.220971525, -0.114963211, 0.728913784, 0.674883842, -0.195477754, -0.682697654, 0.704054415) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0958970487, 1.46855938, -0.102528542, 0.986673355, 0.109493546, 0.120361686, -0.094193235, 0.98752296, -0.126198292, -0.132677853, 0.113179207, 0.984676123) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.45421863, 0.469255269, -0.153424263, 0.989280939, -0.0773513317, 0.123856202, 0.145653471, 0.462141722, -0.874762893, 0.010424912, 0.88342613, 0.468454599) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.691939831, 0.33782649, -1.31341207, 0.639772892, -0.536501825, -0.550324082, -0.593839347, 0.109488249, -0.797099352, 0.487899244, 0.836766481, -0.248548299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.836304605, -1.86768365, -0.382663786, 0.942965984, -0.311614484, -0.117096461, 0.30147475, 0.948571146, -0.0965704024, 0.141167074, 0.0557609797, 0.988414168) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.04642987, -1.07495117, -0.755033135, 0.984032154, 0.170041516, 0.0525999814, -0.12323077, 0.864096463, -0.488007873, -0.128433079, 0.473733455, 0.871252954) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false
	Blade.Transparency = 1
	Blade2.Transparency = 1
	end

function throwkniveskek()
        attack = true
        local Handle1=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Handle1",Vector3.new(0.400000036, 0.700000048, 0.339999944))
Handle1Weld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0446968079, 0.740016222, 1.18044186, 0.999910414, -0.00656176684, -0.0116680702, -0.0079308264, 0.411817819, -0.911229908, 0.0107844919, 0.911251009, 0.411733687))
CFuncs.Mesh.Create("SpecialMesh",Handle1,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=165710339",Vector3.new(0, 0, 0),Vector3.new(0.400000036, 0.700000048, 0.339999944))
                	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.866020203, 0, -0.499998599, 0, 1, 0, 0.499998599, 0, 0.866020203) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(3.42726707e-07, 1.49999452, 2.38418579e-07, 0.866018534, 0.0435782708, 0.498097122, -1.67172402e-07, 0.99619627, -0.0871563628, -0.50000006, 0.0754789412, 0.862722695) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.251631588, 0.0414037555, -0.775989175, -0.695577741, 0.557507694, 0.453151703, -0.383023173, -0.821393073, 0.422618926, 0.607828915, 0.120396733, 0.784881055) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.25117326, 1.66893005e-06, 0.832893133, 0.81379205, 0.296196908, 0.499998599, -0.34202078, 0.939691782, 0, -0.46984458, -0.171009913, 0.866020203) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.433010101, -1.9999975, -0.2499993, 0.866020203, 0, 0.499998599, 0, 1, 0, -0.499998599, 0, 0.866020203) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.433010101, -1.9999975, 0.2499993, 0.866020203, 0, 0.499998599, 0, 1, 0, -0.499998599, 0, 0.866020203) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	                 end
                CFuncs.Sound.Create('159882567', HumanoidRootPart, 1, 1)
                wait(1)
                CFuncs.Sound.Create('159882598', Head, 1, 1)
                wait(0.1)
                        for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.707103312, 0.183012813, -0.683009207, 3.66868269e-09, 0.965925395, 0.258818865, 0.707103431, -0.183012784, 0.683009088) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.87545614e-08, 1.44887817, 0.388225675, 0.707095385, -1.9169839e-08, 0.707111299, 0.183014899, 0.965925395, -0.183010712, -0.683016896, 0.258818895, 0.683001339) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.103712447, 0.837395549, -1.13677454, -0.147672832, 0.986375928, -0.072426796, 0.633838296, 0.0381693989, -0.772522807, -0.759232998, -0.159987539, -0.630840361) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.06065619, -0.274519682, 1.02451491, 0.683007479, 0.18301855, 0.707103431, -0.0732325315, 0.98037982, -0.183012784, -0.726724088, 0.0732171386, 0.683009088) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.694424629, -1.73749733, -0.885341644, 0.987960517, -0.142948151, 0.0590790808, 0.148917794, 0.982315361, -0.113487028, -0.041811496, 0.120919496, 0.991776407) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.353553057, -2.02335405, -0.176130846, 0.70441252, 0.0616282783, 0.707103431, 0.0981302261, 0.978200376, -0.183012784, -0.702967763, 0.198305637, 0.683009088) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
--knife throwing by pixelfir3--[[
Handle1Weld:Destroy()

Handle1.CFrame = CFrame.new(HumanoidRootPart.CFrame.p, Mouse.Hit.p + HumanoidRootPart.CFrame.lookVector)
local bodyVelocity = Instance.new("BodyVelocity", Handle1)
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Handle1.CFrame.lookVector * 350
game:GetService("Debris"):AddItem(Handle1, 500) 
local Hitsnd = Instance.new("Sound",Character)
Hitsnd.SoundId = "rbxassetid://315748999"
Hitsnd.Volume = 2
      Handle1.Touched:connect(function(hit)
 
       hdebounce = true
                        if hit.Parent == Character then return end
       
                for i,v in pairs(hit.Parent:GetChildren()) do
                    if v:IsA("Humanoid") then
            if hdebounce == true then
              hdebounce = false
              Hitsnd:Play()
                        v.Health = v.Health - 99999999999999999999999
              wait(1)
              hdebounce = true
              end
        attack = false      
        
                    end
            end
          
end)
----------------------]]
                       for i = 0, 1, 0.2 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-8.28775228e-06, 2.76238836e-08, -2.40656618e-06, 0.728140593, -0.121278971, -0.674613774, 0.167716205, 0.985827565, 0.00379563123, 0.664592803, -0.115907051, 0.738161802) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.251577377, 1.47872949, 0.00569335371, 0.728133142, 0.225001901, 0.647454202, -0.12127763, 0.971974075, -0.201388046, -0.674622059, 0.0681157559, 0.7350142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.782563508, 0.621258557, -1.89791512, 0.953859091, -0.218949914, -0.205462843, -0.276320159, -0.372379243, -0.885990977, 0.117477536, 0.901884675, -0.415697724) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.09220457, 0.181917101, 1.01191866, 0.659918189, 0.350464761, 0.664592803, -0.372306257, 0.920844376, -0.115907051, -0.652607501, -0.170943022, 0.738161802) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0522509813, -2.14886928, -0.804319978, 0.685422719, 0.342385709, 0.642629802, 0.0616496354, 0.852095366, -0.519743264, -0.725533903, 0.39586097, 0.562938511) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.318738222, -2.04264235, 0.772676229, 0.710752308, -0.250591397, 0.657294869, -0.206738457, 0.81871748, 0.535686076, -0.672377408, -0.516628206, 0.530099213) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)

                        end
                        attack = false
end

function knivesandshit()
	attack = true

	local Handle1=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Handle1",Vector3.new(0.400000036, 0.700000048, 0.339999944))
Handle1Weld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0446968079, 0.740016222, 1.18044186, 0.999910414, -0.00656176684, -0.0116680702, -0.0079308264, 0.411817819, -0.911229908, 0.0107844919, 0.911251009, 0.411733687))
CFuncs.Mesh.Create("SpecialMesh",Handle1,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=165710339",Vector3.new(0, 0, 0),Vector3.new(0.400000036, 0.700000048, 0.339999944))
local Handle2=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Handle2",Vector3.new(0.400000036, 0.700000048, 0.339999944))
Handle2Weld=CFuncs.Weld.Create(m,Character["Left Arm"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00285339355, 0.763807893, 1.14808857, 0.999910414, -0.00656176684, -0.0116680702, -0.0079308264, 0.411817819, -0.911229908, 0.0107844919, 0.911251009, 0.411733687))
CFuncs.Mesh.Create("SpecialMesh",Handle2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=165710339",Vector3.new(0, 0, 0),Vector3.new(0.400000036, 0.700000048, 0.339999944))
	
	for i = 0, 1, 0.1 do
Torso.Velocity=HumanoidRootPart.CFrame.lookVector*35
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0441561528, 0, -0.0118315034, 0.984807134, 0, 0.173651353, 0, 1, 0, -0.173651353, 0, 0.984806895) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0455434993, 1.49999213, 0.00398427248, 1.00000024, 5.15952706e-07, -2.1904707e-06, -1.27581828e-07, 0.984807611, 0.173649445, 2.28732824e-06, -0.17364946, 0.984807432) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5455637, 0.0198140442, 0.131434754, 0.962248683, -0.257834435, 0.0871532038, 0.258819222, 0.965923965, 0, -0.084183313, 0.0225569084, 0.996194839) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53983331, -1.1920929e-07, 0.134713784, 0.962250173, 0.257834852, 0.0871532038, -0.25881964, 0.965925455, 0, -0.0841834396, -0.0225569457, 0.996194839) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.71488148, -2.17166424, 0.514864326, 0.982405424, -0.117302306, -0.145327494, 0.163173482, 0.917637765, 0.362374812, 0.090849869, -0.379711807, 0.920635998) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.737984836, -1.87732089, -0.210283756, 0.981062055, 0.189651191, 0.0394116193, -0.173649371, 0.951250792, -0.254887849, -0.0858302042, 0.24321647, 0.966166854) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		for i = 0, 1, 0.6 do
	Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0441664979, -1.07076607e-06, -0.0118346121, 0.951250434, 0.254887462, 0.173656777, -0.258821398, 0.965930283, 6.3716368e-07, -0.1677403, -0.0449471436, 0.984811008) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.145495728, 1.4134593, 0.0211132318, 0.994850039, 0.0908513069, -0.044945091, -0.0821372047, 0.982405245, 0.167728454, 0.0593926385, -0.163172409, 0.984810472) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.42415965, 1.25063527, 0.358661711, -0.936031282, 0.341701746, 0.0841739029, -0.341041327, -0.939777672, 0.0225523226, 0.0868109465, -0.00759710465, 0.996196389) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60284495, 1.52931416, -0.170036569, -0.981477916, -0.172092244, 0.0841739029, 0.174537405, -0.984392166, 0.0225523226, 0.078979075, 0.0368261077, 0.996196389) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.25258672, -1.9127413, 0.514878511, 0.906696081, -0.350813657, -0.234168261, 0.411885768, 0.856014788, 0.312406093, 0.0908532664, -0.379707813, 0.920639455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.68446219, -2.02681851, -0.166487083, 0.954264045, 0.280274093, 0.104038611, -0.250069171, 0.939027071, -0.235997096, -0.163838372, 0.199186683, 0.966170728) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		end
			for i = 0, 1, 0.5 do
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0767166689, -0.385735571, -0.020556435, -0.596319139, 0.742092013, 0.306112289, -0.762943566, -0.64252001, 0.0713814646, 0.249655157, -0.190980181, 0.949319541) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.102148354, 1.41725266, 0.0211130083, 0.965472698, 0.260064244, -0.0151361153, -0.253643632, 0.951704562, 0.172984734, 0.0593921989, -0.163172826, 0.984808326) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.18534338, 1.47893548, 0.35866195, -0.981032312, 0.173319161, 0.0868120044, -0.17331937, -0.984836638, 0.00759299798, 0.0868116468, -0.00759722665, 0.996195793) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.84404397, 1.22773039, -0.17003724, -0.936260104, -0.340412796, 0.0868120044, 0.34231472, -0.939554811, 0.00759299798, 0.0789798796, 0.036826048, 0.996195793) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.90141201, -2.10116315, 0.514871776, 0.964443445, -0.19683975, -0.17636019, 0.248182535, 0.903923988, 0.348320335, 0.0908528864, -0.379704744, 0.92063576) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.02602744, -1.87717831, -0.166485623, 0.89634347, 0.439077497, 0.0614781454, -0.411977291, 0.876091301, -0.250477672, -0.163839579, 0.199186385, 0.966168463) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
			end
	for i = 0, 1, 0.6 do
		
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		swait()
		CFuncs.Sound.Create('200632136', HumanoidRootPart, 1, 1.7)
		PlayAnimationFromTable({
         CFrame.new(-0.0822006539, -0.414729297, 0.022024665, -0.936179161, 0.086464718, 0.340726048, -0.0864963233, -0.996142387, 0.015128836, 0.340719819, -0.0153078698, 0.94004494) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.102156259, 1.41724837, 0.0211113542, 0.965473235, 0.260062277, -0.0151364729, -0.253641665, 0.951704979, 0.172984466, 0.059392184, -0.163172603, 0.984808385) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.98124778, 1.18503284, 0.430260122, 0.173320591, 0.925136328, 0.337762296, -0.984836817, 0.16544947, 0.0521939769, -0.00759617332, -0.341686666, 0.93978399) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.84403968, 1.22773707, -0.170041442, -0.0871556699, -0.862724602, -0.498107374, 0.99619478, -0.0754774511, -0.0435804389, 1.99656574e-06, -0.500010192, 0.866020143) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.901409566, -2.10116506, 0.514872432, 0.964443207, -0.196840882, -0.176360697, 0.248183787, 0.903923631, 0.348320276, 0.090852946, -0.379704922, 0.92063576) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.02602339, -1.8771739, -0.166484967, 0.896343768, 0.439076722, 0.0614783168, -0.411976427, 0.876091599, -0.250477582, -0.163839489, 0.199186385, 0.966168523) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
Handle1Weld:Destroy()

Handle1.CFrame = CFrame.new(HumanoidRootPart.CFrame.p, Mouse.Hit.p + HumanoidRootPart.CFrame.lookVector)
local bodyVelocity = Instance.new("BodyVelocity", Handle1)
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Handle1.CFrame.lookVector * 350
Handle2.CFrame = CFrame.new(HumanoidRootPart.CFrame.p, Mouse.Hit.p + HumanoidRootPart.CFrame.lookVector)
local bodyVelocity = Instance.new("BodyVelocity", Handle1)
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Handle1.CFrame.lookVector * 350
game:GetService("Debris"):AddItem(Handle1, 500) 
local Hitsnd = Instance.new("Sound",Character)
Hitsnd.SoundId = "rbxassetid://315748999"
Hitsnd.Volume = 2
      Handle1.Touched:connect(function(hit)
 
       hdebounce = true
                        if hit.Parent == Character then return end
       
                for i,v in pairs(hit.Parent:GetChildren()) do
                    if v:IsA("Humanoid") then
            if hdebounce == true then
              hdebounce = false
              Hitsnd:Play()
                        v.Health = v.Health - 99999999999999999999999
              wait(1)
              hdebounce = true
              end
        attack = false      
        
                    end
            end
          
end)
----------------------]]

Handle2Weld:Destroy()

Handle2.CFrame = CFrame.new(HumanoidRootPart.CFrame.p, Mouse.Hit.p + HumanoidRootPart.CFrame.lookVector)
local bodyVelocity = Instance.new("BodyVelocity", Handle2)
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Handle2.CFrame.lookVector * 350
Handle2.CFrame = CFrame.new(HumanoidRootPart.CFrame.p, Mouse.Hit.p + HumanoidRootPart.CFrame.lookVector)
local bodyVelocity = Instance.new("BodyVelocity", Handle2)
bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyVelocity.Velocity = Handle2.CFrame.lookVector * 350
game:GetService("Debris"):AddItem(Handle1, 500) 
local Hitsnd = Instance.new("Sound",Character)
Hitsnd.SoundId = "rbxassetid://315748999"
Hitsnd.Volume = 2
      Handle1.Touched:connect(function(hit)
 
       hdebounce = true
                        if hit.Parent == Character then return end
       
                for i,v in pairs(hit.Parent:GetChildren()) do
                    if v:IsA("Humanoid") then
            if hdebounce == true then
              hdebounce = false
              Hitsnd:Play()
                        v.Health = v.Health - 99999999999999999999999
              wait(1)
              hdebounce = true
              end
        attack = false      
        
                    end
            end
          
end)
----------------------]]

	for i = 0, 1, 0.3 do
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		CFuncs.Sound.Create('159882561',HumanoidRootPart, 0.2, 1)
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0885350108, 0.142080992, 0.0237205178, -0.383919895, -0.873302519, 0.299916506, 0.903030753, -0.422906578, -0.0754685774, 0.192743152, 0.241860271, 0.95097971) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.102168076, 1.41724849, 0.0211118907, 0.965471685, 0.260067761, -0.0151363611, -0.253646821, 0.951703012, 0.172987491, 0.0593937859, -0.163175255, 0.984807789) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73311579, 0.538305521, 0.795276761, 0.17331475, 0.695710421, 0.697100878, -0.984840095, 0.127873167, 0.117235921, -0.00757930987, -0.706848919, 0.707324743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.01161981, 0.436261624, 0.668604612, -0.0871696025, -0.086815685, -0.992403388, 0.996193469, -0.00760528911, -0.0868372098, -8.68210009e-06, -0.996195376, 0.0871481597) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.90139997, -2.10115314, 0.514877319, 0.964442074, -0.196844429, -0.176362842, 0.248187944, 0.903922558, 0.348320067, 0.0908534303, -0.379705638, 0.920635343) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.02600491, -1.87712467, -0.166482404, 0.896344125, 0.439076126, 0.0614787564, -0.41197601, 0.876092434, -0.250475585, -0.163838923, 0.199184567, 0.96616894) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false	
end



function kickoverandover()
        attack = true
        for i=1,5 do
                                for i = 0, 1.2, 0.8 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-4.76861032e-07, 2.47731236e-07, 1.03706259e-06, -7.03334808e-06, -1.50948763e-05, -1.00001287, -0.766044319, 0.642790258, -6.15231693e-06, 0.642791152, 0.76605159, -1.65551901e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-6.97374344e-06, 1.50007236, -2.01351941e-06, 0.342021167, -7.27176666e-06, 0.939690948, 0.0818991959, 0.996201277, -0.0298030674, -0.936124146, 0.0871526301, 0.340724528) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5000205, -1.60187483e-06, 5.36441803e-07, 0.79123342, -0.258823067, -0.554040492, 0.212012917, 0.965928078, -0.148458704, 0.573591948, -1.04308128e-07, 0.819153726) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.50002003, 3.05928893e-06, 0.0957182273, 0.866018891, 0.500010729, -1.9967556e-06, -0.500013173, 0.866021454, 2.07126141e-06, 4.63426113e-06, -1.35600567e-06, 1.00000954) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.98663044, -1.51110554, 3.19435344e-06, 0.707107425, -0.707106173, -1.37090683e-06, 0.707107186, 0.707112134, -2.83122063e-07, 6.85453415e-07, -2.76253559e-06, 1.00000942) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.65492606, -1.86982751, -5.48140179e-06, 0.499996126, 0.866027474, -4.23192978e-06, -0.866030812, 0.49999702, 1.86264515e-06, 5.62518835e-06, 3.1888485e-06, 1.00000942) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
        for i = 0, 1, 0.3 do
                MagnitudeDamage(LeftLeg, 2, 5, 10, 15, 'Normal', '199149186', 1)

                CFuncs.Sound.Create('199145497', LeftLeg, 1,  1)
                
                swait()
                PlayAnimationFromTable({
         CFrame.new(-4.69597751e-07, -1.08713039e-12, 8.28004829e-08, 0.111614943, 0.133020088, -0.984817863, -0.766050994, 0.642782509, -2.27987766e-06, 0.633014858, 0.754415512, 0.173645198) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-7.72625208e-06, 1.50007176, -1.38673931e-06, 0.342021167, -7.27176666e-06, 0.939690948, 0.0818991959, 0.996201277, -0.0298030674, -0.936124146, 0.0871526301, 0.340724528) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50002003, -2.00420618e-06, 4.76837158e-07, 0.79123342, -0.258823067, -0.554040492, 0.212012917, 0.965928078, -0.148458704, 0.573591948, -1.04308128e-07, 0.819153726) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.50002003, 2.58245245e-06, 0.095718585, 0.866018891, 0.500010729, -1.9967556e-06, -0.500013173, 0.866021454, 2.07126141e-06, 4.63426113e-06, -1.35600567e-06, 1.00000954) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.986630082, -1.5111053, 3.19435253e-06, 0.707107425, -0.707106173, -1.37090683e-06, 0.707107186, 0.707112134, -2.83122063e-07, 6.85453415e-07, -2.76253559e-06, 1.00000942) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.951967835, -0.896497548, -2.90316666e-06, 0.70711112, 0.70710218, -4.35113907e-06, -0.70710516, 0.707112908, -3.33786011e-06, 2.68174335e-06, 5.42402267e-06, 1.0000093) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
                for i = 0, 1, 0.6 do


                swait()
                PlayAnimationFromTable({
         CFrame.new(0, 0, 0, -5.82635403e-06, -7.9870224e-06, -1.00000954, -0.766042531, 0.642792702, -2.60956585e-06, 0.642789781, 0.766044319, -1.0073185e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-7.84546137e-06, 1.50007164, -2.45776027e-06, 0.342021167, -7.27176666e-06, 0.939690948, 0.0818991959, 0.996201277, -0.0298030674, -0.936124146, 0.0871526301, 0.340724528) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50002074, -2.54064798e-06, 8.94069672e-07, 0.79123342, -0.258823067, -0.554040492, 0.212012917, 0.965928078, -0.148458704, 0.573591948, -1.04308128e-07, 0.819153726) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.50002003, 2.70165879e-06, 0.0957171544, 0.866018891, 0.500010729, -1.9967556e-06, -0.500013173, 0.866021454, 2.07126141e-06, 4.63426113e-06, -1.35600567e-06, 1.00000954) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.986630082, -1.5111053, 3.67119401e-06, 0.707107425, -0.707106173, -1.37090683e-06, 0.707107186, 0.707112134, -2.83122063e-07, 6.85453415e-07, -2.76253559e-06, 1.00000942) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.484311283, -1.91146851, 9.76546289e-07, 1.00000405, 1.07288361e-05, -5.75184822e-06, -1.38878822e-05, 1.00000322, 1.1920929e-06, 7.4505806e-06, -1.40070915e-06, 1.00000966) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
        
                        
                        
        end
        attack = false


end

function twoknives()
	
end

function Spinkick()
	attack = true
	
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*35
		PlayAnimationFromTable({
         CFrame.new(4.30308447e-08, -0.700000882, -5.36441803e-07, 1.00000238, 4.108648e-08, -2.92618097e-07, -6.14724556e-08, 0.939692974, 0.342020333, -2.89023546e-07, -0.342020154, 0.939695299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.11758709e-08, 1.41816163, 0.196914852, 0.9925493, -6.14724556e-08, 0.121863753, 0.0416799113, 0.939692974, -0.339470983, -0.114515126, 0.342020333, 0.932691455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.299988329, 0.470191002, -0.999463379, 0.342016935, 0.93969667, 1.95566827e-06, 2.71201134e-06, 1.21444464e-06, -1.00000024, -0.939697504, 0.34201622, -1.60932541e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.49999094, -0.187940046, -0.0684037358, 1.00000215, -4.29053898e-07, 2.07937228e-06, -2.46214796e-07, 0.939694583, 0.342017412, -2.62994172e-06, -0.342018992, 0.939696193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.4999955, -1.66622698, 0.776985824, 1.00000215, -7.83637972e-07, 1.97326563e-06, -2.46201864e-07, 0.866024256, 0.500002801, -2.62994263e-06, -0.500004411, 0.866025686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499997288, -0.982183516, -1.10241282, 1.00000286, -1.0350206e-08, -3.54912174e-07, 5.14367571e-08, 0.984808087, -0.173648417, -3.5131751e-07, 0.173648104, 0.984810948) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		PlayAnimationFromTable({
         CFrame.new(0.057091713, 0.135582566, 0.0443314537, 1, 0, 0, 0, 0.927682936, 0.373360515, 0, -0.373360515, 0.927682936) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0186543614, 1.43893313, 0.202606112, 0.998511374, -0.0402879454, 0.0367714167, 0.0506920666, 0.934284866, -0.35288769, -0.0201378576, 0.354226351, 0.934936166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68912137, 0.196010083, 0.102462336, 0.924492478, -0.349139601, -0.153020516, 0.353632063, 0.935375035, 0.00231105089, 0.142324686, -0.0562494993, 0.988214195) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.56000602, 0.0381356478, -0.46972397, 0.992696524, 0.12063881, 1.04991102e-07, -0.0919796303, 0.756870151, -0.647050858, -0.0780595317, 0.642325222, 0.762438655) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.612647414, -1.47144675, -0.556731939, 0.992708802, -0.100837603, -0.06603802, 0.111820064, 0.974958718, 0.192196012, 0.045003742, -0.198179156, 0.979125738) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.537494659, -1.65600026, 0.729900599, 0.991710365, 0.0555263385, 0.115877263, -0.119201362, 0.734256029, 0.668316305, -0.0479744226, -0.676588774, 0.734788299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
--             v changed time (Salvo)
	for i = 0, 2, 0.1 do
		MagnitudeDamage(LeftLeg, 5, 3, 20, 1, 'Normal', '199149186', 1)
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*30
		PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.642781496, -0.766049683, -3.12808822e-07, 0.766049683, 0.642781556, 7.50513607e-08, 1.42001966e-07, -3.27823869e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0+i*1000), 0), 
         CFrame.new(0.0589628965, 1.48549497, -0.200005725, 0.342010021, -1.26040527e-06, 0.939696372, 1.36627648e-07, 1.00000024, 1.32718878e-06, -0.939696372, -4.17231831e-07, 0.342010081) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.456179023, 0.56618154, -1.02581036, 0.342003882, 0.907679439, 0.243210539, 0.939698756, -0.330352515, -0.0885091797, 7.1999084e-06, 0.25881505, -0.965927064) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.608400941, 0.703632832, 0.900031447, 0.499993861, -0.778390169, -0.379624903, 0.866029024, 0.449390858, 0.219184101, -1.06939497e-05, -0.438356787, 0.898801267) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.57971871, -1.415923, -9.86601094e-08, 4.40059966e-06, -0.86602062, -0.500008225, -4.23191659e-06, 0.500008285, -0.866020679, 1.00000012, 5.94103585e-06, -1.46540526e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.7249614, -1.05580914, -0.600024045, 0.556665421, 0.82977283, 0.0400093794, -0.663418889, 0.473019123, -0.579765916, -0.499999136, 0.296192586, 0.813800275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		CFuncs.Sound.Create("199145095", HumanoidRootPart, 1, 1.2)
	end
	for i = 0, 1, 0.1 do
		MagnitudeDamage(RightLeg, 5, 3, 15, 1, 'Normal', '199149186', 1)
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*50
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.642766833, -0.766061604, -1.87754631e-06, 0.766062379, 0.642767549, -1.28149986e-06, -2.5331974e-06, -3.22313099e-07, 0.999996662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0589868128, 1.48555756, -0.200002283, 0.341969252, 2.25474796e-05, 0.939711154, -1.10798337e-05, 1.00000012, -1.89002603e-05, -0.939709663, -3.65659389e-06, 0.341963291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.45614472, 0.566188216, -1.02580297, 0.342018545, 0.907675982, 0.243202209, 0.93969363, -0.33036688, -0.0885095075, 6.33299351e-06, 0.258801788, -0.965926886) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.608350575, 0.703668118, 0.900029778, 0.500003874, -0.778391302, -0.379609793, 0.866023958, 0.449403495, 0.219179437, -1.16229057e-05, -0.438336134, 0.898807406) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.57973671, -1.41598916, -7.29920794e-06, 6.51776791e-05, -0.866014957, -0.500018179, 7.81257859e-06, 0.500017345, -0.866015792, 0.999996543, 5.70416451e-05, 4.15742397e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.72507429, -1.05586803, -0.600011408, 0.556633115, 0.829794526, 0.0400061607, -0.663449109, 0.472999275, -0.579748034, -0.499995589, 0.296159923, 0.81381011) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		CFuncs.Sound.Create("199145095", HumanoidRootPart, 1, 1)
		MagnitudeDamage(Torso, 5, 3, 8, 1, 'Normal', '199149186', 1)
		local Blade=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade",Vector3.new(0.0500000007, 1.53244674, 0.0945124701))
BladeWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.621009827, -1.22111011, 0.0493774414, -2.63735069e-06, 4.37113883e-08, 1, -8.74228903e-08, -1, 4.37111574e-08, 1, -8.74227766e-08, 2.63735069e-06))
CFuncs.Mesh.Create("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126534, 1, 1))
Blade2=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Ghost grey","Blade2",Vector3.new(0.0500000007, 0.0945123211, 1.53244293))
Blade2Weld=CFuncs.Weld.Create(m,Blade,Blade2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0944976807, -1.1920929e-07, 1, -4.37118466e-08, -1.31145043e-07, 1.31145043e-07, 1.680487e-07, 1, -4.37118217e-08, -1, 1.68048714e-07))
CFuncs.Mesh.Create("SpecialMesh",Blade2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.945126116, 1, 1))
CFuncs.Sound.Create('210933582', Blade, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*35
		PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.642774582, -0.766055584, -8.94069672e-08, 0.766055226, 0.642774642, 5.06639481e-07, -3.57627869e-07, -3.79806806e-07, 0.999999821) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0589947999, 1.48555517, -0.199999601, 0.694235921, 0.323769867, 0.642812788, -0.422654301, 0.906291962, -1.86566649e-05, -0.582583547, -0.27167055, 0.766023099) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.55620587, 0.566173196, 0.879425406, 0.342042625, -0.907675028, -0.243172556, 0.93968457, 0.330392301, 0.0885108635, 3.29315662e-06, -0.258779824, 0.965936303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.98674369, 1.08673441, -0.844527662, 0.500017405, 0.545052052, 0.672982395, 0.866015494, -0.314693868, -0.388570398, -7.76350498e-06, 0.777110636, -0.629370749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.472010255, -1.63873601, 1.10147309, 0.577492774, -0.339663088, 0.74238205, -0.6277771, 0.396581441, 0.669790685, -0.521917999, -0.852849901, 0.0157904029) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.12803674, -0.477380514, -0.944762468, 0.5566414, 0.314433694, 0.768948436, -0.663449824, 0.7253263, 0.183675006, -0.49998486, -0.612399697, 0.612357438) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	MagnitudeDamage(LeftLeg, 5, 3, 10, 1, 'Normal', '199149186', 1)

	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=HumanoidRootPart.CFrame.lookVector*0
	PlayAnimationFromTable({
         CFrame.new(-0, -0, 0, 1, 0, 0, 0, 0.866026103, 0.499998897, 0, -0.499998897, 0.866026103) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.6461097, -0.0311346352, 1, 0, 0, 0, 0.956312776, -0.292375326, 0, 0.292375326, 0.956312776) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.6299994, -1.10268593e-06, 1.37090683e-06, 0.729592562, -0.324828357, -0.601815224, 0.0773431957, 0.913544297, -0.399318516, 0.679494858, 0.244793519, 0.691638052) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.83000851, -1.63912773e-06, 4.05311584e-06, 0.725096703, 0.401919127, 0.559192479, -0.175310329, 0.892996013, -0.414517671, -0.665959179, 0.202533126, 0.717968881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.499997586, -1.73204744, -0.999996066, 0.951055408, 0, -0.309021354, -0.154510245, 0.866026103, -0.475526929, 0.267620414, 0.499998897, 0.823639274) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.829980016, -2.23204684, -0.133965611, 0.963289499, 0.173642531, -0.204749718, -0.183938086, 0.982409537, -0.0322215855, 0.195553094, 0.0686998963, 0.978284121) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	}, .3, false)
	end

	attack = false
	Blade.Transparency = 1
		Blade2.Transparency = 1
		CFuncs.Sound.Create('210943487', Blade, 1, 1)
end
function Taunt()
        attack = true

  local RandomTaunt = math.random(1, 6)
  for i = 0, 1, 0.1 do
    swait()

   
  end
  if RandomTaunt == 1 then
    CFuncs.Sound.Create('159882567', Head, 1, 1)
  elseif RandomTaunt == 2 then
  CFuncs.Sound.Create('159882504', Head, 1, 1)
  elseif RandomTaunt == 3 then
 CFuncs.Sound.Create('159972582', Head, 1, 1)
  elseif RandomTaunt == 4 then
   CFuncs.Sound.Create('160212585', Head, 1, 1)
  elseif RandomTaunt == 5 then
   CFuncs.Sound.Create('159882417', Head, 1, 1)
  elseif RandomTaunt == 6 then
    CFuncs.Sound.Create('159882417', Head, 1, 1)
  end
        for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-0.103028066, -0.0410266891, 0.148278922, 0.996193588, 1.34322499e-06, -0.0871474445, -6.86902411e-07, 1.00000441, -1.38429004e-06, 0.0871538818, 2.58434989e-06, 0.996198058) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(7.49548462e-06, 1.4999944, 1.43111583e-06, 0.965919673, 1.68329007e-05, 0.258841187, -1.54472546e-05, 1.00000489, -3.92646734e-06, -0.258835793, 9.09004484e-07, 0.965923905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.61711669, 0.0308480058, -0.314450145, 0.907677054, -0.330356777, 0.258813411, 0.34201327, 0.939699829, -1.72969385e-06, -0.243199676, 0.0885178894, 0.965931535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.12732565, 0.591384053, -1.25429332, -3.17577474e-07, 0.0871538222, 0.996193528, 1.00000441, -1.6532922e-06, 1.34322499e-06, 2.83722102e-06, 0.996197999, -0.0871473849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.756498814, -1.9515996, -0.153336674, 0.981057525, -0.172985658, 0.0871613324, 0.173650086, 0.984816372, 1.07272172e-06, -0.0858243704, 0.0151343122, 0.996200681) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.482957542, -2.00001907, 0.129397511, 0.852865577, 0.150385663, 0.499998987, -0.173651099, 0.984816253, 1.17081265e-06, -0.492395192, -0.0868221372, 0.866036713) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
        for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-0.103028066, -0.0410266891, 0.148278922, 0.996193588, 1.34322499e-06, -0.0871474445, -6.86902411e-07, 1.00000441, -1.38429004e-06, 0.0871538818, 2.58434989e-06, 0.996198058) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(8.12113285e-06, 1.50000513, 4.05311584e-06, 0.965928078, 0.0449642092, 0.254906088, -1.5494672e-05, 0.984815538, -0.173653126, -0.258837461, 0.167732835, 0.951247513) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.61711669, 0.0308480058, -0.314450145, 0.907677054, -0.330356777, 0.258813411, 0.34201327, 0.939699829, -1.72969385e-06, -0.243199676, 0.0885178894, 0.965931535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.12731683, 0.591380537, -1.25428081, 0.0298081003, 0.0818976909, 0.996189415, 0.93969512, -0.342022747, 1.29681735e-06, 0.340722531, 0.936113715, -0.0871467888) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.756498814, -1.9515996, -0.153336674, 0.981057525, -0.172985658, 0.0871613324, 0.173650086, 0.984816372, 1.07272172e-06, -0.0858243704, 0.0151343122, 0.996200681) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.482957542, -2.00001907, 0.129397511, 0.852865577, 0.150385663, 0.499998987, -0.173651099, 0.984816253, 1.17081265e-06, -0.492395192, -0.0868221372, 0.866036713) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end
attack = false
end

function flyingkick()
        attack = true
                for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-0.0429926626, 0.0894732475, 0.122994438, -0.727564096, 0.216495171, -0.650984228, 0.573419571, 0.712829351, -0.4038122, 0.376617283, -0.667086363, -0.642771661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.274499357, 1.93965256, -0.290742159, 0.812678874, 0.363525271, -0.455414772, -0.286139101, 0.929784596, 0.231571287, 0.50761956, -0.0578810275, 0.859634995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5499568, 0.227483302, 0.0348644555, 0.532571554, -0.817559302, -0.219007775, 0.327320457, 0.437569499, -0.837492883, 0.780531168, 0.374339074, 0.500640929) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.59097123, 0.116363764, -0.24041757, 0.933583856, 0.270491242, 0.235065222, -0.0104056299, 0.676133752, -0.736705422, -0.358207911, 0.685330331, 0.634042203) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.859973013, -1.63333058, -0.339466155, 0.664916039, -0.527359009, -0.528941691, 0.184340924, 0.802123129, -0.56799382, 0.723813057, 0.280162573, 0.630558252) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.689801693, -1.69944763, 0.234763622, 1.00000012, 2.02804804e-05, 8.85128975e-06, -1.37388706e-05, 0.251131684, 0.967952967, 1.74343586e-05, -0.967952967, 0.251131743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                end
                        for i = 0, 1, 0.1 do
                swait()
                PlayAnimationFromTable({
         CFrame.new(-0.351287425, 0.0290605277, -0.0769110247, -0.973907232, 0.0511301868, -0.221112013, -0.114961348, 0.728892446, 0.674907267, 0.195675001, 0.68271637, -0.703995585) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0958961993, 1.46855259, -0.102531463, 0.986673295, 0.109493993, 0.120361403, -0.0941934884, 0.98752284, -0.126199752, -0.132677689, 0.113180697, 0.984676003) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.45423353, 0.469249904, -0.153430343, 0.989281118, -0.0773509219, 0.12385425, 0.145651549, 0.462145418, -0.874761343, 0.0104248822, 0.883424401, 0.468457967) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.691947639, 0.337811351, -1.31342399, 0.63977766, -0.5364995, -0.550320745, -0.593830824, 0.10949415, -0.797104836, 0.487903237, 0.836767316, -0.248538017) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.836311221, -1.86768115, -0.382668525, 0.942966878, -0.311612219, -0.117096215, 0.301472366, 0.948571861, -0.0965712965, 0.141166985, 0.0557623506, 0.988414168) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.04644108, -1.07495451, -0.755041718, 0.984032154, 0.170041472, 0.0525995046, -0.123230606, 0.864095151, -0.488010168, -0.128432944, 0.473735869, 0.871251643) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
                        end
                        attack = false
end  


Mouse.Button1Down:connect(function()
    if attack == false and attacktype == 1 then
        attackone()
        attacktype = 2
    elseif attack == false and attacktype == 2 then
        attacktwo()
        attacktype = 3
    elseif attack == false and attacktype == 3 then
	    attackthree()
	    attacktype = 1


    end
end)

Mouse.KeyDown:connect(function(k)
  k = k:lower()
  if attack == false and k == "z" then
    attacko()

   elseif attack == false and k == "q" then
    throwkniveskek()



   elseif attack == false and k == "x" then
    kickoverandover()

   elseif attack == false and k == "g" then
    Taunt()


elseif attack == false and k == "v" then

    Spinkick()
elseif attack == false and k == "c" then
	knivesandshit()
	
elseif attack == false and k == "f" then
leapandstab()



  end
end)




while true do
        swait()
        for i, v in pairs(Character:GetChildren()) do
                if v:IsA("Part") then
                        v.Material = "SmoothPlastic"
                elseif v:IsA("Accessory") then
                        v:WaitForChild("Handle").Material = "SmoothPlastic"
                end
        end
        Torsovelocity = (HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
        velocity = HumanoidRootPart.Velocity.y
        sine = sine + change
        local hit, pos = rayCast(HumanoidRootPart.Position, (CFrame.new(HumanoidRootPart.Position, HumanoidRootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
                if HumanoidRootPart.Velocity.y > 1 and hit == nil then 
                        Anim = "Jump"
                        if attack == false then
                                PlayAnimationFromTable({
        CFrame.new(0, 0.0436773151, -0.0958894566, 1, 0, 0, 0, 0.979366124, 0.202094048, 0, -0.202094033, 0.979366124) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0, 1.50078464, -0.0434546769, 1, 0, 0, 0, 0.990667343, 0.136302382, 0, -0.136302412, 0.990667343) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.64024234, 0.193567753, 0.00427898765, 0.892431021, -0.354886115, 0.278608471, 0.407243699, 0.899403036, -0.158829555, -0.19421488, 0.255205929, 0.94718039) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.6411283, 0.235373467, 0.0476976931, 0.854992151, 0.446793675, -0.263370335, -0.496187717, 0.852461219, -0.164643824, 0.150951192, 0.271450311, 0.950541198) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.55792439, -1.57147515, -0.158797979, 0.997079909, 0.0636449754, -0.0421660356, -0.0447768904, 0.934851587, 0.352215409, 0.061834842, -0.349303246, 0.934978843) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.738243103, -1.88598239, 0.260951996, 0.962180376, 0.154025614, 0.224692196, -0.20719263, 0.94928062, 0.236513555, -0.176866814, -0.274123043, 0.945291162) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
                           }, 0.3, false)
                   end
                elseif HumanoidRootPart.Velocity.y < -1 and hit == nil then 
                        Anim = "Fall"
                        if attack == false then
                                 PlayAnimationFromTable({
        CFrame.new(0.0226157792, -0.0212399997, 0.130760044, 0.987825871, 0.0410310999, 0.150055334, 0, 0.964589238, -0.26375708, -0.15556398, 0.260546058, 0.952846169) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.0388777852, 1.55246329, -0.167190313, 0.96372503, 0.00389923947, -0.266869605, 0.0835845172, 0.945186496, 0.3156524, 0.253472269, -0.326508105, 0.910574019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(1.72698784, 0.344668627, -0.2057845, 0.711411119, -0.460974425, 0.530468345, 0.667616367, 0.679052651, -0.30524689, -0.219505072, 0.571305454, 0.79084003) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-1.69352794, 0.405396253, 0.0323119164, 0.614052653, 0.685430944, -0.391310841, -0.764818966, 0.639190793, -0.0805452466, 0.194914013, 0.348741174, 0.916727304) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(0.708790183, -1.69872558, -0.272453845, 0.962645173, -0.220248789, -0.157495782, 0.226377994, 0.973794341, 0.021872133, 0.148551151, -0.0567086488, 0.987277567) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
        CFrame.new(-0.383032143, -1.80201328, -0.0648381114, 0.971793711, -0.202388048, 0.121063158, 0.131539553, 0.891238749, 0.434042007, -0.195740849, -0.405874491, 0.892722249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
                   }, 0.3, false)
                    end
                elseif Torsovelocity < 1 and hit ~= nil then
                        Anim = "Idle"
                        if attack == false then
                                change = 1
                PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.965925455, 0, -0.25881964, 0, 1, 0, 0.25881964, 0, 0.965925455) * CFrame.new(0, 0 + 0.1 * math.cos(sine / 15), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(5.36441803e-07, 1.49998856, -2.08616257e-07, 0.965924859, -0.044943627, 0.254889816, -3.80585334e-07, 0.984807909, 0.173648342, -0.258821845, -0.167731375, 0.951250255) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.151348129, 0.0352778658, -0.72325331, 0.330360681, 0.907674789, 0.25881964, -0.939694464, 0.34201467, 0, -0.0885201171, -0.243211389, 0.965925455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.417193592, 0.169204265, -0.583143771, -2.61240416e-06, -0.965925455, 0.25881964, 1, -2.70456076e-06, 0, 6.9999345e-07, 0.25881964, 0.965925455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.756500721, -1.95157945, -0.15334031, 0.981053531, -0.172987491, 0.0871554017, 0.173647732, 0.984807551, -1.56565105e-09, -0.0858313292, 0.0151344873, 0.996189058) * CFrame.new(0, 0 - 0.1 * math.cos(sine / 15), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.482961625, -1.9999969, 0.129410028, 0.852866173, 0.15038389, 0.500000238, -0.173648432, 0.984807611, -5.17513143e-09, -0.492403984, -0.0868244395, 0.866023064) * CFrame.new(0, 0 - 0.1 * math.cos(sine / 15), 0) * CFrame.Angles(0, 0, 0), 
                }, .3, false)
        end

                elseif Torsovelocity > 6 and hit ~= nil then
                        Anim = "Walk"

                                if attack == false then
                                 PlayAnimationFromTable({
        CFrame.new(0, -0.174938306, -0.101783589, 1, 0, 0, 0, 0.979186654, 0.202961922, 0, -0.202961922, 0.979186654) * CFrame.new(0, 0 + 0.1 * math.cos(sine / 4), 0) * CFrame.Angles(0, 0 + 0.1 * math.sin(sine / 8), 0),
        CFrame.new(0, 1.49999189, 1.58548355E-5, 1, 0, 0, 0, 0.995475352, -0.0950205326, 0, 0.0950205326, 0.995475352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0 - 0.1 * math.sin(sine / 8), 0),
        CFrame.new(1.57730746, 0.0719611943, 0.00628598034, 0.976458192, -0.188104928, 0.105574317, 0.200467497, 0.972049892, -0.122196086, -0.0796378255, 0.140483588, 0.986874938) * CFrame.new(-0.05, 0, -0.1 - 0.5 * math.sin(sine / 8)) * CFrame.Angles(math.rad(30 * math.sin(sine / 8)), math.rad(0), math.rad(0)),
        CFrame.new(-1.55804253, 0.0689925253, 0.0429513156, 0.964821577, 0.249019504, -0.0843129531, -0.261087656, 0.945191264, -0.196078911, 0.0308643766, 0.211194247, 0.976956785) * CFrame.new(0.05, 0, -0.2 + 0.5 * math.sin(sine / 8)) * CFrame.Angles(math.rad(-30 * math.sin(sine / 8)), math.rad(0), math.rad(0)),
        CFrame.new(0.5, -1.64 - 0.5 * math.cos(sine / 8) / 2, 0 + 1.5 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(-50 * math.sin(sine / 8)), math.rad(-5), math.rad(0)),
        CFrame.new(-0.5, -1.64 + 0.5 * math.cos(sine / 8) / 2, 0 - 1.5 * math.sin(sine / 8) / 2) * CFrame.Angles(math.rad(50 * math.sin(sine / 8)), math.rad(5), math.rad(0))
      }, 0.3, false)
                        end
                end
        if 0 < #Effects then
                for e = 1, #Effects do
                        if Effects[e] ~= nil then
                                local Thing = Effects[e]
                                if Thing ~= nil then
                                        local Part = Thing[1]
                                        local Mode = Thing[2]
                                        local Delay = Thing[3]
                                        local IncX = Thing[4]
                                        local IncY = Thing[5]
                                        local IncZ = Thing[6]
                                        if Thing[2] == "Shoot" then
                                                local Look = Thing[1]
                                                local move = 30
                                                if Thing[8] == 3 then
                                                        move = 10
                                                end
                                                local hit, pos = rayCast(Thing[4], Thing[1], move, m)
                                                if Thing[10] ~= nil then
                                                        da = pos
                                                        cf2 = CFrame.new(Thing[4], Thing[10].Position)
                                                        cfa = CFrame.new(Thing[4], pos)
                                                        tehCF = cfa:lerp(cf2, 0.2)
                                                        Thing[1] = tehCF.lookVector
                                                end
                                                local mag = (Thing[4] - pos).magnitude
                                                Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                                                if Thing[8] == 2 then
                                                        Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
                                                end
                                                Thing[4] = Thing[4] + Look * move
                                                Thing[3] = Thing[3] - 1
                                                if 2 < Thing[5] then
                                                        Thing[5] = Thing[5] - 0.3
                                                        Thing[6] = Thing[6] - 0.3
                                                end
                                                if hit ~= nil then
                                                        Thing[3] = 0
                                                        if Thing[8] == 1 or Thing[8] == 3 then
                                                                Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", HumanoidRootPart, 0, "", 1)
                                                        else
                                                                if Thing[8] == 2 then
                                                                        Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", HumanoidRootPart, 0, "", 1)
                                                                        if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
                                                                                ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new(.2,.2,.2))
                                                                                ref.Anchored = true
                                                                                ref.CFrame = CFrame.new(pos)
                                                                                CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
                                                                                game:GetService("Debris"):AddItem(ref, 0.2)
                                                                                Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
                                                                                Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
                                                                                MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
                                                                        end
                                                                end
                                                        end
                                                        ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new(.2,.2,.2))
                                                        ref.Anchored = true
                                                        ref.CFrame = CFrame.new(pos)
                                                        Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
                                                        game:GetService("Debris"):AddItem(ref, 1)
                                                end
                                                if Thing[3] <= 0 then
                                                        table.remove(Effects, e)
                                                end
                                        end
					
                                      do
                                                do
                                                        if Thing[2] == "FireWave" then
                                                                if Thing[3] <= Thing[4] then
                                                                        Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
                                                                        Thing[3] = Thing[3] + 1
                                                                        Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
                                                                else
                                                                        Part.Parent = nil
                                                                        table.remove(Effects, e)
                                                                end
                                                        end
                                                        if Thing[2] ~= "Shoot" and Thing[2] ~= "Shoot2" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
                                                                if Thing[1].Transparency <= 1 then
                                                                        if Thing[2] == "Block1" then
                                                                                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                                                Mesh = Thing[7]
                                                                                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                        else
                                                                                if Thing[2] == "Block2" then
                                                                                        Thing[1].CFrame = Thing[1].CFrame
                                                                                        Mesh = Thing[7]
                                                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                else
                                                                                        if Thing[2] == "Fire" then
                                                                                                Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
                                                                                                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                        else
                                                                                                if Thing[2] == "Cylinder" then
                                                                                                        Mesh = Thing[7]
                                                                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                                else
                                                                                                        if Thing[2] == "Blood" then
                                                                                                                Mesh = Thing[7]
                                                                                                                Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
                                                                                                                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                                        else
                                                                                                                if Thing[2] == "Elec" then
                                                                                                                        Mesh = Thing[10]
                                                                                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                                                                                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                                                else
                                                                                                                        if Thing[2] == "Disappear" then
                                                                                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                                                                                        end
                                                                                                                end
                                                                                                        end
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                else
                                                                        Part.Parent = nil
                                                                        table.remove(Effects, e)
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end
