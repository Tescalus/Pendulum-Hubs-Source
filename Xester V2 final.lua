--Unchained and unbound, dark desires awoken, dark doctrines.
-- You know, originally I thought that Pendulum Hub would never have Xester V2. About time I prove gaytek wrong.
-- Credits to Instance Serializer for helping me a shit ton with converting this. Without it, It would've been impossible.
local m = game.Players.LocalPlayer:GetMouse()
local mouse = m
local Mouse = m
_G.Collisions = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Reanimation.lua"))()
_G.loop2 = true
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
            while _G.loop2 do 
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
local hat = Align(char['MeshPartAccessory'].Handle,char['Left Arm'],false)
local cf = char['Left Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Left Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop2 = false 
end)

local cards = Instance.new("Model")
cards.Name = "cards"
cards.WorldPivot = CFrame.new(-114.35630798339844, 34.8021354675293, 56.19215774536133, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)

local card4 = Instance.new("Part")
card4.Name = "card4"
card4.Anchored = true
card4.BottomSurface = Enum.SurfaceType.Smooth
card4.CanCollide = false
card4.TopSurface = Enum.SurfaceType.Smooth
card4.Color = Color3.fromRGB(248, 248, 248)
card4.Massless = true
card4.Material = Enum.Material.Neon
card4.Size = Vector3.new(0.5911353826522827, 0.051376596093177795, 0.9400021433830261)
card4.CFrame = CFrame.new(-118.84657287597656, 37.572998046875, 53.82969665527344, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
card4.Parent = cards

local decal = Instance.new("Decal")
decal.Name = "decal"
decal.Face = Enum.NormalId.Bottom
decal.Texture = "rbxassetid://1881287420"
decal.Parent = card4

local decal1 = Instance.new("Decal")
decal1.Name = "decal"
decal1.Face = Enum.NormalId.Top
decal1.Texture = "rbxassetid://1881287420"
decal1.Parent = card4

local PointLight = Instance.new("PointLight")
PointLight.Shadows = true
PointLight.Brightness = 0.5
PointLight.Range = 3
PointLight.Parent = card4

local Attachment = Instance.new("Attachment")
Attachment.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment.CFrame = CFrame.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment.WorldPosition = Vector3.new(-118.74597930908203, 37.99225997924805, 54.15159606933594)
Attachment.WorldCFrame = CFrame.new(-118.74597930908203, 37.99225997924805, 54.15159606933594, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment.Position = Vector3.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment.Parent = card4

local Attachment1 = Instance.new("Attachment")
Attachment1.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment1.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment1.CFrame = CFrame.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment1.WorldPosition = Vector3.new(-119.17239379882812, 37.99225997924805, 53.7802734375)
Attachment1.WorldCFrame = CFrame.new(-119.17239379882812, 37.99225997924805, 53.7802734375, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment1.Position = Vector3.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment1.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment1.Parent = card4

local Attachment2 = Instance.new("Attachment")
Attachment2.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment2.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment2.WorldPosition = Vector3.new(-118.84657287597656, 37.572998046875, 53.82969665527344)
Attachment2.WorldCFrame = CFrame.new(-118.84657287597656, 37.572998046875, 53.82969665527344, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment2.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment2.Parent = card4

local ParticleEmitter = Instance.new("ParticleEmitter")
ParticleEmitter.LightInfluence = 1
ParticleEmitter.Lifetime = NumberRange.new(4, 5)
ParticleEmitter.LockedToPart = true
ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1986223, 0.8375), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter.LightEmission = 1
ParticleEmitter.Speed = NumberRange.new(0, 0)
ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.2499995), NumberSequenceKeypoint.new(0.5419058, 1.25), NumberSequenceKeypoint.new(1, 0.7499999)})
ParticleEmitter.RotSpeed = NumberRange.new(10, 30)
ParticleEmitter.Rate = 4
ParticleEmitter.Texture = "http://www.roblox.com/asset/?id=917181007"
ParticleEmitter.Rotation = NumberRange.new(1, 180)
ParticleEmitter.Parent = Attachment2

local mat = Instance.new("Attachment")
mat.Name = "mat"
mat.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
mat.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
mat.WorldPosition = Vector3.new(-118.84657287597656, 37.572998046875, 53.82969665527344)
mat.WorldCFrame = CFrame.new(-118.84657287597656, 37.572998046875, 53.82969665527344, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
mat.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
mat.Parent = card4

local ParticleEmitter1 = Instance.new("ParticleEmitter")
ParticleEmitter1.LightInfluence = 1
ParticleEmitter1.Lifetime = NumberRange.new(1.45, 1.45)
ParticleEmitter1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.4982778, 0.95), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter1.LightEmission = 1
ParticleEmitter1.Speed = NumberRange.new(0, 0)
ParticleEmitter1.Size = NumberSequence.new(1.8124998, 0)
ParticleEmitter1.RotSpeed = NumberRange.new(30, 100)
ParticleEmitter1.Rate = 200
ParticleEmitter1.Texture = "rbxassetid://418380863"
ParticleEmitter1.Rotation = NumberRange.new(1, 180)
ParticleEmitter1.Parent = mat

local card2 = Instance.new("Part")
card2.Name = "card2"
card2.Anchored = true
card2.BottomSurface = Enum.SurfaceType.Smooth
card2.CanCollide = false
card2.TopSurface = Enum.SurfaceType.Smooth
card2.Color = Color3.fromRGB(248, 248, 248)
card2.Massless = true
card2.Material = Enum.Material.Neon
card2.Size = Vector3.new(0.5911353826522827, 0.051376596093177795, 0.9400021433830261)
card2.CFrame = CFrame.new(-119.66590881347656, 37.572998046875, 53.11619567871094, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
card2.Parent = cards

local decal2 = Instance.new("Decal")
decal2.Name = "decal"
decal2.Face = Enum.NormalId.Bottom
decal2.Texture = "rbxassetid://1881288034"
decal2.Parent = card2

local decal3 = Instance.new("Decal")
decal3.Name = "decal"
decal3.Face = Enum.NormalId.Top
decal3.Texture = "rbxassetid://1881288034"
decal3.Parent = card2

local PointLight1 = Instance.new("PointLight")
PointLight1.Shadows = true
PointLight1.Brightness = 0.5
PointLight1.Range = 3
PointLight1.Parent = card2

local Attachment3 = Instance.new("Attachment")
Attachment3.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment3.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment3.CFrame = CFrame.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment3.WorldPosition = Vector3.new(-119.56531524658203, 37.99225997924805, 53.43809509277344)
Attachment3.WorldCFrame = CFrame.new(-119.56531524658203, 37.99225997924805, 53.43809509277344, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment3.Position = Vector3.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment3.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment3.Parent = card2

local Attachment4 = Instance.new("Attachment")
Attachment4.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment4.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment4.CFrame = CFrame.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment4.WorldPosition = Vector3.new(-119.99172973632812, 37.99225997924805, 53.0667724609375)
Attachment4.WorldCFrame = CFrame.new(-119.99172973632812, 37.99225997924805, 53.0667724609375, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment4.Position = Vector3.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment4.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment4.Parent = card2

local Attachment5 = Instance.new("Attachment")
Attachment5.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment5.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment5.WorldPosition = Vector3.new(-119.66590881347656, 37.572998046875, 53.11619567871094)
Attachment5.WorldCFrame = CFrame.new(-119.66590881347656, 37.572998046875, 53.11619567871094, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment5.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment5.Parent = card2

local ParticleEmitter2 = Instance.new("ParticleEmitter")
ParticleEmitter2.LightInfluence = 1
ParticleEmitter2.Lifetime = NumberRange.new(4, 5)
ParticleEmitter2.LockedToPart = true
ParticleEmitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1986223, 0.8375), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter2.LightEmission = 1
ParticleEmitter2.Speed = NumberRange.new(0, 0)
ParticleEmitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.2499995), NumberSequenceKeypoint.new(0.5419058, 1.25), NumberSequenceKeypoint.new(1, 0.7499999)})
ParticleEmitter2.RotSpeed = NumberRange.new(10, 30)
ParticleEmitter2.Rate = 4
ParticleEmitter2.Texture = "http://www.roblox.com/asset/?id=917181007"
ParticleEmitter2.Rotation = NumberRange.new(1, 180)
ParticleEmitter2.Parent = Attachment5

local mat1 = Instance.new("Attachment")
mat1.Name = "mat"
mat1.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
mat1.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
mat1.WorldPosition = Vector3.new(-119.66590881347656, 37.572998046875, 53.11619567871094)
mat1.WorldCFrame = CFrame.new(-119.66590881347656, 37.572998046875, 53.11619567871094, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
mat1.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
mat1.Parent = card2

local ParticleEmitter3 = Instance.new("ParticleEmitter")
ParticleEmitter3.LightInfluence = 1
ParticleEmitter3.Lifetime = NumberRange.new(1.45, 1.45)
ParticleEmitter3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.4982778, 0.95), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter3.LightEmission = 1
ParticleEmitter3.Speed = NumberRange.new(0, 0)
ParticleEmitter3.Size = NumberSequence.new(1.8124998, 0)
ParticleEmitter3.RotSpeed = NumberRange.new(30, 100)
ParticleEmitter3.Rate = 200
ParticleEmitter3.Texture = "rbxassetid://418380863"
ParticleEmitter3.Rotation = NumberRange.new(1, 180)
ParticleEmitter3.Parent = mat1

local card3 = Instance.new("Part")
card3.Name = "card3"
card3.Anchored = true
card3.BottomSurface = Enum.SurfaceType.Smooth
card3.CanCollide = false
card3.TopSurface = Enum.SurfaceType.Smooth
card3.Color = Color3.fromRGB(248, 248, 248)
card3.Massless = true
card3.Material = Enum.Material.Neon
card3.Size = Vector3.new(0.5911353826522827, 0.051376596093177795, 0.9400021433830261)
card3.CFrame = CFrame.new(-120.56764221191406, 37.572998046875, 52.33091735839844, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
card3.Parent = cards

local decal4 = Instance.new("Decal")
decal4.Name = "decal"
decal4.Face = Enum.NormalId.Bottom
decal4.Texture = "rbxassetid://1880203893"
decal4.Parent = card3

local decal5 = Instance.new("Decal")
decal5.Name = "decal"
decal5.Face = Enum.NormalId.Top
decal5.Texture = "rbxassetid://1880203893"
decal5.Parent = card3

local PointLight2 = Instance.new("PointLight")
PointLight2.Shadows = true
PointLight2.Brightness = 0.5
PointLight2.Range = 3
PointLight2.Parent = card3

local Attachment6 = Instance.new("Attachment")
Attachment6.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment6.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment6.CFrame = CFrame.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment6.WorldPosition = Vector3.new(-120.46704864501953, 37.99225997924805, 52.65281677246094)
Attachment6.WorldCFrame = CFrame.new(-120.46704864501953, 37.99225997924805, 52.65281677246094, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment6.Position = Vector3.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment6.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment6.Parent = card3

local Attachment7 = Instance.new("Attachment")
Attachment7.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment7.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment7.CFrame = CFrame.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment7.WorldPosition = Vector3.new(-120.89346313476562, 37.99225997924805, 52.281494140625)
Attachment7.WorldCFrame = CFrame.new(-120.89346313476562, 37.99225997924805, 52.281494140625, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment7.Position = Vector3.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment7.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment7.Parent = card3

local Attachment8 = Instance.new("Attachment")
Attachment8.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment8.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment8.WorldPosition = Vector3.new(-120.56764221191406, 37.572998046875, 52.33091735839844)
Attachment8.WorldCFrame = CFrame.new(-120.56764221191406, 37.572998046875, 52.33091735839844, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment8.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment8.Parent = card3

local ParticleEmitter4 = Instance.new("ParticleEmitter")
ParticleEmitter4.LightInfluence = 1
ParticleEmitter4.Lifetime = NumberRange.new(4, 5)
ParticleEmitter4.LockedToPart = true
ParticleEmitter4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1986223, 0.8375), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter4.LightEmission = 1
ParticleEmitter4.Speed = NumberRange.new(0, 0)
ParticleEmitter4.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.2499995), NumberSequenceKeypoint.new(0.5419058, 1.25), NumberSequenceKeypoint.new(1, 0.7499999)})
ParticleEmitter4.RotSpeed = NumberRange.new(10, 30)
ParticleEmitter4.Rate = 4
ParticleEmitter4.Texture = "http://www.roblox.com/asset/?id=917181007"
ParticleEmitter4.Rotation = NumberRange.new(1, 180)
ParticleEmitter4.Parent = Attachment8

local mat2 = Instance.new("Attachment")
mat2.Name = "mat"
mat2.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
mat2.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
mat2.WorldPosition = Vector3.new(-120.56764221191406, 37.572998046875, 52.33091735839844)
mat2.WorldCFrame = CFrame.new(-120.56764221191406, 37.572998046875, 52.33091735839844, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
mat2.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
mat2.Parent = card3

local ParticleEmitter5 = Instance.new("ParticleEmitter")
ParticleEmitter5.LightInfluence = 1
ParticleEmitter5.Lifetime = NumberRange.new(1.45, 1.45)
ParticleEmitter5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.4982778, 0.95), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter5.LightEmission = 1
ParticleEmitter5.Speed = NumberRange.new(0, 0)
ParticleEmitter5.Size = NumberSequence.new(1.8124998, 0)
ParticleEmitter5.RotSpeed = NumberRange.new(30, 100)
ParticleEmitter5.Rate = 200
ParticleEmitter5.Texture = "rbxassetid://418380863"
ParticleEmitter5.Rotation = NumberRange.new(1, 180)
ParticleEmitter5.Parent = mat2

local card1 = Instance.new("Part")
card1.Name = "card1"
card1.Anchored = true
card1.BottomSurface = Enum.SurfaceType.Smooth
card1.CanCollide = false
card1.TopSurface = Enum.SurfaceType.Smooth
card1.Color = Color3.fromRGB(248, 248, 248)
card1.Massless = true
card1.Material = Enum.Material.Neon
card1.Size = Vector3.new(0.5911353826522827, 0.051376596093177795, 0.9400021433830261)
card1.CFrame = CFrame.new(-108.14497375488281, 32.03125, 60.05339050292969, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
card1.Parent = cards

local decal6 = Instance.new("Decal")
decal6.Name = "decal"
decal6.Face = Enum.NormalId.Bottom
decal6.Texture = "http://www.roblox.com/asset/?id=1881287656"
decal6.Parent = card1

local decal7 = Instance.new("Decal")
decal7.Name = "decal"
decal7.Face = Enum.NormalId.Top
decal7.Texture = "http://www.roblox.com/asset/?id=1881287656"
decal7.Parent = card1

local PointLight3 = Instance.new("PointLight")
PointLight3.Shadows = true
PointLight3.Brightness = 0.5
PointLight3.Range = 3
PointLight3.Parent = card1

local Attachment9 = Instance.new("Attachment")
Attachment9.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment9.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment9.CFrame = CFrame.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment9.WorldPosition = Vector3.new(-108.47079467773438, 32.45051193237305, 60.00396728515625)
Attachment9.WorldCFrame = CFrame.new(-108.47079467773438, 32.45051193237305, 60.00396728515625, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment9.Position = Vector3.new(-0.27817535400390625, -0.00000353607174474746, 0.45497453212738037)
Attachment9.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment9.Parent = card1

local Attachment10 = Instance.new("Attachment")
Attachment10.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment10.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment10.CFrame = CFrame.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment10.WorldPosition = Vector3.new(-108.04438018798828, 32.45051193237305, 60.37528991699219)
Attachment10.WorldCFrame = CFrame.new(-108.04438018798828, 32.45051193237305, 60.37528991699219, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment10.Position = Vector3.new(0.2872581481933594, -0.00000353607174474746, 0.45497453212738037)
Attachment10.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment10.Parent = card1

local Attachment11 = Instance.new("Attachment")
Attachment11.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
Attachment11.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
Attachment11.WorldPosition = Vector3.new(-108.14497375488281, 32.03125, 60.05339050292969)
Attachment11.WorldCFrame = CFrame.new(-108.14497375488281, 32.03125, 60.05339050292969, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
Attachment11.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment11.Parent = card1

local ParticleEmitter6 = Instance.new("ParticleEmitter")
ParticleEmitter6.LightInfluence = 1
ParticleEmitter6.Lifetime = NumberRange.new(4, 5)
ParticleEmitter6.LockedToPart = true
ParticleEmitter6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1986223, 0.8375), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter6.LightEmission = 1
ParticleEmitter6.Speed = NumberRange.new(0, 0)
ParticleEmitter6.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.2499995), NumberSequenceKeypoint.new(0.5419058, 1.25), NumberSequenceKeypoint.new(1, 0.7499999)})
ParticleEmitter6.RotSpeed = NumberRange.new(10, 30)
ParticleEmitter6.Rate = 4
ParticleEmitter6.Texture = "http://www.roblox.com/asset/?id=917181007"
ParticleEmitter6.Rotation = NumberRange.new(1, 180)
ParticleEmitter6.Parent = Attachment11

local mat3 = Instance.new("Attachment")
mat3.Name = "mat"
mat3.WorldSecondaryAxis = Vector3.new(0.6051607131958008, 0.38835909962654114, -0.6949517726898193)
mat3.WorldOrientation = Vector3.new(-67.1475830078125, -41.0491943359375, 0)
mat3.WorldPosition = Vector3.new(-108.14497375488281, 32.03125, 60.05339050292969)
mat3.WorldCFrame = CFrame.new(-108.14497375488281, 32.03125, 60.05339050292969, 0.7541460394859314, 0.6051607131958008, -0.2550380527973175, 0, 0.38835909962654114, 0.921508252620697, 0.6567067503929138, -0.6949517726898193, 0.29287946224212646)
mat3.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
mat3.Parent = card1

local ParticleEmitter7 = Instance.new("ParticleEmitter")
ParticleEmitter7.LightInfluence = 1
ParticleEmitter7.Lifetime = NumberRange.new(1.45, 1.45)
ParticleEmitter7.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.4982778, 0.95), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter7.LightEmission = 1
ParticleEmitter7.Speed = NumberRange.new(0, 0)
ParticleEmitter7.Size = NumberSequence.new(1.8124998, 0)
ParticleEmitter7.RotSpeed = NumberRange.new(30, 100)
ParticleEmitter7.Rate = 200
ParticleEmitter7.Texture = "rbxassetid://418380863"
ParticleEmitter7.Rotation = NumberRange.new(1, 180)
ParticleEmitter7.Parent = mat3


local staff = Instance.new("Model")
staff.Name = "staff"
staff.WorldPivot = CFrame.new(-144.36367797851562, 51.801673889160156, 89.1244125366211, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)

