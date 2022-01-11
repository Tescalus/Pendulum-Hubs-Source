loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
local c = game:GetService("Players").LocalPlayer.Character["Cartoony Rainbow Rifle"].Handle
c.Anchored = false
local cRot = 3.55
game:GetService("RunService").RenderStepped:Connect(function(dt)
    cRot = cRot + 0*dt
    c.Anchored = true
    c.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0,-1,-.2) * CFrame.Angles(math.rad(-285), 359.7, -cRot)
    c.Velocity = Vector3.new(0,0,0)
    c.Anchored = false
end)
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
local hat = Align(char['Cartoony Rainbow Rifle'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-1,-0.5)*CFrame.Angles(math.rad(35),math.rad(70),60)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)
local plr = game.Players.LocalPlayer
warn("Netless Activated!")
plrgui = plr:findFirstChild'PlayerGui'
plrmouse = plr:GetMouse()
char = game.Workspace.non
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
anim = char:findFirstChild("Animate")

function scan(parent)
    local parts,last = {}
        for _,v in pairs(parent:GetChildren()) do
            if (v:IsA("BasePart")) then
            v.Anchored = true
                if (last) then
                    local w = Instance.new("Weld")
                    w.Name = ("%s_Weld"):format(v.Name)
                    w.Part0,w.Part1 = last,v
                    w.C0 = last.CFrame:inverse()
                    w.C1 = v.CFrame:inverse()
                    w.Parent = last
                end
                last = v
                table.insert(parts,v)
            end
            scan(v)
        end
    for _,v in pairs(parts) do
        v.Anchored = false
        v.Locked = true
        v.CanCollide = false
    end
end


local Particles = {

    AirRing = function(CF, Distance, Color, Opac, Size, Velocity)
            local StoredParticles = {};

            for Angle = 0, 360, 20 do
                local EffectDirection = new("Part", char);
                EffectDirection.Anchored = true;
                EffectDirection.CanCollide = false;
                EffectDirection.CFrame = CF
                 * CFrame.Angles(math.pi/2, 0, 0)
                 * CFrame.Angles(0, 0, math.rad(Angle)) 
                 * CFrame.new(0, Distance, 0);
                EffectDirection.Transparency = 1;
                local Smoke = new("Smoke", EffectDirection);
                Smoke.Color = Color3.new(Color.r/255, Color.g/255, Color.b/255) or Color3.new(1,1,1);
                Smoke.Opacity = Opac or 0.05;
                Smoke.Size = Size or 0;
                Smoke.RiseVelocity = Velocity or 2;
                table.insert(StoredParticles, Smoke);
                game:service'Debris':AddItem(EffectDirection, 10);
            end

            wait(.2);

            for Index,Value in next,StoredParticles do
                if Value:IsA'Smoke' then
                    Value.Enabled = false;
                end
            end
    end;

    BulletholeParticles = function(Part, hitPart)
        do --material splash
            local Particle = Instance.new("ParticleEmitter", Part);
            Particle.VelocitySpread = 30;
            Particle.LightEmission = 200;


            Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1, 0), NumberSequenceKeypoint.new(1, 0.25, 0)})
            Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b));
            Particle.Texture = "rbxassetid://272031379";
            Particle.Rotation = NumberRange.new(0,90);
            Particle.Rate = 25;
            Particle.Acceleration = Vector3.new(0, -100, 0)
            Particle.Speed = NumberRange.new(35);
            Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
            Particle.Lifetime = NumberRange.new(2);
            coroutine.wrap(function()
                wait(.2)
                Particle.Enabled = false;
                Particle.Rate = 0;
                wait(2)
                Particle:Destroy()
            end)()
        end

        do --smoke effect
            local Particle = Instance.new("ParticleEmitter", Part);
            Particle.VelocitySpread = 10;


            Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0), NumberSequenceKeypoint.new(1, 0.9, 0)})

            Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b));
            Particle.Texture = "rbxassetid://272031958"; -- replace id
            Particle.Rotation = NumberRange.new(0,90);
            Particle.Rate = 10;
            Particle.Acceleration = Vector3.new(0, -1, 0)
            Particle.Speed = NumberRange.new(5);
            Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
            Particle.Lifetime = NumberRange.new(1);
            coroutine.wrap(function()
                wait(.2)
                Particle.Enabled = false;
                Particle.Rate = 0;
                wait(1)
                Particle:Destroy()
            end)()
        end
        end;
};

-- 1 - M16A4
Gun = Instance.new("Model")
Gun.Name = "M16A4"
Gun.Parent = char

-- 2 - Carry Handle
obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(15.242094, 14.0666552, -9.96266651)) * CFrame.Angles(0, 1.5707963705063, 0)
obj2.FormFactor = 'Custom'
obj2.LeftSurface = 10
obj2.TopSurface = 10
obj2.RightSurface = 10
obj2.Material = 'SmoothPlastic'
obj2.Size = Vector3.new(1, 1, 1)
obj2.FrontSurface = 10
obj2.BottomSurface = 10
obj2.BackSurface = 10
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Black")
obj2.Name = "Carry Handle"
obj2.Parent = Gun

-- 3 - Mesh
obj3 = Instance.new("SpecialMesh")
obj3.MeshType = Enum.MeshType.Wedge
obj3.Scale = Vector3.new(0.15384616, 0.115384638, 0.0615384579)
obj3.Parent = obj2

-- 4 - Front Sight/Gas Tube
obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(18.0110912, 13.8776541, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj4.FormFactor = 'Custom'
obj4.LeftSurface = 10
obj4.TopSurface = 10
obj4.RightSurface = 10
obj4.Material = 'SmoothPlastic'
obj4.Size = Vector3.new(1, 1, 1)
obj4.FrontSurface = 10
obj4.BottomSurface = 10
obj4.BackSurface = 10
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Black")
obj4.Name = "Front Sight/Gas Tube"
obj4.Parent = Gun

-- 5 - Mesh
obj5 = Instance.new("SpecialMesh")
obj5.MeshType = Enum.MeshType.Brick
obj5.Scale = Vector3.new(0.0384615399, 0.0999999642, 0.0769230798)
obj5.Parent = obj4

-- 6 - Handguard
obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(16.1770878, 13.6856527, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)
obj6.FormFactor = 'Custom'
obj6.LeftSurface = 10
obj6.TopSurface = 10
obj6.RightSurface = 10
obj6.Material = 'SmoothPlastic'
obj6.Size = Vector3.new(1, 1, 1)
obj6.FrontSurface = 10
obj6.BottomSurface = 10
obj6.BackSurface = 10
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Black")
obj6.Name = "Handguard"
obj6.Parent = Gun

-- 7 - Mesh
obj7 = Instance.new("SpecialMesh")
obj7.MeshType = Enum.MeshType.Wedge
obj7.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)
obj7.Parent = obj6

-- 8 - Clip
obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(16.0835896, 13.1984005, -9.95719624)) * CFrame.Angles(3.141592502594, 9.2685222625732e-006, 3.0630528926849)
obj8.FormFactor = 'Custom'
obj8.LeftSurface = 10
obj8.TopSurface = 10
obj8.RightSurface = 10
obj8.Material = 'SmoothPlastic'
obj8.Size = Vector3.new(1, 1, 1)
obj8.FrontSurface = 10
obj8.BottomSurface = 10
obj8.BackSurface = 10
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Black")
obj8.Name = "Clip"
obj8.Parent = Gun

-- 9 - Mesh
obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(0.0666666627, 0.19047612, 0.104761899)
obj9.Parent = obj8

-- 10 - Stock
obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(14.4500961, 13.5206528, -9.96666431)) * CFrame.Angles(1.5707963705063, -1.5698828697205, -1.5707963705063)
obj10.FormFactor = 'Custom'
obj10.LeftSurface = 10
obj10.TopSurface = 10
obj10.RightSurface = 10
obj10.Material = 'SmoothPlastic'
obj10.Size = Vector3.new(1, 1, 1)
obj10.FrontSurface = 10
obj10.BottomSurface = 10
obj10.BackSurface = 10
obj10.Anchored = true
obj10.BrickColor = BrickColor.new("Black")
obj10.Name = "Stock"
obj10.Parent = Gun

-- 11 - Mesh
obj11 = Instance.new("SpecialMesh")
obj11.MeshType = Enum.MeshType.Wedge
obj11.Scale = Vector3.new(0.15384616, 0.307692319, 1.30769253)
obj11.Parent = obj10

-- 12 - Part
obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(15.3380947, 13.8276529, -9.8736639)) * CFrame.Angles(1.5707963705063, 0, 1.2217304706573)
obj12.FormFactor = 'Custom'
obj12.LeftSurface = 10
obj12.TopSurface = 10
obj12.RightSurface = 10
obj12.Material = 'SmoothPlastic'
obj12.Size = Vector3.new(1, 1, 1)
obj12.FrontSurface = 10
obj12.BottomSurface = 10
obj12.BackSurface = 10
obj12.Anchored = true
obj12.BrickColor = BrickColor.new("Black")
obj12.Parent = Gun

-- 13 - Mesh
obj13 = Instance.new("CylinderMesh")
obj13.Scale = Vector3.new(0.115384638, 0.315384656, 0.115384638)
obj13.Parent = obj12

-- 14 - Barrel
obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(19.1420918, 13.8086538, -9.90466404)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj14.FormFactor = 'Custom'
obj14.LeftSurface = 10
obj14.TopSurface = 10
obj14.RightSurface = 10
obj14.Material = 'SmoothPlastic'
obj14.Size = Vector3.new(1, 1, 1)
obj14.FrontSurface = 10
obj14.BottomSurface = 10
obj14.BackSurface = 10
obj14.Anchored = true
obj14.BrickColor = BrickColor.new("Black")
obj14.Name = "Barrel"
obj14.Parent = Gun

-- 15 - Mesh
obj15 = Instance.new("SpecialMesh")
obj15.MeshType = Enum.MeshType.Brick
obj15.Scale = Vector3.new(0.107692324, 0.0384615399, 0.00769230863)
obj15.Parent = obj14

-- 16 - Barrel
obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(19.1420918, 13.7516527, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, -3.141592502594)
obj16.FormFactor = 'Custom'
obj16.LeftSurface = 10
obj16.TopSurface = 10
obj16.RightSurface = 10
obj16.Material = 'SmoothPlastic'
obj16.Size = Vector3.new(1, 1, 1)
obj16.FrontSurface = 10
obj16.BottomSurface = 10
obj16.BackSurface = 10
obj16.Anchored = true
obj16.BrickColor = BrickColor.new("Black")
obj16.Name = "Barrel"
obj16.Parent = Gun

-- 17 - Mesh
obj17 = Instance.new("SpecialMesh")
obj17.MeshType = Enum.MeshType.Brick
obj17.Scale = Vector3.new(0.107692324, 0.0384615399, 0.00769230863)
obj17.Parent = obj16

-- 18 - Barrel
obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(19.1420918, 13.8086538, -10.0196638)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj18.FormFactor = 'Custom'
obj18.LeftSurface = 10
obj18.TopSurface = 10
obj18.RightSurface = 10
obj18.Material = 'SmoothPlastic'
obj18.Size = Vector3.new(1, 1, 1)
obj18.FrontSurface = 10
obj18.BottomSurface = 10
obj18.BackSurface = 10
obj18.Anchored = true
obj18.BrickColor = BrickColor.new("Black")
obj18.Name = "Barrel"
obj18.Parent = Gun

-- 19 - Mesh
obj19 = Instance.new("SpecialMesh")
obj19.MeshType = Enum.MeshType.Brick
obj19.Scale = Vector3.new(0.107692324, 0.0384615399, 0.00769230863)
obj19.Parent = obj18

