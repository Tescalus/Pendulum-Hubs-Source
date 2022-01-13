--SUICIDE GUN REBORN BY DMS
loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()
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
local hat = Align(char['Flamethrower Back'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-1,-.5)*CFrame.Angles(math.rad(265),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)




local player=game:GetService("Players").LocalPlayer
local char=game.Workspace.non
local mouse=player:GetMouse()

local m = Instance.new("Model")
m.Name = "Flamethrower"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p1.CFrame = CFrame.new(-4.31863213, 1.2999835, 26.8280258, 0.898792505, -0.438372105, 6.44474255e-007, 4.2475844e-007, -8.7068031e-007, 0.999996066, -0.438369185, -0.898793578, 7.74858847e-007)
p1.CanCollide = false
b1 = Instance.new("CylinderMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.699999988, 1, 1.39999998)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000003, 0.799999952, 0.200000003)
p2.CFrame = CFrame.new(-4.22384691, 1.29998171, 27.1336765, -0.945517242, 0.325569242, 6.44474255e-007, -5.4352688e-007, 9.19547631e-007, 0.999996066, 0.325566202, 0.945517898, 7.74858847e-007)
p2.CanCollide = false
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.899999976, 1, 1.5)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Black")
p3.Material = Enum.Material.Grass
p3.Name = "Handle2"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
p3.CFrame = CFrame.new(-4.36384678, 1.48997498, 26.7136898, 0.998628676, -0.0523356572, 1.65257313e-006, 0.0505531132, 0.964598, 0.258818507, -0.0135439271, -0.258463174, 0.96592474)
p3.CanCollide = false
b3 = Instance.new("CylinderMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.699999988, 1, 1.39999998)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p4.CFrame = CFrame.new(-4.08384609, 1.29998279, 26.8336773, 6.66825997e-007, 1.56834642e-006, 0.999999166, 0.999996066, 6.85452505e-007, 7.1152931e-007, 8.0466117e-007, 0.999998689, 1.56834619e-006)
p4.CanCollide = false
b4 = Instance.new("CylinderMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(1.20000005, 0.5, 1.78999996)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
p5.CFrame = CFrame.new(-4.08383894, 1.29998529, 27.6837158, 6.66825997e-007, 1.56834642e-006, 0.999999166, 0.999996066, 6.85452505e-007, 7.1152931e-007, 8.0466117e-007, 0.999998689, 1.56834619e-006)
p5.CanCollide = false
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 1, 1.70000005)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.Size = Vector3.new(1, 1.20000005, 1)
p6.CFrame = CFrame.new(-4.07870293, 1.24756896, 29.8614006, -0.0122325243, 0.00382106518, 0.999915302, 0.999817967, -0.0144664943, 0.0122870263, 0.0145196915, 0.999886394, -0.0036436012)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.461538464, 0.769230723, 0.461538464)
b7 = Instance.new("CylinderMesh", p6)
b7.Name = "Mesh"
b7.Scale = Vector3.new(1, 0.899999976, 0.439999998)
d1 = Instance.new("Decal", p6)
d1.Texture = "http://www.roblox.com/asset/?id=85448092"
d1.Face = Enum.NormalId.Top
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Institutional white")
p7.Size = Vector3.new(1, 1.20000005, 1)
p7.CFrame = CFrame.new(-4.08290291, 1.26348102, 28.7615242, -0.0122325243, 0.00382106518, 0.999915302, 0.999817967, -0.0144664943, 0.0122870263, 0.0145196915, 0.999886394, -0.0036436012)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p7)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.15384616, 1, 0.307692319)
b9 = Instance.new("CylinderMesh", p7)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1.70000005, 1.10000002, 0.300000012)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Really black")
p8.Name = "Barrel"
p8.Size = Vector3.new(1, 1.20000005, 1)
p8.CFrame = CFrame.new(-4.07320023, 1.24000597, 30.3669701, 0.999916196, 0.00121372147, 0.0126282591, 0.0122011788, 0.18082355, -0.983437181, -0.00347740925, 0.983514667, 0.180784032)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p8)
b10.MeshId = "http://www.roblox.com/asset/?id=1091603"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.288717359, 0.288717419, 0.288717419)
p9.CFrame = CFrame.new(-4.12095404, 1.04495895, 29.1705666, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p9)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.37011397, 0.164413691, 1.50712562)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Institutional white")
p10.Size = Vector3.new(1, 1.20000005, 1)
p10.CFrame = CFrame.new(-4.07969093, 1.060624, 28.9585953, -0.999915302, -0.0122325243, -0.00382106518, -0.0122870263, 0.999817967, 0.0144664943, 0.0036436012, 0.0145196915, -0.999886394)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p10)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.15384616, 0.153846145, 1)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Institutional white")
p11.Name = "Handle"
p11.Size = Vector3.new(1, 1.20000005, 1)
p11.CFrame = CFrame.new(-4.07311201, 0.707809985, 28.6968918, -0.999919653, 0.0111990925, 0.00594851235, -0.0121958125, -0.977798998, -0.209190041, 0.00347371167, -0.209245741, 0.977856994)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p11)
b13.MeshType = Enum.MeshType.Brick
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.15384616, 0.538461506, 0.307692319)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p12.CFrame = CFrame.new(-4.08139706, 0.981667995, 29.0914536, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p12)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.351311207, 0.351311326, 0.175655678)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p13.CFrame = CFrame.new(-4.08139706, 0.882772982, 29.1310101, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p13)
b15.MeshType = Enum.MeshType.Wedge
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.351311207, 0.175655663, 0.175655678)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p14.CFrame = CFrame.new(-4.08139706, 0.882772982, 29.2496853, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p14)
b16.MeshType = Enum.MeshType.Wedge
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.351311207, 0.175655663, 0.175655678)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p15.CFrame = CFrame.new(-4.08139706, 0.922330976, 29.0914536, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p15)
b17.MeshType = Enum.MeshType.Brick
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.351311207, 0.175655663, 0.175655678)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p16.CFrame = CFrame.new(-4.12095404, 0.831354022, 28.9332237, 1, 4.23044048e-006, -3.67623443e-006, 4.23044048e-006, 1, 1.40141863e-008, -3.67623443e-006, 1.40141863e-008, 1)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p16)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(1.75655627, 1.68629432, 0.175655678)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p17.CFrame = CFrame.new(-4.12095404, 0.878817022, 28.9727783, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p17)
b19.MeshType = Enum.MeshType.Brick
b19.Name = "Mesh"
b19.Scale = Vector3.new(1.75655627, 1.2647208, 0.175655678)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p18.CFrame = CFrame.new(-4.08139706, 0.882772982, 29.0914536, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p18)
b20.MeshType = Enum.MeshType.Brick
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.351311207, 0.175655663, 0.175655678)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.799999356, 0.200000003, 0.399999857)
p19.CFrame = CFrame.new(-4.08384228, 0.900013506, 26.983717, -9.93235176e-007, 0.999998927, 1.46056539e-006, -0.987684608, 6.33298328e-007, -0.156433105, -0.156434968, 1.56834574e-006, 0.987686932)
p19.CanCollide = false
b21 = Instance.new("BlockMesh", p19)
b21.Name = "Mesh"
b21.Scale = Vector3.new(1, 1, 0.699999988)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p20.CFrame = CFrame.new(-4.12095404, 0.700815022, 29.0321178, 1, -5.8353038e-008, -6.71499549e-008, 6.71499549e-008, 2.22569144e-010, -1, -5.8353038e-008, 1, -2.22569144e-010)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p20)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(1.75655627, 0.702622652, 0.175655678)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p21.CFrame = CFrame.new(-4.12095404, 0.700815022, 29.3090191, -1, -0, -0, -0, -0, -1, -0, -1, -0)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p21)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
b23.Scale = Vector3.new(1.75655627, 0.702622652, 0.175655678)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.799999356, 0.200000003, 0.200000003)
p22.CFrame = CFrame.new(-4.08384562, 0.887999296, 27.1074524, -9.93235176e-007, 0.999998927, 1.46056539e-006, -0.987684608, 6.33298328e-007, -0.156433105, -0.156434968, 1.56834574e-006, 0.987686932)
p22.CanCollide = false
b24 = Instance.new("BlockMesh", p22)
b24.Name = "Mesh"
b24.Scale = Vector3.new(1, 0.300000012, 0.899999976)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p23.CFrame = CFrame.new(-4.08139706, 0.843216002, 29.1705666, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p23)
b25.MeshType = Enum.MeshType.Brick
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.351311207, 0.175655663, 0.878278494)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Really black")
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.474551886, 0.474551976, 0.474551976)
p24.CFrame = CFrame.new(-4.14073181, 0.728498995, 28.9727783, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p24)
b26.MeshType = Enum.MeshType.Brick
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.750219524, 0.0333430953, 0.0833577439)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.225199535, 0.22519955, 0.22519958)
p25.CFrame = CFrame.new(-4.12095404, 0.661257982, 29.1705666, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p25)
b27.MeshType = Enum.MeshType.Brick
b27.Name = "Mesh"
b27.Scale = Vector3.new(1.75655627, 0.175655663, 1.93221235)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Really black")
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.474551886, 0.474551976, 0.474551976)
p26.CFrame = CFrame.new(-4.12095404, 0.601921976, 29.1705666, 1, -0, 0, 0, -0, 1, 0, -1, 0)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p26)
b28.MeshType = Enum.MeshType.Wedge
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.833577335, 0.916935086, 0.166715518)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Dark stone grey")
p27.Transparency = 1
p27.Name = "Handle3"
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(1, 1.4000001, 0.200000033)
p27.CFrame = CFrame.new(-4.08382893, 0.999998987, 28.0838623, 0.999999404, -1.18091657e-006, 5.96045709e-007, 5.96045652e-007, -6.55650126e-007, 0.999996662, 1.18091657e-006, -0.999998808, 6.55650069e-007)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p27)
b29.MeshType = Enum.MeshType.Wedge
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.25, 0.25, 0.200000003)
m.Parent = char
m:MakeJoints()