local MeshPart = Instance.new("MeshPart")
MeshPart.Color = Color3.fromRGB(255, 0, 0)
MeshPart.Material = Enum.Material.Neon
MeshPart.Size = Vector3.new(0.40166956186294556, 0.4016694724559784, 0.07874457538127899)
MeshPart.CFrame = CFrame.new(-144.3083953857422, 49.087646484375, 89.05870056152344, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart.Parent = staff

local Part = Instance.new("Part")
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Color = Color3.fromRGB(151, 0, 0)
Part.Material = Enum.Material.Fabric
Part.Size = Vector3.new(0.2892489731311798, 0.2892489731311798, 0.2892489731311798)
Part.CFrame = CFrame.new(-143.59828186035156, 54.2568359375, 89.71678161621094, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part.Shape = Enum.PartType.Ball
Part.Parent = staff

local MeshPart1 = Instance.new("MeshPart")
MeshPart1.Color = Color3.fromRGB(17, 17, 17)
MeshPart1.Material = Enum.Material.Metal
MeshPart1.Size = Vector3.new(0.1675412952899933, 0.1675412654876709, 0.1667531579732895)
MeshPart1.CFrame = CFrame.new(-144.30592346191406, 48.58447265625, 89.05754089355469, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart1.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart1.Parent = staff

local MeshPart2 = Instance.new("MeshPart")
MeshPart2.CanCollide = false
MeshPart2.Color = Color3.fromRGB(255, 0, 0)
MeshPart2.Material = Enum.Material.Neon
MeshPart2.Size = Vector3.new(0.2875593900680542, 0.28755930066108704, 0.051761358976364136)
MeshPart2.CFrame = CFrame.new(-144.30113220214844, 49.71240234375, 89.05784606933594, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart2.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart2.Parent = staff

local MeshPart3 = Instance.new("MeshPart")
MeshPart3.CanCollide = false
MeshPart3.Color = Color3.fromRGB(255, 0, 0)
MeshPart3.Material = Enum.Material.Neon
MeshPart3.Size = Vector3.new(0.13403302431106567, 0.1340329945087433, 0.051761358976364136)
MeshPart3.CFrame = CFrame.new(-144.3058624267578, 48.377685546875, 89.05516052246094, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart3.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart3.Parent = staff

local Part1 = Instance.new("Part")
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.fromRGB(17, 17, 17)
Part1.Material = Enum.Material.Metal
Part1.Size = Vector3.new(0.4632037580013275, 0.4632037580013275, 0.4632037580013275)
Part1.CFrame = CFrame.new(-144.3061065673828, 49.436279296875, 89.05699157714844, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part1.Shape = Enum.PartType.Ball
Part1.Parent = staff

local Qeen = Instance.new("MeshPart")
Qeen.Name = "Qeen"
Qeen.Color = Color3.fromRGB(17, 17, 17)
Qeen.Material = Enum.Material.Metal
Qeen.Size = Vector3.new(0.39043697714805603, 1.1525481939315796, 0.3928622305393219)
Qeen.CFrame = CFrame.new(-144.3080291748047, 48.6318359375, 89.05760192871094, 0.7161371111869812, 0.00028835091507062316, 0.6979596018791199, -0.0008760002674534917, -0.9999987483024597, 0.001311948406510055, 0.6979590654373169, -0.0015509476652368903, -0.7161359786987305)
Qeen.CollisionFidelity = Enum.CollisionFidelity.Default
Qeen.Parent = staff

local Part2 = Instance.new("Part")
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Color = Color3.fromRGB(255, 0, 0)
Part2.Material = Enum.Material.Neon
Part2.Size = Vector3.new(0.3907000720500946, 0.25897663831710815, 0.0972682312130928)
Part2.CFrame = CFrame.new(-144.4058074951172, 49.44970703125, 88.96775817871094, 0.6567067503929138, -0.7541460394859314, 0, 0, 0, 1, -0.7541460394859314, -0.6567067503929138, 0)
Part2.Parent = staff

local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Parent = Part2

local Part3 = Instance.new("Part")
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Color = Color3.fromRGB(255, 0, 0)
Part3.Material = Enum.Material.Neon
Part3.Size = Vector3.new(0.3907000720500946, 0.25897663831710815, 0.0972682312130928)
Part3.CFrame = CFrame.new(-144.2051239013672, 49.44970703125, 89.14256286621094, 0.6567067503929138, 0.7541460394859314, 0, 0, 0, -1, -0.7541460394859314, 0.6567067503929138, 0)
Part3.Parent = staff

local Mesh1 = Instance.new("SpecialMesh")
Mesh1.MeshType = Enum.MeshType.Sphere
Mesh1.Parent = Part3

local Part4 = Instance.new("Part")
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Color = Color3.fromRGB(151, 0, 0)
Part4.Material = Enum.Material.Fabric
Part4.Size = Vector3.new(0.2892489731311798, 0.2892489731311798, 0.2892489731311798)
Part4.CFrame = CFrame.new(-144.83973693847656, 54.2744140625, 89.67051696777344, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part4.Shape = Enum.PartType.Ball
Part4.Parent = staff

local Part5 = Instance.new("Part")
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Color = Color3.fromRGB(255, 0, 0)
Part5.Material = Enum.Material.Neon
Part5.Size = Vector3.new(0.11509376019239426, 0.25897663831710815, 0.0972682312130928)
Part5.CFrame = CFrame.new(-144.4272918701172, 49.43603515625, 89.18974304199219, 0.6567067503929138, 0, 0.7541460394859314, 0, 1, 0, -0.7541460394859314, 0, 0.6567067503929138)
Part5.Parent = staff

local Mesh2 = Instance.new("SpecialMesh")
Mesh2.MeshType = Enum.MeshType.Sphere
Mesh2.Parent = Part5

local Part6 = Instance.new("Part")
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.fromRGB(255, 0, 0)
Part6.Material = Enum.Material.Neon
Part6.Size = Vector3.new(0.33350682258605957, 0.33350682258605957, 0.33350682258605957)
Part6.CFrame = CFrame.new(-144.3061065673828, 49.15966796875, 89.05699157714844, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part6.Shape = Enum.PartType.Ball
Part6.Parent = staff

local MeshPart4 = Instance.new("MeshPart")
MeshPart4.Color = Color3.fromRGB(255, 0, 0)
MeshPart4.Material = Enum.Material.Neon
MeshPart4.Size = Vector3.new(0.9074220061302185, 0.9074220061302185, 0.0949322059750557)
MeshPart4.CFrame = CFrame.new(-144.33103942871094, 55.49267578125, 89.07212829589844, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart4.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart4.Parent = staff

local Part7 = Instance.new("Part")
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Color = Color3.fromRGB(255, 0, 0)
Part7.Material = Enum.Material.Neon
Part7.Size = Vector3.new(0.06716453284025192, 0.06716453284025192, 0.06716453284025192)
Part7.CFrame = CFrame.new(-144.30381774902344, 48.0966796875, 89.05436706542969, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part7.Shape = Enum.PartType.Ball
Part7.Parent = staff

local MeshPart5 = Instance.new("MeshPart")
MeshPart5.Color = Color3.fromRGB(255, 0, 0)
MeshPart5.Material = Enum.Material.Neon
MeshPart5.Size = Vector3.new(0.15357953310012817, 0.1535794883966446, 0.2918180525302887)
MeshPart5.CFrame = CFrame.new(-144.30592346191406, 48.584716796875, 89.05754089355469, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart5.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart5.Parent = staff

local MeshPart6 = Instance.new("MeshPart")
MeshPart6.Color = Color3.fromRGB(17, 17, 17)
MeshPart6.Material = Enum.Material.Neon
MeshPart6.Size = Vector3.new(0.951697826385498, 0.9516978859901428, 0.09956425428390503)
MeshPart6.CFrame = CFrame.new(-144.33103942871094, 55.49267578125, 89.07212829589844, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart6.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart6.Parent = staff

local Part8 = Instance.new("Part")
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.fromRGB(151, 0, 0)
Part8.Material = Enum.Material.Fabric
Part8.Size = Vector3.new(0.2892489731311798, 0.2892489731311798, 0.2892489731311798)
Part8.CFrame = CFrame.new(-145.05555725097656, 54.265380859375, 88.44761657714844, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part8.Shape = Enum.PartType.Ball
Part8.Parent = staff

local MeshPart7 = Instance.new("MeshPart")
MeshPart7.Color = Color3.fromRGB(17, 17, 17)
MeshPart7.Material = Enum.Material.Neon
MeshPart7.Size = Vector3.new(0.25990381836891174, 0.25990375876426697, 0.19915294647216797)
MeshPart7.CFrame = CFrame.new(-144.30113220214844, 49.71240234375, 89.05784606933594, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart7.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart7.Parent = staff

local MeshPart8 = Instance.new("MeshPart")
MeshPart8.Color = Color3.fromRGB(248, 248, 248)
MeshPart8.Material = Enum.Material.SmoothPlastic
MeshPart8.Size = Vector3.new(0.6582092642784119, 0.6171640157699585, 0.33981701731681824)
MeshPart8.CFrame = CFrame.new(-144.06968688964844, 54.384765625, 88.78782653808594, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
MeshPart8.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart8.Parent = staff

local Attachment = Instance.new("Attachment")
Attachment.WorldOrientation = Vector3.new(-0, -41.049190521240234, 0)
Attachment.CFrame = CFrame.new(0, 0, 0.5960401892662048)
Attachment.WorldPosition = Vector3.new(-144.4611053466797, 54.384765625, 89.2373275756836)
Attachment.WorldCFrame = CFrame.new(-144.4611053466797, 54.384765625, 89.2373275756836, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Attachment.Position = Vector3.new(0, 0, 0.5960401892662048)
Attachment.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment.Parent = MeshPart8

local ParticleEmitter = Instance.new("ParticleEmitter")
ParticleEmitter.LightInfluence = 1
ParticleEmitter.LockedToPart = true
ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.675), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter.LightEmission = 1
ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter.Speed = NumberRange.new(0, 0)
ParticleEmitter.Size = NumberSequence.new(2)
ParticleEmitter.RotSpeed = NumberRange.new(-15, 15)
ParticleEmitter.Texture = "rbxassetid://1084976679"
ParticleEmitter.Parent = Attachment

local ParticleEmitter1 = Instance.new("ParticleEmitter")
ParticleEmitter1.LightInfluence = 1
ParticleEmitter1.LockedToPart = true
ParticleEmitter1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.75), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter1.LightEmission = 1
ParticleEmitter1.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter1.Speed = NumberRange.new(0, 0)
ParticleEmitter1.Size = NumberSequence.new(3)
ParticleEmitter1.RotSpeed = NumberRange.new(2, 10)
ParticleEmitter1.Rate = 1
ParticleEmitter1.Texture = "rbxassetid://1084975295"
ParticleEmitter1.Parent = Attachment

local ParticleEmitter2 = Instance.new("ParticleEmitter")
ParticleEmitter2.LightInfluence = 1
ParticleEmitter2.LockedToPart = true
ParticleEmitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.75), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter2.LightEmission = 1
ParticleEmitter2.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter2.Speed = NumberRange.new(0, 0)
ParticleEmitter2.Size = NumberSequence.new(5)
ParticleEmitter2.RotSpeed = NumberRange.new(2, 10)
ParticleEmitter2.Rate = 1
ParticleEmitter2.Texture = "rbxassetid://1084975295"
ParticleEmitter2.Parent = Attachment

local Part9 = Instance.new("Part")
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Color = Color3.fromRGB(248, 248, 248)
Part9.Material = Enum.Material.Neon
Part9.Size = Vector3.new(0.3097684681415558, 0.1495431363582611, 0.08087536692619324)
Part9.CFrame = CFrame.new(-144.0777130126953, 54.24951171875, 88.79832458496094, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part9.Parent = staff

local Part10 = Instance.new("Part")
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Color = Color3.fromRGB(255, 0, 0)
Part10.Material = Enum.Material.Neon
Part10.Size = Vector3.new(0.2823009788990021, 0.2823009788990021, 0.2823009788990021)
Part10.CFrame = CFrame.new(-144.83973693847656, 54.240966796875, 89.67051696777344, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part10.Shape = Enum.PartType.Ball
Part10.Parent = staff

local t = Instance.new("MeshPart")
t.Name = "t"
t.Material = Enum.Material.Neon
t.Size = Vector3.new(2.1493725776672363, 6.046728610992432, 1.450400471687317)
t.CFrame = CFrame.new(-144.43678283691406, 52.231689453125, 89.20707702636719, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
t.CollisionFidelity = Enum.CollisionFidelity.Default
t.TextureID = "rbxassetid://1377682438"
t.Parent = staff

local Part11 = Instance.new("Part")
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.fromRGB(255, 0, 0)
Part11.Material = Enum.Material.Neon
Part11.Size = Vector3.new(0.2823009788990021, 0.2823009788990021, 0.2823009788990021)
Part11.CFrame = CFrame.new(-143.59608459472656, 54.222900390625, 89.71861267089844, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part11.Shape = Enum.PartType.Ball
Part11.Parent = staff

local Part12 = Instance.new("Part")
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Color = Color3.fromRGB(255, 0, 0)
Part12.Material = Enum.Material.Neon
Part12.Size = Vector3.new(0.2823009788990021, 0.2823009788990021, 0.2823009788990021)
Part12.CFrame = CFrame.new(-145.05775451660156, 54.222900390625, 88.44578552246094, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Part12.Shape = Enum.PartType.Ball
Part12.Parent = staff

local MeshPart9 = Instance.new("MeshPart")
MeshPart9.CanCollide = false
MeshPart9.Color = Color3.fromRGB(255, 0, 0)
MeshPart9.Material = Enum.Material.Neon
MeshPart9.Size = Vector3.new(0.23627620935440063, 0.23627614974975586, 0.051761358976364136)
MeshPart9.CFrame = CFrame.new(-144.3064422607422, 48.861328125, 89.05894470214844, -0.707267701625824, 0.7068940997123718, 0.008559777401387691, -0.006703002378344536, 0.005402002017945051, -0.9999629855155945, -0.7069141268730164, -0.7072988152503967, 0.0009176505263894796)
MeshPart9.CollisionFidelity = Enum.CollisionFidelity.Default
MeshPart9.Parent = staff

local Part13 = Instance.new("Part")
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Color = Color3.fromRGB(255, 0, 0)
Part13.Material = Enum.Material.Neon
Part13.Size = Vector3.new(0.09032472223043442, 4.103981971740723, 0.18991321325302124)
Part13.CFrame = CFrame.new(-144.30775451660156, 51.692626953125, 89.04795837402344, 0.7541460394859314, 0.0005870956229045987, -0.6567065119743347, 0, 0.9999996423721313, 0.0008939997060224414, 0.6567067503929138, -0.0006742063560523093, 0.7541457414627075)
Part13.Parent = staff

local Part14 = Instance.new("Part")
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Color = Color3.fromRGB(255, 0, 0)
Part14.Material = Enum.Material.Neon
Part14.Size = Vector3.new(0.11509376019239426, 0.25897663831710815, 0.0972682312130928)
Part14.CFrame = CFrame.new(-144.1911163330078, 49.43603515625, 88.91856384277344, 0.6567067503929138, 0, 0.7541460394859314, 0, 1, 0, -0.7541460394859314, 0, 0.6567067503929138)
Part14.Parent = staff

local Mesh3 = Instance.new("SpecialMesh")
Mesh3.MeshType = Enum.MeshType.Sphere
Mesh3.Parent = Part14

local Weld = Instance.new("Script")
Weld.Name = "Weld"
Weld.Source = "function weld()\n\tlocal parts,last = {}\n\tlocal function scan(parent)\n\t\tfor _,v in pairs(parent:GetChildren()) do\n\t\t\tif (v:IsA(\"BasePart\")) then\n\t\t\t\tif (last) then\n\t\t\t\t\tlocal w = Instance.new(\"Weld\")\n\t\t\t\t\tw.Name = (\"%s_Weld\"):format(v.Name)\n\t\t\t\t\tw.Part0,w.Part1 = last,v\n\t\t\t\t\tw.C0 = last.CFrame:inverse()\n\t\t\t\t\tw.C1 = v.CFrame:inverse()\n\t\t\t\t\tw.Parent = last\n\t\t\t\tend\n\t\t\t\tlast = v\n\t\t\t\ttable.insert(parts,v)\n\t\t\tend\n\t\t\tscan(v)\n\t\tend\n\tend\n\tscan(script.Parent)\n\tfor _,v in pairs(parts) do\n\t\tif v.BrickColor == \"Really red\" and v.Material == \"ForceField\" then v.Transparency = .85\n\t\t\t\n\t\tend\n\tend\nend\n\nweld()\nscript:Remove()"
Weld.Parent = staff

local shbox = Instance.new("Part")
shbox.Name = "shbox"
shbox.BottomSurface = Enum.SurfaceType.Smooth
shbox.CanCollide = false
shbox.TopSurface = Enum.SurfaceType.Smooth
shbox.Transparency = 1
shbox.Massless = true
shbox.Size = Vector3.new(0.649999737739563, 0.6900001168251038, 0.6300007700920105)
shbox.CFrame = CFrame.new(-143.99757385253906, 54.30810546875, 88.70848083496094, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
shbox.Parent = staff


local Effects = Instance.new("Folder")
Effects.Name = "Effects"

local shockwave = Instance.new("MeshPart")
shockwave.Name = "shockwave"
shockwave.Anchored = true
shockwave.Transparency = 0.75
shockwave.Color = Color3.fromRGB(248, 248, 248)
shockwave.Material = Enum.Material.SmoothPlastic
shockwave.Size = Vector3.new(1.8663699626922607, 1.4206700325012207, 2.154984951019287)
shockwave.CFrame = CFrame.new(-243.55056762695312, 41.1552734375, -33.720603942871094, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
shockwave.CollisionFidelity = Enum.CollisionFidelity.Default
shockwave.Parent = Effects

local spikeball = Instance.new("MeshPart")
spikeball.Name = "spikeball"
spikeball.Anchored = true
spikeball.Transparency = 1
spikeball.Color = Color3.fromRGB(248, 248, 248)
spikeball.Material = Enum.Material.SmoothPlastic
spikeball.Size = Vector3.new(4.750164985656738, 4.73160982131958, 4.777510166168213)
spikeball.CFrame = CFrame.new(-117.83860778808594, 35.02685546875, 98.36094665527344, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
spikeball.CollisionFidelity = Enum.CollisionFidelity.Default
spikeball.Parent = Effects

local ball = Instance.new("Part")
ball.Name = "ball"
ball.BottomSurface = Enum.SurfaceType.Smooth
ball.TopSurface = Enum.SurfaceType.Smooth
ball.Color = Color3.fromRGB(255, 0, 0)
ball.Material = Enum.Material.Neon
ball.Size = Vector3.new(2.71000075340271, 2.71000075340271, 2.71000075340271)
ball.CFrame = CFrame.new(-85.33689880371094, 44.670166015625, -87.29438781738281, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
ball.Shape = Enum.PartType.Ball
ball.Parent = Effects

local Attachment = Instance.new("Attachment")
Attachment.WorldOrientation = Vector3.new(-0, -41.049190521240234, 0)
Attachment.WorldPosition = Vector3.new(-85.33689880371094, 44.670166015625, -87.29438781738281)
Attachment.WorldCFrame = CFrame.new(-85.33689880371094, 44.670166015625, -87.29438781738281, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Attachment.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment.Parent = ball

local ParticleEmitter = Instance.new("ParticleEmitter")
ParticleEmitter.LightInfluence = 1
ParticleEmitter.LockedToPart = true
ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.475), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter.LightEmission = 1
ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter.Speed = NumberRange.new(0, 0)
ParticleEmitter.Size = NumberSequence.new(10)
ParticleEmitter.RotSpeed = NumberRange.new(2, 10)
ParticleEmitter.Rate = 1
ParticleEmitter.Texture = "rbxassetid://1084975295"
ParticleEmitter.Parent = Attachment

local ParticleEmitter1 = Instance.new("ParticleEmitter")
ParticleEmitter1.LightInfluence = 1
ParticleEmitter1.LockedToPart = true
ParticleEmitter1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.75), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter1.LightEmission = 1
ParticleEmitter1.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter1.Speed = NumberRange.new(0, 0)
ParticleEmitter1.Size = NumberSequence.new(15)
ParticleEmitter1.RotSpeed = NumberRange.new(2, 10)
ParticleEmitter1.Rate = 1
ParticleEmitter1.Texture = "rbxassetid://1084975295"
ParticleEmitter1.Parent = Attachment

local ParticleEmitter2 = Instance.new("ParticleEmitter")
ParticleEmitter2.LightInfluence = 1
ParticleEmitter2.LockedToPart = true
ParticleEmitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.675), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter2.LightEmission = 1
ParticleEmitter2.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter2.Speed = NumberRange.new(0, 0)
ParticleEmitter2.Size = NumberSequence.new(7)
ParticleEmitter2.RotSpeed = NumberRange.new(-15, 15)
ParticleEmitter2.Texture = "rbxassetid://1084976679"
ParticleEmitter2.Parent = Attachment

local ParticleEmitter3 = Instance.new("ParticleEmitter")
ParticleEmitter3.LightInfluence = 1
ParticleEmitter3.LockedToPart = true
ParticleEmitter3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.4982778, 1), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter3.LightEmission = 1
ParticleEmitter3.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter3.Speed = NumberRange.new(0, 0)
ParticleEmitter3.Size = NumberSequence.new(5)
ParticleEmitter3.RotSpeed = NumberRange.new(30, 30)
ParticleEmitter3.Texture = "rbxassetid://42103869"
ParticleEmitter3.Rotation = NumberRange.new(50, 50)
ParticleEmitter3.Parent = Attachment

local f = Instance.new("ParticleEmitter")
f.Name = "f"
f.LightInfluence = 1
f.Lifetime = NumberRange.new(1, 2)
f.LockedToPart = true
f.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3019518, 0.925), NumberSequenceKeypoint.new(1, 1)})
f.LightEmission = 1
f.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
f.Speed = NumberRange.new(0, 0)
f.Size = NumberSequence.new(12)
f.RotSpeed = NumberRange.new(-180, 180)
f.Rate = 3
f.Texture = "rbxassetid://436714124"
f.Rotation = NumberRange.new(-180, 180)
f.Parent = Attachment

local exploseball = Instance.new("Part")
exploseball.Name = "exploseball"
exploseball.Anchored = true
exploseball.BottomSurface = Enum.SurfaceType.Smooth
exploseball.CanCollide = false
exploseball.TopSurface = Enum.SurfaceType.Smooth
exploseball.Transparency = 1
exploseball.Massless = true
exploseball.Size = Vector3.new(1, 1, 1)
exploseball.CFrame = CFrame.new(265.2192077636719, 4.447021484375, 68.18565368652344, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
exploseball.CastShadow = false
exploseball.Shape = Enum.PartType.Ball
exploseball.Parent = Effects

local Attachment1 = Instance.new("Attachment")
Attachment1.WorldOrientation = Vector3.new(-0, -41.049190521240234, 0)
Attachment1.WorldPosition = Vector3.new(265.2192077636719, 4.447021484375, 68.18565368652344)
Attachment1.WorldCFrame = CFrame.new(265.2192077636719, 4.447021484375, 68.18565368652344, 0.7541460394859314, 0, -0.6567067503929138, 0, 1, 0, 0.6567067503929138, 0, 0.7541460394859314)
Attachment1.WorldAxis = Vector3.new(0.7541460394859314, 0, 0.6567067503929138)
Attachment1.Parent = exploseball

local ParticleEmitter4 = Instance.new("ParticleEmitter")
ParticleEmitter4.LightInfluence = 1
ParticleEmitter4.Lifetime = NumberRange.new(1, 2)
ParticleEmitter4.SpreadAngle = Vector2.new(50, 50)
ParticleEmitter4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.4994259, 0.49375), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter4.LightEmission = 1
ParticleEmitter4.VelocitySpread = 50
ParticleEmitter4.Speed = NumberRange.new(0, 0)
ParticleEmitter4.Size = NumberSequence.new(1.1874998, 0)
ParticleEmitter4.RotSpeed = NumberRange.new(20, 60)
ParticleEmitter4.Rate = 400
ParticleEmitter4.Texture = "rbxassetid://241650934"
ParticleEmitter4.Parent = Attachment1

local ParticleEmitter5 = Instance.new("ParticleEmitter")
ParticleEmitter5.LightInfluence = 1
ParticleEmitter5.Lifetime = NumberRange.new(2, 4)
ParticleEmitter5.SpreadAngle = Vector2.new(50, 50)
ParticleEmitter5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter5.LightEmission = 0.96
ParticleEmitter5.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
ParticleEmitter5.VelocitySpread = 50
ParticleEmitter5.Speed = NumberRange.new(0, 0)
ParticleEmitter5.Size = NumberSequence.new(1.1874998, 0)
ParticleEmitter5.RotSpeed = NumberRange.new(20, 60)
ParticleEmitter5.Rate = 400
ParticleEmitter5.Texture = "rbxassetid://463021019"
ParticleEmitter5.Parent = exploseball

local ParticleEmitter6 = Instance.new("ParticleEmitter")
ParticleEmitter6.LightInfluence = 1
ParticleEmitter6.Lifetime = NumberRange.new(3, 6)
ParticleEmitter6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5005741, 0.9), NumberSequenceKeypoint.new(1, 1)})
ParticleEmitter6.LightEmission = 1
ParticleEmitter6.Speed = NumberRange.new(0, 0)
ParticleEmitter6.Size = NumberSequence.new(2.5)
ParticleEmitter6.RotSpeed = NumberRange.new(-100, 100)
ParticleEmitter6.Rate = 400
ParticleEmitter6.Texture = "rbxassetid://1084976679"
ParticleEmitter6.Parent = exploseball

local woosh = Instance.new("MeshPart")
woosh.Name = "woosh"
woosh.Transparency = 1
woosh.Color = Color3.fromRGB(248, 248, 248)
woosh.Material = Enum.Material.Neon
woosh.Size = Vector3.new(3.609649896621704, 1.0587899684906006, 4.205949783325195)
woosh.CFrame = CFrame.new(197.49514770507812, 7.813232421875, 177.73472595214844, 0.6590549945831299, 0, 0.7520948648452759, 0, 1, 0, -0.7520948648452759, 0, 0.6590549945831299)
woosh.CollisionFidelity = Enum.CollisionFidelity.Default
woosh.Parent = Effects


local Player = game.Players.LocalPlayer
local Mouse,mouse,UserInputService,ContextActionService
local Mouse = game.Players.LocalPlayer:GetMouse()
local mouse = game.Players.LocalPlayer:GetMouse()
do
	local CAS = {Actions={}}
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"
	Event.Parent = game.Workspace.non
	local fakeEvent = function()
		local t = {_fakeEvent=true}
		t.Connect = function(self,f)self.Function=f end
		t.connect = t.Connect
		return t
	end
    local m = {Target=mouse.Hit.p,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	function CAS:BindAction(name,fun,touch,...)
		CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
	end
	function CAS:UnbindAction(name)
		CAS.Actions[name] = nil
	end
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent and t.Function then
			t.Function(...)
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te
	Event.OnClientEvent:Connect(function(plr,io)
	    if plr~=Player then return end
		if io.isMouse then
			target = mouse.Hit.p
		elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
	        if io.UserInputState == Enum.UserInputState.Begin then
				m:TrigEvent("Button1Down")
			else
				m:TrigEvent("Button1Up")
			end
		else
			for n,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
	        if io.UserInputState == Enum.UserInputState.Begin then
	            m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputBegan",io,false)
			else
				m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputEnded",io,false)
	        end
	    end
	end)
	Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
end

Player=game.Players.LocalPlayer
Character=game.Workspace.non
hum = Character:FindFirstChildOfClass("Humanoid")
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
RootJoint = Root["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
walking = false
debounce = false
attacking = false
tauntdebounce = false
themeallow = true
secondform = false
m2hallow = false
position = mouse.Hit.p
MseGuide = true
girl = false
equipping = false
varsp = 1
settime = 0
sine = 0
sine2 = 0
ws = 120
hpheight = 1.5
change = 1
change2 = .8
dgs = 75
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
cam = workspace.CurrentCamera
lig = game:GetService("Lighting")
local armorparts = {1,2}
local dmt2 = {1843358057,4558398377}
local bloodfolder = Instance.new("Folder",Torso)
local introable = {4591927570,4591936781,4591937586,4591937895,4591938363,4591938832,4591941299,4591941817}
local fireable = {4611185293,4611185698,4611184354,4611184817}
local firekillable = {4611187644,4611186611,4611186138}
local damagable = {1,2}
local attackable = {4614474035,4614474491,4614474930,4614475327,4614475760,4614476430,4614477011,4614477539,4614477980,4614478550,4614479082,4614479500,4614479928,4614480500,4614481083}
local cowardable = {1,2}
local followable = {4620497575,4620498118,4620498754,4620499179,4620499755}
local killable = {4673844363,4673848773,4673849571,4673877422,4673880146,4673881182,4673881958,4673882852,4673883581,4673886551,4673887593,4673892311,4673893081,4673894021}
local roarable = {1,2}
local chargable = {1,2}
local ouchable = {1,2}
local tauntable = {4563118321,4563118321}
local tauntable2 = {4592338195,4592338768,4592339199,4592340047,4592304446,4592337281,4592337771}
local rdx = {"Really black","Really red"}

local staff = staff:Clone()
local spkball = Effects.spikeball
local shckwav = Effects.shockwave
local spkball2 = Effects.ball
local explse = Effects.exploseball
local wosh = Effects.woosh
local dox = false
local previd = nil
pcall(function()
script.intro.Parent = game:GetService("ServerStorage")
end)


RootJoint.Parent = Root
Neck.Parent = Torso
RightShoulder.Parent = Torso
LeftShoulder.Parent = Torso
RightHip.Parent = Torso
LeftHip.Parent = Torso



screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Torso

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso

local AXELERP = Instance.new("ManualWeld")
AXELERP.Parent = axe
AXELERP.Part0 = axe
AXELERP.Part1 = RightArm

local STAFFLERP = Instance.new("ManualWeld")
STAFFLERP.Parent = LeftArm
STAFFLERP.Part0 = nil
STAFFLERP.Part1 = nil

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end
local leftlocation = Instance.new("Part",Torso)
leftlocation.Size = Vector3.new(.1,.1,.1)
leftlocation.Anchored = false
leftlocation.Massless = true
leftlocation.Transparency = 1
leftlocation.CanCollide = false
local leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,2.05,0)
local rightlocation = Instance.new("Part",Torso)
rightlocationSize = Vector3.new(.1,.1,.1)
rightlocation.Anchored = false
rightlocation.Massless = true
rightlocation.Transparency = 1
rightlocation.CanCollide = false
local rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,2.05,0)
local leftlocation2 = Instance.new("Part",Torso)
leftlocation2.Size = Vector3.new(.1,.1,.1)
leftlocation2.Anchored = false
leftlocation2.Massless = true
leftlocation2.Transparency = 1
leftlocation2.CanCollide = false
local leftlocationweld2 = weldBetween(leftlocation2,RightLeg)
leftlocationweld2.C0 = CFrame.new(0,1.85,0)



local shirt = Instance.new("Shirt",Character)
shirt.ShirtTemplate = "rbxassetid://215295188"
local pants = Instance.new("Pants",Character)
pants.PantsTemplate = "rbxassetid://215295280"

local a = Instance.new("Part",Torso)
a.Size = Vector3.new(1,1,1)
a.Anchored = false
a.CanCollide = false
a.Massless = true
a.Transparency = 1
a.CFrame = Root.CFrame
local aweld = weldBetween(a,Root)
local z = 0
local cardtable={}
for i,v in pairs(cards:GetChildren()) do
	table.insert(cardtable,v)
end
for i = 1, 25 do
	z = z + 20
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local cardo = pick:Clone() cardo.Parent = Torso cardo.Massless = true cardo.Anchored = false
	local bweld = weldBetween(cardo,a) bweld.C0 = CFrame.new(0,0,6.25) * CFrame.Angles(0,math.rad(z),0)
	bweld.C1 = CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	coroutine.wrap(function()
		local time = .5
		local randomtime1 = math.random(-7.5,7.5)/10
		local randomtime2 = math.random(-7.5,7.5)/10
		local randomtime3 = math.random(-7.5,7.5)/10
		local anotherrandomtime = math.random(-1,1)/18
		while game:GetService("RunService").Stepped:wait() do
			bweld.C1 = bweld.C1:lerp(CFrame.Angles(math.rad(0),math.rad(time),math.rad(0)),.2)
			bweld.C0 = bweld.C0*CFrame.new(anotherrandomtime*math.sin(sine/32),anotherrandomtime*math.sin(sine/32),anotherrandomtime*math.sin(sine/32))* CFrame.Angles(math.rad(0+randomtime1),math.rad(0+randomtime2),math.rad(0+-randomtime3))
		end
	end)()
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
local A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
local B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
local x = Instance.new("Trail", PARENT)
x.Attachment0 = A
x.Attachment1 = B
x.Enabled = true
x.Lifetime = LIFETIME
x.TextureMode = "Static"
x.LightInfluence = 0
x.Color = COLOR
x.Transparency = NumberSequence.new(0, 1)
end

function ray(pos, di, ran, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, di.unit * ran), ignore)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local di = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, di, Distance, Ignore)
end

function colortween(a,speed,color1)
local z = {
Color = color1
}
local tween = smoothen:Create(a,TweenInfo.new(speed,Enum.EasingStyle.Linear),z)
tween:Play()
end

function takeDamage(victim,damage)
if victim.MaxHealth < 50000 and victim ~= hum then
victim.Health = victim.Health - damage
if victim.Health < 1 then
killtaunt()
end
else
victim.Parent:BreakJoints()
killtaunt()
end
end

function death(chara)
print("Ok")
end

function taunt()
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
if not secondform then
local bell = Instance.new("Sound",Torso)
bell.SoundId = "rbxassetid://4577865183"
bell.Volume = 10
bell.Pitch = math.random(9,10)/10
bell:Play()
repeat swait() until bell.TimePosition > 3
rdnm2 = tauntable[math.random(1,#tauntable)]
local tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = math.random(9.5,10.5)/10
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,6)
elseif secondform then
local rdnm2 = tauntable2[math.random(1,#tauntable2)]
for i = 1, 2 do
local tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,6)
end
end
end)()
end

function attacktaunt2()
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = followable[math.random(1,#followable)]
for i = 1, 2 do
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,6)
end
end)()
end

function attacktaunt()
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = attackable[math.random(1,#attackable)]
for i = 1, 2 do
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,6)
end
end)()
end

function killtaunt()
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = killable[math.random(1,#killable)]
for i = 1, 3 do
coroutine.wrap(function()
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
wait(.5)
wait(tauntsound.TimeLength)
tauntsound:Destroy()
tauntdebounce = false
end)()
end
end)()
end

function velo(a,name,pos,speed)
local bov = Instance.new("BodyVelocity",a)
bov.Name = name
bov.maxForce = Vector3.new(99999,99999,99999)
a.CFrame = CFrame.new(a.Position,pos)
bov.velocity = a.CFrame.lookVector*speed
end
function bolt(parent,from,too,endtarget,color,size,mat,offset)
local function iray(pos, di, ran, ignore)
local ing={endtarget}
	return mouse.Hit.p
end
local function iray2(StartPos, EndPos, Distance, Ignore)
local di = CFrame.new(StartPos,EndPos).lookVector
return iray(StartPos, di, Distance, Ignore)
end
lastposition = from
local step = 16
local distance = (from-too).magnitude
for i = 1,distance, step do
local from = lastposition
local too = from + -(from-too).unit*step+ Vector3.new(math.random(-offset,offset),math.random(-offset,offset),math.random(-offset,offset))
local bolt = Instance.new("Part",parent)
bolt.Size = Vector3.new(size,size,(from-too).magnitude)
bolt.Anchored = true
bolt.CanCollide = false
bolt.Name = "supeffect"
bolt.BrickColor = color
bolt.Material = mat
bolt.CFrame = CFrame.new(from:lerp(too,.5),too)
lastposition = too
coroutine.wrap(function()
for i = 1, 5 do
bolt.Transparency = bolt.Transparency + .2
wait()
end
bolt:Destroy()
end)()
end
local lastbolt = Instance.new("Part",parent)
lastbolt.Size = Vector3.new(1,1,(from-too).magnitude)
lastbolt.Anchored = true
lastbolt.CanCollide = false
lastbolt.BrickColor = color
lastbolt.Name = "supeffect"
lastbolt.Material = mat
lastbolt.CFrame = CFrame.new(lastposition,too)
lastbolt.Size = Vector3.new(size,size,size)
local start = lastposition
local hit,endp = iray2(lastposition,too,650,lastbolt)
local dis = (start - endp).magnitude
lastbolt.CFrame = CFrame.new(lastposition,too) * CFrame.new(0,0,-dis/2)
if dis < 20 then
lastbolt.Size = Vector3.new(size,size,dis)
else
lastbolt.Size = Vector3.new(size,size,20)
end
coroutine.wrap(function()
for i = 1, 5 do
lastbolt.Transparency = lastbolt.Transparency + .2
wait()
end
lastbolt:Destroy()
end)()
end
function littlebolt(parent,from,too,endtarget,color,size,mat,offset)
local function iray(pos, di, ran, ignore)
local ing={endtarget}
	return mouse.Hit.p
end
local function iray2(StartPos, EndPos, Distance, Ignore)
local di = CFrame.new(StartPos,EndPos).lookVector
return iray(StartPos, di, Distance, Ignore)
end
lastposition = from
local step = 1
local distance = (from-too).magnitude
for i = 1,distance, step do
local from = lastposition
local too = from + -(from-too).unit*step+ Vector3.new(math.random(-offset,offset),math.random(-offset,offset),math.random(-offset,offset))
local bolt = Instance.new("Part",parent)
bolt.Size = Vector3.new(size,size,(from-too).magnitude)
bolt.Anchored = true
bolt.CanCollide = false
bolt.Name = "supeffect"
bolt.BrickColor = color
bolt.Material = mat
bolt.CFrame = CFrame.new(from:lerp(too,.5),too)
lastposition = too
coroutine.wrap(function()
for i = 1, 5 do
bolt.Transparency = bolt.Transparency + .2
wait()
end
bolt:Destroy()
end)()
end
local lastbolt = Instance.new("Part",parent)
lastbolt.Size = Vector3.new(1,1,(from-too).magnitude)
lastbolt.Anchored = true
lastbolt.CanCollide = false
lastbolt.BrickColor = color
lastbolt.Name = "supeffect"
lastbolt.Material = mat
lastbolt.CFrame = CFrame.new(lastposition,too)
lastbolt.Size = Vector3.new(size,size,size)
local start = lastposition
local hit,endp = iray2(lastposition,too,650,lastbolt)
local dis = (start - endp).magnitude
lastbolt.CFrame = CFrame.new(lastposition,too) * CFrame.new(0,0,-dis/2)
if dis < 20 then
lastbolt.Size = Vector3.new(size,size,dis)
else
lastbolt.Size = Vector3.new(size,size,20)
end
coroutine.wrap(function()
for i = 1, 5 do
lastbolt.Transparency = lastbolt.Transparency + .2
wait()
end
lastbolt:Destroy()
end)()
end
function ballshockwave(position,transparency,brickcolor,mate,transparencyincrease,size)
local borb = Instance.new("Part",Torso)
borb.Anchored = true
borb.CanCollide = false
borb.Shape = "Ball"
borb.Name = "supeffect"
borb.Transparency = transparency
borb.Size = Vector3.new(1,1,1)
borb.Material = mate
borb.BrickColor = brickcolor
borb.CFrame = position
coroutine.wrap(function()
while borb.Transparency < 1 do
borb.Size = borb.Size + size
borb.Transparency = borb.Transparency + transparencyincrease
swait()
end
borb:Destroy()
end)()
end

dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 4
doomtheme.Name = "doomtheme"
doomtheme.Looped = false
doomtheme.SoundId = "rbxassetid://"..dmt2random
previd = dmt2random
doomtheme:Play()
coroutine.wrap(function()
while wait() do
pcall(function()
doomtheme.Ended:Wait()
doomtheme.Name = "removing"
doomtheme:Destroy()
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 4
doomtheme.Name = "doomtheme"
doomtheme.Looped = false
repeat dmt2random = dmt2[math.random(1,#dmt2)] until dmt2random ~= previd
doomtheme.SoundId = "rbxassetid://"..dmt2random
doomtheme:Play()
end)
end
end)()

Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound",Torso)
doomtheme.SoundId = "rbxassetid://"..dmt2random
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.Volume = 5
doomtheme:Play()
end
end)

coroutine.wrap(function()
while wait() do
hum.WalkSpeed = ws
hum.JumpPower = 80
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
swait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

pcall(function()
----defaultpos----
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
----defaultpos----
end)

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

function SOUND(PARENT,ID,VOL,LOOP,PITCH,REMOVE)
local so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so.Pitch = PITCH
so:Play()
removeuseless:AddItem(so,REMOVE)
end

function meshify(parent,scale,mid,tid)
local mesh = Instance.new("SpecialMesh",parent)
mesh.Name = "mesh"
mesh.Scale = scale
mesh.MeshId = "rbxassetid://"..mid
mesh.TextureId = "rbxassetid://"..tid
end
function blocktrail(position,size,trans,mat,color)
local trailblock = Instance.new("Part",Torso)
trailblock.Anchored = true
trailblock.CanCollide = false
trailblock.Transparency = trans
trailblock.Material = mat
trailblock.BrickColor = color
trailblock.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
trailblock.Size = size
coroutine.wrap(function()
while trailblock.Transparency < 1 do
trailblock.Transparency = trailblock.Transparency + trans/10
trailblock.Size = trailblock.Size - trailblock.Size/20
swait()
end
trailblock:Destroy()
end)()
end

function blood(parent,intensity)
coroutine.wrap(function()
local particlemiter1 = Instance.new("ParticleEmitter", parent)
particlemiter1.Enabled = true
particlemiter1.Color = ColorSequence.new(BrickColor.new("Crimson").Color)
particlemiter1.Texture = "rbxassetid://1391189545"
particlemiter1.Lifetime = NumberRange.new(.6)
particlemiter1.Size = NumberSequence.new(3,3)
particlemiter1.Transparency = NumberSequence.new(0,1)
particlemiter1.Rate = intensity
particlemiter1.Rotation = NumberRange.new(0,360)
particlemiter1.Speed = NumberRange.new(6)
particlemiter1.SpreadAngle = Vector2.new(180,180)
wait(.2)
particlemiter1.Enabled = false
removeuseless:AddItem(particlemiter1,10)
end)()
coroutine.wrap(function()
for i = 1, intensity/20 do
local ray = Ray.new(parent.Position, Vector3.new(0,-25,0))
local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,parent.Parent,bloc,Character,blooddecal,blowd,Torso},false,true)
if part and part.Parent ~= parent.Parent and not part.Parent:FindFirstChildOfClass("Humanoid") then
local vbn = math.random(5,15)
coroutine.wrap(function()
local blooddecal = Instance.new("Part",bloodfolder)
blooddecal.Size =  Vector3.new(vbn,.1,vbn)
blooddecal.Transparency = 1
blooddecal.Anchored = true
blooddecal.Name = "blowd"
blooddecal.CanCollide = false
blooddecal.Position = hitPosition 
blooddecal.Rotation = Vector3.new(0,math.random(-180,180),0)
local blood = Instance.new("Decal",blooddecal)
blood.Face = "Top"
blood.Texture = "rbxassetid://1391189545"
blood.Transparency = math.random(.1,.4)
wait(60)
for i = 1, 100 do
blood.Transparency = blood.Transparency + .01
swait()
end
blooddecal:Destroy()
end)()
else
end
swait()
end
end)()
end
function spikeball(position,scale,brickcolor,transparencyincrease,mat)
coroutine.wrap(function()
local spikeball = spkball:Clone() spikeball.Parent = Torso
spikeball.Anchored = true
spikeball.CanCollide = false
spikeball.Size = Vector3.new(1,1,1)
spikeball.BrickColor = brickcolor
spikeball.CFrame = position
spikeball.Transparency = .85
spikeball.Material = mat
while spikeball.Transparency < 1 do
spikeball.CFrame = spikeball.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
spikeball.Size = spikeball.Size + scale*4
spikeball.Transparency = spikeball.Transparency + transparencyincrease/10
swait()
end
spikeball:Destroy()
end)()
end
function shockwave(position,scale,transparency,brickcolor,speed,transparencyincrease,mat)
coroutine.wrap(function()
local shockwave = shckwav:Clone() shockwave.Parent = Torso
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = transparency
shockwave.BrickColor = brickcolor
shockwave.Material = mat
shockwave.CFrame = position * CFrame.new(0,scale.Y*1.25,0)
local shockwave2 = shckwav:Clone() shockwave2.Parent = Torso
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = shockwave.Transparency
shockwave2.BrickColor = shockwave.BrickColor
shockwave2.CFrame = shockwave.CFrame
shockwave2.Material = mat
while shockwave.Transparency < 1 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+speed),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-speed),0)
shockwave.Transparency = shockwave.Transparency + transparencyincrease
shockwave2.Transparency = shockwave2.Transparency + transparencyincrease
shockwave2.Size = shockwave2.Size + scale
shockwave.Size = shockwave.Size + scale
swait()
end
shockwave:Destroy()
shockwave2:Destroy()
end)()
end

function blockyeffect(brickcolor,size,trans,posi,mater,spread)
local blocky = Instance.new("Part",Torso)
blocky.Anchored = true
blocky.CanCollide = false
blocky.BrickColor = brickcolor
blocky.Size = size
blocky.Transparency = trans
blocky.CFrame = posi * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
blocky.Material = mater
local locbloc = Instance.new("Part",Torso)
locbloc.Anchored = true
locbloc.CanCollide = false
locbloc.Transparency = 1
locbloc.Size = Vector3.new(1,1,1)
locbloc.CFrame = blocky.CFrame * CFrame.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))
coroutine.wrap(function()
local a = math.random(-180,180)
local b = math.random(-180,180)
local c = math.random(-180,180)
for i = 1, 20 do
blocky.CFrame = blocky.CFrame:lerp(CFrame.new(locbloc.Position) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.2)
blocky.Transparency = blocky.Transparency + .05
swait()
end
blocky:Destroy()
locbloc:Destroy()
end)()
end

Head.BrickColor = BrickColor.new("Really black")
Torso.BrickColor = Head.BrickColor
LeftArm.BrickColor = Head.BrickColor
RightArm.BrickColor = Head.BrickColor
RightLeg.BrickColor = Head.BrickColor
LeftLeg.BrickColor = Head.BrickColor

Head.face:Destroy()

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then
end
end
end)()

coroutine.wrap(function()
		for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BodyVelocity") then
			v:Destroy()
		end
	end
	Character.Parent = workspace
	local det = Instance.new("Part",Torso)
	det.Anchored = true
	det.CanCollide = false
	det.Size = Vector3.new(1,1,1)
	det.Transparency = 1
	det.CFrame = CFrame.new(0,0,0)
	while wait() do
	script.Parent = Player.PlayerGui
	local ncfr = CFrame.new(Root.Position)
	local ncfr2 = CFrame.new(det.Position)
	local ma = (det.Position - Root.Position).Magnitude
if Character.Parent == nil then
	pcall(function()
	print("ok")
	end)
	local char = game.Workspace.non
	local char2 = char:Clone()
	local kkk = realhead:Clone()
	local scripty = script.mousthingy:Clone()
	local fakechar = char:Clone() fakechar.Parent = workspace fakechar.Name = Player.Name
	game.Workspace.non = fakechar
	local mainscript = script:Clone() kkk.Parent = mainscript char2.Parent = mainscript scripty.Parent = mainscript mainscript.Parent = Player.PlayerGui
	script:Destroy()
end
		end
end)()
mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
if not tauntdebounce then
rdnm2 = damagable[math.random(1,#damagable)]
local pcs = Instance.new("Sound",script.char.Head)
pcs.SoundId = "rbxassetid://"..rdnm2
pcs.Volume = 10
pcs.Name = "pcs"
removeuseless:AddItem(pcs,15)
end
	local char = game.Workspace.non
	local char2 = char:Clone()
	local scripty = script.mousthingy:Clone()
	local kkk = realhead:Clone()
	local effects = script.Effects:Clone()
	local fakechar = char:Clone() fakechar.Parent = workspace fakechar.Name = Player.Name
	game.Workspace.non = fakechar
	local mainscript = script:Clone() chain.Parent = mainscript effects.Parent = mainscript kkk.Parent = mainscript char2.Parent = mainscript scripty.Parent = mainscript mainscript.Parent = Player.PlayerGui
		script:Destroy()
	for i,v in pairs(game.Workspace.non:GetDescendants()) do
		if v:IsA("BodyVelocity") then
			v:Destroy()
		end
	end
elseif Press=='y' then
	if secondform then
	if debounce then return end
	debounce = true
	attacking = true
		attacktaunt()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-2,-0.1)*CFrame.Angles(math.rad(3),math.rad(-24.5),math.rad(2.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,2.4,-0.3)*CFrame.Angles(math.rad(-112.8),math.rad(-37.1),math.rad(8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.5,0.6)*CFrame.Angles(math.rad(-10.9),math.rad(-32),math.rad(20.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.7,1.6)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.7,-1.5,0.4)*CFrame.Angles(math.rad(161.4),math.rad(-0.5),math.rad(-26.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21.6),math.rad(-35.3),math.rad(7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		spikeball(st.shbox.CFrame,Vector3.new(.25,.25,.25),BrickColor.new("White"),.05,"Neon")
		ballshockwave(st.shbox.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(.6,.6,.6))
		coroutine.wrap(function()
		for i = 1, 10 do
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-1.9,-0.4)*CFrame.Angles(math.rad(17.9),math.rad(-24.5),math.rad(2.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,2.4,-0.3)*CFrame.Angles(math.rad(-112.8),math.rad(-37.1),math.rad(8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.5,1.3)*CFrame.Angles(math.rad(22.1),math.rad(-28.7),math.rad(31.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,-0.4,0.3)*CFrame.Angles(math.rad(117.5),math.rad(66.9),math.rad(-53.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5,2,1.3)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.6,-1.4,0.9)*CFrame.Angles(math.rad(83.9),math.rad(-0.5),math.rad(-26.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(-.2,0,2)*CFrame.Angles(math.rad(7.5),math.rad(-28.7),math.rad(22.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			swait()
		end
		g1:Destroy()
		debounce = false
		attacking = false
		end)()
		local shpos = Root
		for i = 1, 3 do
			local hbx = Instance.new("Part",Torso)
			hbx.Size = Vector3.new(1,1,1)
			hbx.CanCollide = false
			hbx.Anchored = true
			hbx.Transparency = 1
			hbx.CFrame = shpos.CFrame * CFrame.new(math.random(-20,20),math.random(5,25),math.random(-20,-12))
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.CanCollide = false card.Parent = Torso card.Size = Vector3.new(2.5,.25,1.75) card.Anchored = true card.CFrame = st.shbox.CFrame
	local ae = explse:Clone() ae.Anchored = false ae.Parent = Torso local aeweld = weldBetween(ae,card)
	SOUND(card,1544022435,8,false,math.random(9,11)/10,10)
	SOUND(card,1843578719,8,false,math.random(9,11)/10,10)
	coroutine.wrap(function()
		local hitz = false
		for i = 1, 12 do
			card.CFrame = card.CFrame:lerp(CFrame.new(hbx.Position),.2)
			swait()
		end
		hbx:Destroy()
		card.Anchored = false
		velo(card,"vel",mouse.Hit.p,310)
		card.Touched:Connect(function(hit)
			if hit.Parent ~= Character and hit.Parent.Parent ~= Character then
				for i,v in pairs(ae:GetDescendants()) do
					if v:IsA("ParticleEmitter") then v.Enabled = false end
				end
				removeuseless:AddItem(card,10)
				removeuseless:AddItem(ae,10)
				hitz = true
						local hit = damagealll(43,card.Position)
		for _,v in pairs(hit) do
        if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
	death(v:FindFirstChildOfClass("Humanoid").Parent)
    end
end
				card.Anchored = true
				card.Size = Vector3.new(.1,.1,.1)
				card.Transparency = 1
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3)/2)
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3)*2)
				spikeball(card.CFrame,Vector3.new(2.5,2.5,2.5),BrickColor.new("Really red"),.05,"Neon")
				spikeball(card.CFrame,Vector3.new(2.75,2.75,2.75)/2,BrickColor.new("White"),.05,"Neon")
	shockwave(CFrame.new(card.Position),Vector3.new(9,4,9)/1.5,.5,BrickColor.new("White"),math.random(5,8),.0125,"Neon")
	shockwave(CFrame.new(card.Position),Vector3.new(12,1,12)/1.5,.5,BrickColor.new("White"),math.random(2,6),.0125,"Neon")
			end
		end)
		coroutine.wrap(function()
			for i = 1, 900 do
				if hitz then break end
				swait()
			end
			if not hitz then
				hitz = true
								for i,v in pairs(ae:GetDescendants()) do
					if v:IsA("ParticleEmitter") then v.Enabled = false end
				end
				removeuseless:AddItem(card,10)
				removeuseless:AddItem(ae,10)
				hitz = true
				card.Anchored = true
				card.Size = Vector3.new(.1,.1,.1)
				card.Transparency = 1
			end
		end)()
	end)()
		end
	else
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character then
		if debounce then return end
		debounce = true
		attacking =  true
		local ETorso = mouse.Hit.p
		local enemyhum = mouse.Hit.p
	ws = 12
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
	for i = 1, 30 do
					g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,0.3,0.1)*CFrame.Angles(math.rad(-119.6),math.rad(50.5),math.rad(37))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.5,0.5)*CFrame.Angles(math.rad(-136.4),math.rad(-7.4),math.rad(3.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-56.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		swait()
	end
			SOUND(Torso,4571960003,10,false,math.random(9.5,10.5)/10,15)
				for i = 1, 6 do
		 blockyeffect(BrickColor.new("White"),Vector3.new(1,1,1),.05,leftlocation.CFrame,"Neon",math.random(7,12))
		end
	for i = 1, 12 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,0.2,0)*CFrame.Angles(math.rad(-147.7),math.rad(58.8),math.rad(54.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,-0.2,0.2)*CFrame.Angles(math.rad(-123.4),math.rad(-44.8),math.rad(-24.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-59.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
		swait()
	end
coroutine.wrap(function()
	for i = 1, 3 do
	 local ab = Instance.new("Part",Torso)
	ab.Anchored = true
	ab.CanCollide = false
	ab.Size = Vector3.new(1,1,1)
	ab.Transparency = 1
	ab.CFrame = Root.CFrame * CFrame.new(math.random(-15*2,15*2),math.random(-5,5),math.random(-15*2,15*2))
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1) card.CFrame = Root.CFrame
	SOUND(card,1888686669,8,false,math.random(9,11)/10,15)
	coroutine.wrap(function()
		local a = math.random(-180,180)
		local b = math.random(-180,180)
		local c = math.random(-180,180)
		for i = 1, 30 do
			card.CFrame = card.CFrame:lerp(CFrame.new(ab.Position)*CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.125)
			card.Size = card.Size + Vector3.new(.3,0,.5)
			swait()
		end
		ab:Destroy()
		local portal = Instance.new("Part",Torso)
		portal.Size = Vector3.new(.5,5,5)
		portal.Anchored = false
		portal.CanCollide = false
		portal.BrickColor = BrickColor.White()
		portal.Material = "Neon"
		portal.Shape = "Cylinder"
		portal.Transparency = 1
		local portalweld = weldBetween(portal,card) portalweld.C0 = portalweld.C0 * CFrame.Angles(math.rad(0),0,math.rad(90))
		for i = 1, 20 do
			portal.Transparency = portal.Transparency - .05
			card.CFrame = card.CFrame:lerp(CFrame.new(card.Position,ETorso.Position)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),.25)
			swait()
		end
bolt(Torso,portal.Position,ETorso.Position,ETorso,BrickColor.new("White"),1.2,"Neon",5)
spikeball(portal.CFrame,Vector3.new(.5,.5,.5),BrickColor.White(),.035,"Neon")
spikeball(portal.CFrame,Vector3.new(1,1,1)*2,BrickColor.White(),.06,"Neon")
local abz = Instance.new("Part",Torso)
abz.CFrame = portal.CFrame
abz.Anchored = true
abz.CanCollide = false
abz.Size = Vector3.new(1,1,1)
abz.Transparency = 1
removeuseless:AddItem(abz,10)
SOUND(abz,821439273,6,false,math.random(9,11)/10,15)
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemyhum.Parent.Torso.CFrame or enemyhum.Parent.UpperTorso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemyhum.Parent:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(portal.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				print("ok")
			end
end
end)
for i = 1, 40 do
	portal.Transparency = portal.Transparency + .025
	swait()
end
portal:Destroy()
local zmm = 0
for i = 1, 20 do
	zmm = zmm + 1
	card.Size = card.Size - card.Size/10
	card.CFrame = card.CFrame * CFrame.Angles(0,0,math.rad(zmm))
	swait()
end
card:Destroy()
	end)()
	end
end)()
	for i = 1, 20 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0.6,0.1)*CFrame.Angles(math.rad(-119.5),math.rad(47.8),math.rad(33.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.2,0.3)*CFrame.Angles(math.rad(-126.1),math.rad(-10.6),math.rad(-0.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-31.1),math.rad(-60.2),math.rad(-8.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
		swait()
	end
	ws = 100
	g1:Destroy()
	debounce = false
	attacking = false
	end
	end
elseif Press=='t' then
	taunt()
elseif Press=='r' then
	if debounce then return end
	if secondform then
	debounce = true
	attacking = true
	ws = 8
	local charging = true
	attacktaunt2()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(1000,90000,1000)
	coroutine.wrap(function()
	repeat
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.045)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,-0.1)*CFrame.Angles(math.rad(0.6),math.rad(-26),math.rad(-1.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,1.5,0.7)*CFrame.Angles(math.rad(-92.1),math.rad(-24.6),math.rad(-6.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.3,0.8)*CFrame.Angles(math.rad(-12.1),math.rad(-31.6),math.rad(18.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.9,1.2,1.4)*CFrame.Angles(math.rad(20.3),math.rad(24.1),math.rad(14.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-19.9),math.rad(-38.3),math.rad(7.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.3,-1.1,1)*CFrame.Angles(math.rad(77.7),math.rad(49.3),math.rad(22.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		swait()
		until charging == false
	end)()
	local ball = spkball2:Clone() ball.Parent = Torso
	ball.Transparency = 1
	ball.Size = Vector3.new(.1,.1,.1)/10
	ball.Anchored = false
	ball.CanCollide = false
	ball.Massless = true
	for i = 1, 2 do 
SOUND(ball,1845012046,10,true,math.random(9,11)/10,math.huge)
end
local ballweld = weldBetween(ball,st.shbox) ballweld.C0 = ballweld.C0 * CFrame.new(0,0,2)
for i = 1, 40 do
	ball.Transparency = ball.Transparency - .025
	ball.Size = ball.Size + Vector3.new(.06775,.06775,.06775)
	swait()
end
	for i = 1, 300 do
local Hit = damagealll(40,st.shbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
local torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Root.Position,torso.Position).lookVector*-50
removeuseless:AddItem(vel,.1)
end
end
		swait()
	end
	charging = false
	
	SOUND(st.shbox,142070127,10,false,math.random(9,11)/15)
	SOUND(st.shbox,1040136448,10,false,math.random(9,11)/15)
local didhit = false
local mate = nil
local colo = nil
local ray = Ray.new(Root.Position,Vector3.new(0,-25,0))
local tabd = {bloodfolder,Character}
local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
if part then
	didhit = true
mate = part.Material
colo = part.BrickColor
else
	didhit = false
end
if didhit then
	shockwave(CFrame.new(hitPosition),Vector3.new(4,5,4)*1.5,.05,BrickColor.new("White"),math.random(16,19),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(6,3,6)*1.5,.05,BrickColor.new("White"),math.random(8,12),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(9,2,9)*1.5,.05,BrickColor.new("White"),math.random(5,8),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(12,1,12)*1.5,.05,BrickColor.new("White"),math.random(2,6),.05,"Neon")
end
	ballshockwave(ball.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(6,6,6,6))
	spikeball(ball.CFrame,Vector3.new(1,1,1)/2,BrickColor.new("Really red"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1.5,1.5,1.5)/2,BrickColor.new("White"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1,1,1),BrickColor.new("Really red"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1.5,1.5,1.5),BrickColor.new("White"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(2,2,2)*1.5,BrickColor.new("White"),.05,"Neon")
	ball:Destroy()
local Hit = damagealll(40,st.shbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
local torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(st.shbox.Position,torso.Position).lookVector*350
removeuseless:AddItem(vel,.1)
coroutine.wrap(function()
wait(2)
death(slachtoffer.Parent)
end)()
end
end
ws = 0
	for i = 1, 15 do
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-1.9,-0.5)*CFrame.Angles(math.rad(17.4),math.rad(-35.2),math.rad(1.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,1.7,0.2)*CFrame.Angles(math.rad(-97.3),math.rad(-23.1),math.rad(7.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.1,1.5)*CFrame.Angles(math.rad(21.6),math.rad(-31.6),math.rad(18.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,2.1,1.3)*CFrame.Angles(math.rad(33.6),math.rad(9.3),math.rad(-11.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.2,-0.5,1.2)*CFrame.Angles(math.rad(64.5),math.rad(24.6),math.rad(17.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,3)*CFrame.Angles(math.rad(33.8),math.rad(-46.2),math.rad(2.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		swait()
	end
	debounce = false
	attacking = false
	g1:Destroy()
	ws = 90
	else
		debounce = true
		attacking = true
	ws = 12
		local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
	for i = 1, 28 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1)
	card.Anchored = true
	card.Transparency = 0
	card.CanCollide= false
	card.CFrame = Root.CFrame
	SOUND(card,4503166384,8,false,math.random(9,11)/10,15)
	local bbox = Instance.new("Part",Torso)
	bbox.Size = Vector3.new(1,1,1)
	bbox.Anchored = true
	bbox.CanCollide = false
	bbox.Transparency = 1
	bbox.CFrame = Root.CFrame * CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
	coroutine.wrap(function()
		local a1 = math.random(-180,180)
		local a2 = math.random(-180,180)
		local a3 = math.random(-180,180)
		for i = 1, 20 do
			card.Size = card.Size + Vector3.new(.1,0,.15)
			card.CFrame = card.CFrame:lerp(CFrame.new(bbox.Position)*CFrame.Angles(math.rad(a1),math.rad(a2),math.rad(a3)),.2)
			swait()
		end
		bbox:Destroy()
		for i = 1, 20 do
			card.CFrame = card.CFrame:lerp(CFrame.new(card.Position,mouse.Hit.p),.15)
			swait()
		end
		for i = 1, 2 do
		 blockyeffect(BrickColor.new("White"),Vector3.new(1.5,1.5,1.5),.05,card.CFrame,"Neon",15)
		end
		SOUND(card,550210020,8,false,math.random(9,11)/10,15)
		spikeball(card.CFrame,Vector3.new(1.5,1.5,1.5),BrickColor.new("White"),.15,"Neon")
		ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.15,Vector3.new(2,2,2))
		card.Anchored = false
		velo(card,"vex",mouse.Hit.p,math.random(350,550))
		card.Touched:connect(function(hit)
	if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and hit.Parent:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = hit.Parent:FindFirstChildOfClass("Humanoid")
local enemychar = slachtoffer.Parent
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemychar.Torso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemychar:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(card.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				enemychar:Destroy()
			end
end
end)
	end
	wait(4)
	card.Anchored = true
					local a11 = math.random(-180,180)
					local a22 = math.random(-180,180)
					local a33 = math.random(-180,180)
	for i = 1, 20 do
		card.CFrame = card.CFrame:lerp(card.CFrame * CFrame.Angles(math.rad(a11),math.rad(a22),math.rad(a33)),.15)
		swait()
	end
	card:Destroy()
		end)
	end)()
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-1.9,0)*CFrame.Angles(math.rad(3),math.rad(37.8),math.rad(-2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,-0.4,0.2)*CFrame.Angles(math.rad(-23.2),math.rad(69.8),math.rad(-36.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.2,2)*CFrame.Angles(math.rad(20.8),math.rad(-36.8),math.rad(-2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,0,0.9)*CFrame.Angles(math.rad(-40.3),math.rad(-65.2),math.rad(72.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,1.5,2)*CFrame.Angles(math.rad(30.4),math.rad(43.1),math.rad(-30.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-34.3),math.rad(39.3),math.rad(2.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		swait()
	end
	ws = 0
	for i = 1, 35 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-1.9,-0.1)*CFrame.Angles(math.rad(6.4),math.rad(-35),math.rad(6.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.2,2.1,1.4)*CFrame.Angles(math.rad(-149.3),math.rad(-56.1),math.rad(-89.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.8,0.6)*CFrame.Angles(math.rad(-8.9),math.rad(-44.7),math.rad(27))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5,2,1.2)*CFrame.Angles(math.rad(-29.7),math.rad(68.4),math.rad(-32.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,0.9,1.8)*CFrame.Angles(math.rad(42.7),math.rad(10.6),math.rad(-19.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-8.7),math.rad(-30.5),math.rad(14.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		swait()
	end
	g1:Destroy()
	ws = 100
	debounce = false
	attacking = false
	end
elseif Press=='q' then
	if secondform then
	if debounce then return end
	debounce = true
	attacking = true
	ws = 0
	local marandom = math.random(1,2)
	if marandom == 1 then
	coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = fireable[math.random(1,#fireable)]
for i = 1, 2 do
local tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,12)
end
	end)()
	end
	local a = 0
		local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(3000,90000,3000)
local spin = Instance.new("Sound",st.shbox)
spin.SoundId = "rbxassetid://4255432837"
spin.Volume = 8
spin.Pitch = 1.15
spin.Looped = true
spin:Play()
for i = 1, 30 do
	a = a + 30
	g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	blocktrail(st.shbox.Position,Vector3.new(1,1,1),.05,"Neon",BrickColor.new("Really red"))
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-2,0)*CFrame.Angles(math.rad(1.6),math.rad(26),math.rad(-2.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.7,0.9)*CFrame.Angles(math.rad(-145.3),math.rad(-5),math.rad(-26.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.7,1.4)*CFrame.Angles(math.rad(8.8),math.rad(-27.1),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.7,1.6)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.5,-0.2,1)*CFrame.Angles(math.rad(92.6),math.rad(10.8),math.rad(-21.9))*CFrame.Angles(math.rad(a/2),math.rad(0),math.rad(a)),.25/2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21),math.rad(27.3),math.rad(-0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	swait()
end
ws = 6
spin:Destroy()
local fireamb = Instance.new("Sound",st.shbox)
fireamb.SoundId = "rbxassetid://1301200629"
fireamb.Volume = 0
fireamb.Pitch = math.random(9,11)/10
fireamb.Looped = true
fireamb:Play()
for i = 1, 150 do
	fireamb.Volume = fireamb.Volume + .5
	g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	local zz = math.random(1,2)
	if zz == 1 then
	local rrandom = rdx[math.random(1,#rdx)]
	local locater = Instance.new("Part",Torso)
	locater.Size = Vector3.new(2,2,2)
	locater.Anchored = false
	locater.CanCollide = false
	locater.Transparency = 1
	locater.Massless = true
	locater.CFrame = Root.CFrame*CFrame.new(0,0,-5)
	spikeball(locater.CFrame,Vector3.new(2,2,2),BrickColor.new(rrandom),.25,"Neon")
	local fire = Instance.new("Part",Torso)
	fire.Anchored = false
	fire.CanCollide = false
	fire.Massless = true
	fire.Material = "Neon"
	fire.BrickColor = BrickColor.new(rrandom)
	fire.Size = Vector3.new(1,1,1)
	fire.Transparency = 1
	local fireweld = weldBetween(fire,locater) fireweld.C0 = fireweld.C0 * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	fire.Touched:Connect(function(hit)
		if hit.Parent ~= nil and hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChildOfClass("Humanoid") ~= hum then
			death(hit.Parent)
		end
	end)
coroutine.wrap(function()
	velo(locater,"velo",mouse.Hit.p,250)
		for i = 1, 40 do
			fire.Size = fire.Size + Vector3.new(.7,.7,.7)
			 fire.Transparency = fire.Transparency - .025
			swait()
		end
		for i = 1, 20 do
			fire.Transparency = fire.Transparency + .05
			swait()
		end
		locater:Destroy()
		fire:Destroy()
end)()
end
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.2,-0.5,1.1)*CFrame.Angles(math.rad(103.5),math.rad(-15.3),math.rad(7.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-2,-0.1)*CFrame.Angles(math.rad(1.9),math.rad(-38.4),math.rad(-0.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,1.8,-0.1)*CFrame.Angles(math.rad(-82.6),math.rad(-32.5),math.rad(24.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2,1.5)*CFrame.Angles(math.rad(19),math.rad(-40),math.rad(16.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.6,2)*CFrame.Angles(math.rad(45.3),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21.6),math.rad(-39.9),math.rad(-0.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	swait()
end
coroutine.wrap(function()
	fireamb.Volume = 10
	repeat swait() fireamb.Volume = fireamb.Volume - .5 until fireamb.Volume <= 0
	fireamb:Destroy()
end)()
	debounce = false
	g1:Destroy()
	attacking = false
	ws = 100
	end
elseif Press=='g' then
	if secondform then
	if girl then return end
	if debounce then return end
	girl = true
	attacking = true
	debounce = true
	SOUND(st.shbox,3292075199,8,false,1.1,15)
	ws = 8
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,90000,0)
	for i = 1, 4 do
	for i = 1, 10 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		blockyeffect(BrickColor.new("Really red"),Vector3.new(.5,.5,.5),.05,st.shbox.CFrame,"Neon",15)
		blocktrail(st.shbox.Position,Vector3.new(1.5,1.5,1.5),.05,"Neon",BrickColor.new("Really red"))
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.3,-2,-0.1)*CFrame.Angles(math.rad(-0.8),math.rad(-14.6+6*math.sin(sine/27)),math.rad(-6.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,0.5)*CFrame.Angles(math.rad(-22.1+2*math.sin(sine/16)),math.rad(-27.1+2*math.sin(sine/16)),math.rad(0.5+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5-1*math.sin(sine/16)),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.6,1.5)*CFrame.Angles(math.rad(34.4+1*math.sin(sine/16)),math.rad(12.7+1*math.sin(sine/16)),math.rad(-11.1+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.15*math.sin(sine/32),0,.15*math.sin(sine/27))*CFrame.Angles(math.rad(-21.3 + 4 * math.sin(sine/24)),math.rad(-14.9+4*math.sin(sine/31)),math.rad(-0.5+4*math.sin(sine/27)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,1.1,0.5)*CFrame.Angles(math.rad(-76.8),math.rad(-25.7),math.rad(-3.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.1,-0.5,1.2)*CFrame.Angles(math.rad(102.8),math.rad(10.9),math.rad(2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	swait()
	end
	for i = 1, 10 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		blockyeffect(BrickColor.new("Really red"),Vector3.new(.5,.5,.5),.05,st.shbox.CFrame,"Neon",15)
		blocktrail(st.shbox.Position,Vector3.new(1.5,1.5,1.5),.05,"Neon",BrickColor.new("Really red"))
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.3,-2,-0.1)*CFrame.Angles(math.rad(-0.8),math.rad(-14.6+6*math.sin(sine/27)),math.rad(-6.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,0.5)*CFrame.Angles(math.rad(-22.1+2*math.sin(sine/16)),math.rad(-27.1+2*math.sin(sine/16)),math.rad(0.5+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5-1*math.sin(sine/16)),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.6,1.5)*CFrame.Angles(math.rad(34.4+1*math.sin(sine/16)),math.rad(12.7+1*math.sin(sine/16)),math.rad(-11.1+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.15*math.sin(sine/32),0,.15*math.sin(sine/27))*CFrame.Angles(math.rad(-21.3 + 4 * math.sin(sine/24)),math.rad(-14.9+4*math.sin(sine/31)),math.rad(-0.5+4*math.sin(sine/27)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.1,-0.5,1.2)*CFrame.Angles(math.rad(102.8),math.rad(10.9),math.rad(2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,1.6,0.1)*CFrame.Angles(math.rad(-141.7),math.rad(-17.2),math.rad(-11.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		swait()
	end
	swait()
	end
	local zx = girlemy:Clone() zx.Parent = Torso zx.ai.Disabled = false zx.core.Disabled = false zx.Torso.CFrame = CFrame.new(mouse.Hit.p)
debounce = false
attacking = false
ws = 90
g1:Destroy()
	else
		if debounce then return end
			ws = 12
			attacking = true
			debounce = true
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
	for i = 1, 30 do
					g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,0.3,0.1)*CFrame.Angles(math.rad(-119.6),math.rad(50.5),math.rad(37))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.5,0.5)*CFrame.Angles(math.rad(-136.4),math.rad(-7.4),math.rad(3.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-56.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		swait()
	end
			SOUND(Torso,4571960003,10,false,math.random(9.5,10.5)/10,15)
				for i = 1, 6 do
		 blockyeffect(BrickColor.new("White"),Vector3.new(1,1,1),.05,leftlocation.CFrame,"Neon",math.random(7,12))
		end
	for i = 1, 12 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,0.2,0)*CFrame.Angles(math.rad(-147.7),math.rad(58.8),math.rad(54.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,-0.2,0.2)*CFrame.Angles(math.rad(-123.4),math.rad(-44.8),math.rad(-24.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-59.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
		swait()
	end
		if mouse.Target ~= nil then
		local sicko = skully2:Clone() sicko.Parent = workspace sicko.skully.mainp.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,5,0) sicko.Disabled = false
		end
			for i = 1, 20 do
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0.6,0.1)*CFrame.Angles(math.rad(-119.5),math.rad(47.8),math.rad(33.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.2,0.3)*CFrame.Angles(math.rad(-126.1),math.rad(-10.6),math.rad(-0.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-31.1),math.rad(-60.2),math.rad(-8.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
		swait()
			end
			g1:Destroy()
			debounce = false
			attacking = false
			ws = 100
		end
elseif Press=='f' then

elseif Press=='z' then
	if debounce then return end
	debounce = true
	attacking = true
	ws = 120
	axe.Transparency = 0
	realhead.beard.Transparency = 0
	doomtheme.SoundId = "rbxassetid://187042245"
	doomtheme:Play()
	doomtheme.Volume = 10
	doomtheme.Pitch = .98
	doomtheme.TimePosition = 3
local light = Instance.new("PointLight", Torso)
light.Color = Color3.new(0,0,0)
light.Range = 0
light.Brightness = 0
light.Range = 35
light.Brightness = 20
light.Color = BrickColor.Random().Color
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
coroutine.wrap(function()
while wait(.15) do
	light.Color = BrickColor.Random().Color
b2.Text = "DIGGY DIGGY HOLE!!!"
b2.TextColor3 = BrickColor.Random().Color
end
end)()
b2.Font = "Arcade"
b2.TextSize = 30
b2.TextStrokeTransparency = 0
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
	while wait() do
		for i = 1, 9 do
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-8.9),math.rad(-41),math.rad(-8.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,1.6,-0.2)*CFrame.Angles(math.rad(-49),math.rad(-15.7),math.rad(35.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5,2.6,0.1)*CFrame.Angles(math.rad(-38.5),math.rad(-40.6),math.rad(-1.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.4,-1.2)*CFrame.Angles(math.rad(-129.1),math.rad(30.5),math.rad(-34.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3,1.5,1.8)*CFrame.Angles(math.rad(23.5),math.rad(15.5),math.rad(-18.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-27.6),math.rad(-40.7),math.rad(-28.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			AXELERP.C0 = AXELERP.C0:lerp(CFrame.new(2.1,-0.2,-0.2)*CFrame.Angles(math.rad(-78.1),math.rad(0.9),math.rad(-125.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			swait()
		end
				for i = 1, 9 do
					AXELERP.C0 = AXELERP.C0:lerp(CFrame.new(2.5,0.5,-1.3)*CFrame.Angles(math.rad(-118.9),math.rad(-23.3),math.rad(-86))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-7.6),math.rad(-27.9),math.rad(-5.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(2,1.1,0.5)*CFrame.Angles(math.rad(26.5),math.rad(-15.7),math.rad(35.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5,1.7,2)*CFrame.Angles(math.rad(8.2),math.rad(-40.6),math.rad(-1.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-2,0.4,-0.4)*CFrame.Angles(math.rad(-149),math.rad(-23.9),math.rad(-50.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3,1.5,1.8)*CFrame.Angles(math.rad(23.5),math.rad(15.5),math.rad(-18.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-27.6),math.rad(-40.7),math.rad(16.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			swait()
		end
	end
elseif Press=='e' then
	if debounce then return end
	debounce = true
	attacking = true
	if secondform then
		ws = 8
		attacktaunt()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,90000,0)
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-2,-0.1)*CFrame.Angles(math.rad(2.9),math.rad(30.1),math.rad(-1.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.9,2.3,0.5)*CFrame.Angles(math.rad(107),math.rad(-57.9),math.rad(-165.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.6,1.7)*CFrame.Angles(math.rad(14.2),math.rad(-27.1),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,1.7,1.7)*CFrame.Angles(math.rad(31.1),math.rad(28.5),math.rad(-18.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.6,0,1.1)*CFrame.Angles(math.rad(96),math.rad(-12.6),math.rad(35.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-17),math.rad(31.2),math.rad(-14.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			swait()
		end
		local a = Instance.new("Part",Torso)
		a.Size = Vector3.new(1,1,1)
		a.Anchored = true
		a.CanCollide = false
		a.Transparency = 1
		a.CFrame = Root.CFrame * CFrame.new(0,0,-5)
		for i = 1, 2 do
		local am = Instance.new("Sound",a)
		am.SoundId = "rbxassetid://4086041756"
		am.Volume = 10
		am.Pitch = .95
		am.TimePosition = .25
		am:Play()
		removeuseless:AddItem(am,15)
		end
		coroutine.wrap(function()
			local xx = 20
			for i = 1, 200 do
				a.CFrame = a.CFrame * CFrame.new(0,0,-xx)
local didhit = false
local mate = nil
local colo = nil
local ray = Ray.new(a.Position,Vector3.new(0,-25,0))
local tabd = {bloodfolder,Character}
local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
if part then
	didhit = true
mate = part.Material
colo = part.BrickColor
else
	didhit = false
end
if didhit then
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc] local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1)
	card.CFrame = CFrame.new(hitPosition) * CFrame.new(math.random(-5,5),0,math.random(-5,5))
	coroutine.wrap(function()
		local az = math.random(-180,180)
		for i = 1, 40 do
			card.CFrame = card.CFrame:lerp(card.CFrame*CFrame.Angles(0,math.rad(az),0),.09)
			card.Size = card.Size + Vector3.new(.175,0,.32)
			swait()
		end
		local explo = Instance.new("Part",Torso)
		explo.BrickColor = BrickColor.new("Really black")
		explo.Material = "Neon"
		explo.Anchored = true
		explo.CanCollide = false
		explo.CFrame = card.CFrame * CFrame.Angles(math.rad(90),math.rad(90),0)
		explo.Size = Vector3.new(3,3,3)
		local explom = Instance.new("SpecialMesh",explo)
		explom.MeshType = "Sphere"
		SOUND(explo,3855293277,4,false,math.random(9,11)/10,15)
		local hit = damagealll(15,card.Position)
		for _,v in pairs(hit) do
        if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
	death(v:FindFirstChildOfClass("Humanoid").Parent)
    end
end
		local explo2 = explo:Clone() explo2.Parent = Torso explo2.BrickColor = BrickColor.new("White") explo2.Transparency = .5
			spikeball(CFrame.new(explo.Position),Vector3.new(2,2,2),BrickColor.new("White"),.1,"Neon")
			shockwave(CFrame.new(explo.Position),Vector3.new(2,.75,2),.05,BrickColor.new("Really black"),math.random(16,21),.1,"Neon")
			shockwave(CFrame.new(explo.Position),Vector3.new(3,.25,3),.05,BrickColor.new("White"),math.random(2,5),.05,"Neon")
			for i = 1, 20 do
				explo.Size = explo.Size + Vector3.new(5,1,1)
				explo.Transparency = explo.Transparency + .05
				explo2.Size = explo.Size + Vector3.new(5,1,1)*1.1
				explo2.Transparency = explo.Transparency + .025
				swait()
			end
			explo.Transparency = 1
			removeuseless:AddItem(explo,3)
			explo2:Destroy()
		local az2 = math.random(-180,180)
		for i = 1, 40 do
			card.CFrame = card.CFrame:lerp(card.CFrame*CFrame.Angles(0,math.rad(az2),0),.09)
			card.Size = card.Size - Vector3.new(.175,0,.32)
			swait()
		end
		card:Destroy()
		end)()
end
				swait()
			end
			a:Destroy()
		end)()
		for i = 1, 26 do
			blocktrail(st.shbox.Position,Vector3.new(1.5,1.5,1.5),.05,"Neon",BrickColor.new("Really red"))
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-2,0.2)*CFrame.Angles(math.rad(-6.8),math.rad(-42.2),math.rad(2.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,0.9,0.5)*CFrame.Angles(math.rad(-100.2),math.rad(28.8),math.rad(5.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.8,0.4)*CFrame.Angles(math.rad(-32.7),math.rad(-50.3),math.rad(9.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,0.5,2)*CFrame.Angles(math.rad(64.5),math.rad(28.5),math.rad(-18.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.1,-0.6,1.2)*CFrame.Angles(math.rad(113.2),math.rad(13.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-36.8),math.rad(-44.8),math.rad(4.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			swait()
		end
		g1:Destroy()
		debounce = false
		attacking = false
		ws = 90
		else---post attack for corruptAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	ws = 8
	local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(3000,90000,3000)
SOUND(Torso,1888686669,10,false,math.random(9,11)/10,15)
coroutine.wrap(function()
for i = 1, 20 do
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-1.9,0.5)*CFrame.Angles(math.rad(-15.7),math.rad(-46.7),math.rad(2.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,2.7,-0.5)*CFrame.Angles(math.rad(-105.8),math.rad(-50.1),math.rad(24.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1.3,1.3)*CFrame.Angles(math.rad(4),math.rad(46),math.rad(-35.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-56.3),math.rad(2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	swait()
end
end)()
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local bigcard = pick:Clone() bigcard.Parent = Torso bigcard.Size = Vector3.new(.1,.25,.1) bigcard.Transparency = 0
	bigcard.Anchored = false
	bigcard.CanCollide = false
	bigcard.Massless = true
	bigcard.Material = "Neon"
    local bigcardweld = weldBetween(bigcard,Root) bigcardweld.C0 =  CFrame.Angles(math.rad(90),0,math.rad(0))* CFrame.new(0,0,5) 
local titt = 0
spikeball(bigcard.CFrame,Vector3.new(.5,.5,.5),BrickColor.new("White"),.035,"Neon")
spikeball(bigcard.CFrame,Vector3.new(1,1,1),BrickColor.new("White"),.05,"Neon")
ballshockwave(bigcard.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(1.5,1.5,1.5))
	for i = 1, 40 do
		titt = titt + 2
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		bigcard.Size = bigcard.Size + Vector3.new(.175,0,.3)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
    local blackhole = Instance.new("Sound",bigcard)
blackhole.SoundId = "rbxassetid://1835334344"
blackhole.Volume = 8
blackhole.Pitch = 1
blackhole:Play()
	local portal = Instance.new("Part",Torso)
	portal.Anchored = false
	portal.CanCollide = false
	portal.Size = Vector3.new(.35,4.5,4.5)
	portal.Material = "Neon"
	portal.BrickColor = BrickColor.new("White")
	portal.Shape = "Cylinder"
	portal.Transparency = 1
	local portalweld = weldBetween(portal,bigcard) portalweld.C0 = portalweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
	for i = 1, 10 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		portal.Transparency = portal.Transparency - .05
		bigcard.Size = bigcard.Size + Vector3.new(.175/2,0,.3/2)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
		for i = 1, 10 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		portal.Transparency = portal.Transparency - .05
		bigcard.Size = bigcard.Size - Vector3.new(.175/2,0,.3/2)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
	titt = titt + 4
	local hitbox = Instance.new("Part",Torso)
	hitbox.Size = Vector3.new(1,1,1)
	hitbox.Anchored = true
	hitbox.CanCollide = false
	hitbox.CFrame = Root.CFrame * CFrame.new(0,0,-10)
	hitbox.Transparency = 1
	for i = 1, 500 do
		local zv = math.random(1,2)
		if zv == 1 then
			local blc = Instance.new("Part",Torso)
			blc.Anchored = true
			blc.CanCollide = false
			blc.CFrame = hitbox.CFrame * CFrame.new(0,0,-10) * CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
			blc.Material = "Neon"
			blc.Transparency = 0
			blc.BrickColor = BrickColor.new("White")
			blc.Size = Vector3.new(2,2,2)
			coroutine.wrap(function()
				for i = 1, 20 do
					blc.Size = blc.Size - Vector3.new(.1,.1,.1)
					blc.CFrame = blc.CFrame:lerp(CFrame.new(portal.Position),.2)
					blc.Transparency = blc.Transparency + .05
					swait()
				end
				blc:Destroy()
			end)()
		end
		local hit = damagealll(27,hitbox.Position)
		for _,v in pairs(hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local enemychar = slachtoffer.Parent
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemychar.Torso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemychar:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(portal.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				enemychar:Destroy()
			end
end
end)
end
		end
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		hitbox.CFrame = Root.CFrame * CFrame.new(0,0,-25)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.25)
		swait()
	end
	bigcardweld:Destroy()
	bigcard.Anchored = true
	coroutine.wrap(function()
		SOUND(portal,4086044079,10,false,math.random(9.5,10.5)/10,15)
		for i = 1, 20 do
			portal.Transparency = portal.Transparency + .05
			portal.Size = portal.Size - portal.size/20
			bigcard.Size = bigcard.Size - bigcard.Size/10
			bigcard.Transparency = bigcard.Transparency + .05
			swait()
		end
		removeuseless:AddItem(portal,10)
		bigcard:Destroy()
	end)()
	g1:Destroy()
	ws = 100
	debounce = false
	attacking = false
	end
end
end)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.Magnitude < 8 and not attacking then
position = "Idle"
elseif Root.Velocity.Magnitude > 8 and not attacking then
position = "Walking"
else
end
wait()
end
end)
checks1()

immortal = {}

for e = 1, #immortal do
if immortal[e] ~= nil then
local STUFF = immortal[e]
local PART = STUFF[1]
local PARENT = STUFF[2]
local MATERIAL = STUFF[3]
local COLOR = STUFF[4]
local TRANSPARENCY = STUFF[5]
if levitate then
if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
PART.Material = MATERIAL
PART.Color = COLOR
PART.Transparency = TRANSPARENCY
end
PART.AncestryChanged:connect(function()
PART.Parent = PARENT
end)
else
if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
PART.Material = MATERIAL
PART.Color = COLOR
PART.Transparency = TRANSPARENCY
end
PART.AncestryChanged:connect(function()
PART.Parent = PARENT
end)
end
end
end
function immortality()
for e = 1, #immortal do
if immortal[e] ~= nil then
local STUFF = immortal[e]
local PART = STUFF[1]
local PARENT = STUFF[2]
local MATERIAL = STUFF[3]
local COLOR = STUFF[4]
local TRANSPARENCY = STUFF[5]
if PART.ClassName == "Part" and PART == Root then
PART.Material = MATERIAL
PART.Color = COLOR
PART.Transparency = TRANSPARENCY
end
if PART.Parent ~= PARENT then
hum:Remove()
PART.Parent = PARENT
hum = Instance.new("Humanoid",Character)
hum.Name = "noneofurbusiness"
end
end
end
end
if Character:FindFirstChild"CharacterMesh" then
	Character:FindFirstChild"CharacterMesh":Destroy()
end
if Character:FindFirstChild"Body Colors" then
Character:FindFirstChild"Body Colors".HeadColor = BrickColor.new("Really black")
Character:FindFirstChild"Body Colors".TorsoColor = BrickColor.new("Really black")
Character:FindFirstChild"Body Colors".LeftArmColor = BrickColor.new("Really black")
Character:FindFirstChild"Body Colors".RightArmColor = BrickColor.new("Really black")
Character:FindFirstChild"Body Colors".LeftLegColor = BrickColor.new("Really black")
Character:FindFirstChild"Body Colors".RightLegColor = BrickColor.new("Really black")
end
coroutine.wrap(function()
	while wait(.25) do
				local t = wosh:Clone() t.Parent = Torso
	t.CFrame = Root.CFrame * CFrame.new(0,math.random(-5,5),0) * CFrame.Angles(0,math.rad(math.random(-180,180)),0)
	t.Anchored = false
	t.Massless = true
	t.CanCollide = false
	t.Transparency = 1
local tweld = weldBetween(t,Torso)
	coroutine.wrap(function()
		local mthrandom = math.random(-5,5)
		local xci = math.random(-1,1)/40
		local xci2 = math.random(.8,1)
				for i = 1, 100 do
			t.Size = t.Size + Vector3.new(.8,.05,.8)/10
			t.Transparency = t.Transparency - .00125/2
			tweld.C0 = tweld.C0 * CFrame.new(0,xci,0) * CFrame.Angles(0,math.rad(0+mthrandom),0)
			swait()
		end
		for i = 1, 100 do
			t.Size = t.Size + Vector3.new(.8,.05,.8)/10
			t.Transparency = t.Transparency + .00125/2
			tweld.C0 = tweld.C0 * CFrame.new(0,xci,0) * CFrame.Angles(0,math.rad(0+mthrandom),0)
			swait()
		end
		t:Destroy()
	end)()
	end
end)()
coroutine.wrap(function()
while game:GetService("RunService").Stepped:wait() do
hpheight = 4 + 1 * math.sin(sine/16)
hum.HipHeight = hpheight
Head.Transparency = 1
Head.BrickColor = BrickColor.new("Really black")
Torso.BrickColor = Head.BrickColor
LeftArm.BrickColor = Head.BrickColor
RightArm.BrickColor = Head.BrickColor
LeftLeg.BrickColor = Head.BrickColor
RightLeg.BrickColor = Head.BrickColor
hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if Torso:FindFirstChild("Neck") == nil then
immortality()
end
swait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
sine2 = sine2 + change2
if position == "Walking" and attacking == false then
change = 1
walking = true
if ws < 100 then
	ws = ws + 1
end
if secondform then
	local plant2 = hum.MoveDirection*Torso.CFrame.LookVector
local plant3 = hum.MoveDirection*Torso.CFrame.RightVector
local plant = plant2.Z + plant2.X
local plant4 = plant3.Z + plant3.X
	    STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.5,-0.2,1)*CFrame.Angles(math.rad(92.6),math.rad(10.8),math.rad(-21.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.3,-1.9,0.5)*CFrame.Angles(math.rad(-14.8),math.rad(-14.6+5*math.sin(sine/16)),math.rad(-6.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.5,0.7)*CFrame.Angles(math.rad(-86.9 + 4 * math.sin(sine/16)),math.rad(-25.1+1*math.sin(sine/16)),math.rad(-5.3+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.6,1.8)*CFrame.Angles(math.rad(17.1+3*math.sin(sine/16)),math.rad(-27.1+1*math.sin(sine/16)),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5-1*math.sin(sine/16)),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.2,1.9)*CFrame.Angles(math.rad(49.9+2*math.sin(sine/16)),math.rad(12.7+1*math.sin(sine/16)),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.15*math.sin(sine/32),0,.15*math.sin(sine/27))*CFrame.Angles(math.rad(4 * math.sin(sine/24)+ Root.RotVelocity.Y / 20),math.rad(-14.9+4*math.sin(sine/31)),math.rad(4*math.sin(sine/27)+ Root.RotVelocity.Y / 20))*CFrame.Angles(math.rad(-plant - plant/5)*32.1,math.rad(-plant4 - plant4/5),math.rad(-plant4 - plant4/5)*15),.125)
	else
local plant2 = hum.MoveDirection*Torso.CFrame.LookVector
local plant3 = hum.MoveDirection*Torso.CFrame.RightVector
local plant = plant2.Z + plant2.X
local plant4 = plant3.Z + plant3.X
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-2,0.2)*CFrame.Angles(math.rad(-5.6-1*math.sin(sine/16)),math.rad(-48.9),math.rad(1.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-0.3,0.4)*CFrame.Angles(math.rad(-42.9 + 3*math.sin(sine/16)),math.rad(68.2 - 1 * math.sin(sine/16)),math.rad(-35.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,0.5,2.1)*CFrame.Angles(math.rad(48.2 + 2 * math.sin(sine/16)),math.rad(-55.6 + 3 * math.sin(sine/16)),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1.3,1)*CFrame.Angles(math.rad(4),math.rad(46-3*math.sin(sine/16)),math.rad(-35.1-2*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.4,2.1,1.5)*CFrame.Angles(math.rad(27.9+1.5*math.sin(sine/16)),math.rad(1.2),math.rad(-47.5+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30),math.rad(-47.1),math.rad(10.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.25 * math.sin(sine/19),0,.25*math.sin(sine/22))*CFrame.Angles(math.rad(0+ 2 * math.sin(sine/16)+ Root.RotVelocity.Y / 20),math.rad(-50),math.rad(3)+ Root.RotVelocity.Y / 20)*CFrame.Angles(math.rad(plant - -plant/5)*-27.5,0,math.rad(plant4 - -plant4/5)*-29.4),.25)
end
elseif position == "Idle" and attacking == false then
change = 1
if ws > 11 then
	ws = ws - 1
end
if secondform then
		STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.5,-0.2,1)*CFrame.Angles(math.rad(92.6),math.rad(10.8),math.rad(-21.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.3,-2,-0.1)*CFrame.Angles(math.rad(-0.8),math.rad(-14.6+6*math.sin(sine/27)),math.rad(-6.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.5,0.7)*CFrame.Angles(math.rad(-86.9 + 4 * math.sin(sine/16)),math.rad(-25.1+1*math.sin(sine/16)),math.rad(-5.3+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,0.5)*CFrame.Angles(math.rad(-22.1+2*math.sin(sine/16)),math.rad(-27.1+2*math.sin(sine/16)),math.rad(0.5+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5-1*math.sin(sine/16)),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.6,1.5)*CFrame.Angles(math.rad(34.4+1*math.sin(sine/16)),math.rad(12.7+1*math.sin(sine/16)),math.rad(-11.1+1*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.15*math.sin(sine/32),0,.15*math.sin(sine/27))*CFrame.Angles(math.rad(-21.3 + 4 * math.sin(sine/24)),math.rad(-14.9+4*math.sin(sine/31)),math.rad(-0.5+4*math.sin(sine/27)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
	else
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-2,-0.1)*CFrame.Angles(math.rad(3-1*math.sin(sine/16)),math.rad(-40.2),math.rad(0))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.8,1.5+.1,.2)*CFrame.Angles(math.rad(12.7+3*math.sin(sine/16)),math.rad(-3.5+2*math.sin(sine/16)),math.rad(49.2+3*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3 + .1 * math.sin(sine/16),2.7,0.3 - .1 * math.sin(sine/16))*CFrame.Angles(math.rad(-22.1 - 4 * math.sin(sine/16)),math.rad(-55.6 + 1.5 * math.sin(sine/16)),math.rad(13 - 2.5 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1.7+.15*math.sin(sine/16),0.3)*CFrame.Angles(math.rad(-16.1-2*math.sin(sine/16)),math.rad(20.9),math.rad(-44.3-3*math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.4,1.5)*CFrame.Angles(math.rad(22.6 + 3 * math.sin(sine/16)),math.rad(22.1-2*math.sin(sine/16)),math.rad(0))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.25*math.sin(sine/26),0,.25*math.sin(sine/31))*CFrame.Angles(math.rad(-14.9 + 6 * math.sin(sine/25)),math.rad(-43.1+6*math.sin(sine/32)),math.rad(4.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
end
end
swait()
end
end)
anims()
warn("Surprising resurrection. Made by Supr14")
function transform()
    	if debounce  then return end
	if secondform then return end
	ballshockwave(Torso.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
	spikeball(Torso.CFrame,Vector3.new(1.5,1.5,1.5),BrickColor.White(),.05,"Neon")
	
	shirt.ShirtTemplate = "rbxassetid://238537827"
	pants.PantsTemplate = "rbxassetid://486031443"
	st = staff:Clone() st.Parent = Torso 
    STAFFLERP.Part0 = st.t
    STAFFLERP.Part1 = LeftArm
secondform = true
doomtheme.SoundId = "rbxassetid://1382488262"
doomtheme.TimePosition = 20.7
doomtheme:Play()
dmt2 = {1382488262,4592815034,4593898734,4627771248}
coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = introable[math.random(1,#introable)]
for i = 1, 2 do
local tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()
	wait(.5)
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,15)
function yattack()
    	if debounce then return end
	debounce = true
	attacking = true
	if secondform then
		ws = 8
		attacktaunt()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,90000,0)
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-2,-0.1)*CFrame.Angles(math.rad(2.9),math.rad(30.1),math.rad(-1.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.9,2.3,0.5)*CFrame.Angles(math.rad(107),math.rad(-57.9),math.rad(-165.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.6,1.7)*CFrame.Angles(math.rad(14.2),math.rad(-27.1),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,1.7,1.7)*CFrame.Angles(math.rad(31.1),math.rad(28.5),math.rad(-18.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.6,0,1.1)*CFrame.Angles(math.rad(96),math.rad(-12.6),math.rad(35.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-17),math.rad(31.2),math.rad(-14.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			swait()
		end
		local a = Instance.new("Part",Torso)
		a.Size = Vector3.new(1,1,1)
		a.Anchored = true
		a.CanCollide = false
		a.Transparency = 1
		a.CFrame = Root.CFrame * CFrame.new(0,0,-5)
		for i = 1, 2 do
		local am = Instance.new("Sound",a)
		am.SoundId = "rbxassetid://4086041756"
		am.Volume = 10
		am.Pitch = .95
		am.TimePosition = .25
		am:Play()
		removeuseless:AddItem(am,15)
		end
		coroutine.wrap(function()
			local xx = 20
			for i = 1, 200 do
				a.CFrame = a.CFrame * CFrame.new(0,0,-xx)
local didhit = false
local mate = nil
local colo = nil
local ray = Ray.new(a.Position,Vector3.new(0,-25,0))
local tabd = {bloodfolder,Character}
local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
if part then
	didhit = true
mate = part.Material
colo = part.BrickColor
else
	didhit = false
end
if didhit then
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc] local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1)
	card.CFrame = CFrame.new(hitPosition) * CFrame.new(math.random(-5,5),0,math.random(-5,5))
	coroutine.wrap(function()
		local az = math.random(-180,180)
		for i = 1, 40 do
			card.CFrame = card.CFrame:lerp(card.CFrame*CFrame.Angles(0,math.rad(az),0),.09)
			card.Size = card.Size + Vector3.new(.175,0,.32)
			swait()
		end
		local explo = Instance.new("Part",Torso)
		explo.BrickColor = BrickColor.new("Really black")
		explo.Material = "Neon"
		explo.Anchored = true
		explo.CanCollide = false
		explo.CFrame = card.CFrame * CFrame.Angles(math.rad(90),math.rad(90),0)
		explo.Size = Vector3.new(3,3,3)
		local explom = Instance.new("SpecialMesh",explo)
		explom.MeshType = "Sphere"
		SOUND(explo,3855293277,4,false,math.random(9,11)/10,15)
		local hit = damagealll(15,card.Position)
		for _,v in pairs(hit) do
        if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
	death(v:FindFirstChildOfClass("Humanoid").Parent)
    end
end
		local explo2 = explo:Clone() explo2.Parent = Torso explo2.BrickColor = BrickColor.new("White") explo2.Transparency = .5
			spikeball(CFrame.new(explo.Position),Vector3.new(2,2,2),BrickColor.new("White"),.1,"Neon")
			shockwave(CFrame.new(explo.Position),Vector3.new(2,.75,2),.05,BrickColor.new("Really black"),math.random(16,21),.1,"Neon")
			shockwave(CFrame.new(explo.Position),Vector3.new(3,.25,3),.05,BrickColor.new("White"),math.random(2,5),.05,"Neon")
			for i = 1, 20 do
				explo.Size = explo.Size + Vector3.new(5,1,1)
				explo.Transparency = explo.Transparency + .05
				explo2.Size = explo.Size + Vector3.new(5,1,1)*1.1
				explo2.Transparency = explo.Transparency + .025
				swait()
			end
			explo.Transparency = 1
			removeuseless:AddItem(explo,3)
			explo2:Destroy()
		local az2 = math.random(-180,180)
		for i = 1, 40 do
			card.CFrame = card.CFrame:lerp(card.CFrame*CFrame.Angles(0,math.rad(az2),0),.09)
			card.Size = card.Size - Vector3.new(.175,0,.32)
			swait()
		end
		card:Destroy()
		end)()
end
				swait()
			end
			a:Destroy()
		end)()
		for i = 1, 26 do
			blocktrail(st.shbox.Position,Vector3.new(1.5,1.5,1.5),.05,"Neon",BrickColor.new("Really red"))
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-2,0.2)*CFrame.Angles(math.rad(-6.8),math.rad(-42.2),math.rad(2.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,0.9,0.5)*CFrame.Angles(math.rad(-100.2),math.rad(28.8),math.rad(5.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.8,0.4)*CFrame.Angles(math.rad(-32.7),math.rad(-50.3),math.rad(9.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,0.5,2)*CFrame.Angles(math.rad(64.5),math.rad(28.5),math.rad(-18.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.1,-0.6,1.2)*CFrame.Angles(math.rad(113.2),math.rad(13.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-36.8),math.rad(-44.8),math.rad(4.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125)
			swait()
		end
		g1:Destroy()
		debounce = false
		attacking = false
		ws = 90
		else---post attack for corruptAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	ws = 8
	local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(3000,90000,3000)
SOUND(Torso,1888686669,10,false,math.random(9,11)/10,15)
coroutine.wrap(function()
for i = 1, 20 do
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-1.9,0.5)*CFrame.Angles(math.rad(-15.7),math.rad(-46.7),math.rad(2.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,2.7,-0.5)*CFrame.Angles(math.rad(-105.8),math.rad(-50.1),math.rad(24.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1.3,1.3)*CFrame.Angles(math.rad(4),math.rad(46),math.rad(-35.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-56.3),math.rad(2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	swait()
end
end)()
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local bigcard = pick:Clone() bigcard.Parent = Torso bigcard.Size = Vector3.new(.1,.25,.1) bigcard.Transparency = 0
	bigcard.Anchored = false
	bigcard.CanCollide = false
	bigcard.Massless = true
	bigcard.Material = "Neon"
    local bigcardweld = weldBetween(bigcard,Root) bigcardweld.C0 =  CFrame.Angles(math.rad(90),0,math.rad(0))* CFrame.new(0,0,5) 
local titt = 0
spikeball(bigcard.CFrame,Vector3.new(.5,.5,.5),BrickColor.new("White"),.035,"Neon")
spikeball(bigcard.CFrame,Vector3.new(1,1,1),BrickColor.new("White"),.05,"Neon")
ballshockwave(bigcard.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(1.5,1.5,1.5))
	for i = 1, 40 do
		titt = titt + 2
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		bigcard.Size = bigcard.Size + Vector3.new(.175,0,.3)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
    local blackhole = Instance.new("Sound",bigcard)
blackhole.SoundId = "rbxassetid://1835334344"
blackhole.Volume = 8
blackhole.Pitch = 1
blackhole:Play()
	local portal = Instance.new("Part",Torso)
	portal.Anchored = false
	portal.CanCollide = false
	portal.Size = Vector3.new(.35,4.5,4.5)
	portal.Material = "Neon"
	portal.BrickColor = BrickColor.new("White")
	portal.Shape = "Cylinder"
	portal.Transparency = 1
	local portalweld = weldBetween(portal,bigcard) portalweld.C0 = portalweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
	for i = 1, 10 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		portal.Transparency = portal.Transparency - .05
		bigcard.Size = bigcard.Size + Vector3.new(.175/2,0,.3/2)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
		for i = 1, 10 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		portal.Transparency = portal.Transparency - .05
		bigcard.Size = bigcard.Size - Vector3.new(.175/2,0,.3/2)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.09)
		swait()
	end
	titt = titt + 4
	local hitbox = Instance.new("Part",Torso)
	hitbox.Size = Vector3.new(1,1,1)
	hitbox.Anchored = true
	hitbox.CanCollide = false
	hitbox.CFrame = Root.CFrame * CFrame.new(0,0,-10)
	hitbox.Transparency = 1
	for i = 1, 500 do
		local zv = math.random(1,2)
		if zv == 1 then
			local blc = Instance.new("Part",Torso)
			blc.Anchored = true
			blc.CanCollide = false
			blc.CFrame = hitbox.CFrame * CFrame.new(0,0,-10) * CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20)) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
			blc.Material = "Neon"
			blc.Transparency = 0
			blc.BrickColor = BrickColor.new("White")
			blc.Size = Vector3.new(2,2,2)
			coroutine.wrap(function()
				for i = 1, 20 do
					blc.Size = blc.Size - Vector3.new(.1,.1,.1)
					blc.CFrame = blc.CFrame:lerp(CFrame.new(portal.Position),.2)
					blc.Transparency = blc.Transparency + .05
					swait()
				end
				blc:Destroy()
			end)()
		end
		local hit = damagealll(27,hitbox.Position)
		for _,v in pairs(hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local enemychar = slachtoffer.Parent
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemychar.Torso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemychar:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(portal.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				enemychar:Destroy()
			end
end
end)
end
		end
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		hitbox.CFrame = Root.CFrame * CFrame.new(0,0,-25)
		bigcardweld.C0 = bigcardweld.C0:lerp(bigcardweld.C0 * CFrame.Angles(math.rad(0),math.rad(0),math.rad(titt)),.25)
		swait()
	end
	bigcardweld:Destroy()
	bigcard.Anchored = true
	coroutine.wrap(function()
		SOUND(portal,4086044079,10,false,math.random(9.5,10.5)/10,15)
		for i = 1, 20 do
			portal.Transparency = portal.Transparency + .05
			portal.Size = portal.Size - portal.size/20
			bigcard.Size = bigcard.Size - bigcard.Size/10
			bigcard.Transparency = bigcard.Transparency + .05
			swait()
		end
		removeuseless:AddItem(portal,10)
		bigcard:Destroy()
	end)()
	g1:Destroy()
	ws = 100
	debounce = false
	attacking = false
	end
end
end
end)()
end
function gaytek()
    	if debounce then return end
	if secondform then
	debounce = true
	attacking = true
	ws = 8
	local charging = true
	attacktaunt2()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(1000,90000,1000)
	coroutine.wrap(function()
	repeat
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.045)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,-0.1)*CFrame.Angles(math.rad(0.6),math.rad(-26),math.rad(-1.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,1.5,0.7)*CFrame.Angles(math.rad(-92.1),math.rad(-24.6),math.rad(-6.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.3,0.8)*CFrame.Angles(math.rad(-12.1),math.rad(-31.6),math.rad(18.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.9,1.2,1.4)*CFrame.Angles(math.rad(20.3),math.rad(24.1),math.rad(14.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-19.9),math.rad(-38.3),math.rad(7.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.3,-1.1,1)*CFrame.Angles(math.rad(77.7),math.rad(49.3),math.rad(22.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/10)
		swait()
		until charging == false
	end)()
	local ball = spkball2:Clone() ball.Parent = Torso
	ball.Transparency = 1
	ball.Size = Vector3.new(.1,.1,.1)/10
	ball.Anchored = false
	ball.CanCollide = false
	ball.Massless = true
	for i = 1, 2 do 
SOUND(ball,1845012046,10,true,math.random(9,11)/10,math.huge)
end
local ballweld = weldBetween(ball,st.shbox) ballweld.C0 = ballweld.C0 * CFrame.new(0,0,2)
for i = 1, 40 do
	ball.Transparency = ball.Transparency - .025
	ball.Size = ball.Size + Vector3.new(.06775,.06775,.06775)
	swait()
end
	for i = 1, 300 do
local Hit = damagealll(40,st.shbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
local torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(Root.Position,torso.Position).lookVector*-50
removeuseless:AddItem(vel,.1)
end
end
		swait()
	end
	charging = false
	
	SOUND(st.shbox,142070127,10,false,math.random(9,11)/15)
	SOUND(st.shbox,1040136448,10,false,math.random(9,11)/15)
local didhit = false
local mate = nil
local colo = nil
local ray = Ray.new(Root.Position,Vector3.new(0,-25,0))
local tabd = {bloodfolder,Character}
local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
if part then
	didhit = true
mate = part.Material
colo = part.BrickColor
else
	didhit = false
end
if didhit then
	shockwave(CFrame.new(hitPosition),Vector3.new(4,5,4)*1.5,.05,BrickColor.new("White"),math.random(16,19),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(6,3,6)*1.5,.05,BrickColor.new("White"),math.random(8,12),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(9,2,9)*1.5,.05,BrickColor.new("White"),math.random(5,8),.05,"Neon")
	shockwave(CFrame.new(hitPosition),Vector3.new(12,1,12)*1.5,.05,BrickColor.new("White"),math.random(2,6),.05,"Neon")
end
	ballshockwave(ball.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(6,6,6,6))
	spikeball(ball.CFrame,Vector3.new(1,1,1)/2,BrickColor.new("Really red"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1.5,1.5,1.5)/2,BrickColor.new("White"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1,1,1),BrickColor.new("Really red"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(1.5,1.5,1.5),BrickColor.new("White"),.025,"Neon")
	spikeball(ball.CFrame,Vector3.new(2,2,2)*1.5,BrickColor.new("White"),.05,"Neon")
	ball:Destroy()
local Hit = damagealll(40,st.shbox.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = v:FindFirstChildOfClass("Humanoid")
local vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
local torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
vel.velocity = CFrame.new(st.shbox.Position,torso.Position).lookVector*350
removeuseless:AddItem(vel,.1)
coroutine.wrap(function()
wait(2)
death(slachtoffer.Parent)
end)()
end
end
ws = 0
	for i = 1, 15 do
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-1.9,-0.5)*CFrame.Angles(math.rad(17.4),math.rad(-35.2),math.rad(1.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,1.7,0.2)*CFrame.Angles(math.rad(-97.3),math.rad(-23.1),math.rad(7.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.1,1.5)*CFrame.Angles(math.rad(21.6),math.rad(-31.6),math.rad(18.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,2.1,1.3)*CFrame.Angles(math.rad(33.6),math.rad(9.3),math.rad(-11.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.2,-0.5,1.2)*CFrame.Angles(math.rad(64.5),math.rad(24.6),math.rad(17.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,3)*CFrame.Angles(math.rad(33.8),math.rad(-46.2),math.rad(2.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		swait()
	end
	debounce = false
	attacking = false
	g1:Destroy()
	ws = 90
	else
		debounce = true
		attacking = true
	ws = 12
		local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
	for i = 1, 28 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1)
	card.Anchored = true
	card.Transparency = 0
	card.CanCollide= false
	card.CFrame = Root.CFrame
	SOUND(card,4503166384,8,false,math.random(9,11)/10,15)
	local bbox = Instance.new("Part",Torso)
	bbox.Size = Vector3.new(1,1,1)
	bbox.Anchored = true
	bbox.CanCollide = false
	bbox.Transparency = 1
	bbox.CFrame = Root.CFrame * CFrame.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
	coroutine.wrap(function()
		local a1 = math.random(-180,180)
		local a2 = math.random(-180,180)
		local a3 = math.random(-180,180)
		for i = 1, 20 do
			card.Size = card.Size + Vector3.new(.1,0,.15)
			card.CFrame = card.CFrame:lerp(CFrame.new(bbox.Position)*CFrame.Angles(math.rad(a1),math.rad(a2),math.rad(a3)),.2)
			swait()
		end
		bbox:Destroy()
		for i = 1, 20 do
			card.CFrame = card.CFrame:lerp(CFrame.new(card.Position,mouse.Hit.p),.15)
			swait()
		end
		for i = 1, 2 do
		 blockyeffect(BrickColor.new("White"),Vector3.new(1.5,1.5,1.5),.05,card.CFrame,"Neon",15)
		end
		SOUND(card,550210020,8,false,math.random(9,11)/10,15)
		spikeball(card.CFrame,Vector3.new(1.5,1.5,1.5),BrickColor.new("White"),.15,"Neon")
		ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.15,Vector3.new(2,2,2))
		card.Anchored = false
		velo(card,"vex",mouse.Hit.p,math.random(350,550))
		card.Touched:connect(function(hit)
	if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and hit.Parent:FindFirstChildOfClass("Humanoid") ~= hum then
local slachtoffer = hit.Parent:FindFirstChildOfClass("Humanoid")
local enemychar = slachtoffer.Parent
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemychar.Torso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemychar:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(card.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				enemychar:Destroy()
			end
end
end)
	end
	wait(4)
	card.Anchored = true
					local a11 = math.random(-180,180)
					local a22 = math.random(-180,180)
					local a33 = math.random(-180,180)
	for i = 1, 20 do
		card.CFrame = card.CFrame:lerp(card.CFrame * CFrame.Angles(math.rad(a11),math.rad(a22),math.rad(a33)),.15)
		swait()
	end
	card:Destroy()
		end)
	end)()
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-1.9,0)*CFrame.Angles(math.rad(3),math.rad(37.8),math.rad(-2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,-0.4,0.2)*CFrame.Angles(math.rad(-23.2),math.rad(69.8),math.rad(-36.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.2,2)*CFrame.Angles(math.rad(20.8),math.rad(-36.8),math.rad(-2.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,0,0.9)*CFrame.Angles(math.rad(-40.3),math.rad(-65.2),math.rad(72.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,1.5,2)*CFrame.Angles(math.rad(30.4),math.rad(43.1),math.rad(-30.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-34.3),math.rad(39.3),math.rad(2.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		swait()
	end
	ws = 0
	for i = 1, 35 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-1.9,-0.1)*CFrame.Angles(math.rad(6.4),math.rad(-35),math.rad(6.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.2,2.1,1.4)*CFrame.Angles(math.rad(-149.3),math.rad(-56.1),math.rad(-89.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.8,0.6)*CFrame.Angles(math.rad(-8.9),math.rad(-44.7),math.rad(27))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5,2,1.2)*CFrame.Angles(math.rad(-29.7),math.rad(68.4),math.rad(-32.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,0.9,1.8)*CFrame.Angles(math.rad(42.7),math.rad(10.6),math.rad(-19.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-8.7),math.rad(-30.5),math.rad(14.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.12)
		swait()
	end
	g1:Destroy()
	ws = 100
	debounce = false
	attacking = false
	end
end

function PendulumHub()
    	if secondform then
	if debounce then return end
	debounce = true
	attacking = true
	ws = 0
	local marandom = math.random(1,2)
	if marandom == 1 then
	coroutine.wrap(function()
if tauntdebounce then return end
tauntdebounce = true
local rdnm2 = fireable[math.random(1,#fireable)]
for i = 1, 2 do
local tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 10
tauntsound.SoundId = "rbxassetid://"..rdnm2
tauntsound.Looped = false
tauntsound.Pitch = 1
tauntsound:Play()
coroutine.wrap(function()-----futile coding
repeat swait() until tauntsound.IsPlaying == false
tauntsound:Destroy()
wait()
tauntdebounce = false
end)()
removeuseless:AddItem(tauntsound,12)
end
	end)()
	end
	local a = 0
		local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(3000,90000,3000)
local spin = Instance.new("Sound",st.shbox)
spin.SoundId = "rbxassetid://4255432837"
spin.Volume = 8
spin.Pitch = 1.15
spin.Looped = true
spin:Play()
for i = 1, 30 do
	a = a + 30
	g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	blocktrail(st.shbox.Position,Vector3.new(1,1,1),.05,"Neon",BrickColor.new("Really red"))
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.1,-2,0)*CFrame.Angles(math.rad(1.6),math.rad(26),math.rad(-2.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.7,0.9)*CFrame.Angles(math.rad(-145.3),math.rad(-5),math.rad(-26.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.7,1.4)*CFrame.Angles(math.rad(8.8),math.rad(-27.1),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.7,1.6)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.5,-0.2,1)*CFrame.Angles(math.rad(92.6),math.rad(10.8),math.rad(-21.9))*CFrame.Angles(math.rad(a/2),math.rad(0),math.rad(a)),.25/2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21),math.rad(27.3),math.rad(-0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25/2)
	swait()
end
ws = 6
spin:Destroy()
local fireamb = Instance.new("Sound",st.shbox)
fireamb.SoundId = "rbxassetid://1301200629"
fireamb.Volume = 0
fireamb.Pitch = math.random(9,11)/10
fireamb.Looped = true
fireamb:Play()
for i = 1, 150 do
	fireamb.Volume = fireamb.Volume + .5
	g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
	local zz = math.random(1,2)
	if zz == 1 then
	local rrandom = rdx[math.random(1,#rdx)]
	local locater = Instance.new("Part",Torso)
	locater.Size = Vector3.new(2,2,2)
	locater.Anchored = false
	locater.CanCollide = false
	locater.Transparency = 1
	locater.Massless = true
	locater.CFrame = Root.CFrame*CFrame.new(0,0,-5)
	spikeball(locater.CFrame,Vector3.new(2,2,2),BrickColor.new(rrandom),.25,"Neon")
	local fire = Instance.new("Part",Torso)
	fire.Anchored = false
	fire.CanCollide = false
	fire.Massless = true
	fire.Material = "Neon"
	fire.BrickColor = BrickColor.new(rrandom)
	fire.Size = Vector3.new(1,1,1)
	fire.Transparency = 1
	local fireweld = weldBetween(fire,locater) fireweld.C0 = fireweld.C0 * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	fire.Touched:Connect(function(hit)
		if hit.Parent ~= nil and hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChildOfClass("Humanoid") ~= hum then
			death(hit.Parent)
		end
	end)
coroutine.wrap(function()
	velo(locater,"velo",mouse.Hit.p,250)
		for i = 1, 40 do
			fire.Size = fire.Size + Vector3.new(.7,.7,.7)
			 fire.Transparency = fire.Transparency - .025
			swait()
		end
		for i = 1, 20 do
			fire.Transparency = fire.Transparency + .05
			swait()
		end
		locater:Destroy()
		fire:Destroy()
end)()
end
	STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(-0.2,-0.5,1.1)*CFrame.Angles(math.rad(103.5),math.rad(-15.3),math.rad(7.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-2,-0.1)*CFrame.Angles(math.rad(1.9),math.rad(-38.4),math.rad(-0.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,1.8,-0.1)*CFrame.Angles(math.rad(-82.6),math.rad(-32.5),math.rad(24.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2,1.5)*CFrame.Angles(math.rad(19),math.rad(-40),math.rad(16.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.6,2)*CFrame.Angles(math.rad(45.3),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21.6),math.rad(-39.9),math.rad(-0.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	swait()
end
coroutine.wrap(function()
	fireamb.Volume = 10
	repeat swait() fireamb.Volume = fireamb.Volume - .5 until fireamb.Volume <= 0
	fireamb:Destroy()
end)()
	debounce = false
	g1:Destroy()
	attacking = false
	ws = 100
    	end
end

function fortniteintro()
    	if secondform then
	if debounce then return end
	debounce = true
	attacking = true
		attacktaunt()
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.09)
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0.1,-2,-0.1)*CFrame.Angles(math.rad(3),math.rad(-24.5),math.rad(2.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,2.4,-0.3)*CFrame.Angles(math.rad(-112.8),math.rad(-37.1),math.rad(8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.5,0.6)*CFrame.Angles(math.rad(-10.9),math.rad(-32),math.rad(20.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.7,0.3)*CFrame.Angles(math.rad(171.5),math.rad(79.5),math.rad(-109.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.7,1.6)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.7,-1.5,0.4)*CFrame.Angles(math.rad(161.4),math.rad(-0.5),math.rad(-26.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-21.6),math.rad(-35.3),math.rad(7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		spikeball(st.shbox.CFrame,Vector3.new(.25,.25,.25),BrickColor.new("White"),.05,"Neon")
		ballshockwave(st.shbox.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(.6,.6,.6))
		coroutine.wrap(function()
		for i = 1, 10 do
			HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0,-1.9,-0.4)*CFrame.Angles(math.rad(17.9),math.rad(-24.5),math.rad(2.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,2.4,-0.3)*CFrame.Angles(math.rad(-112.8),math.rad(-37.1),math.rad(8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.5,1.3)*CFrame.Angles(math.rad(22.1),math.rad(-28.7),math.rad(31.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,-0.4,0.3)*CFrame.Angles(math.rad(117.5),math.rad(66.9),math.rad(-53.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5,2,1.3)*CFrame.Angles(math.rad(28.7),math.rad(12.7),math.rad(-11.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			STAFFLERP.C0 = STAFFLERP.C0:lerp(CFrame.new(0.6,-1.4,0.9)*CFrame.Angles(math.rad(83.9),math.rad(-0.5),math.rad(-26.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(-.2,0,2)*CFrame.Angles(math.rad(7.5),math.rad(-28.7),math.rad(22.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
			swait()
		end
		g1:Destroy()
		debounce = false
		attacking = false
		end)()
		local shpos = Root
		for i = 1, 3 do
			local hbx = Instance.new("Part",Torso)
			hbx.Size = Vector3.new(1,1,1)
			hbx.CanCollide = false
			hbx.Anchored = true
			hbx.Transparency = 1
			hbx.CFrame = shpos.CFrame * CFrame.new(math.random(-20,20),math.random(5,25),math.random(-20,-12))
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.CanCollide = false card.Parent = Torso card.Size = Vector3.new(2.5,.25,1.75) card.Anchored = true card.CFrame = st.shbox.CFrame
	local ae = explse:Clone() ae.Anchored = false ae.Parent = Torso local aeweld = weldBetween(ae,card)
	SOUND(card,1544022435,8,false,math.random(9,11)/10,10)
	SOUND(card,1843578719,8,false,math.random(9,11)/10,10)
	coroutine.wrap(function()
		local hitz = false
		for i = 1, 12 do
			card.CFrame = card.CFrame:lerp(CFrame.new(hbx.Position),.2)
			swait()
		end
		hbx:Destroy()
		card.Anchored = false
		velo(card,"vel",mouse.Hit.p,310)
		card.Touched:Connect(function(hit)
			if hit.Parent ~= Character and hit.Parent.Parent ~= Character then
				for i,v in pairs(ae:GetDescendants()) do
					if v:IsA("ParticleEmitter") then v.Enabled = false end
				end
				removeuseless:AddItem(card,10)
				removeuseless:AddItem(ae,10)
				hitz = true
						local hit = damagealll(43,card.Position)
		for _,v in pairs(hit) do
        if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
	death(v:FindFirstChildOfClass("Humanoid").Parent)
    end
end
				card.Anchored = true
				card.Size = Vector3.new(.1,.1,.1)
				card.Transparency = 1
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3)/2)
				ballshockwave(card.CFrame,.05,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3)*2)
				spikeball(card.CFrame,Vector3.new(2.5,2.5,2.5),BrickColor.new("Really red"),.05,"Neon")
				spikeball(card.CFrame,Vector3.new(2.75,2.75,2.75)/2,BrickColor.new("White"),.05,"Neon")
	shockwave(CFrame.new(card.Position),Vector3.new(9,4,9)/1.5,.5,BrickColor.new("White"),math.random(5,8),.0125,"Neon")
	shockwave(CFrame.new(card.Position),Vector3.new(12,1,12)/1.5,.5,BrickColor.new("White"),math.random(2,6),.0125,"Neon")
			end
		end)
		coroutine.wrap(function()
			for i = 1, 900 do
				if hitz then break end
				swait()
			end
			if not hitz then
				hitz = true
								for i,v in pairs(ae:GetDescendants()) do
					if v:IsA("ParticleEmitter") then v.Enabled = false end
				end
				removeuseless:AddItem(card,10)
				removeuseless:AddItem(ae,10)
				hitz = true
				card.Anchored = true
				card.Size = Vector3.new(.1,.1,.1)
				card.Transparency = 1
			end
		end)()
	end)()
		end
	else
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character then
		if debounce then return end
		debounce = true
		attacking =  true
		local ETorso = mouse.Hit.p
		local enemyhum = mouse.Hit.p
	ws = 12
local g1 = Instance.new("BodyGyro", nil)
g1.CFrame = Root.CFrame
g1.Parent = Root
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(500,90000,500)
	for i = 1, 30 do
					g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.9,0.3,0.1)*CFrame.Angles(math.rad(-119.6),math.rad(50.5),math.rad(37))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.5,0.5)*CFrame.Angles(math.rad(-136.4),math.rad(-7.4),math.rad(3.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-56.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.125/2)
		swait()
	end
			SOUND(Torso,4571960003,10,false,math.random(9.5,10.5)/10,15)
				for i = 1, 6 do
		 blockyeffect(BrickColor.new("White"),Vector3.new(1,1,1),.05,leftlocation.CFrame,"Neon",math.random(7,12))
		end
	for i = 1, 12 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.09)
		HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(-0.2,-2,0)*CFrame.Angles(math.rad(-10.5),math.rad(-50.4),math.rad(-10.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,0.2,0)*CFrame.Angles(math.rad(-147.7),math.rad(58.8),math.rad(54.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,2.8,0.2)*CFrame.Angles(math.rad(-28.9),math.rad(-55.6),math.rad(9.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,-0.2,0.2)*CFrame.Angles(math.rad(-123.4),math.rad(-44.8),math.rad(-24.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.8,1.3,1.8)*CFrame.Angles(math.rad(13),math.rad(25),math.rad(11.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.35)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.6),math.rad(-59.3),math.rad(-8.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
		swait()
	end
coroutine.wrap(function()
	for i = 1, 3 do
	 local ab = Instance.new("Part",Torso)
	ab.Anchored = true
	ab.CanCollide = false
	ab.Size = Vector3.new(1,1,1)
	ab.Transparency = 1
	ab.CFrame = Root.CFrame * CFrame.new(math.random(-15*2,15*2),math.random(-5,5),math.random(-15*2,15*2))
	local randomc = math.random(1,#cardtable)
	local pick = cardtable[randomc]
	local card = pick:Clone() card.Parent = Torso card.Size = Vector3.new(.1,.25,.1) card.CFrame = Root.CFrame
	SOUND(card,1888686669,8,false,math.random(9,11)/10,15)
	coroutine.wrap(function()
		local a = math.random(-180,180)
		local b = math.random(-180,180)
		local c = math.random(-180,180)
		for i = 1, 30 do
			card.CFrame = card.CFrame:lerp(CFrame.new(ab.Position)*CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.125)
			card.Size = card.Size + Vector3.new(.3,0,.5)
			swait()
		end
		ab:Destroy()
		local portal = Instance.new("Part",Torso)
		portal.Size = Vector3.new(.5,5,5)
		portal.Anchored = false
		portal.CanCollide = false
		portal.BrickColor = BrickColor.White()
		portal.Material = "Neon"
		portal.Shape = "Cylinder"
		portal.Transparency = 1
		local portalweld = weldBetween(portal,card) portalweld.C0 = portalweld.C0 * CFrame.Angles(math.rad(0),0,math.rad(90))
		for i = 1, 20 do
			portal.Transparency = portal.Transparency - .05
			card.CFrame = card.CFrame:lerp(CFrame.new(card.Position,ETorso.Position)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)),.25)
			swait()
		end
bolt(Torso,portal.Position,ETorso.Position,ETorso,BrickColor.new("White"),1.2,"Neon",5)
spikeball(portal.CFrame,Vector3.new(.5,.5,.5),BrickColor.White(),.035,"Neon")
spikeball(portal.CFrame,Vector3.new(1,1,1)*2,BrickColor.White(),.06,"Neon")
local abz = Instance.new("Part",Torso)
abz.CFrame = portal.CFrame
abz.Anchored = true
abz.CanCollide = false
abz.Size = Vector3.new(1,1,1)
abz.Transparency = 1
removeuseless:AddItem(abz,10)
SOUND(abz,821439273,6,false,math.random(9,11)/10,15)
pcall(function()
	local creep = Instance.new("Part",Torso)
	creep.Anchored = true
	creep.CanCollide = false
	creep.Transparency = 1
	creep.CFrame = enemyhum.Parent.Torso.CFrame or enemyhum.Parent.UpperTorso.CFrame
	creep.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(creep,10)
	SOUND(creep,314678645,10,false,math.random(9.5,10.5)/10,15)
for i,v in pairs(enemyhum.Parent:GetDescendants()) do
			if v:IsA("Part") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				v:BreakJoints()
				coroutine.wrap(function()
					local a1 = math.rad(math.random(-180,180))
					local a2 = math.rad(math.random(-180,180))
					local a3 = math.rad(math.random(-180,180))
				for i = 1, 80 do
					v.CFrame = v.CFrame:lerp(CFrame.new(portal.Position)*CFrame.Angles(a1,a2,a3),.05)
					v.Transparency = v.Transparency + .0125
					swait()
				end
				v:Destroy()
				end)()
			elseif v:IsA("MeshPart") then
				v.BrickColor = BrickColor.new("White")
				v.Material = "Neon"
				v.Anchored = true
				v.Parent = Torso
				v.CanCollide = false
				enemyhum.Parent:Destroy()
			end
end
end)
for i = 1, 40 do
	portal.Transparency = portal.Transparency + .025
	swait()
end
portal:Destroy()
local zmm = 0
for i = 1, 20 do
	zmm = zmm + 1
	card.Size = card.Size - card.Size/10
	card.CFrame = card.CFrame * CFrame.Angles(0,0,math.rad(zmm))
	swait()
end
card:Destroy()
	end)()
	end
end)()
	
	ws = 100
	g1:Destroy()
	debounce = false
	attacking = false
	end
    	end
end





local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.Six -- Checking if input is 'E'
	then
		PendulumHub() -- Input is 'E', we can print 'I like coding'
	end
end)

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.Four -- Checking if input is 'E'
	then
		transform() -- Input is 'E', we can print 'I like coding
		wait(0.2)
		for i,v in pairs(game:GetService("Workspace").non.Torso.staff:GetDescendants()) do
		    if v:IsA("BasePart") then
		        v.Transparency = 1
		    end
	   end
	end
end)

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.One -- Checking if input is 'E'
	then
		fortniteintro() -- Input is 'E', we can print 'I like coding'
	end
end)

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.Two -- Checking if input is 'E'
	then
		yattack() -- Input is 'E', we can print 'I like coding'
	end
end)

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.Three -- Checking if input is 'E'
	then
		gaytek() -- Input is 'E', we can print 'I like coding'
	end
end)

UserInputService.InputBegan:Connect(function(Key) -- Input detected!
	if Key.KeyCode == Enum.KeyCode.Five -- Checking if input is 'E'
	then
		taunt()-- Input is 'E', we can print 'I like coding'
	end
end)
dox = true