-- 20 - FireHole
obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(19.2540894, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj20.FormFactor = 'Custom'
obj20.LeftSurface = 10
obj20.TopSurface = 10
obj20.RightSurface = 10
obj20.Material = 'SmoothPlastic'
obj20.Size = Vector3.new(1, 1, 1)
obj20.FrontSurface = 10
obj20.BottomSurface = 10
obj20.BackSurface = 10
obj20.Anchored = true
obj20.BrickColor = BrickColor.new("Really black")
obj20.Name = "FireHole"
obj20.Parent = Gun

-- 21 - Mesh
obj21 = Instance.new("CylinderMesh")
obj21.Scale = Vector3.new(0.115384601, 0.00769230817, 0.15384616)
obj21.Parent = obj20

-- 22 - Barrel
obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(19.2270889, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj22.FormFactor = 'Custom'
obj22.LeftSurface = 10
obj22.TopSurface = 10
obj22.RightSurface = 10
obj22.Material = 'SmoothPlastic'
obj22.Size = Vector3.new(1, 1, 1)
obj22.FrontSurface = 10
obj22.BottomSurface = 10
obj22.BackSurface = 10
obj22.Anchored = true
obj22.BrickColor = BrickColor.new("Black")
obj22.Name = "Barrel"
obj22.Parent = Gun

-- 23 - Mesh
obj23 = Instance.new("CylinderMesh")
obj23.Scale = Vector3.new(0.134615377, 0.0615385175, 0.15384616)
obj23.Parent = obj22

-- 24 - Barrel
obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(18.6800919, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj24.FormFactor = 'Custom'
obj24.LeftSurface = 10
obj24.TopSurface = 10
obj24.RightSurface = 10
obj24.Material = 'SmoothPlastic'
obj24.Size = Vector3.new(1, 1, 1)
obj24.FrontSurface = 10
obj24.BottomSurface = 10
obj24.BackSurface = 10
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Black")
obj24.Name = "Barrel"
obj24.Parent = Gun

-- 25 - Mesh
obj25 = Instance.new("CylinderMesh")
obj25.Scale = Vector3.new(0.103846155, 0.692307711, 0.15384616)
obj25.Parent = obj24

-- 26 - Barrel
obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(19.1420918, 13.8666525, -9.95866489)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)
obj26.FormFactor = 'Custom'
obj26.LeftSurface = 10
obj26.TopSurface = 10
obj26.RightSurface = 10
obj26.Material = 'SmoothPlastic'
obj26.Size = Vector3.new(1, 1, 1)
obj26.FrontSurface = 10
obj26.BottomSurface = 10
obj26.BackSurface = 10
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Black")
obj26.Name = "Barrel"
obj26.Parent = Gun

-- 27 - Mesh
obj27 = Instance.new("SpecialMesh")
obj27.MeshType = Enum.MeshType.Brick
obj27.Scale = Vector3.new(0.107692324, 0.0384615399, 0.00769230863)
obj27.Parent = obj26

-- 28 - Barrel
obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(19.0570927, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj28.FormFactor = 'Custom'
obj28.LeftSurface = 10
obj28.TopSurface = 10
obj28.RightSurface = 10
obj28.Material = 'SmoothPlastic'
obj28.Size = Vector3.new(1, 1, 1)
obj28.FrontSurface = 10
obj28.BottomSurface = 10
obj28.BackSurface = 10
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Black")
obj28.Name = "Barrel"
obj28.Parent = Gun

-- 29 - Mesh
obj29 = Instance.new("CylinderMesh")
obj29.Scale = Vector3.new(0.134615377, 0.0615385175, 0.15384616)
obj29.Parent = obj28

-- 30 - Barrel
obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(18.1420918, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj30.FormFactor = 'Custom'
obj30.LeftSurface = 10
obj30.TopSurface = 10
obj30.RightSurface = 10
obj30.Material = 'SmoothPlastic'
obj30.Size = Vector3.new(1, 1, 1)
obj30.FrontSurface = 10
obj30.BottomSurface = 10
obj30.BackSurface = 10
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Black")
obj30.Name = "Barrel"
obj30.Parent = Gun

-- 31 - Mesh
obj31 = Instance.new("CylinderMesh")
obj31.Scale = Vector3.new(0.115384638, 0.384615391, 0.15384616)
obj31.Parent = obj30

-- 32 - Carry Handle
obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(15.3070965, 14.1356554, -9.96266651)) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
obj32.FormFactor = 'Custom'
obj32.LeftSurface = 10
obj32.TopSurface = 10
obj32.RightSurface = 10
obj32.Material = 'SmoothPlastic'
obj32.Size = Vector3.new(1, 1, 1)
obj32.FrontSurface = 10
obj32.BottomSurface = 10
obj32.BackSurface = 10
obj32.Anchored = true
obj32.BrickColor = BrickColor.new("Black")
obj32.Name = "Carry Handle"
obj32.Parent = Gun

-- 33 - Mesh
obj33 = Instance.new("SpecialMesh")
obj33.MeshType = Enum.MeshType.Brick
obj33.Scale = Vector3.new(0.0153846173, 0.0307692327, 0.0384615399)
obj33.Parent = obj32

-- 34 - Carry Handle
obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(15.3380947, 14.1516542, -9.89666271)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj34.FormFactor = 'Custom'
obj34.LeftSurface = 10
obj34.TopSurface = 10
obj34.RightSurface = 10
obj34.Material = 'SmoothPlastic'
obj34.Size = Vector3.new(1, 1, 1)
obj34.FrontSurface = 10
obj34.BottomSurface = 10
obj34.BackSurface = 10
obj34.Anchored = true
obj34.BrickColor = BrickColor.new("Dark stone grey")
obj34.Name = "Carry Handle"
obj34.Parent = Gun

-- 35 - Mesh
obj35 = Instance.new("SpecialMesh")
obj35.MeshType = Enum.MeshType.Brick
obj35.Scale = Vector3.new(0.100000016, 0.0538461618, 0.0230769273)
obj35.Parent = obj34

-- 36 - Carry Handle
obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(15.3300991, 14.1356554, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, 3.141592502594)
obj36.FormFactor = 'Custom'
obj36.LeftSurface = 10
obj36.TopSurface = 10
obj36.RightSurface = 10
obj36.Material = 'SmoothPlastic'
obj36.Size = Vector3.new(1, 1, 1)
obj36.FrontSurface = 10
obj36.BottomSurface = 10
obj36.BackSurface = 10
obj36.Anchored = true
obj36.BrickColor = BrickColor.new("Dark stone grey")
obj36.Name = "Carry Handle"
obj36.Parent = Gun

-- 37 - Mesh
obj37 = Instance.new("CylinderMesh")
obj37.Scale = Vector3.new(0.0230769273, 0.107692324, 0.0230769273)
obj37.Parent = obj36

-- 38 - Carry Handle
obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(15.3690929, 14.0666552, -9.90466404)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj38.FormFactor = 'Custom'
obj38.LeftSurface = 10
obj38.TopSurface = 10
obj38.RightSurface = 10
obj38.Material = 'SmoothPlastic'
obj38.Size = Vector3.new(1, 1, 1)
obj38.FrontSurface = 10
obj38.BottomSurface = 10
obj38.BackSurface = 10
obj38.Anchored = true
obj38.BrickColor = BrickColor.new("Black")
obj38.Name = "Carry Handle"
obj38.Parent = Gun

-- 39 - Mesh
obj39 = Instance.new("CylinderMesh")
obj39.Scale = Vector3.new(0.115384638, 0.0384615399, 0.115384638)
obj39.Parent = obj38

-- 40 - Carry Handle
obj40 = Instance.new("Part")
obj40.CFrame = CFrame.new(Vector3.new(15.1770926, 14.0016546, -9.96266651)) * CFrame.Angles(0, 1.5707963705063, 0)
obj40.FormFactor = 'Custom'
obj40.LeftSurface = 10
obj40.TopSurface = 10
obj40.RightSurface = 10
obj40.Material = 'SmoothPlastic'
obj40.Size = Vector3.new(1, 1, 1)
obj40.FrontSurface = 10
obj40.BottomSurface = 10
obj40.BackSurface = 10
obj40.Anchored = true
obj40.BrickColor = BrickColor.new("Black")
obj40.Name = "Carry Handle"
obj40.Parent = Gun

-- 41 - Mesh
obj41 = Instance.new("SpecialMesh")
obj41.MeshType = Enum.MeshType.Wedge
obj41.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0230769273)
obj41.Parent = obj40

-- 42 - Carry Handle
obj42 = Instance.new("Part")
obj42.CFrame = CFrame.new(Vector3.new(15.7730904, 14.1516542, -10.0276651)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj42.FormFactor = 'Custom'
obj42.LeftSurface = 10
obj42.TopSurface = 10
obj42.RightSurface = 10
obj42.Material = 'SmoothPlastic'
obj42.Size = Vector3.new(1, 1, 1)
obj42.FrontSurface = 10
obj42.BottomSurface = 10
obj42.BackSurface = 10
obj42.Anchored = true
obj42.BrickColor = BrickColor.new("Black")
obj42.Name = "Carry Handle"
obj42.Parent = Gun

-- 43 - Mesh
obj43 = Instance.new("SpecialMesh")
obj43.MeshType = Enum.MeshType.Wedge
obj43.Scale = Vector3.new(0.0230769273, 0.0538461618, 0.769231021)
obj43.Parent = obj42

-- 44 - Carry Handle
obj44 = Instance.new("Part")
obj44.CFrame = CFrame.new(Vector3.new(15.5230913, 14.0206537, -9.96266651)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj44.FormFactor = 'Custom'
obj44.LeftSurface = 10
obj44.TopSurface = 10
obj44.RightSurface = 10
obj44.Material = 'SmoothPlastic'
obj44.Size = Vector3.new(1, 1, 1)
obj44.FrontSurface = 10
obj44.BottomSurface = 10
obj44.BackSurface = 10
obj44.Anchored = true
obj44.BrickColor = BrickColor.new("Black")
obj44.Name = "Carry Handle"
obj44.Parent = Gun

-- 45 - Mesh
obj45 = Instance.new("SpecialMesh")
obj45.MeshType = Enum.MeshType.Wedge
obj45.Scale = Vector3.new(0.15384616, 0.0230769273, 0.0384615399)
obj45.Parent = obj44

-- 46 - Carry Handle
obj46 = Instance.new("Part")
obj46.CFrame = CFrame.new(Vector3.new(16.1770878, 14.0476542, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj46.FormFactor = 'Custom'
obj46.LeftSurface = 10
obj46.TopSurface = 10
obj46.RightSurface = 10
obj46.Material = 'SmoothPlastic'
obj46.Size = Vector3.new(1, 1, 1)
obj46.FrontSurface = 10
obj46.BottomSurface = 10
obj46.BackSurface = 10
obj46.Anchored = true
obj46.BrickColor = BrickColor.new("Black")
obj46.Name = "Carry Handle"
obj46.Parent = Gun

-- 47 - Mesh
obj47 = Instance.new("SpecialMesh")
obj47.MeshType = Enum.MeshType.Brick
obj47.Scale = Vector3.new(0.0384615399, 0.0769230798, 0.15384616)
obj47.Parent = obj46

-- 48 - Carry Handle
obj48 = Instance.new("Part")
obj48.CFrame = CFrame.new(Vector3.new(15.3000927, 14.1856546, -9.89666271)) * CFrame.Angles(0, 1.5707963705063, 0)
obj48.FormFactor = 'Custom'
obj48.LeftSurface = 10
obj48.TopSurface = 10
obj48.RightSurface = 10
obj48.Material = 'SmoothPlastic'
obj48.Size = Vector3.new(1, 1, 1)
obj48.FrontSurface = 10
obj48.BottomSurface = 10
obj48.BackSurface = 10
obj48.Anchored = true
obj48.BrickColor = BrickColor.new("Dark stone grey")
obj48.Name = "Carry Handle"
obj48.Parent = Gun

-- 49 - Mesh
obj49 = Instance.new("SpecialMesh")
obj49.MeshType = Enum.MeshType.Wedge
obj49.Scale = Vector3.new(0.0230769273, 0.0153846173, 0.0230769273)
obj49.Parent = obj48

-- 50 - Carry Handle
obj50 = Instance.new("Part")
obj50.CFrame = CFrame.new(Vector3.new(16.1380939, 14.0746546, -9.96266651)) * CFrame.Angles(-3.141592502594, 1.5707963705063, 0)
obj50.FormFactor = 'Custom'
obj50.LeftSurface = 10
obj50.TopSurface = 10
obj50.RightSurface = 10
obj50.Material = 'SmoothPlastic'
obj50.Size = Vector3.new(1, 1, 1)
obj50.FrontSurface = 10
obj50.BottomSurface = 10
obj50.BackSurface = 10
obj50.Anchored = true
obj50.BrickColor = BrickColor.new("Black")
obj50.Name = "Carry Handle"
obj50.Parent = Gun

-- 51 - Mesh
obj51 = Instance.new("SpecialMesh")
obj51.MeshType = Enum.MeshType.Wedge
obj51.Scale = Vector3.new(0.15384616, 0.0230769273, 0.0384615399)
obj51.Parent = obj50

-- 52 - Carry Handle
obj52 = Instance.new("Part")
obj52.CFrame = CFrame.new(Vector3.new(15.3270931, 14.1516542, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj52.FormFactor = 'Custom'
obj52.LeftSurface = 10
obj52.TopSurface = 10
obj52.RightSurface = 10
obj52.Material = 'SmoothPlastic'
obj52.Size = Vector3.new(1, 1, 1)
obj52.FrontSurface = 10
obj52.BottomSurface = 10
obj52.BackSurface = 10
obj52.Anchored = true
obj52.BrickColor = BrickColor.new("Black")
obj52.Name = "Carry Handle"
obj52.Parent = Gun

-- 53 - Mesh
obj53 = Instance.new("SpecialMesh")
obj53.MeshType = Enum.MeshType.Brick
obj53.Scale = Vector3.new(0.0153846163, 0.0307692327, 0.0307692327)
obj53.Parent = obj52

-- 54 - Carry Handle
obj54 = Instance.new("Part")
obj54.CFrame = CFrame.new(Vector3.new(15.7730904, 14.1516542, -9.89666271)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj54.FormFactor = 'Custom'
obj54.LeftSurface = 10
obj54.TopSurface = 10
obj54.RightSurface = 10
obj54.Material = 'SmoothPlastic'
obj54.Size = Vector3.new(1, 1, 1)
obj54.FrontSurface = 10
obj54.BottomSurface = 10
obj54.BackSurface = 10
obj54.Anchored = true
obj54.BrickColor = BrickColor.new("Black")
obj54.Name = "Carry Handle"
obj54.Parent = Gun

-- 55 - Mesh
obj55 = Instance.new("SpecialMesh")
obj55.MeshType = Enum.MeshType.Wedge
obj55.Scale = Vector3.new(0.0230769273, 0.0538461618, 0.769231021)
obj55.Parent = obj54

-- 56 - Carry Handle
obj56 = Instance.new("Part")
obj56.CFrame = CFrame.new(Vector3.new(15.3270931, 14.1706553, -9.96266651)) * CFrame.Angles(0, 1.5707963705063, 0)
obj56.FormFactor = 'Custom'
obj56.LeftSurface = 10
obj56.TopSurface = 10
obj56.RightSurface = 10
obj56.Material = 'SmoothPlastic'
obj56.Size = Vector3.new(1, 1, 1)
obj56.FrontSurface = 10
obj56.BottomSurface = 10
obj56.BackSurface = 10
obj56.Anchored = true
obj56.BrickColor = BrickColor.new("Black")
obj56.Name = "Carry Handle"
obj56.Parent = Gun

-- 57 - Mesh
obj57 = Instance.new("SpecialMesh")
obj57.MeshType = Enum.MeshType.FileMesh
obj57.Scale = Vector3.new(0.0307692327, 0.0307692327, 0.0923077092)
obj57.MeshId = "http://www.roblox.com/asset/?id=3270017"
obj57.Parent = obj56

-- 58 - Carry Handle
obj58 = Instance.new("Part")
obj58.CFrame = CFrame.new(Vector3.new(15.3500957, 14.1856546, -10.0276651)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj58.FormFactor = 'Custom'
obj58.LeftSurface = 10
obj58.TopSurface = 10
obj58.RightSurface = 10
obj58.Material = 'SmoothPlastic'
obj58.Size = Vector3.new(1, 1, 1)
obj58.FrontSurface = 10
obj58.BottomSurface = 10
obj58.BackSurface = 10
obj58.Anchored = true
obj58.BrickColor = BrickColor.new("Dark stone grey")
obj58.Name = "Carry Handle"
obj58.Parent = Gun

-- 59 - Mesh
obj59 = Instance.new("SpecialMesh")
obj59.MeshType = Enum.MeshType.Wedge
obj59.Scale = Vector3.new(0.0230769273, 0.0153846173, 0.0769230872)
obj59.Parent = obj58

-- 60 - Carry Handle
obj60 = Instance.new("Part")
obj60.CFrame = CFrame.new(Vector3.new(15.2840939, 14.1356554, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
obj60.FormFactor = 'Custom'
obj60.LeftSurface = 10
obj60.TopSurface = 10
obj60.RightSurface = 10
obj60.Material = 'SmoothPlastic'
obj60.Size = Vector3.new(1, 1, 1)
obj60.FrontSurface = 10
obj60.BottomSurface = 10
obj60.BackSurface = 10
obj60.Anchored = true
obj60.BrickColor = BrickColor.new("Black")
obj60.Name = "Carry Handle"
obj60.Parent = Gun

-- 61 - Mesh
obj61 = Instance.new("SpecialMesh")
obj61.MeshType = Enum.MeshType.FileMesh
obj61.Scale = Vector3.new(0.0307692327, 0.0307692327, 0.0923077092)
obj61.MeshId = "http://www.roblox.com/asset/?id=3270017"
obj61.Parent = obj60

-- 62 - Carry Handle
obj62 = Instance.new("Part")
obj62.CFrame = CFrame.new(Vector3.new(15.3000927, 14.1856546, -10.0276651)) * CFrame.Angles(0, 1.5707963705063, 0)
obj62.FormFactor = 'Custom'
obj62.LeftSurface = 10
obj62.TopSurface = 10
obj62.RightSurface = 10
obj62.Material = 'SmoothPlastic'
obj62.Size = Vector3.new(1, 1, 1)
obj62.FrontSurface = 10
obj62.BottomSurface = 10
obj62.BackSurface = 10
obj62.Anchored = true
obj62.BrickColor = BrickColor.new("Dark stone grey")
obj62.Name = "Carry Handle"
obj62.Parent = Gun

-- 63 - Mesh
obj63 = Instance.new("SpecialMesh")
obj63.MeshType = Enum.MeshType.Wedge
obj63.Scale = Vector3.new(0.0230769273, 0.0153846173, 0.0230769273)
obj63.Parent = obj62

-- 64 - Carry Handle
obj64 = Instance.new("Part")
obj64.CFrame = CFrame.new(Vector3.new(15.8300962, 14.1046534, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj64.FormFactor = 'Custom'
obj64.LeftSurface = 10
obj64.TopSurface = 10
obj64.RightSurface = 10
obj64.Material = 'SmoothPlastic'
obj64.Size = Vector3.new(1, 1, 1)
obj64.FrontSurface = 10
obj64.BottomSurface = 10
obj64.BackSurface = 10
obj64.Anchored = true
obj64.BrickColor = BrickColor.new("Black")
obj64.Name = "Carry Handle"
obj64.Parent = Gun

-- 65 - Mesh
obj65 = Instance.new("SpecialMesh")
obj65.MeshType = Enum.MeshType.Brick
obj65.Scale = Vector3.new(0.653846204, 0.0384615399, 0.15384616)
obj65.Parent = obj64

-- 66 - Carry Handle
obj66 = Instance.new("Part")
obj66.CFrame = CFrame.new(Vector3.new(16.1770878, 14.1046534, -9.96266651)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj66.FormFactor = 'Custom'
obj66.LeftSurface = 10
obj66.TopSurface = 10
obj66.RightSurface = 10
obj66.Material = 'SmoothPlastic'
obj66.Size = Vector3.new(1, 1, 1)
obj66.FrontSurface = 10
obj66.BottomSurface = 10
obj66.BackSurface = 10
obj66.Anchored = true
obj66.BrickColor = BrickColor.new("Black")
obj66.Name = "Carry Handle"
obj66.Parent = Gun

-- 67 - Mesh
obj67 = Instance.new("SpecialMesh")
obj67.MeshType = Enum.MeshType.Wedge
obj67.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)
obj67.Parent = obj66

-- 68 - Carry Handle
obj68 = Instance.new("Part")
obj68.CFrame = CFrame.new(Vector3.new(15.3690929, 14.0666552, -10.0196638)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj68.FormFactor = 'Custom'
obj68.LeftSurface = 10
obj68.TopSurface = 10
obj68.RightSurface = 10
obj68.Material = 'SmoothPlastic'
obj68.Size = Vector3.new(1, 1, 1)
obj68.FrontSurface = 10
obj68.BottomSurface = 10
obj68.BackSurface = 10
obj68.Anchored = true
obj68.BrickColor = BrickColor.new("Black")
obj68.Name = "Carry Handle"
obj68.Parent = Gun

-- 69 - Mesh
obj69 = Instance.new("CylinderMesh")
obj69.Scale = Vector3.new(0.115384638, 0.0384615399, 0.115384638)
obj69.Parent = obj68

-- 70 - Carry Handle
obj70 = Instance.new("Part")
obj70.CFrame = CFrame.new(Vector3.new(15.5230913, 14.0746546, -9.96266651)) * CFrame.Angles(3.141592502594, -1.5707963705063, 0)
obj70.FormFactor = 'Custom'
obj70.LeftSurface = 10
obj70.TopSurface = 10
obj70.RightSurface = 10
obj70.Material = 'SmoothPlastic'
obj70.Size = Vector3.new(1, 1, 1)
obj70.FrontSurface = 10
obj70.BottomSurface = 10
obj70.BackSurface = 10
obj70.Anchored = true
obj70.BrickColor = BrickColor.new("Black")
obj70.Name = "Carry Handle"
obj70.Parent = Gun

-- 71 - Mesh
obj71 = Instance.new("SpecialMesh")
obj71.MeshType = Enum.MeshType.Wedge
obj71.Scale = Vector3.new(0.15384616, 0.0230769273, 0.0384615399)
obj71.Parent = obj70

-- 72 - Carry Handle
obj72 = Instance.new("Part")
obj72.CFrame = CFrame.new(Vector3.new(16.1380939, 13.9976549, -10.0586653)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)
obj72.FormFactor = 'Custom'
obj72.LeftSurface = 10
obj72.TopSurface = 10
obj72.RightSurface = 10
obj72.Material = 'SmoothPlastic'
obj72.Size = Vector3.new(1, 1, 1)
obj72.FrontSurface = 10
obj72.BottomSurface = 10
obj72.BackSurface = 10
obj72.Anchored = true
obj72.BrickColor = BrickColor.new("Dark stone grey")
obj72.Name = "Carry Handle"
obj72.Parent = Gun

-- 73 - Mesh
obj73 = Instance.new("CylinderMesh")
obj73.Scale = Vector3.new(0.115384638, 0.0384615399, 0.100000016)
obj73.Parent = obj72

-- 74 - Carry Handle
obj74 = Instance.new("Part")
obj74.CFrame = CFrame.new(Vector3.new(15.3380947, 14.1516542, -10.0276651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj74.FormFactor = 'Custom'
obj74.LeftSurface = 10
obj74.TopSurface = 10
obj74.RightSurface = 10
obj74.Material = 'SmoothPlastic'
obj74.Size = Vector3.new(1, 1, 1)
obj74.FrontSurface = 10
obj74.BottomSurface = 10
obj74.BackSurface = 10
obj74.Anchored = true
obj74.BrickColor = BrickColor.new("Dark stone grey")
obj74.Name = "Carry Handle"
obj74.Parent = Gun

-- 75 - Mesh
obj75 = Instance.new("SpecialMesh")
obj75.MeshType = Enum.MeshType.Brick
obj75.Scale = Vector3.new(0.100000016, 0.0538461618, 0.0230769273)
obj75.Parent = obj74

-- 76 - Carry Handle
obj76 = Instance.new("Part")
obj76.CFrame = CFrame.new(Vector3.new(15.3880978, 14.0666552, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj76.FormFactor = 'Custom'
obj76.LeftSurface = 10
obj76.TopSurface = 10
obj76.RightSurface = 10
obj76.Material = 'SmoothPlastic'
obj76.Size = Vector3.new(1, 1, 1)
obj76.FrontSurface = 10
obj76.BottomSurface = 10
obj76.BackSurface = 10
obj76.Anchored = true
obj76.BrickColor = BrickColor.new("Black")
obj76.Name = "Carry Handle"
obj76.Parent = Gun

-- 77 - Mesh
obj77 = Instance.new("SpecialMesh")
obj77.MeshType = Enum.MeshType.Brick
obj77.Scale = Vector3.new(0.230769247, 0.115384638, 0.15384616)
obj77.Parent = obj76

-- 78 - Carry Handle
obj78 = Instance.new("Part")
obj78.CFrame = CFrame.new(Vector3.new(15.3340969, 14.1396551, -9.86666393)) * CFrame.Angles(-1.5707963705063, 0, 3.141592502594)
obj78.FormFactor = 'Custom'
obj78.LeftSurface = 10
obj78.TopSurface = 10
obj78.RightSurface = 10
obj78.Material = 'SmoothPlastic'
obj78.Size = Vector3.new(1, 1, 1)
obj78.FrontSurface = 10
obj78.BottomSurface = 10
obj78.BackSurface = 10
obj78.Anchored = true
obj78.BrickColor = BrickColor.new("Black")
obj78.Name = "Carry Handle"
obj78.Parent = Gun

-- 79 - Mesh
obj79 = Instance.new("CylinderMesh")
obj79.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.0769230798)
obj79.Parent = obj78

-- 80 - Carry Handle
obj80 = Instance.new("Part")
obj80.CFrame = CFrame.new(Vector3.new(15.6730919, 14.0016546, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj80.FormFactor = 'Custom'
obj80.LeftSurface = 10
obj80.TopSurface = 10
obj80.RightSurface = 10
obj80.Material = 'SmoothPlastic'
obj80.Size = Vector3.new(1, 1, 1)
obj80.FrontSurface = 10
obj80.BottomSurface = 10
obj80.BackSurface = 10
obj80.Anchored = true
obj80.BrickColor = BrickColor.new("Black")
obj80.Name = "Carry Handle"
obj80.Parent = Gun

-- 81 - Mesh
obj81 = Instance.new("SpecialMesh")
obj81.MeshType = Enum.MeshType.Brick
obj81.Scale = Vector3.new(0.969230831, 0.0384615399, 0.15384616)
obj81.Parent = obj80

-- 82 - Carry Handle
obj82 = Instance.new("Part")
obj82.CFrame = CFrame.new(Vector3.new(15.3500957, 14.1856546, -9.89666271)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj82.FormFactor = 'Custom'
obj82.LeftSurface = 10
obj82.TopSurface = 10
obj82.RightSurface = 10
obj82.Material = 'SmoothPlastic'
obj82.Size = Vector3.new(1, 1, 1)
obj82.FrontSurface = 10
obj82.BottomSurface = 10
obj82.BackSurface = 10
obj82.Anchored = true
obj82.BrickColor = BrickColor.new("Dark stone grey")
obj82.Name = "Carry Handle"
obj82.Parent = Gun

-- 83 - Mesh
obj83 = Instance.new("SpecialMesh")
obj83.MeshType = Enum.MeshType.Wedge
obj83.Scale = Vector3.new(0.0230769273, 0.0153846173, 0.0769230872)
obj83.Parent = obj82

-- 84 - Clip
obj84 = Instance.new("Part")
obj84.CFrame = CFrame.new(Vector3.new(15.9554167, 13.1883135, -9.95719814)) * CFrame.Angles(3.141592502594, 9.2685222625732e-006, 3.0630528926849)
obj84.FormFactor = 'Custom'
obj84.LeftSurface = 10
obj84.TopSurface = 10
obj84.RightSurface = 10
obj84.Material = 'SmoothPlastic'
obj84.Size = Vector3.new(1, 1, 1)
obj84.FrontSurface = 10
obj84.BottomSurface = 10
obj84.BackSurface = 10
obj84.Anchored = true
obj84.BrickColor = BrickColor.new("Black")
obj84.Name = "Clip"
obj84.Parent = Gun

-- 85 - Mesh
obj85 = Instance.new("BlockMesh")
obj85.Scale = Vector3.new(0.114285707, 0.19047612, 0.104761899)
obj85.Parent = obj84

-- 86 - Clip
obj86 = Instance.new("Part")
obj86.CFrame = CFrame.new(Vector3.new(16.1022205, 13.0409546, -9.95719624)) * CFrame.Angles(3.141592502594, 9.2089176177979e-006, 2.9845130443573)
obj86.FormFactor = 'Custom'
obj86.LeftSurface = 10
obj86.TopSurface = 10
obj86.RightSurface = 10
obj86.Material = 'SmoothPlastic'
obj86.Size = Vector3.new(1, 1, 1)
obj86.FrontSurface = 10
obj86.BottomSurface = 10
obj86.BackSurface = 10
obj86.Anchored = true
obj86.BrickColor = BrickColor.new("Black")
obj86.Name = "Clip"
obj86.Parent = Gun

-- 87 - Mesh
obj87 = Instance.new("BlockMesh")
obj87.Scale = Vector3.new(0.0666666627, 0.19047612, 0.104761899)
obj87.Parent = obj86

-- 88 - Clip
obj88 = Instance.new("Part")
obj88.CFrame = CFrame.new(Vector3.new(15.9752455, 13.0208406, -9.95719624)) * CFrame.Angles(3.141592502594, 9.2089176177979e-006, 2.9845130443573)
obj88.FormFactor = 'Custom'
obj88.LeftSurface = 10
obj88.TopSurface = 10
obj88.RightSurface = 10
obj88.Material = 'SmoothPlastic'
obj88.Size = Vector3.new(1, 1, 1)
obj88.FrontSurface = 10
obj88.BottomSurface = 10
obj88.BackSurface = 10
obj88.Anchored = true
obj88.BrickColor = BrickColor.new("Black")
obj88.Name = "Clip"
obj88.Parent = Gun

-- 89 - Mesh
obj89 = Instance.new("BlockMesh")
obj89.Scale = Vector3.new(0.114285707, 0.19047612, 0.104761899)
obj89.Parent = obj88

-- 90 - Clip
obj90 = Instance.new("Part")
obj90.CFrame = CFrame.new(Vector3.new(15.8670683, 13.0037107, -9.95719814)) * CFrame.Angles(3.141592502594, 9.2089176177979e-006, 2.9845130443573)
obj90.FormFactor = 'Custom'
obj90.LeftSurface = 10
obj90.TopSurface = 10
obj90.RightSurface = 10
obj90.Material = 'SmoothPlastic'
obj90.Size = Vector3.new(1, 1, 1)
obj90.FrontSurface = 10
obj90.BottomSurface = 10
obj90.BackSurface = 10
obj90.Anchored = true
obj90.BrickColor = BrickColor.new("Black")
obj90.Name = "Clip"
obj90.Parent = Gun

-- 91 - Mesh
obj91 = Instance.new("BlockMesh")
obj91.Scale = Vector3.new(0.066666618, 0.19047612, 0.104761899)
obj91.Parent = obj90

-- 92 - Clip
obj92 = Instance.new("Part")
obj92.CFrame = CFrame.new(Vector3.new(15.9221907, 13.1857014, -9.95719624)) * CFrame.Angles(3.141592502594, 9.2685222625732e-006, 3.0630528926849)
obj92.FormFactor = 'Custom'
obj92.LeftSurface = 10
obj92.TopSurface = 10
obj92.RightSurface = 10
obj92.Material = 'SmoothPlastic'
obj92.Size = Vector3.new(1, 1, 1)
obj92.FrontSurface = 10
obj92.BottomSurface = 10
obj92.BackSurface = 10
obj92.Anchored = true
obj92.BrickColor = BrickColor.new("Black")
obj92.Name = "Clip"
obj92.Parent = Gun

-- 93 - Mesh
obj93 = Instance.new("BlockMesh")
obj93.Scale = Vector3.new(0.27619043, 0.19047612, 0.0666666478)
obj93.Parent = obj92

-- 94 - Clip
obj94 = Instance.new("Part")
obj94.CFrame = CFrame.new(Vector3.new(15.8462324, 13.179719, -9.95719814)) * CFrame.Angles(3.141592502594, 9.2685222625732e-006, 3.0630528926849)
obj94.FormFactor = 'Custom'
obj94.LeftSurface = 10
obj94.TopSurface = 10
obj94.RightSurface = 10
obj94.Material = 'SmoothPlastic'
obj94.Size = Vector3.new(1, 1, 1)
obj94.FrontSurface = 10
obj94.BottomSurface = 10
obj94.BackSurface = 10
obj94.Anchored = true
obj94.BrickColor = BrickColor.new("Black")
obj94.Name = "Clip"
obj94.Parent = Gun

-- 95 - Mesh
obj95 = Instance.new("BlockMesh")
obj95.Scale = Vector3.new(0.066666618, 0.19047612, 0.104761899)
obj95.Parent = obj94

-- 96 - Clip
obj96 = Instance.new("Part")
obj96.CFrame = CFrame.new(Vector3.new(15.9154615, 13.4758568, -9.95719814)) * CFrame.Angles(3.141592502594, 9.3281269073486e-006, -3.141592502594)
obj96.FormFactor = 'Custom'
obj96.LeftSurface = 10
obj96.TopSurface = 10
obj96.RightSurface = 10
obj96.Material = 'SmoothPlastic'
obj96.Size = Vector3.new(1, 1, 1)
obj96.FrontSurface = 10
obj96.BottomSurface = 10
obj96.BackSurface = 10
obj96.Anchored = true
obj96.BrickColor = BrickColor.new("Black")
obj96.Name = "Clip"
obj96.Parent = Gun

-- 97 - Mesh
obj97 = Instance.new("BlockMesh")
obj97.Scale = Vector3.new(0.27619043, 0.428571343, 0.0666666478)
obj97.Parent = obj96

-- 98 - Clip
obj98 = Instance.new("Part")
obj98.CFrame = CFrame.new(Vector3.new(16.077364, 13.4758568, -9.95719624)) * CFrame.Angles(3.141592502594, 9.3281269073486e-006, -3.141592502594)
obj98.FormFactor = 'Custom'
obj98.LeftSurface = 10
obj98.TopSurface = 10
obj98.RightSurface = 10
obj98.Material = 'SmoothPlastic'
obj98.Size = Vector3.new(1, 1, 1)
obj98.FrontSurface = 10
obj98.BottomSurface = 10
obj98.BackSurface = 10
obj98.Anchored = true
obj98.BrickColor = BrickColor.new("Black")
obj98.Name = "Clip"
obj98.Parent = Gun

-- 99 - Mesh
obj99 = Instance.new("BlockMesh")
obj99.Scale = Vector3.new(0.0666666627, 0.428571343, 0.104761899)
obj99.Parent = obj98

-- 100 - Clip
obj100 = Instance.new("Part")
obj100.CFrame = CFrame.new(Vector3.new(15.9487944, 13.4758539, -9.95719624)) * CFrame.Angles(3.141592502594, 9.3281269073486e-006, -3.141592502594)
obj100.FormFactor = 'Custom'
obj100.LeftSurface = 10
obj100.TopSurface = 10
obj100.RightSurface = 10
obj100.Material = 'SmoothPlastic'
obj100.Size = Vector3.new(1, 1, 1)
obj100.FrontSurface = 10
obj100.BottomSurface = 10
obj100.BackSurface = 10
obj100.Anchored = true
obj100.BrickColor = BrickColor.new("Black")
obj100.Name = "Clip"
obj100.Parent = Gun

-- 101 - Mesh
obj101 = Instance.new("BlockMesh")
obj101.Scale = Vector3.new(0.114285707, 0.428571343, 0.104761899)
obj101.Parent = obj100

-- 102 - Clip
obj102 = Instance.new("Part")
obj102.CFrame = CFrame.new(Vector3.new(15.8392744, 13.4758511, -9.95719814)) * CFrame.Angles(3.141592502594, 9.3281269073486e-006, -3.141592502594)
obj102.FormFactor = 'Custom'
obj102.LeftSurface = 10
obj102.TopSurface = 10
obj102.RightSurface = 10
obj102.Material = 'SmoothPlastic'
obj102.Size = Vector3.new(1, 1, 1)
obj102.FrontSurface = 10
obj102.BottomSurface = 10
obj102.BackSurface = 10
obj102.Anchored = true
obj102.BrickColor = BrickColor.new("Black")
obj102.Name = "Clip"
obj102.Parent = Gun

-- 103 - Mesh
obj103 = Instance.new("BlockMesh")
obj103.Scale = Vector3.new(0.066666618, 0.428571343, 0.104761899)
obj103.Parent = obj102

-- 104 - Clip
obj104 = Instance.new("Part")
obj104.CFrame = CFrame.new(Vector3.new(15.942317, 13.0156317, -9.95719814)) * CFrame.Angles(3.141592502594, 9.2089176177979e-006, 2.9845130443573)
obj104.FormFactor = 'Custom'
obj104.LeftSurface = 10
obj104.TopSurface = 10
obj104.RightSurface = 10
obj104.Material = 'SmoothPlastic'
obj104.Size = Vector3.new(1, 1, 1)
obj104.FrontSurface = 10
obj104.BottomSurface = 10
obj104.BackSurface = 10
obj104.Anchored = true
obj104.BrickColor = BrickColor.new("Black")
obj104.Name = "Clip"
obj104.Parent = Gun

-- 105 - Mesh
obj105 = Instance.new("BlockMesh")
obj105.Scale = Vector3.new(0.27619043, 0.19047612, 0.0666666478)
obj105.Parent = obj104

-- 106 - Front Sight/Gas Tube
obj106 = Instance.new("Part")
obj106.CFrame = CFrame.new(Vector3.new(18.0110912, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj106.FormFactor = 'Custom'
obj106.LeftSurface = 10
obj106.TopSurface = 10
obj106.RightSurface = 10
obj106.Material = 'SmoothPlastic'
obj106.Size = Vector3.new(1, 1, 1)
obj106.FrontSurface = 10
obj106.BottomSurface = 10
obj106.BackSurface = 10
obj106.Anchored = true
obj106.BrickColor = BrickColor.new("Black")
obj106.Name = "Front Sight/Gas Tube"
obj106.Parent = Gun

-- 107 - Mesh
obj107 = Instance.new("CylinderMesh")
obj107.Scale = Vector3.new(0.134615377, 0.0384615399, 0.15384616)
obj107.Parent = obj106

-- 108 - Front Sight/Gas Tube
obj108 = Instance.new("Part")
obj108.CFrame = CFrame.new(Vector3.new(18.2000904, 14.1436548, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj108.FormFactor = 'Custom'
obj108.LeftSurface = 10
obj108.TopSurface = 10
obj108.RightSurface = 10
obj108.Material = 'SmoothPlastic'
obj108.Size = Vector3.new(1, 1, 1)
obj108.FrontSurface = 10
obj108.BottomSurface = 10
obj108.BackSurface = 10
obj108.Anchored = true
obj108.BrickColor = BrickColor.new("Black")
obj108.Name = "Front Sight/Gas Tube"
obj108.Parent = Gun

-- 109 - Mesh
obj109 = Instance.new("SpecialMesh")
obj109.MeshType = Enum.MeshType.Brick
obj109.Scale = Vector3.new(0.0846154168, 0.0615384318, 0.0769230798)
obj109.Parent = obj108

-- 110 - Front Sight/Gas Tube
obj110 = Instance.new("Part")
obj110.CFrame = CFrame.new(Vector3.new(18.2300873, 13.747653, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj110.FormFactor = 'Custom'
obj110.LeftSurface = 10
obj110.TopSurface = 10
obj110.RightSurface = 10
obj110.Material = 'SmoothPlastic'
obj110.Size = Vector3.new(1, 1, 1)
obj110.FrontSurface = 10
obj110.BottomSurface = 10
obj110.BackSurface = 10
obj110.Anchored = true
obj110.BrickColor = BrickColor.new("Black")
obj110.Name = "Front Sight/Gas Tube"
obj110.Parent = Gun

-- 111 - Mesh
obj111 = Instance.new("SpecialMesh")
obj111.MeshType = Enum.MeshType.Brick
obj111.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.0769230798)
obj111.Parent = obj110

-- 112 - Front Sight/Gas Tube
obj112 = Instance.new("Part")
obj112.CFrame = CFrame.new(Vector3.new(18.2340908, 14.0046549, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj112.FormFactor = 'Custom'
obj112.LeftSurface = 10
obj112.TopSurface = 10
obj112.RightSurface = 10
obj112.Material = 'SmoothPlastic'
obj112.Size = Vector3.new(1, 1, 1)
obj112.FrontSurface = 10
obj112.BottomSurface = 10
obj112.BackSurface = 10
obj112.Anchored = true
obj112.BrickColor = BrickColor.new("Black")
obj112.Name = "Front Sight/Gas Tube"
obj112.Parent = Gun

-- 113 - Mesh
obj113 = Instance.new("SpecialMesh")
obj113.MeshType = Enum.MeshType.Brick
obj113.Scale = Vector3.new(0.0307692327, 0.292307645, 0.0769230798)
obj113.Parent = obj112

-- 114 - Front Sight/Gas Tube
obj114 = Instance.new("Part")
obj114.CFrame = CFrame.new(Vector3.new(18.2690887, 13.7246542, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj114.FormFactor = 'Custom'
obj114.LeftSurface = 10
obj114.TopSurface = 10
obj114.RightSurface = 10
obj114.Material = 'SmoothPlastic'
obj114.Size = Vector3.new(1, 1, 1)
obj114.FrontSurface = 10
obj114.BottomSurface = 10
obj114.BackSurface = 10
obj114.Anchored = true
obj114.BrickColor = BrickColor.new("Black")
obj114.Name = "Front Sight/Gas Tube"
obj114.Parent = Gun

-- 115 - Mesh
obj115 = Instance.new("SpecialMesh")
obj115.MeshType = Enum.MeshType.Brick
obj115.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.0769230798)
obj115.Parent = obj114

-- 116 - Front Sight/Gas Tube
obj116 = Instance.new("Part")
obj116.CFrame = CFrame.new(Vector3.new(18.2000904, 14.1476545, -9.92766476)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)
obj116.FormFactor = 'Custom'
obj116.LeftSurface = 10
obj116.TopSurface = 10
obj116.RightSurface = 10
obj116.Material = 'SmoothPlastic'
obj116.Size = Vector3.new(1, 1, 1)
obj116.FrontSurface = 10
obj116.BottomSurface = 10
obj116.BackSurface = 10
obj116.Anchored = true
obj116.BrickColor = BrickColor.new("Black")
obj116.Name = "Front Sight/Gas Tube"
obj116.Parent = Gun

-- 117 - Mesh
obj117 = Instance.new("CylinderMesh")
obj117.Scale = Vector3.new(0.100000016, 0.00769230817, 0.115384638)
obj117.Parent = obj116

-- 118 - Front Sight/Gas Tube
obj118 = Instance.new("Part")
obj118.CFrame = CFrame.new(Vector3.new(18.2300873, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj118.FormFactor = 'Custom'
obj118.LeftSurface = 10
obj118.TopSurface = 10
obj118.RightSurface = 10
obj118.Material = 'SmoothPlastic'
obj118.Size = Vector3.new(1, 1, 1)
obj118.FrontSurface = 10
obj118.BottomSurface = 10
obj118.BackSurface = 10
obj118.Anchored = true
obj118.BrickColor = BrickColor.new("Black")
obj118.Name = "Front Sight/Gas Tube"
obj118.Parent = Gun

-- 119 - Mesh
obj119 = Instance.new("CylinderMesh")
obj119.Scale = Vector3.new(0.134615377, 0.0538461618, 0.15384616)
obj119.Parent = obj118

-- 120 - Front Sight/Gas Tube
obj120 = Instance.new("Part")
obj120.CFrame = CFrame.new(Vector3.new(18.2000904, 14.1476545, -9.996665)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)
obj120.FormFactor = 'Custom'
obj120.LeftSurface = 10
obj120.TopSurface = 10
obj120.RightSurface = 10
obj120.Material = 'SmoothPlastic'
obj120.Size = Vector3.new(1, 1, 1)
obj120.FrontSurface = 10
obj120.BottomSurface = 10
obj120.BackSurface = 10
obj120.Anchored = true
obj120.BrickColor = BrickColor.new("Black")
obj120.Name = "Front Sight/Gas Tube"
obj120.Parent = Gun

-- 121 - Mesh
obj121 = Instance.new("CylinderMesh")
obj121.Scale = Vector3.new(0.100000016, 0.00769230817, 0.115384638)
obj121.Parent = obj120

-- 122 - Front Sight/Gas Tube
obj122 = Instance.new("Part")
obj122.CFrame = CFrame.new(Vector3.new(18.2000904, 14.1856546, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj122.FormFactor = 'Custom'
obj122.LeftSurface = 10
obj122.TopSurface = 10
obj122.RightSurface = 10
obj122.Material = 'SmoothPlastic'
obj122.Size = Vector3.new(1, 1, 1)
obj122.FrontSurface = 10
obj122.BottomSurface = 10
obj122.BackSurface = 10
obj122.Anchored = true
obj122.BrickColor = BrickColor.new("Black")
obj122.Name = "Front Sight/Gas Tube"
obj122.Parent = Gun

-- 123 - Mesh
obj123 = Instance.new("SpecialMesh")
obj123.MeshType = Enum.MeshType.Brick
obj123.Scale = Vector3.new(0.00769230817, 0.0230769273, 0.00769230817)
obj123.Parent = obj122

-- 124 - Front Sight/Gas Tube
obj124 = Instance.new("Part")
obj124.CFrame = CFrame.new(Vector3.new(18.1230907, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 1.5707963705063)
obj124.FormFactor = 'Custom'
obj124.LeftSurface = 10
obj124.TopSurface = 10
obj124.RightSurface = 10
obj124.Material = 'SmoothPlastic'
obj124.Size = Vector3.new(1, 1, 1)
obj124.FrontSurface = 10
obj124.BottomSurface = 10
obj124.BackSurface = 10
obj124.Anchored = true
obj124.BrickColor = BrickColor.new("Black")
obj124.Name = "Front Sight/Gas Tube"
obj124.Parent = Gun

-- 125 - Mesh
obj125 = Instance.new("CylinderMesh")
obj125.Scale = Vector3.new(0.134615377, 0.0384615399, 0.15384616)
obj125.Parent = obj124

-- 126 - Front Sight/Gas Tube
obj126 = Instance.new("Part")
obj126.CFrame = CFrame.new(Vector3.new(18.1230907, 13.9016523, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj126.FormFactor = 'Custom'
obj126.LeftSurface = 10
obj126.TopSurface = 10
obj126.RightSurface = 10
obj126.Material = 'SmoothPlastic'
obj126.Size = Vector3.new(1, 1, 1)
obj126.FrontSurface = 10
obj126.BottomSurface = 10
obj126.BackSurface = 10
obj126.Anchored = true
obj126.BrickColor = BrickColor.new("Black")
obj126.Name = "Front Sight/Gas Tube"
obj126.Parent = Gun

-- 127 - Mesh
obj127 = Instance.new("SpecialMesh")
obj127.MeshType = Enum.MeshType.Brick
obj127.Scale = Vector3.new(0.192307696, 0.0307691991, 0.0769230798)
obj127.Parent = obj126

-- 128 - Front Sight/Gas Tube
obj128 = Instance.new("Part")
obj128.CFrame = CFrame.new(Vector3.new(18.0890884, 14.035655, -9.96266651)) * CFrame.Angles(3.141592502594, 3.4951305849518e-008, -2.5481803417206)
obj128.FormFactor = 'Custom'
obj128.LeftSurface = 10
obj128.TopSurface = 10
obj128.RightSurface = 10
obj128.Material = 'SmoothPlastic'
obj128.Size = Vector3.new(1, 1, 1)
obj128.FrontSurface = 10
obj128.BottomSurface = 10
obj128.BackSurface = 10
obj128.Anchored = true
obj128.BrickColor = BrickColor.new("Black")
obj128.Name = "Front Sight/Gas Tube"
obj128.Parent = Gun

-- 129 - Mesh
obj129 = Instance.new("SpecialMesh")
obj129.MeshType = Enum.MeshType.Brick
obj129.Scale = Vector3.new(0.0384615399, 0.299999893, 0.0769230798)
obj129.Parent = obj128

-- 130 - Front Sight/Gas Tube
obj130 = Instance.new("Part")
obj130.CFrame = CFrame.new(Vector3.new(18.2300873, 13.7126532, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj130.FormFactor = 'Custom'
obj130.LeftSurface = 10
obj130.TopSurface = 10
obj130.RightSurface = 10
obj130.Material = 'SmoothPlastic'
obj130.Size = Vector3.new(1, 1, 1)
obj130.FrontSurface = 10
obj130.BottomSurface = 10
obj130.BackSurface = 10
obj130.Anchored = true
obj130.BrickColor = BrickColor.new("Black")
obj130.Name = "Front Sight/Gas Tube"
obj130.Parent = Gun

-- 131 - Mesh
obj131 = Instance.new("SpecialMesh")
obj131.MeshType = Enum.MeshType.Brick
obj131.Scale = Vector3.new(0.0384615399, 0.0307692327, 0.0769230798)
obj131.Parent = obj130

-- 132 - Front Sight/Gas Tube
obj132 = Instance.new("Part")
obj132.CFrame = CFrame.new(Vector3.new(18.2000904, 14.0856543, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj132.FormFactor = 'Custom'
obj132.LeftSurface = 10
obj132.TopSurface = 10
obj132.RightSurface = 10
obj132.Material = 'SmoothPlastic'
obj132.Size = Vector3.new(1, 1, 1)
obj132.FrontSurface = 10
obj132.BottomSurface = 10
obj132.BackSurface = 10
obj132.Anchored = true
obj132.BrickColor = BrickColor.new("Black")
obj132.Name = "Front Sight/Gas Tube"
obj132.Parent = Gun

-- 133 - Mesh
obj133 = Instance.new("SpecialMesh")
obj133.MeshType = Enum.MeshType.Brick
obj133.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.0769230872)
obj133.Parent = obj132

-- 134 - Front Sight/Gas Tube
obj134 = Instance.new("Part")
obj134.CFrame = CFrame.new(Vector3.new(18.1230907, 13.8816538, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)
obj134.FormFactor = 'Custom'
obj134.LeftSurface = 10
obj134.TopSurface = 10
obj134.RightSurface = 10
obj134.Material = 'SmoothPlastic'
obj134.Size = Vector3.new(1, 1, 1)
obj134.FrontSurface = 10

obj134.BottomSurface = 10

obj134.BackSurface = 10

obj134.Anchored = true

obj134.BrickColor = BrickColor.new("Black")

obj134.Name = "Front Sight/Gas Tube"

obj134.Parent = Gun



-- 135 - Mesh

obj135 = Instance.new("SpecialMesh")

obj135.MeshType = Enum.MeshType.Brick

obj135.Scale = Vector3.new(0.0307692327, 0.061538469, 0.061538469)

obj135.Parent = obj134



-- 136 - Handguard

obj136 = Instance.new("Part")

obj136.CFrame = CFrame.new(Vector3.new(16.1770878, 13.8626528, -9.96266651)) * CFrame.Angles(3.141592502594, 0, -0)

obj136.FormFactor = 'Custom'

obj136.LeftSurface = 10

obj136.TopSurface = 10

obj136.RightSurface = 10

obj136.Material = 'SmoothPlastic'

obj136.Size = Vector3.new(1, 1, 1)

obj136.FrontSurface = 10

obj136.BottomSurface = 10

obj136.BackSurface = 10

obj136.Anchored = true

obj136.BrickColor = BrickColor.new("Black")

obj136.Name = "Handguard"

obj136.Parent = Gun



-- 137 - Mesh

obj137 = Instance.new("SpecialMesh")

obj137.MeshType = Enum.MeshType.Brick

obj137.Scale = Vector3.new(0.0384615399, 0.315384597, 0.15384616)

obj137.Parent = obj136



-- 138 - Handguard

obj138 = Instance.new("Part")

obj138.CFrame = CFrame.new(Vector3.new(17.9190941, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj138.FormFactor = 'Custom'

obj138.LeftSurface = 10

obj138.TopSurface = 10

obj138.RightSurface = 10

obj138.Material = 'SmoothPlastic'

obj138.Size = Vector3.new(1, 1, 1)

obj138.FrontSurface = 10

obj138.BottomSurface = 10

obj138.BackSurface = 10

obj138.Anchored = true

obj138.BrickColor = BrickColor.new("Black")

obj138.Name = "Handguard"

obj138.Parent = Gun



-- 139 - Mesh

obj139 = Instance.new("CylinderMesh")

obj139.Scale = Vector3.new(0.215384603, 0.0615384653, 0.346153855)

obj139.Parent = obj138



-- 140 - Handguard

obj140 = Instance.new("Part")

obj140.CFrame = CFrame.new(Vector3.new(17.5230885, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj140.FormFactor = 'Custom'

obj140.LeftSurface = 10

obj140.TopSurface = 10

obj140.RightSurface = 10

obj140.Material = 'SmoothPlastic'

obj140.Size = Vector3.new(1, 1, 1)

obj140.FrontSurface = 10

obj140.BottomSurface = 10

obj140.BackSurface = 10

obj140.Anchored = true

obj140.BrickColor = BrickColor.new("Black")

obj140.Name = "Handguard"

obj140.Parent = Gun



-- 141 - Mesh

obj141 = Instance.new("CylinderMesh")

obj141.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj141.Parent = obj140



-- 142 - Handguard

obj142 = Instance.new("Part")

obj142.CFrame = CFrame.new(Vector3.new(16.7380924, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj142.FormFactor = 'Custom'

obj142.LeftSurface = 10

obj142.TopSurface = 10

obj142.RightSurface = 10

obj142.Material = 'SmoothPlastic'

obj142.Size = Vector3.new(1, 1, 1)

obj142.FrontSurface = 10

obj142.BottomSurface = 10

obj142.BackSurface = 10

obj142.Anchored = true

obj142.BrickColor = BrickColor.new("Black")

obj142.Name = "Handguard"

obj142.Parent = Gun



-- 143 - Mesh

obj143 = Instance.new("CylinderMesh")

obj143.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj143.Parent = obj142



-- 144 - Handguard

obj144 = Instance.new("Part")

obj144.CFrame = CFrame.new(Vector3.new(16.2300854, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj144.FormFactor = 'Custom'

obj144.LeftSurface = 10

obj144.TopSurface = 10

obj144.RightSurface = 10

obj144.Material = 'SmoothPlastic'

obj144.Size = Vector3.new(1, 1, 1)

obj144.FrontSurface = 10

obj144.BottomSurface = 10

obj144.BackSurface = 10

obj144.Anchored = true

obj144.BrickColor = BrickColor.new("Black")

obj144.Name = "Handguard"

obj144.Parent = Gun



-- 145 - Mesh

obj145 = Instance.new("CylinderMesh")

obj145.Scale = Vector3.new(0.307692319, 0.0230769273, 0.346153855)

obj145.Parent = obj144



-- 146 - Handguard

obj146 = Instance.new("Part")

obj146.CFrame = CFrame.new(Vector3.new(17.2610912, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj146.FormFactor = 'Custom'

obj146.LeftSurface = 10

obj146.TopSurface = 10

obj146.RightSurface = 10

obj146.Material = 'SmoothPlastic'

obj146.Size = Vector3.new(1, 1, 1)

obj146.FrontSurface = 10

obj146.BottomSurface = 10

obj146.BackSurface = 10

obj146.Anchored = true

obj146.BrickColor = BrickColor.new("Black")

obj146.Name = "Handguard"

obj146.Parent = Gun



-- 147 - Mesh

obj147 = Instance.new("CylinderMesh")

obj147.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj147.Parent = obj146



-- 148 - Handguard

obj148 = Instance.new("Part")

obj148.CFrame = CFrame.new(Vector3.new(16.1690922, 13.7016535, -9.89266491)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj148.FormFactor = 'Custom'

obj148.LeftSurface = 10

obj148.TopSurface = 10

obj148.RightSurface = 10

obj148.Material = 'SmoothPlastic'

obj148.Size = Vector3.new(1, 1, 1)

obj148.FrontSurface = 10

obj148.BottomSurface = 10

obj148.BackSurface = 10

obj148.Anchored = true

obj148.BrickColor = BrickColor.new("Black")

obj148.Name = "Handguard"

obj148.Parent = Gun



-- 149 - Mesh

obj149 = Instance.new("SpecialMesh")

obj149.MeshType = Enum.MeshType.Sphere

obj149.Scale = Vector3.new(0.0769230798, 0.0769230798, 0.0769230798)

obj149.Parent = obj148



-- 150 - Handguard

obj150 = Instance.new("Part")

obj150.CFrame = CFrame.new(Vector3.new(16.477087, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj150.FormFactor = 'Custom'

obj150.LeftSurface = 10

obj150.TopSurface = 10

obj150.RightSurface = 10

obj150.Material = 'SmoothPlastic'

obj150.Size = Vector3.new(1, 1, 1)

obj150.FrontSurface = 10

obj150.BottomSurface = 10

obj150.BackSurface = 10

obj150.Anchored = true

obj150.BrickColor = BrickColor.new("Black")

obj150.Name = "Handguard"

obj150.Parent = Gun



-- 151 - Mesh

obj151 = Instance.new("CylinderMesh")

obj151.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj151.Parent = obj150



-- 152 - Handguard

obj152 = Instance.new("Part")

obj152.CFrame = CFrame.new(Vector3.new(16.1690922, 13.8276529, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj152.FormFactor = 'Custom'

obj152.LeftSurface = 10

obj152.TopSurface = 10

obj152.RightSurface = 10

obj152.Material = 'SmoothPlastic'

obj152.Size = Vector3.new(1, 1, 1)

obj152.FrontSurface = 10

obj152.BottomSurface = 10

obj152.BackSurface = 10

obj152.Anchored = true

obj152.BrickColor = BrickColor.new("Black")

obj152.Name = "Handguard"

obj152.Parent = Gun



-- 153 - Mesh

obj153 = Instance.new("CylinderMesh")

obj153.Scale = Vector3.new(0.230769247, 0.0538461618, 0.192307696)

obj153.Parent = obj152



-- 154 - Handguard

obj154 = Instance.new("Part")

obj154.CFrame = CFrame.new(Vector3.new(17.7880917, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj154.FormFactor = 'Custom'

obj154.LeftSurface = 10

obj154.TopSurface = 10

obj154.RightSurface = 10

obj154.Material = 'SmoothPlastic'

obj154.Size = Vector3.new(1, 1, 1)

obj154.FrontSurface = 10

obj154.BottomSurface = 10

obj154.BackSurface = 10

obj154.Anchored = true

obj154.BrickColor = BrickColor.new("Black")

obj154.Name = "Handguard"

obj154.Parent = Gun



-- 155 - Mesh

obj155 = Instance.new("CylinderMesh")

obj155.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj155.Parent = obj154



-- 156 - Handguard

obj156 = Instance.new("Part")

obj156.CFrame = CFrame.new(Vector3.new(17.3920918, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj156.FormFactor = 'Custom'

obj156.LeftSurface = 10

obj156.TopSurface = 10

obj156.RightSurface = 10

obj156.Material = 'SmoothPlastic'

obj156.Size = Vector3.new(1, 1, 1)

obj156.FrontSurface = 10

obj156.BottomSurface = 10

obj156.BackSurface = 10

obj156.Anchored = true

obj156.BrickColor = BrickColor.new("Black")

obj156.Name = "Handguard"

obj156.Parent = Gun



-- 157 - Mesh

obj157 = Instance.new("CylinderMesh")

obj157.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj157.Parent = obj156



-- 158 - Handguard

obj158 = Instance.new("Part")

obj158.CFrame = CFrame.new(Vector3.new(17.1300907, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj158.FormFactor = 'Custom'

obj158.LeftSurface = 10

obj158.TopSurface = 10

obj158.RightSurface = 10

obj158.Material = 'SmoothPlastic'

obj158.Size = Vector3.new(1, 1, 1)

obj158.FrontSurface = 10

obj158.BottomSurface = 10

obj158.BackSurface = 10

obj158.Anchored = true

obj158.BrickColor = BrickColor.new("Black")

obj158.Name = "Handguard"

obj158.Parent = Gun



-- 159 - Mesh

obj159 = Instance.new("CylinderMesh")

obj159.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj159.Parent = obj158



-- 160 - Handguard

obj160 = Instance.new("Part")

obj160.CFrame = CFrame.new(Vector3.new(17.0880909, 13.8126535, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj160.FormFactor = 'Custom'

obj160.LeftSurface = 10

obj160.TopSurface = 10

obj160.RightSurface = 10

obj160.Material = 'SmoothPlastic'

obj160.Size = Vector3.new(2, 1, 1)

obj160.FrontSurface = 10

obj160.BottomSurface = 10

obj160.BackSurface = 10

obj160.Anchored = true

obj160.BrickColor = BrickColor.new("Black")

obj160.Name = "Handguard"

obj160.Parent = Gun



-- 161 - Mesh

obj161 = Instance.new("SpecialMesh")

obj161.MeshType = Enum.MeshType.Brick

obj161.Scale = Vector3.new(0.799999893, 0.353846163, 0.0769230798)

obj161.Parent = obj160



-- 162 - Handguard

obj162 = Instance.new("Part")

obj162.CFrame = CFrame.new(Vector3.new(16.2770939, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj162.FormFactor = 'Custom'

obj162.LeftSurface = 10

obj162.TopSurface = 10

obj162.RightSurface = 10

obj162.Material = 'SmoothPlastic'

obj162.Size = Vector3.new(1, 1, 1)

obj162.FrontSurface = 10

obj162.BottomSurface = 10

obj162.BackSurface = 10

obj162.Anchored = true

obj162.BrickColor = BrickColor.new("Black")

obj162.Name = "Handguard"

obj162.Parent = Gun



-- 163 - Mesh

obj163 = Instance.new("CylinderMesh")

obj163.Scale = Vector3.new(0.246153861, 0.0230769273, 0.346153855)

obj163.Parent = obj162



-- 164 - Handguard

obj164 = Instance.new("Part")

obj164.CFrame = CFrame.new(Vector3.new(16.6070881, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj164.FormFactor = 'Custom'

obj164.LeftSurface = 10

obj164.TopSurface = 10

obj164.RightSurface = 10

obj164.Material = 'SmoothPlastic'

obj164.Size = Vector3.new(1, 1, 1)

obj164.FrontSurface = 10

obj164.BottomSurface = 10

obj164.BackSurface = 10

obj164.Anchored = true

obj164.BrickColor = BrickColor.new("Black")

obj164.Name = "Handguard"

obj164.Parent = Gun



-- 165 - Mesh

obj165 = Instance.new("CylinderMesh")

obj165.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj165.Parent = obj164



-- 166 - Handguard

obj166 = Instance.new("Part")

obj166.CFrame = CFrame.new(Vector3.new(17.6530933, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj166.FormFactor = 'Custom'

obj166.LeftSurface = 10

obj166.TopSurface = 10

obj166.RightSurface = 10

obj166.Material = 'SmoothPlastic'

obj166.Size = Vector3.new(1, 1, 1)

obj166.FrontSurface = 10

obj166.BottomSurface = 10

obj166.BackSurface = 10

obj166.Anchored = true

obj166.BrickColor = BrickColor.new("Black")

obj166.Name = "Handguard"

obj166.Parent = Gun



-- 167 - Mesh

obj167 = Instance.new("CylinderMesh")

obj167.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj167.Parent = obj166



-- 168 - Handguard

obj168 = Instance.new("Part")

obj168.CFrame = CFrame.new(Vector3.new(16.3460941, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj168.FormFactor = 'Custom'

obj168.LeftSurface = 10

obj168.TopSurface = 10

obj168.RightSurface = 10

obj168.Material = 'SmoothPlastic'

obj168.Size = Vector3.new(1, 1, 1)

obj168.FrontSurface = 10

obj168.BottomSurface = 10

obj168.BackSurface = 10

obj168.Anchored = true

obj168.BrickColor = BrickColor.new("Black")

obj168.Name = "Handguard"

obj168.Parent = Gun



-- 169 - Mesh

obj169 = Instance.new("CylinderMesh")

obj169.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj169.Parent = obj168



-- 170 - PointTo

obj170 = Instance.new("Part")

obj170.CFrame = CFrame.new(Vector3.new(17.0880909, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj170.FormFactor = 'Custom'

obj170.LeftSurface = 10

obj170.TopSurface = 10

obj170.RightSurface = 10

obj170.Material = 'SmoothPlastic'

obj170.Size = Vector3.new(1, 2, 1)

obj170.FrontSurface = 10

obj170.BottomSurface = 10

obj170.BackSurface = 10

obj170.Anchored = true

obj170.BrickColor = BrickColor.new("Black")

obj170.Name = "PointTo"

obj170.Parent = Gun



-- 171 - Mesh

obj171 = Instance.new("CylinderMesh")

obj171.Scale = Vector3.new(0.346153915, 0.799999893, 0.369230747)

obj171.Parent = obj170



-- 172 - Handguard

obj172 = Instance.new("Part")

obj172.CFrame = CFrame.new(Vector3.new(16.2070904, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj172.FormFactor = 'Custom'

obj172.LeftSurface = 10

obj172.TopSurface = 10

obj172.RightSurface = 10

obj172.Material = 'SmoothPlastic'

obj172.Size = Vector3.new(1, 1, 1)

obj172.FrontSurface = 10

obj172.BottomSurface = 10

obj172.BackSurface = 10

obj172.Anchored = true

obj172.BrickColor = BrickColor.new("Black")

obj172.Name = "Handguard"

obj172.Parent = Gun



-- 173 - Mesh

obj173 = Instance.new("CylinderMesh")

obj173.Scale = Vector3.new(0.27692309, 0.0230769273, 0.269230783)

obj173.Parent = obj172



-- 174 - Handguard

obj174 = Instance.new("Part")

obj174.CFrame = CFrame.new(Vector3.new(16.253088, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj174.FormFactor = 'Custom'

obj174.LeftSurface = 10

obj174.TopSurface = 10

obj174.RightSurface = 10

obj174.Material = 'SmoothPlastic'

obj174.Size = Vector3.new(1, 1, 1)

obj174.FrontSurface = 10

obj174.BottomSurface = 10

obj174.BackSurface = 10

obj174.Anchored = true

obj174.BrickColor = BrickColor.new("Black")

obj174.Name = "Handguard"

obj174.Parent = Gun



-- 175 - Mesh

obj175 = Instance.new("CylinderMesh")

obj175.Scale = Vector3.new(0.27692309, 0.0230769273, 0.346153855)

obj175.Parent = obj174



-- 176 - Handguard

obj176 = Instance.new("Part")

obj176.CFrame = CFrame.new(Vector3.new(17.0000935, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj176.FormFactor = 'Custom'

obj176.LeftSurface = 10

obj176.TopSurface = 10

obj176.RightSurface = 10

obj176.Material = 'SmoothPlastic'

obj176.Size = Vector3.new(1, 1, 1)

obj176.FrontSurface = 10

obj176.BottomSurface = 10

obj176.BackSurface = 10

obj176.Anchored = true

obj176.BrickColor = BrickColor.new("Black")

obj176.Name = "Handguard"

obj176.Parent = Gun



-- 177 - Mesh

obj177 = Instance.new("CylinderMesh")

obj177.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj177.Parent = obj176



-- 178 - Handguard

obj178 = Instance.new("Part")

obj178.CFrame = CFrame.new(Vector3.new(16.8690853, 13.8086538, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj178.FormFactor = 'Custom'

obj178.LeftSurface = 10

obj178.TopSurface = 10

obj178.RightSurface = 10

obj178.Material = 'SmoothPlastic'

obj178.Size = Vector3.new(1, 1, 1)

obj178.FrontSurface = 10

obj178.BottomSurface = 10

obj178.BackSurface = 10

obj178.Anchored = true

obj178.BrickColor = BrickColor.new("Black")

obj178.Name = "Handguard"

obj178.Parent = Gun



-- 179 - Mesh

obj179 = Instance.new("CylinderMesh")

obj179.Scale = Vector3.new(0.384615391, 0.0230769515, 0.353846163)

obj179.Parent = obj178



-- 180 - Handguard

obj180 = Instance.new("Part")

obj180.CFrame = CFrame.new(Vector3.new(17.0880909, 13.8086538, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj180.FormFactor = 'Custom'

obj180.LeftSurface = 10

obj180.TopSurface = 10

obj180.RightSurface = 10

obj180.Material = 'SmoothPlastic'

obj180.Size = Vector3.new(2, 1, 1)

obj180.FrontSurface = 10

obj180.BottomSurface = 10

obj180.BackSurface = 10

obj180.Anchored = true

obj180.BrickColor = BrickColor.new("Black")

obj180.Name = "Handguard"

obj180.Parent = Gun



-- 181 - Mesh

obj181 = Instance.new("SpecialMesh")

obj181.MeshType = Enum.MeshType.Brick

obj181.Scale = Vector3.new(0.800000072, 0.353846163, 0.0769230798)

obj181.Parent = obj180



-- 182 - Part

obj182 = Instance.new("Part")

obj182.CFrame = CFrame.new(Vector3.new(15.7000923, 13.5936537, -9.96266651)) * CFrame.Angles(-3.141592502594, 1.5707963705063, 0)

obj182.FormFactor = 'Custom'

obj182.LeftSurface = 10

obj182.TopSurface = 10

obj182.RightSurface = 10

obj182.Material = 'SmoothPlastic'

obj182.Size = Vector3.new(1, 1, 1)

obj182.FrontSurface = 10

obj182.BottomSurface = 10

obj182.BackSurface = 10

obj182.Anchored = true

obj182.BrickColor = BrickColor.new("Black")

obj182.Parent = Gun



-- 183 - Mesh

obj183 = Instance.new("SpecialMesh")

obj183.MeshType = Enum.MeshType.Wedge

obj183.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)

obj183.Parent = obj182



-- 184 - Grip

obj184 = Instance.new("Part")

obj184.CFrame = CFrame.new(Vector3.new(15.2210979, 13.0296526, -9.96266651)) * CFrame.Angles(1.5707961320877, -0.5146958231926, -3.141592502594)

obj184.FormFactor = 'Custom'

obj184.LeftSurface = 10

obj184.TopSurface = 10

obj184.RightSurface = 10

obj184.Material = 'SmoothPlastic'

obj184.Size = Vector3.new(1, 1, 1)

obj184.FrontSurface = 10

obj184.BottomSurface = 10

obj184.BackSurface = 10

obj184.Anchored = true

obj184.BrickColor = BrickColor.new("Black")

obj184.Name = "Grip"

obj184.Parent = Gun



-- 185 - Mesh

obj185 = Instance.new("CylinderMesh")

obj185.Scale = Vector3.new(0.0384615399, 0.138461545, 0.0384615399)

obj185.Parent = obj184



-- 186 - A1

obj186 = Instance.new("Part")

obj186.CFrame = CFrame.new(Vector3.new(15.9290953, 13.8306532, -9.94667149)) * CFrame.Angles(1.5099580252809e-007, -2.2799733224977e-014, 1.570796251297)

obj186.FormFactor = 'Custom'

obj186.LeftSurface = 10

obj186.TopSurface = 10

obj186.RightSurface = 10

obj186.Material = 'SmoothPlastic'

obj186.Size = Vector3.new(1, 1, 1)

obj186.FrontSurface = 10

obj186.BottomSurface = 10

obj186.BackSurface = 10

obj186.Anchored = true

obj186.BrickColor = BrickColor.new("Dark stone grey")

obj186.Name = "A1"

obj186.Parent = Gun



-- 187 - Mesh

obj187 = Instance.new("CylinderMesh")

obj187.Scale = Vector3.new(0.134999976, 0.423000127, 0.200000018)

obj187.Parent = obj186



-- 188 - Part

obj188 = Instance.new("Part")

obj188.CFrame = CFrame.new(Vector3.new(15.9380903, 13.4856529, -9.96266651)) * CFrame.Angles(3.141592502594, -1.5707963705063, 0)

obj188.FormFactor = 'Custom'

obj188.LeftSurface = 10

obj188.TopSurface = 10

obj188.RightSurface = 10

obj188.Material = 'SmoothPlastic'

obj188.Size = Vector3.new(1, 1, 1)

obj188.FrontSurface = 10

obj188.BottomSurface = 10

obj188.BackSurface = 10

obj188.Anchored = true

obj188.BrickColor = BrickColor.new("Black")

obj188.Parent = Gun



-- 189 - Mesh

obj189 = Instance.new("SpecialMesh")

obj189.MeshType = Enum.MeshType.Wedge

obj189.Scale = Vector3.new(0.15384616, 0.0692307726, 0.438461393)

obj189.Parent = obj188



-- 190 - Part

obj190 = Instance.new("Part")

obj190.CFrame = CFrame.new(Vector3.new(15.9000959, 13.6476536, -10.0426626)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj190.FormFactor = 'Custom'

obj190.LeftSurface = 10

obj190.TopSurface = 10

obj190.RightSurface = 10

obj190.Material = 'SmoothPlastic'

obj190.Size = Vector3.new(1, 1, 1)

obj190.FrontSurface = 10

obj190.BottomSurface = 10

obj190.BackSurface = 10

obj190.Anchored = true

obj190.BrickColor = BrickColor.new("Dark stone grey")

obj190.Parent = Gun



-- 191 - Mesh

obj191 = Instance.new("CylinderMesh")

obj191.Scale = Vector3.new(0.0538461618, 0.00769230817, 0.0538461618)

obj191.Parent = obj190



-- 192 - Part

obj192 = Instance.new("Part")

obj192.CFrame = CFrame.new(Vector3.new(15.7300911, 13.608654, -9.93166256)) * CFrame.Angles(-1.5707963705063, 0, 3.141592502594)

obj192.FormFactor = 'Custom'

obj192.LeftSurface = 10

obj192.TopSurface = 10

obj192.RightSurface = 10

obj192.Material = 'SmoothPlastic'

obj192.Size = Vector3.new(1, 1, 1)

obj192.FrontSurface = 10

obj192.BottomSurface = 10

obj192.BackSurface = 10

obj192.Anchored = true

obj192.BrickColor = BrickColor.new("Dark stone grey")

obj192.Parent = Gun



-- 193 - Mesh

obj193 = Instance.new("CylinderMesh")

obj193.Scale = Vector3.new(0.0769230798, 0.107692324, 0.0384615399)

obj193.Parent = obj192



-- 194 - Part

obj194 = Instance.new("Part")

obj194.CFrame = CFrame.new(Vector3.new(15.8030958, 13.740653, -9.85966587)) * CFrame.Angles(2.6179935932159, 0, 3.141592502594)

obj194.FormFactor = 'Custom'

obj194.LeftSurface = 10

obj194.TopSurface = 10

obj194.RightSurface = 10

obj194.Material = 'SmoothPlastic'

obj194.Size = Vector3.new(1, 1, 1)

obj194.FrontSurface = 10

obj194.BottomSurface = 10

obj194.BackSurface = 10

obj194.Anchored = true

obj194.BrickColor = BrickColor.new("Dark stone grey")

obj194.Parent = Gun



-- 195 - Mesh

obj195 = Instance.new("SpecialMesh")

obj195.MeshType = Enum.MeshType.Brick

obj195.Scale = Vector3.new(0.092307739, 0.0923077092, 0.00769230817)

obj195.Parent = obj194



-- 196 - Part

obj196 = Instance.new("Part")

obj196.CFrame = CFrame.new(Vector3.new(15.1420965, 13.6936531, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 3.141592502594)

obj196.FormFactor = 'Custom'

obj196.LeftSurface = 10

obj196.TopSurface = 10

obj196.RightSurface = 10

obj196.Material = 'SmoothPlastic'

obj196.Size = Vector3.new(1, 1, 1)

obj196.FrontSurface = 10

obj196.BottomSurface = 10

obj196.BackSurface = 10

obj196.Anchored = true

obj196.BrickColor = BrickColor.new("Black")

obj196.Parent = Gun



-- 197 - Mesh

obj197 = Instance.new("SpecialMesh")

obj197.MeshType = Enum.MeshType.Brick

obj197.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.161538467)

obj197.Parent = obj196



-- 198 - Part

obj198 = Instance.new("Part")

obj198.CFrame = CFrame.new(Vector3.new(15.5860949, 13.4936533, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, -1.5707963705063)

obj198.FormFactor = 'Custom'

obj198.LeftSurface = 10

obj198.TopSurface = 10

obj198.RightSurface = 10

obj198.Material = 'SmoothPlastic'

obj198.Size = Vector3.new(1, 1, 1)

obj198.FrontSurface = 10

obj198.BottomSurface = 10

obj198.BackSurface = 10

obj198.Anchored = true

obj198.BrickColor = BrickColor.new("Dark stone grey")

obj198.Parent = Gun



-- 199 - Mesh

obj199 = Instance.new("SpecialMesh")

obj199.MeshType = Enum.MeshType.Wedge

obj199.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.00769231468)

obj199.Parent = obj198



-- 200 - Part

obj200 = Instance.new("Part")

obj200.CFrame = CFrame.new(Vector3.new(15.8530912, 13.5206528, -9.89666271)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj200.FormFactor = 'Custom'

obj200.LeftSurface = 10

obj200.TopSurface = 10

obj200.RightSurface = 10

obj200.Material = 'SmoothPlastic'

obj200.Size = Vector3.new(1, 1, 1)

obj200.FrontSurface = 10

obj200.BottomSurface = 10

obj200.BackSurface = 10

obj200.Anchored = true

obj200.BrickColor = BrickColor.new("Black")

obj200.Parent = Gun



-- 201 - Mesh

obj201 = Instance.new("SpecialMesh")

obj201.MeshType = Enum.MeshType.Sphere

obj201.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.0384615399)

obj201.Parent = obj200



-- 202 - Part

obj202 = Instance.new("Part")

obj202.CFrame = CFrame.new(Vector3.new(15.5710955, 13.5246534, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, -1.5707963705063)

obj202.FormFactor = 'Custom'

obj202.LeftSurface = 10

obj202.TopSurface = 10

obj202.RightSurface = 10

obj202.Material = 'SmoothPlastic'

obj202.Size = Vector3.new(1, 1, 1)

obj202.FrontSurface = 10

obj202.BottomSurface = 10

obj202.BackSurface = 10

obj202.Anchored = true

obj202.BrickColor = BrickColor.new("Dark stone grey")

obj202.Parent = Gun



-- 203 - Mesh

obj203 = Instance.new("SpecialMesh")

obj203.MeshType = Enum.MeshType.Wedge

obj203.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.0230769292)

obj203.Parent = obj202



-- 204 - Part

obj204 = Instance.new("Part")

obj204.CFrame = CFrame.new(Vector3.new(15.5590944, 13.5706539, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj204.FormFactor = 'Custom'

obj204.LeftSurface = 10

obj204.TopSurface = 10

obj204.RightSurface = 10

obj204.Material = 'SmoothPlastic'

obj204.Size = Vector3.new(1, 1, 1)

obj204.FrontSurface = 10

obj204.BottomSurface = 10

obj204.BackSurface = 10

obj204.Anchored = true

obj204.BrickColor = BrickColor.new("Dark stone grey")

obj204.Parent = Gun



-- 205 - Mesh

obj205 = Instance.new("SpecialMesh")

obj205.MeshType = Enum.MeshType.Brick

obj205.Scale = Vector3.new(0.0153846163, 0.0846154019, 0.0384615399)

obj205.Parent = obj204



-- 206 - Part

obj206 = Instance.new("Part")

obj206.CFrame = CFrame.new(Vector3.new(15.8150892, 13.6476536, -10.0426626)) * CFrame.Angles(3.141592502594, 0, 1.5707963705063)

obj206.FormFactor = 'Custom'

obj206.LeftSurface = 10

obj206.TopSurface = 10

obj206.RightSurface = 10

obj206.Material = 'SmoothPlastic'

obj206.Size = Vector3.new(1, 1, 1)

obj206.FrontSurface = 10

obj206.BottomSurface = 10

obj206.BackSurface = 10

obj206.Anchored = true

obj206.BrickColor = BrickColor.new("Dark stone grey")

obj206.Parent = Gun



-- 207 - Mesh

obj207 = Instance.new("SpecialMesh")

obj207.MeshType = Enum.MeshType.Brick

obj207.Scale = Vector3.new(0.0384615399, 0.15384616, 0.00769230817)

obj207.Parent = obj206



-- 208 - Part

obj208 = Instance.new("Part")

obj208.CFrame = CFrame.new(Vector3.new(15.9340925, 13.7346544, -9.86966419)) * CFrame.Angles(2.6179935932159, 0, 3.141592502594)

obj208.FormFactor = 'Custom'

obj208.LeftSurface = 10

obj208.TopSurface = 10

obj208.RightSurface = 10

obj208.Material = 'SmoothPlastic'

obj208.Size = Vector3.new(1, 1, 1)

obj208.FrontSurface = 10

obj208.BottomSurface = 10

obj208.BackSurface = 10

obj208.Anchored = true

obj208.BrickColor = BrickColor.new("Black")

obj208.Parent = Gun



-- 209 - Mesh

obj209 = Instance.new("SpecialMesh")

obj209.MeshType = Enum.MeshType.Brick

obj209.Scale = Vector3.new(0.41538471, 0.107692324, 0.0230769273)

obj209.Parent = obj208



-- 210 - Part

obj210 = Instance.new("Part")

obj210.CFrame = CFrame.new(Vector3.new(16.0230885, 13.8936529, -10.0146646)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj210.FormFactor = 'Custom'

obj210.LeftSurface = 10

obj210.TopSurface = 10

obj210.RightSurface = 10

obj210.Material = 'SmoothPlastic'

obj210.Size = Vector3.new(1, 1, 1)

obj210.FrontSurface = 10

obj210.BottomSurface = 10

obj210.BackSurface = 10

obj210.Anchored = true

obj210.BrickColor = BrickColor.new("Black")

obj210.Parent = Gun



-- 211 - Mesh

obj211 = Instance.new("SpecialMesh")

obj211.MeshType = Enum.MeshType.Brick

obj211.Scale = Vector3.new(0.115384638, 0.0769230798, 0.0769230798)

obj211.Parent = obj210



-- 212 - Part

obj212 = Instance.new("Part")

obj212.CFrame = CFrame.new(Vector3.new(15.7000923, 13.6856527, -10.0426626)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj212.FormFactor = 'Custom'

obj212.LeftSurface = 10

obj212.TopSurface = 10

obj212.RightSurface = 10

obj212.Material = 'SmoothPlastic'

obj212.Size = Vector3.new(1, 1, 1)

obj212.FrontSurface = 10

obj212.BottomSurface = 10

obj212.BackSurface = 10

obj212.Anchored = true

obj212.BrickColor = BrickColor.new("Dark stone grey")

obj212.Parent = Gun



-- 213 - Mesh

obj213 = Instance.new("CylinderMesh")

obj213.Scale = Vector3.new(0.0230769273, 0.00769230817, 0.0384615399)

obj213.Parent = obj212



-- 214 - CenterWeld

obj214 = Instance.new("Part")

obj214.CFrame = CFrame.new(Vector3.new(15.9340925, 13.8276529, -9.97666454)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj214.FormFactor = 'Custom'

obj214.LeftSurface = 10

obj214.TopSurface = 10

obj214.RightSurface = 10

obj214.Material = 'SmoothPlastic'

obj214.Size = Vector3.new(1, 1, 1)

obj214.FrontSurface = 10

obj214.BottomSurface = 10

obj214.BackSurface = 10

obj214.Anchored = true

obj214.BrickColor = BrickColor.new("Black")

obj214.Name = "CenterWeld"

obj214.Parent = Gun



-- 215 - Mesh

obj215 = Instance.new("CylinderMesh")

obj215.Scale = Vector3.new(0.169230834, 0.415384561, 0.192307696)

obj215.Parent = obj214



-- 216 - Part

obj216 = Instance.new("Part")

obj216.CFrame = CFrame.new(Vector3.new(15.1730947, 13.9856539, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj216.FormFactor = 'Custom'

obj216.LeftSurface = 10

obj216.TopSurface = 10

obj216.RightSurface = 10

obj216.Material = 'SmoothPlastic'

obj216.Size = Vector3.new(1, 1, 1)

obj216.FrontSurface = 10

obj216.BottomSurface = 10

obj216.BackSurface = 10

obj216.Anchored = true

obj216.BrickColor = BrickColor.new("Black")

obj216.Parent = Gun



-- 217 - Mesh

obj217 = Instance.new("SpecialMesh")

obj217.MeshType = Enum.MeshType.Brick

obj217.Scale = Vector3.new(0.0461538397, 0.00769230817, 0.0692308173)

obj217.Parent = obj216



-- 218 - Part

obj218 = Instance.new("Part")

obj218.CFrame = CFrame.new(Vector3.new(15.1530981, 13.9626551, -9.96266651)) * CFrame.Angles(0, 1.5707963705063, 0)

obj218.FormFactor = 'Custom'

obj218.LeftSurface = 10

obj218.TopSurface = 10

obj218.RightSurface = 10

obj218.Material = 'SmoothPlastic'

obj218.Size = Vector3.new(1, 1, 1)

obj218.FrontSurface = 10

obj218.BottomSurface = 10

obj218.BackSurface = 10

obj218.Anchored = true

obj218.Parent = Gun



-- 219 - Mesh

obj219 = Instance.new("SpecialMesh")

obj219.MeshType = Enum.MeshType.Wedge

obj219.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0230769273)

obj219.Parent = obj218



-- 220 - Part

obj220 = Instance.new("Part")

obj220.CFrame = CFrame.new(Vector3.new(15.7300911, 13.6546535, -9.88166332)) * CFrame.Angles(-1.5707963705063, 0, 3.141592502594)

obj220.FormFactor = 'Custom'

obj220.LeftSurface = 10

obj220.TopSurface = 10

obj220.RightSurface = 10

obj220.Material = 'SmoothPlastic'

obj220.Size = Vector3.new(1, 1, 1)

obj220.FrontSurface = 10

obj220.BottomSurface = 10

obj220.BackSurface = 10

obj220.Anchored = true

obj220.BrickColor = BrickColor.new("Dark stone grey")

obj220.Parent = Gun



-- 221 - Mesh

obj221 = Instance.new("CylinderMesh")

obj221.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.0384615399)

obj221.Parent = obj220



-- 222 - Part

obj222 = Instance.new("Part")

obj222.CFrame = CFrame.new(Vector3.new(15.6030922, 13.7976542, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 3.141592502594)

obj222.FormFactor = 'Custom'

obj222.LeftSurface = 10

obj222.TopSurface = 10

obj222.RightSurface = 10

obj222.Material = 'SmoothPlastic'

obj222.Size = Vector3.new(1, 1, 1)

obj222.FrontSurface = 10

obj222.BottomSurface = 10

obj222.BackSurface = 10

obj222.Anchored = true

obj222.BrickColor = BrickColor.new("Black")

obj222.Parent = Gun



-- 223 - Mesh

obj223 = Instance.new("SpecialMesh")

obj223.MeshType = Enum.MeshType.Brick

obj223.Scale = Vector3.new(0.230769277, 0.369230747, 0.161538497)

obj223.Parent = obj222



-- 224 - Part

obj224 = Instance.new("Part")

obj224.CFrame = CFrame.new(Vector3.new(15.1610937, 13.6546535, -9.96266651)) * CFrame.Angles(-3.141592502594, 1.5707963705063, 0)

obj224.FormFactor = 'Custom'

obj224.LeftSurface = 10

obj224.TopSurface = 10

obj224.RightSurface = 10

obj224.Material = 'SmoothPlastic'

obj224.Size = Vector3.new(1, 1, 1)

obj224.FrontSurface = 10

obj224.BottomSurface = 10

obj224.BackSurface = 10

obj224.Anchored = true

obj224.BrickColor = BrickColor.new("Black")

obj224.Parent = Gun



-- 225 - Mesh

obj225 = Instance.new("SpecialMesh")

obj225.MeshType = Enum.MeshType.Wedge

obj225.Scale = Vector3.new(0.161538467, 0.0384615399, 0.0384615399)

obj225.Parent = obj224



-- 226 - Part

obj226 = Instance.new("Part")

obj226.CFrame = CFrame.new(Vector3.new(15.2000942, 13.6746531, -9.96266651)) * CFrame.Angles(-0, 0, 1.5707963705063)

obj226.FormFactor = 'Custom'

obj226.LeftSurface = 10

obj226.TopSurface = 10

obj226.RightSurface = 10

obj226.Material = 'SmoothPlastic'

obj226.Size = Vector3.new(1, 1, 1)

obj226.FrontSurface = 10

obj226.BottomSurface = 10

obj226.BackSurface = 10

obj226.Anchored = true

obj226.BrickColor = BrickColor.new("Black")

obj226.Parent = Gun



-- 227 - Mesh

obj227 = Instance.new("SpecialMesh")

obj227.MeshType = Enum.MeshType.Brick

obj227.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.161538467)

obj227.Parent = obj226



-- 228 - Part

obj228 = Instance.new("Part")

obj228.CFrame = CFrame.new(Vector3.new(15.7300911, 13.6316538, -9.93166256)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj228.FormFactor = 'Custom'

obj228.LeftSurface = 10

obj228.TopSurface = 10

obj228.RightSurface = 10

obj228.Material = 'SmoothPlastic'

obj228.Size = Vector3.new(1, 1, 1)

obj228.FrontSurface = 10

obj228.BottomSurface = 10

obj228.BackSurface = 10

obj228.Anchored = true

obj228.BrickColor = BrickColor.new("Dark stone grey")

obj228.Parent = Gun



-- 229 - Mesh

obj229 = Instance.new("SpecialMesh")

obj229.MeshType = Enum.MeshType.Brick

obj229.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.107692324)

obj229.Parent = obj228



-- 230 - Part

obj230 = Instance.new("Part")

obj230.CFrame = CFrame.new(Vector3.new(15.0840979, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 3.141592502594)

obj230.FormFactor = 'Custom'

obj230.LeftSurface = 10

obj230.TopSurface = 10

obj230.RightSurface = 10

obj230.Material = 'SmoothPlastic'

obj230.Size = Vector3.new(1, 1, 1)

obj230.FrontSurface = 10

obj230.BottomSurface = 10

obj230.BackSurface = 10

obj230.Anchored = true

obj230.BrickColor = BrickColor.new("Black")

obj230.Parent = Gun



-- 231 - Mesh

obj231 = Instance.new("SpecialMesh")

obj231.MeshType = Enum.MeshType.Brick

obj231.Scale = Vector3.new(0.0384615399, 0.269230783, 0.161538467)

obj231.Parent = obj230



-- 232 - Part

obj232 = Instance.new("Part")

obj232.CFrame = CFrame.new(Vector3.new(15.1420965, 13.9626551, -10.0546656)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj232.FormFactor = 'Custom'

obj232.LeftSurface = 10

obj232.TopSurface = 10

obj232.RightSurface = 10

obj232.Material = 'SmoothPlastic'

obj232.Size = Vector3.new(1, 1, 1)

obj232.FrontSurface = 10

obj232.BottomSurface = 10

obj232.BackSurface = 10

obj232.Anchored = true

obj232.BrickColor = BrickColor.new("Black")

obj232.Parent = Gun



-- 233 - Mesh

obj233 = Instance.new("CylinderMesh")

obj233.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.0769230798)

obj233.Parent = obj232



-- 234 - Part

obj234 = Instance.new("Part")

obj234.CFrame = CFrame.new(Vector3.new(16.0650883, 13.740653, -9.85966587)) * CFrame.Angles(2.6179935932159, 0, 3.141592502594)

obj234.FormFactor = 'Custom'

obj234.LeftSurface = 10

obj234.TopSurface = 10

obj234.RightSurface = 10

obj234.Material = 'SmoothPlastic'

obj234.Size = Vector3.new(1, 1, 1)

obj234.FrontSurface = 10

obj234.BottomSurface = 10

obj234.BackSurface = 10

obj234.Anchored = true

obj234.BrickColor = BrickColor.new("Dark stone grey")

obj234.Parent = Gun



-- 235 - Mesh

obj235 = Instance.new("SpecialMesh")

obj235.MeshType = Enum.MeshType.Brick

obj235.Scale = Vector3.new(0.092307739, 0.0923077092, 0.00769230817)

obj235.Parent = obj234



-- 236 - Part

obj236 = Instance.new("Part")

obj236.CFrame = CFrame.new(Vector3.new(15.1820974, 13.8276529, -9.8166666)) * CFrame.Angles(1.5707963705063, 7.2426775687973e-009, 1.2217304706573)

obj236.FormFactor = 'Custom'

obj236.LeftSurface = 10

obj236.TopSurface = 10

obj236.RightSurface = 10

obj236.Material = 'SmoothPlastic'

obj236.Size = Vector3.new(1, 1, 1)

obj236.FrontSurface = 10

obj236.BottomSurface = 10

obj236.BackSurface = 10

obj236.Anchored = true

obj236.BrickColor = BrickColor.new("Dark stone grey")

obj236.Parent = Gun



-- 237 - Mesh

obj237 = Instance.new("CylinderMesh")

obj237.Scale = Vector3.new(0.115384638, 0.00769233704, 0.115384638)

obj237.Parent = obj236



-- 238 - Part

obj238 = Instance.new("Part")

obj238.CFrame = CFrame.new(Vector3.new(15.5480928, 13.5706539, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)

obj238.FormFactor = 'Custom'

obj238.LeftSurface = 10

obj238.TopSurface = 10

obj238.RightSurface = 10

obj238.Material = 'SmoothPlastic'

obj238.Size = Vector3.new(1, 1, 1)

obj238.FrontSurface = 10

obj238.BottomSurface = 10

obj238.BackSurface = 10

obj238.Anchored = true

obj238.BrickColor = BrickColor.new("Dark stone grey")

obj238.Parent = Gun



-- 239 - Mesh

obj239 = Instance.new("SpecialMesh")

obj239.MeshType = Enum.MeshType.Wedge

obj239.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.0846154019)

obj239.Parent = obj238



-- 240 - Part

obj240 = Instance.new("Part")

obj240.CFrame = CFrame.new(Vector3.new(15.796093, 13.5206528, -9.89666271)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj240.FormFactor = 'Custom'

obj240.LeftSurface = 10

obj240.TopSurface = 10

obj240.RightSurface = 10

obj240.Material = 'SmoothPlastic'

obj240.Size = Vector3.new(1, 1, 1)

obj240.FrontSurface = 10

obj240.BottomSurface = 10

obj240.BackSurface = 10

obj240.Anchored = true

obj240.BrickColor = BrickColor.new("Black")

obj240.Parent = Gun



-- 241 - Mesh

obj241 = Instance.new("CylinderMesh")

obj241.Scale = Vector3.new(0.0384615399, 0.115384638, 0.0384615399)

obj241.Parent = obj240



-- 242 - Part

obj242 = Instance.new("Part")

obj242.CFrame = CFrame.new(Vector3.new(15.1420965, 13.9626551, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj242.FormFactor = 'Custom'

obj242.LeftSurface = 10

obj242.TopSurface = 10

obj242.RightSurface = 10

obj242.Material = 'SmoothPlastic'

obj242.Size = Vector3.new(1, 1, 1)

obj242.FrontSurface = 10

obj242.BottomSurface = 10

obj242.BackSurface = 10

obj242.Anchored = true

obj242.BrickColor = BrickColor.new("Black")

obj242.Parent = Gun



-- 243 - Mesh

obj243 = Instance.new("SpecialMesh")

obj243.MeshType = Enum.MeshType.Brick

obj243.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.184615433)

obj243.Parent = obj242



-- 244 - Part

obj244 = Instance.new("Part")

obj244.CFrame = CFrame.new(Vector3.new(15.3530941, 13.6706533, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 2.8797931671143)

obj244.FormFactor = 'Custom'

obj244.LeftSurface = 10

obj244.TopSurface = 10

obj244.RightSurface = 10

obj244.Material = 'SmoothPlastic'

obj244.Size = Vector3.new(1, 1, 1)

obj244.FrontSurface = 10

obj244.BottomSurface = 10

obj244.BackSurface = 10

obj244.Anchored = true

obj244.BrickColor = BrickColor.new("Dark stone grey")

obj244.Parent = Gun



-- 245 - Mesh

obj245 = Instance.new("SpecialMesh")

obj245.MeshType = Enum.MeshType.Brick

obj245.Scale = Vector3.new(0.0230769273, 0.00769230817, 0.169230789)

obj245.Parent = obj244



-- 246 - Part

obj246 = Instance.new("Part")

obj246.CFrame = CFrame.new(Vector3.new(15.3960934, 13.8276529, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

obj246.FormFactor = 'Custom'

obj246.LeftSurface = 10

obj246.TopSurface = 10

obj246.RightSurface = 10

obj246.Material = 'SmoothPlastic'

obj246.Size = Vector3.new(1, 1, 1)

obj246.FrontSurface = 10

obj246.BottomSurface = 10

obj246.BackSurface = 10

obj246.Anchored = true

obj246.BrickColor = BrickColor.new("Black")

obj246.Parent = Gun



-- 247 - Mesh

obj247 = Instance.new("CylinderMesh")

obj247.Scale = Vector3.new(0.230769247, 0.661538541, 0.192307696)

obj247.Parent = obj246



-- 248 - Part

obj248 = Instance.new("Part")

obj248.CFrame = CFrame.new(Vector3.new(15.7380943, 13.5206528, -9.89666271)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj248.FormFactor = 'Custom'

obj248.LeftSurface = 10

obj248.TopSurface = 10

obj248.RightSurface = 10

obj248.Material = 'SmoothPlastic'

obj248.Size = Vector3.new(1, 1, 1)

obj248.FrontSurface = 10

obj248.BottomSurface = 10

obj248.BackSurface = 10

obj248.Anchored = true

obj248.BrickColor = BrickColor.new("Black")

obj248.Parent = Gun



-- 249 - Mesh

obj249 = Instance.new("SpecialMesh")

obj249.MeshType = Enum.MeshType.Sphere

obj249.Scale = Vector3.new(0.0384615399, 0.0384615399, 0.0384615399)

obj249.Parent = obj248



-- 250 - Part

obj250 = Instance.new("Part")

obj250.CFrame = CFrame.new(Vector3.new(15.4270906, 13.3476534, -9.96266651)) * CFrame.Angles(-1.5707966089249, -1.0561007261276, -1.5707963705063)

obj250.FormFactor = 'Custom'

obj250.LeftSurface = 10

obj250.TopSurface = 10

obj250.RightSurface = 10

obj250.Material = 'SmoothPlastic'

obj250.Size = Vector3.new(1, 1, 1)

obj250.FrontSurface = 10

obj250.BottomSurface = 10

obj250.BackSurface = 10

obj250.Anchored = true

obj250.BrickColor = BrickColor.new("Black")

obj250.Parent = Gun



-- 251 - Mesh

obj251 = Instance.new("SpecialMesh")

obj251.MeshType = Enum.MeshType.Wedge

obj251.Scale = Vector3.new(0.15384616, 0.0230769273, 0.0384615399)

obj251.Parent = obj250



-- 252 - Part

obj252 = Instance.new("Part")

obj252.CFrame = CFrame.new(Vector3.new(15.9380903, 13.7516527, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj252.FormFactor = 'Custom'

obj252.LeftSurface = 10

obj252.TopSurface = 10

obj252.RightSurface = 10

obj252.Material = 'SmoothPlastic'

obj252.Size = Vector3.new(1, 1, 1)

obj252.FrontSurface = 10

obj252.BottomSurface = 10

obj252.BackSurface = 10

obj252.Anchored = true

obj252.BrickColor = BrickColor.new("Black")

obj252.Parent = Gun



-- 253 - Mesh

obj253 = Instance.new("SpecialMesh")

obj253.MeshType = Enum.MeshType.Brick

obj253.Scale = Vector3.new(0.438461453, 0.461538404, 0.153846174)

obj253.Parent = obj252



-- 254 - Part

obj254 = Instance.new("Part")

obj254.CFrame = CFrame.new(Vector3.new(15.7380943, 13.6476536, -10.0426626)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj254.FormFactor = 'Custom'

obj254.LeftSurface = 10

obj254.TopSurface = 10

obj254.RightSurface = 10

obj254.Material = 'SmoothPlastic'

obj254.Size = Vector3.new(1, 1, 1)

obj254.FrontSurface = 10

obj254.BottomSurface = 10

obj254.BackSurface = 10

obj254.Anchored = true

obj254.BrickColor = BrickColor.new("Dark stone grey")

obj254.Parent = Gun



-- 255 - Mesh

obj255 = Instance.new("CylinderMesh")

obj255.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.0384615399)

obj255.Parent = obj254



-- 256 - Part

obj256 = Instance.new("Part")

obj256.CFrame = CFrame.new(Vector3.new(15.7000923, 13.747653, -10.0426626)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj256.FormFactor = 'Custom'

obj256.LeftSurface = 10

obj256.TopSurface = 10

obj256.RightSurface = 10

obj256.Material = 'SmoothPlastic'

obj256.Size = Vector3.new(1, 1, 1)

obj256.FrontSurface = 10

obj256.BottomSurface = 10

obj256.BackSurface = 10

obj256.Anchored = true

obj256.BrickColor = BrickColor.new("Dark stone grey")

obj256.Parent = Gun



-- 257 - Mesh

obj257 = Instance.new("CylinderMesh")

obj257.Scale = Vector3.new(0.0538461618, 0.00769230817, 0.0538461618)

obj257.Parent = obj256



-- 258 - Part

obj258 = Instance.new("Part")

obj258.CFrame = CFrame.new(Vector3.new(15.7000923, 13.7126532, -10.0426626)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj258.FormFactor = 'Custom'

obj258.LeftSurface = 10

obj258.TopSurface = 10

obj258.RightSurface = 10

obj258.Material = 'SmoothPlastic'

obj258.Size = Vector3.new(1, 1, 1)

obj258.FrontSurface = 10

obj258.BottomSurface = 10

obj258.BackSurface = 10

obj258.Anchored = true

obj258.BrickColor = BrickColor.new("Dark stone grey")

obj258.Parent = Gun



-- 259 - Mesh

obj259 = Instance.new("SpecialMesh")

obj259.MeshType = Enum.MeshType.Brick

obj259.Scale = Vector3.new(0.0230769273, 0.0538461506, 0.00769230817)

obj259.Parent = obj258



-- 260 - Part

obj260 = Instance.new("Part")

obj260.CFrame = CFrame.new(Vector3.new(15.9420958, 13.6976528, -9.89666271)) * CFrame.Angles(3.141592502594, 0, 1.5707963705063)

obj260.FormFactor = 'Custom'

obj260.LeftSurface = 10

obj260.TopSurface = 10

obj260.RightSurface = 10

obj260.Material = 'SmoothPlastic'

obj260.Size = Vector3.new(1, 1, 1)

obj260.FrontSurface = 10

obj260.BottomSurface = 10

obj260.BackSurface = 10

obj260.Anchored = true

obj260.BrickColor = BrickColor.new("Black")

obj260.Parent = Gun



-- 261 - Mesh

obj261 = Instance.new("CylinderMesh")

obj261.Scale = Vector3.new(0.0384615399, 0.453846127, 0.0384615399)

obj261.Parent = obj260



-- 262 - Part

obj262 = Instance.new("Part")

obj262.CFrame = CFrame.new(Vector3.new(15.5940905, 13.4866533, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, -1.5707963705063)

obj262.FormFactor = 'Custom'

obj262.LeftSurface = 10

obj262.TopSurface = 10

obj262.RightSurface = 10

obj262.Material = 'SmoothPlastic'

obj262.Size = Vector3.new(1, 1, 1)

obj262.FrontSurface = 10

obj262.BottomSurface = 10

obj262.BackSurface = 10

obj262.Anchored = true

obj262.BrickColor = BrickColor.new("Dark stone grey")

obj262.Parent = Gun



-- 263 - Mesh

obj263 = Instance.new("SpecialMesh")

obj263.MeshType = Enum.MeshType.Wedge

obj263.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.00769231468)

obj263.Parent = obj262



-- 264 - Part

obj264 = Instance.new("Part")

obj264.CFrame = CFrame.new(Vector3.new(15.5860949, 13.4866533, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj264.FormFactor = 'Custom'

obj264.LeftSurface = 10

obj264.TopSurface = 10

obj264.RightSurface = 10

obj264.Material = 'SmoothPlastic'

obj264.Size = Vector3.new(1, 1, 1)

obj264.FrontSurface = 10

obj264.BottomSurface = 10

obj264.BackSurface = 10

obj264.Anchored = true

obj264.BrickColor = BrickColor.new("Dark stone grey")

obj264.Parent = Gun



-- 265 - Mesh

obj265 = Instance.new("SpecialMesh")

obj265.MeshType = Enum.MeshType.Brick

obj265.Scale = Vector3.new(0.00769230817, 0.00769230817, 0.0384615399)

obj265.Parent = obj264



-- 266 - Part

obj266 = Instance.new("Part")

obj266.CFrame = CFrame.new(Vector3.new(15.5710955, 13.5056534, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj266.FormFactor = 'Custom'

obj266.LeftSurface = 10

obj266.TopSurface = 10

obj266.RightSurface = 10

obj266.Material = 'SmoothPlastic'

obj266.Size = Vector3.new(1, 1, 1)

obj266.FrontSurface = 10

obj266.BottomSurface = 10

obj266.BackSurface = 10

obj266.Anchored = true

obj266.BrickColor = BrickColor.new("Dark stone grey")

obj266.Parent = Gun



-- 267 - Mesh

obj267 = Instance.new("SpecialMesh")

obj267.MeshType = Enum.MeshType.Brick

obj267.Scale = Vector3.new(0.00769230817, 0.0153846219, 0.0384615399)

obj267.Parent = obj266



-- 268 - Part

obj268 = Instance.new("Part")

obj268.CFrame = CFrame.new(Vector3.new(15.1420965, 13.9626551, -9.86966419)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj268.FormFactor = 'Custom'

obj268.LeftSurface = 10

obj268.TopSurface = 10

obj268.RightSurface = 10

obj268.Material = 'SmoothPlastic'

obj268.Size = Vector3.new(1, 1, 1)

obj268.FrontSurface = 10

obj268.BottomSurface = 10

obj268.BackSurface = 10

obj268.Anchored = true

obj268.BrickColor = BrickColor.new("Black")

obj268.Parent = Gun



-- 269 - Mesh

obj269 = Instance.new("CylinderMesh")

obj269.Scale = Vector3.new(0.0769230798, 0.0384615399, 0.0769230798)

obj269.Parent = obj268



-- 270 - Part

obj270 = Instance.new("Part")

obj270.CFrame = CFrame.new(Vector3.new(15.7000923, 13.4856529, -9.96266651)) * CFrame.Angles(0, 1.5707963705063, 0)

obj270.FormFactor = 'Custom'

obj270.LeftSurface = 10

obj270.TopSurface = 10

obj270.RightSurface = 10

obj270.Material = 'SmoothPlastic'

obj270.Size = Vector3.new(1, 1, 1)

obj270.FrontSurface = 10

obj270.BottomSurface = 10

obj270.BackSurface = 10

obj270.Anchored = true

obj270.BrickColor = BrickColor.new("Black")

obj270.Parent = Gun



-- 271 - Mesh

obj271 = Instance.new("SpecialMesh")

obj271.MeshType = Enum.MeshType.Wedge

obj271.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)

obj271.Parent = obj270



-- 272 - Part

obj272 = Instance.new("Part")

obj272.CFrame = CFrame.new(Vector3.new(15.5740938, 13.4896536, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)

obj272.FormFactor = 'Custom'

obj272.LeftSurface = 10

obj272.TopSurface = 10

obj272.RightSurface = 10

obj272.Material = 'SmoothPlastic'

obj272.Size = Vector3.new(1, 1, 1)

obj272.FrontSurface = 10

obj272.BottomSurface = 10

obj272.BackSurface = 10

obj272.Anchored = true

obj272.BrickColor = BrickColor.new("Dark stone grey")

obj272.Parent = Gun



-- 273 - Mesh

obj273 = Instance.new("SpecialMesh")

obj273.MeshType = Enum.MeshType.Wedge

obj273.Scale = Vector3.new(0.0384615399, 0.0153846163, 0.0153846219)

obj273.Parent = obj272



-- 274 - Part

obj274 = Instance.new("Part")

obj274.CFrame = CFrame.new(Vector3.new(15.4840975, 13.5936537, -9.96266651)) * CFrame.Angles(3.141592502594, -1.5707963705063, 0)

obj274.FormFactor = 'Custom'

obj274.LeftSurface = 10

obj274.TopSurface = 10

obj274.RightSurface = 10

obj274.Material = 'SmoothPlastic'

obj274.Size = Vector3.new(1, 1, 1)

obj274.FrontSurface = 10

obj274.BottomSurface = 10

obj274.BackSurface = 10

obj274.Anchored = true

obj274.BrickColor = BrickColor.new("Black")

obj274.Parent = Gun



-- 275 - Mesh

obj275 = Instance.new("SpecialMesh")

obj275.MeshType = Enum.MeshType.Wedge

obj275.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)

obj275.Parent = obj274



-- 276 - Part

obj276 = Instance.new("Part")

obj276.CFrame = CFrame.new(Vector3.new(15.5680971, 13.8856535, -9.90066433)) * CFrame.Angles(3.141592502594, -0.62831854820251, 3.141592502594)

obj276.FormFactor = 'Custom'

obj276.LeftSurface = 10

obj276.TopSurface = 10

obj276.RightSurface = 10

obj276.Material = 'SmoothPlastic'

obj276.Size = Vector3.new(1, 1, 1)

obj276.FrontSurface = 10

obj276.BottomSurface = 10

obj276.BackSurface = 10

obj276.Anchored = true

obj276.BrickColor = BrickColor.new("Black")

obj276.Parent = Gun



-- 277 - Mesh

obj277 = Instance.new("SpecialMesh")

obj277.MeshType = Enum.MeshType.Brick

obj277.Scale = Vector3.new(0.100000016, 0.0923077092, 0.100000016)

obj277.Parent = obj276



-- 278 - Part

obj278 = Instance.new("Part")

obj278.CFrame = CFrame.new(Vector3.new(15.1610937, 13.9246531, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 3.141592502594)

obj278.FormFactor = 'Custom'

obj278.LeftSurface = 10

obj278.TopSurface = 10

obj278.RightSurface = 10

obj278.Material = 'SmoothPlastic'

obj278.Size = Vector3.new(1, 1, 1)

obj278.FrontSurface = 10

obj278.BottomSurface = 10

obj278.BackSurface = 10

obj278.Anchored = true

obj278.BrickColor = BrickColor.new("Black")

obj278.Parent = Gun



-- 279 - Mesh

obj279 = Instance.new("SpecialMesh")

obj279.MeshType = Enum.MeshType.Brick

obj279.Scale = Vector3.new(0.115384638, 0.0384615399, 0.161538467)

obj279.Parent = obj278



-- 280 - Part

obj280 = Instance.new("Part")

obj280.CFrame = CFrame.new(Vector3.new(15.1460943, 13.9856539, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj280.FormFactor = 'Custom'

obj280.LeftSurface = 10

obj280.TopSurface = 10

obj280.RightSurface = 10

obj280.Material = 'SmoothPlastic'

obj280.Size = Vector3.new(1, 1, 1)

obj280.FrontSurface = 10

obj280.BottomSurface = 10

obj280.BackSurface = 10

obj280.Anchored = true

obj280.BrickColor = BrickColor.new("Black")

obj280.Parent = Gun



-- 281 - Mesh

obj281 = Instance.new("CylinderMesh")

obj281.Scale = Vector3.new(0.06923078, 0.00769230817, 0.06923078)

obj281.Parent = obj280



-- 282 - Part

obj282 = Instance.new("Part")

obj282.CFrame = CFrame.new(Vector3.new(15.5780916, 13.5056534, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, -1.5707963705063)

obj282.FormFactor = 'Custom'

obj282.LeftSurface = 10

obj282.TopSurface = 10

obj282.RightSurface = 10

obj282.Material = 'SmoothPlastic'

obj282.Size = Vector3.new(1, 1, 1)

obj282.FrontSurface = 10

obj282.BottomSurface = 10

obj282.BackSurface = 10

obj282.Anchored = true

obj282.BrickColor = BrickColor.new("Dark stone grey")

obj282.Parent = Gun



-- 283 - Mesh

obj283 = Instance.new("SpecialMesh")

obj283.MeshType = Enum.MeshType.Wedge

obj283.Scale = Vector3.new(0.0384615399, 0.00769230817, 0.0153846219)

obj283.Parent = obj282



-- 284 - Part

obj284 = Instance.new("Part")

obj284.CFrame = CFrame.new(Vector3.new(15.3230953, 13.662653, -9.96266651)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj284.FormFactor = 'Custom'

obj284.LeftSurface = 10

obj284.TopSurface = 10

obj284.RightSurface = 10

obj284.Material = 'SmoothPlastic'

obj284.Size = Vector3.new(1, 1, 1)

obj284.FrontSurface = 10

obj284.BottomSurface = 10

obj284.BackSurface = 10

obj284.Anchored = true

obj284.BrickColor = BrickColor.new("Dark stone grey")

obj284.Parent = Gun



-- 285 - Mesh

obj285 = Instance.new("CylinderMesh")

obj285.Scale = Vector3.new(0.0538461618, 0.169230789, 0.0538461618)

obj285.Parent = obj284



-- 286 - Part

obj286 = Instance.new("Part")

obj286.CFrame = CFrame.new(Vector3.new(15.8530912, 13.608654, -9.89666271)) * CFrame.Angles(0, 1.5707963705063, 0)

obj286.FormFactor = 'Custom'

obj286.LeftSurface = 10

obj286.TopSurface = 10

obj286.RightSurface = 10

obj286.Material = 'SmoothPlastic'

obj286.Size = Vector3.new(1, 1, 1)

obj286.FrontSurface = 10

obj286.BottomSurface = 10

obj286.BackSurface = 10

obj286.Anchored = true

obj286.BrickColor = BrickColor.new("Black")

obj286.Parent = Gun



-- 287 - Mesh

obj287 = Instance.new("CylinderMesh")

obj287.Scale = Vector3.new(0.0384615399, 0.176923081, 0.0384615399)

obj287.Parent = obj286



-- 288 - Part

obj288 = Instance.new("Part")

obj288.CFrame = CFrame.new(Vector3.new(15.5920916, 13.4626532, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj288.FormFactor = 'Custom'

obj288.LeftSurface = 10

obj288.TopSurface = 10

obj288.RightSurface = 10

obj288.Material = 'SmoothPlastic'

obj288.Size = Vector3.new(1, 1, 1)

obj288.FrontSurface = 10

obj288.BottomSurface = 10

obj288.BackSurface = 10

obj288.Anchored = true

obj288.BrickColor = BrickColor.new("Black")

obj288.Parent = Gun



-- 289 - Mesh

obj289 = Instance.new("SpecialMesh")

obj289.MeshType = Enum.MeshType.Brick

obj289.Scale = Vector3.new(0.253846109, 0.00769230817, 0.15384616)

obj289.Parent = obj288



-- 290 - Part

obj290 = Instance.new("Part")

obj290.CFrame = CFrame.new(Vector3.new(15.4840975, 13.4856529, -9.96266651)) * CFrame.Angles(-0, -1.5707963705063, 0)

obj290.FormFactor = 'Custom'

obj290.LeftSurface = 10

obj290.TopSurface = 10

obj290.RightSurface = 10

obj290.Material = 'SmoothPlastic'

obj290.Size = Vector3.new(1, 1, 1)

obj290.FrontSurface = 10

obj290.BottomSurface = 10

obj290.BackSurface = 10

obj290.Anchored = true

obj290.BrickColor = BrickColor.new("Black")

obj290.Parent = Gun



-- 291 - Mesh

obj291 = Instance.new("SpecialMesh")

obj291.MeshType = Enum.MeshType.Wedge

obj291.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0384615399)

obj291.Parent = obj290



-- 292 - Part

obj292 = Instance.new("Part")

obj292.CFrame = CFrame.new(Vector3.new(15.5230913, 13.9976549, -10.0586653)) * CFrame.Angles(1.5707963705063, 0, 3.141592502594)

obj292.FormFactor = 'Custom'

obj292.LeftSurface = 10

obj292.TopSurface = 10

obj292.RightSurface = 10

obj292.Material = 'SmoothPlastic'

obj292.Size = Vector3.new(1, 1, 1)

obj292.FrontSurface = 10

obj292.BottomSurface = 10

obj292.BackSurface = 10

obj292.Anchored = true

obj292.BrickColor = BrickColor.new("Dark stone grey")

obj292.Parent = Gun



-- 293 - Mesh

obj293 = Instance.new("CylinderMesh")

obj293.Scale = Vector3.new(0.115384638, 0.0384615399, 0.100000016)

obj293.Parent = obj292



-- 294 - Part

obj294 = Instance.new("Part")

obj294.CFrame = CFrame.new(Vector3.new(15.5590944, 13.5126534, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)

obj294.FormFactor = 'Custom'

obj294.LeftSurface = 10

obj294.TopSurface = 10

obj294.RightSurface = 10

obj294.Material = 'SmoothPlastic'

obj294.Size = Vector3.new(1, 1, 1)

obj294.FrontSurface = 10

obj294.BottomSurface = 10

obj294.BackSurface = 10

obj294.Anchored = true

obj294.BrickColor = BrickColor.new("Dark stone grey")

obj294.Parent = Gun



-- 295 - Mesh

obj295 = Instance.new("SpecialMesh")

obj295.MeshType = Enum.MeshType.Wedge

obj295.Scale = Vector3.new(0.0384615399, 0.0153846163, 0.0307692345)

obj295.Parent = obj294



-- 296 - Part

obj296 = Instance.new("Part")

obj296.CFrame = CFrame.new(Vector3.new(15.1920996, 13.9626551, -9.96266651)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj296.FormFactor = 'Custom'

obj296.LeftSurface = 10

obj296.TopSurface = 10

obj296.RightSurface = 10

obj296.Material = 'SmoothPlastic'

obj296.Size = Vector3.new(1, 1, 1)

obj296.FrontSurface = 10

obj296.BottomSurface = 10

obj296.BackSurface = 10

obj296.Anchored = true

obj296.BrickColor = BrickColor.new("Black")

obj296.Parent = Gun



-- 297 - Mesh

obj297 = Instance.new("SpecialMesh")

obj297.MeshType = Enum.MeshType.Brick

obj297.Scale = Vector3.new(0.0538461618, 0.0384615399, 0.15384616)

obj297.Parent = obj296



-- 298 - Part

obj298 = Instance.new("Part")

obj298.CFrame = CFrame.new(Vector3.new(15.1920996, 13.8276529, -9.82066441)) * CFrame.Angles(1.5707963705063, -7.2426775687973e-009, 1.2217304706573)

obj298.FormFactor = 'Custom'

obj298.LeftSurface = 10

obj298.TopSurface = 10

obj298.RightSurface = 10

obj298.Material = 'SmoothPlastic'

obj298.Size = Vector3.new(1, 1, 1)

obj298.FrontSurface = 10

obj298.BottomSurface = 10

obj298.BackSurface = 10

obj298.Anchored = true

obj298.BrickColor = BrickColor.new("Dark stone grey")

obj298.Parent = Gun



-- 299 - Mesh

obj299 = Instance.new("CylinderMesh")

obj299.Scale = Vector3.new(0.103846155, 0.00769233704, 0.115384638)

obj299.Parent = obj298



-- 300 - Part

obj300 = Instance.new("Part")

obj300.CFrame = CFrame.new(Vector3.new(15.1610937, 13.8086538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, -0)

obj300.FormFactor = 'Custom'

obj300.LeftSurface = 10

obj300.TopSurface = 10

obj300.RightSurface = 10

obj300.Material = 'SmoothPlastic'

obj300.Size = Vector3.new(1, 1, 1)

obj300.FrontSurface = 10

obj300.BottomSurface = 10

obj300.BackSurface = 10

obj300.Anchored = true

obj300.BrickColor = BrickColor.new("Black")

obj300.Parent = Gun



-- 301 - Mesh

obj301 = Instance.new("SpecialMesh")

obj301.MeshType = Enum.MeshType.Brick

obj301.Scale = Vector3.new(0.115384638, 0.192307696, 0.161538467)

obj301.Parent = obj300



-- 302 - Part

obj302 = Instance.new("Part")

obj302.CFrame = CFrame.new(Vector3.new(15.5780916, 13.5866537, -9.96266651)) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)

obj302.FormFactor = 'Custom'

obj302.LeftSurface = 10

obj302.TopSurface = 10

obj302.RightSurface = 10

obj302.Material = 'SmoothPlastic'

obj302.Size = Vector3.new(1, 1, 1)

obj302.FrontSurface = 10

obj302.BottomSurface = 10

obj302.BackSurface = 10

obj302.Anchored = true

obj302.BrickColor = BrickColor.new("Dark stone grey")

obj302.Parent = Gun



-- 303 - Mesh

obj303 = Instance.new("SpecialMesh")

obj303.MeshType = Enum.MeshType.Wedge

obj303.Scale = Vector3.new(0.0384615399, 0.0230769273, 0.06923078)

obj303.Parent = obj302



-- 304 - Part

obj304 = Instance.new("Part")

obj304.CFrame = CFrame.new(Vector3.new(15.3460979, 13.7976542, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, -0)

obj304.FormFactor = 'Custom'

obj304.LeftSurface = 10

obj304.TopSurface = 10

obj304.RightSurface = 10

obj304.Material = 'SmoothPlastic'

obj304.Size = Vector3.new(1, 1, 1)

obj304.FrontSurface = 10

obj304.BottomSurface = 10

obj304.BackSurface = 10

obj304.Anchored = true

obj304.BrickColor = BrickColor.new("Black")

obj304.Parent = Gun



-- 305 - Mesh

obj305 = Instance.new("SpecialMesh")

obj305.MeshType = Enum.MeshType.Brick

obj305.Scale = Vector3.new(0.284615368, 0.369230717, 0.161538467)

obj305.Parent = obj304



-- 306 - Stock

obj306 = Instance.new("Part")

obj306.CFrame = CFrame.new(Vector3.new(13.7380981, 13.5016527, -9.96666431)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj306.FormFactor = 'Custom'

obj306.LeftSurface = 10

obj306.TopSurface = 10

obj306.RightSurface = 10

obj306.Material = 'SmoothPlastic'

obj306.Size = Vector3.new(1, 1, 1)

obj306.FrontSurface = 10

obj306.BottomSurface = 10

obj306.BackSurface = 10

obj306.Anchored = true

obj306.BrickColor = BrickColor.new("Black")

obj306.Name = "Stock"

obj306.Parent = Gun



-- 307 - Mesh

obj307 = Instance.new("SpecialMesh")

obj307.MeshType = Enum.MeshType.Brick

obj307.Scale = Vector3.new(0.115384638, 0.346153855, 0.15384616)

obj307.Parent = obj306



-- 308 - Stock

obj308 = Instance.new("Part")

obj308.CFrame = CFrame.new(Vector3.new(14.3731003, 13.8666525, -9.96666431)) * CFrame.Angles(-3.141592502594, 8.7422769468049e-008, 1.5707963705063)

obj308.FormFactor = 'Custom'

obj308.LeftSurface = 10

obj308.TopSurface = 10

obj308.RightSurface = 10

obj308.Material = 'SmoothPlastic'

obj308.Size = Vector3.new(1, 1, 1)

obj308.FrontSurface = 10

obj308.BottomSurface = 10

obj308.BackSurface = 10

obj308.Anchored = true

obj308.BrickColor = BrickColor.new("Black")

obj308.Name = "Stock"

obj308.Parent = Gun



-- 309 - Mesh

obj309 = Instance.new("CylinderMesh")

obj309.Scale = Vector3.new(0.15384616, 1.38461542, 0.15384616)

obj309.Parent = obj308



-- 310 - Stock

obj310 = Instance.new("Part")

obj310.CFrame = CFrame.new(Vector3.new(14.3731003, 13.7706537, -9.96666431)) * CFrame.Angles(3.141592502594, 0, 3.141592502594)

obj310.FormFactor = 'Custom'

obj310.LeftSurface = 10

obj310.TopSurface = 10

obj310.RightSurface = 10

obj310.Material = 'SmoothPlastic'

obj310.Size = Vector3.new(1, 1, 1)

obj310.FrontSurface = 10

obj310.BottomSurface = 10

obj310.BackSurface = 10

obj310.Anchored = true

obj310.BrickColor = BrickColor.new("Black")

obj310.Name = "Stock"

obj310.Parent = Gun



-- 311 - Mesh

obj311 = Instance.new("SpecialMesh")

obj311.MeshType = Enum.MeshType.Brick

obj311.Scale = Vector3.new(1.38461542, 0.192307696, 0.15384616)

obj311.Parent = obj310



-- 312 - Grip

obj312 = Instance.new("Part")

obj312.CFrame = CFrame.new(Vector3.new(15.0880957, 13.0936527, -9.96266651)) * CFrame.Angles(-1.5707969665527, 0.4506810605526, 1.5707964897156)

obj312.FormFactor = 'Custom'

obj312.LeftSurface = 10

obj312.TopSurface = 10

obj312.RightSurface = 10

obj312.Material = 'SmoothPlastic'

obj312.Size = Vector3.new(1, 1, 1)

obj312.FrontSurface = 10

obj312.BottomSurface = 10

obj312.BackSurface = 10

obj312.Anchored = true

obj312.BrickColor = BrickColor.new("Black")

obj312.Name = "Grip"

obj312.Parent = Gun



-- 313 - Mesh

obj313 = Instance.new("SpecialMesh")

obj313.MeshType = Enum.MeshType.Wedge

obj313.Scale = Vector3.new(0.15384616, 0.292307675, 0.0384615399)

obj313.Parent = obj312



-- 314 - Grip

obj314 = Instance.new("Part")

obj314.CFrame = CFrame.new(Vector3.new(15.3420925, 13.5396538, -9.96266651)) * CFrame.Angles(-3.141592502594, 0, 3.141592502594)

obj314.FormFactor = 'Custom'

obj314.LeftSurface = 10

obj314.TopSurface = 10

obj314.RightSurface = 10

obj314.Material = 'SmoothPlastic'

obj314.Size = Vector3.new(1, 1, 1)

obj314.FrontSurface = 10

obj314.BottomSurface = 10

obj314.BackSurface = 10

obj314.Anchored = true

obj314.BrickColor = BrickColor.new("Black")

obj314.Name = "Grip"

obj314.Parent = Gun



-- 315 - Mesh

obj315 = Instance.new("SpecialMesh")

obj315.MeshType = Enum.MeshType.Brick

obj315.Scale = Vector3.new(0.246153772, 0.184615359, 0.138461545)

obj315.Parent = obj314



-- 316 - Grip

obj316 = Instance.new("Part")

obj316.CFrame = CFrame.new(Vector3.new(15.0360937, 13.2256517, -9.96266651)) * CFrame.Angles(3.141592502594, 2.254989794892e-008, -2.6909120082855)

obj316.FormFactor = 'Custom'

obj316.LeftSurface = 10

obj316.TopSurface = 10

obj316.RightSurface = 10

obj316.Material = 'SmoothPlastic'

obj316.Size = Vector3.new(1, 1, 1)

obj316.FrontSurface = 10

obj316.BottomSurface = 10

obj316.BackSurface = 10

obj316.Anchored = true

obj316.BrickColor = BrickColor.new("Black")

obj316.Name = "Grip"

obj316.Parent = Gun



-- 317 - Mesh

obj317 = Instance.new("SpecialMesh")

obj317.MeshType = Enum.MeshType.Brick

obj317.Scale = Vector3.new(0.0846153945, 0.15384616, 0.138461545)

obj317.Parent = obj316



-- 318 - Handle

obj318 = Instance.new("Part")

obj318.CFrame = CFrame.new(Vector3.new(15.3370953, 13.2296524, -9.96266651)) * CFrame.Angles(-1.5707966089249, -1.1201161146164, 1.570796251297)

obj318.FormFactor = 'Custom'

obj318.LeftSurface = 10

obj318.TopSurface = 10

obj318.RightSurface = 10

obj318.Material = 'SmoothPlastic'

obj318.Size = Vector3.new(1, 1, 1)

obj318.FrontSurface = 10

obj318.BottomSurface = 10

obj318.BackSurface = 10

obj318.Anchored = true

obj318.BrickColor = BrickColor.new("Black")

obj318.Name = "Handle"

obj318.Parent = Gun



-- 319 - Mesh

obj319 = Instance.new("SpecialMesh")

obj319.MeshType = Enum.MeshType.Wedge

obj319.Scale = Vector3.new(0.15384616, 0.502307534, 0.0384615399)

obj319.Parent = obj318



-- 320 - Grip

obj320 = Instance.new("Part")

obj320.CFrame = CFrame.new(Vector3.new(15.1450949, 13.4506531, -9.96266651)) * CFrame.Angles(1.5707960128784, -0.45067909359932, 1.5707963705063)

obj320.FormFactor = 'Custom'

obj320.LeftSurface = 10

obj320.TopSurface = 10

obj320.RightSurface = 10

obj320.Material = 'SmoothPlastic'

obj320.Size = Vector3.new(1, 1, 1)

obj320.FrontSurface = 10

obj320.BottomSurface = 10

obj320.BackSurface = 10

obj320.Anchored = true

obj320.BrickColor = BrickColor.new("Black")

obj320.Name = "Grip"

obj320.Parent = Gun



-- 321 - Mesh

obj321 = Instance.new("SpecialMesh")

obj321.MeshType = Enum.MeshType.Wedge

obj321.Scale = Vector3.new(0.15384616, 0.0846153945, 0.346153855)

obj321.Parent = obj320



-- 322 - Grip

obj322 = Instance.new("Part")

obj322.CFrame = CFrame.new(Vector3.new(15.2410946, 13.313652, -9.96266651)) * CFrame.Angles(3.1415922641754, -1.5529582952922e-008, -2.6909120082855)

obj322.FormFactor = 'Custom'

obj322.LeftSurface = 10

obj322.TopSurface = 10

obj322.RightSurface = 10

obj322.Material = 'SmoothPlastic'

obj322.Size = Vector3.new(1, 1, 1)

obj322.FrontSurface = 10

obj322.BottomSurface = 10

obj322.BackSurface = 10

obj322.Anchored = true

obj322.BrickColor = BrickColor.new("Black")

obj322.Name = "Grip"

obj322.Parent = Gun



-- 323 - Mesh

obj323 = Instance.new("SpecialMesh")

obj323.MeshType = Enum.MeshType.Brick

obj323.Scale = Vector3.new(0.207692266, 0.492307663, 0.138461545)

obj323.Parent = obj322



-- 324 - Grip

obj324 = Instance.new("Part")

obj324.CFrame = CFrame.new(Vector3.new(15.4160967, 13.3276529, -9.96266651)) * CFrame.Angles(-1.5707966089249, 0.51469540596008, -1.5707963705063)

obj324.FormFactor = 'Custom'

obj324.LeftSurface = 10

obj324.TopSurface = 10

obj324.RightSurface = 10

obj324.Material = 'SmoothPlastic'

obj324.Size = Vector3.new(1, 1, 1)

obj324.FrontSurface = 10

obj324.BottomSurface = 10

obj324.BackSurface = 10

obj324.Anchored = true

obj324.BrickColor = BrickColor.new("Black")

obj324.Name = "Grip"

obj324.Parent = Gun



-- 325 - Mesh

obj325 = Instance.new("SpecialMesh")

obj325.MeshType = Enum.MeshType.Wedge

obj325.Scale = Vector3.new(0.15384616, 0.0384615399, 0.0230769273)

obj325.Parent = obj324



scan(Gun)





local rm = Instance.new("Weld")

rm.C0 = CFrame.new(1.5, 0.5, 0)

rm.C1 = CFrame.new(0, 0.5, 0)

rm.Part0 = torso

rm.Part1 = ra



local lm = Instance.new("Weld")

lm.C0 = CFrame.new(-1.5, 0.5, 0)

lm.C1 = CFrame.new(0, 0.5, 0)

lm.Part0 = torso

lm.Part1 = la



local tool = Instance.new('HopperBin', plr.Backpack)

tool.Name = 'M16A4'



local hw = Instance.new('Weld', char)

hw.Part0 = Gun.CenterWeld

hw.Part1 = torso

hw.C1 = CFrame.new(0,.2,.55)

hw.C0 = CFrame.Angles(0,-math.pi/2,math.pi/4)



local RS = game:service'RunService'.RenderStepped

local rsc0 = rm.C0

local lsc0 = lm.C0

local lhc0 = lh.C0

local rhc0 = rh.C0

local angle = 0

local anglespeed = .5

local speed = .3

local rootc0 = rj.C0

local neckc0 = neck.C0

local firing

local auto

local maxammo = 25

local ammo = maxammo

local recoil = 0

local maxrecoil = 2;



local bodygyro = Instance.new('BodyGyro')

bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)

bodygyro.P = 10000



local EffectsM = Instance.new('Model', workspace)

EffectsM.Name = 'GunEffects'



game:service'RunService'.Stepped:connect(function()

    if EffectsM.Parent == nil then

        EffectsM = Instance.new('Model', workspace)

        EffectsM.Name = 'GunEffects'

    end

end)



function DoRayCast(obj, speed, dmg, mouse, recoil)

        if not humanoid.Sit then

            bodygyro.Parent = rootpart

        end

            local fireeffect = Instance.new('Fire', obj)

            fireeffect.Size = 0

            game:service'Debris':AddItem(fireeffect,.15)



            local muzzle = Instance.new('PointLight', obj)

            muzzle.Range = 12

            muzzle.Color = Color3.new(1,.6,.1)

            game:service'Debris':AddItem(muzzle, .05)



            local pa = Instance.new('Part')

            pa.CanCollide = false

            pa.Anchored = true

            pa.Locked = true

            pa.TopSurface = 0

            pa.BottomSurface = 0

            pa.FormFactor = 'Custom'

            pa.BrickColor = BrickColor.new('Brick yellow')

            pa.Size = Vector3.new(.2,80,.2)

            pa.Transparency = .4

            pa.Material = "Neon";



            local shell = pa:clone()

            shell.Transparency = 0

            shell:ClearAllChildren()

            shell.Anchored = false

            shell.CFrame = Gun.CenterWeld.CFrame * CFrame.new(.2,0,0)

            shell.Size = Vector3.new(.2,.5,.2)

            shell.Parent = EffectsM

            shell.BrickColor = BrickColor.new('Bright yellow')

            shell.CanCollide = true

            Instance.new('BlockMesh', shell).Scale = Vector3.new(.2,.4,.2)

            game:service'Debris':AddItem(shell,25)

            shell.Velocity = (Gun.CenterWeld.CFrame * CFrame.Angles(math.rad(math.random(-10,10)*8), -math.rad(40), math.rad(20))).lookVector * 15



            bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(mouse.Hit.x,torso.Position.y,mouse.Hit.z))



            local bulletpos = obj.Position

            local bulletvelocity = Vector3.new(math.random(-recoil*10,recoil*10)/10, math.random(-recoil*10,recoil*10)/10, math.random(-recoil*10,recoil*10)/10)+(mouse.Hit.p - bulletpos).unit*speed

            local lastbulletpos = obj.Position 

            local fire = Instance.new('Sound', head)

            fire.SoundId = "rbxassetid://150204147"

            fire.Volume = 1

            fire:play()

            coroutine.wrap(function()

                while true do

                    dt = RS:wait();

                    lastbulletpos = bulletpos 

                    bulletvelocity = bulletvelocity - Vector3.new(0, 9.81*.2, 0)*dt

                    bulletpos = bulletpos + bulletvelocity 

                    local RayCast = Ray.new(lastbulletpos, (bulletpos - lastbulletpos))

                    local hit, hitpos, normal = workspace:FindPartOnRayWithIgnoreList(RayCast, {char,EffectsM})

                    if (torso.Position - pa.Position).magnitude > 1600 then

                        pa:Destroy()

                        break

                    end

                    pa.Anchored = true

                    pa.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)

                    pa.Parent = char

                    if hit then

                        local damage

                        local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'

                        if hum then

                            damage = 0

                            hum.Health = hum.Health - damage

                        end

                        local hum2 = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'

                        if hum2 then

                            damage = 0

                            hum2.Health = hum2.Health - damage

                        end

                        local BulletHole

                        local Dec

                        if not hum and not hum2 then

                            BulletHole = pa:clone()

                            Particles.BulletholeParticles(BulletHole, hit)

                            BulletHole.Transparency = 1

                            BulletHole.Size = Vector3.new(.8,.2,.8)

                            BulletHole.CFrame = CFrame.new(hitpos, hitpos+normal) * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)

                            BulletHole.Parent = EffectsM

                            Dec = Instance.new("Decal",BulletHole)

                            Dec.Texture = "rbxassetid://64291977"

                            if not hit.Anchored then

                                BulletHole.Anchored = false

                                local Bweld = Instance.new('Weld', BulletHole)

                                Bweld.Part0 = hit

                                Bweld.Part1 = BulletHole

                                Bweld.C0 = hit.CFrame:toObjectSpace(CFrame.new(hitpos, hitpos+normal)) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)

                            end

                            game:service'Debris':AddItem(BulletHole, 25)

                        end

                        local sound = Instance.new('Sound', pa)

                        if hit:IsA'BasePart' and hit.Transparency >= .1 then

                            local id = {176678459,176678487,176678351}

                            if Dec then

                                Dec.Texture = "rbxassetid://"..id[math.random(1,#id)]

                            end

                            if BulletHole then

                                Particles.BulletholeParticles(BulletHole, hit)

                                BulletHole.Size = Vector3.new(1.5,1.5,.2)

                                BulletHole.CFrame = CFrame.new(hitpos,hitpos+normal)*CFrame.new(0,0,.1)*CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)

                                if not hit.Anchored then

                                    BulletHole.Anchored = false

                                    local Bweld = Instance.new('Weld', BulletHole)

                                    Bweld.Part0 = hit

                                    Bweld.Part1 = BulletHole

                                    Bweld.C0 = hit.CFrame:toObjectSpace(CFrame.new(hitpos, hitpos+normal)) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)

                                end

                            end

                            sound.SoundId = "rbxassetid://142082167"

                        else

                            sound.SoundId = "rbxassetid://170538363"

                        end

                        sound.Pitch = 1.2+math.random()/3

                        sound.Volume = .4

                        sound:play()

                        game:service'Debris':AddItem(sound,4)

                        pa.Size = Vector3.new(.2,(lastbulletpos - hitpos).magnitude,.2)

                        pa.CFrame = CFrame.new(lastbulletpos, hitpos) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-(lastbulletpos - hitpos).magnitude/2,0)

                        RS:wait()

                        pa:Destroy()

                        break

                    end

                    pa.Anchored = true

                    pa.Parent = char

                    pa.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)

                end

            end)()

end



local accuracymain = Instance.new("ScreenGui", plr.PlayerGui)

accuracymain.Name = 'GunAccuracyFrame'

local accuracyFrame = Instance.new("Frame", accuracymain)

accuracyFrame.Size = UDim2.new(0, 30, 0, 30)

accuracyFrame.BackgroundTransparency = 1

game:service'RunService'.RenderStepped:connect(function()

    accuracyFrame.Position = UDim2.new(0, plr:GetMouse().X-accuracyFrame.Size.X.Offset/2, 0, plr:GetMouse().Y-accuracyFrame.Size.Y.Offset/2)

end)

local accuracy1 = Instance.new("Frame", accuracyFrame)

accuracy1.BackgroundColor = BrickColor.new("White")

accuracy1.Size = UDim2.new(0, 8, 0, 2)

accuracy1.Position = UDim2.new(0, 0, .5, -1)

local accuracy2 = Instance.new("Frame", accuracyFrame)

accuracy2.BackgroundColor = BrickColor.new("White")

accuracy2.Size = UDim2.new(0, 8, 0, 2)

accuracy2.Position = UDim2.new(1, -8, .5, -1)

local accuracy3 = Instance.new("Frame", accuracyFrame)

accuracy3.BackgroundColor = BrickColor.new("White")

accuracy3.Size = UDim2.new(0, 2, 0, 8)

accuracy3.Position = UDim2.new(.5, -1, 0, 0)

local accuracy4 = Instance.new("Frame", accuracyFrame)

accuracy4.BackgroundColor = BrickColor.new("White")

accuracy4.Size = UDim2.new(0, 2, 0, 8)

accuracy4.Position = UDim2.new(.5, -1, 1, -8)

accuracyFrame.Visible = false



tool.Selected:connect(function(mouse)

    accuracyFrame.Visible = true

    mouse.Icon = "rbxassetid://75216962"

    rm.Parent = torso

    lm.Parent = torso

    hw.Part1 = ra

    hw.C0 = CFrame.new()

    hw.C1 = CFrame.new(-.3,-1.4,-.5)

    for i = 0, 90, 15 do

        neck.C0 = neckc0 * CFrame.Angles(0,0,math.rad(i/2))

        rj.C0 = rootc0 * CFrame.Angles(0,0,-math.rad(i/2))

        rm.C0 = rsc0 * CFrame.Angles(math.rad(i),0,-math.rad(i/2))

        lm.C0 = lsc0 * CFrame.Angles(math.rad(i),0,math.rad(i/4)) * CFrame.new(0,-i/(90*1.45),0)

        RS:wait()

    end

    mouse.KeyDown:connect(function(k)

        if k == "c" then

            crouch = not crouch

            if crouch then

                while crouch do

                    if not crouch then break end

                    RS:wait()

                    humanoid.WalkSpeed = 10

                    if Vector3.new(torso.Velocity.x,0,torso.Velocity.z).magnitude < .5 and torso.RotVelocity.y < .5 then

                        humanoid.CameraOffset = Vector3.new(0,-1,0)

                        rj.C0 = rootc0 * CFrame.new(0,0,-1) * CFrame.Angles(0,0,-math.rad(45))

                        lh.C0 = lhc0 * CFrame.new(-.75,-.15,0) * CFrame.Angles(0,0,math.rad(70))

                        rh.C0 = rhc0 * CFrame.new(.75,.75,0) * CFrame.Angles(0,0,-math.rad(20))

                    else

                        humanoid.CameraOffset = Vector3.new(0,-.7,0)

                        rj.C0 = rootc0 * CFrame.new(0,0,-.7) * CFrame.Angles(0,0,-math.rad(45))

                        lh.C0 = lhc0 * CFrame.new(-.4,.65,0) * CFrame.Angles(0,0,math.rad(2))

                        rh.C0 = rhc0 * CFrame.new(.4,.65,0) * CFrame.Angles(0,0,-math.rad(2))

                    end

                end

            else

                humanoid.CameraOffset = Vector3.new(0,0,0)

                humanoid.WalkSpeed = 16

                RS:wait()

                RS:wait()

                humanoid.CameraOffset = Vector3.new(0,0,0)

                humanoid.WalkSpeed = 16

                rj.C0 = rootc0 * CFrame.Angles(0,0,-math.rad(45))

                lh.C0 = lhc0

                rh.C0 = rhc0

            end

        end

        if k == "r" then

            if firing or auto or ammo >= maxammo then return end

            firing = true

            local sound = Instance.new('Sound', head)

            sound.SoundId = "rbxassetid://144798533"

            sound.Volume = .5

            sound:play()

            game:service'Debris':AddItem(sound,15)

            for i = 0, 90, 15 do

                lm.C0 = lsc0 * CFrame.Angles(math.rad(90) - math.rad(i/1.1),0,math.rad(90/4)-math.rad(i/5)) * CFrame.new(0,-90/(90*1.45),0)

                RS:wait()

            end

            ammo = maxammo

            wait(2)

            for i = 90, 0, -15 do

                lm.C0 = lsc0 * CFrame.Angles(math.rad(90) - math.rad(i/1.1),0,math.rad(90/4)-math.rad(i/5)) * CFrame.new(0,-90/(90*1.45),0)

                RS:wait()

            end

            wait(.7)

            for i = 0, 90, 15 do

                lm.C0 = lsc0 * CFrame.new(i/90*.5, 0, i/90*.5) * CFrame.Angles(math.rad(110),0,math.rad(90/4)) * CFrame.new(0,-90/(90*1.45),0)

                RS:wait()

            end

            wait(.3)

            for i = 90, 0, -15 do

                lm.C0 = lsc0 * CFrame.new(i/90*.5, 0, i/90*.5) * CFrame.Angles(math.rad(110),0,math.rad(90/4)) * CFrame.new(0,-90/(90*1.45),0)

                RS:wait()

            end

            lm.C0 = lsc0 * CFrame.Angles(math.rad(90),0,math.rad(90/4)) * CFrame.new(0,-90/(90*1.45),0)

            firing = false

        end

    end)

    mouse.Button1Down:connect(function()

        if auto or firing then return end

        auto = true

        while true do

            if ammo <= 0 then

                auto = false

                firing = false

                local sound = Instance.new('Sound', head)

                sound.SoundId = "rbxassetid://132464034"

                sound.Volume = .35

                sound:play()

                game:service'Debris':AddItem(sound,1)

                break

            end

            if not auto or firing then break end

            ammo = ammo - 1

            firing = true

            if crouch then

                recoil = recoil + .15

            else

                recoil = recoil + .3

            end

            recoil = math.min(maxrecoil, recoil);

            accuracy1.Position = UDim2.new(0, -recoil*10, .5, -1)

            accuracy2.Position = UDim2.new(1, -8 + recoil*10, .5, -1)

            accuracy3.Position = UDim2.new(.5, -1, 0, -recoil*10)

            accuracy4.Position = UDim2.new(.5, -1, 1, -8 + recoil*10)



            local value = math.random(-10,10)*50

            local dist = (head.Position - camera.CoordinateFrame.p).magnitude*2



            camera.Focus = camera.Focus * CFrame.new(math.rad(math.sin(value)/4)*dist, math.rad((2)/4)*dist, 0)



            DoRayCast(Gun.FireHole, 40, 10, mouse, recoil)

            coroutine.wrap(function()

            for i = 0, 10, 2.5 do

                neck.C0 = neckc0 * CFrame.Angles(0,0,math.rad(90/2))

                rm.C0 = rsc0 * CFrame.Angles(math.rad(90)+math.rad(i),0,-math.rad(90/2)) * CFrame.new(0,-i/(90),0)

                lm.C0 = lsc0 * CFrame.Angles(math.rad(90)+math.rad(i),0,math.rad(90/4)) * CFrame.new(0,-90/(90*1.45) + -i/(90),0)

                RS:wait()

            end

            for i = 10, 0, -2.5 do



                local dist = (head.Position - camera.CoordinateFrame.p).magnitude*2

                camera.Focus = camera.Focus * CFrame.new(-math.rad(math.sin(value)/4)*dist/(10), -math.rad(2/4)*dist/(10), 0)



                neck.C0 = neckc0 * CFrame.Angles(0,0,math.rad(90/2))

                rm.C0 = rsc0 * CFrame.Angles(math.rad(90)+math.rad(i),0,-math.rad(90/2)) * CFrame.new(0,-i/(90),0)

                lm.C0 = lsc0 * CFrame.Angles(math.rad(90)+math.rad(i),0,math.rad(90/4)) * CFrame.new(0,-90/(90*1.45) + -i/(90),0)

                RS:wait()

            end

            end)()

            wait(.0175)

            firing = false

            wait(.015)

            if not auto or firing then break end

        end

        repeat RS:wait()

            recoil = recoil - .05

            accuracy1.Position = UDim2.new(0, -recoil*10, .5, -1)

            accuracy2.Position = UDim2.new(1, -8 + recoil*10, .5, -1)

            accuracy3.Position = UDim2.new(.5, -1, 0, -recoil*10)

            accuracy4.Position = UDim2.new(.5, -1, 1, -8 + recoil*10)

        until recoil <= 0 or auto

            recoil = 0

            accuracy1.Position = UDim2.new(0, -recoil*10, .5, -1)

            accuracy2.Position = UDim2.new(1, -8 + recoil*10, .5, -1)

            accuracy3.Position = UDim2.new(.5, -1, 0, -recoil*10)

            accuracy4.Position = UDim2.new(.5, -1, 1, -8 + recoil*10)

    end)

    mouse.Button1Up:connect(function()

        if firing then

            repeat RS:wait() until firing == false

        end

        auto = false

        wait(1)

        if not auto then

            bodygyro.Parent = nil

        end

    end)

end)

tool.Deselected:connect(function()

    accuracyFrame.Visible = false

    humanoid.CameraOffset = Vector3.new(0,0,0)

    lh.C0 = lhc0

    rh.C0 = rhc0

    crouch = false

    humanoid.WalkSpeed = 16

    for i = 90, 0, -15 do

        neck.C0 = neckc0 * CFrame.Angles(0,0,math.rad(i/2))

        rj.C0 = rootc0 * CFrame.Angles(0,0,-math.rad(i/2))

        rm.C0 = rsc0 * CFrame.Angles(math.rad(i),0,-math.rad(i/2))

        lm.C0 = lsc0 * CFrame.Angles(math.rad(i),0,math.rad(i/4)) * CFrame.new(0,-i/(90*1.45),0)

        RS:wait()

    end

    humanoid.WalkSpeed = 16

    humanoid.CameraOffset = Vector3.new(0,0,0)

    lh.C0 = lhc0

    rh.C0 = rhc0

    hw.Part0 = Gun.CenterWeld

    hw.Part1 = torso

    hw.C1 = CFrame.new(0,.2,.55)

    hw.C0 = CFrame.Angles(0,-math.pi/2,math.pi/4)

    rm.Parent = nil

    lm.Parent = nil

    ls.Parent = torso

    rs.Parent = torso

end)