local m2 = Instance.new("Model")
m2.Name = "Fueltank"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.400000036, 0.200000003, 0.200000003)
p1.CFrame = CFrame.new(-0.283439994, 0.479694009, -15.516386, 1.56834642e-006, -6.78001982e-007, 0.999999046, 5.96045879e-007, -0.999996066, 6.63100707e-007, 0.999998689, -8.64265758e-007, 1.59814817e-006)
b1 = Instance.new("CylinderMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(2, 1.5, 1)
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Institutional white")
p2.Material = Enum.Material.Neon
p2.Name = "ChangeColor"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.400000036, 1.19999981, 1)
p2.CFrame = CFrame.new(0.116168, 1.10000396, -15.0161295, 1.56834642e-006, -6.78001982e-007, 0.999999046, 5.96045879e-007, -0.999996066, 6.63100707e-007, 0.999998689, -8.64265758e-007, 1.59814817e-006)
p2.CanCollide = false
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(2, 1, 1)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Mid gray")
p3.Material = Enum.Material.Neon
p3.Name = "FuelCenter"
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.400000036, 0.799999833, 1)
p3.CFrame = CFrame.new(-0.283439994, 1.19967496, -15.5163736, 1.56834642e-006, -6.78001982e-007, 0.999999046, 5.96045879e-007, -0.999996066, 6.63100707e-007, 0.999998689, -8.64265758e-007, 1.59814817e-006)
b3 = Instance.new("CylinderMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(1.39999998, 1, 1)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Really black")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p4.CFrame = CFrame.new(0.125933915, 0.449839592, -15.0262089, 0.000333837903, 0.000261210633, 0.999998927, -0.999996006, -5.68053565e-007, 0.000335178163, -7.72354667e-007, -0.999998629, 0.000264377333)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Sphere
b4.Name = "Mesh"
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p5.CFrame = CFrame.new(-0.283836007, 1.60003495, -15.5161457, -6.74276521e-007, -1.59814874e-006, 0.999998927, -0.999996066, -5.96045879e-007, 6.44474198e-007, -7.74858904e-007, -0.999998748, 1.56834574e-006)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Sphere
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.709999979, 0.709999979, 0.709999979)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.400000036, 0.200000003, 0.200000003)
p6.CFrame = CFrame.new(0.116157003, 2.09999895, -15.0161324, 1.5385441e-006, -6.66825883e-007, 0.999999046, 6.85452505e-007, -0.999996066, 6.74276464e-007, 0.999998748, -7.15254316e-007, 1.53854353e-006)
b6 = Instance.new("CylinderMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(2, 1, 1)
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p7.CFrame = CFrame.new(0.116163999, 1.70000398, -15.0161362, 1.56834642e-006, -6.78001982e-007, 0.999999046, 5.96045879e-007, -0.999996066, 6.63100707e-007, 0.999998689, -8.64265758e-007, 1.59814817e-006)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Sphere
b7.Name = "Mesh"
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Really black")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p8.CFrame = CFrame.new(-0.283437014, 0.779699028, -15.5163822, -6.74276521e-007, -1.59814874e-006, 0.999998927, -0.999996066, -5.96045879e-007, 6.44474198e-007, -7.74858904e-007, -0.999998748, 1.56834574e-006)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Sphere
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.709999979, 0.709999979, 0.709999979)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.400000036, 0.200000003, 0.200000003)
p9.CFrame = CFrame.new(-0.28343299, 0.279718012, -15.5163898, 7.71134239e-007, 0.999998987, -1.59814874e-006, 0.999996066, 6.18397394e-007, -5.96045879e-007, 9.23870459e-007, 1.59814817e-006, -0.999998748)
b9 = Instance.new("CylinderMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(2, 1.5, 1)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p10.CFrame = CFrame.new(-0.68383199, 1.701056, -15.012146, -5.82017606e-007, 0.000486697129, 0.999998808, -0.999639988, -0.026683826, 1.37168181e-005, 0.0266824923, -0.999642611, 0.000489670201)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshType = Enum.MeshType.Sphere
b10.Name = "Mesh"
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Institutional white")
p11.Material = Enum.Material.Neon
p11.Name = "ChangeColor2"
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.400000036, 1.19999981, 1)
p11.CFrame = CFrame.new(-0.683839977, 1.100003, -15.0161276, 1.3895326e-006, -6.48199716e-007, 0.999999166, 5.66243557e-007, -0.999996305, 6.33298498e-007, 0.999998689, -8.34463606e-007, 1.4491369e-006)
p11.CanCollide = false
b11 = Instance.new("CylinderMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(2, 1, 1)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.400000036, 0.200000003, 0.200000003)
p12.CFrame = CFrame.new(-0.683830023, 2.10087895, -15.0254364, -0.000486697129, -7.13852432e-006, 0.999998868, 0.0266838577, -0.999639928, 7.20503476e-006, 0.999642491, 0.0266825818, 0.00048978941)
b12 = Instance.new("CylinderMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(2, 1, 1)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.799999356, 0.799999356, 0.799999356)
p13.CFrame = CFrame.new(-0.683435977, 0.499675006, -15.0163736, -6.74276521e-007, -1.59814874e-006, 0.999998927, -0.999996066, -5.96045879e-007, 6.44474198e-007, -7.74858904e-007, -0.999998748, 1.56834574e-006)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshType = Enum.MeshType.Sphere
b13.Name = "Mesh"
m2.Parent = char
m2:MakeJoints()

local prev
local parts = char.Fueltank:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end

local prev
local parts = char.Flamethrower:GetChildren()

for i = 1,#parts do 
	if (parts[i].className == "Part") or (parts[i].className == "WedgePart") or (parts[i].className == "Seat") or (parts[i].className == "VehicleSeat") or (parts[i].className == "CornerWedgePart") then 
		if (prev ~= nil)then 
			local weld = Instance.new("Weld") 
			weld.Part0 = prev 
			weld.Part1 = parts[i] 
			weld.C0 = prev.CFrame:inverse() 
			weld.C1 = parts[i].CFrame:inverse() 
			weld.Parent = prev 
		end 
		prev = parts[i] 
	end 
end

char.Fueltank.FuelCenter.CFrame = CFrame.new(char.Torso.Position)

local arms = nil
local torso = nil
local welds = {}

arms = {char:FindFirstChild("Left Arm"), char:FindFirstChild("Right Arm")}
torso = char:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.249, 1.35, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
welds[1] = weld1
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-1, -0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
welds[2] = weld2
end
end
end

char.Flamethrower.Handle.CFrame = CFrame.new(char["Left Arm"].Position)

local SWeld = Instance.new("Weld",char.Fueltank.FuelCenter)
SWeld.Name = "SWeld"
SWeld.Part0 = char.Fueltank.FuelCenter
SWeld.Part1 = char.Torso
SWeld.C0 = CFrame.new(1.35,0,0)*CFrame.fromEulerAnglesXYZ(0,-7.9,59.68)

local SWeld2 = Instance.new("Weld",char.Flamethrower.Handle)
SWeld2.Name = "SWeld2"
SWeld2.Part0 = char.Flamethrower.Handle
SWeld2.Part1 = char["Left Arm"]
SWeld2.C0 = CFrame.new(-.70,0,-1)*CFrame.Angles(5,7.8,0)

local auto = 0


local s1=Instance.new("Sound")
s1.SoundId="http://www.roblox.com/asset/?id=260131404"
s1.PlayOnRemove=false
s1.Volume=100
s1.Looped=false
s1.Pitch = 1
s1.Parent=char.Flamethrower.Handle

local s2=Instance.new("Sound")
s2.SoundId="http://www.roblox.com/asset/?id=260131485"
s2.PlayOnRemove=false
s2.Volume=100
s2.Looped=true
s2.Pitch = 1
s2.Parent=char.Flamethrower.Handle

local s3=Instance.new("Sound")
s3.SoundId="http://www.roblox.com/asset/?id=260131519"
s3.PlayOnRemove=false
s3.Volume=100
s3.Looped=false
s3.Pitch = 1
s3.Parent=char.Flamethrower.Handle

mouse.Button1Down:connect(function()
	if auto == 0 then
		s1:Stop()
		s2:Stop()
	end
	if auto == 1 then
		s1:Play()
		s1:Stop()
		s2:Play()
	end
end)

mouse.Button1Up:connect(function()
	if auto == 0 then
		s1:Stop()
		s2:Stop()
		s3:Play()
		if auto == 1 then
			s1:Stop()
			s2:Stop()
			s3:Stop()
		end
	end
end)

local burning = false
local burning2 = false

mouse.Button1Down:connect(function()
	SWeld2.C0 = CFrame.new(-.70,0,-.80)*CFrame.Angles(5,7.8,0)
char.Fueltank.ChangeColor.BrickColor = BrickColor.New("Really red")
	char.Fueltank.ChangeColor2.BrickColor = BrickColor.New("Really red")
	char.Fueltank.FuelCenter.BrickColor = BrickColor.New("Really red")
end)

mouse.Button1Down:connect(function()
	auto = 1
	while auto == 1 do
		wait(.20)
	local smoke = Instance.new("Smoke",char.Flamethrower.Barrel)
	game.Debris:AddItem(smoke,1)
local bullet = Instance.new("Part",workspace)
game.Debris:AddItem(bullet,.90)
bullet.Size = Vector3.new(2,2,2)
bullet.Shape = "Ball"
bullet.Transparency = 1
bullet.CanCollide = false
bullet.Name = "bullet"
bullet.CFrame = char.Flamethrower.Barrel.CFrame*CFrame.new(0,3,0)
local fire = Instance.new("Fire",bullet)
local light = Instance.new("PointLight", bullet)
light.Range = 5
light.Brightness = 20
light.Color = Color3.new(255, 85, 0)
local bvelocity = Instance.new("BodyVelocity",bullet)
bvelocity.maxForce = Vector3.new(math.huge,math.huge,850)
bvelocity.velocity = mouse.Hit.lookVector*47
bullet.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
local fire1 = Instance.new("Fire",hit.Parent.Torso)
game.Debris:AddItem(fire1,3)
hit.Parent.Humanoid:TakeDamage(math.random(0,0))
wait(.30)
hit.Parent.Humanoid:TakeDamage(math.random(0,0))
wait(.30)
hit.Parent.Humanoid:TakeDamage(math.random(0,0))
elseif hit.Parent:FindFirstChild("Humanoid") == nil and not hit.Name:lower():find("base") and not hit.Name:lower():find("Base") and not hit.Name:lower():find("Baseplate") then
print("no")
end
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Torso:FindFirstChild("Fire") then
	burning = false
if burning == true then
	while burning do
	wait(.80)
	hit.Parent.Humanoid:TakeDamage(0)
if hit.Parent.Torso:FindFirstChild("Fire")==nil then
	burning = false
end
end
end
	end
end)
	end
end)

mouse.Button1Up:connect(function()
	SWeld2.C0 = CFrame.new(-.70,0,-1)*CFrame.Angles(5,7.8,0)
	auto = 0
	char.Fueltank.ChangeColor.BrickColor = BrickColor.New("Institutional white")
	char.Fueltank.ChangeColor2.BrickColor = BrickColor.New("Institutional white")
	char.Fueltank.FuelCenter.BrickColor = BrickColor.New("Institutional white")
	if char.Flamethrower.Barrel:FindFirstChild("Smoke") then
		char.Flamethrower.Barrel.Smoke:Remove()
	end
end)
game.Players.LocalPlayer.Character.FireMohawk.Handle.AccessoryWeld:Destroy()
game.Workspace.non.FireMohawk.Handle.Anchored = true



while true do
    game.Players.LocalPlayer.Character.FireMohawk.Handle.CFrame = game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
    task.wait()
end




